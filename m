Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2059B3DDBB
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Sep 2025 11:12:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 542CA60DF8;
	Mon,  1 Sep 2025 09:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NWQWO1DBysr1; Mon,  1 Sep 2025 09:12:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8179E610F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756717943;
	bh=n9xpjukwZpWTUNqeqNGcQds4lSXohIlkmM3TSCY+ml4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MoMOXu23TYYBjrynCMfwlBFhvTfxUbddHv8aLc+ULMNtHEqW9DJhzre9yEd5qVclR
	 PSc2hxH4nEmSqgexsbf4YwA029CsNlylzUgQ5JSCoULR6YchJJzwC8b0q/Wt3LR6mm
	 pnOjfj/F62nkNup/NZ7Kd5nVzQGgaeqwadMOQim44y+Uj/zD4G8ZhpTF3whzqtaRDi
	 0X4H34ow4I/miyOseTRdTGZdzwDcO3m/pBcSbYleEKRJU057C8TXeMQSsYpGhusVim
	 Stoe0KniMAUlizXtezKZIlmzU7xkY1/V128JtNit1wV/BfyWAirb6m29/71IuZD5Ww
	 i8/ko1rhq6Tyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8179E610F9;
	Mon,  1 Sep 2025 09:12:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EEE57D2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:12:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D4F1C40488
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EWvuSjSag73G for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Sep 2025 09:12:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F198040490
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F198040490
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F198040490
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Sep 2025 09:12:19 +0000 (UTC)
X-CSE-ConnectionGUID: 4PWtT6VDRHiBZWnpWGBE5g==
X-CSE-MsgGUID: zomGyW7FQlq3g1Rfwor1QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11539"; a="69234398"
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="69234398"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 02:12:19 -0700
X-CSE-ConnectionGUID: 37M3nw9NSfmcSHRkV1rwTw==
X-CSE-MsgGUID: skJGTEdSTl+qOLmIUcrYQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,225,1751266800"; d="scan'208";a="171334344"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 02:12:17 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 02:12:16 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 1 Sep 2025 02:12:16 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.87) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 1 Sep 2025 02:12:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y091C9pAxjKIlikCu5MzRTKtuGtY1kVbAYdcKDa5ilbDQUWek7Rlksa/3+M7+0Y9INL1jNe9j0jEDtVCGd17vupkBAThrBAWqBs1fpibRLN9v59oB8uHj9bbah6w0oX2GIDuljGBlyqHdjWM2haFg8vdiHbq8SvkergrWC1wGl+u2RJXQuQdagBmJAKUHTBgnWhHhRM5Y12xXSlXpPhE/OpGtXF8I7Fqgk1GxQ8hGThNixwuCAUQKwd85+xxOJWqr7O9khER2v2VMgrbUzc/ZhL05mGcEQxvIAv6vdhJadhpk31GezzKYWsc9l7qBDkwKvT2S/dE4OW+cSyXRdqbHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n9xpjukwZpWTUNqeqNGcQds4lSXohIlkmM3TSCY+ml4=;
 b=aNdjxlCcSL89fkqoEMVdk5FnvbCIMLY+KcKgcisH5eFE4T/Nor01qY+B7FWXb9uZ8lEdl4D9GaPSUiDGR7Q3AaECypGpuAAI5Z6h5oWeaj45NbSrjmSJSMRxkGEoWa758My/7YQ6z02be2rhblpAMIvsK1SM/Dd7glUFKCsUfyPgz8EPxbJipIcAlNjZTWn/9iEvLH1KKZ/AQFK81MHDpUjKAOEOVa8YopWq8TVr6tuZJBoQOzy3IAYZnXXlKyptjD8OArE8DSE/qk8e/Nc0sf8gIvVk1EEck77mh/aA1k2aIYdUv0bzhKznaYRwvSXD2z4Aa420MkNhfC5qLegdrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS0PR11MB6472.namprd11.prod.outlook.com (2603:10b6:8:c0::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9073.25; Mon, 1 Sep 2025 09:12:12 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%4]) with mapi id 15.20.9052.019; Mon, 1 Sep 2025
 09:12:12 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Kohei Enju <enjuk@amazon.com>
CC: "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "den@valinux.co.jp" <den@valinux.co.jp>, "edumazet@google.com"
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Jagielski, Jedrzej"
 <jedrzej.jagielski@intel.com>, "kohei.enju@gmail.com" <kohei.enju@gmail.com>, 
 "kuba@kernel.org" <kuba@kernel.org>, "mateusz.polchlopek@intel.com"
 <mateusz.polchlopek@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Wegrzyn, Stefan"
 <stefan.wegrzyn@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
Thread-Index: AQHcGraWxpP5XDedcUuXXroPaR1Em7R96VZAgAAYlQCAAAYLMA==
Date: Mon, 1 Sep 2025 09:12:11 +0000
Message-ID: <IA3PR11MB89862877864D15D500133E51E507A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <IA3PR11MB8986BB7E1C9B70B43014F1BDE507A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20250901083745.69554-1-enjuk@amazon.com>
In-Reply-To: <20250901083745.69554-1-enjuk@amazon.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS0PR11MB6472:EE_
x-ms-office365-filtering-correlation-id: 5574b489-6282-429a-453a-08dde937a2c3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?N6bjb8zW9OxHx36Xm878RVrjRDj9vZwPIXR6E15nmiiVf/lwOziwqNAzfPvu?=
 =?us-ascii?Q?vf/srIwPLcEJWl/o1W70zBOqULgB6IPfHDFy1dOTu86sWoXZodJMz+lJ2Ypc?=
 =?us-ascii?Q?eNXolIAigj2EzGVGP2gCIfijeyXIuB1D5fcxbVbWzxmcTt5wD/DAxLedX+Qj?=
 =?us-ascii?Q?oNek81fKFhC4XK77Lyg+EtZC8ctZ+7cbXidEw2yLk4l3xmwp95yLAfrykbwf?=
 =?us-ascii?Q?w7vy179dqxOp04P8tA2nMC9OC4wp3j0dJWCp6ol2WG/d2N++DVj1k3hLthoK?=
 =?us-ascii?Q?cB2C8KrX0MUgUQdK6o/avjcuyV4qPoi1IL59A5756hBByTRrXuUpPA8aUeVs?=
 =?us-ascii?Q?67lnwDIgTQZA5607JRrqgr34hE1FDvxE+KkB+SQWhJLbj3e0pUt2/nAfItD9?=
 =?us-ascii?Q?JoMjE8v0ZkcV0VauRw5Opo5QP6WI3UJZhFOYpuTm6yjgk3/KgZem1Kol84Fy?=
 =?us-ascii?Q?t+BbLIM66QlHJCSna2nTZ1Hn7JYUSUuuCsTbKcDV8QtMxixaZ+In3/bxLiyM?=
 =?us-ascii?Q?6IhzJicccYC4U4/q9GRbvbquxGYH2mE7arOJBeSRcbggYnOOuvUY/+Wir0PD?=
 =?us-ascii?Q?Yiemk2sCUAISCav93whRQnmUufpHFUAfLa+Jg2t6ExwcsC2sSL6L1xi6002i?=
 =?us-ascii?Q?cEV1LU2eruRvRg5/x1gEYejjn3Yuy2rgS5VCvtMW7b0SycMo4sSAxfAT0FO4?=
 =?us-ascii?Q?lMey6EfJJjRbJM7lNh/2HUsWC0ptWMAcpahfmf2QDm56KDGbmDQNutgU6MEZ?=
 =?us-ascii?Q?Xk0KM9nZ24i2sc/eP2yD7q99wHIb00PdpbJ5On+nh0hr+HW13T9kp0TmQz5K?=
 =?us-ascii?Q?pKKKVidSwfOxbogMj4IHzWK8wdeWp/v/UT6RcXvWjBWlVJSdLxclACTb6w9I?=
 =?us-ascii?Q?eLJY447RNAPyfxkqdrZZGFDqT1uXyfLq+On39SRRftYozBJ4Fv5pmb4bauHU?=
 =?us-ascii?Q?u+p36ebxn7RfqPorcaKUKDNLqzosKvpFz1zSSy696mIPgVr5WlYCtPiUILMQ?=
 =?us-ascii?Q?4PLf4rDijspRlZ366mOO0yIgUtd2qvdqlYyXYE2DqB9klbSRbW98psz6lMYW?=
 =?us-ascii?Q?Z9vJ21JIe4s4qLssF/9X7xCNflhGZ72AbXBI3B71rCq9Ieohx3ccoxp7QFsk?=
 =?us-ascii?Q?YOMjNTcL4hl/D07IVWGXnBlH6oyu7N61riie5AAl6o+V9rRIZoTcoPKzU5tp?=
 =?us-ascii?Q?I3sNnOmhtQkNpQxPi1o4gSj4nhIc1ggl4/LaCKcfujhpHb8Xv/6J27a2vBNf?=
 =?us-ascii?Q?392LsZ/DW+8EMuyfs8TwRTsqZqDSgLMyXw0sD9EqPiuEhvyg8cna16p46OWw?=
 =?us-ascii?Q?4A+aGhZLJCNyneufsPNAwqjTaeXZKq1Y8kXvLV78EGk8wc1YYT4c6gVy+jNc?=
 =?us-ascii?Q?FdbQtvrPn8aN/s/l6Zf++BKOBBTX95BNzZmZiB1WQr4A5Rredmb756eqO+jE?=
 =?us-ascii?Q?4XjAhfubS/LDl/YOgP1rllAoJdXqcvQy/JFS40lgPEdN22lEz6v9XEPcFAQH?=
 =?us-ascii?Q?i6EGyUWCb37B6w8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?tQRStW6BILQnzFvW/ppX78YuaAd7LH6Ei4QrgmQcznP6RU36O3V/cKNbLV/0?=
 =?us-ascii?Q?FpWtlzIXTszfTWoyMsXxyBliHnlELSQtEmi7vZ/5hVp8F6a0d3AwOzTvA0qR?=
 =?us-ascii?Q?Y8SCw+n3INX9aX8VK8yoldtaMtQlrBg75RbId2X6ZqS2rEuTqIyV8SHhunY6?=
 =?us-ascii?Q?0GS0B0wZsx1GprObe5OcVtriAFdQwYukvGH4vdk+U4ObLlU8mEti3QlP+Nxw?=
 =?us-ascii?Q?NimfatDZce3BnPMOlVD52nc9ie3WrBCI48P84GHJfC5Ba8TTDSwZIVGQ3a7j?=
 =?us-ascii?Q?WDn29erPhMIS31xrGIR4B1z6XWBMYOhiymmiJgF6Ii3r+/SKQvfCBjuZ7gXP?=
 =?us-ascii?Q?e36+sOA/WMsqpWWdbA+AducIByKWXGgeb2J0vqMoE3u25MJdzwAoECIgepwo?=
 =?us-ascii?Q?6UJkm/smWkf1AztW9PH4CdZoRBpQNLVG23SosjcRw6AaMU0HsLXuz5rt3OmZ?=
 =?us-ascii?Q?/Sb6nLqmkdihv9lgBFLNzurcWT+/CWSBxomGOKvmrNBPqlpn2PduDxLrW2Or?=
 =?us-ascii?Q?HwxZsLq6Ek69N5hrjYLEV7U8l4jVpJngRwfagwcsUS2o8HxjFk9uYiJ8KAG5?=
 =?us-ascii?Q?dmaakEGFACxlAXnIVjmCLI8hRtJh37T0EHE3jgCszRDC0zxcDzf8zgxE1bU0?=
 =?us-ascii?Q?muxUe6isGha7ZmjwaGi0yHN5+rl+jHJnp8RYYjuQtdhVuHU1bC4M/Al6GTxu?=
 =?us-ascii?Q?W94HegNl2VfwYOilC9Z5H0V2JE4MLwVskUSRfP7Stdb9P2RCDbddeJWnkKdA?=
 =?us-ascii?Q?UsxknNqwl0k6RkYkcfvtZWrVCYuh62yyMvl+6TPsx6+tJFA12vu9w3xBacY3?=
 =?us-ascii?Q?8b7QoPHFTc5bko8OzG9p0xXEnUcTA2vWjP2OUN+jjOS9oZtXVW16+miFST6X?=
 =?us-ascii?Q?Op28+0Nkk9XQ8KTleg+mz5/vRNVuHpWrfkowiBODEHznes8Iyz5nY1TagcQi?=
 =?us-ascii?Q?N70aVBtJf5VbgCBI2oFNtjyetQYce9dCbCe7SBKScmi+h05jsqKbJD2JjR7d?=
 =?us-ascii?Q?cG1P/zfoDwUAongp1zmoj+egihYikVNbGaK57iNl7lqNcb4DOoy/9tq7QF0w?=
 =?us-ascii?Q?sCJj0i8JNpc5i+nCttjTXBGcE75xBr6DW2vupYsUP1AIk6zIm7GL3TNs2nOB?=
 =?us-ascii?Q?ypp8Oot/dfHLdKoAQx6m4+A2+nRb+lR3i2Mb6q53AUJG69FWKCQXI+yBdyay?=
 =?us-ascii?Q?oa+BuInFIdRTo4Ie0rL0jHQFvSzD4dasbui9guleZQ/Lrjk5YCPrqu+Tcs1U?=
 =?us-ascii?Q?hvP5VdmlP1e2NAFu4Vw26IjeiyOYN7Owxq4UxCvhcrR6a6cb2fUW2tkh08XR?=
 =?us-ascii?Q?ZsGOkD1boBb88jUSoFOyq17NG9fCI9+1RNwQZ2+FKDLiCSzvxiJpRnLBQvRy?=
 =?us-ascii?Q?CCuNQCX6uc4n5eha+Lz21TCXMwMsFVkgxEIVsTa3nQIE8s7iOhODsfroupMR?=
 =?us-ascii?Q?Q1l/U+6xcbSQhnLEaXFJlOjsiQAvxssUdnZpbQjA5KYmo+6r9DviqIV1zrz3?=
 =?us-ascii?Q?F08iULj1qbsBcIx6D9l31YR/Ku7wrf4MFmyO0zBXYAIN3+ZFExdOnqZuu0VH?=
 =?us-ascii?Q?8buLNyhp6uDonxOuc0lkfPOyDyGMR3LpULtxOdhnx9F3QxKe17lmRqA7xr7e?=
 =?us-ascii?Q?1g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5574b489-6282-429a-453a-08dde937a2c3
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Sep 2025 09:12:11.9429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pxmMZY73xWSeT28JPT4onihwKUWxrfHEF0QfqK9cWQ7iyyP3vpJRwTIg2eZGnXpVdl5J3hxN90WkTvcC51rV0U4/nCGlIJUXW5oOFe3IwDI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6472
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756717941; x=1788253941;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gY4Il2EoyqRsPhLMkEPUA14szfwl7pxk6WJ4K+4vc9s=;
 b=UGoYWxm9vf/0A499hC+KIyh/bAVa476xXduu2gyF1CXibjlr5azgW761
 qI0OiMvwPhi0Ze7NnbEK+dpltmMKGXxRkqDswQuqaBQGXcJJ7SufF/2ZJ
 h/qIzG1DUtOHR3hVwIfUHekp12I1nTXp7OsorLD8rhEPlze0AbodFmuDa
 O4+K3QCev5rkcnZzX1BD/uDoI56DTm1WKSVq8tqUNJ7R19uCv/DaBzf0b
 HBSF4JnsIHltoCCsJAvSZ59L+G2uzszb02NBFEQN2IDMvWJxRmwFQR+o9
 JNuWImC029nyWTWz5l6as62uRZ8mUfNY2H9MtVlAZOJa6dDRz6tFzvDfR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UGoYWxm9
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory leak and
 use-after-free in ixgbe_recovery_probe()
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
> From: Kohei Enju <enjuk@amazon.com>
> Sent: Monday, September 1, 2025 10:38 AM
> To: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>
> Cc: andrew+netdev@lunn.ch; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net; den@valinux.co.jp;
> edumazet@google.com; enjuk@amazon.com; intel-wired-
> lan@lists.osuosl.org; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; kohei.enju@gmail.com; kuba@kernel.org;
> mateusz.polchlopek@intel.com; netdev@vger.kernel.org;
> pabeni@redhat.com; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>;
> Wegrzyn, Stefan <stefan.wegrzyn@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] ixgbe: fix memory
> leak and use-after-free in ixgbe_recovery_probe()
>=20
> On Mon, 1 Sep 2025 07:11:26 +0000, Loktionov, Aleksandr wrote:
>=20
>=20
>=20
> >> [...]
>=20
> >>
>=20
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>=20
> >> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>=20
> >> index ff6e8ebda5ba..08368e2717c2 100644
>=20
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>=20
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
>=20
> >> @@ -11510,10 +11510,10 @@ static int ixgbe_recovery_probe(struct
>=20
> >> ixgbe_adapter *adapter)
>=20
> >>  shutdown_aci:
>=20
> >>  	mutex_destroy(&adapter->hw.aci.lock);
>=20
> >>  	ixgbe_release_hw_control(adapter);
>=20
> >> -	devlink_free(adapter->devlink);
>=20
> >>  clean_up_probe:
>=20
> >>  	disable_dev =3D !test_and_set_bit(__IXGBE_DISABLED, &adapter-
>=20
> >> >state);
>=20
> >>  	free_netdev(netdev);
>=20
> >I'd add a guard here: if (adapter->devlink)
>=20
> >What do you think?
>=20
>=20
>=20
> Thank you for the review.
>=20
>=20
>=20
> Currently ixgbe_recovery_probe() is only called from one location,
>=20
> ixgbe_probe(), and also always adapter->devlink is not NULL in this
> path
>=20
> since this is called after ixgbe_allocate_devlink(). In other words,
> if
>=20
> ixgbe_allocate_devlink() fails, ixgbe_recovery_probe() never be
> called.
>=20
>=20
>=20
> So I've thought that the guard might not be necessary like error
>=20
> handling in ixgbe_probe(), but could you let me know your concern if
> I'm
>=20
> overlooking something?
Good day, Kohei

Thank you for the explanation.
You are technically right (today), and not having the guard doesn't make th=
e patch incorrect!
That said, error-paths tend to evolve. A tiny if (adapter->devlink) { devli=
nk_free(...); adapter->devlink =3D NULL; }
makes this code resilient to future refactors or partial init/unwind change=
s and prevents potential double-free if another label ever frees it earlier=
.
I'm fine either way for this fix, but I'd prefer the guard+NULL for robustn=
ess and consistency with typical probe unwind patterns.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

>=20
>=20
>=20
> Thanks,
>=20
> Kohei.
>=20
>=20
>=20
> >> +	devlink_free(adapter->devlink);
>=20
> >>  	pci_release_mem_regions(pdev);
>=20
> >>  	if (disable_dev)
>=20
> >>  		pci_disable_device(pdev);
>=20
> >> --
>=20
> >> 2.51.0

