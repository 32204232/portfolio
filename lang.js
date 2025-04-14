const langData = {
    ko: {
      logo: "정현범",
      title: "성악 전공자이자 사이버보안 전공자",
      desc: "예술과 기술을 합치다",
      about: "소개",
      youtube: "유튜브 영상",
      projects: "프로젝트",
      "report-title": "클라우드 보안 보고서",
      skills: "기술 스택",
      contact: "연락처",
      "intro-text": "단국대학교 성악 전공, 사이버보안 복수전공 <br /> 유튜브 \"Victenor\" 운영 중",
      footer: "© 2025 정현범"
    },
    en: {
      logo: "Hyunbeom Jeoung",
      title: "Vocalist and Cybersecurity Major",
      desc: "Where Art Meets Technology",
      about: "About",
      youtube: "YouTube",
      projects: "Projects",
      "report-title": "Cloud Security Report",
      skills: "Skills",
      contact: "Contact",
      "intro-text": "Majored in Vocal Performance at Dankook University,<br />Double majoring in Cybersecurity<br />Running the YouTube channel \"Victenor\"",
      footer: "© 2025 Hyunbeom Jeoung"
    }
  };
  
  const toEnBtn = document.getElementById("to-en");
  const toKoBtn = document.getElementById("to-ko");
  
  function setLang(lang) {
    const elements = document.querySelectorAll("[data-key]");
  
    // 1. 페이드 아웃
    elements.forEach(el => el.classList.add("lang-fade"));
  
    setTimeout(() => {
      // 2. 텍스트 교체
      elements.forEach(el => {
        const key = el.getAttribute("data-key");
        if (langData[lang][key]) {
          // intro-text 같이 <br> 포함된 경우 innerHTML, 나머지는 textContent로 구분 가능
          if (langData[lang][key].includes("<br")) {
            el.innerHTML = langData[lang][key];
          } else {
            el.textContent = langData[lang][key];
          }
        }
        el.classList.remove("lang-fade"); // 페이드 인
      });
  
      // 3. 버튼 전환
      toEnBtn.style.display = lang === "en" ? "none" : "inline";
      toKoBtn.style.display = lang === "en" ? "inline" : "none";
    }, 200); // 페이드 타이밍
  }
  
  // 초기 버튼 이벤트 연결
  toEnBtn.addEventListener("click", () => setLang("en"));
  toKoBtn.addEventListener("click", () => setLang("ko"));
  