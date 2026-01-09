Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A217D08D58
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 12:12:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49B7A40B98;
	Fri,  9 Jan 2026 11:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gC6reVOAOeqs; Fri,  9 Jan 2026 11:12:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C246240B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767957152;
	bh=958paONmY6QOTF53THVonnp1dA6hHSieuvt/X6GO5Mk=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6wjxQwH+ikTALerQ7ESvuO+mH8qVa+dc8D/7LaJjaklBSvsXaPIaCf9+UPsToK1Bf
	 RAPN/uOAPm0IcSpYczzuedFE0eShMGSQplhdsYTKKH7fM22zQMqFVPj1oTrnlUSkg9
	 yG66gmt4HYm/DqnnV6ekjk+dAy86QLYLItxnpSws1y68m9t8edyYVZyJ7eIS9gEJa7
	 ZAWx1t5qocjSCXzTweTVI4p04qMuosufPTqdesya7b0+xiSA/fnfkGFj7suqx0Ss+w
	 0zgUBeE8uFz2g60oc9te/288SnsbUQULervo2CvGur23AXKjwkCxZbpqH9+toZciub
	 q9iyCsvtnIYhQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C246240B9D;
	Fri,  9 Jan 2026 11:12:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1844812E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 11:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 64C35607F3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 11:12:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8bt4IkYAnSol for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 11:12:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7640260748
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7640260748
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7640260748
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 11:12:30 +0000 (UTC)
X-CSE-ConnectionGUID: YowIQRNwTJ2EEGNpFBg2gg==
X-CSE-MsgGUID: hZP2WrWlSHGSgpryptuyiQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="69076201"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="69076201"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 03:12:27 -0800
X-CSE-ConnectionGUID: EEj4jhSzQeeBpKcQFL6eQQ==
X-CSE-MsgGUID: uPNyS6snTbOM4pwGnQ7AIQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 03:12:27 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 03:12:26 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 03:12:26 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.34)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 03:12:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K/diau2n0KA9g0FxoEgQBWsXqP4ieq6LPq1K7BNA6eDbgIYpAlmWBfJFtcdrdGT6QkPgSngI677RsUIscumJoSlFFUu06UUi1qHs7H/UjWSZoeDiUH3Qia72NZ33HVoaOzZesM7KfYOYK/rVCmzgPVW2p4NRjMfB/q/QUDngDQlL/FYRe16dPKN9o5vxVep6Jqu9f2PlQU8+0JH3KKGAAaemjNwsJLaQpW/sl5nps835h8boy5v1Kd7SthV48BLm1WXa/+FM95CB+bEzgvDM8Z/sgWj7KC3FdyxXBoKpUhsNggSvr/0KabswKgECfVSjQzSH+Z3EU19UEE5164gFMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=958paONmY6QOTF53THVonnp1dA6hHSieuvt/X6GO5Mk=;
 b=yv+0N5CT0T5qmDoHRpPS1siX9xTqKKkS2jysyjfVyrwgVdO1F9LWQ5gPYYyKleVknADwS4+yXuTxrAJbwTOWJy5r6kYAR7NkuZ6MxkVpwledx3toFrwzwjEzG1WMy4kFWQAJV3EgNuLkCzb2MJTnmk6WEMFCO68eJLUpCKldUPWYtOq/hekdMQL2nlvq12jphfYQeUs+vzl3UKAx0rkC9oC8LkUscP6mOek1KtyLVrs+SETXSbX4bIW00JhCr1zOk1DRZfN8TyLMnOfEeHKj54sDSnbzPNwGZKTMgwaRoz040YPQtPJSs1Y45THAC++05GhCK+Q+Ocy+o06q1OOPEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by SA2PR11MB5179.namprd11.prod.outlook.com (2603:10b6:806:112::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.5; Fri, 9 Jan
 2026 11:12:17 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::7ac8:884c:5d56:9919%4]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 11:12:16 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: "Greenwalt, Paul" <paul.greenwalt@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "Greenwalt, Paul"
 <paul.greenwalt@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ice: add missing
 ice_deinit_hw() in devlink reinit path
Thread-Index: AQHccGP5SmUtbJpbQUuiSy7jGTUjL7VJrzMg
Date: Fri, 9 Jan 2026 11:12:16 +0000
Message-ID: <IA1PR11MB6241867C654D120BDCEF78D08B82A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20251218133653.343631-1-paul.greenwalt@intel.com>
In-Reply-To: <20251218133653.343631-1-paul.greenwalt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|SA2PR11MB5179:EE_
x-ms-office365-filtering-correlation-id: 90bf2293-b4fa-41cc-d09f-08de4f6ff2b1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?E541du1STrtkI/u7Ssb343MaRFvkm9Os7TTv+D3DuzCPfTcT51V3EvkajhZ4?=
 =?us-ascii?Q?4D4oNZItE25gvmbtvgXfC32Gej68EPHoeUosf52chy7FHRDGAZRJsns6MJ70?=
 =?us-ascii?Q?gp9uEYSx80RiFCMGtSHCCwxRtHulxDed6XKihSnMF5bVFS7KA+QWaGC3rRf0?=
 =?us-ascii?Q?45f3dABcI88m97k2U/Jx9EXMQDOqzoAn+JCso9nypUcSjmua07Q5YQXB3emC?=
 =?us-ascii?Q?DYejN4B4pjXymPrho/uoPZZ/a2bNCdLHbUdIL8FeUAHbyGKwRjyVlkV/kyV/?=
 =?us-ascii?Q?8GkNzrgu1w8soukUuslzU7p1eUm8fWfbk0jCQj6eeYoLMEYtysi5+sf1g6zf?=
 =?us-ascii?Q?29Q0FKfZE31z7qLvKyw0Rb/tqtC83zcHIVWCx1Mq6cFqHgMdsXqs4iH+/QT/?=
 =?us-ascii?Q?8waaK8b8fPDsKu6S/u57vLrz9WOb+n4UYoiu5kWw3rb4VEjx4LkkRHq8CBi2?=
 =?us-ascii?Q?BRRWlUTiQLUM9U76oc6HVPrPWAwFGsje+RmDLDGwNcn3yC7tApnstnVTiRJd?=
 =?us-ascii?Q?bp5bSnJ5xY3h9FC5fDghZFKlekP2pDmphMyMG+FZWHaVcKvnQip6vM77O196?=
 =?us-ascii?Q?FAYq7j7KVHhX9WMRrBalzKPaJnzgrw6SndZi8KFCCZiQSH6ofIKQyIrwUK6L?=
 =?us-ascii?Q?WGGTu9SoH5PL0gir/qynVhLmSLt+qY5iHa74OQsBhcOoUGFpsoze+vsHZdBt?=
 =?us-ascii?Q?5zFN5f73TMMP5P/4a+cFZka0Y15Ch/lr0SOPRD1OWLa1Edn6beXgZFxGa+ke?=
 =?us-ascii?Q?P0jkj3IoQh1L9+y+Z3rJuK2v8/6nlyJ4Jt4fjFKpE3vfAjxNxkR5Zlp9P5IT?=
 =?us-ascii?Q?qhj1Nc8dvxXZJN80D9axM8yXj+cQvZSfofNbhm87dDgFaIkaUElD++ZCJXMq?=
 =?us-ascii?Q?zJg8BYFojsy8rLWbfFqmoNCs65Wod9aHvngjvMk26yOaiNENpvSa86gt5IM5?=
 =?us-ascii?Q?63Ojozz1mGyNeS3b9Ge5dcnUVmYtkP4Oav43uh5+a5Hk0Uv5V2P9hDA5/Y2E?=
 =?us-ascii?Q?GsWlHcYalSM86TADYNKEhmx77J+lc97iAMgrhQ8jm1qaM/3RaBQpdvNWL+bd?=
 =?us-ascii?Q?uBsOFNc9AWKh0FOokxG7U5mZm3iEVNmH2CKxqwIDIMIOH2xS6yQ8eHLCT5Wt?=
 =?us-ascii?Q?B8YTUWGVl3xSifw0xty/IA8rll6HXmIbCH/ivywx0FLl+K+aaFOSEs34ri5V?=
 =?us-ascii?Q?QnsEmRP0caJuShJnhPMrRV5iTHekox5xR+BFnONjUbpRBpBj4qm2Z4e47k8M?=
 =?us-ascii?Q?t+2oNM/PbUXHHRA4kpMC6iEfG9i/hRDOtVIu6gXnY/OAJN3YdecuVMTPmQhe?=
 =?us-ascii?Q?8ofKyf5+d/CguG30DmLkG7HrvqTljDTwcaDapLhOrgBr2kVRJgKb/Nk5t9cI?=
 =?us-ascii?Q?iemEEsMQmaUEvpzKdVobuvcFMpwVBqeV993Onreqf7lReZCFZ5jcObcZv7HK?=
 =?us-ascii?Q?RTaaflGV5X784u1swe5oeuWBlsX4oa+vIIw6XBstVkcOXHp/NskQvUuA8BpN?=
 =?us-ascii?Q?vXJhyOiWGjwSVPle31V3Ed2UaKKWREaV8Twu?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nnAyd+k7rzsTp4jVydgvSoMmsHecsR1Sk290tRLG8YmlMjA7yiV4HS3/gtmf?=
 =?us-ascii?Q?E9psQsbNiTSc4xKc0TF4SVtaDNzwdOCPhuRzvh0vKyc1QBDEh9HN/Kd0eLef?=
 =?us-ascii?Q?JmHkVb9Ncn6KZsRz9Vi51Vdw0cNAQDiuikMuCEns4V2uFkWFApKeETyD2vgg?=
 =?us-ascii?Q?HFo9LW2t+NCCFnLeE7T3zLFseehuUwYD1QezVsPgMifaZms7y16VobsaZJzz?=
 =?us-ascii?Q?yhEkHNr6tm88uvjNyUYA8upSkQcdDRSGz5ae7XUc1aFWITIcjve8akaywRs+?=
 =?us-ascii?Q?DRMSOdJXTss2Fgzc13lIItBDx2IWwcxtIoPlCIX2S0e/vf8A6SuzOoZKnwMg?=
 =?us-ascii?Q?h0e/dih8e2Ak5qyaftmPQUd6d1L8VSrvViiZ54xioNXOl8BLzUyjQgatI/gw?=
 =?us-ascii?Q?kgtcnb9noBeEd7l0g81uGjE0J64dBAGvq+v/H7sX6gdP7JFZof2NkvXYOS/K?=
 =?us-ascii?Q?LIDIYTIqaEjRoKHnotfYVNllQSxkFFbNHidOLK0Hn3eekaxra+OnMht2BhFZ?=
 =?us-ascii?Q?7SfqmXk8kn4cfEkEY4mqrjsMiAGiIHKjgKkx3LvFv7xnNm97COptYtZ9REZA?=
 =?us-ascii?Q?qjkNcYTANghrStbcRSTbzYUXDl8kHMNH2lR761kZGMUuuxE9ejGyLq6NzpAo?=
 =?us-ascii?Q?ootMtMq9j3iHSHjk5CLWI3MacuPUeLH2y+CxhTZr+b2EofCw9VOlW+l3A6Nk?=
 =?us-ascii?Q?EmGsQH3pcs7tYt2U04uk9HtaNzdwD19rn2lZXkygNMTqV5iO1Bayl2De95oP?=
 =?us-ascii?Q?Ozvad4XRhQuke05FF76xqMFFKSV4NoqxQ0ZDm0rUCO4DpoF3vT2asX2NI+mg?=
 =?us-ascii?Q?d2WYwZKR1HdOSZOfyIIr3HZ9JmzDX2Az3iGixes1tHvmR2bO70mQxD46PY7Q?=
 =?us-ascii?Q?4xByAFMhd+8Iwa15yp/fApbDTR5ldd71ueJIVJFKB/ShSBIRAOVfbfmete3T?=
 =?us-ascii?Q?GJ1fJoXsqJxeIqlcBcFbzleNTpl/aYGC769vTjD2CMTqZ2OEN/B1ykZL2jvq?=
 =?us-ascii?Q?cjCLLr01XvinX6bFg08FfxDAyms4BTR/PxyKokIEs/cnuIMp/KPZqdSM3OR5?=
 =?us-ascii?Q?afTqhbEcBwGDZ8jqRFPtlyNOHio2InnCASMcHeEUeH2IMwTRn4CM+VGS5Wny?=
 =?us-ascii?Q?RV38YG+QyUDdvMVBiJJRTME8W9+7bHGBgiYc0tItO7Wyoe+sPgLCLco4u1nz?=
 =?us-ascii?Q?LZTbumV+fB15FtR3hiHeeHYiLCUW/9Tvh+v16j01rMyaQWLIirkifx7NkeSK?=
 =?us-ascii?Q?ZOSOIUHwwWw/DiSJ/TY/WsePCdHew21vHxHsTiVRUeddFaZotbLJRRvNssfS?=
 =?us-ascii?Q?8c9p6DJI5rO+w1BbNGIJMF6l4326ZcqdidRzWXkHFipy9rOWXGLyWjFPhgks?=
 =?us-ascii?Q?sVO/KRH4eKG4t0Xbcc8X6qH1cx9r690SUSYN8KMc5aVQfEkr3f5KTNFV1Y+R?=
 =?us-ascii?Q?zcNzwHV3RTQpckIHpbaCJ0xVd7zQ8Lz0KNb//zZ2Yxtrt+0l3DZqmFjrTnMz?=
 =?us-ascii?Q?0Csaq8C5oAg5Xy1qmo1PnTp9ZP9JlzjuXldsfWkO93OBVju4Pw1bgQcYJFpG?=
 =?us-ascii?Q?pHrOSZZ+ip2I4XJ0wO7bcjSAhLtkIk/1GD8/OzJNS2kfn9L9FHFwMCw8/gaC?=
 =?us-ascii?Q?kT/PprJtSHRGTPsszhd5FX0sE1EfflpAuaV2QxGKg90D542E8dxb4go+EOG/?=
 =?us-ascii?Q?yCWxH0wDGWt0rIGbEcN70PiWW+kDJvIYW7askxySuhYS4oyi?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90bf2293-b4fa-41cc-d09f-08de4f6ff2b1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 11:12:16.4839 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HFT/KP+nxrFYQbbwSJICSEM5mgXk60MnnasAw3WmX4b8d2Z7hfKTsUveeMTB40hGfRsEpNyGPiS0KzHszOzcrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5179
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767957150; x=1799493150;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ONNfNQG1dlU35HsxBOdfanFVyMjkXNUzbpmz6jKqXJk=;
 b=nnFkn4thfMSRSu+pqBwmry8TDKeef5E2BmARUuvytRVCbEK3Vtb4u6vC
 LQr97Y/fIp19Cy7NXl7/u7cRValKFx8cQ0noAUnz6nksnc2Vn3eErSZIl
 e9zlOd4AsPfpMMxsldW7TAmfM5bL5yMSpYKmzz+uIzCqqTPALvjsBWbHU
 e2Gy6X7MQSBank0JAtNytOZWXLWpzRiiltJCiTu3Bd2QTrjKOYQXr2fZD
 kaSYYzCRFmIyxv/tkITHPGaA4KppRow7dRKX4NRU9sDzCR26tvgg/q4Tz
 PVfKsrZHWtJTbcBPovsegx1RDlWbIZK6MaRqIUYgt3c/8Fkf7/9DrnGTC
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nnFkn4th
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ice: add missing
 ice_deinit_hw() in devlink reinit path
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
aul Greenwalt
> Sent: 18 December 2025 19:07
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; Greenwalt, Paul <=
paul.greenwalt@intel.com>; Loktionov, Aleksandr <aleksandr.loktionov@intel.=
com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: add missing ice_deinit=
_hw() in devlink reinit path
>
> devlink-reload results in ice_init_hw failed error, and then removing the=
 ice driver causes a NULL pointer dereference.
>
> [  +0.102213] ice 0000:ca:00.0: ice_init_hw failed: -16 ...
> [  +0.000001] Call Trace:
> [  +0.000003]  <TASK>
> [  +0.000006]  ice_unload+0x8f/0x100 [ice] [  +0.000081]  ice_remove+0xba=
/0x300 [ice]
>
> Commit 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on er=
ror paths") removed ice_deinit_hw() from ice_deinit_dev(). As a result
> ice_devlink_reinit_down() no longer calls ice_deinit_hw(), but
> ice_devlink_reinit_up() still calls ice_init_hw(). Since the control queu=
es are not uninitialized, ice_init_hw() fails with -EBUSY.
>
> Add ice_deinit_hw() to ice_devlink_reinit_down() to correspond with
> ice_init_hw() in ice_devlink_reinit_up().
>
> Fixes: 1390b8b3d2be ("ice: remove duplicate call to ice_deinit_hw() on er=
ror paths")
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> ---
> drivers/net/ethernet/intel/ice/devlink/devlink.c | 1 +
> 1 file changed, 1 insertion(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
