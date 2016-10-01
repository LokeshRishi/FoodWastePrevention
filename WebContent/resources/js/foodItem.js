var foodItem = foodItem || {},
    data = JSON.parse(localStorage.getItem("menuData"));

data = data || {};

(function(foodItem, data, $) {

    var defaults = {
            menuItem: "menu-item",
            foodHeader: "food-header",
            foodImage: "food-image",
            mealType: "meal-type",
            foodId: "food-id",
            formId: "foodItem-form",
            dataAttribute: "data",
            deleteDiv: "delete-div"
        }, codes = {
            "1" : "#catalog",
            "2" : "#inProgress",
            "3" : "#menu"
        };

    foodItem.init = function (options) {

        options = options || {};
        options = $.extend({}, defaults, options);

        $.each(data, function (index, params) {
            generateElement(params);
        });

        // Adding drop function
        $.each(codes, function (index, value) {
            $(value).droppable({
                drop: function (event, ui) {
                        var element = ui.helper,
                            css_id = element.attr("id"),
                            id = css_id.replace(options.foodId, ""),
                            object = data[id];

                            // Removing old element
                            removeElement(object);

                            // Changing object code
                            object.code = index;

                            // Generating new element
                            generateElement(object);

                            // Updating Local Storage
                            data[id] = object;
                            localStorage.setItem("menuData", JSON.stringify(data));

                            // Hiding Delete Area
                            $("#" + defaults.deleteDiv).hide();
                    }
            });
        });

        // Adding drop function to delete div
        $("#" + options.deleteDiv).droppable({
            drop: function(event, ui) {
                var element = ui.helper,
                    css_id = element.attr("id"),
                    id = css_id.replace(options.foodId, ""),
                    object = data[id];

                // Removing old element
                removeElement(object);

                // Updating local storage
                delete data[id];
                localStorage.setItem("menuData", JSON.stringify(data));

                // Hiding Delete Area
                $("#" + defaults.deleteDiv).hide();
            }
        })

    };

    // Add
    var generateElement = function(params){
        var parent = $(codes[params.code]),
            wrapper;

        if (!parent) {
            return;
        }

        wrapper = $("<div />", {
            "class" : defaults.menuItem,
            "id" : defaults.foodId + params.id,
            "data" : params.id
        }).appendTo(parent);

        $("<div />", {
            "class" : defaults.foodHeader,
            "text": params.title
        }).appendTo(wrapper);

//        $("<div />", {
//            "class" : defaults.foodImage,
//            "text": params.description
//        }).appendTo(wrapper);
        
        $("<div />", {
            "class" : defaults.mealType + "label label-default",
            "text": params.mealType
        }).appendTo(wrapper);
        
	    wrapper.draggable({
            start: function() {
                $("#" + defaults.deleteDiv).show();
            },
            stop: function() {
                $("#" + defaults.deleteDiv).hide();
            },
	        revert: "invalid",
	        revertDuration : 200
        });

    };

    // Remove
    var removeElement = function (params) {
        $("#" + defaults.foodId + params.id).remove();
    };

    foodItem.add = function() {
        var inputs = $("#" + defaults.formId + " :input"),
            errorMessage = "<h5>Every food has a name. Duh!</h5>",
            errorMessage2 = "<h5>Where's the image? :O</h5>",
            id, title, description, mealType, tempData;

        if (inputs.length !== 4) {
            return;
        }

        title = inputs[0].value;
        description = inputs[1].value;
        mealType = inputs[2].value;

        if (!title) {
//            generateDialog(errorMessage);
//            return;
        }

        if (!description) {
//            generateDialog(errorMessage2);
//            return;
        }

        id = new Date().getTime();

        tempData = {
            id : id,
            code: "1",
            title: title,
            description: description,
            mealType: mealType
        };

        // Saving element in local storage
        data[id] = tempData;
        localStorage.setItem("menuData", JSON.stringify(data));

        // Generate Element
        generateElement(tempData);

        // Reset Form
        inputs[0].value = "";
        inputs[1].value = "";
        title = "";
        description = "";
        mealType = "";

    };

    var generateDialog = function (message) {
        var responseId = "response-dialog",
            title = "Error:",
            responseDialog = $("#" + responseId),
            buttonOptions;

        if (!responseDialog.length) {
            responseDialog = $("<div />", {
                    title: title,
                    id: responseId
            }).appendTo($("body"));
        }

        responseDialog.html(message);

        buttonOptions = {
            "Ok" : function () {
                responseDialog.dialog("close");
            }
        };

	    responseDialog.dialog({
            autoOpen: true,
            width: 400,
            modal: true,
            closeOnEscape: true,
            buttons: buttonOptions
        });
    };

})(foodItem, data, jQuery);