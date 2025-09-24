//
//  facilityMock.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/23/25.
//

import Foundation

let facilitiesXMLString = """
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<dbs>
    <db>
        <fcltynm>(구) 송정초등학교 야외운동장</fcltynm>
        <mt10id>FC002078</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>해운대구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>(구)화남산업</fcltynm>
        <mt10id>FC004472</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>전남</sidonm>
        <gugunnm>나주시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>(재) 영화의전당</fcltynm>
        <mt10id>FC000175</mt10id>
        <mt13cnt>5</mt13cnt>
        <fcltychartr>공공(문예회관)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>해운대구</gugunnm>
        <opende>2011</opende>
    </db>
    <db>
        <fcltynm>(재)경기문화재단</fcltynm>
        <mt10id>FC001672</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>수원시</gugunnm>
        <opende>2001</opende>
    </db>
    <db>
        <fcltynm>(재)구리시청소년수련관</fcltynm>
        <mt10id>FC000534</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>구리시</gugunnm>
        <opende>2003</opende>
    </db>
    <db>
        <fcltynm>13블럭 소극장</fcltynm>
        <mt10id>FC003668</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>고양시</gugunnm>
        <opende>2023</opende>
    </db>
    <db>
        <fcltynm>1987 루프탑라운지 더 마에스트로점 [성수]</fcltynm>
        <mt10id>FC004356</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>성동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>1M SPACE (폐관)</fcltynm>
        <mt10id>FC002651</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>서대문구</gugunnm>
        <opende>2019</opende>
    </db>
    <db>
        <fcltynm>1m클래식아트홀</fcltynm>
        <mt10id>FC001419</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende>2008</opende>
    </db>
    <db>
        <fcltynm>1미터마술</fcltynm>
        <mt10id>FC003142</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>전북</sidonm>
        <gugunnm>군산시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>1유로 프로젝트 코끼리빌라</fcltynm>
        <mt10id>FC003974</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>성동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>2.28기념중앙공원</fcltynm>
        <mt10id>FC003153</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>대구</sidonm>
        <gugunnm>중구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>2001 아울렛키즈홀 [구로]</fcltynm>
        <mt10id>FC001940</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>구로구</gugunnm>
        <opende>2008</opende>
    </db>
    <db>
        <fcltynm>2001 아울렛키즈홀 [수원남문]</fcltynm>
        <mt10id>FC001548</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>수원시</gugunnm>
        <opende>2005</opende>
    </db>
    <db>
        <fcltynm>20세기소년</fcltynm>
        <mt10id>FC002818</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>중구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>242</fcltynm>
        <mt10id>FC002391</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>용산구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>2D Hall(이디홀)</fcltynm>
        <mt10id>FC002034</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>제주</sidonm>
        <gugunnm>제주시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>3.15 해양누리공원</fcltynm>
        <mt10id>FC003555</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>경남</sidonm>
        <gugunnm>창원시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>3.15아트센터</fcltynm>
        <mt10id>FC000877</mt10id>
        <mt13cnt>3</mt13cnt>
        <fcltychartr>공공(문예회관)</fcltychartr>
        <sidonm>경남</sidonm>
        <gugunnm>창원시</gugunnm>
        <opende>2008</opende>
    </db>
    <db>
        <fcltynm>30스튜디오 (폐관)</fcltynm>
        <mt10id>FC001562</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende>2016</opende>
    </db>
    <db>
        <fcltynm>346커피스토리</fcltynm>
        <mt10id>FC003784</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>강원</sidonm>
        <gugunnm>강릉시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>369마실</fcltynm>
        <mt10id>FC002800</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>성북구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>396커피 컴퍼니</fcltynm>
        <mt10id>FC002231</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>경북</sidonm>
        <gugunnm>안동시</gugunnm>
        <opende>2012</opende>
    </db>
    <db>
        <fcltynm>4560designhaus (디자인하우스)</fcltynm>
        <mt10id>FC002801</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>서초구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>5.18기념문화센터</fcltynm>
        <mt10id>FC000420</mt10id>
        <mt13cnt>2</mt13cnt>
        <fcltychartr>공공(문예회관)</fcltychartr>
        <sidonm>광주</sidonm>
        <gugunnm>서구</gugunnm>
        <opende>2001</opende>
    </db>
    <db>
        <fcltynm>57th gallery(57갤러리)</fcltynm>
        <mt10id>FC002702</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>63아트홀</fcltynm>
        <mt10id>FC000797</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>영등포구</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>63컨벤션센터</fcltynm>
        <mt10id>FC001909</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>영등포구</gugunnm>
        <opende>2010</opende>
    </db>
    <db>
        <fcltynm>640아트타워</fcltynm>
        <mt10id>FC001547</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2016</opende>
    </db>
    <db>
        <fcltynm>ACS.KR</fcltynm>
        <mt10id>FC004104</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>중구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>ACT 호텔 스카이 홀</fcltynm>
        <mt10id>FC003481</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>대구</sidonm>
        <gugunnm>수성구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>ADM갤러리</fcltynm>
        <mt10id>FC003217</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>AG아트홀 [청주]</fcltynm>
        <mt10id>FC003729</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>충북</sidonm>
        <gugunnm>청주시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>AK플라자 [분당]</fcltynm>
        <mt10id>FC004325</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>성남시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>AK플라자 [수원]</fcltynm>
        <mt10id>FC003487</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>수원시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>AK플라자 [원주]</fcltynm>
        <mt10id>FC004326</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>강원</sidonm>
        <gugunnm>원주시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>AK플라자 [평택]</fcltynm>
        <mt10id>FC004327</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>평택시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>ALVER(알베르)</fcltynm>
        <mt10id>FC002065</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2018</opende>
    </db>
    <db>
        <fcltynm>AN아트홀 [서면]</fcltynm>
        <mt10id>FC001244</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>부산진구</gugunnm>
        <opende>2010</opende>
    </db>
    <db>
        <fcltynm>ASSA 아트홀</fcltynm>
        <mt10id>FC003959</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강서구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Abnormal필운</fcltynm>
        <mt10id>FC004557</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Alter Wave</fcltynm>
        <mt10id>FC003704</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>경남</sidonm>
        <gugunnm>통영시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>BLACKCUBE LAB(BCL)</fcltynm>
        <mt10id>FC004483</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>성북구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>BMW JOYSQUARE</fcltynm>
        <mt10id>FC003021</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>인천</sidonm>
        <gugunnm>중구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>BNK부산은행 조은극장</fcltynm>
        <mt10id>FC001246</mt10id>
        <mt13cnt>3</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>중구</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>BOYS24 HALL(구. 메사고릴라전용관) (폐관)</fcltynm>
        <mt10id>FC000582</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>중구</gugunnm>
        <opende>2000</opende>
    </db>
    <db>
        <fcltynm>BRST STUDIO</fcltynm>
        <mt10id>FC003893</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Baby Doll (베이비돌)</fcltynm>
        <mt10id>FC004149</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>서대문구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>BeIN(비인)</fcltynm>
        <mt10id>FC003133</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <sidonm>제주</sidonm>
        <gugunnm>제주시</gugunnm>
        <opende>2022</opende>
    </db>
    <db>
        <fcltynm>Bibistudio</fcltynm>
        <mt10id>FC004067</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>은평구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Blessing café</fcltynm>
        <mt10id>FC002665</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>광주</sidonm>
        <gugunnm>서구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [계양]</fcltynm>
        <mt10id>FC003496</mt10id>
        <mt13cnt>8</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>인천</sidonm>
        <gugunnm>계양구</gugunnm>
        <opende>2006</opende>
    </db>
    <db>
        <fcltynm>CGV [광주 터미널]</fcltynm>
        <mt10id>FC004357</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>광주</sidonm>
        <gugunnm>서구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [광주금남로]</fcltynm>
        <mt10id>FC003497</mt10id>
        <mt13cnt>9</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>광주</sidonm>
        <gugunnm>동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [대구]</fcltynm>
        <mt10id>FC003498</mt10id>
        <mt13cnt>8</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>대구</sidonm>
        <gugunnm>북구</gugunnm>
        <opende>2022</opende>
    </db>
    <db>
        <fcltynm>CGV [대전 터미널]</fcltynm>
        <mt10id>FC004358</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>대전</sidonm>
        <gugunnm>동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [대학로]</fcltynm>
        <mt10id>FC003672</mt10id>
        <mt13cnt>8</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [압구정]</fcltynm>
        <mt10id>FC002756</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2006</opende>
    </db>
    <db>
        <fcltynm>CGV [영등포]</fcltynm>
        <mt10id>FC002776</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>영등포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [왕십리]</fcltynm>
        <mt10id>FC004359</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>성동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [용산]</fcltynm>
        <mt10id>FC003548</mt10id>
        <mt13cnt>20</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>용산구</gugunnm>
        <opende>2004</opende>
    </db>
    <db>
        <fcltynm>CGV [인천]</fcltynm>
        <mt10id>FC004360</mt10id>
        <mt13cnt>2</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>인천</sidonm>
        <gugunnm>남동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV [피카디리 1958]</fcltynm>
        <mt10id>FC004362</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV 대전</fcltynm>
        <mt10id>FC003499</mt10id>
        <mt13cnt>9</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>대전</sidonm>
        <gugunnm>중구</gugunnm>
        <opende>2001</opende>
    </db>
    <db>
        <fcltynm>CGV 서면</fcltynm>
        <mt10id>FC003295</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>부산진구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV 울산삼산</fcltynm>
        <mt10id>FC003500</mt10id>
        <mt13cnt>11</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>울산</sidonm>
        <gugunnm>남구</gugunnm>
        <opende>2013</opende>
    </db>
    <db>
        <fcltynm>CGV 원주</fcltynm>
        <mt10id>FC003501</mt10id>
        <mt13cnt>10</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>강원</sidonm>
        <gugunnm>원주시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CGV신한카드아트홀</fcltynm>
        <mt10id>FC000343</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>영등포구</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>CJB미디어센터</fcltynm>
        <mt10id>FC001338</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>충북</sidonm>
        <gugunnm>청주시</gugunnm>
        <opende>2014</opende>
    </db>
    <db>
        <fcltynm>CJ아지트 광흥창</fcltynm>
        <mt10id>FC000082</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>CK아트홀</fcltynm>
        <mt10id>FC000629</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>울산</sidonm>
        <gugunnm>남구</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>CLUB VICTIM</fcltynm>
        <mt10id>FC003903</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CLUB bender(클럽 벤더)</fcltynm>
        <mt10id>FC002090</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>CS아트홀</fcltynm>
        <mt10id>FC002104</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>충남</sidonm>
        <gugunnm>아산시</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>CTS아트홀</fcltynm>
        <mt10id>FC001472</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>동작구</gugunnm>
        <opende>2005</opende>
    </db>
    <db>
        <fcltynm>Cafe PPnF</fcltynm>
        <mt10id>FC002066</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende>2018</opende>
    </db>
    <db>
        <fcltynm>Cafe vave(베이브)</fcltynm>
        <mt10id>FC002347</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Campus D 고촌홀</fcltynm>
        <mt10id>FC003340</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>금정구</gugunnm>
        <opende>1995</opende>
    </db>
    <db>
        <fcltynm>Corners Studio</fcltynm>
        <mt10id>FC003781</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>대전</sidonm>
        <gugunnm>동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>D:BASE (디:베이스)</fcltynm>
        <mt10id>FC002014</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende>2015</opende>
    </db>
    <db>
        <fcltynm>DCAN센터</fcltynm>
        <mt10id>FC003563</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>대전</sidonm>
        <gugunnm>동구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>DCAN센터 [대전]</fcltynm>
        <mt10id>FC002917</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>대전</sidonm>
        <gugunnm>동구</gugunnm>
        <opende>2021</opende>
    </db>
    <db>
        <fcltynm>DDP 동대문디자인플라자</fcltynm>
        <mt10id>FC002666</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>중구</gugunnm>
        <opende>2014</opende>
    </db>
    <db>
        <fcltynm>DDP 패션몰</fcltynm>
        <mt10id>FC004261</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(비공연장)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>중구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>DGT 아트센터</fcltynm>
        <mt10id>FC003882</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>DMZ 박물관 [고성]</fcltynm>
        <mt10id>FC002723</mt10id>
        <mt13cnt>2</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <sidonm>강원</sidonm>
        <gugunnm>고성군</gugunnm>
        <opende>2009</opende>
    </db>
    <db>
        <fcltynm>DOT [수원]</fcltynm>
        <mt10id>FC004418</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>경기</sidonm>
        <gugunnm>수원시</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>DS ART HALL(창선당)</fcltynm>
        <mt10id>FC002003</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>종로구</gugunnm>
        <opende>2014</opende>
    </db>
    <db>
        <fcltynm>DSM 아트홀</fcltynm>
        <mt10id>FC003694</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Ean Hall For Jazz (이안홀)</fcltynm>
        <mt10id>FC003001</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>Emo LAB</fcltynm>
        <mt10id>FC004530</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>서초구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>F1963</fcltynm>
        <mt10id>FC001784</mt10id>
        <mt13cnt>2</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <sidonm>부산</sidonm>
        <gugunnm>수영구</gugunnm>
        <opende>2016</opende>
    </db>
    <db>
        <fcltynm>G#하우스</fcltynm>
        <mt10id>FC003455</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>인천</sidonm>
        <gugunnm>연수구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>GAG Space</fcltynm>
        <mt10id>FC004390</mt10id>
        <mt13cnt>2</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>용산구</gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>GBB스페이스홀 (구. 임혁필소극장)</fcltynm>
        <mt10id>FC001405</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>마포구</gugunnm>
        <opende>2012</opende>
    </db>
    <db>
        <fcltynm>GB가빈아트홀</fcltynm>
        <mt10id>FC001832</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2025</opende>
    </db>
    <db>
        <fcltynm>GB성암아트홀</fcltynm>
        <mt10id>FC001444</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2023</opende>
    </db>
    <db>
        <fcltynm>GET SPACE(겟 스페이스)</fcltynm>
        <mt10id>FC002455</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>대구</sidonm>
        <gugunnm>남구</gugunnm>
        <opende>2014</opende>
    </db>
    <db>
        <fcltynm>GLION ARENA KOBE(지라이온 아레나 고베) [일본 효고]</fcltynm>
        <mt10id>FC004513</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>기타(해외등)</fcltychartr>
        <sidonm></sidonm>
        <gugunnm></gugunnm>
        <opende></opende>
    </db>
    <db>
        <fcltynm>GS아트센터</fcltynm>
        <mt10id>FC004267</mt10id>
        <mt13cnt>1</mt13cnt>
        <fcltychartr>민간(대학로 외)</fcltychartr>
        <sidonm>서울</sidonm>
        <gugunnm>강남구</gugunnm>
        <opende>2025</opende>
    </db>
</dbs>
"""

