Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B699B22E47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 18:52:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AB5064291C;
	Tue, 12 Aug 2025 16:52:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c1Ze7oMeChv3; Tue, 12 Aug 2025 16:52:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEEAD428FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755017559;
	bh=fvjGVApJRZExJ6lnDWNCCITmnEptS4Xf7V1Q3thgUKE=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=J5CKP5ycsjoWYO8EsBKCV3GVH7ZrgHgaTCap0LfOWmlHMtOKIS5/ly7gOFKveTXYG
	 reU7HklOfVRpD0ajpRNMR1Jo3fiLyvPmOnSsq2pXjvPdiLz1yBpRR9aNSPmRbasNxF
	 sKf24CumjKEOYVMObmhyRx7Wlodvu6mEukDQzE0Wy8zdsHMkkOm403o0UBuQqjOATA
	 VSEil9tehgElBnxPSc1QACgvmJSjvr7Od82JzegEbVvMtO0xk6r224uXmeGtjyzjn+
	 +Nxp3Ca2H8j5daSK+b/6PuO3kwvbD7sgcQDKw2r58StudG+M1bEIGhLl5s2eiwbl8R
	 CMtyFZk4t2dNA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEEAD428FE;
	Tue, 12 Aug 2025 16:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id C857C1C9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AEE19428E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BhL0I-hZRbOA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 16:52:36 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 16:52:35 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C3EEF41CF0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3EEF41CF0
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C3EEF41CF0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 16:52:35 +0000 (UTC)
X-CSE-ConnectionGUID: sctWjVBiS3CMFWB4H9kdCg==
X-CSE-MsgGUID: rTN9AIAwTBGQIKMkP4a+LA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57362572"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57362572"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:28 -0700
X-CSE-ConnectionGUID: gHFith2PRLuY8WL59aVd/w==
X-CSE-MsgGUID: 2v1V7JwSTse76FaG+M3d7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165426904"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 09:45:28 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:27 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 09:45:27 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.73) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 09:45:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CPr/AYPhNu3WWo8+uXuKuk3yA+/+kyyMbE1ioD36cuLPYzeegRTJKtPeCUyPuP62cwzZnJ8ge0hpvsiQBruQ5NPK50OM+HGlmfAqbFoQUN8n/5xJTR0zKGBll0PsrTUUQYczKqLWTP8geKHwgjxLS/s9GRlYwtueOHWS/YBUX8ftJwcegKWxXi63egyt9UFlSmFSYCgM+omRNbJLSrSI9jnDvBOo9cVEr52VZvCDCMZrl0OZbkSSCoOCnlGnQDi1gxEPQWgpDafJ/hAkKZDf9jNrjrf8F+s/Gib8ypYbIzrYHqw+K95PTXqlGPDz6CHKHZ2v52gx0WYJWBa+fsBIyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvjGVApJRZExJ6lnDWNCCITmnEptS4Xf7V1Q3thgUKE=;
 b=VpEMjd+5g+ePCz6eDM622lRm5SDr4fHJFheiJtGDFcqgtFADrXYkluLTqh+j2SdMpJLjIjCEIwuWYybG+989FoPTsseVtsAXsN+zB5xjAq+NlCVpJxe0zQUB+A+zxE4ftIzc5GuKEDaSBStjRnNaUsfG04YAZmdVc/tFbOBvWFu7+QnzIqr6Y1e7GnDViqIVBRvJsFKPao/6aGITCTXU8CaIGP+tayYoVHHGycok+QRcIkZfRzqVDsgqo1xpRynDnznt1hUHr/Jzs1r7syrvbbMYwTrBFgPR3wk14QeOWs4GxZi31sNqgpRZZz1cf0ERA4ziK5rN9BAj204lbrPN2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by CY8PR11MB7083.namprd11.prod.outlook.com (2603:10b6:930:51::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.22; Tue, 12 Aug
 2025 16:45:25 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 16:45:25 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay, Joshua A"
 <joshua.a.hay@intel.com>, "Chittim, Madhu" <madhu.chittim@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for
 Tx refillqs in flow scheduling mode
Thread-Index: AQHb/ZLdTk+gyDO/ukqU4mvmApZ5ibRfUTLg
Date: Tue, 12 Aug 2025 16:45:25 +0000
Message-ID: <SJ1PR11MB62978F861DC2E4B7F56E1E899B2BA@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250725184223.4084821-1-joshua.a.hay@intel.com>
 <20250725184223.4084821-2-joshua.a.hay@intel.com>
In-Reply-To: <20250725184223.4084821-2-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|CY8PR11MB7083:EE_
x-ms-office365-filtering-correlation-id: e9432879-bfaf-45c4-565c-08ddd9bfa2f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?ZL55FkoyReU5946voDsbavf9E3KthZuh4E/e1gWgcqwEt9Mhhs/4IwlCDD1p?=
 =?us-ascii?Q?I2pLtXNREfquDnuUstDy9DEJtWWcoDqJAZQoec5XqFD5yQ3+q/yhdVLdm606?=
 =?us-ascii?Q?il5EVV7VNJvtYkaVGtp+B99YygcnvZB7vJIof0ReHYzVM1OyiHWq9O/m3oai?=
 =?us-ascii?Q?4DqEiZPAki0OY17TAAz08GGKdNxYQbT+7uwi6g+OPmoXVIZj0COdgi72HuZ9?=
 =?us-ascii?Q?fuAdYbeGK7bdoSqQ/atQVOyx2gJ3N29D/+IQjPgp6/i92vlop9Vcjc5qUEYE?=
 =?us-ascii?Q?UHiSjXqkuS5XfTrasJwCEWw9qrIhvGNRQiLm+o+foJ5pNAu6uephpB5Ey7cA?=
 =?us-ascii?Q?jFJLGiz/uxlSLGXio0l2yvjbsMNP+zy/266s1dUALG/bmlIar3BUdch/C0ce?=
 =?us-ascii?Q?/zNyfv9nQQRVRusJSsoTGw97pOoVw6gMeS87uHRX5SUZRPs4O1G+7LZEOHZt?=
 =?us-ascii?Q?LaG1rAS3qqGwOtsDDV/HMr0gfP/1OVfnFqzR0KQUCQx4lU6yKjIfXAJBwnle?=
 =?us-ascii?Q?s2GM3h7uwuRHi32kALHTY2/xjdNIgg/7j2ASlwmfoS35yTw5FcAV3zUJCchR?=
 =?us-ascii?Q?QyP2mxvOvhR7v6qMpOAx/dUdpjSKdoExCurOcfECN9lnQyasc7Q56lwS2GD1?=
 =?us-ascii?Q?LtE8HQnqImg6gofgBVeC2h4zszlbieVwz7LUpUjGUHEcQonKt+O6ZpFIZjDr?=
 =?us-ascii?Q?zc1MoNcZTduzZXU197Aj2/udTndw+q1le2UGJophqWWUrnu5e197V81MluV4?=
 =?us-ascii?Q?qEP6cfvzaGnsggj6J1fvnUhMPP+Jg+zSReSozCgCT1m8O3sLPFvKwTmMRXmG?=
 =?us-ascii?Q?j56XDRuX99RP/gNVuRILi7+6wQF6S73h68SvXSI5jKfpnB0h0AdwmtgDZOeM?=
 =?us-ascii?Q?kGUgxV3/Z1uGykK6s9n+eBm9tt18Lad3Y9NbswQGCX6aKoPjOe4q9peJMIK0?=
 =?us-ascii?Q?j1hYQvz5Z9wkwdQ7Gx4YlYSFIub3p9MV6BkJPXHzjQSR/uDMGhP7k+szAntz?=
 =?us-ascii?Q?zuQQj56Uy0rHzXSTMhNx35waf0gNPu9kXP79n+hYABmFUk9XyPLus9fqN6ZA?=
 =?us-ascii?Q?5xgnzCRPWxwuwu47rMMH63o29PO8nN8DccRJhCii3n7ZtnpKdT/cnRqFmM9R?=
 =?us-ascii?Q?BWP6VV8mYf4HmROCs8H6Tuj+UpZlNTGBeMumc+khrSFdAmItVefa7/V+dNcb?=
 =?us-ascii?Q?czke+Hxy49k8RYNIhjD212Vv2sHW/5Kj9aZLcp+oChh2tRqtOH7zcHZ7cbiU?=
 =?us-ascii?Q?U/Pfj6G7T57hdHRUSFXf8PT7x25IyfB2W8+d7tYoppPMUAp4/ntuSYwFXExr?=
 =?us-ascii?Q?H2EJyK1dXR4p8Qg1LIHWp3cTlPujKH+sxHF5gTDiapm7xd6PcfhqfmdWEi2k?=
 =?us-ascii?Q?4cAe++Hnl1GJc3ItCVOZZenv3MonBIby08htUv7esTnE3CJZWfmx34dJV9F6?=
 =?us-ascii?Q?QUTD0iRf4CL3bvmOwhftXgnTqx2iUDpEPp4nxFZTQBadyxO44Oc5N5QxsSdI?=
 =?us-ascii?Q?x+wtSVz3iFnM+y4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?XHRMNGjGX4/IAnR93OG3pX7aiyZufsou/8fk+eOwMeCCFrfRyrw3GDEJqGR8?=
 =?us-ascii?Q?ZdunhJp36DSJD9ZqjorZ+4VZ8zoGkcYdWQ3w8E/nRr0B8NT4z+pHVxUzixoj?=
 =?us-ascii?Q?348O4WbFDQDCJDgwkLwDWf4V+OYyf1NTlIxwqJ7mz2kIfoUM4HoCFZTdKExX?=
 =?us-ascii?Q?iCc8xw8XTIHGstCdtkCgE8FwpRI2Osq+So2wwxOhpqSGwt4vEMDntGeEK5fk?=
 =?us-ascii?Q?RWhU/h/gJwo460Un5SGdG8DBgQtT0r0lYPjpXBsMpH7YEHmLlIcNAfWAVftp?=
 =?us-ascii?Q?PcoI+GqgMmrOpkTepBet2IjyEIDV3g8KGD5IeRCCKHh6Q4inEHQX7Ba+pafR?=
 =?us-ascii?Q?PUaiC1+/Zo/uBWczITWEDjQxRy+rjYCCMMCqyfo6497ILc3ZOb4VGGlkVIta?=
 =?us-ascii?Q?+mI6hgqGQXIdhC5jsdXeRRRygQkLG7KJK/Q71PD+6LbYYH5eI8N68DcBaVzl?=
 =?us-ascii?Q?Yx70hc/rtx9s6zMgSwDJTQFo57Ucd/frauY+titXAFQQWWHFfQw/adb+C5cf?=
 =?us-ascii?Q?6IDzhU5qmKjoTXlXuHZsD9OULD12KGpiIGXwrXmwJoJ6sUxyqNYuCcVjjcmG?=
 =?us-ascii?Q?FwCB1njUTzLOqFzt/yU2crWjhUOSupwlEJKPgIBJDFOLKiws/pio7iPNVWx4?=
 =?us-ascii?Q?RVunP2222gQuJeZwQh9d8zSEtB3ckNyzV3uSPpxZwazut7/fbkZWSLSOhVq1?=
 =?us-ascii?Q?kPdLuoL9oZ5A8uX8Er6kXEJ2H7Lv2IWTSkV0TszHz/lZRm5QyQycxYgswbHN?=
 =?us-ascii?Q?5hEAfr4YBPS6yoh1BMc4OadOZ9/vokmoblEAWe1Es9bYcI7HvI3Cl+LTtI1y?=
 =?us-ascii?Q?RGAd1uu3POZoWOVFauIds8a0G+F/d0emyaM5TIUt1DXhh/+EPPBGlg3ZnF9u?=
 =?us-ascii?Q?qY1xHxc376Dxq2xbIBnmek7VNAkRri0ZEmBqB9q82B1z9gZwC0vQy5olwjb1?=
 =?us-ascii?Q?ZvMHL+gLReCR7jMC7CRifoRfa9gNeoHeBJGcg3Uv36LsDAnZEZiPKrxOKuvw?=
 =?us-ascii?Q?mwY06EO/m1oTBE6A6kGSbGnomQgHnNTOgmsvxQqh87NBBjuczcShmMSrsjI6?=
 =?us-ascii?Q?ZFnYXBGaLQX7z7hadd9tqOb5aefb+HHyVzhWbxlesntYAS/dM3Xjar5r5RC/?=
 =?us-ascii?Q?PTH229MwiM8sJ27sIXrqcQu2C0Debu3H6zmGlPHDBq197Y2sDaQgOCHBKMSD?=
 =?us-ascii?Q?jl1bG5i3NxxMgOvOf+P3VfPy8C7dl5P7Vvmfy9k203uDHss4gDUoog7/btkt?=
 =?us-ascii?Q?Yz96Lnyx5G/2RfNTejwbUNs9aVkKhgASG3MXrE1xmtXnqKk+JO3igItno5Kd?=
 =?us-ascii?Q?ZyW7KLvhxPStNTBo8/DlXIl7zx7+OCO8wuxyyjdEPelVxDS49n6D2g8FYVtY?=
 =?us-ascii?Q?Z0Y/xQK2xDqOU2t3O8TN0GcIAl06o16U5kYqDtKQZsCTdlMOTxKBwpySJchM?=
 =?us-ascii?Q?psIXZpQeqEckkG5waUPGQ5EPudJbXiMNRKWx/myWcP55t5G3k5kjF9kPeyMI?=
 =?us-ascii?Q?ByAh5x6xONCRAxv1AmFEq+fZXBKbAoiN+omnjYtjTpYWmUMNry5u8e3Dso/D?=
 =?us-ascii?Q?mc2XeGyyO5EFgOgM8vHDG6Tv7OAk8W9U04Pyrtzl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9432879-bfaf-45c4-565c-08ddd9bfa2f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2025 16:45:25.2573 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BGTrTAI3Zw+4T7aX/YJ9uhQoB/W0xf6J9LBtVndFUYwcKCuFf20I/ZUr2ZVm0/lu/EMeuuLBMIdbGZ500YR6zg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7083
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755017556; x=1786553556;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+ClluA9sdA33ytcGh01qkuHyI2usjRvLNqYudyDVlIQ=;
 b=esYLnmVM7xZDbt4d6cSnZxkvoA2H5AS+xZNU2/AoEnQSydlronwueV8o
 sWMcs2tQ4acnKF++zMP//0nH8MYrNT1K2PJxP09k1+sBjRKXXCs4mZGwQ
 SPbQ7t/hcfgywstwEkHinZa8+CXgiqf1w6K+zMfoVZDaWAYVYzGazeA9d
 yre9dJOr3iIkR6Uc8yaNJEMdzKaVlshNprLkhcCJLbimthRlOhhpD5ZDe
 Mkm29CAaVHbXOWEb/FCAQwtxacj+MMuusg2rEm1rRSdACsuwdsTB62o/X
 GV1tiJAgGqg1A8GGm1OoR00Qzg6cTlbJaCLcA/59+FUzK2XWTL9gbZG9u
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=esYLnmVM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for
 Tx refillqs in flow scheduling mode
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
> Joshua Hay
> Sent: Friday, July 25, 2025 11:42 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Hay, Joshua A <joshua.a.hay@intel.com>;
> Chittim, Madhu <madhu.chittim@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net v3 1/6] idpf: add support for T=
x
> refillqs in flow scheduling mode
>=20
> In certain production environments, it is possible for completion tags to
> collide, meaning N packets with the same completion tag are in flight at =
the
> same time. In this environment, any given Tx queue is effectively used to=
 send
> both slower traffic and higher throughput traffic simultaneously. This is=
 the
> result of a customer's specific configuration in the device pipeline, the=
 details
> of which Intel cannot provide. This configuration results in a small numb=
er of
> out-of-order completions, i.e., a small number of packets in flight. The =
existing
> guardrails in the driver only protect against a large number of packets i=
n flight.
> The slower flow completions are delayed which causes the out-of-order
> completions. The fast flow will continue sending traffic and generating t=
ags.
> Because tags are generated on the fly, the fast flow eventually uses the =
same
> tag for a packet that is still in flight from the slower flow. The driver=
 has no idea
> which packet it should clean when it processes the completion with that t=
ag,
> but it will look for the packet on the buffer ring before the hash table.=
  If the
> slower flow packet completion is processed first, it will end up cleaning=
 the fast
> flow packet on the ring prematurely. This leaves the descriptor ring in a=
 bad
> state resulting in a crashes or Tx timeout.
>=20
> In summary, generating a tag when a packet is sent can lead to the same t=
ag
> being associated with multiple packets. This can lead to resource leaks,
> crashes, and/or Tx timeouts.
>=20
> Before we can replace the tag generation, we need a new mechanism for the
> send path to know what tag to use next. The driver will allocate and init=
ialize a
> refillq for each TxQ with all of the possible free tag values. During sen=
d, the
> driver grabs the next free tag from the refillq from next_to_clean. While
> cleaning the packet, the clean routine posts the tag back to the refillq'=
s
> next_to_use to indicate that it is now free to use.
>=20
> This mechanism works exactly the same way as the existing Rx refill queue=
s,
> which post the cleaned buffer IDs back to the buffer queue to be reposted=
 to
> HW. Since we're using the refillqs for both Rx and Tx now, genercize some=
 of
> the existing refillq support.
>=20
> Note: the refillqs will not be used yet. This is only demonstrating how t=
hey will
> be used to pass free tags back to the send path.
>=20
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> v2:
> - reorder refillq init logic to reduce indentation
> - don't drop skb if get free bufid fails, increment busy counter
> - add missing unlikely
> ---
> 2.39.2

Tested-by: Samuel Salin <Samuel.salin@intel.com>
