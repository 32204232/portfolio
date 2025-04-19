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
    "intro-text": "단국대학교 성악 전공, 사이버보안 복수전공 <br /> 유튜브 \\\"Victenor\\\" 운영 중",
    footer: "© 2025 정현범",
    "mode-toggle": "다크모드",
    "lang-toggle": "영어 전환",
    "pdf-download": "PDF 다운로드",
    "github-view": "GitHub 보기"
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
    "intro-text": "Majored in Vocal Performance at Dankook University,<br />Double majoring in Cybersecurity<br />Running the YouTube channel \\\"Victenor\\\"",
    footer: "© 2025 Hyunbeom Jeoung",
    "mode-toggle": "Light Mode",
    "lang-toggle": "Switch to Korean",
    "pdf-download": "Download PDF",
    "github-view": "View on GitHub"
  }
};


function setLang(lang) {
  const elements = document.querySelectorAll("[data-key]");

  // 1. 페이드 아웃
  elements.forEach(el => el.classList.add("lang-fade"));

  setTimeout(() => {
    // 2. 텍스트 교체
    elements.forEach(el => {
      const key = el.getAttribute("data-key");
      if (langData[lang][key]) {
        if (langData[lang][key].includes("<br")) {
          el.innerHTML = langData[lang][key];
        } else {
          el.textContent = langData[lang][key];
        }
      }
      el.classList.remove("lang-fade"); // 페이드 인
    });


  }, 200);
}

// 초기 이벤트 연결 (아이콘은 안쓰지만 유지)
if (toEnBtn) toEnBtn.addEventListener("click", () => setLang("en"));
if (toKoBtn) toKoBtn.addEventListener("click", () => setLang("ko"));
