enum Classifier {
    case perfect
    case abundant
    case deficient
}

class NumberClassifier{
    
    var classification: Classifier  = .abundant// initial error
    
    init(number: Int) {
        
        var sum = 0
        for i in 1...number/2 {
            if (number) % i == 0 {
                sum += i
            }
        }
        if sum > number {
            classification = .abundant
        }
        if sum < number {
            classification = .deficient
        }
        if sum == number {
            classification = .perfect
        }
    }
}
