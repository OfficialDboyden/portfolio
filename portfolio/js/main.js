(() => {

var clickMe = document.querySelector('.click-me'),
      lightBox = document.querySelector('.light-box'),
      closeBox = document.querySelector('.exit'),
      greenInfo = document.querySelector('.green_info'),
      orangeInfo = document.querySelector('.orange_info'),
      purpleInfo = document.querySelector('.purple_info'),
      green = document.querySelector('.green'),
      orange = document.querySelector('.orange'),
      purple =  document.querySelector('.purple');




      function openLightBox(){

        lightBox.classList.add('show-lightbox');

      }


      function closeLightBox(){

        lightBox.classList.remove('show-lightbox');
      }


      function displayGreen(){

        greenInfo.classList.remove('hidden'),
        purpleInfo.classList.add('hidden'),
        orangeInfo.classList.add('hidden');
      }

      function displayPurple(){

        purpleInfo.classList.remove('hidden'),
        greenInfo.classList.add('hidden'),
        orangeInfo.classList.add('hidden');
      }

      function displayOrange(){

        orangeInfo.classList.remove('hidden'),
        greenInfo.classList.add('hidden'),
        purpleInfo.classList.add('hidden');
      }


      function getData(){
        fetch('./includes/connect.php')
        .then((res) => res.json())
        .then((data) => {
          console.log(data);






          function htmlData(work){
            return `
            <div class="port-item">
            <img src="./images/${work.source}" alt="port item">
            <h3>${work.Title}</h3>
            <p id="text" class="project-text clicker">${work.caption}</p>

            </div>
            `


          }









           document.getElementById("output").innerHTML = `
                ${data.map(htmlData).join('')}

                `



        })

        .catch(function(error){
          console.log(error);
        });

      }





getData();



      clickMe.addEventListener('click', openLightBox);
      closeBox.addEventListener('click', closeLightBox);
      green.addEventListener('click', displayGreen);
      orange.addEventListener('click', displayOrange);
      purple.addEventListener('click', displayPurple);

})();
