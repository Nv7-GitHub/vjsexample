echo "module main
const styles = '$(cat styles.css | tr '\n' ' ')'" > styles.v
v -prod -skip-unused -o main.js .