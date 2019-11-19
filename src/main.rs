extern crate owning_ref;

use std::cell::Cell;

use owning_ref::OwningRef;

#[inline(never)]
fn helper(owning_ref: OwningRef<Box<Cell<u8>>, Cell<u8>>) -> u8 {
    // Get the Box<Cell<_>> and set the cell value to 10.
    owning_ref.as_owner().set(10);
    // Deref the cell and set the value to 20.
    owning_ref.set(20);
    // Return the value inside the cell which should now be 20.
    owning_ref.as_owner().get()
}

fn main() {
    let val: Box<Cell<u8>> = Box::new(Cell::new(25));
    // Create an owning ref with the above val.
    let owning_ref = OwningRef::new(val);
    // Pass the owning ref to be mutated.
    let res = helper(owning_ref);
    // If this fails, we have UB!
    assert_eq!(res, 20);
}
