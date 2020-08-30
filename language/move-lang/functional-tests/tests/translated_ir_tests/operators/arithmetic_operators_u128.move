script {
fun main() {
    assert(0u128 + 0u128 == 0u128, 1000);
    assert(0u128 + 1u128 == 1u128, 1001);
    assert(1u128 + 1u128 == 2u128, 1002);

    assert(13u128 + 67u128 == 80u128, 1100);
    assert(100u128 + 10u128 == 110u128, 1101);

    assert(0u128 + 340282366920938463463374607431768211455u128 == 340282366920938463463374607431768211455u128, 1200);
    assert(1u128 + 340282366920938463463374607431768211454u128 == 340282366920938463463374607431768211455u128, 1201);
    assert(5u128 + 340282366920938463463374607431768211450u128 == 340282366920938463463374607431768211455u128, 1202);
}
}
// check: EXECUTED

//! new-transaction
script {
fun main() {
    1u128 + 340282366920938463463374607431768211455u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    264235234643575437864589745863652363451u128 + 98731747836156137656137643716471364731u128;
}
}
// check: ARITHMETIC_ERROR



//! new-transaction
script {
fun main() {
    assert(0u128 - 0u128 == 0u128, 2000);
    assert(1u128 - 0u128 == 1u128, 2001);
    assert(1u128 - 1u128 == 0u128, 2002);

    assert(52u128 - 13u128 == 39u128, 2100);
    assert(100u128 - 10u128 == 90u128, 2101);

    assert(340282366920938463463374607431768211455u128 - 340282366920938463463374607431768211455u128 == 0u128, 2200);
    assert(5u128 - 1u128 - 4u128 == 0u128, 2201);
}
}
// check: EXECUTED

//! new-transaction
script {
fun main() {
    0u128 - 1u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    54u128 - 100u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    assert(0u128 * 0u128 == 0u128, 3000);
    assert(1u128 * 0u128 == 0u128, 3001);
    assert(1u128 * 1u128 == 1u128, 3002);

    assert(6u128 * 7u128 == 42u128, 3100);
    assert(10u128 * 10u128 == 100u128, 3101);

    assert(170141183460469231731687303715884105727u128 * 2u128 == 340282366920938463463374607431768211454u128, 3200);
}
}
// check: EXECUTED

//! new-transaction
script {
fun main() {
    18446744073709551616u128 * 18446744073709551616u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    170141183460469231731687303715884105728u128 * 2u128;
}
}
// check: ARITHMETIC_ERROR



//! new-transaction
script {
fun main() {
    assert(0u128 / 1u128 == 0u128, 4000);
    assert(1u128 / 1u128 == 1u128, 4001);
    assert(1u128 / 2u128 == 0u128, 4002);

    assert(6u128 / 3u128 == 2u128, 4100);
    assert(340282366920938463463374607431768211455u128 / 4315342637u128 == 78854078469537403609736727246u128, 4101);

    assert(340282366920938463463374607431768211454u128 / 340282366920938463463374607431768211455u128 == 0u128, 4200);
    assert(340282366920938463463374607431768211455u128 / 340282366920938463463374607431768211455u128 == 1u128, 4201);
}
}
// check: EXECUTED

//! new-transaction
script {
fun main() {
    0u128 / 0u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    1u128 / 0u128;
}
}
// check: ARITHMETIC_ERROR



//! new-transaction
script {
fun main() {
    340282366920938463463374607431768211455u128 / 0u128;
}
}
// check: ARITHMETIC_ERROR


//! new-transaction
script {
fun main() {
    assert(0u128 % 1u128 == 0u128, 5000);
    assert(1u128 % 1u128 == 0u128, 5001);
    assert(1u128 % 2u128 == 1u128, 5002);

    assert(8u128 % 3u128 == 2u128, 5100);
    assert(340282366920938463463374607431768211455u128 % 4315342637u128 == 2264823753u128, 5101);

    assert(340282366920938463463374607431768211454u128 % 340282366920938463463374607431768211455u128 == 340282366920938463463374607431768211454u128, 5200);
    assert(340282366920938463463374607431768211455u128 % 340282366920938463463374607431768211455u128 == 0u128, 5201);
}
}
// check: EXECUTED

//! new-transaction
script {
fun main() {
    0u128 % 0u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    1u128 % 0u128;
}
}
// check: ARITHMETIC_ERROR

//! new-transaction
script {
fun main() {
    340282366920938463463374607431768211455u128 % 0u128;
}
}
// check: ARITHMETIC_ERROR
