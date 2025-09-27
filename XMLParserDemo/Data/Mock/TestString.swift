//
//  TestString.swift
//  XMLParserDemo
//
//  Created by 김민성 on 9/25/25.
//

import Foundation

let performanceListMock = ("""
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<dbs>
    <db>
        <mt20id>PF274677</mt20id>
        <prfnm>더 베스트 오브 라흐마니노프 with 일리야 라쉬코프스키 &amp; 세르게이 타라소프</prfnm>
        <prfpdfrom>2025.12.10</prfpdfrom>
        <prfpdto>2025.12.10</prfpdto>
        <fcltynm>롯데콘서트홀</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274677_250922_151333.gif</poster>
        <area>서울특별시</area>
        <genrenm>서양음악(클래식)</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274676</mt20id>
        <prfnm>우당탕탕 크리스마스</prfnm>
        <prfpdfrom>2025.11.25</prfpdfrom>
        <prfpdto>2025.12.24</prfpdto>
        <fcltynm>윤당아트홀</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274676_250922_151130.jpg</poster>
        <area>서울특별시</area>
        <genrenm>연극</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274663</mt20id>
        <prfnm>에비타 EVITA</prfnm>
        <prfpdfrom>2025.11.07</prfpdfrom>
        <prfpdto>2026.01.11</prfpdto>
        <fcltynm>광림아트센터</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274663_250922_143605.gif</poster>
        <area>서울특별시</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274629</mt20id>
        <prfnm>포켓다이노 [전주]</prfnm>
        <prfpdfrom>2025.12.21</prfpdfrom>
        <prfpdto>2025.12.21</prfpdto>
        <fcltynm>전주교육문화회관(전북교육문화회관)</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274629_250922_131626.jpg</poster>
        <area>전라북도</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274620</mt20id>
        <prfnm>뽀로로 포털의 세계 [울산]</prfnm>
        <prfpdfrom>2025.12.13</prfpdfrom>
        <prfpdto>2025.12.14</prfpdto>
        <fcltynm>울산문화예술회관</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274620_250922_125918.jpg</poster>
        <area>울산광역시</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274618</mt20id>
        <prfnm>바다탐험대 옥토넛 시즌3: 바다넘어 육지까지 [의정부]</prfnm>
        <prfpdfrom>2025.12.13</prfpdfrom>
        <prfpdto>2025.12.14</prfpdto>
        <fcltynm>신한대학교 벧엘관</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274618_250922_125242.gif</poster>
        <area>경기도</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274581</mt20id>
        <prfnm>크리스틴 정현 리 첼로 리사이틀: 바흐 무반주 첼로 모음곡 Ⅱ</prfnm>
        <prfpdfrom>2025.12.19</prfpdfrom>
        <prfpdto>2025.12.19</prfpdto>
        <fcltynm>예술의전당 [서울]</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274581_250922_104017.gif</poster>
        <area>서울특별시</area>
        <genrenm>서양음악(클래식)</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274579</mt20id>
        <prfnm>호두까기인형 [서울 도봉]</prfnm>
        <prfpdfrom>2025.12.21</prfpdfrom>
        <prfpdto>2025.12.21</prfpdto>
        <fcltynm>도봉구민회관</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274579_250922_103423.jpg</poster>
        <area>서울특별시</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274578</mt20id>
        <prfnm>사내연애 보고서 [대전]</prfnm>
        <prfpdfrom>2025.11.14</prfpdfrom>
        <prfpdto>2025.12.28</prfpdto>
        <fcltynm>작은극장 다함</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274578_250922_103422.jpg</poster>
        <area>대전광역시</area>
        <genrenm>연극</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
    <db>
        <mt20id>PF274577</mt20id>
        <prfnm>호두까기인형 [부산 남구]</prfnm>
        <prfpdfrom>2025.12.21</prfpdfrom>
        <prfpdto>2025.12.21</prfpdto>
        <fcltynm>부산예술회관</fcltynm>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274577_250922_103157.jpg</poster>
        <area>부산광역시</area>
        <genrenm>뮤지컬</genrenm>
        <openrun>N</openrun>
        <prfstate>공연예정</prfstate>
    </db>
</dbs>
""")

let performanceDetailMock = ("""
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<dbs>
    <db>
        <mt20id>PF273608</mt20id>
        <prfnm>최현우 아판타시아 [서울 서초]</prfnm>
        <prfpdfrom>2025.10.25</prfpdfrom>
        <prfpdto>2025.11.09</prfpdto>
        <fcltynm>한전아트센터 (한전아트센터)</fcltynm>
        <prfcast>최현우</prfcast>
        <prfcrew></prfcrew>
        <prfruntime>2시간</prfruntime>
        <prfage>만 13세 이상</prfage>
        <entrpsnm>(주)라온플레이, (주)하늘이엔티</entrpsnm>
        <entrpsnmP>(주)라온플레이, (주)하늘이엔티</entrpsnmP>
        <entrpsnmA></entrpsnmA>
        <entrpsnmH>(주)라온플레이, (주)하늘이엔티</entrpsnmH>
        <entrpsnmS>(주)하늘이엔티</entrpsnmS>
        <pcseguidance>R석 99,000원, S석 77,000원</pcseguidance>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273608_250908_175820.gif</poster>
        <sty></sty>
        <area>서울특별시</area>
        <genrenm>서커스/마술</genrenm>
        <openrun>N</openrun>
        <visit>N</visit>
        <child>N</child>
        <daehakro>N</daehakro>
        <festival>N</festival>
        <musicallicense>N</musicallicense>
        <musicalcreate>N</musicalcreate>
        <updatedate>2025-09-09 15:00:03.056916</updatedate>
        <prfstate>공연예정</prfstate>
        <mt10id>FC000113</mt10id>
        <dtguidance>수요일 ~ 금요일(19:30), 토요일(15:00,19:00), 일요일(14:00)</dtguidance>
        <styurls>
            <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF273608_202509080558200860.jpg</styurl>
            <styurl>http://www.kopis.or.kr/upload/pfmIntroImage/PF_PF273608_202509080559114910.jpg</styurl>
        </styurls>
        <relates>
            <relate>
                <relatenm>NHN티켓링크</relatenm>
                <relateurl>http://www.ticketlink.co.kr/product/58493</relateurl>
            </relate>
            <relate>
                <relatenm>네이버N예약</relatenm>
                <relateurl>https://booking.naver.com/booking/12/bizes/1493573</relateurl>
            </relate>
            <relate>
                <relatenm>인터파크</relatenm>
                <relateurl>http://ticket.interpark.com/Ticket/Goods/GoodsInfo.asp?GoodsCode=25013005</relateurl>
            </relate>
        </relates>
    </db>
</dbs>
""")

let facilityListMock = ("""
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
""")

let facilityDetailMock = ("""
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<dbs>
    <db>
        <fcltynm>올림픽공원</fcltynm>
        <mt10id>FC001247</mt10id>
        <mt13cnt>12</mt13cnt>
        <fcltychartr>공공(기타)</fcltychartr>
        <opende>1986</opende>
        <seatscale>41376</seatscale>
        <telno>02-410-1114</telno>
        <relateurl>http://www.olympicpark.co.kr/</relateurl>
        <adres>서울특별시 송파구 올림픽로 424 올림픽공원 (방이동)</adres>
        <la>37.521120000000000</la>
        <lo>127.12836360000005</lo>
        <restaurant>Y</restaurant>
        <cafe>Y</cafe>
        <store>Y</store>
        <nolibang>N</nolibang>
        <suyu>N</suyu>
        <parkbarrier>N</parkbarrier>
        <restbarrier>N</restbarrier>
        <runwbarrier>N</runwbarrier>
        <elevbarrier>N</elevbarrier>
        <parkinglot>Y</parkinglot>
        <mt13s>
            <mt13>
                <prfplcnm>KSPO DOME(체조경기장)</prfplcnm>
                <mt13id>FC001247-01</mt13id>
                <seatscale>15,000</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>SK핸드볼경기장(펜싱경기장)</prfplcnm>
                <mt13id>FC001247-02</mt13id>
                <seatscale>5,003</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale>20</disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>올림픽홀</prfplcnm>
                <mt13id>FC001247-03</mt13id>
                <seatscale>2,452</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale>22</disabledseatscale>
                <stagearea>23.1X18.5X8.5</stagearea>
            </mt13>
            <mt13>
                <prfplcnm>뮤즈라이브</prfplcnm>
                <mt13id>FC001247-04</mt13id>
                <seatscale>237</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale>3</disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>우리금융아트홀(역도경기장)</prfplcnm>
                <mt13id>FC001247-05</mt13id>
                <seatscale>1,184</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale>12</disabledseatscale>
                <stagearea>15.8X13.3X8.7</stagearea>
            </mt13>
            <mt13>
                <prfplcnm>K-아트홀</prfplcnm>
                <mt13id>FC001247-06</mt13id>
                <seatscale>500</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>야외(88잔디마당)</prfplcnm>
                <mt13id>FC001247-07</mt13id>
                <seatscale>10,000</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>Y</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>야외(수변무대)</prfplcnm>
                <mt13id>FC001247-08</mt13id>
                <seatscale>1,000</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>Y</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>벨로드롬(경륜경기장)</prfplcnm>
                <mt13id>FC001247-09</mt13id>
                <seatscale>6,000</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>평화광장</prfplcnm>
                <mt13id>FC001247-11</mt13id>
                <seatscale>0</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>일대</prfplcnm>
                <mt13id>FC001247-12</mt13id>
                <seatscale>0</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>Y</stagepracat>
                <stagedresat>Y</stagedresat>
                <stageoutdrat>Y</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
            <mt13>
                <prfplcnm>한성백제박물관</prfplcnm>
                <mt13id>FC001247-13</mt13id>
                <seatscale>0</seatscale>
                <stageorchat>N</stageorchat>
                <stagepracat>N</stagepracat>
                <stagedresat>N</stagedresat>
                <stageoutdrat>N</stageoutdrat>
                <disabledseatscale></disabledseatscale>
                <stagearea></stagearea>
            </mt13>
        </mt13s>
    </db>
</dbs>
""")

let boxOfficeListMock = ("""
<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<boxofs>
    <boxof>
        <cate>대중음악</cate>
        <rnum>1</rnum>
        <prfnm>ENHYPEN WORLD TOUR, WALK THE LINE: FINAL [서울]</prfnm>
        <prfpd>2025.10.24~2025.10.26</prfpd>
        <prfdtcnt>3</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 KSPO DOME(체조경기장)</prfplcnm>
        <seatcnt>15000</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274597_250922_111811.gif</poster>
        <mt20id>PF274597</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>2</rnum>
        <prfnm>최현우 아판타시아 [서울 서초]</prfnm>
        <prfpd>2025.10.25~2025.11.09</prfpd>
        <prfdtcnt>15</prfdtcnt>
        <area>서울</area>
        <prfplcnm>한전아트센터 한전아트센터</prfplcnm>
        <seatcnt>999</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273608_250908_175820.gif</poster>
        <mt20id>PF273608</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>3</rnum>
        <prfnm>태양의서커스, 쿠자 [서울]</prfnm>
        <prfpd>2025.10.11~2025.12.28</prfpd>
        <prfdtcnt>78</prfdtcnt>
        <area>서울</area>
        <prfplcnm>잠실종합운동장 빅탑</prfplcnm>
        <seatcnt>2400</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF264404_250507_153915.jpg</poster>
        <mt20id>PF264404</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>4</rnum>
        <prfnm>태양의서커스, 쿠자 [부산]</prfnm>
        <prfpd>2025.08.21~2025.09.28</prfpd>
        <prfdtcnt>9</prfdtcnt>
        <area>부산</area>
        <prfplcnm>신세계 문화홀 [센텀시티] 빅탑</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF263934_250502_110408.jpg</poster>
        <mt20id>PF263934</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>5</rnum>
        <prfnm>최현우 아판타시아 [대전]</prfnm>
        <prfpd>2025.10.18~2025.10.19</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>대전</area>
        <prfplcnm>대전평송청소년문화센터 평송홀(대극장)</prfplcnm>
        <seatcnt>792</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272256_250821_110544.gif</poster>
        <mt20id>PF272256</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>6</rnum>
        <prfnm>최현우 아판타시아 [인천 부평]</prfnm>
        <prfpd>2025.11.15~2025.11.16</prfpd>
        <prfdtcnt>3</prfdtcnt>
        <area>인천</area>
        <prfplcnm>부평아트센터 해누리극장</prfplcnm>
        <seatcnt>868</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272383_250822_131033.gif</poster>
        <mt20id>PF272383</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>7</rnum>
        <prfnm>위키드 내한 공연</prfnm>
        <prfpd>2025.07.12~2025.10.26</prfpd>
        <prfdtcnt>41</prfdtcnt>
        <area>서울</area>
        <prfplcnm>블루스퀘어 신한카드홀 (구. 인터파크홀) </prfplcnm>
        <seatcnt>1766</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF263972_250508_102632.jpg</poster>
        <mt20id>PF263972</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>8</rnum>
        <prfnm>미세스 다웃파이어</prfnm>
        <prfpd>2025.09.27~2025.12.07</prfpd>
        <prfdtcnt>63</prfdtcnt>
        <area>서울</area>
        <prfplcnm>샤롯데씨어터 샤롯데씨어터</prfplcnm>
        <seatcnt>1230</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF271160_250807_105208.gif</poster>
        <mt20id>PF271160</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>9</rnum>
        <prfnm>노트르담 드 파리 프렌치 오리지널 [서울]</prfnm>
        <prfpd>2025.09.03~2025.09.28</prfpd>
        <prfdtcnt>11</prfdtcnt>
        <area>서울</area>
        <prfplcnm>세종문화회관 세종대극장</prfplcnm>
        <seatcnt>3022</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF267494_250812_105246.png</poster>
        <mt20id>PF267494</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>10</rnum>
        <prfnm>그랜드 민트 페스티벌</prfnm>
        <prfpd>2025.10.18~2025.10.19</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 일대</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF269741_250717_141314.gif</poster>
        <mt20id>PF269741</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>11</rnum>
        <prfnm>렌트</prfnm>
        <prfpd>2025.11.09~2026.02.22</prfpd>
        <prfdtcnt>33</prfdtcnt>
        <area>서울</area>
        <prfplcnm>코엑스아티움(Coex Artium) 코엑스아티움(Coex Artium)</prfplcnm>
        <seatcnt>1004</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274238_250917_171008.gif</poster>
        <mt20id>PF274238</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>12</rnum>
        <prfnm>맘마미아! [서울]</prfnm>
        <prfpd>2025.07.26~2025.10.25</prfpd>
        <prfdtcnt>38</prfdtcnt>
        <area>서울</area>
        <prfplcnm>LG아트센터 서울 LG SIGNATURE 홀</prfplcnm>
        <seatcnt>1335</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF266928_250611_104935.jpg</poster>
        <mt20id>PF266928</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>13</rnum>
        <prfnm>이문세: The Best [서울]</prfnm>
        <prfpd>2025.12.13~2025.12.14</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 KSPO DOME(체조경기장)</prfplcnm>
        <seatcnt>15000</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273149_250902_102813.gif</poster>
        <mt20id>PF273149</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>14</rnum>
        <prfnm>마리 퀴리 [서울 강남]</prfnm>
        <prfpd>2025.07.25~2025.10.19</prfpd>
        <prfdtcnt>35</prfdtcnt>
        <area>서울</area>
        <prfplcnm>광림아트센터 BBCH홀</prfplcnm>
        <seatcnt>998</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF266915_250611_102041.gif</poster>
        <mt20id>PF266915</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>15</rnum>
        <prfnm>킹키부츠 [고양]</prfnm>
        <prfpd>2025.11.01~2025.11.09</prfpd>
        <prfdtcnt>8</prfdtcnt>
        <area>경기</area>
        <prfplcnm>고양아람누리 아람극장</prfplcnm>
        <seatcnt>1887</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274471_250919_103946.gif</poster>
        <mt20id>PF274471</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>16</rnum>
        <prfnm>부산국제록페스티벌</prfnm>
        <prfpd>2025.09.26~2025.09.28</prfpd>
        <prfdtcnt>3</prfdtcnt>
        <area>부산</area>
        <prfplcnm>삼락생태공원 삼락생태공원</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF264954_250515_095218.jpg</poster>
        <mt20id>PF264954</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>17</rnum>
        <prfnm>위키드 내한 공연 [부산]</prfnm>
        <prfpd>2025.11.13~2026.01.18</prfpd>
        <prfdtcnt>26</prfdtcnt>
        <area>부산</area>
        <prfplcnm>드림씨어터 [부산] 드림씨어터 [부산] </prfplcnm>
        <seatcnt>1727</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273937_250912_112314.gif</poster>
        <mt20id>PF273937</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>18</rnum>
        <prfnm>미스터트롯3 전국투어 콘서트 [서울 (앵콜) ]</prfnm>
        <prfpd>2025.09.20~2025.09.21</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 올림픽홀</prfplcnm>
        <seatcnt>2452</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF270210_250724_102111.gif</poster>
        <mt20id>PF270210</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>19</rnum>
        <prfnm>슬립노모어 서울</prfnm>
        <prfpd>2025.07.24~2025.09.28</prfpd>
        <prfdtcnt>32</prfdtcnt>
        <area>서울</area>
        <prfplcnm>매키탄 호텔 공연장</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF267104_250805_104530.gif</poster>
        <mt20id>PF267104</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>20</rnum>
        <prfnm>김건모 라이브투어: KIM GUN MO. [수원]</prfnm>
        <prfpd>2025.11.14~2025.11.14</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>경기</area>
        <prfplcnm>수원종합운동장 실내체육관</prfplcnm>
        <seatcnt>5145</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274543_250919_145242.jpg</poster>
        <mt20id>PF274543</mt20id>
    </boxof>
    <boxof>
        <cate>서커스/마술</cate>
        <rnum>21</rnum>
        <prfnm>최현우 19+Ⅰ [고양]</prfnm>
        <prfpd>2025.11.29~2025.11.30</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>경기</area>
        <prfplcnm>고양아람누리 아람극장</prfplcnm>
        <seatcnt>1887</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274043_250915_123824.gif</poster>
        <mt20id>PF274043</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>22</rnum>
        <prfnm>이문세: The Best [대전]</prfnm>
        <prfpd>2025.12.27~2025.12.27</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>대전</area>
        <prfplcnm>대전컨벤션센터 (DCC) 제2전시장</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274585_250922_105026.gif</poster>
        <mt20id>PF274585</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>23</rnum>
        <prfnm>레드북 [서울 광진]</prfnm>
        <prfpd>2025.09.23~2025.12.07</prfpd>
        <prfdtcnt>49</prfdtcnt>
        <area>서울</area>
        <prfplcnm>유니버설아트센터 유니버설아트센터</prfplcnm>
        <seatcnt>1052</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF271506_250813_110932.gif</poster>
        <mt20id>PF271506</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>24</rnum>
        <prfnm>황영웅 콘서트: 오빠가 돌아왔다! [울산]</prfnm>
        <prfpd>2025.11.29~2025.11.30</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>울산</area>
        <prfplcnm>울산전시컨벤션센터 울산전시컨벤션센터</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274616_250922_124553.jpg</poster>
        <mt20id>PF274616</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>25</rnum>
        <prfnm>알라딘 [부산]</prfnm>
        <prfpd>2025.07.11~2025.09.28</prfpd>
        <prfdtcnt>9</prfdtcnt>
        <area>부산</area>
        <prfplcnm>드림씨어터 [부산] 드림씨어터 [부산] </prfplcnm>
        <seatcnt>1727</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF263426_250828_113650.gif</poster>
        <mt20id>PF263426</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>26</rnum>
        <prfnm>이문세: The Best [광주]</prfnm>
        <prfpd>2025.11.29~2025.11.29</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>광주</area>
        <prfplcnm>광주여자대학교 유니버시아드 체육관</prfplcnm>
        <seatcnt>8337</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273401_250904_145000.gif</poster>
        <mt20id>PF273401</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>27</rnum>
        <prfnm>이승철 콘서트: 오케스트락3</prfnm>
        <prfpd>2025.11.22~2025.11.23</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 올림픽홀</prfplcnm>
        <seatcnt>2452</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273607_250908_175026.gif</poster>
        <mt20id>PF273607</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>28</rnum>
        <prfnm>뮤즈 내한공연 (MUSE LIVE IN KOREA)</prfnm>
        <prfpd>2025.09.27~2025.09.27</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>인천</area>
        <prfplcnm>인천문학경기장 주경기장</prfplcnm>
        <seatcnt>49084</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF269043_250709_131440.jpg</poster>
        <mt20id>PF269043</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>29</rnum>
        <prfnm>노트르담 드 파리 프렌치 오리지널 내한공연 [대구]</prfnm>
        <prfpd>2025.11.14~2025.11.23</prfpd>
        <prfdtcnt>11</prfdtcnt>
        <area>대구</area>
        <prfplcnm>대구오페라하우스 대구오페라하우스</prfplcnm>
        <seatcnt>1490</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272859_250828_133751.gif</poster>
        <mt20id>PF272859</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>30</rnum>
        <prfnm>영탁 단독 콘서트: TAK SHOW4 [안동]</prfnm>
        <prfpd>2025.10.25~2025.10.26</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>경북</area>
        <prfplcnm>안동실내체육관 안동실내체육관</prfplcnm>
        <seatcnt>6209</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274418_250918_132905.gif</poster>
        <mt20id>PF274418</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>31</rnum>
        <prfnm>THE신승훈SHOW: SINCERELY 35 [부산]</prfnm>
        <prfpd>2025.11.07~2025.11.08</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>부산</area>
        <prfplcnm>벡스코 (BEXCO) 오디토리움</prfplcnm>
        <seatcnt>4002</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273281_250903_152929.gif</poster>
        <mt20id>PF273281</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>32</rnum>
        <prfnm>윌리엄과 윌리엄의 윌리엄들 [대학로]</prfnm>
        <prfpd>2025.09.16~2025.11.30</prfpd>
        <prfdtcnt>58</prfdtcnt>
        <area>서울</area>
        <prfplcnm>NOL 서경스퀘어(구. 서경대학교 공연예술센터) 스콘2관</prfplcnm>
        <seatcnt>264</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF270800_250804_111718.gif</poster>
        <mt20id>PF270800</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>33</rnum>
        <prfnm>DOYOUNG CONCERT: Yours [인천 (앵콜) ]</prfnm>
        <prfpd>2025.10.09~2025.10.11</prfpd>
        <prfdtcnt>3</prfdtcnt>
        <area>인천</area>
        <prfplcnm>인스파이어 아레나</prfplcnm>
        <seatcnt>14483</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272369_250905_111829.jpg</poster>
        <mt20id>PF272369</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>34</rnum>
        <prfnm>황영웅 콘서트: 오빠가 돌아왔다!</prfnm>
        <prfpd>2025.10.18~2025.10.19</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>서울</area>
        <prfplcnm>연세대학교 노천극장 연세대학교 노천극장</prfplcnm>
        <seatcnt>7500</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273470_250905_132912.jpg</poster>
        <mt20id>PF273470</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>35</rnum>
        <prfnm>물랑루즈!</prfnm>
        <prfpd>2025.11.27~2026.02.22</prfpd>
        <prfdtcnt>3</prfdtcnt>
        <area>서울</area>
        <prfplcnm>블루스퀘어 신한카드홀 (구. 인터파크홀) </prfplcnm>
        <seatcnt>1766</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274266_250917_102331.gif</poster>
        <mt20id>PF274266</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>36</rnum>
        <prfnm>아몬드 [대학로]</prfnm>
        <prfpd>2025.09.19~2025.12.14</prfpd>
        <prfdtcnt>38</prfdtcnt>
        <area>서울</area>
        <prfplcnm>유니플렉스 1관(대극장)</prfplcnm>
        <seatcnt>599</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF271548_250911_152829.jpg</poster>
        <mt20id>PF271548</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>37</rnum>
        <prfnm>WENDY 1st WORLD TOUR: W: EALIVE [서울]</prfnm>
        <prfpd>2025.09.20~2025.09.21</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>서울</area>
        <prfplcnm>장충체육관 장충체육관</prfplcnm>
        <seatcnt>4507</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272648_250826_133355.jpg</poster>
        <mt20id>PF272648</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>38</rnum>
        <prfnm>조선의 복서 [대학로]</prfnm>
        <prfpd>2025.09.09~2025.11.09</prfpd>
        <prfdtcnt>49</prfdtcnt>
        <area>서울</area>
        <prfplcnm>대학로 자유극장 (자유문화발전소) 대학로 자유극장 (자유문화발전소) </prfplcnm>
        <seatcnt>233</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF271131_250806_151103.jpg</poster>
        <mt20id>PF271131</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>39</rnum>
        <prfnm>맘마미아! [의정부]</prfnm>
        <prfpd>2025.10.31~2025.11.02</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>경기</area>
        <prfplcnm>의정부예술의전당 대극장</prfplcnm>
        <seatcnt>1025</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273725_250910_104544.gif</poster>
        <mt20id>PF273725</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>40</rnum>
        <prfnm>맘마미아! [천안]</prfnm>
        <prfpd>2025.11.14~2025.11.16</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>충남</area>
        <prfplcnm>천안예술의전당 대공연장</prfplcnm>
        <seatcnt>1642</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273825_250911_103606.gif</poster>
        <mt20id>PF273825</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>41</rnum>
        <prfnm>영탁 단독 콘서트: TAK SHOW4 [인천]</prfnm>
        <prfpd>2025.10.11~2025.10.12</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>인천</area>
        <prfplcnm>송도컨벤시아 송도컨벤시아</prfplcnm>
        <seatcnt>5000</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF271814_250818_110909.gif</poster>
        <mt20id>PF271814</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>42</rnum>
        <prfnm>THE신승훈SHOW: SINCERELY 35 [대구]</prfnm>
        <prfpd>2025.11.15~2025.11.16</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>경북</area>
        <prfplcnm>천마아트센터 그랜드홀</prfplcnm>
        <seatcnt>1889</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273399_250904_144203.gif</poster>
        <mt20id>PF273399</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>43</rnum>
        <prfnm>쎄시봉: The Last Concert [서울]</prfnm>
        <prfpd>2025.10.11~2025.10.12</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>서울</area>
        <prfplcnm>올림픽공원 올림픽홀</prfplcnm>
        <seatcnt>2452</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272299_250821_134152.gif</poster>
        <mt20id>PF272299</mt20id>
    </boxof>
    <boxof>
        <cate>뮤지컬</cate>
        <rnum>44</rnum>
        <prfnm>데스노트 [서울]</prfnm>
        <prfpd>2025.10.14~2026.05.10</prfpd>
        <prfdtcnt>17</prfdtcnt>
        <area>서울</area>
        <prfplcnm>디큐브링크아트센터 디큐브씨어터</prfplcnm>
        <seatcnt>1242</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273019_250901_104904.gif</poster>
        <mt20id>PF273019</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>45</rnum>
        <prfnm>주현미 데뷔 40주년 콘서트: The Queen [군포]</prfnm>
        <prfpd>2025.11.08~2025.11.08</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>경기</area>
        <prfplcnm>군포문화예술회관 수리홀</prfplcnm>
        <seatcnt>1142</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF272944_250829_112637.gif</poster>
        <mt20id>PF272944</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>46</rnum>
        <prfnm>임재범 40주년 콘서트: 나는 임재범이다 [인천]</prfnm>
        <prfpd>2025.12.13~2025.12.13</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>인천</area>
        <prfplcnm>인천남동체육관 인천남동체육관</prfplcnm>
        <seatcnt>8828</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274453_250918_145232.gif</poster>
        <mt20id>PF274453</mt20id>
    </boxof>
    <boxof>
        <cate>서양음악(클래식)</cate>
        <rnum>47</rnum>
        <prfnm>해리 포터와 죽음의 성물 Part 1 인 콘서트</prfnm>
        <prfpd>2025.10.24~2025.10.26</prfpd>
        <prfdtcnt>4</prfdtcnt>
        <area>서울</area>
        <prfplcnm>세종문화회관 세종대극장</prfplcnm>
        <seatcnt>3022</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF257522_250207_133344.jfif</poster>
        <mt20id>PF257522</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>48</rnum>
        <prfnm>쎄시봉: The Last Concert [용인]</prfnm>
        <prfpd>2025.11.09~2025.11.09</prfpd>
        <prfdtcnt>2</prfdtcnt>
        <area>경기</area>
        <prfplcnm>용인포은아트홀 용인포은아트홀</prfplcnm>
        <seatcnt>1259</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF273894_250911_141713.gif</poster>
        <mt20id>PF273894</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>49</rnum>
        <prfnm>부활 40주년 콘서트 [천안]</prfnm>
        <prfpd>2025.11.02~2025.11.02</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>충남</area>
        <prfplcnm>천안예술의전당 대공연장</prfplcnm>
        <seatcnt>1642</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF267670_250620_101501.gif</poster>
        <mt20id>PF267670</mt20id>
    </boxof>
    <boxof>
        <cate>대중음악</cate>
        <rnum>50</rnum>
        <prfnm>ALAN WALKER LIVE, 알렌워커 내한공연 [서울]</prfnm>
        <prfpd>2025.10.18~2025.10.18</prfpd>
        <prfdtcnt>1</prfdtcnt>
        <area>서울</area>
        <prfplcnm>서울어린이대공원 축구경기장</prfplcnm>
        <seatcnt>0</seatcnt>
        <poster>http://www.kopis.or.kr/upload/pfmPoster/PF_PF274628_250922_131625.png</poster>
        <mt20id>PF274628</mt20id>
    </boxof>
</boxofs>
""")
