# Ruby 4 removed Object#tainted? but Liquid 4 still calls it.
# This patch adds it back to all objects for local dev.
class Object
  unless method_defined?(:tainted?)
    def tainted?
      false
    end
  end
end
