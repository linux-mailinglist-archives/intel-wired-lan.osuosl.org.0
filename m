Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOCTCHnRGWoFzQgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:48:41 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 733F7606D36
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 May 2026 19:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E88E442115;
	Fri, 29 May 2026 17:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3jzjTR6ALvbs; Fri, 29 May 2026 17:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5551842150
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780076918;
	bh=hyT4DLmCxPRBZKcWTnIT9rQF4AX4OCTyM12+l4rYeDI=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PlXzT4pR8r4TooWL/d0W6FEqAqRjWgjT2pV1UwQ2KJTIb7HSmVxByvjgZ3fqhTOg5
	 rTY2Wl9pvXksqRggP1jZkAk8f/WOV4n307xHay9JxATN1dj70uYkkwMdxMTAHca29N
	 rbEeSNvSnv4ypxaZlnNctMW6kub5184AhlfJmEO1xzziFuJR3eREpP85bdcpPgD5y1
	 sFGZG3gvc2XsGeQH+pM9vcUsjQ77leC6yn73eOu7aVWQqr497qeeiNL2EkAis76ZXb
	 loKztTnlyd09K74w+TAVzod37tCeBJJodMqbM2R/qspWgDojsuys2o0tzobr4dPAcZ
	 4OfScQP5jHOtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5551842150;
	Fri, 29 May 2026 17:48:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 01900D3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6A3361542
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DIVnDgoltSF5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 May 2026 17:48:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=alexander.nowlin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3284F614DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3284F614DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3284F614DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 May 2026 17:48:36 +0000 (UTC)
X-CSE-ConnectionGUID: gTMKiJwORL20KRIuas2sVw==
X-CSE-MsgGUID: 9/3gQmcCTGeyhCNBFsNjkg==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80962204"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80962204"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:48:36 -0700
X-CSE-ConnectionGUID: mPN6BzFPSBCVa6jKlSNu4A==
X-CSE-MsgGUID: BebSbJyESiSH/X3fzigD+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238526298"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 10:48:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:48:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 10:48:35 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 10:48:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dnEnstBqAz9Rsmq1CgMnoHucuCmsq/aHscC9lJFgsRx3sMfyDVtJjKESwCGfPH1UiIuBV5g+yRte4iAd7+1Cve4oMtYSEIYXoBp9kwLotA3fE2ob7Jv18lRLzrKC96gaXWcUf94yQ2jPpAutbF5k5yIKcnNy99KK2kHeggPkxtPAJzB9/KGN6ucPQSaqpQiKvwekpWBHNHCS3yHoEAUakIBQiV6UzdptV+LGRocs6by8qF5eBQ1twP8mWI/QTUCvRFAMgKTzBdiv3ur5tbFcwBb2l6BfAI11tk2mk9j2dslKqbMi/4fT8w/HdTepJBS17wV9NQzlhdrRiJsjus8HwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hyT4DLmCxPRBZKcWTnIT9rQF4AX4OCTyM12+l4rYeDI=;
 b=QCXzxPR4R9tusHcV7w85NLFLowK6ZSSUQ1s51DetYnh2i4hhi2YycgCXXcQnFI79ya5pPKICYkcX46g4BOo5XGmQcXy6eczeHG1F1YO3svAOIw1KCZyUgFUyvT9fdMFFhgTyXVFGj35RLNZS20DstNJqvAYCNCJTr+R7FmoqrqaUacnLNw/Jf6fMOYH4vfXL2vyHh454Hh8bqyOPbxeKw6ftWxf6U09DaPbVi1s1+UT7wBxOHCIoEzXFyaBrBMkvK1hz3O2jiVbEBpmwYjK4meq0zAfEcCE6ATo/92ue/sF5xS5lkOE+PFMX4DfVh9wMeT2nZ1BZHAGol6c47546KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV1PR11MB8790.namprd11.prod.outlook.com (2603:10b6:408:2b1::16)
 by SAWPR11MB9760.namprd11.prod.outlook.com (2603:10b6:806:4c9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Fri, 29 May
 2026 17:48:29 +0000
Received: from LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a]) by LV1PR11MB8790.namprd11.prod.outlook.com
 ([fe80::27cb:7a60:19bb:584a%4]) with mapi id 15.21.0071.014; Fri, 29 May 2026
 17:48:28 +0000
From: "Nowlin, Alexander" <alexander.nowlin@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Penigalapati, Sandeep"
 <sandeep.penigalapati@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 "alexander.duyck@gmail.com" <alexander.duyck@gmail.com>, "Czapnik, Lukasz"
 <lukasz.czapnik@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v4 10/10] ice: use ACL for
 ntuple rules that conflict with FDir
Thread-Index: AQHc6SB+nh2vB8ln1Uy6TaGJGIYvj7YlVFHw
Date: Fri, 29 May 2026 17:48:28 +0000
Message-ID: <LV1PR11MB87909A05259F81336C97BBAB90162@LV1PR11MB8790.namprd11.prod.outlook.com>
References: <20260521115000.4637-1-marcin.szycik@linux.intel.com>
 <20260521115000.4637-11-marcin.szycik@linux.intel.com>
In-Reply-To: <20260521115000.4637-11-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV1PR11MB8790:EE_|SAWPR11MB9760:EE_
x-ms-office365-filtering-correlation-id: f49d4525-3e9b-450d-f194-08debdaa7dfa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|4143699003|11063799006|6133799003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: vWW2T5A7MgSZD3YORHwosPSUW+4wd/szs5wOlnwuEPlVzHsAqkLenJfzqno4iY14KxJ14IbqcN3zWOdUNlC9eS802tti/5rXu9l8ncUCxlCRO8OJQ5ucebd1Gon6BZuwKTGlsvgykF62CVzxCDrdjBVkQ8Ues1mK932D5EG/xdTg8Npc/x/WfEIDEoY++AvA10cRm8I4AXKKzfzle5JyG0wrMAbZEAvs2shRv34bXhuZRsmB05Mm+UpcMuKCx+EXMZFVi49CFwVEHBXMiGF4PM8Mwho3hx9zD6//Uf6e0Vkr0KG51OLqvaCXJ7/p+86q5p4FY/ee9SC60TMWPTxPZf1O+8dlPuSp8YWh3jWBOyDtgSTAaGFDxhHesOh5Rb/Wnt8zsJJ09MhCwwKuRKeuAzN5/sz9AXiKFz1/Ke1YG+QXK3pWxdM0+5X/BJb3WJco3Wk0Vz5/YU+bM8h5YqiR4y/d5Uii1a/zhaGjA0shmnG0pdqb+UkvEC4EzdhokzVYoWVvIo0v02yY2xnLBJMMOBgTk2gYgjeuhvi33maAl5ztDzasFlSbWanUxL6CP53OoIXt78TCDww9IZ3IcF0TS7jxSoHunUjdAImOOvCyxxvqv1181KxfukLA+aL4JJD6iOr8g2ifcvtrXmYY+ENuDioOhX9xckK7flluZzGFxcdUu32Gm+W01OcGxpxiuOVsZdQ3zDPPQ6Sdv43v0gQ6n55KoxwXdsW4i37xa/Pzl3FdekTwF3vGM1EVF/AJSv+V
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV1PR11MB8790.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(6133799003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rABKNsQK77cQOt0zt3KtWAPOl6qD5x2ZcdhrKDlEdqNgWdOTm+0uD3hvjROY?=
 =?us-ascii?Q?xEPD2srKlIhrK6BqKnvEm+WmF/ESILkDn3imNkGyxXHyvZeumSSHxL7ariKL?=
 =?us-ascii?Q?WG8b2nqZP8RXb3QM6ihTjiNdTG3GaQEtYql/RmGlleTTsT7BMVkAo0uA1cSQ?=
 =?us-ascii?Q?akf1lPaf8+X3R/eyJPZcgrF61MPyU3lXB8wRER6pqhWLQbvD0uYIOY6CGODi?=
 =?us-ascii?Q?fyhMQGN8l1r6Vfd4KwQPsY6Qy1GoJZhmwFaV51Buj4o9CFaLJo4HjZdiFaIg?=
 =?us-ascii?Q?YvdxY/QQeiUqNvwKJNut9oHN1N7KFkkIfTyYiz/LaRoXYCz56lNuwnIZIpwj?=
 =?us-ascii?Q?OND0QivloYOsPSmKG6diy4XYfgmsQKOYiK6LrHCVhojWNuLDYUiX2sd6dYYH?=
 =?us-ascii?Q?K5bZKGPtu0iqZGxnJmn8WMcoPUtEG/6r1hdc+k6zv2TcIIfFinHeHnVgvw47?=
 =?us-ascii?Q?3n228/Pa0I6QWuc05LUjpzC3BUZxLMzMK56WK+TQgOkTAhGAxUDrwvMui7nT?=
 =?us-ascii?Q?mC/SLiW4766bUuwwY4CswQftXVMjzXtVA3tYstUYxo+Rm89HSBwmrt13I5pG?=
 =?us-ascii?Q?FBucgqH0EPA9vRq7eX/VoFFpA1KaQGyUiEeGI0gjILIRH1IuRh5rDDvMTefs?=
 =?us-ascii?Q?2e3ICIRVM7Wzcu7gx6mt15Fe6lIK/AFguaLPQ7vW62iLuJrwnzSzhcfzq9y5?=
 =?us-ascii?Q?miFf7aoPRvMCzViWMtUr/Mmajg6ugxizhg9TFdo5Oss4wY+rZic4HMhMrIZ9?=
 =?us-ascii?Q?1lqkhXWutBwEAKxxe4+LcHkatDu1MnPJA91SNpjN5g6ccyENxnPnGBrN2oEy?=
 =?us-ascii?Q?LdfgkXy2z9tu8nbtduZqFZfw0HvsEcRv9ZxsC8Y3pmDF5knVI98Qt6iLC0eH?=
 =?us-ascii?Q?4JLe2WRw8M1mtaO2yCMi6FIkC0604Q/Z6OvCLYouJ5Qgf4FXhld1ytexiN3G?=
 =?us-ascii?Q?//6BAfciJa8VIAKEvqA0jb8EdShKP9Uu0jPc3mGa0cIjirWXlYjdoopj8Brl?=
 =?us-ascii?Q?SpI1i38QUUjQffCwrzdSNYOSItxi+uL/Q1GO90ZvX3PksuPGepeN+OwqC+6c?=
 =?us-ascii?Q?Ho0+tQNt/6wZj8oztApB+6ll6Fucuj+nTacUX3uplXyYgKF0hVw68vZTYwt/?=
 =?us-ascii?Q?r2VXIpFU0vGh8Oo/3H0S2WLBKXBXCSqAufg7v3tTBUPNxihK0Yzq+jUUle/e?=
 =?us-ascii?Q?2qb7gsZIpObqkUwHQdAomFVE5YhlWYznPd5Edc+5TDp30fpvuVJSUh0FnADR?=
 =?us-ascii?Q?zrDUusH50FHwAmU+cI0NuejOtE1VlIh5Rt9Md8lgbgmgSR99EYWzO0cmdyRh?=
 =?us-ascii?Q?c2TFYM3OS3vz/UtSYhlxa9Y6lQVllWU9clSXqPAgRr8jVpink07Mhwyky3E8?=
 =?us-ascii?Q?RcPdRQXCNYt69+wVB8LjACU8nwnly/LwhxsKtM8qBcnrwh99oEruXJOWfB4c?=
 =?us-ascii?Q?zvkWluaxQTfa6RM0cwcCHXocALxm85jhqW6FHyhjNvPJ9lzVz4K5E9n+1EOm?=
 =?us-ascii?Q?i//fqNsjnCuzEzvlQSRI3OnUEnCzJMOZIvQ15fxicRluhqi/Ns7DjVLjsL8u?=
 =?us-ascii?Q?vF5Bg1PEUr3BLwhtxZPO1Hhw1+cFUijqRURTMowUHl7o4D3OJ/rUitDD4nvT?=
 =?us-ascii?Q?upbSuTCi9FRw4puLPKw3roTalSnkKyzUZRVqKEP4RhKYs8KNJK5SjAC6o4VL?=
 =?us-ascii?Q?IRCDBxRC+rcCnvYiFSeze3ahLZX8KxIm9kEcEvjuZ9cf7PF99XnWKRF+JVyX?=
 =?us-ascii?Q?I+Ns5vC6mg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AnswJh2H49zKGlYMGBOQziBbyQnLv5YsSwPaHLhe8nY2EkVqmkZbVxDYm83a1omrPumbVkkLcEmixHgb+hT+0l2zAtTqvLxX5SfTdzLBhjlEpC3Mjre/B3yD32ymbwCd6tT1He6znHJBaUA+k0VkPil2He2qlQbilqXZky2iDci4lhoOkMLsk52hC9bFMXNVhqavVR/pgqc6oIzuFn3aktLSixmcVU2U0DHfLixtJNxFQmiu35lxF9eLNm+edcgsjbSrJdNtkkNnIMUe6HwUpc2IqHVdBXY3Yjr26laHu4Oy5uyBXnz7ZBZW6bjc8iasLNiFr+MOp4oGxrJE3O+ZLQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV1PR11MB8790.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f49d4525-3e9b-450d-f194-08debdaa7dfa
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2026 17:48:28.8403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pjV1sNiYWLGJtqb4iGRapWXTQIEJBxAJ9Hlg/v52OOULRNaDNz/4GuI1tqjYfCYiYGWfzq0lS6OuakGvfiULgAnfhiKtqEab9RqyBdBXvmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9760
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780076916; x=1811612916;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WrhXVefpfMWm0r6tqaCFRg+ThNLRz9WSsA8Dpnabkaw=;
 b=YsaCMhFSYL2HrUJWyE1m6gIGMVzbBhhk8H7BboO5WAKJMP2ioeYaXe86
 w4t55s1ILQqO46JY8AtdDL7oTw9InowXo5WBSgtMTNDfL3RRZCZegRZp2
 8bfHHlBvikCJ/M/vwoLtG4Zg9L8+7yeVMkJclBXvBUSIJmO3g2TcPn4t1
 MQ4J0PLlpakZkL5edNlnSsynIt/5oWv8u9Rbm4T7cWqN238ZPc+68pbY7
 enYqPUPhR0HMkbRjLsZ2bus2DiGTl6KSFA0C9pk7WvQnbF9ijgHJmN58u
 SMX0dG/i7UXVpdGZTFLF09hKEzvniFrv2L43B1/qM4trIgU/4ZQ9Tawgc
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YsaCMhFS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 10/10] ice: use ACL for
 ntuple rules that conflict with FDir
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:marcin.szycik@linux.intel.com,m:netdev@vger.kernel.org,m:sandeep.penigalapati@intel.com,m:ananth.s@intel.com,m:alexander.duyck@gmail.com,m:lukasz.czapnik@intel.com,m:alexanderduyck@gmail.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,intel.com,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alexander.nowlin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,LV1PR11MB8790.namprd11.prod.outlook.com:mid,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo,osuosl.org:email,osuosl.org:dkim]
X-Rspamd-Queue-Id: 733F7606D36
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of M=
arcin Szycik
> Sent: Thursday, May 21, 2026 4:50 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Penigalapati, Sandeep <sandeep.penigalapati@i=
ntel.com>; S, Ananth <ananth.s@intel.com>; alexander.duyck@gmail.com; Czapn=
ik, Lukasz <lukasz.czapnik@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v4 10/10] ice: use ACL for ntu=
ple rules that conflict with FDir
>=20
> From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>=20
> Flow Director can keep only one input set per flow type. After ACL suppor=
t was added for ethtool ntuple rules, the driver still only selected ACL fo=
r rules with partial masks.
>=20
> That leaves a gap for rules with full masks that still require a differen=
t input set than the one already programmed for Flow Director. Such rules g=
o through the FDir path, build a different extraction sequence and > then f=
ail because the existing FDir profile cannot be reused.
>=20
> Detect this case before programming the rule. Build the candidate IP flow=
 segment, compare it with the active non-tunneled FDir profile and, when th=
e input sets differ, offload the rule through ACL if ACL is=20
> available.
>=20
> Refactor the IP flow segment setup into a helper so the same logic can be=
 used both by the extraction-sequence configuration path and by the conflic=
t check.
>=20
> Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
> ---
> v3:
> * Include flex fields in test_seg to avoid false conflict detection
> * Skip conflict check early for ETHER_FLOW
> v2:
> * Add this patch
> ---
>  .../ethernet/intel/ice/ice_ethtool_ntuple.c   | 168 +++++++++++++-----
>  1 file changed, 121 insertions(+), 47 deletions(-)

Tested-by: Alexander Nowlin <alexander.nowlin@intel.com>

