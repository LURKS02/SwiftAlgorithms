# DP(Dynamic Programming)
### 동적 계획법
가장 작은 부분의 해답을 구한 후 이를 저장하여 저장한 값을 이용해 상위 문제 해결<br>

### Memozation
동일 계산을 반복할 때, 이전에 계산한 값을 메모리에 저장하여 반복 수행을 제거하여 프로그램 실행 속도를 빠르게 하는 것

#### Ex - 백준 1463번
```swift
let inputNum = Int(readLine()!)!
var dp = Array(repeating: Int.max, count: inputNum + 1)
dp[0] = 0
dp[1] = 0
for i in 1...inputNum {
    dp[i] = min(dp[i], dp[i - 1] + 1)
    if i % 2 == 0 {
        dp[i] = min(dp[i], dp[i / 2] + 1)
    }
    if i % 3 == 0 {
        dp[i] = min(dp[i], dp[i / 3] + 1)
    }
}
print(dp[inputNum])
```
N이라는 정수가 주어졌을 때, N은 3 또는 2로 나뉘거나 1을 뺄 수 있고, N/3, N/2, N-1은 다시 각 연산이 적용된다.<br>
따라서 하위 값들을 계산하여 dp에 저장하면 재귀함수로 접근할 필요 없이 dp에 저장된 값으로만 연산이 가능, 다시 말해 불필요한 연산을 줄일 수 있다.
