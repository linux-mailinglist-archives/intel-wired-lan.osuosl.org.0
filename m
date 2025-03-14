Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EA74DA6095F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Mar 2025 08:04:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 428E34152D;
	Fri, 14 Mar 2025 07:04:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PwLyXb0zfW2b; Fri, 14 Mar 2025 07:04:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2676141433
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741935840;
	bh=WCU0lfTLLvSg2T0XlVYlp7b0esKh6bz5aqcPDN5nCuE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S1RUHaDBogumf71T0USL2JueEzumpv/h4E0H1vJv26fmAojKLzIuMz4C27klms3Cf
	 b8UgT7UFYvPFMBAdnpHL6m03e1WE0lK1WIym5//emkoh1dHmhB3Bgjw87Lx3Usn8XU
	 dxFRvWtvO3SEn3JGu0bqyMLckf+RiSrEKUp0/AU52q9MM8FMlCYWsQ0pG2jN3TcI7Y
	 JmD5EvSXrfqmuk8CUOImXm+Usw+ro4guO9S/3T0204zwJlluAg78UbVXb2ZYo4ZcHF
	 6h1CopXHHYwtZqBJrytovwiOADGKduonRBDBpUKDvQKMHRVRbWllT76GW2u9XoflWU
	 xF7K5Oz0NcXxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2676141433;
	Fri, 14 Mar 2025 07:04:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3828161
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 07:03:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 273714143A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 07:03:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3hBnkSUXX03U for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Mar 2025 07:03:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=sunithax.d.mekala@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7F571413D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F571413D1
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7F571413D1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Mar 2025 07:03:56 +0000 (UTC)
X-CSE-ConnectionGUID: XsY3HWH8RraoiHS8qDIzAA==
X-CSE-MsgGUID: sUTGmu7bQYuzr+lNv43E2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="65536061"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="65536061"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 00:03:56 -0700
X-CSE-ConnectionGUID: nsjir3bNRKCflBU8srkY5Q==
X-CSE-MsgGUID: 98P3pu4ySwaShR1YejAylw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="121680607"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 00:03:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 00:03:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 00:03:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 00:03:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KzTkIFL4p408RuHPdoelh5MVSd5Suv5gloJlhX2qgPVf8OL4he+ITQv3ZU4OhBSO8IG7I3MRNS/QBLyb43xs77W2yMsjC3k5hvLeDLCKshiHSlvse1BDC2afNElzasKmuBZCRWP4QU4kFUlk+ju5vXSrKJ8yW+jBmUeZDZx0TPtw1Lba+yV2d/D60Iz0orawvcSOTLn8xVEbTL91FSFiVKg5fww7eA9xujBXEMcbXbLOmocEzrjxmA3NT593LNc3jcOxYGg/eNvLL0H414rgmFwmDh0GLFQt+d0/Yerv2Jf80S2IbjEhMZB6XyRSH3Lg/oQyanFuhg1LXCIUaHAEow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WCU0lfTLLvSg2T0XlVYlp7b0esKh6bz5aqcPDN5nCuE=;
 b=etaBBSh1lPqtx+D+pyQea8U660SVo03Qdq7TREUywJ3ZVWf1DivEqodeRNsG89CbrF46leAjMPfjXcmzrgaSal9ZRj1NTWlq8yzf5GxIvSvgGwQ/CkxL8hYWvM2X6PQDGadrst3HUCWhAmwHZ7/8JMH64psIoxO1DHLQI8IcOA/cWQ7FUTMbwIz3PgFA7s9cFzhVJYBUPPufP7zoouyoj0Z8SEgMTYcJniJoH1iUO9Usr3GE6WYUXDBDABKdIwdvB2msh1ugap76Fk61hqLolH4fddMILOpXamInyO+ZvCiyhrvPSfaW2tEmUgdeORGQnhWjqwO9So7arCj7IeG/0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ2PR11MB7518.namprd11.prod.outlook.com (2603:10b6:a03:4c5::20)
 by CH3PR11MB7675.namprd11.prod.outlook.com (2603:10b6:610:122::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 07:03:36 +0000
Received: from SJ2PR11MB7518.namprd11.prod.outlook.com
 ([fe80::81f9:67e4:b75:88ce]) by SJ2PR11MB7518.namprd11.prod.outlook.com
 ([fe80::81f9:67e4:b75:88ce%6]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 07:03:36 +0000
From: "Mekala, SunithaX D" <sunithax.d.mekala@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Knitter, Konrad"
 <konrad.knitter@intel.com>, Michal Swiatkowski
 <michal.swiatkowski@linux.intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Zhuo, Qiuxu" <qiuxu.zhuo@intel.com>, "Linus
 Torvalds" <torvalds@linux-foundation.org>, Kees Cook <kees@kernel.org>, "Nick
 Desaulniers" <nick.desaulniers@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix compilation
 on gcc 7.5
Thread-Index: AQHbd7rTZFPtRkfi4EKV/pXibsjZSbNySP5w
Date: Fri, 14 Mar 2025 07:03:36 +0000
Message-ID: <SJ2PR11MB7518732AD8207483597D9997A0D22@SJ2PR11MB7518.namprd11.prod.outlook.com>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
In-Reply-To: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ2PR11MB7518:EE_|CH3PR11MB7675:EE_
x-ms-office365-filtering-correlation-id: b13bc211-560b-4bf4-8596-08dd62c65726
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?/GpLL9fhS5aflI9zytcf4Yrv5hscJhEtE4iWdoLpf8xkhsGSoqhlk8wqLN90?=
 =?us-ascii?Q?OZdmPT8YZMUr9ecz2xybFNUN+EcuFHGyzq4kMD7DMlaIHBbZUXC9jjW4CNIF?=
 =?us-ascii?Q?Vv46B2I/wBvHq/gDPDZQdi+jY3mQdOFuIViBJ9wDNpadpegcMuGMt9VmlFsd?=
 =?us-ascii?Q?WiH+MTrpBGC/Uq3ELRh5lrebF//hHaWHTbOGAmNe7K9kiehJYi/dM/QipeUF?=
 =?us-ascii?Q?ZEGjjFGGHNt5iwXaQC1fNOB1d0gMPIZNCrdQSlLLrhf6YgYKyIc2ujxnUXcw?=
 =?us-ascii?Q?t3GGH7Q2TFMRfw1H9oQkWNbHZr4yCR6EK3JhjNn9VY4v94LoBJqgxKbKxT0C?=
 =?us-ascii?Q?N93OkQP/Oy3jeLSlcnpvG1JTjeGIY8eHCjVcM1G99QOpp+K371gLds7LulON?=
 =?us-ascii?Q?cOGxpJaFTQ40gxD8pY89KDubXRelc24qPTY5o03B3x2wJgcCj8JEgQEA+Yuq?=
 =?us-ascii?Q?bfLNP0We+6Acp2R6EgnoqW5H2HD6wCFRUX3GJ0D8271as4dNvDhaJlTTMMgJ?=
 =?us-ascii?Q?5yyDN0yPfeMwQiw/lK8leO9kl88QEu9iFjhKRmllD3K3PeHNphz1VfjupNkf?=
 =?us-ascii?Q?vn5t/JDSlyz3aOq33BbMkkHuNm1Evtx6+88rLB9fH0lLvMge53NcDC7qPG0X?=
 =?us-ascii?Q?LurP7Ag6A8hBa3UCmsIxpv0gqU3M/rYy7hkz7clMF9LRDSmgtYixuEHheMZc?=
 =?us-ascii?Q?BtX+6zW7e1b7GorXcT+gR1zDU+ViVTOLy1PyQvnTvdWmj7r55mDw+ySVtD3P?=
 =?us-ascii?Q?Zc5v8SUZjF/AjAI1yok/Ow4zKdOPY5X39fQkH7lc7Ye7KFtfz012MDFku8vX?=
 =?us-ascii?Q?mH27PeF86ultuqvxv3bSTMNK4hzx09lvZ+CW2rm2lcqfm6fXd3lj00iN7JbS?=
 =?us-ascii?Q?8yuXNRt/KZMH4RT/uPIfeaiOf7iEje9ADgOBVWkE1TKLZGdXweu3RyQUsrSx?=
 =?us-ascii?Q?6c8TaC9pTBD5Z7muMcGVsqywODCXnPf9clHNREFq3HAaLBVzuNSk4s1LFdZC?=
 =?us-ascii?Q?rJsJQMakGXBSzpo8zZz1roExjWixAHI78bSk47lTBhANgaKmIvTSii/E/apN?=
 =?us-ascii?Q?qOQXd37LSV5gZQok9V1JbkuDcX55fi81SVbsUrS9HtoQ6uYV9rH4kInbQwL7?=
 =?us-ascii?Q?BVai7OtmC2AIzGD24BobaG/HzCMGHtSyDuv08eYn+5M8P18cXzm/fCwFg1N5?=
 =?us-ascii?Q?27tvrss5n1vdq20qsc2kEsHv7TLFH+86v29/JnPa8tTRUif99g5FJrkmvLoh?=
 =?us-ascii?Q?Vh0alZlc+1zbx+K/O8co3VzO6752GEhn95W/JFT2SFe1tMzyf0Dqjoxp+/dC?=
 =?us-ascii?Q?rNUH0JS9PsfAh5B65DbP4vmO9qjdCqauREqCOWJa98w/0jdbg6r0Qyc11tjW?=
 =?us-ascii?Q?G4TdUFURcMRHPU3aZeG8+hkUsTgXcMQyVSLCyNOKMG/c1c39edKVu3y0iSZj?=
 =?us-ascii?Q?eh+gOFr8LLUrGWdoaSWfEQXe6aXjCVP6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ2PR11MB7518.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WT9hxLPmuNO03mmHomXSeKN3Rd9b3OFsZ2PnmqKpRCKDXilyO8tM8In/kI4y?=
 =?us-ascii?Q?TculgSQzI5XHTmxYNa2id9DQ1Wp3zHvfUIzHogNGWCkOp6+lvVq0oC2UsurR?=
 =?us-ascii?Q?CnjpDzzd2kT5Dnt2oovQwAxjAm3f5PVAgMkxgpUWK1+au95J7r9nbtQ/MJET?=
 =?us-ascii?Q?bN4hoELljCxaEkq37dtUOzunk1KdHAKuulDVwd/BVAVkSOU75UldA7ENeEpc?=
 =?us-ascii?Q?/Co5TH7641qLx86eUotNn/AzR0thWQtA001yiDEFMw6yURCPHkGWdLA5Kux4?=
 =?us-ascii?Q?OCbI+JhSPYNtyqzWcdjbIHjVoeJmuPt79TK8ZYOl50x1OKp1l8T+xvcEYBbn?=
 =?us-ascii?Q?8nheuRQ7+UA2PlXM6ZwPk2gO2aWwplVhLEVzpI8o7AkTyErQW53dK4wHHCf1?=
 =?us-ascii?Q?jUunSy+hHihndHOXE9FurPtEzi1xEwEv9XzHfA30tPsRzN5AZKNv9hylWVYu?=
 =?us-ascii?Q?JXN5kWudfYre/ww6BjosZKeo0CYCKoEirQUfvC8Qd7sub2y/UnRXQKhrqLyX?=
 =?us-ascii?Q?DlaXIkqStbITYZ78dLNo8t48kr/xgmD5tmvuY5GYQojuAO2E+Q40iVXUzZ6Y?=
 =?us-ascii?Q?w0LQadiJNpc0I6bh0lHex5wgi60n8YRyuN2/U0adjg+PUpmUe9TBqC02aX8X?=
 =?us-ascii?Q?Ph+a5EClGotKeRIlBNUUBvcxAPMU/N1MwFXsf253WzkLYKnBCKijr0QOKmn0?=
 =?us-ascii?Q?it5muV0UjRS62oulgjzl+Sb5fcfnRw7xSEd1VJagxtMxJkKh+dQS3gRIVUku?=
 =?us-ascii?Q?6sX0lvvNST6bF6cmUmACWwf5O+83lvnLkR1iKO1fHmRt/PFvRrVNHJu6kEVw?=
 =?us-ascii?Q?ZfX0fFZsZXHjD61qUr0oNgqjjYjsu/DTiYXhLQOXgBrbClZckjM35u21ZSi5?=
 =?us-ascii?Q?2OnYo0Fei/93ui9ncveiE6CNMZkmtm1BJz7CGwnJlRszFE3mA75cw1JFxmpa?=
 =?us-ascii?Q?wClaT5zqnQG/J9yT9PGjKtjvv1hynaUAU51UK4d7+vw+nQ0HxRjK+shRXv8G?=
 =?us-ascii?Q?vuFBDElepKsAzmINf/hYZdL0YZYjGvEs3n6zrZBe4uwrA+cG0oOSPkHBLcNE?=
 =?us-ascii?Q?sfeZ7yZb7Bmt6cpTjf2Fm46Prsh62ieBFHCHacb/4WiK0OWvjmcPJWuJ727w?=
 =?us-ascii?Q?VeDCLc7H1djgYZAiutpbIbN4BehNY9EGQfzEcTrvggppzkWps/+ylf8iK5QA?=
 =?us-ascii?Q?9qazNt4qbQtAWFcNn2Yrrxdz+Njy9mzGfiPSEM1vJiRFNx098QQBb57ChANM?=
 =?us-ascii?Q?FZrAlkxs5fnzTY9rM9GpUkDLdBVLDxPaeVfeCj6EKwXI47/DlVaZv6hvN0Rw?=
 =?us-ascii?Q?feQFhsnnetn1tsTbEFaPp4RHn/1j7gYFGJ+Eg5GKCNrqZ1nWgkwuoAO6N8EQ?=
 =?us-ascii?Q?864NE+xMJyTBS7C83gmqqHlysAsfL8TP+sTMA1R/UnN+CFgxx8h8/ltl3BLx?=
 =?us-ascii?Q?jsmAZdCoYgNiORfB7dVkqwA4Q9/oIbb2r364Z8PSsJrbAAgh8diZQMrB08Dv?=
 =?us-ascii?Q?xUxrpRHCGZ2/5rwMjWOKBumxRTfR+7OF3I40H+5uyAAeSoVVQaJRu35IzCkS?=
 =?us-ascii?Q?hz6NPgjGnIO0vjitdB9jQZTljHauyCE58gYzvhSApzDJ9LkFrnjhSzvm9PwZ?=
 =?us-ascii?Q?EA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR11MB7518.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b13bc211-560b-4bf4-8596-08dd62c65726
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 07:03:36.1137 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XqYxkZO4PNglTL4FGaA7avJ/GAdtS7L5EoF1dnbFbdCG0ylk5W7gpjoq7PW0MwmTCrpTGtQdfrpThCb8THZXdl86ldXg79FWSq/ABc3t8IE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7675
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741935837; x=1773471837;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nG/aQpAc7DXetO7LDVE1/phWpaEX+41GQM4mOCq/1tw=;
 b=B/yM9tH0mSQY2VoTePVWulGmQgG/hKs/ynErq6CnRSprzSV9HnPRbDou
 H01hv/S9NEruG9PIppXu/mu4gMW//B/OosemO81okadT/V/ie1NIqXYdZ
 bdTFgxjzf4Eb0LyFl4E/hADYfbYik6w5c/YO+nXYfzp8GUef7cASfMiMd
 aAplTG0LBuOfCxgfe6vzetfgz+W2VNlke0IsPHSED/7egIdp96/5fgaZY
 CHYiJQlOY8bwT41mSpYWnx8uY2wKGcF1PNdt5ZWUGa0YVvHdSIouq6M4G
 0lzepqXlHSddMbLyGyOmrQkdfiwKAgK2fiZ6gzvqQnMYCNzd9iw/h9CuN
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B/yM9tH0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of P=
rzemek Kitszel
> Sent: Wednesday, February 5, 2025 2:42 AM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L <anthony.l.nguyen=
@intel.com>
> Cc: netdev@vger.kernel.org; Knitter, Konrad <konrad.knitter@intel.com>; M=
ichal Swiatkowski <michal.swiatkowski@linux.intel.com>; Kitszel, Przemyslaw=
 <przemyslaw.kitszel@intel.com>; Zhuo, Qiuxu > <qiuxu.zhuo@intel.com>; Linu=
s Torvalds <torvalds@linux-foundation.org>; Kees Cook <kees@kernel.org>; Ni=
ck Desaulniers <nick.desaulniers@gmail.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix compilation=
 on gcc 7.5
>
>  GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
> and thus could be used for static storage. So we could not use variables
>  for that, no matter how much "const" keyword is sprinkled around.
>
> Excerpt from the report:
> My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
>
 >  CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer =
element is not constant
>   ice_common_port_solutions, {ice_port_number_label}},
>    ^~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initial=
ization for 'ice_health_status_lookup[0].solution')
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer=
 element is not constant
>   ice_common_port_solutions, {ice_port_number_label}},
>                                ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initia=
lization for 'ice_health_status_lookup[0].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer=
 element is not constant
>    "Change or replace the module or cable.", {ice_port_number_label}},
>                                               ^~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initia=
lization for 'ice_health_status_lookup[1].data_label[0]')
> drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer =
element is not constant
>   ice_common_port_solutions, {ice_port_number_label}},
>   ^~~~~~~~~~~~~~~~~~~~~~~~~
>
> Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A98=
9F72@CY8PR11MB7134.namprd11.prod.outlook.com
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> I would really like to bump min gcc to 8.5 (RH 8 family),
> instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc =
7.5 :(
>
> CC: Linus Torvalds <torvalds@linux-foundation.org>
> CC: Kees Cook <kees@kernel.org>
> CC: Nick Desaulniers <nick.desaulniers@gmail.com>
> ---
>  drivers/net/ethernet/intel/ice/devlink/health.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
Tested-by: Sunitha Mekala <sunithax.d.mekala@intel.com> (A Contingent worke=
r at Intel)
