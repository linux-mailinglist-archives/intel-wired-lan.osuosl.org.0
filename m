Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7AF8BD3554
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Oct 2025 16:04:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4068760DD8;
	Mon, 13 Oct 2025 14:04:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jqZ2i_il71qA; Mon, 13 Oct 2025 14:04:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8441C60DF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760364284;
	bh=WBts28voem9fIPykFi6MB953E2oKGB11pgb9Qr3/ftA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=k87VfJoHdYdnyxRTYpnEX5OFsObXU0ayG14L+8IroLVq3j3ZgCsXJ1mhN8GlMAgUa
	 bQqwL0P9Xrjb1Ij0tFt1K8+X3Cdds5Unh9MEoadSJjBY6Wt0K1ujnsZsvbEaplNTzM
	 eYuY1f2JKaZsle1ShboNuojcsuD/yB7DMR3gNJdMXUPX8+PygK+vz9PdBjtuwZM05y
	 J7rj94oRZ89lAr/qrjZhjiD600wpsInuqDAUYEl9wpI0LcHarKehhG722ei4g0yWrS
	 gAU2s1i/2tENahuPFz9bqEGl9jiWXj04nVVnzkSZq0CceqqeJXAApsYme3cAzsX63T
	 HzJNWF/9422xw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8441C60DF9;
	Mon, 13 Oct 2025 14:04:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 97BAD12B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 14:04:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9460E60DF1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 14:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tTAa--GhGwKf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Oct 2025 14:04:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.37;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=zdenek.bouska@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75DBD60DD8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75DBD60DD8
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010037.outbound.protection.outlook.com [52.101.69.37])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75DBD60DD8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Oct 2025 14:04:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ng/D1D2M/yPM8v78SEpDTljQ6Imldrh62/AJV30jM0sCxU0JvRBpJ1nUG5IVj6ck1tp24z68zPGI2jW5C3ZYRnZwv588YFfTxtXmEF8O00+Rpa82xTNgnQWsQjBT+QjYlFrgKnD3cktt1dja853ITH8JlsUprhI/NxRTMbp3NITsMHofgu+UhEpAVB3z7paDNG8SGEEsWtzp8vGso11VgYrMLpXobkrFPUPNXetZTC5WKqRP3cIDL/woeTmu0uUs/Vx9xjzkzPQN2qPA05fCR7hwCa0oy/YiL2TnbJEln0VkqcwR+ch2aXWb0WI+qh2tFmJbVasMcbgvUs8NgBZEcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WBts28voem9fIPykFi6MB953E2oKGB11pgb9Qr3/ftA=;
 b=eY0y7TDEvmyw1NhrznViv7JQCydaohLMI1Dah8+QZ2U+vKDk8LRxnDQ9buaTkbLW9Iu6vRf5OQOKOrdHDGRuiX8ZxlgIu7qM8zGCbuUrH5Q2enypun64J34fKC6FwWPWRxdBAiClgtdkwG/APcNAgSl5P3/IZ74mkMrerXPwFqXThrYmZd348yAmX2dz+6Hk5zhxVPqhs0n8lfOJFPtbSr9R9pNVyYhD7BrtxFQyeD3N6iAtTIA0t8JV+DMysO3IQmwox6hIJzlSMJQNfjsn3AlWNZjcbdadnJwUyWD8+dhs3umhiRKh8mIGTcL8P4OWD2c/yLjFgjpUBFqBrBjHPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:47b::22)
 by DU0PR10MB6932.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:417::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Mon, 13 Oct
 2025 14:04:36 +0000
Received: from AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f25:24f8:9a0e:3430]) by AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f25:24f8:9a0e:3430%3]) with mapi id 15.20.9203.009; Mon, 13 Oct 2025
 14:04:36 +0000
From: "Bouska, Zdenek" <zdenek.bouska@siemens.com>
To: Chwee-Lin Choong <chwee.lin.choong@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, Vinicius Costa Gomes <vinicius.gomes@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Avi Shalev
 <avi.shalev@intel.com>, Song Yoong Siang <yoong.siang.song@intel.com>
Thread-Topic: [PATCH iwl-net v1] igc: fix race condition in TX timestamp read
 for register 0
Thread-Index: AQHcKItpUFEqLTRPfEmV5xB013B+17S7SvLQ
Date: Mon, 13 Oct 2025 14:04:36 +0000
Message-ID: <AS1PR10MB5675DBFE7CE5F2A9336ABFA4EBEAA@AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM>
References: <20250918183811.31270-1-chwee.lin.choong@intel.com>
In-Reply-To: <20250918183811.31270-1-chwee.lin.choong@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=407c7d11-f3d5-4f5c-991f-8af73bb9c081;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-10-10T10:09:51Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5675:EE_|DU0PR10MB6932:EE_
x-ms-office365-filtering-correlation-id: 8a9c25fe-0637-4fe4-d383-08de0a61719d
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|7416014|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?iso-8859-2?Q?hgSiHNP55hXv+vmDHCFhUuETPA5GYIFIy52eCbw+3cOb3jJ3cTCnc03Nya?=
 =?iso-8859-2?Q?o+asVczx8LYMsXk4K5Uc9tKY13s4saevFsW90ai68qQy9lHao6wo3p8FO+?=
 =?iso-8859-2?Q?+IuTG+WkXrxQYKTKYbD4Z17eIK5tux5JDyBqUoM1GCQyHkIXGX1XhZIGOG?=
 =?iso-8859-2?Q?eWGKoq7EAA/S9+U7nMba7DLIseVHRX+d53/+8tc8gEnpUSn5StcptuC8RB?=
 =?iso-8859-2?Q?okjw96kbPZ1spKIUchRzLdPLr9iFn9lk0hDhT4Z/U3+JSR7L8T4Er65JLq?=
 =?iso-8859-2?Q?RAsaIRiWYUjohOrs1RgzouZrnXkFjk54dGzddikMoZAhRK2fP5hBaR/LlJ?=
 =?iso-8859-2?Q?DxU0Rqn739hMf4lojw5THdu/iK5LbmPh+IWY3ZyaLWyu2jjJzLRDlZOBa7?=
 =?iso-8859-2?Q?BW2GjkgUAlQ3U48g2eWOJU1M4/yKhI2+yqLEJMymRhoqZ+0ll5/yfGahwp?=
 =?iso-8859-2?Q?3loSYMUrOQXv1gGe+oKAtO5hraxsTIPTuiq4QIHEKhRNVjR841LFFaahPP?=
 =?iso-8859-2?Q?TmkvaFqr9HlplEvTJ05h7HdBL0OrI1O0tVPpYGSOMNXRRdQqTm0ehJRp60?=
 =?iso-8859-2?Q?UPlAqN7GGM4LotNTMC30OVyZFuI77fPY8kjzE+jMCgTeWyN/uPVMLdRure?=
 =?iso-8859-2?Q?e1qxqmZAbkQfZ4k7UZHr6WXHoua5DJN7Cf2jrXQOrzrjf04SjnTb5J1Xvt?=
 =?iso-8859-2?Q?51A5foFWOSPsbEGY3zx1LXYeEKrZtIwLIFIZtZw4ZMtdT5gbhts453GDUj?=
 =?iso-8859-2?Q?eQSGY+Fo4zDRmm7/cAA/oL/hGWnM2Ctw9+MWsZXEndVYHiNEBAfMFA6E/6?=
 =?iso-8859-2?Q?l7HxWgnwV6LjxjjHvBtRn0aaNspF0KV5mdo9nMUIxN1ffO+EELtgJV3O2w?=
 =?iso-8859-2?Q?uQ88LJHh5JmYdUUcvxN0mvHg6ieyxLGUXeJ2y74K42pK8kb1ZI6tH1uDSE?=
 =?iso-8859-2?Q?ZGA2fDn1RUF7j1RfpXDPKnHEdelIsy/t3C83yiLxup+ceKFxxLHvqhuaoG?=
 =?iso-8859-2?Q?BGuYC7X7T8w0Sz1dzBo01hO9TgCLUpMlsR9OoSMnx3rYtCtPSaGBc+DkJb?=
 =?iso-8859-2?Q?iI1OoIq8nGcTrB2C4OJMmmj1/q5B1gC6LN7+HynZOFruzvIRJ3GNFculA5?=
 =?iso-8859-2?Q?gGF3NSBVlkPyb5BvMPL066JlTckobHtNBZ75UNX92hLpJZW6j7nkc9fWYY?=
 =?iso-8859-2?Q?7j3wHt98zf5tzlORlDCNQNv6n//+nF8TWLu9SWQL955MxUDgj25IzDXNwm?=
 =?iso-8859-2?Q?cTw5Z7VclV/vVkIRzdOPk40bIrKjHKd7YNTpjjcvQmgT2D+ExQKJlOCyPG?=
 =?iso-8859-2?Q?IpLnqltjKdezzQNFG9Vn4o7Ri5eERqqhZjjf1cUZnfGqzsR/hvQWUG3nAg?=
 =?iso-8859-2?Q?hrHLycprfTE+PTcfFvACwZ6KpqnLyT4sBqxFOWyFdOwJDmVke8euKNqJai?=
 =?iso-8859-2?Q?aFTSTswVoyxGfEs32jlvGOHbCizoUCE/GsT5BCeEdmMEEQiy3fXlCFPbQG?=
 =?iso-8859-2?Q?6qN0x8iNaycSoHzNtgoKy04eZJdtJBkGDr2Kr2ut7om5WgVkTrZXAhZu0/?=
 =?iso-8859-2?Q?ZYYheqpUXJjP/2nNUio4waZdkY/VmkiLaNgeXGBBqX/7nK6WDQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024)(38070700021)(921020);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?yO0R5ur07+po/U0KNbDDto7k/hnPGvH0jcK7GirOh3K6oyIlDPB/eingvV?=
 =?iso-8859-2?Q?iaksSdF1Mzd/14VE9cUVg8BHvOC4gtRfe45t2wvBOFD1XS5lm4439+W9gS?=
 =?iso-8859-2?Q?DxDbpicFuA9/eNQsN481N9BE7K6odKO01jrR92G6ZSfFkLLqrkt6uUIryz?=
 =?iso-8859-2?Q?gdso3lerRsbrrag9qIQt6ezwtpXKDNElYTbXvSwzGlqj9CvlvXLT0empz7?=
 =?iso-8859-2?Q?f8OkBQ17ISD4d16UAj1FGklmHQ8fIehlnSvBxUUouqpJ/MyT3TTYAFfzGZ?=
 =?iso-8859-2?Q?c+fSBiWJNJsQ13Kf+FmbLQOpB13SO1NX1SbcUigt9xeEk20U6C9DFtcnC0?=
 =?iso-8859-2?Q?G5Qyib9Ir77LAKj9Kjflgk+Jws0mDzxTMe0GqccofBIq7c5tfyJYJmiamT?=
 =?iso-8859-2?Q?LL37b5mBIPQsO+7VB4C9P7aRvoHOmqiPSMqX0deoJt0hFrEIttgUBHMk3M?=
 =?iso-8859-2?Q?wYH9xKuX6W+lBu1mRUJQsbfdOwL2njJtQRtPvVu6KaxYUH+0IOi3SkQSqo?=
 =?iso-8859-2?Q?HXU5XcbcvrqZiyWoHOYuzCjVb64WGyprbKbr1GurDwxoLFeQR6Oj1kgrTT?=
 =?iso-8859-2?Q?6HddXavvBSIzjWEa+bzWVWcIPN6g0aCxOO3JEihdB/hgZBG3c0IYGepZY2?=
 =?iso-8859-2?Q?o7w3YLObetoRSUAmddC1u3KQYMBHTLfMHkq1fculekb54btVoGMSrENJwv?=
 =?iso-8859-2?Q?DzKog30qrgoUZjCENY57HNn3OQMsvpjjpTH9TGKrf5sFQJ448BvyPjOVo8?=
 =?iso-8859-2?Q?3rZAA5whjel1FrCfvzMYWsDXmvQsNH2wdZyFi3Vx9AsAtoJy0RGD5b4ULe?=
 =?iso-8859-2?Q?hcCQelcvrSreuhxlXplVOxWgdojJGAimbDc/1elbfW9UZBT8A8y4AbChYs?=
 =?iso-8859-2?Q?fVfb9VuKSfWy9cJPNAEiW0Bhh0s2+Xp1EH0tlGnUmG0+zxlOQQy6yWhUOB?=
 =?iso-8859-2?Q?7W49s2mSWCVCsofS1L02WawggE/jHPaecN7KzBrPt8LRY36R1M5z6W7c6/?=
 =?iso-8859-2?Q?j4Hs5RnMUNyqVNr4m2ePu2nqrxodMwfsjTOD+pKCu+wMUpQOJ/Nl9G4lRM?=
 =?iso-8859-2?Q?6A/QQz/K3VMfKDMMIp63OL7Wlg6rwvj2LfjVvk9mlz0ibVrwAm/8yTGkVr?=
 =?iso-8859-2?Q?zmCOOuf3QyEO6owBVXnFcrZl1GylcVkZHtbdTSIYXM1PjhqOtF1TOpGMe+?=
 =?iso-8859-2?Q?M9lSBgLV4LNib0sksKQArWQWXkVt4IJxFbq6TOeQ6nptaGAvkqBsRTqM2K?=
 =?iso-8859-2?Q?vvQZkzsaINgF0eVNK47CNqkA7UWpMN9sbPHWN+yyIEQNpLEoqY6EJkoK/l?=
 =?iso-8859-2?Q?yzThMvv7mRhiXSZdwzVD41Ardcpzv47whKH+wFPsbSZV13SY5/dXhHW+mG?=
 =?iso-8859-2?Q?vhDiutttEYDOFhSsUYTlzxCqbAQf+8hnfPMBFzPi5AQ3wSuLp1Kf5NM5n5?=
 =?iso-8859-2?Q?stI3Apm2i2yTNi9I1SBIPYqhjxlG8o+Q0UWMMm4O+aTjcHRu8075+M9LYA?=
 =?iso-8859-2?Q?d529NLbYUZPo9JbCsrDD5w02RQb3wD1pFDV/fDzfUCzE8oX+oPw5s4I8B1?=
 =?iso-8859-2?Q?6hzKCO7GaC/w0xxzMuB8V0KDcH1BHvAcMy+sa3fBCCWhLVsbwByiZCmpYA?=
 =?iso-8859-2?Q?vJ3O3w3phwu9uQsqem/E90YyW2poaBMFIcIVcNgIk+JLiRmSdfBMom1w?=
 =?iso-8859-2?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5675.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a9c25fe-0637-4fe4-d383-08de0a61719d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2025 14:04:36.7170 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aVT1/AhdBt/PZ1wGQeyBfsPP3DAV5aUcKrE7WMDIjlMbmhiFvKqI5UACcz8882BcEaL8aUZeKZPBqdoHkoJQAsYIEQxG22L+wRdNZJ7lM04=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6932
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WBts28voem9fIPykFi6MB953E2oKGB11pgb9Qr3/ftA=;
 b=h2QrbEKHwSUvk+Ec9J4niahASIyIQ3cL1ko2oGV6fVXrYd+4N/lvui2n+3uuHillsb+uSAp+4jguZPd/62q1mw0AB1P5u9QvR4ThJiDErhMi/Wxr5sEIdWlqcVuHGrnnTXljikDHjInTf86cqs3zDJs+Pzno/MI+JHfj5vS7H/yG5wQ+2nEliEacUhoWzv9w6X/6K2LxN0bElAe0rC3b8x5rmMbKON20bAsQahulLjMpVt0sf8OJFyf9130JS3qQMkMybkDiPcvM/cHKoBIFFRI2+6Ml242FIBpOSav4Bq1+3BRaWcXQbgYNheSGCfV5r2WP+DyqkiRXcYg6YZ7PIg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=h2QrbEKH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: fix race condition in
 TX timestamp read for register 0
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 18/09/2025 19:38, Chwee-Lin Choong wrote:
> This fix also prevents TX unit hangs observed under heavy
> timestamping load.
>=20

I have tested this patch with heavy TX timestamps load.

I have not reproduced any hangs when I apply this patch to 6.15.0.

But when I apply it to 6.17.0, then I still have some hangs, but not as muc=
h as without the patch on 6.17.0.

Used git bisect with this patch and I found that this is the first commit w=
here this patch does not avoid all hangs:

commit 0d58cdc902dace2298406b3972def04f55e3d775
Author: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Date:   Mon Mar 17 23:07:35 2025 -0400

    igc: optimize TX packet buffer utilization for TSN mode

    In preparation for upcoming frame preemption patches, optimize the TX
    packet buffer size. The total packet buffer size (RX + TX) is 64KB, wit=
h
    a maximum of 34KB for either RX or TX. Split the buffer evenly,
    allocating 32KB to each.

    For TX, assign 7KB to each of the four TX packet buffers (total 28KB)
    and reserve 4KB for BMC.

When I revert this commit and apply this patch on 6.17.0 I have no hangs.

Best regards,
Zdenek Bouska

--
Siemens, s.r.o
Foundational Technologies

