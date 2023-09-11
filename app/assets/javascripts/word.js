document.addEventListener("DOMContentLoaded", function () {
    const descriptionTextarea = document.getElementById("description");
    const wordCountSpan = document.getElementById("word-count");
  
    // Update word count on input
    descriptionTextarea.addEventListener("input", function () {
      const words = descriptionTextarea.value.trim().split(/\s+/);
      const wordCount = words.length;
      wordCountSpan.textContent = wordCount + "/1000";
    });
});
  