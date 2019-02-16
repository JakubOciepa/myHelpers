///Class from Mark Seeman course about SOLID.
using System.Collections;

class Maybe<T> : IEnumerable<T>
{
    private readonly IEnumerable<T> values;

    public Maybe()
    {
        this.values = new T[0];
    }

    public Maybe(T value)
    {
        this.values = new[] { value };
    }

    public IEnumerator<T> GetEnumerator()
    {
        return this.values.GetEnumerator();
    }

    IEnumerator IEnumerable.GetEnumerator()
    {
        return this.GetEnumerator();
    }
}
