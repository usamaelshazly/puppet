class Hiera
    class Scope
        attr_reader :real

        def initialize(real)
            @real = real
        end

        def [](key)
            ans = @real.lookupvar(key)

            # damn you puppet visual basic style variables.
            return nil if ans == ""
            return ans
        end

        def include?(key)
            @real.lookupvar(key) == ""
        end
    end
end
