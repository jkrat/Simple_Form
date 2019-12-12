module ApplicationHelper
  # Returns a BEM list of classes for a given controller/action combo
  def body_classes(controller, action)
    controller = controller.tr('/', '_')

    classes = []
    classes << "#{controller}__body"
    classes << "#{controller}__body--#{action}"
    classes.join(' ')
  end
end
