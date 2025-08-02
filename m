Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75216B18B0F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 09:33:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E5191607CD;
	Sat,  2 Aug 2025 07:33:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OYL7RMICQKyp; Sat,  2 Aug 2025 07:33:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06B32607C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754119980;
	bh=zpmvuG5Y7ieLFdcLcvccYui2l2rmE97oWakp9P2ehIA=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=E4rYRDvSAIGMkG8ukrbT6oo5S81H22SqubT03CJNA6s/cDMmoq+8jUz746PlvL6EM
	 2q/G5M8sQcl5O6ajl/6qbmViFtorj0OklHzKO8L1FcS18mTJYanv8MibmcKci+YZ97
	 MY8FP57g5CN76WXv8hyguUBZD0F3ZeZYRZzMB8cxIq1AUAckC9vgh+GaH/Sc0nw1gh
	 Pzoj2Yz0HqUn0pG1nv6jgPouaGsQBnSpFlO7A3fB5OJNwY9G2j2zHaUSuzcSsTW7Cr
	 ye4iL96InhyyZCGvlqqswrJ6Ln6qpWTv3ut/AcrKea8UiugaPinTvRy/AQO6KD8tO7
	 0bMUrj7GXTHZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06B32607C5;
	Sat,  2 Aug 2025 07:33:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 661D4160
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:32:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 576884009D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eEh7DiQRY4zA for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 07:32:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8B7674004E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B7674004E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B7674004E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 07:32:57 +0000 (UTC)
X-CSE-ConnectionGUID: vfFJgS+zSTi0AIkX2cEbGQ==
X-CSE-MsgGUID: L7qzLLp9TGKusQvpzxRtPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="73918167"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="73918167"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:32:57 -0700
X-CSE-ConnectionGUID: OOvM4Y3oRo2hy5q6AguXOA==
X-CSE-MsgGUID: 2+ynJu73T7Kiubb2d/UBkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="187425643"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2025 00:32:56 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:32:55 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Sat, 2 Aug 2025 00:32:55 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.64) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Sat, 2 Aug 2025 00:32:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T7ihPYFNfRZUsxflQ9xdvTiaUULA4X50ESiQ6f7NHTTE34B85bTnhDOFf7KETLt/hPEt+WpryK6SLnue9aJBN6ZQU5TH3h0O817lMJOtYJ/IjcOkYF2DllfBHdnIrVP3ZLagWunYHGz0KnTlDYq+sS2j02uNCJSfgO4eQWhMUQfQLEpGTNF3S34Dp+PWAbYbwSJ2JfW4Zj5IFBxuxudZYDqVr7ZY1u7aZyPnST0Jc4ezCTXVvKKXkkKxnXFtvMws/JRJpDWi060AVC1BL5Ra6qDO6/IEKiCwohajL8OCQL0Pft32hF3KC7pCN6O+r7++NV9MfMYswUu1DGmdX6KpMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zpmvuG5Y7ieLFdcLcvccYui2l2rmE97oWakp9P2ehIA=;
 b=oI6SJO1PqNVA501PbyKw2QLfImdv7chHccYJKHb9M6563gg9AGKv1UFZ7AHp7wuHLBJEqC909kQqHOZWrP+3bpjCzn2cstp56OXvtLx4L3F/TdeSUBJMMuEXsi5foAiOJ8OTg5JxVv+d7tHfvyYFZfmcK/CEP7WtxfT8SOxT+DxYVXod0PDGC4tpvUeGjNe7NhL0YnbyA+nPBbthKW8g1o5JRQf9KxtoJKmQLbAxl+sHo2ISLW+V0ZUWKs6qtN0+8ttaokDAH421tuaTHd/qNp5fxiVgThL9H77YPDIK4clnWpjmYkC22JIepueM2a4aH1qEp5zT/y8jQZpexdoY/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH3PPF1AF044E07.namprd11.prod.outlook.com (2603:10b6:518:1::d0c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Sat, 2 Aug
 2025 07:32:21 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::1c54:1589:8882:d22b%7]) with mapi id 15.20.8989.015; Sat, 2 Aug 2025
 07:32:15 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Ertman, David M" <david.m.ertman@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 1/8] [PATCH iwl-next v3
 1/8] ice: Remove casts on void pointers in LAG
Thread-Index: AQHb3vFTrA1rqtvq5kCLan48Jayj0bRPQSIQ
Date: Sat, 2 Aug 2025 07:32:15 +0000
Message-ID: <PH0PR11MB50130D1C962C5DDE41C442459621A@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20250616110323.788970-1-david.m.ertman@intel.com>
 <20250616110323.788970-2-david.m.ertman@intel.com>
In-Reply-To: <20250616110323.788970-2-david.m.ertman@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH3PPF1AF044E07:EE_
x-ms-office365-filtering-correlation-id: e845ea6d-3485-4069-9128-08ddd196b403
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?WUJ8hD8bQFifjIALEU4nt9gyYuwDh0NaZSm3fO4tagQUUPtpSt3J78EuQN2b?=
 =?us-ascii?Q?WlEjWjG7Fq8EEZj/e3fWXFI2YZfVOpOH7ANmRztApm5diWZvq+OwT/qmrYOp?=
 =?us-ascii?Q?VGTsxw2qMunQ8W/JqSGUoHTowQdxufXAO+YFECDglgnL+Lqtj8MRQ0OnZhRS?=
 =?us-ascii?Q?R2vyz7ppMm7Y7YIDScQy+o0W5hGaHS/DlqQTcyyrKBoOaXGer9lJ3rbJRaDN?=
 =?us-ascii?Q?2Y6Ro1yGBPh5fS0w6IacyAj114eysueQHMidIs/fyMT7Q65Kwm2lAUjanQtY?=
 =?us-ascii?Q?eKVMwwHhHiSRaeP98Wy7xw0ubTgnCDFhT8ShY0PjcWMnvq04iMa/fbqjhqNf?=
 =?us-ascii?Q?dA7Z/Rg7yhptdvLsHlXDcYZ8RfbZM/sttAaAKYt+BpyBywt2IbiIQJqOHpUY?=
 =?us-ascii?Q?DTTkbNUwFF6iZeNSRE+DMiq6ta3eh3pAkf84hCPGbFejgS+aacwuPZM0br6z?=
 =?us-ascii?Q?qM1bbTGMuSEkLEebdl2fW2ytMjNTEg12QqsfAZ7kLYmocluvMixz0FOiPUZN?=
 =?us-ascii?Q?QmYSQZu0MvXUmNiKC0tzQgpCS7hndRama3I4J2Z5J2qzeer6b/fXpUID8Wvh?=
 =?us-ascii?Q?apIbpOC6wb+u7OPjhMsLlOXIWD+Kwl7MBtm5OQ1TmsG3srLJPv+9W9gwQ5MQ?=
 =?us-ascii?Q?6OpjPwVpgGxhnmUAqSecR/WUBzYGQ2wyFioy/Nvy0+MkYQ8oPYaYSp54fYyF?=
 =?us-ascii?Q?bBuabG+GN2YjrDa//gT4envaLPYnVQ7kXEqDrQsZWB5sDzO3bQfXJfS/VT7S?=
 =?us-ascii?Q?liIFDEHw+Q819K8yPOlwXQp8bE8yqsvrLmUEaYZVOhZ2Xl5nWY3b6mvLJ7aM?=
 =?us-ascii?Q?HqaSVZdhmaUGvBrELU2L9JTFCSRIqJBxmwkRBkALCGvlH8jnL2H9QAopm86I?=
 =?us-ascii?Q?f40Vr8kdFuf9DmufXDdhesq6wvrN4Na0WsRLNdfEVao26YjYL2DNwG7H8ro9?=
 =?us-ascii?Q?AVcBQU5cFlk+uivymcGJ6EBH/6zy5L2LEkTpxIFBBKmRfOY12FC9CSx6ocZs?=
 =?us-ascii?Q?SzshrsSGozOVvl7ihay10Bqt7bqMxhbOAc6BMLBZp1xy4v815dhK1KgJwXho?=
 =?us-ascii?Q?zzYYjyWCB9Hsfp/hpYKXC6wUc4hwn28pfyJy9RjgmLtfKbDnQjQhtaPFhvZn?=
 =?us-ascii?Q?oFbe0/mrdUWAaHJ+u8Dm71uqQLEGixiHwPyBtzam54m15NlhsnnZ/083rvSW?=
 =?us-ascii?Q?QxJEEEiNCGPLJc/KkGyGykfDyuwLTPV4B8D8laW12J+gRmB3aQLe0bCZmmjy?=
 =?us-ascii?Q?v4RuQ04IGXVmqGJZAhpti/QbmCE515LgZ11JQJnk8Ff5tLcSAWSo1NZnV+R/?=
 =?us-ascii?Q?xMb49WjuDPipCThxh30xvdo+/Ok+8GN+wH/EAzibF+vYznEMwZ/K4tNyDH+s?=
 =?us-ascii?Q?vIQTXkdmTSzj+zcXYc2Ci0n9S6NYjII+bSSCg7JXh9iFFDaTBW54rMxnJFdo?=
 =?us-ascii?Q?eoXU4q4aKk3d/YygkZZUDDCQCMiuHC1DpefIlRo3UNBHsvApJCT6EA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XPA2JkJ8E9AuGVoER2brkGaDwYr9sFxbR5rfef8ysEnEtbZ8a1/+oF4kA/Er?=
 =?us-ascii?Q?l4oQPURJT6TBZ3qAMGFuZPUeAr+USmj2XTeIgu7s/0hyqSwfOmtfLco3rSsh?=
 =?us-ascii?Q?ZrgrptsiKDfkpdKmsiCRimRN6mJpJBcVAt4EsWuWFT6mmIb82U7cZ2EeSbcj?=
 =?us-ascii?Q?whpaCE8hvQExF3UNwOeDDmVHS5PUE6+ghWJC2/h+KxQx7viBJFDomsbAAAdB?=
 =?us-ascii?Q?7dLWlmsSeXxhENkLxpSXA5uZQicddOQB9BN+DxKy78ygm7X2bNhRzgTN17j8?=
 =?us-ascii?Q?RbrI9RPoo8P7O5UyFHyL+wZD3VrBuOiOx7W71CJsON08vxBtxuVz0Fl8EzsB?=
 =?us-ascii?Q?aI9kDu+iUEigzWp1Wx+ilU2O4f3L5HzRaUGvTLf2OOY5Qxxm6/GZ8i8hogxV?=
 =?us-ascii?Q?BkKi/P8Edbh9QwWpHICGKn5SDcGjTsJ/Ei/O6ZWuKdBAG8c0x8CzzXrImpwf?=
 =?us-ascii?Q?nFmOSd4kHC1lGmpACBluEm/8o+kiqwycNQgebzkqJC0QoQJoj0OKoXSeFcxN?=
 =?us-ascii?Q?hP+AZypKsy8sl3/Rl0cOCQ+4n1GldlFkeQ0xmazOgK5QUYjZqZQqbrIAAj1H?=
 =?us-ascii?Q?RI+8iriXp3TWd0Q+3zQ1koi6U3/kyug3xgS5m/ckEgDOCDcuZopean1bxRGz?=
 =?us-ascii?Q?UMFLNLLN7Ddvi0KRvKsCaJv/nt3kKOt/mJINKvT1bRMO3Ind4Q/7jO4qjQqg?=
 =?us-ascii?Q?Tf6iAUy95M/dqc9j9YN4VbP8VYVrOlJwu0s9uCcq7fYuHOCayNHOrlC6hpE1?=
 =?us-ascii?Q?Gdihiv//Pz2iolEaX2tSsl7OjkiMkMFWdhXNRKlxgwJUFT85cHGA5XyIs/1y?=
 =?us-ascii?Q?zKqAqVqHX5DamEf9dLl7Z27JYwFRh+Uy7k5MtgkTZRsjRW6vtkjRKBk+gJ1q?=
 =?us-ascii?Q?YPGoPmZ2W/e0+kBIsKgBV8SIEVecZZM6hu024KISKKQkJvDwFevNj3+qOKHw?=
 =?us-ascii?Q?Ts9xZ7w3ZqJB/DRguy+dXBmLZ8UoAnvzkyrtrs+P9finezQvsL9XB6UEEX4S?=
 =?us-ascii?Q?3+7PCOcwAdXZ0yzylL9gxKw/nsNLpq30mPD5hCpDOs4C+iXTeRgzCMv981ll?=
 =?us-ascii?Q?1OsK5w6JxlLWeSaM/Bnbgu0uZPfaptUp0cP/UU9tJN3+3L5ubXBDIJKbwAcd?=
 =?us-ascii?Q?JFgFYBwUmufwkZ2RQrnG9DQIvSY7VA+nqIV54+78fmvkZEt/vA9uP1tlQXn6?=
 =?us-ascii?Q?Sa845kouD6veKygQJL/AxrA0VkXlng1fpcxMBSybHmnsuBFCXGEBmCHQxI24?=
 =?us-ascii?Q?Z9JWK4PxDBqXc8JPo94FgDCShSXVIfQY/lq9o9lJWAnWl4NhuY4PRt0+XQtv?=
 =?us-ascii?Q?0y1QT1dxpr52R4E3wvWOFMm7MLhHi40R3+8Qza5J9YnmvilHfHHKsUwpHDox?=
 =?us-ascii?Q?5oOOt3PsRRka3kVBKWEAWunYcFv3UnKBfTarQfPYTAKFuIV1qW0mubHjCx3Y?=
 =?us-ascii?Q?yT/qkhxq6XJrFE2/8Cxy1jn2VAko1+dU9+d4w98IlQSiwcvlZpPHkvDzZ+o8?=
 =?us-ascii?Q?aJ+boloyz9+L0p4CZgDdUQM17WLzp0YiqaDh1LCag+GVRrG7B+tITmfUESnc?=
 =?us-ascii?Q?4QgiPqz21SwJ5cnlGYiYbKpg6ay8xekhABF0iNEViE8YH76fb2xmHlS3xuu2?=
 =?us-ascii?Q?Xw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e845ea6d-3485-4069-9128-08ddd196b403
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2025 07:32:15.1413 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LEVWvN50maLylTiylgSCYhWuhn2DIdVx/E6ZBBNpFwvTO7jODKlHfQXNE1zsg47GnCiFxlR9SaKdsuYpc60rzzGAoNvMNMRB/xUZASSvLjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF1AF044E07
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754119978; x=1785655978;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EAYBZGD58bdFxxw8L9GEHiq+/0jU94+bW+Vc+KZrT/M=;
 b=c5PnKMyjrykBEncTu3SjPpE+8POTfgqERt+b4Cf00g458q0BddZdySKZ
 9U/lsVCzXCkFtco0CMtkpoOJf07wNojZG1SpzBJmNhYz17gMMEVqOpkPn
 PNh1LoRM02IOmpZQZugrt/MzODM8oZr+9NrHCk4B+mncOjMYxAtW1Mn3N
 l5HxnTt43a/CD9O/ENKmHQHJKaKQYt0AAMLyhvw41DbkjtOsa6OAce9oT
 hQe9UsVTqppXZundNu1XzoeTYHbCfbREre3/sKok1MsSYk+VOT8tWWXdS
 ucj9/IYGEHwTENGfOSfY9EceqS3EPrQhmuiMAIqyGawQr532dfyAKc85p
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=c5PnKMyj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 1/8] [PATCH iwl-next v3
 1/8] ice: Remove casts on void pointers in LAG
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Dave Ertman
> Sent: Monday, June 16, 2025 4:33 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel,
> Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/8] [PATCH iwl-next v3 1/8=
] ice:
> Remove casts on void pointers in LAG
>=20
> code
>=20
> This series will be touching on the LAG code in the ice driver, to preven=
t
> moving or propagating casting on void pointers, clean them up first.
>=20
> This also allows for moving the variable initialization into the variable
> declaration.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lag.c | 24 ++++++++----------------
>  1 file changed, 8 insertions(+), 16 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
