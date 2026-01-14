Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D67CED1D10A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jan 2026 09:19:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C9906F7C2;
	Wed, 14 Jan 2026 08:19:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1a7UvsGO25fc; Wed, 14 Jan 2026 08:19:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 481416F7C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768378786;
	bh=payHe/nOOMt6eTRuLJOxtXFQaa9GvDBUgIxAPEUOl/E=;
	h=To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=9yGcb9UoKV+H/8uff/5GxOeGFhSdPAJCOvpnGRUbmQsFU5OXbx8PBj+Z8x6quCvK/
	 UxL227FCI5JUKLvF091zonOSN2awNsLb+uPvlrZitekEtS1kX/FZkk2nohBqClna19
	 6ARuY3WvI/KWlDGOlkY/c9+4g9Q7+6oH8+moZ3kZjlObzO9oPR1Q0Ltlcd3iuLAXYa
	 Ko8kixk0mrb3iz3YrWQI/3ftl95Cg4p5wsr4xitjHeVPZRsIGvrmsXDkxrQWQsUXku
	 BMFZlhjeAdgszlVCw2sfH1UrG6VKor59Y5tLV+kajzfjE6/T/Q4W0wjrzGUO5eI484
	 jtVUa08hWLmcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 481416F7C0;
	Wed, 14 Jan 2026 08:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 820011C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 08:19:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67BD342E42
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 08:19:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tJVtgtOm874Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jan 2026 08:19:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.65.39;
 helo=du2pr03cu002.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7BEFF42E3F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7BEFF42E3F
Received: from DU2PR03CU002.outbound.protection.outlook.com
 (mail-northeuropeazon11011039.outbound.protection.outlook.com [52.101.65.39])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7BEFF42E3F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jan 2026 08:19:41 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SUSR7C7X5RIPARyFRqvcTHJ5FAl0bPs698Q9UeqtzOSCGOrkaVI9+Zvn8eFY5MFHqUrJ6Ei/eaWIH0h41cNg7Vk7LHcawz9EpDrE920dvTZMlASsqQLjBXrWPDzFvF5rF8IRC8HgXFY79ngFcJ2mqyfPExJjZzEPWPx70irjINLxs7vWJPnUNtWNnSBvPIq7psaK9brXrk6NWF4sfE/JF5QubX7wFJYlf/s4VEnnThpnsebxuBnXFiVKvo7DjAZ0VnreOTvg00u5YP0JRGjI/mIcSlyE00kSpMC/Ppa3cHLEQ2aIBEkYZ72DotNP51FbtupMuYCPYBniIi5TKe1BWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=payHe/nOOMt6eTRuLJOxtXFQaa9GvDBUgIxAPEUOl/E=;
 b=hzU5f9/2skb05G+2DAm/DuTWQQL978eXU6hxsLtQ0lCMRCDXrwkBBR4qmUjb1RylxQLgVb55cWCk4+xHLjeKKutSZWMOau2iMeYBT307W6QuRqscUxkvgaj23FuMOfN2A9GtcKlG9+MVl1vxZb2YoKhFY6J/IOUgE6v8t8nYZ8fx0bCj+3eEFu3NTKZRz8oXDd4YToLqEANxBtYHrgLJ3NT6gTrgHlW9js1nfgdKIVJZgN8d3wJNhHYcgRzeXhXXa7pqFQbIyWEBZDNAuiTdLiWCTq03bXbM67mKqrXnL+1ILUgHFcgja9YBY8K4R6tTRBiskKTIyQAQoZ394FwPHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by AM9PR10MB4119.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1fb::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.5; Wed, 14 Jan
 2026 08:19:38 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::eaf8:36f9:7ebb:e72b%5]) with mapi id 15.20.9520.005; Wed, 14 Jan 2026
 08:19:38 +0000
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: "aleksandr.loktionov@intel.com" <aleksandr.loktionov@intel.com>,
 "jacob.e.keller@intel.com" <jacob.e.keller@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>,
 "przemyslaw.kitszel@intel.com" <przemyslaw.kitszel@intel.com>,
 "sriram.yagnaraman@ericsson.com" <sriram.yagnaraman@ericsson.com>,
 "kurt@linutronix.de" <kurt@linutronix.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "magnus.karlsson@intel.com"
 <magnus.karlsson@intel.com>
Thread-Topic: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in
 igb_xsk_wakeup
Thread-Index: AQHcg8PrekTNf/vlH0OQtQBQJq0k07VP+5EAgAFE5BA=
Date: Wed, 14 Jan 2026 08:19:37 +0000
Message-ID: <AS1PR10MB53927D6755EA818A29A8B0EE8F8FA@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <20260112130349.1737901-1-vivek.behera@siemens.com>
 <aWYvVWG+AXUtpBgM@boxer>
In-Reply-To: <aWYvVWG+AXUtpBgM@boxer>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=2cc046a5-cb30-4595-97e0-da3248529a90;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2026-01-14T07:04:15Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|AM9PR10MB4119:EE_
x-ms-office365-filtering-correlation-id: 85eba68f-bcc0-451b-c5e6-08de5345a898
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ZxgTmD8q0qKpejW4cCL4J6KSbwApvkRcZeum7F2b+WsMw6hYVq0jjElYgI?=
 =?iso-8859-1?Q?jfNrVo5Aw8wBmZy38dqnsjSy+6ntz17Zrisnocs23b47MjPdpIgwzNWJuJ?=
 =?iso-8859-1?Q?+sNtv+xN0b60nttNg3NlYvMh/QlmV0g5E3A76McYuBpY0rR4Rw6bciyMRC?=
 =?iso-8859-1?Q?gt58aUbl0W2Uue1wMDKihVjDmGd43Y6RcbQDWTWjLsWJ5sdcBZpZn8FUNz?=
 =?iso-8859-1?Q?pkpKPvrWzO6DOHKi1b6FlIRxdWEVlx6+Sv4jhcQrCtyKUMPV5Mjbfr1I/m?=
 =?iso-8859-1?Q?sCNnjUz5J+dt+Ag2tCZvUAN4p2lbycd6yOVpalIib28Pjjq4+i4O89o9QS?=
 =?iso-8859-1?Q?rQz5kQPoHuH+P1hQ+U+VKOVDe2rof37YbpQLEfX5bMuu+x5RVHGTmBp0ed?=
 =?iso-8859-1?Q?elz48JVXomfrPmeBqU9Jvt6CXZBJnA9QQ6Q2jyeZi7ZVTnpFFq0Yoh2GKT?=
 =?iso-8859-1?Q?q9VU1bec29KMKdxYGbdOsq48eFEppflFeHPiUJ8LlFETeIe8QD4deT1PLz?=
 =?iso-8859-1?Q?yPQZI4GAHpuBRO4oSkFEaRdMSHPHbf2WjZ7qUXpYA0mrxdLlrnjCoCRT+1?=
 =?iso-8859-1?Q?mnszv1Dth7a1DunLnY0wDX3bXGn1MSKZXOOermR6zpn9hl+/HEcLru/aFC?=
 =?iso-8859-1?Q?bHOXTOnsfcUIx+m6t4kmROq36zBwxZSmNKWDwDO5faqyeMlwqpvF/xn9sb?=
 =?iso-8859-1?Q?ePLQ9ZY51nNRQS02KYosADaN0kFjjR7apHXHGU9y/ks8QaCUEkHu6vdJjJ?=
 =?iso-8859-1?Q?+517IGwBxWCLHV9LWm0cjsukDdj/BqFeOTLdIHv0JXgWnxeEVC02r+1q7O?=
 =?iso-8859-1?Q?TzzeN7gD9W2WydyxP4rer9w/5UIXda8MgEMr5iuiTU7lTiJBiNi47KhPnN?=
 =?iso-8859-1?Q?qDpzGN72tso/PtLAMfdVNRQFfs3R63VArAATeOgIU+7Sv9w30UgaaANifi?=
 =?iso-8859-1?Q?CJPqFEWmeCFwwAiBrVEK2RKxAT/tVI6THjYMq/GmK82/tfP5wmFBcY75x6?=
 =?iso-8859-1?Q?3Tz3M1LS+RvCzh7aW3NijTiVqVM5s9lCvvRZPxST/80U0jgwdphQQxDZ5r?=
 =?iso-8859-1?Q?kJJZVqmZSMXaKF0OV2mKJP/x2uBi81Iiel+GbTc0PAEtu2NbBvl/UDRrhn?=
 =?iso-8859-1?Q?JjQQNzQCGsOuvRKTtjrDq2TtzR/Qq3Xr8xmgwinAOBc9pA9fcQSUvGF2nL?=
 =?iso-8859-1?Q?brJdH8Jlzh29UF3QemWR9GqCnztGmjq3zDGoCrewN0M6knmvYfG1NyMwLH?=
 =?iso-8859-1?Q?g+DI8xFYUsMsGu5Pw6N0LPoXylk08lqcDhLhO1iMtliygMGVaClvHYOVfB?=
 =?iso-8859-1?Q?myjrZL/3beUhhNEy7kw/wwJ15h1jcbzBazlpFA3g1LnHQDgKlmT2Z9e1qR?=
 =?iso-8859-1?Q?GE/FjwoTqleCDaPFKLmuj+LpPoS34w3WN599DhITl7O4y808sNZgswmXQB?=
 =?iso-8859-1?Q?RHJ4f20okzktxv9psqFWxuYiLAzr+NvXDxiFSnFe/KczGucP1XGZ+Lasc1?=
 =?iso-8859-1?Q?S0l5bCivMl8fHIz0+Gahmn51nuhhSuwEuYn+ITA3KUrHDRXuFCqdb8aFM9?=
 =?iso-8859-1?Q?TslH7t8AwkNWZy6A2UJJhHg9EBvE?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?3VYyU69nKNFS2gACYAp1AImS3n7gF1mN2j68lhBzCg5D4HIU1Vk7Ohm3vl?=
 =?iso-8859-1?Q?f3jsdItDOypCDq4y3KPPYyz9Sif3wzdgY+6/kqoYbb0zOWuPc3kRP6EHpm?=
 =?iso-8859-1?Q?7FiSykvUyUxE1Skj3rK6bmW7329p3ThJghiUuUg84GwcLt9sjL6qRvqfbk?=
 =?iso-8859-1?Q?WdQ6qLCLxwVtxxdaaSXzZTxnoRmZozPCe728Wv2rdK0bOjR0j+NaiPuElr?=
 =?iso-8859-1?Q?DPG9cAPP9uIEF4coqlGYfmXpHJGjc8gWkeZmZXd8IK0HOfN9E+An3GTEqj?=
 =?iso-8859-1?Q?ilLiOfezWVzsVQRtkgPxRGObvCZLAmfNNXBijza8aori1l0x7GIfC95Nyh?=
 =?iso-8859-1?Q?wK3miSv0VI6coQ5C4U20VkxdTJoBA8v0yQEJv3IC7W3noefb86vW3+Rfu0?=
 =?iso-8859-1?Q?wvYviscG3TPdbD4xosA6VEFhnsm6lQOtd0cdKOurf9ygT0whZfS2rYfFp8?=
 =?iso-8859-1?Q?fxyEhfsTaJK5COjRf6wK+duuyVIIRkIFD2HgGKYXesdqz2Ha1OCBAHZIa6?=
 =?iso-8859-1?Q?J2KR095NAKaiZZR9pXE0dC1MY1riVybQl3C0vnDmNxupN/bcQqlSHathqa?=
 =?iso-8859-1?Q?t/ZiDTC4+sDZLLcsTiGYBJ1eETPFp6drPeLrjYUAYCu9pKBvRy3tszK7sD?=
 =?iso-8859-1?Q?4IJ2yCuUQ7WvVtYnhl8zl6B1a3wsCqamfBNU7BN+sRNRr68dRTUF5/6hpx?=
 =?iso-8859-1?Q?li0Q3RJPY9/iKF2oNZAsc3vhoBVIsSwMkWbUT2Ci3UUDtBkrGW/KRyNRTh?=
 =?iso-8859-1?Q?WiytTIafuZa966ElbmUM6iB2jCwpDy0Tl0/p/Q8XCbUgH0Wn+yWsGKclkd?=
 =?iso-8859-1?Q?QWvi7t0UffPHGf4l2S7zdb3RRx3wmnfvLLaPS19Hh9LTmZ2bFhJ/dZVefS?=
 =?iso-8859-1?Q?/tysYR5HcGOnIm7OehwB0JXDZ6vvo8BwrO7JTu6MBv2nXYf4JCjRY28LcC?=
 =?iso-8859-1?Q?SElJI02Ji/+McG4RewhMpjWg/WYxiG4Tvcqp+mN7yuVmHTbIRQlFJaOYAv?=
 =?iso-8859-1?Q?mzOdygQTWjpwdSB0hNOpZn4vmoN7mUpLIl5vnhsgXUG7KkoTekTD2p5lEV?=
 =?iso-8859-1?Q?9ahuVFhSki1KkW5wsQ48TOMTqOEtdBzwQT8cjoWjv/hvCof9pOqAEWsjgz?=
 =?iso-8859-1?Q?IXqr1quUe0ZAu44sbBD4iscrSWqITdhJ0niLvfhkkDkCzwVE+THx8wXB7w?=
 =?iso-8859-1?Q?1iLM9uDJ7Z3JuYzW+zOLDZX1E5Y8LGXeMayWik1R6OCteXFE3fcKJSqbsj?=
 =?iso-8859-1?Q?WrSmqWzCwjY+r0VwLQLvGxHkEHtHaUEgSo+7U16eTWzFmogUwzqh1y4X1g?=
 =?iso-8859-1?Q?pVb5TutKg4RxpC1YJIFt1mrLxVyHw8M4GZ2XSVRIy6DpLQWGWc2xMdmYH7?=
 =?iso-8859-1?Q?vlJp+HrZ3XQepXO9MgtlCOjm8Jyd2LhCsCHocwH7nYdKE942Nn/MIXuzlM?=
 =?iso-8859-1?Q?nAO5iqalRh2lh3+1IIVbzDX+xogumAMPmqZ4ERcX63RWA/Yx42S5mQLv+k?=
 =?iso-8859-1?Q?aGOKHIUHPj+VPRwOouJFSyL/VeaYsrjpikNy6c3Me6E6jubqxAFufwXUum?=
 =?iso-8859-1?Q?eVDZjxRA7LFtAuQ4v3soL3ybRYKFVN4WZHBy6Abc2phPjDTMi44hnM/950?=
 =?iso-8859-1?Q?18JEVvFizx8TjkOhMlodXhO32SiMyUZOkSJ9mkG1tk/POdRaiOu9Jk40JW?=
 =?iso-8859-1?Q?bPlpdKl4Xnzaa6B/k0QV6xWkN1VRqPSO15Xc5V8KQ9g9BR1GYl9s6vpnMT?=
 =?iso-8859-1?Q?TxHarLhb3q8gem6K7kCznLnkzkfPmm2BS3yjqw6gYUp/+BD7paEF3qF7Sj?=
 =?iso-8859-1?Q?uptHgfUoOw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 85eba68f-bcc0-451b-c5e6-08de5345a898
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2026 08:19:37.9005 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WMOGnLtN0xvqShTPXvISbE9zMmddX+BLZvvOctBluTdAInPiyr8p8u9j+Gg9MpPlWlyRp+NwBYI/IOZEEo08qqhFM0Qq5NGmQKLmDo8jWB8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4119
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=payHe/nOOMt6eTRuLJOxtXFQaa9GvDBUgIxAPEUOl/E=;
 b=pT2F61r4UBkbTQIlI1+OzAeAV36DNKspGSmmfhQhr6rPDn+fYIFiJZEK/a3DGQSqxGA8rydvlpCqAd699eokWVFXPk2q2gdM0GuRJDBSha+wTJ2ua27pGANy9o/EPHgXaVQ8ErDG7r0IzoM/rejdFNK1a2dHeJiAN+Miyp+fYWBVzcyTltIBJQcjh9kZqOKF6bSwWICc781MumnUs/ou0MzC7bCxh2b7JiPW3Rx5RWLR/ygo8teP1Heo8NQNqlfBiys19OVG04JBr4E15XtqqPzzoE/cOROl0l8fNOZJD/0MDheX+LJcyyG+XW7HYHzPk1SNV1DFau8tjWvRyEkEBg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=pT2F61r4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v5] igb: Fix trigger of
 incorrect irq in igb_xsk_wakeup
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
From: "Behera, VIVEK via Intel-wired-lan" <intel-wired-lan@osuosl.org>
Reply-To: "Behera, VIVEK" <vivek.behera@siemens.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Urspr=FCngliche Nachricht-----
> Von: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Gesendet: Dienstag, 13. Januar 2026 12:41
> An: Behera, Vivek (DI FA DSP ICC PRC1) <vivek.behera@siemens.com>
> Cc: aleksandr.loktionov@intel.com; jacob.e.keller@intel.com;
> anthony.l.nguyen@intel.com; przemyslaw.kitszel@intel.com;
> sriram.yagnaraman@ericsson.com; kurt@linutronix.de; intel-wired-
> lan@lists.osuosl.org; magnus.karlsson@intel.com
> Betreff: Re: [PATCH iwl-net v5] igb: Fix trigger of incorrect irq in igb_=
xsk_wakeup
>=20
> On Mon, Jan 12, 2026 at 02:03:49PM +0100, Vivek Behera wrote:
> > The current implementation in the igb_xsk_wakeup expects the Rx and Tx
> > queues to share the same irq. This would lead to triggering of
> > incorrect irq in split irq configuration.
> > This patch addresses this issue which could impact environments with 2
> > active cpu cores or when the number of queues is reduced to 2 or less
> >
> > cat /proc/interrupts | grep eno2
> >  167:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  0-edge      eno2
> >  168:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  1-edge      eno2-rx-0
> >  169:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  2-edge      eno2-rx-1
> >  170:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  3-edge      eno2-tx-0
> >  171:          0          0          0          0 IR-PCI-MSIX-0000:08:0=
0.0
> >  4-edge      eno2-tx-1
> >
> > Furthermore it uses the flags input argument to trigger either rx, tx
> > or both rx and tx irqs as specified in the ndo_xsk_wakeup api
> > documentation
> >
> > Fixes: 80f6ccf9f116 ("igb: Introduce XSK data structures and helpers")
> > Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > ---
> > v1:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251212131454.124116-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Ca31558f
> 1fe
> >
> ea4357387008de5298bc67%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9039013116385150%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3D6jtDYEHBQwK0mSoY5bRnMu2YXbrZzKqEeTSim8EsumI%3D&re
> served=3D0
> > v2:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251215115416.410619-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Ca31558f
> 1fe
> >
> ea4357387008de5298bc67%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9039013116422789%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DV7%2BmPEiR7nJ9a9p9Fcl8RqPjij%2BgGop05dkWB7pRMlM%3D
> &reserv
> > ed=3D0
> > v3:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251220114936.140473-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Ca31558f
> 1fe
> >
> ea4357387008de5298bc67%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9039013116446169%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3Dc9OVw3ziHwqlpeXKJGsUxVyJCyeO2pwwf98ejBaSg9s%3D&reser
> ved=3D0
> > v4:
> > https://eur01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Flor=
e
> > .kernel.org%2Fintel-wired-lan%2F20251222115747.230521-1-vivek.behera%4
> >
> 0siemens.com%2F&data=3D05%7C02%7Cvivek.behera%40siemens.com%7Ca31558f
> 1fe
> >
> ea4357387008de5298bc67%7C38ae3bcd95794fd4addab42e1495d55a%7C1%7C0%7
> C63
> >
> 9039013116466859%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU1hcGkiOnRydW
> UsIlYiO
> >
> iIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIsIldUIjoyfQ%3D%3D%7C0%7
> C
> >
> %7C%7C&sdata=3DHJsueSZ49aNY%2FSY7iCQwvc7pcLWvB7I%2FXUdx%2F%2Ft70
> gQ%3D&re
> > served=3D0
> >
> > changelog:
> > v1
> > - Inital description of the Bug and fixes made in the patch
> >
> > v1 -> v2
> > - Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ
> > configuration
> > - Review suggestions by Aleksander: Modified sequence to complete all
> >   error checks for rx and tx before updating napi states and
> > triggering irqs
> > - Corrected trigger of TX and RX interrupts over E1000_ICS (non msix
> > use case)
> > - Added define for Tx interrupt trigger bit mask for E1000_ICS
> >
> > v2 -> v3
> > - Included applicable feedback and suggestions from igc patch
> > - Fixed logic in updating eics value when  both TX and RX need wakeup
> >
> > v3 -> v4
> > - Added comments to explain trigerring of both TX and RX with active
> > queue pairs
> > - Fixed check of xsk pools in if statement
> >
> > v4 -> v5
> > - Introduced a simplified logic for sequential check for RX and TX
> > ---
> >  .../net/ethernet/intel/igb/e1000_defines.h    |  1 +
> >  drivers/net/ethernet/intel/igb/igb_xsk.c      | 75 +++++++++++++++----
> >  2 files changed, 61 insertions(+), 15 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > index fa028928482f..9357564a2d58 100644
> > --- a/drivers/net/ethernet/intel/igb/e1000_defines.h
> > +++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
> > @@ -443,6 +443,7 @@
> >  #define E1000_ICS_LSC       E1000_ICR_LSC       /* Link Status Change =
*/
> >  #define E1000_ICS_RXDMT0    E1000_ICR_RXDMT0    /* rx desc min. thresh=
old
> */
> >  #define E1000_ICS_DRSTA     E1000_ICR_DRSTA     /* Device Reset Aserte=
d */
> > +#define E1000_ICS_TXDW      E1000_ICR_TXDW	/* Transmit desc written
> back */
> >
> >  /* Extended Interrupt Cause Set */
> >  /* E1000_EITR_CNT_IGNR is only for 82576 and newer */ diff --git
> > a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > index 30ce5fbb5b77..6e51b5b6f131 100644
> > --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> > +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> > @@ -529,6 +529,13 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid=
, u32
> flags)
> >  	struct igb_adapter *adapter =3D netdev_priv(dev);
> >  	struct e1000_hw *hw =3D &adapter->hw;
> >  	struct igb_ring *ring;
> > +	struct igb_q_vector *q_vector;
> > +	struct napi_struct *rx_napi;
> > +	struct napi_struct *tx_napi;
> > +	bool trigger_irq_tx =3D false;
> > +	bool trigger_irq_rx =3D false;
> > +	u32 eics_tx =3D 0;
> > +	u32 eics_rx =3D 0;
> >  	u32 eics =3D 0;
> >
> >  	if (test_bit(__IGB_DOWN, &adapter->state)) @@ -536,27 +543,65 @@ int
> > igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
> >
> >  	if (!igb_xdp_is_enabled(adapter))
> >  		return -EINVAL;
> > -
> > -	if (qid >=3D adapter->num_tx_queues)
> > +	/* Check if queue_id is valid. Tx and Rx queue numbers are always sam=
e */
> > +	if (qid >=3D adapter->num_rx_queues)
> >  		return -EINVAL;
> > -
> > -	ring =3D adapter->tx_ring[qid];
> > -
> > -	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > -		return -ENETDOWN;
> > -
> > -	if (!READ_ONCE(ring->xsk_pool))
> > +	/* Check if flags are valid */
> > +	if (!(flags & XDP_WAKEUP_RX) && !(flags & XDP_WAKEUP_TX))
> >  		return -EINVAL;
> > -
> > -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> > -		/* Cause software interrupt */
> > +	if (flags & XDP_WAKEUP_RX) {
> > +		/* IRQ trigger preparation for Rx */
> > +		ring =3D adapter->rx_ring[qid];
> > +		if (!READ_ONCE(ring->xsk_pool))
> > +			return -ENXIO;
> > +		q_vector =3D ring->q_vector;
> > +		rx_napi =3D &q_vector->napi;
> > +		/* Extend the BIT mask for eics */
> > +		eics_rx =3D ring->q_vector->eims_value;
> > +		trigger_irq_rx =3D true;
> > +	}
> > +	if (flags & XDP_WAKEUP_TX) {
> > +		if (adapter->flags & IGB_FLAG_QUEUE_PAIRS) {
> > +		/* In queue-pair mode, rx_ring and tx_ring share the same q_vector,
> > +		 * so a single IRQ trigger will wake both RX and TX processing
> > +		 */
> > +		} else {
> > +			/* IRQ trigger preparation for Tx */
> > +			ring =3D adapter->tx_ring[qid];
> > +			if (test_bit(IGB_RING_FLAG_TX_DISABLED, &ring->flags))
> > +				return -ENETDOWN;
> > +
> > +			if (!READ_ONCE(ring->xsk_pool))
> > +				return -ENXIO;
> > +			q_vector =3D ring->q_vector;
> > +			tx_napi =3D &q_vector->napi;
> > +			/* Extend the BIT mask for eics */
> > +			eics_tx =3D ring->q_vector->eims_value;
> > +			trigger_irq_tx =3D true;
> > +		}
> > +	}
> > +	/* All error checks are finished. Check and update napi states for rx=
 and tx */
> > +	if (trigger_irq_rx) {
> > +		if (!napi_if_scheduled_mark_missed(rx_napi))
> > +			eics |=3D eics_rx;
> > +	}
> > +	if (trigger_irq_tx) {
> > +		if (!napi_if_scheduled_mark_missed(tx_napi))
> > +			eics |=3D eics_tx;
> > +	}
> > +	/* Now we trigger the required irqs for Rx and Tx */
> > +	if ((trigger_irq_rx) || (trigger_irq_tx)) {
> >  		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> > -			eics |=3D ring->q_vector->eims_value;
> >  			wr32(E1000_EICS, eics);
> >  		} else {
> > -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			if ((trigger_irq_rx) && (trigger_irq_tx))
> > +				wr32(E1000_ICS,
> > +				     E1000_ICS_RXDMT0 | E1000_ICS_TXDW);
> > +			else if (trigger_irq_rx)
> > +				wr32(E1000_ICS, E1000_ICS_RXDMT0);
> > +			else
> > +				wr32(E1000_ICS, E1000_ICS_TXDW);
>=20
> My understanding is something below would be sufficient. Bits set on E100=
0_ICS are
> not handled in any way so we don't have to distinguish between rx/tx, it'=
s just the
> matter of irq trigger and napi schedule.
>=20
Hi see my comments below
> -----------------8<-----------------
>=20
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c
> b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 30ce5fbb5b77..0aba7afd6a03 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -524,12 +524,26 @@ bool igb_xmit_zc(struct igb_ring *tx_ring, struct
> xsk_buff_pool *xsk_pool)
>  	return nb_pkts < budget;
>  }
>=20
> +static void igb_sw_irq(struct igb_q_vector *q_vector) {
> +	u32 eics =3D 0;
> +
> +	if (!napi_if_scheduled_mark_missed(&q_vector->napi)) {
> +		/* Cause software interrupt */
> +		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> +			eics |=3D ring->q_vector->eims_value;
> +			wr32(E1000_EICS, eics);
> +		} else {
> +			wr32(E1000_ICS, E1000_ICS_RXDMT0);
So here it is sufficient to rely on the E1000_ICS_RXDMT0 bit to trigger the=
 correct irq (Tx and Rx)?
 I remember I received a review comment from Intel point to E1000_ICS_TXDW =
as being the correct bit of triggering TX for non MSIX case.=20
I can't really evaluate this since I don't have a setup to test this. But o=
kay=20
> +		}
> +	}
> +}
> +
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)  {
>  	struct igb_adapter *adapter =3D netdev_priv(dev);
>  	struct e1000_hw *hw =3D &adapter->hw;
>  	struct igb_ring *ring;
> -	u32 eics =3D 0;
>=20
>  	if (test_bit(__IGB_DOWN, &adapter->state))
>  		return -ENETDOWN;
> @@ -548,14 +562,15 @@ int igb_xsk_wakeup(struct net_device *dev, u32 qid,=
 u32
> flags)
>  	if (!READ_ONCE(ring->xsk_pool))
>  		return -EINVAL;
>=20
> -	if (!napi_if_scheduled_mark_missed(&ring->q_vector->napi)) {
> -		/* Cause software interrupt */
> -		if (adapter->flags & IGB_FLAG_HAS_MSIX) {
> -			eics |=3D ring->q_vector->eims_value;
> -			wr32(E1000_EICS, eics);
> -		} else {
> -			wr32(E1000_ICS, E1000_ICS_RXDMT0);
> -		}
> +	if (flags & XDP_WAKEUP_TX)
> +		igb_sw_irq(ring->q_vector);
> +
> +	if (flags & XDP_WAKEUP_RX) {
> +		ring =3D adapter->rx_ring[qid];
> +		/* for !IGB_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
> +		 * been already marked with NAPIF_STATE_MISSED
> +		 */
I think you meant for the case IGB_FLAG_QUEUE_PAIRS. Since when the queue p=
airs are not active=20
the Tx AND Rx queues don't share the same qvector and consequently not the =
same NAPI
> +		igb_sw_irq(ring->q_vector);
Okay so you would be triggering soft irq's in two steps if both TX and RX f=
lags are set.=20
Honestly, I have tried to avoid doing this in my patch.  Which is the reaso=
n why I wait to finish all the error checks,
Napi updates before triggering the required irq vectors by writing to eics =
with a single write.=20
But okay the other approach also works=20
=20
>  	}
>=20
>  	return 0;
>=20
> ----------------->8-----------------
>=20
> >  		}
> >  	}
> > -
> >  	return 0;
> >  }
> > --
> > 2.34.1
> >
I think the strategy of triggering interrupts in one step after performing =
all the necessary checks is what might make this approach look complex.=20
IMHO the one step strategy is better and more intuitive.
Unfortunately, there isn't a reference here to go by since none of the xsk_=
wakeup hooks implemented in the kernel care about the flags=20
I can submit a v6 of the patch based the one step approach with further sim=
plifications. v6 would also include review suggestions I received for v5.=20
Like this I can also submit the next version to the igc patch. It follows t=
he same logic as the igb=20
I have our regression tests with RTC testbench and our Siemens Profinet RT =
tester running with these patches with I210 and I226

Alternatively, you could submit patches following the igb and igc following=
 the two-step logic.=20

Regards

Vivek   =20
