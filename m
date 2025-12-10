Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 938E7CB2BC9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Dec 2025 11:48:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3FD4684BB9;
	Wed, 10 Dec 2025 10:48:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nnbokBGkcKsE; Wed, 10 Dec 2025 10:48:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A515184BAB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765363722;
	bh=ZyBbxka+zdNGMtHmE/7sCpCItjoGqXDpYg0gO/5SavI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=36LYVLeGfonKuqb2qT3TRgvFZ5PtJlDEK15S1e1JlGTEiL7hKgSk69+O0UoGs2U2R
	 UjA/WsxYc4ffK84MumGsWxImxFcUeyjLTABMCzGGHHTEWpWszbp2iuJuyNqJAhwdUA
	 vSowsCLNPDBoCBB0Zl/X305GpFQ+0WkmzVo97kdpvMtGjuakQI1h+4V4lxwuCQoDv2
	 C8NW7whwfK1reqaRqnIR5Bg2SaS2FpWDAz/NrKG8JteOkgoZkEjShUwcBcZOkPuVaC
	 FaoL9Z7Q1ORnOIr0jIr6kl8X1LLc0DE6bwCDieggEoXH8g/Y5n8viOQlvv6KXurCpR
	 ekdXg8x9yaLiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A515184BAB;
	Wed, 10 Dec 2025 10:48:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8E5EDE7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:48:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FFA784BA3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:48:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id faEL1Drxio3j for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Dec 2025 10:48:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.69.44;
 helo=am0pr83cu005.outbound.protection.outlook.com;
 envelope-from=vivek.behera@siemens.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E570B84BA2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E570B84BA2
Received: from AM0PR83CU005.outbound.protection.outlook.com
 (mail-westeuropeazon11010044.outbound.protection.outlook.com [52.101.69.44])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E570B84BA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Dec 2025 10:48:39 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RMt9esNNwwDXF99vkC/9xVKdt/Vk20FoaIZbe4nWWP6k2cnnzZOaBwP1JmhbuCORNTMRkYSftS5W/mzpWrDxqBTVroHyWxlgxbwzLNAGLET/VIrYIGM4/gpPXAqDn+MR8NxzXwmNhmArUmKoKccReaF4tV3iKg6RzEvE3UiFyW8YfDo+XaADjsvYc3EarnYhdgfSis2xcI4carF+Q42D+WjlCdSAxMXAjkyrm3c+hz4i5iHbYa3b7ggK0o8cVr2HQmmyzJj10I7ai6LNURKsEONRKFxSVPFqY4oFdYXdxcPwKPV/+Zk8M/qeIaRC+C5Ttme3q26CIhFNhV8DtgYRrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZyBbxka+zdNGMtHmE/7sCpCItjoGqXDpYg0gO/5SavI=;
 b=oj2uNeGGSrmgr8OaLJ9pbhueOyyMsBiUhy+IMLAAPz/zOTZjDRgQkK+NAXrZ5oPEju/bvWzx4wtta2oyj6YT5YzVoNoqR1YjUm0VrIaa+qewsYMFhCuLUq+iWoeaMENEgd5c261vb14rYUwJixCeSaZwgjdsoml7Oh7lqqDCdyEgyGg6O4GAZkbPTTX6eWeZZF/UuLTlSvciwaTtNlYz3qx0tzRVdkCP5Z9RIYWSQAWsH6CPnIAxcuJu0sxCuw8GyeGdyKbl8Be33K1OAqkSizLB5prgBY8XBNQfkg9krmGCFtZ16RzezTBTrpvQNWNhEkxn96fEYG4TtJpreUHVFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=siemens.com; dmarc=pass action=none header.from=siemens.com;
 dkim=pass header.d=siemens.com; arc=none
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:48d::20)
 by DU0PR10MB5629.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:31b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.7; Wed, 10 Dec
 2025 10:48:33 +0000
Received: from AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e]) by AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::456e:d0d0:15:f4e%6]) with mapi id 15.20.9412.005; Wed, 10 Dec 2025
 10:48:33 +0000
From: "Behera, VIVEK" <vivek.behera@siemens.com>
To: Kurt Kanzenbach <kurt@linutronix.de>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, Andrew Lunn
 <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric
 Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: AW: [PATCH v5 iwl-net] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcaam3MPdOSehKtkaI1PtAy/5GiLUaqL8AgAAF9GA=
Date: Wed, 10 Dec 2025 10:48:33 +0000
Message-ID: <AS1PR10MB5392E7164825969656D966CB8FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
References: <AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <4c90ed4e-307c-429a-9f8c-29032cc146ee@intel.com>
 <AS1PR10MB5392C71EED7AB2446036FB9F8FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <AS1PR10MB539202E6B3C43BE259831AD88FA3A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <IA3PR11MB89863C74B0554055470B9EE0E5A3A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM>
 <878qfaabgn.fsf@jax.kurt.home>
In-Reply-To: <878qfaabgn.fsf@jax.kurt.home>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ActionId=422728c3-a089-42bd-8d99-091fd45c00e8;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_ContentBits=0;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Enabled=true;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Method=Standard;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Name=restricted;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SetDate=2025-12-10T10:37:42Z;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_SiteId=38ae3bcd-9579-4fd4-adda-b42e1495d55a;
 MSIP_Label_9d258917-277f-42cd-a3cd-14c4e9ee58bc_Tag=10, 3, 0, 1;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS1PR10MB5392:EE_|DU0PR10MB5629:EE_
x-ms-office365-filtering-correlation-id: e1467911-2db8-48ac-5dfe-08de37d9aa05
x-ms-exchange-atpmessageproperties: SA
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|921020|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?rNZaJB+urK1phftaF5l/LqXQYZUpVtT2bH/5vJl9HYiZ88w+1iovSu7fRrBF?=
 =?us-ascii?Q?5TJScrLUSr0z6Hn57tHrQLNQG8edO6yimJAK9tbuFbeBGBbR/3RujAWqf19D?=
 =?us-ascii?Q?dzOM5rGxb6VcHeqUuh3Fe86Ha37wx2mstTRuvFBu/zgBY+BzZzyLzqKxPF8q?=
 =?us-ascii?Q?aU9QJdBCt5DhErzoZXWtzUKeCBUk4rZ5eOrMEhAL8e7e4yFBQiB5N6G5a7w/?=
 =?us-ascii?Q?3zmME5/EWr76HIthNJs+qAAEqVwtCzSXF0k0/oZPqcM2jKmjA+niPu71xdFy?=
 =?us-ascii?Q?NSZatoySQ8rl5rONTj6Dg8gnLwHBZsds5IlQPTlfGv9q32+PgVCcVYRw10eE?=
 =?us-ascii?Q?/Wb+R6Ql2qMn4bXl6iHBMZlDCZfXJNKpY5yepxPzj84SFH1c0bjVbWngaVRH?=
 =?us-ascii?Q?WJYSQTHJM+1DDTFlC2V+3jyhbsFTST1+kwmA8xxsHwfgLOpun+T/zNT2Q9TT?=
 =?us-ascii?Q?D3gTMqnlyNoAMke+tvS8c6lpcJaXUfQDYjlCddzrPI0cZ3TSnSLHyVwjnofq?=
 =?us-ascii?Q?9ghMNOHdvK7tXfriTNxfiuwAqeHfCOaWj4mLUqFNvtJT6D/gpMOtdtMzscc5?=
 =?us-ascii?Q?FILWfI9szIhJe+m3TSaxTy0O0zMsM8yP5RsJefDR95asDppN9qqk3o4sfz+V?=
 =?us-ascii?Q?Ot0MIkIBnQ4iDR/KW8eD2ZM4GFGbagtdNS7FZNEdEyhl5N8zNfQ1KUIUrLIL?=
 =?us-ascii?Q?HFImcFePpnWWsibWKG0BEH7iyFfYG+PTrO0KxC3EijqMnQHH8WwE1uJkCKUm?=
 =?us-ascii?Q?+g2HG/OJrN6cp23sg0C+Zq3HaiL9heuoZiU25Xm1LB8x/o5P9/LKqRoxHcqW?=
 =?us-ascii?Q?M4iLD8utjM2UuwbQ3uzNIe7aNe+XWMSm3TdkEcv2vmE5wctSwe55b7pIwgBg?=
 =?us-ascii?Q?sjokfrguSOlfN9nrCZnO0DOKhnz7tn0NktvZDyoJG+63KJbWPeSCmWCELQKh?=
 =?us-ascii?Q?i5qHWfAcLpLEJg6AygpuPFOmXM9LIdxtqvDIQVKA2xwNwKA/A0TApLQVsMRc?=
 =?us-ascii?Q?EQG9DbLNbnNHxwEyzaGU9PR/hoU+rUyberzjstjrgs/4v0NkGTkLt8OvGq4E?=
 =?us-ascii?Q?gGR+Mej6q8mALQLYXT9H+JYeODvEw6NOT7W67fN3YzuvuZReQRR9GxBLDQid?=
 =?us-ascii?Q?0ZBTOVMtyk+9sQvYU+OzjETFKoBnCiCAPeT2KE+yWUJTZkB0nBJTGiNf5WOH?=
 =?us-ascii?Q?4TR1FR+2Cz+ILxvvHThPZw/Y7Dx40cIYF1kJdXjqmwFuAnqyVofxnX6PbDdZ?=
 =?us-ascii?Q?223/hL47L+6xqY4g0xmmYr3uTygK9r+ULfm/ZSGQ748Sz+R38PiGjn3H7zfI?=
 =?us-ascii?Q?HLNFi8ASaKz4IJ1QBQMaHLn9as7BDkFVrL3SlZlo6Ptmcnkll4M2GE2NKSk+?=
 =?us-ascii?Q?Yu2a2eNLybo4ya1V7iHc++rwGE9OjlrNkoGYBpytrbgiT63CRIeoouHvcJLy?=
 =?us-ascii?Q?PUWyW6XMWDFgavEAn22lQ9ONEk4xIufA6WKWkOWcYljyXjUEwOUKVP9+8Eul?=
 =?us-ascii?Q?zVTWPeaLmdPMOb4lpQGud9PZ6gLwEpPbu0HVFp1KoMWw/mEbNxGnsnugcA?=
 =?us-ascii?Q?=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(921020)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fZfVHLnb9xdzg5J6aVCKM3Wb0T0espBebeV3j0x/8ktCG6gTI/ysYWcc0v2k?=
 =?us-ascii?Q?/j9cX2exiurNU7Mg2/eZ9yn6cww9Nxxr9VUxurJ5F5tzHSgj9bx2qcWbLsP0?=
 =?us-ascii?Q?uENSVMaqFZ8IpYHMNvtT7eCzpKDKNNpB4pQd5e3QRjAbgx25AV7Cdx9W5cEG?=
 =?us-ascii?Q?8uQ/6VxHSuN0Xuals008GL8ouvTGac7CddwHqEDBcJrKH9Jxpjo5RgBvvSvN?=
 =?us-ascii?Q?Y2naehvZfUN1bRp9EPtd3kWnZGPulYHl2y0udLxHyCH/Z7vl24SgTuUX8NEj?=
 =?us-ascii?Q?mXR/PWkPA90HlADRLnj6mXiPKgaBonnrDMK5XtnB/StXyNdxU3RXRAxuI1Au?=
 =?us-ascii?Q?d555zjeaZBBSCB3oI/fW9fxav6NwXtS8qZeGKUctI73p60kHumbrBk+9COCs?=
 =?us-ascii?Q?Gb1QApMMOwjU2x6j3bTDqEO1MfudEIntcFWvS2VZ6Cg8m0tz8upXMhaKvBH2?=
 =?us-ascii?Q?v+roWyDlHhHd9ID1yg/4l6JAZYmZJpcmFKjOsvtziqYJOB8XHv7Hfu2/I+NJ?=
 =?us-ascii?Q?9HWwiXVqfWME+1qeXIGj6fGNImJegfca7a3VhVSh9eZWsNIkq2ic7JS8zmBq?=
 =?us-ascii?Q?wTujSBeHu8kAObtf5Fs7pVxWuPjejJftpoZbgRTIpK6V7pAuJn/+IJFXPqAH?=
 =?us-ascii?Q?Ni0qSVCPw07XvoIT+5TPpEu+WBU6Q9XHGpCsL3cT6v7ZIzjeLuQdGUep3PmF?=
 =?us-ascii?Q?+0HFmA6FrhWGVBy+95YEevAuRuGl5J45YpmkwdeW7wGgyglwmmtfF2t8NXXY?=
 =?us-ascii?Q?XPYEF+RP4/LiMmN5b0WPCAVyti4vWxIElNOpoWaQZ6VWAw4oIrnubjQNgEmp?=
 =?us-ascii?Q?kwiXuMc+84sTvv0qNakxttaZ2JnjUljDncmi74GRj9nSCK9zgHJHtt6dw/R2?=
 =?us-ascii?Q?jP5sWveY2DaxKOsksGE+dBNv2kGY6ThRHrqVGcOQg7Fte/JWc/5ICHnkahDZ?=
 =?us-ascii?Q?Hz0L8+8He87MeNvpmZm0EcGXvkr3FI8p+ZNgW6fxk6EnYYRRu6Iih/m+QTwz?=
 =?us-ascii?Q?S6jptFR9GCEd41EuNN7oqwbWFT3viwwHtfXB2w7DWCUOIbBiag8S0vHXWaQr?=
 =?us-ascii?Q?Nr8lAf5dPSxahmf9X8WptAWaRNIeFk44JuFzDsNZF77rXZVlPpu1xgFGeaBg?=
 =?us-ascii?Q?TTAqFtbpyOXPRQiYn7x10rH+LUpq8WqxqrbtHxhlJbDZZLWQyEzWnNKHLStX?=
 =?us-ascii?Q?sGU80NIOulsr6KzUcPw1ZkUWLopIxMqrMj8gg9Wu1VE4e83oty04RN8QQgWc?=
 =?us-ascii?Q?ftN6I1FbZXggNiXLkaHowiCPHAcbgU3i2fSYg16HOmeicMx7I25C1R4mHB8z?=
 =?us-ascii?Q?sk2OzZupBDYiDGngV07neHPmvuJhZxsQx2V3koIhyu2+3C6Fqp8YRMGsHnqv?=
 =?us-ascii?Q?MuAk8JI923OXzB8uXYZ/1oykBTsCEePdPu1BPmjNAp36cDlx+7nuEygqrz4V?=
 =?us-ascii?Q?88XNFLyDA/RPkSLk4MGPnQ55f4Zd0o7ui+cYOPfBOL3/Ncfphz6gTbT7jyP1?=
 =?us-ascii?Q?5Wm1VXQQrMqTHmiXsCqZC87pa8axuC5JtsudlIqlzV9LVmrVzSihtkcmlzLF?=
 =?us-ascii?Q?SLLh+fS5mpIwH+BXx9k5SAd1KOTf0UtB+6BizW6m?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: siemens.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS1PR10MB5392.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: e1467911-2db8-48ac-5dfe-08de37d9aa05
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2025 10:48:33.2816 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 38ae3bcd-9579-4fd4-adda-b42e1495d55a
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d0RlZupVx8jWddjNV9Yeoq5a2qVK+NswJ3Vw8QPntSAVvhndByePrYCeYqFw7DAyexJhJgzjIuMWLkNeMByxCDzoZzcAC7gPr88itkJz0Ok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB5629
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=siemens.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZyBbxka+zdNGMtHmE/7sCpCItjoGqXDpYg0gO/5SavI=;
 b=R6NmKnuI7Qnf8KoobY+tkPx4ELC9hOg8iIDuqo084cFPhBSWh1jbPHPKFJMBFGz/JBRg9i14J4rj4rLXUZn+HIXXlf101cVtnSPhvgQX4BkFblWezGAYh2luakkOBRnorTCySMtk2M/qKPS7Cz+0DdP25fy6+vKckRGDycwC1cH+igJqWFIjvMEfGn4Dbs5BS/72CIXaWYAAw1uiLkccHKaXML2p3LLim4jxNvuEXLNxrQBnpk9bQWLz9i53Jw8eVaKC5j1Q7lmVBvNUzDpwfUrjXP3TorKJ3FgD1ic+hQIA4e3OryASAuHcvb6NRDMyZC+3qUqwScvH8RyfZRfeUQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=siemens.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=siemens.com header.i=@siemens.com header.a=rsa-sha256
 header.s=selector2 header.b=R6NmKnuI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=siemens.com;
Subject: Re: [Intel-wired-lan] [PATCH v5 iwl-net] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

On Wed Dec 10 2025, Kurt Kanzenbach wrote:
> On Wed Dec 10 2025, Behera, VIVEK wrote:
>> Changes in v5:
>> - Updated comment style from multi-star to standard /* */ as suggested b=
y  Aleksandr.
>>
>> From ab2583ff8a17405d3aa6caf4df1c4fdfb21f5e98 Mon Sep 17 00:00:00 2001
>> From: Vivek Behera <vivek.behera@siemens.com>
>> Date: Fri, 5 Dec 2025 10:26:05 +0100
>> Subject: [PATCH v5] [iwl-net] igc: Fix trigger of incorrect irq in
>> igc_xsk_wakeup function
>>
>> This patch addresses the issue where the igc_xsk_wakeup function was
>> triggering an incorrect IRQ for tx-0 when the i226 is configured with
>> only 2 combined queues or in an environment with 2 active CPU cores.
>> This prevented XDP Zero-copy send functionality in such split IRQ
>> configurations.
>>
>> The fix implements the correct logic for extracting q_vectors saved
>> during rx and tx ring allocation and utilizes flags provided by the
>> ndo_xsk_wakeup API to trigger the appropriate IRQ.
>>
>> Changed comment blocks to align with standard Linux comments
>>
>> Fixes: fc9df2a0b520d7d439ecf464794d53e91be74b93 ("igc: Enable RX via
>> AF_XDP zero-copy")
>> Fixes: 15fd021bc4270273d8f4b7f58fdda8a16214a377 ("igc: Add Tx hardware
>> timestamp request for AF_XDP zero-copy packet")
>> Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>> Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>> Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>
> Hi,
>
> thanks for this fix. Does the same issue also exist for i210 in the igb d=
river? The igb driver also has this split IRQ configuration with 2 queues. =
Might be good to fix this one as well :).
>
> Thanks,
> Kurt

Hi Kurt,

The issue so far has not popped up in i210 igb driver for XDP ZC send but w=
ill impact the xsk_wakeup attempting to wakeup the RX irqs or both Rx and T=
x (for.e.g in xsk_poll) if IRQ configuration is with 2 queues. Essentially =
same logic submitted in the patch is needed for igb. I am preparing a patch=
 for the igb aswell.  However, I would wait for submission until I manage t=
o resolve the formatting and other guideline related issue pointed out by J=
akub in the igc patch.

Thanks for the feedback,

Vivek
