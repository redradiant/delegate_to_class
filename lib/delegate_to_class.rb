module DelegateToClass
  def method_missing(method, *args, &block)
    self.class.respond_to?(method) ? self.class.send(method, *args, &block) : super(method, *args, &block)
  end
end
