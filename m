Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F371AC2346F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Oct 2025 06:01:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C3DDC616AE;
	Fri, 31 Oct 2025 05:01:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VKpvhWAtRBRV; Fri, 31 Oct 2025 05:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B43EB616AF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761886904;
	bh=Owg28CbpIOJ+3YVSg/xdKogsQwDzAY/yTni3DAJbN1U=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=k5irRT20x/IfUZf48DjoNz7nh+KibR5nRChB5rZXAIZ4LxwtYv98b9p+/2Tm0ejad
	 9nWpSlah4MxLZBc6W9tKYH/5aqrXh1LyAhIPaRGUFs7XfIJekXeFUFMnbFAt0MP/IQ
	 PL1q6VxdUvoO22vqM/Q0K+2/ztZmYFchoyl30rahOMUG2eoOIKX82jmneJSL9kQO6U
	 +ftBjWDvYm/5hDlouMql+boce+JWbVKkvc7SndN3GO5AUwLlwcQ+5SImSuxEbJiqb/
	 j+UBOrD6PoHaX64bvwt17hn509Z9xr5w7r2snvw78MHknREPoHjDknDXYl794zOU+z
	 qxyQ3D9Me2LnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B43EB616AF;
	Fri, 31 Oct 2025 05:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 68069160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:01:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E8DF40A44
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:01:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wNDyq-toBbKJ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Oct 2025 05:01:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=sarithax.sanigani@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AC8640211
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AC8640211
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AC8640211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Oct 2025 05:01:41 +0000 (UTC)
X-CSE-ConnectionGUID: A+2W6ldvS1Ox1Cqy79YVtA==
X-CSE-MsgGUID: M/TEbKtDQhug9HhRu94F2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="74717397"
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; d="scan'208,217";a="74717397"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 22:01:41 -0700
X-CSE-ConnectionGUID: VEHn9F9LSQSeBOtoI8gCYQ==
X-CSE-MsgGUID: S/RaLRGLS+WrnZoChzCshg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,268,1754982000"; 
 d="scan'208,217";a="185827637"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 22:01:41 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 22:01:41 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 22:01:41 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.55) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 22:01:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s7od2s+0gHA0MMkv8r9DO/cTjwmE+7lpy7R/ypUwDeu+PC/pcLrxQoDeSN/T6yVhJTbZd+j4zPaZpa7m//Z1rGvqN14VsG6tNL/R8af4CwHmez4SObPjrrZe72ef2i5iHWFdebJiGh69I6SEN5igAiKi8pf8lGEqO3x55fjnuL5N9tVynXR5Co3uFyI8IAnFI9WumasDlwlVXum64tGNmQL6NOfouNhhik675sbIRbpH5RHVotdKpsgscEY0x1NtnQxSor0hmVHyybYIaBDZwhKNf+8WsU27jYq4u6TR+iBk3ZnTil39lZn3aRjoUdjn5ey4xKAQHJBhueTLOOIuzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Owg28CbpIOJ+3YVSg/xdKogsQwDzAY/yTni3DAJbN1U=;
 b=GDCYv1rdKjeArrZVcfj8nB/eoELPNmXEJztVjkOvSpvLW/Bj+oN/rwGtqhXrDP+cfmySLas2wnh/uPD3bS/JyQny05S7qsRcat88Yr88biJMgqZvU+CAhxUp6CEKl+xB1RZAfWX17kF3Qcj+gXouN215wtCLwDXqjHNItlxu25+wqtQigCPy8HBJNBba+jiqvwlJLJUazF9rp9vZ65mutWpYB6xD2dkd7OmZC1rtMx+99rojQIwWOAbNzdsQG2UNA+HkIRHh2xvpmbOb9Kov7+E3YwtW9D0IvLv4ktDeg3jR4uA4vD4EwNi5ajrXcvTNKHVunsMP/bUy2Jg7IOsiHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6976.namprd11.prod.outlook.com (2603:10b6:510:223::5)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.14; Fri, 31 Oct
 2025 05:01:39 +0000
Received: from PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152]) by PH8PR11MB6976.namprd11.prod.outlook.com
 ([fe80::61e2:ff5c:490d:9152%4]) with mapi id 15.20.9253.013; Fri, 31 Oct 2025
 05:01:39 +0000
From: "Sanigani, SarithaX" <sarithax.sanigani@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Lobakin, Aleksander"
 <aleksander.lobakin@intel.com>, "Keller, Jacob E" <jacob.e.keller@intel.com>, 
 "Zaremba, Larysa" <larysa.zaremba@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kubiak, Michal" <michal.kubiak@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page
 Pool
Thread-Index: AdxKIzUiMDAp9USOT4qqF+rwfNVecw==
Date: Fri, 31 Oct 2025 05:01:39 +0000
Message-ID: <PH8PR11MB697608B75902A4311A328E57F9F8A@PH8PR11MB6976.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6976:EE_|SJ2PR11MB8321:EE_
x-ms-office365-filtering-correlation-id: 72f1ce58-dd13-48d5-57ff-08de183a935b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700021|8096899003; 
x-microsoft-antispam-message-info: =?us-ascii?Q?E7xw7G5Rr1wLUiRKEBxZ07oYhR82DEvHnCpQztK9uWwU0wjmuPmUUnLpSJbP?=
 =?us-ascii?Q?NEHFTKOOAm9PXaieosLgFJd6RhKm6j5RckJ0TpiOk6E3XDK1+2ZLCwJsbEVK?=
 =?us-ascii?Q?QdpCdKYijVqfOZUbJgYjeofzZ3RNYtQ44tRUgNJZNsSgZwVKOupuu6AHo90m?=
 =?us-ascii?Q?SvaC3vTal5eduTYlzh8Z/iDytedSe6931YYhhbsJU/3hFJfaGJTXI6OWfhGK?=
 =?us-ascii?Q?L5R5K28WAti9rmV9yIRp4JPpHqbEMrboqD5xZhbo42SeuzdWqRkReHBQoZWl?=
 =?us-ascii?Q?g6jxoU0OIbnqCHi+RWGeFBZlrPnpQKWH0yXOpnzc51P9vJst3nueTFVNFgUc?=
 =?us-ascii?Q?g/KUoeyUDTVd6dUwNoBvLY8jDnbvo/nBZWNHKgZBHy5btjJ2425LpTT3r6SF?=
 =?us-ascii?Q?MMdqzfCIK2+l/HLw9KT2cbzfYbfJvYr4WA3/NwqN4eP9ZDZjJOtmzfQHxBPI?=
 =?us-ascii?Q?VTpnZ3oD68mfIFlRaHy2wWHuO0ore/hWCNALFE8oNWNv+J18BenGDTUAoXhu?=
 =?us-ascii?Q?HpwubUEngccxxRZw62iblQ5xrU3IYEzoEFZzlZL1GD8fhg5uiqV75tbiS/X4?=
 =?us-ascii?Q?+6WWlCMXV7Hbb5t8WpLzaxoAFCTbwcYr2rUmrjgYnemG+gY/8Pq1RvT2WlBu?=
 =?us-ascii?Q?E8gQsKBaYllTwXMakewOqwFTpW1O1KBiHjZpX/NyAJ6e8LLXxlT9dEYkHfzF?=
 =?us-ascii?Q?KoSFQv6WTE1hWTQBH2RDNDrXmKwPsinZXZjlfDprqPAczTFViu37s4kB4hzX?=
 =?us-ascii?Q?+zUWgfsQgGmM6KsZeA7fYGxl+vW0vNkYrcktdJYZC0amffZMK4aGbxgkw2Do?=
 =?us-ascii?Q?rKOaejX/J3mJY5qR743WJ7UK73HoWQwS7TiGsmAxbrLrYYdzxK9Ba6GJ0cMq?=
 =?us-ascii?Q?ucVpZuFNg7/DPKbPRhCW16vytqhZgAfWwmfoou7ywPbJ0Sc9f/q1qVfqysqe?=
 =?us-ascii?Q?fH5p39g0NFqm4HncmCkKKwRDBzFmbDJuge5C5CfjiIIJE4BO+YfaovHXaM93?=
 =?us-ascii?Q?uEHFUiPrEh3W99RiPHe6eDq84P3lj/F2iH0TiJMMBs06hVoLsL2shmijATfJ?=
 =?us-ascii?Q?vn2L/ECH2BW1ZXUzsSm+am0ddDVapFDvQVhFUKUiFcLouFsbKDeBV7mXLzE9?=
 =?us-ascii?Q?az4d/WagXkKoARmFRsJ5qZsS6Kg/YxkC/bOgAjSsg/5FYtJhE8+QUNjA1Qxq?=
 =?us-ascii?Q?JYuC/Ld1KQT9AOANRyba5hDpl9NaTMxmBzQSIMAT+mT1uGrCOsj6LiTXU0gS?=
 =?us-ascii?Q?tGin9/9FiRtZScvhEftInWSeTapnrr0vLI2QwRCQlMh1FAmFkR5kAYOLzcmC?=
 =?us-ascii?Q?71s71ft73/CZ8mm9CFfAH1jGHooak+w9EQPt/UBAX5Va8H1H2xa6mv9hKAay?=
 =?us-ascii?Q?mpZtnMyOwIGznaFky5L6tr7om/RsEHvljRYyQfWTl4E3t+HsmdgTvq9mDWre?=
 =?us-ascii?Q?6qcWgSmCJatBGCMv+QbCNRdl4tuel3huWw4z9Q/k+1sAr46wVBaRriPpoLpD?=
 =?us-ascii?Q?5kZz3dA26e1LJBWuP6e6u9NZJ2jt6p/ug8ix?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700021)(8096899003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ppZhD5Iir8Q9UaOwpn1xiIe84MUucCZT7dvqGY9PPizKxKJSfQ2LwXOUNA9p?=
 =?us-ascii?Q?YplOhYrSLJFf6jwVctzX4aeqQq75PsGQZBODQ1wJ/U4xSpnM4zmTd3Ejq4oa?=
 =?us-ascii?Q?t5Q17Y0cfmHw3ouTirH9UKbotr4SFlZlJ1vPTLRnGq1LFp3Zbc2OUXCGjsLr?=
 =?us-ascii?Q?EGFzYvW0f6fUswIQWfwRDDkizjKur5J/h8La9BTR8s2a6jG6SIH05AWxed8a?=
 =?us-ascii?Q?8Gbg4pc+cXd1MtI/7eW3rMSTonE2jO5/OaGCd8bsA5cXk0VVWRBzgPWKpYfX?=
 =?us-ascii?Q?G6NxngqgHflUeLXZMWaBp6LOq/dRkHA8MSO4esZrLI9kIadtv7itzxjnoo+Z?=
 =?us-ascii?Q?/XgJlCKBfVqPwTRUkBgW2cqeVg8RNiruHPUmp+Z+VESmF+k8KrTKBpGKDnkI?=
 =?us-ascii?Q?PeuHrZ9T+SYt8OSVLJmaWpxXjtb4dIgMazQuAQ13YWfNCuA2h+1K/KPtPVOE?=
 =?us-ascii?Q?42OXGNP/WE5o2/apOWTC4yV3oxQyw94TNcL2AmKvyyHu0SkWmmpkZGrK6Fbu?=
 =?us-ascii?Q?LinPhJeUKn6y2rOqgzotTgUhJfhX6IQLOzuQFuMPLgIrM4Cib/sPAg+M9J7L?=
 =?us-ascii?Q?u5ttuJHwOzmFOWwMRSNJBDcoca5SK4GoCqlzBtufyaqzYXV/kvhvdSCmO8pw?=
 =?us-ascii?Q?fapi2ksrNDa8qZLtsNDIuLcGUWi/DAgphEaMbhrcrUz2MSWHnn0lK+MNVmtx?=
 =?us-ascii?Q?TbIKSMOfTjvyPZsPYPyH5q26wES9yy/vdM9UDo7Hfd1sBByOh3O1lzszFW4T?=
 =?us-ascii?Q?0cxsi7Abr3y0hdms//b5t4OvEJlJgCoRU8PD9Cnz3sEoHIPTNfEXXPD8/qJn?=
 =?us-ascii?Q?+F0qZ6xVVBk7UXu3vSBXdFfnx86WzyDjX3nk9fgb2FtzpsncmksU5Fy/sb/Z?=
 =?us-ascii?Q?M/rdJyndxBamdMKC4Px/KNBHJOXcSi2V5rXhCCgjplXTlLo2AzFiKfUq2PEr?=
 =?us-ascii?Q?gkzcPMedg+ECCG0KZwcP2YmxOECFuUZZOmYo9Myy50vn8p+Figjlakvyw7Qz?=
 =?us-ascii?Q?37pPqS/5O3aYP8SeQrKVcEZapV/FJd40OYW+vdHTiSp121HloP45XT/9Xq93?=
 =?us-ascii?Q?8vXVDzvlpo5R9E13m31vfuYCiIhkuFyiD5Up3768zXW8gOfpCM7oD+IJYesD?=
 =?us-ascii?Q?F2Obwzg8yExKzNQrepg8rUb7v1a4Fa9Ua8Ai0oCXxCDB1rz7HmII7IkH+L4K?=
 =?us-ascii?Q?xCB0U2jXjdeuknBurN/Za4WNayfIqknoYZnyB7WRv9/Z/pmmiAOPhLRu/Nrh?=
 =?us-ascii?Q?2SehOJAn7FO+cUBNNXLOzmvv5OF2mPMDTrGhng9TwBCaJwkRpoRWs+BIEcdU?=
 =?us-ascii?Q?aAhGwpyDm6TC7aVIW4laeKz3KKVn9ksR8SnpOLViwDfHPvRpUL8qFE5Rd8Xr?=
 =?us-ascii?Q?cN5tcB8WTOxKYEK6+9HCBGZf289B34A0iOzSSdH9xgggVNv73hbgOSYbvdGp?=
 =?us-ascii?Q?B6W6QOkizk75JfPJVZRa1KSyFhYSJiScQeBeCBkR6yjvAmRem/fAjjcuxLvV?=
 =?us-ascii?Q?i5rvTOKkSmZIddJ17WqdnGyLqvRQqrlHsjInFWp6T3iseLrUz0DX3F65VVtK?=
 =?us-ascii?Q?Aa/bBSD4DijwgwSetDhvpguI6SDrXnKjX7kyccWAVUtGbGTrk4tMNPm44gzh?=
 =?us-ascii?Q?Iw=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_PH8PR11MB697608B75902A4311A328E57F9F8APH8PR11MB6976namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72f1ce58-dd13-48d5-57ff-08de183a935b
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2025 05:01:39.2418 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cK2JtVb8q7qdD32kvvfKkNnsEr3s/ZTghcfTE2z1yXmnbyUX05dqoI/rJ7NxhDliXBto8Uih6LjynMb+1deP1hfOguJPIuGU/l9O81htwZk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761886902; x=1793422902;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=+k7ahDYSrkjwEqKXJQTR0Sp1X31W0T//AojBFRa5ebM=;
 b=F+mlEHLEtkYmFMqzEsianjt+Qa9K58/GvToiZTbTW2cQu+LRsEX/dGpi
 EpUTjwGqnSC7bNuuYcBl2kca1UvHRn8y+sQf/bLi99/aJb9ZqhovJu94Z
 EX3Ekop2ltmST+UyEp4vTJNhlJtUPTG7JMkcPn6Iw8/hfjMoUJNtA8fkc
 642eTD/pnYWK2wyJY/aOF0Vbgs+npPaHO1aOh7IPaAPXaoH7ZxHDB2cwE
 iW1n1GGHWpXhaA9e/z1K7yFuxMFkGZPukwd3YKTFu6YI7aQJJ7DktCtmY
 c/niFvkai05QuEB9wWDt6YjmBhCYdK40bt+7MnF0JhHhKeHGwhLDf0qqz
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F+mlEHLE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page Pool
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

--_000_PH8PR11MB697608B75902A4311A328E57F9F8APH8PR11MB6976namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org<mailto:intel-wi=
red-lan-bounces@osuosl.org>> On Behalf of Michal Kubiak

> Sent: Thursday, September 25, 2025 2:53 PM

> To: intel-wired-lan@lists.osuosl.org<mailto:intel-wired-lan@lists.osuosl.=
org>

> Cc: Fijalkowski, Maciej <maciej.fijalkowski@intel.com<mailto:maciej.fijal=
kowski@intel.com>>; Lobakin, Aleksander <aleksander.lobakin@intel.com<mailt=
o:aleksander.lobakin@intel.com>>; Keller, Jacob E <jacob.e.keller@intel.com=
<mailto:jacob.e.keller@intel.com>>;

> Zaremba, Larysa <larysa.zaremba@intel.com<mailto:larysa.zaremba@intel.com=
>>; netdev@vger.kernel.org<mailto:netdev@vger.kernel.org>; Kitszel, Przemys=
law <przemyslaw.kitszel@intel.com<mailto:przemyslaw.kitszel@intel.com>>; pm=
enzel@molgen.mpg.de<mailto:pmenzel@molgen.mpg.de>;

> Nguyen, Anthony L <anthony.l.nguyen@intel.com<mailto:anthony.l.nguyen@int=
el.com>>; Kubiak, Michal <michal.kubiak@intel.com<mailto:michal.kubiak@inte=
l.com>>

> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/3] ice: switch to Page Po=
ol

>

> This patch completes the transition of the ice driver to use the Page Poo=
l and libeth APIs, following the same direction as commit 5fa4caff59f2

> ("iavf: switch to Page Pool"). With the legacy page splitting and recycli=
ng logic already removed, the driver is now in a clean state to adopt the m=
odern memory model.

>

> The Page Pool integration simplifies buffer management by offloading DMA =
mapping and recycling to the core infrastructure.

> This eliminates the need for driver-specific handling of headroom, buffer=
 sizing, and page order. The libeth helper is used for CPU-side processing,=
 while DMA-for-device is handled by the Page Pool core.

>

> Additionally, this patch extends the conversion to cover XDP support.

> The driver now uses libeth_xdp helpers for Rx buffer processing, and opti=
mizes XDP_TX by skipping per-frame DMA mapping. Instead,

> all buffers are mapped as bi-directional up front, leveraging Page >Pool'=
s lifecycle management. This significantly reduces overhead in virtualized =
environments.

>

> Performance observations:

> - In typical scenarios (netperf, XDP_PASS, XDP_DROP), performance remains

> on par with the previous implementation.

> - In XDP_TX mode:

> * With IOMMU enabled, performance improves dramatically - over 5x

> increase - due to reduced DMA mapping overhead and better memory reuse.

>* With IOMMU disabled, performance remains comparable to the previous

> implementation, with no significant changes observed.

> - In XDP_DROP mode:

> * For small MTUs, (where multiple buffers can be allocated on a single

> memory page), a performance drop of approximately 20% is observed.

> According to 'perf top' analysis, the bottleneck is caused by atomic

> reference counter increments in the Page Pool.

> * For normal MTUs, (where only one buffer can be allocated within a

> single memory page), performance remains comparable to baseline

> levels.

>

> This change is also a step toward a more modular and unified XDP implemen=
tation across Intel Ethernet drivers, aligning with ongoing efforts to cons=
olidate and streamline feature support.

>

> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com<mailto:mac=
iej.fijalkowski@intel.com>>

> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:alek=
sander.lobakin@intel.com>>

> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com<mailto:aleks=
ander.lobakin@intel.com>>

> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com<mailto:jacob.e.keller=
@intel.com>>

> Signed-off-by: Michal Kubiak <michal.kubiak@intel.com<mailto:michal.kubia=
k@intel.com>>

> ---

> drivers/net/ethernet/intel/Kconfig            |   1 +

> drivers/net/ethernet/intel/ice/ice_base.c     |  91 ++--

> drivers/net/ethernet/intel/ice/ice_ethtool.c  |  17 +-

> drivers/net/ethernet/intel/ice/ice_lib.c      |   1 -

> drivers/net/ethernet/intel/ice/ice_main.c     |  10 +-

> drivers/net/ethernet/intel/ice/ice_txrx.c     | 442 ++++--------------

> drivers/net/ethernet/intel/ice/ice_txrx.h     |  37 +-

> drivers/net/ethernet/intel/ice/ice_txrx_lib.c |  65 ++-

> drivers/net/ethernet/intel/ice/ice_txrx_lib.h |   9 -

> drivers/net/ethernet/intel/ice/ice_xsk.c      |  76 +--

> drivers/net/ethernet/intel/ice/ice_xsk.h      |   6 +-

> 11 files changed, 203 insertions(+), 552 deletions(-)
>


Tested-by: Saritha Sanigani <sarithax.sanigani@intel.com<mailto:sarithax.sa=
nigani@intel.com>> (A Contingent Worker at Intel)




--_000_PH8PR11MB697608B75902A4311A328E57F9F8APH8PR11MB6976namp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Aptos;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:12.0pt;
	font-family:"Aptos",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#467886;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Aptos",sans-serif;
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
</head>
<body lang=3D"EN-IN" link=3D"#467886" vlink=3D"#96607D" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText">&gt; -----Original Message-----<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:=
intel-wired-lan-bounces@osuosl.org">intel-wired-lan-bounces@osuosl.org</a>&=
gt; On Behalf of Michal Kubiak<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Sent: Thursday, September 25, 2025 2:53 PM<o=
:p></o:p></p>
<p class=3D"MsoPlainText">&gt; To: <a href=3D"mailto:intel-wired-lan@lists.=
osuosl.org">intel-wired-lan@lists.osuosl.org</a><o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Cc: Fijalkowski, Maciej &lt;<a href=3D"mailt=
o:maciej.fijalkowski@intel.com">maciej.fijalkowski@intel.com</a>&gt;; Lobak=
in, Aleksander &lt;<a href=3D"mailto:aleksander.lobakin@intel.com">aleksand=
er.lobakin@intel.com</a>&gt;; Keller, Jacob E &lt;<a href=3D"mailto:jacob.e=
.keller@intel.com">jacob.e.keller@intel.com</a>&gt;;
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Zaremba, Larysa &lt;<a href=3D"mailto:larysa=
.zaremba@intel.com">larysa.zaremba@intel.com</a>&gt;;
<a href=3D"mailto:netdev@vger.kernel.org">netdev@vger.kernel.org</a>; Kitsz=
el, Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com">przemysl=
aw.kitszel@intel.com</a>&gt;;
<a href=3D"mailto:pmenzel@molgen.mpg.de">pmenzel@molgen.mpg.de</a>; <o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt; Nguyen, Anthony L &lt;<a href=3D"mailto:anth=
ony.l.nguyen@intel.com">anthony.l.nguyen@intel.com</a>&gt;; Kubiak, Michal =
&lt;<a href=3D"mailto:michal.kubiak@intel.com">michal.kubiak@intel.com</a>&=
gt;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Subject: [Intel-wired-lan] [PATCH iwl-next v=
3 3/3] ice: switch to Page Pool<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; This patch completes the transition of the i=
ce driver to use the Page Pool and libeth APIs, following the same directio=
n as commit 5fa4caff59f2<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; (&quot;iavf: switch to Page Pool&quot;). Wit=
h the legacy page splitting and recycling logic already removed, the driver=
 is now in a clean state to adopt the modern memory model.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; The Page Pool integration simplifies buffer =
management by offloading DMA mapping and recycling to the core infrastructu=
re.
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This eliminates the need for driver-specific=
 handling of headroom, buffer sizing, and page order. The libeth helper is =
used for CPU-side processing, while DMA-for-device is handled by the Page P=
ool core.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Additionally, this patch extends the convers=
ion to cover XDP support.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; The driver now uses libeth_xdp helpers for R=
x buffer processing, and optimizes XDP_TX by skipping per-frame DMA mapping=
. Instead,
<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; all buffers are mapped as bi-directional up =
front, leveraging Page &gt;Pool's lifecycle management. This significantly =
reduces overhead in virtualized environments.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">&gt; Performance observations:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - In typical scenarios (netperf, XDP_PASS, X=
DP_DROP), performance remains<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; on par with the previous implementation.<o:p=
></o:p></p>
<p class=3D"MsoPlainText">&gt; - In XDP_TX mode:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; * With IOMMU enabled, performance improves d=
ramatically - over 5x<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; increase - due to reduced DMA mapping overhe=
ad and better memory reuse.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt;* With IOMMU disabled, performance remains co=
mparable to the previous<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; implementation, with no significant changes =
observed.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; - In XDP_DROP mode:<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; * For small MTUs, (where multiple buffers ca=
n be allocated on a single<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; memory page), a performance drop of approxim=
ately 20% is observed.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; According to 'perf top' analysis, the bottle=
neck is caused by atomic<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; reference counter increments in the Page Poo=
l.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; * For normal MTUs, (where only one buffer ca=
n be allocated within a<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; single memory page), performance remains com=
parable to baseline<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; levels.<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; This change is also a step toward a more mod=
ular and unified XDP implementation across Intel Ethernet drivers, aligning=
 with ongoing efforts to consolidate and streamline feature support.<o:p></=
o:p></p>
<p class=3D"MsoPlainText">&gt; <o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Suggested-by: Maciej Fijalkowski &lt;<a href=
=3D"mailto:maciej.fijalkowski@intel.com">maciej.fijalkowski@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Suggested-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Alexander Lobakin &lt;<a href=
=3D"mailto:aleksander.lobakin@intel.com">aleksander.lobakin@intel.com</a>&g=
t;<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; Reviewed-by: Jacob Keller &lt;<a href=3D"mai=
lto:jacob.e.keller@intel.com">jacob.e.keller@intel.com</a>&gt;<o:p></o:p></=
p>
<p class=3D"MsoPlainText">&gt; Signed-off-by: Michal Kubiak &lt;<a href=3D"=
mailto:michal.kubiak@intel.com">michal.kubiak@intel.com</a>&gt;<o:p></o:p><=
/p>
<p class=3D"MsoPlainText">&gt; ---<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/Kconfig&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 1 +<=
o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_base.c&nb=
sp;&nbsp;&nbsp;&nbsp; |&nbsp; 91 ++--<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_ethtool.c=
&nbsp; |&nbsp; 17 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_lib.c&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 1 -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_main.c&nb=
sp;&nbsp;&nbsp;&nbsp; |&nbsp; 10 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.c&nb=
sp;&nbsp;&nbsp;&nbsp; | 442 ++++--------------<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx.h&nb=
sp;&nbsp;&nbsp;&nbsp; |&nbsp; 37 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx_lib.=
c |&nbsp; 65 ++-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_txrx_lib.=
h |&nbsp;&nbsp; 9 -<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_xsk.c&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp; 76 +--<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; drivers/net/ethernet/intel/ice/ice_xsk.h&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp; 6 +-<o:p></o:p></p>
<p class=3D"MsoPlainText">&gt; 11 files changed, 203 insertions(+), 552 del=
etions(-)<o:p></o:p></p>
<p class=3D"MsoNormal">&gt;<o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoPlainText">Tested-by: Saritha Sanigani &lt;<a href=3D"mailto=
:sarithax.sanigani@intel.com">sarithax.sanigani@intel.com</a>&gt; (A Contin=
gent Worker at Intel)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH8PR11MB697608B75902A4311A328E57F9F8APH8PR11MB6976namp_--
