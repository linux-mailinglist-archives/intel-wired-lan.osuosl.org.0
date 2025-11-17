Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 21263C649C5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Nov 2025 15:18:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A417A60DC9;
	Mon, 17 Nov 2025 14:18:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KxpUXYqDzadr; Mon, 17 Nov 2025 14:18:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D3F7460DCE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763389120;
	bh=4RKxZ6sVEnWX0PghyTqbMg+adO4/+arx4pYFdi8mUck=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=uluInPYC4sdT7WUzybRckr+qz+ligHnBTejIbyT3HNI+i6FA6Dk6j3WKL5Z28y9a+
	 kb/RAsCijhCyKSvPK4SwlsGx+Oj4KXPTwbzJWmpNQBgBlcs4IBgQMY+frfNxvNGbU5
	 iMD+aOiSW1YWuiZeM5Ex2hZCex1FWn53IQWeT0ft/q7GDnAEYApxfz1xfGlX3tmHoE
	 RgYeQNQGM34UYFms895HPtRoK4U3SAFCqaOJbQ1lefum2NEADJLbjjw7kmFlhd5lI5
	 BEY/IDcssbxEOC7OxcGvFpCqKqFIjIdXq0e1j0Pc3pK6EBsTSeCniMuypG8XctANh2
	 WzUro0FuTYRoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D3F7460DCE;
	Mon, 17 Nov 2025 14:18:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id C96421A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:18:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A4CCB60DC3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:18:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IeJ0GETi-213 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Nov 2025 14:18:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 87F3F60DBD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87F3F60DBD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 87F3F60DBD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Nov 2025 14:18:37 +0000 (UTC)
X-CSE-ConnectionGUID: F/0CHoqgS3qv5JoJ/R6Yww==
X-CSE-MsgGUID: oN6m92/qR1WVWNpsURz5zQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="65323078"
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="65323078"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:18:36 -0800
X-CSE-ConnectionGUID: zzmtRq5eQ56l3VZum2U08A==
X-CSE-MsgGUID: oqXfl0uMSJGqE7kqCS5S4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,312,1754982000"; d="scan'208";a="190911707"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 06:18:36 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:18:35 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 17 Nov 2025 06:18:35 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 17 Nov 2025 06:18:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KTzE2qa3FPVmvTfva9VmeXEnMtBBUjKkz1aCG6qLbEI/sCCMHUBUt5CHbKON1V25Zdrwue2WXYe89Z90TYEx517N/jdRhDVYZKYmt0+y+5OlyLeB08BMNc5WIbnDsRivaUeT2dPqi1aPhmThJqUUva+qnyJOjnOmZbNifGHf27eCgFo5uOcxlTJ2EeMFuto8shQce1WD0s5CevqF1eSdNz8qFHcJtKC5diB0qtaV8hw7Wg8MqoHzR77WhQtNH0hChO7uP2IqY2yNvKRC7n5RIoEpQjeVRd+3kjdlXnQ/Oxgi/Gtk0ANTCcaSNucQk/N2K8GxHkhe+Xvq9NrlQLRuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4RKxZ6sVEnWX0PghyTqbMg+adO4/+arx4pYFdi8mUck=;
 b=ujOBSJRJ+p8Uiqc57ioHH2wFkmN0670vZWNax68KkAVwgo/OSe4D+6xLZtkfKd9X6jWNgkZtcNSsCNwr/jtWVxfSlat0hSjLWW//buV08hl0AS9I/45WEgO2FE0Nw1SKBz7Miy4Pi40cV5vuZZ6xIEJs+4KuoNnvWA1/1Iu14WCooTkxwLmhHbUi5oXvq5+rHPy0+pqNXZr1vrjvJdrfEPEy0efBUiiLUi+n9sKqpv5cTxZvJ3Ce6jQLM5thJC9cHeJNiephrp09aA1OyzqSZTFSDImxkeyyHJq5N6VCDJk+awguulYEx9BGAYEDsALQVs8VY+Ve1I22l+qxCoLt9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by DS0PR11MB6399.namprd11.prod.outlook.com
 (2603:10b6:8:c8::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.21; Mon, 17 Nov
 2025 14:18:32 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9320.021; Mon, 17 Nov 2025
 14:18:32 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Zaremba, Larysa" <larysa.zaremba@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
CC: "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, "Zaremba, Larysa"
 <larysa.zaremba@intel.com>, "Fijalkowski, Maciej"
 <maciej.fijalkowski@intel.com>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>,
 "Hay, Joshua A" <joshua.a.hay@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Shanmugam, Jayaprakash"
 <jayaprakash.shanmugam@intel.com>, "Wochtman, Natalia"
 <natalia.wochtman@intel.com>, Jiri Pirko <jiri@resnulli.us>, "David S.
 Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Richard Cochran
 <richardcochran@gmail.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
 driver framework for Intel(R) Control Plane Function
Thread-Index: AQHcV8kTD0AWc1IH206MOPy7m0maErT26Pbg
Date: Mon, 17 Nov 2025 14:18:32 +0000
Message-ID: <DS4PPF7551E6552A3FEB7FA0FC5D99698BFE5C9A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20251117134912.18566-1-larysa.zaremba@intel.com>
 <20251117134912.18566-13-larysa.zaremba@intel.com>
In-Reply-To: <20251117134912.18566-13-larysa.zaremba@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|DS0PR11MB6399:EE_
x-ms-office365-filtering-correlation-id: 193733bb-cba8-43c1-9ffe-08de25e43001
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?pa17RANr6mBbwTMn+DtncGnyrE5mRGBqlElxfQwP6PxHZn5B+Z/kVSaOLx8D?=
 =?us-ascii?Q?Ls2InHEvbstsXFS5Bq3Mt9mG1UrwCbjT7rlnZ8kBGAlfHPmHjqv01SYCuIHa?=
 =?us-ascii?Q?GA4WIbmr4EuBwujwv7s5cgAw9H6C9JSBPh08I7Ip1pNwyGfQHKLoETFL+L/i?=
 =?us-ascii?Q?/KvjT8ll5L3VVZbi/VK+y7kea8YimsamssSZ6E2LvGHvXTNk5s396aww6UxJ?=
 =?us-ascii?Q?fcXOZ7bPPIkoxs1FF5Zwox3/PLC/fKM7szSKBNJVDd+JLFJ0Rkn38/BAizmA?=
 =?us-ascii?Q?r2O0auC2cYAqeivNenigW1dOHQ0jbHtqlpYRIediO86a6NN7rvifVtpJNydX?=
 =?us-ascii?Q?TGIJMLeNzPct/N9Vqo/TsGgX9xEBIP9l1dLLVMmi17cGLx1awTM8nhQvrGd8?=
 =?us-ascii?Q?eNNqUgxJDKX7AN+GpqdfeHDwJGMWdrXs9myz2+vZvHxilX60m+dBQRB3AJTQ?=
 =?us-ascii?Q?/QCAd1BpjizGSLZm8772JNT93GxUw824aNndUbsEU/BB4QkNvmELsHYRXw/F?=
 =?us-ascii?Q?2THhc/XsdVpOrQdn7mrVvOcqSqlLU2kiZqSi8jTCKbHUZrbd1SOPaid/U3wY?=
 =?us-ascii?Q?7jqoCMjUpi+oDw+x5cssWkD59bo3p9WXxyEUjLSOw1qIpISCbUlSJ4sLhADB?=
 =?us-ascii?Q?UsNoFFIz4mr9vVMgKCk4t1DijKeVM2d9mzL204Q7flLwWWehoVCkt3bo6cKu?=
 =?us-ascii?Q?jim+MB7tBO3net8tvjxpnmQyrQHhjvXJhGSKj7qIMwhSaBQ27aYyHnKk50lo?=
 =?us-ascii?Q?L5eRxJlLvgQMe44Ys9gRcCxtE8Tw5Awt6BrWxxYnur5w0kA69u7a55ZgFnh/?=
 =?us-ascii?Q?TbV9ZU8EP9VTCduOAW6OmwjLVKvVwYUgMqouKIWKTz1ox8tJbBkc1KsHW+l1?=
 =?us-ascii?Q?+JScl0yRU39ZeN7mI1xBIQ/qIrRjmsxar/XPVi7LiVI4ambCUFZs81KhB7mc?=
 =?us-ascii?Q?E+9tAuc4kGbqBChhoFYHri8vQ3b4rafO50fj15OQ1pIkUpQAD4SuUUVaPHyu?=
 =?us-ascii?Q?ua+HeocMfxpIcDYWeT46JshLpalUV+gbcuxlSm08sFMtZhDB8331zOSp9+tZ?=
 =?us-ascii?Q?uWp2Q0Q45B6q1IKGe0oU4UjJ7fW6eykoLJ/yZq4Dir8YH93IBIlrhhEIwNZR?=
 =?us-ascii?Q?HfxRKkfrzdxgm1r5n0pb1WrkPfUzS1MtD/hQgfrOLGf0ltHUOs57kyBuewM4?=
 =?us-ascii?Q?DFEIH9+fVF7wbw00b0fcJxADQUnLJUoVOVI02GSHkQfCIxPaTTtdfzZeL/h4?=
 =?us-ascii?Q?tHjt76I9EWS3KJd1gN7ReCq78AGPULOQroZXTIK1Y6k/zYDkrAQX6zXImVw9?=
 =?us-ascii?Q?ce1O9KFDBxeD6ZFv/+49Kwh2to/iJtyv8J7IdGO8t0TVzIadI/utras1r9qi?=
 =?us-ascii?Q?C0+HQ/IKEyO5xEJ1dU+15TxRhGwyhEeWNUDfbam1n/YZp/Oi2opC7Gb8xCVK?=
 =?us-ascii?Q?/1t6BZh4bbISXT2+qzM8PM8Q0XvzkGm8gfIbqh87iFJsQnvwphuX5NYsIkxc?=
 =?us-ascii?Q?zcqMPyQQMdXMkmYZddJrn1AcfFZUQphtU7co?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(38070700021)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uxtoxe6uYwo338mnKYTmSdKiTmfTCfeaSPD0i39gWqu+Z9B6flKAf8liUo/I?=
 =?us-ascii?Q?WN+LjJ8M3/ygRUzq4+Dy9agRs+Fjg0xME8VMfSTK6fbKrF0c6LX6iWbiqek5?=
 =?us-ascii?Q?6oRaM0Q9IxdlGe5xu/MH4VqASz9gnUkrXYy5oOxC3Un/+QNuwZYKBZ6UTSA9?=
 =?us-ascii?Q?LFswJzsVvJkU1LEqGIGOfqoZM3y7dXGdInHbyxfEPJ7M/vSUFKglqnFPB5aj?=
 =?us-ascii?Q?dQeaLK0Z/AVvp/1fB53JwiJIyU0Duf63F3DiVV8L7bK9eIpleCKkhglBI4op?=
 =?us-ascii?Q?WSGCJoIKH8GE5jfWPxPDCf1lNDfMlrBM5DB5vTUd+L/vg4sFcI/pAc68V/+Z?=
 =?us-ascii?Q?RsFBww2GugfNo2lPTZPQXkg1jNEF0Z0OLUyVqNRIYxWlUtGmTF71gbBo7V2V?=
 =?us-ascii?Q?NwcgFZ2/Dnlykm+Xq1sKmnPYHKWQVqg/JfURnaQfaLiSSPBXw4//2KmruAlm?=
 =?us-ascii?Q?G4jLkxiP/WvmKMhIoUGk7LlgMu5V1aeNaP1UCwEHm6qY76zRf/lBGN/n7fav?=
 =?us-ascii?Q?BYIJg/sz2NI9YXDrzuyv+8c8Z0jmzbwgd4tbr8PLHzXGUcz2qfMsbDsLb38t?=
 =?us-ascii?Q?Pvggakv/ZbRO26F1NmoHA8SGUD/cs2qzrArRplJaiZcCafxo4t/hVjeTd8BW?=
 =?us-ascii?Q?hGL80zzCs6ApFMEQ6mer/z3C+kAs1Pc2azl6b/27mS7nQ7wqh54PhNPtBVax?=
 =?us-ascii?Q?NepxNVC3aNnkQEVDZbqw6E2kBa0J8tepXSJJ2W4o1ARwXvKN+zbpiii9VYFN?=
 =?us-ascii?Q?W8Ra96fxgAmK/yv7E/R0wCE4L3u6Ez5e6+8pCluwqiQeCYSg67MPK4NEL/LU?=
 =?us-ascii?Q?Ugz3MaNEvnbsJ5BX/Zpa72O6FDCUqsD5A2B/iqiz5HQAHDFdclw8TyFBs8T5?=
 =?us-ascii?Q?TiuK8z1GvbOVXBvLlqNbphtjRSI+X9kEQKdKER6NiAetKhd/4RXRT7/9It8U?=
 =?us-ascii?Q?sIs+cCKfxksO7grtBYGOtwZ7/7jQ9sprQV9BMZvr7HR7DrmscecmCobTDnVZ?=
 =?us-ascii?Q?ndU7O9FBWag8uMw+l6F2dQ/gSkZuAIeNRYbHuJPT2R9xAdfEd6WW+7ZNgFX7?=
 =?us-ascii?Q?wlJM+ymZGEGnfCMuBmC73PqFJzOPA8MjK5t9EPxNkrBXIXQho3xpGq7yFHlO?=
 =?us-ascii?Q?rkTRo/QptRxPIeSacTsgF1xLsLIqDwROAcIUTHDit8fog+TDpvRg/lMra38T?=
 =?us-ascii?Q?u058GIEA0JxPKYHe82sAjnm2GY7uQS+dX2K+RbD4wuI3LcwGq58PllBp30UP?=
 =?us-ascii?Q?EW+ucBTL6dxMYVD1k0JSrO14kbOMg9IOCfzVtb+Tw/zCcGeJ1cwChcxM2Hw6?=
 =?us-ascii?Q?WdcEQffwVhAiePJTbMklBjEIO2BigO+hpi86ZBg3i3h5pJZOw9o0BMwgGgqa?=
 =?us-ascii?Q?u3pQ/iVPiRWVh1OGKnkq0lZuyCqNc3VG/wFCAa+PGZ7GkAe//aWoZZe+t9wY?=
 =?us-ascii?Q?LakTcZx5mnpoIn2mTQpMKLeXiw57JZ5xX64bLOFOEyBqRw6aIbxy21YAdD7r?=
 =?us-ascii?Q?yxO2UN6549Lg4jG1xwKb6sFEQoHN+Q5G71bnq7yg8Ibk05oLvDZrkOXrrbA9?=
 =?us-ascii?Q?W9EsGVo7Qr5pKgBIMpXb8m3Ww7kIB9+tqNDllb4ypaohF2fA63dJbOWvuv7K?=
 =?us-ascii?Q?dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 193733bb-cba8-43c1-9ffe-08de25e43001
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2025 14:18:32.1171 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vZv9vn2kRDNrObFq7UeKFxB5/B0CF33h6BbX6MFgmAgG62sqW5TwzfUrm9TwAsXn1xtFRz3IrE66+u3lpdGDXbsuU+i3lqqgOn8lGXZYAXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6399
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763389118; x=1794925118;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9lly1nytdPF1bgay+BY9rRDKpPpoC0v7Wq7WNosgUd8=;
 b=ReVkU6xosf8dgPv5RTcRfvQA2C3hAvel1ETJVef2WDmEptPscXADG38+
 XyBlAJdTwMoVCGV3ToWJxny6uLOj46NcZRPYqJdkHLLTzM+6gBrrERBtj
 muCW3lGLAX+TwSCiLHJl/9fjb4Ca2Si0/CG71h+6rElQIozOcCcC8+wWi
 vbOaLN4Pj8kb7a6O6T6guu31kHN6ugk//NrY5XsUw92u3h8mjliBgrV17
 ieZnclWLCg0c6MknHOV+h0KcYU19+y7W7CbSff7iqSf4g5lv7+AUtL3t6
 Swh+I3SCwPN8YncNynX1s8G/p57UAf2kR/MHwNtqMZfr/wAOo/DxfCDWE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ReVkU6xo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
 driver framework for Intel(R) Control Plane Function
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Larysa Zaremba
> Sent: Monday, November 17, 2025 2:49 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Cc: Lobakin, Aleksander <aleksander.lobakin@intel.com>; Samudrala,
> Sridhar <sridhar.samudrala@intel.com>; Singhai, Anjali
> <anjali.singhai@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Zaremba, Larysa
> <larysa.zaremba@intel.com>; Fijalkowski, Maciej
> <maciej.fijalkowski@intel.com>; Tantilov, Emil S
> <emil.s.tantilov@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Hay, Joshua A <joshua.a.hay@intel.com>; Keller, Jacob E
> <jacob.e.keller@intel.com>; Shanmugam, Jayaprakash
> <jayaprakash.shanmugam@intel.com>; Wochtman, Natalia
> <natalia.wochtman@intel.com>; Jiri Pirko <jiri@resnulli.us>; David S.
> Miller <davem@davemloft.net>; Eric Dumazet <edumazet@google.com>;
> Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>;
> Simon Horman <horms@kernel.org>; Jonathan Corbet <corbet@lwn.net>;
> Richard Cochran <richardcochran@gmail.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> netdev@vger.kernel.org; linux-doc@vger.kernel.org; linux-
> kernel@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/15] ixd: add basic
> driver framework for Intel(R) Control Plane Function
>=20
> Add module register and probe functionality. Add the required support
> to register IXD PCI driver, as well as probe and remove call backs.
> Enable the PCI device and request the kernel to reserve the memory
> resources that will be used by the driver. Finally map the BAR0
> address space.
>=20
> For now, use devm_alloc() to allocate adapter, as it requires the
> least amount of code. In a later commit, it will be replaced with a
> devlink alternative.
>=20
> Co-developed-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Signed-off-by: Amritha Nambiar <amritha.nambiar@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  .../device_drivers/ethernet/index.rst         |   1 +
>  .../device_drivers/ethernet/intel/ixd.rst     |  39 ++++++
>  drivers/net/ethernet/intel/Kconfig            |   2 +
>  drivers/net/ethernet/intel/Makefile           |   1 +
>  drivers/net/ethernet/intel/ixd/Kconfig        |  13 ++
>  drivers/net/ethernet/intel/ixd/Makefile       |   8 ++
>  drivers/net/ethernet/intel/ixd/ixd.h          |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_lan_regs.h |  28 +++++
>  drivers/net/ethernet/intel/ixd/ixd_main.c     | 112
> ++++++++++++++++++
>  9 files changed, 232 insertions(+)
>  create mode 100644
> Documentation/networking/device_drivers/ethernet/intel/ixd.rst
>  create mode 100644 drivers/net/ethernet/intel/ixd/Kconfig
>  create mode 100644 drivers/net/ethernet/intel/ixd/Makefile
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_lan_regs.h
>  create mode 100644 drivers/net/ethernet/intel/ixd/ixd_main.c
>=20
> diff --git
> a/Documentation/networking/device_drivers/ethernet/index.rst
> b/Documentation/networking/device_drivers/ethernet/index.rst
> index bcc02355f828..b73d13a2f748 100644
> --- a/Documentation/networking/device_drivers/ethernet/index.rst
> +++ b/Documentation/networking/device_drivers/ethernet/index.rst
> @@ -38,6 +38,7 @@ Contents:
>     intel/igbvf
>     intel/ixgbe
>     intel/ixgbevf
> +   intel/ixd
>     intel/i40e
>     intel/iavf
>     intel/ice
> diff --git
> a/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> new file mode 100644
> index 000000000000..1387626e5d20
> --- /dev/null
> +++ b/Documentation/networking/device_drivers/ethernet/intel/ixd.rst
> @@ -0,0 +1,39 @@
> +.. SPDX-License-Identifier: GPL-2.0+

...

> +/**
> + * ixd_probe - probe a CPF PCI device
> + * @pdev: corresponding PCI device
> + * @ent: entry in ixd_pci_tbl
> + *
> + * Returns: %0 on success, negative errno code on failure  */ static
> +int ixd_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> {
> +	struct ixd_adapter *adapter;
> +	int err;
> +
> +	adapter =3D devm_kzalloc(&pdev->dev, sizeof(*adapter),
> GFP_KERNEL);
> +	if (!adapter)
> +		return -ENOMEM;
> +	adapter->hw.pdev =3D pdev;
> +	INIT_LIST_HEAD(&adapter->hw.mmio_list);
> +
> +	err =3D libie_pci_init_dev(pdev);
> +	if (err)
> +		return err;
On libie_pci_init_dev() failure, no cleanup of mapped regions.

> +
> +	pci_set_drvdata(pdev, adapter);
> +
> +	return ixd_iomap_regions(adapter);
> +}
It looks like missed pci_set_master() in probe.
After successful init, DMA may fail without enabling bus mastering.

> +
> +static const struct pci_device_id ixd_pci_tbl[] =3D {
> +	{ PCI_VDEVICE(INTEL, IXD_DEV_ID_CPF) },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(pci, ixd_pci_tbl);
> +
> +static struct pci_driver ixd_driver =3D {
> +	.name			=3D KBUILD_MODNAME,
> +	.id_table		=3D ixd_pci_tbl,
> +	.probe			=3D ixd_probe,
> +	.remove			=3D ixd_remove,
> +	.shutdown		=3D ixd_shutdown,
> +};
> +module_pci_driver(ixd_driver);
> --
> 2.47.0

