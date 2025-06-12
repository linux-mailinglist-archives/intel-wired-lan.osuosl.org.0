Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACF6AD6701
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 06:59:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 728B2608B2;
	Thu, 12 Jun 2025 04:59:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E3O4Lkw8ruT1; Thu, 12 Jun 2025 04:59:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8AC8560AA8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749704356;
	bh=dSXLaVzSUSdhm73TvkAaKsgrG1FDffvYY+OGTOROx/M=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LBQHvn01hlIw0RmV9MQUxxXqYXdk7qiphN8A/Kcmad8BJQXYyF8DwlRtCtGJJG90z
	 GxNAbuR7Jf3tYLCM5Ro869S5SHcqmTkF9guRifzysIoaj1d5ICI5FP4o6N8hMzQ5zb
	 rSmZwoDf4L8GQEewRoBosbPnsl5XYjCLFZkRXIi1BMEbhUzX0kI4e6jo0lvnyMswzj
	 JVwcOxH5jnVdQDiutxTisrWCAwwWY1tgODmCdxzVVUWt3ur6TustcPUcOnp/PbKL1a
	 mhI4+5IXeNgME8C3RDjFcU+DaySCfjOzCdTOBcn6Ll3R5bziOOloxslD1duIcsQck3
	 /Q4fGXITin01g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8AC8560AA8;
	Thu, 12 Jun 2025 04:59:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DC2DD183
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:59:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD3D98174C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:59:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 52IcBD5DeqrB for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 04:59:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=sx.rinitha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0974080D2A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0974080D2A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0974080D2A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 04:59:13 +0000 (UTC)
X-CSE-ConnectionGUID: 35DSBFrpT4Gh+Jbm4vXfpA==
X-CSE-MsgGUID: PYOztUfRTCaioRTGzGYVaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11461"; a="51965439"
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="51965439"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 21:59:13 -0700
X-CSE-ConnectionGUID: lurLBYO2RYK7S1GIsYpdBw==
X-CSE-MsgGUID: Jfmb4vQsT0qm08rl7fI2rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,229,1744095600"; d="scan'208";a="147275091"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 21:59:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 21:59:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 11 Jun 2025 21:59:12 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 11 Jun 2025 21:59:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uNmhr4OOmuaIz4jMz4Fxanx++Zc73Xoz/24VAATKUrltrblMOaAA4JnMi6dHqx23iHqaiN/gIfu2UL7RDTlXUrusAyHel0tJMVrKm9Vxy69vxz+EWPzC71GgiN6+xQpWPUngJRKoYWQQzEQEntorJ7ySBpW3O56qKDlNMZ4666NFSu9rdX19ml4/NANbxo6CqfDHH6ORIecGsbbSQSYZJXxqDceaYVQynm0gdkSbDnhm+kacbsunXU6qbl6vJghcMZzDA9cR7+Kp5Jc3vN+RMlovfsPaQVZcjA50pnTfEgAexnMZuf+q4namtGc0GZSHf7heJ0fM/StXRkKb3YgcJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSXLaVzSUSdhm73TvkAaKsgrG1FDffvYY+OGTOROx/M=;
 b=t74p4LMMIov9vVJ/JJvSh+Z3uUpe3x24o/W+fFbVHSPrWQujcDkpsEE1oY6dFBYS/Z87EEU9ZCVJnN6g/q8IrchQF9L/JgcDWpO5ISx6EeFUas1Uatyd12/MLc1H1L9VhpazxXfN5bysQO8PihDUp5JSwf3mpRaqRPW+2AswssSDdOcx/U9QZ56Ga1qXxsHHfvG/7Q/yo6K/UTW4BiPsSRyl9c/uNwDxXxdmMxFjIEzJxfINDWb4KFqIQL3rBcz115ElWBmsTnn/oOv/0BI/xL0eSPNCi46nH12jqHNyy5VzjVs6WUR2qaQHdFygtOxf9pvxmrjm2hw/OmJifQYbzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6241.namprd11.prod.outlook.com (2603:10b6:208:3e9::5)
 by IA1PR11MB6145.namprd11.prod.outlook.com (2603:10b6:208:3ef::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Thu, 12 Jun
 2025 04:58:55 +0000
Received: from IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae]) by IA1PR11MB6241.namprd11.prod.outlook.com
 ([fe80::90b0:6aad:5bb6:b3ae%4]) with mapi id 15.20.8813.024; Thu, 12 Jun 2025
 04:58:55 +0000
From: "Rinitha, SX" <sx.rinitha@intel.com>
To: Krishna Kumar <krikku@gmail.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
CC: "davem@davemloft.net" <davem@davemloft.net>, "horms@kernel.org"
 <horms@kernel.org>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "edumazet@google.com"
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>, "Zaki, Ahmed" <ahmed.zaki@intel.com>, "Kumar,
 Krishna" <krishna.ku@flipkart.com>
Thread-Topic: [Intel-wired-lan] [PATCH v2 net] net: ice: Perform accurate aRFS
 flow match
Thread-Index: AQHbyamsBTL2ZahRFEeBBYg9S9//S7P/GOjg
Date: Thu, 12 Jun 2025 04:58:55 +0000
Message-ID: <IA1PR11MB6241A3B6BBE3E84287C6DA678B74A@IA1PR11MB6241.namprd11.prod.outlook.com>
References: <20250520170656.2875753-1-krikku@gmail.com>
In-Reply-To: <20250520170656.2875753-1-krikku@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6241:EE_|IA1PR11MB6145:EE_
x-ms-office365-filtering-correlation-id: 216530f6-23c8-4577-9c48-08dda96dd550
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?QmOsnvFoar4sdftCn7/X9Sx8OtPCkUwnEEZzdffpY/V8m60UiI/PFXYHuO7Z?=
 =?us-ascii?Q?/rN5zkPixNI+b717YQ2DzoofEWqxxwq+OM6Bcj8xqnVnjfMmIb2i/7sfdcqq?=
 =?us-ascii?Q?BJ/wt70+tulEJqEw9sa2DlWmhaAgGaEDJI+k6HrTEMbkT0AVVGEYdLif4sxg?=
 =?us-ascii?Q?g+6H0EWHKDCkQiNvQgRAhcNnzZzmkVdmgtYRxon5gzeFLpOlkEKfHx07Qc5y?=
 =?us-ascii?Q?1yZALNRxZPC1GBjGql8Ejb1EWCyL0sJrw5bbu/ilcs6Piqi+Zm02N5qwYAde?=
 =?us-ascii?Q?zHYYtBDqVHx59OX5D+u1TlOfryPo5aSwl7sKgnr8seqMBQ9FZ8Kr5SUU6FAq?=
 =?us-ascii?Q?bdyC05EkRS9mckX7Z+Xplm/1EcI50Lotc1+1OlJQgeYF1MANnrhyD2HhTKZ/?=
 =?us-ascii?Q?aBimq0Ypua5BzX3HLgr5BTYzkCZdYswlDGmECCv05NZD10rHA+7iu3GIjAbf?=
 =?us-ascii?Q?BBvO24/ESnn+52F4nAgrXq8dvC5bCr4EWcPVMeV9fawbvMWHs9GybKPKnpbb?=
 =?us-ascii?Q?Yqy6rjqyYb3bLaZEosBtoZt4bmFv03gZ3yB/a6lNeKV0znknVcyVTsc2iXMV?=
 =?us-ascii?Q?bqMqCDWR72AP2enuB2sN/DtlYJjc05vHFeIKqRNlOISsNiWauSfbwMYnh+Bg?=
 =?us-ascii?Q?YKk8t2v5bUKHhyK46Zg19EyC5AtBBXUYPQ+AOZcC4Aog7OosNV9NSjVv1ONV?=
 =?us-ascii?Q?Ny83keO6axUlWpVKuANwD24mC2VhMtoXZTzVo+xUsNb1K7mcSbTTpfvI6nau?=
 =?us-ascii?Q?Q3VcngXoua8PoEULANRiHuG8+OazBysBN8SS1cB2QaiYAPc0Bf1GlxTQ1cL1?=
 =?us-ascii?Q?yp0i6I11TQWDywma5yPdEcagD3WucbxeP9SIXYzz510+1JVdri8zLZ9no7ml?=
 =?us-ascii?Q?2PDR70QCLqh9D2VRmted5IzHg1rtjlpBT2rRgIeILBJegzJ+bAeehGdzDa5U?=
 =?us-ascii?Q?BZp2CPxgvZwfk96pNz8gG+0LUh1Za+q7r2dmPmqjFZqS7nGuUFD/lvxPVNX/?=
 =?us-ascii?Q?sUcYOiPTPtOTLH/xWYLk72+vpkZOQT6Nb866jJDV4V+Dmer1QKKhAMHMzPwp?=
 =?us-ascii?Q?8QGx1w4tO8tLa826UUv70q+nUHWPszzGve6oCUz1K2yu8hXmi9JLCbI9VNn6?=
 =?us-ascii?Q?DzKBJJZwRv0/8FSmAkZENb0v1mAzLJvmSIzg92XKKrLMHKMQKta9gtS8PAH5?=
 =?us-ascii?Q?yyZ3oqLGmaJs5J++8dTxkJljN2WZUITwM6j7TEcidpUhWjYDJ5goYcZBZJf5?=
 =?us-ascii?Q?dYwc5qeT8lVWwNRbab1V+Wd2pEHI3KiiLzRRLLP9Tdfux1/RBvrTgkrvVrQq?=
 =?us-ascii?Q?5hHzUOYDWfrOOV9UXloIz+UMzp8vY7qcyh04TfpFRUHt7Iar9BTe0HDIHIe+?=
 =?us-ascii?Q?jvaiCeZrvTpUhg1COj99hyLWxHawIezXsDILCc4mDz8KinYZvt8Soe5FPi4X?=
 =?us-ascii?Q?ICEL1MOCppbJtWA0Sctt6nN/4LSvprSCkDjH46VzilqXpsKNIQezMg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6241.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PBPxy/ijQk3myoXj1enQVtlRbmkHKTqYXwYF5gfg5LRpKX3hlMXRrAuJ8osW?=
 =?us-ascii?Q?W09i802jglra85TIzxSusVD5aTQVmlq0/R4gzxG/haeVG9nvPe/xJuG39FX4?=
 =?us-ascii?Q?99/8K0Fv4m6CHC130fAG+7oJkdqrP6rllyFzFxi92gi+smkdOqaFWMC8cCAk?=
 =?us-ascii?Q?civA8nL7ci74xWTo4NUzte/TghJLKjrniprwIzEy4yZBt44G6R2/3fzwyJnY?=
 =?us-ascii?Q?rkKeDYY4PVEsXwtAtDn7GJnlX7/WsLk0dRiUnIAFLpQG4CsgA9UgEqlBA8a0?=
 =?us-ascii?Q?cld8g9C/L2gVoyRIde3FHPBJk/SDrvNNWqXPxclHENJN3HZRh66YHmJArdWG?=
 =?us-ascii?Q?Amgg6ZGYeG91oQQ5Sj/2g+4IxdPYaDrSFmhbjQBj5dnyIXWe9A1pWRbm59IS?=
 =?us-ascii?Q?BHIqtSKywoMmxORiXdxv2Beo321YijNCqqUb/QeYDr/Ga9Q9eJXxbN1tb8Gn?=
 =?us-ascii?Q?SoV3HL/CIyRFHENGop8Gxrh2O/BjoyA0rjdS06Y0XmBPjf+XDlA4uXu5TeCw?=
 =?us-ascii?Q?G6TKJdst+l8cADmcErAptbcVRO4IzusP4bfnbHQrbSkD+vzp4jiBcUj9TvAf?=
 =?us-ascii?Q?7vJXlnim+NKJBjjcg9g5o3g6rqfmMEjV7Rry9MTVtmPIWzJCQK5Cs6XEU9Vz?=
 =?us-ascii?Q?hCS4KLa3TWBDcDcV24JeqlkttAeTSJ7OatPLZ8qe5LVBVtlz8eyRA6IKQo9K?=
 =?us-ascii?Q?wB55UVN2plRjxO2Vc58fTy+t4ziKqW9GCwVj8Khpsg/eNLOKnyk6+Fa2MZiK?=
 =?us-ascii?Q?93ML5tgd/xxfHwC/gob+FOkB1Sl+C9tioVkzqPbkMdijZNTr6GkCdLymDNXh?=
 =?us-ascii?Q?5DK+7AoYnq81jVH2s88USlKMkD+MTRB94SjSmWGlSy8jhJ8GQrtKI03qF1Sf?=
 =?us-ascii?Q?JuuNUIhIEp9ASlDeFvdZJyjEgYxRdktDtenebWuzwSq2tLClOVJvn44YJ+qa?=
 =?us-ascii?Q?gwv5tx2Q3DD37SUpuR/Zw7siBedna5g9vLe0jwwJLcfID3Au2d2/Q67TaGjU?=
 =?us-ascii?Q?AjLi6Q2CIHFP9+725oFkFX2YKPD+JJosZ0N3mTKExZ7aK42RlKeytZMjnUvS?=
 =?us-ascii?Q?ypEN9ZO0Ib/nLfNw2+XjizxjzvMXnM6l+qP5MtW2nfcEOxfwLuXIkr1JXeDk?=
 =?us-ascii?Q?Jr799sVFSqwoBNKvJVKnj9kLxRqy9iPggtFftRNGdZ65J+HI9K5d9ibJETvE?=
 =?us-ascii?Q?mSsyPv4HIpWuQwHJLq+/6g3Nwk1OGuMtNd8AZIM3O9AxN1C1+QW8a5KcFUCQ?=
 =?us-ascii?Q?T5UIbtAALJIJpTjv7mouzdxOPVRKZnhpvXig1c5gnFhShdiqf4Mv5oIdmHDY?=
 =?us-ascii?Q?S7WxDcrzzsOHu6O9SVOijOUGaKGrARnjehE2LxfnV/IT4es1By3WJ0idqCna?=
 =?us-ascii?Q?TJWiDJ2VYRW2D6Usa/aGC3vgrKcu7SkHwxlzzMlV2j0g5MV9lPIaCzSBdAaU?=
 =?us-ascii?Q?KBFeHkORQRl3CY015ev1dmcWnPNjfd3nyxBEGf1w9KF6d1JR7PbnHDPt8gOL?=
 =?us-ascii?Q?yWf5QYakEWTZBqRIaAe9C8lcfqQ0fCxxdDN9yqdJkXH2Er3irsaAIBqSwFa6?=
 =?us-ascii?Q?+eRUbFXfrvfrk8/lQC6MQeZG72kjueIms4liuU6T?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6241.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 216530f6-23c8-4577-9c48-08dda96dd550
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jun 2025 04:58:55.1290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 81O5wOZPuCEahSKLwetzylz6BE7Xpr08Os7hpYlZ1Y+dDZNySZVT2e6XWRGhGOz0QBXY6WgOYpIRSG4QH++AhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6145
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749704354; x=1781240354;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vopLNuoLxtZE1Xpqur4xqiNo0hfe0xwtU1xdTfpXaN4=;
 b=C2vaP1HCoAcSG2q9MPzC0Ho3BGhxcoD0hrOOxX6OEYayyvsvDZmMK/IL
 PPWyCNdqz8hMKodWo3D+87kwQZ0XB666gosQ7LkVG/Ymjniuben0VqIVU
 4SYT+EYGRU92Egpio7HDDlBXWAN1OH1l2vlooZvIg4fv5OEKraBRcQhki
 tSD0RQ4hF4ODB0y83yP13I5coSl2GSXmccZMRMpZRSHTs8hdFQMOs7Vaj
 8INMxLcDy3QVaTQ0SmK+mfLSuuc4KKWAUIqdjT2brGueskYmdYCexhBEX
 g71toTaC+hoWS9X6FlKudLmaESeFeju9eLioAy5kkhl1HeKCGGO2CnLBI
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=C2vaP1HC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net] net: ice: Perform accurate
 aRFS flow match
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of K=
rishna Kumar
> Sent: 20 May 2025 22:37
> To: netdev@vger.kernel.org
> Cc: davem@davemloft.net; horms@kernel.org; Nguyen, Anthony L <anthony.l.n=
guyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>; eduma=
zet@google.com; intel-wired-lan@lists.osuosl.org; andrew+netdev@lunn.ch; ku=
ba@kernel.org; pabeni@redhat.com; Samudrala, Sridhar <sridhar.samudrala@int=
el.com>; Zaki, Ahmed <ahmed.zaki@intel.com>; Kumar, Krishna <krishna.ku@fli=
pkart.com>
> Subject: [Intel-wired-lan] [PATCH v2 net] net: ice: Perform accurate aRFS=
 flow match
>
> This patch fixes an issue seen in a large-scale deployment under heavy in=
coming pkts where the aRFS flow wrongly matches a flow and reprograms the N=
IC with wrong settings. That mis-steering causes RX-path latency spikes and=
 noisy neighbor effects when many connections collide on the same hash (som=
e of our production servers have 20-30K connections).
>
> set_rps_cpu() calls ndo_rx_flow_steer() with flow_id that is calculated b=
y hashing the skb sized by the per rx-queue table size. This results in mul=
tiple connections (even across different rx-queues) getting the same hash v=
alue. > The driver steer function modifies the wrong flow to use this rx-qu=
eue, e.g.: Flow#1 is first added:
>    Flow#1:  <ip1, port1, ip2, port2>, Hash 'h', q#10
>
> Later when a new flow needs to be added:
>	    Flow#2:  <ip3, port3, ip4, port4>, Hash 'h', q#20
>
> The driver finds the hash 'h' from Flow#1 and updates it to use q#20. Thi=
s results in both flows getting un-optimized - packets for Flow#1 goes to q=
#20, and then reprogrammed back to q#10 later and so on; and Flow #2 progra=
mming is never done as Flow#1 is matched first for all misses. Many flows m=
ay wrongly share the same hash and reprogram rules of the original flow eac=
h with their own q#.
>
> Tested on two 144-core servers with 16K netperf sessions for 180s. Netper=
f clients are pinned to cores 0-71 sequentially (so that wrong packets on q=
#s
72-143 can be measured). IRQs are set 1:1 for queues -> CPUs, enable XPS, e=
nable aRFS (global value is 144 * rps_flow_cnt).
>
> Test notes about results from ice_rx_flow_steer():
> ---------------------------------------------------
> 1. "Skip:" counter increments here:
>    if (fltr_info->q_index =3D=3D rxq_idx ||
>	arfs_entry->fltr_state !=3D ICE_ARFS_ACTIVE)
>	    goto out;
> 2. "Add:" counter increments here:
>    ret =3D arfs_entry->fltr_info.fltr_id;
>    INIT_HLIST_NODE(&arfs_entry->list_entry);
> 3. "Update:" counter increments here:
>    /* update the queue to forward to on an already existing flow */
>
> Runtime comparison: original code vs with the patch for different rps_flo=
w_cnt values.
>
> +-------------------------------+--------------+--------------+
> | rps_flow_cnt                  |      512     |    2048      |
> +-------------------------------+--------------+--------------+
> | Ratio of Pkts on Good:Bad q's | 214 vs 822K  | 1.1M vs 980K |
> | Avoid wrong aRFS programming  | 0 vs 310K    | 0 vs 30K     |
> | CPU User                      | 216 vs 183   | 216 vs 206   |
> | CPU System                    | 1441 vs 1171 | 1447 vs 1320 |
> | CPU Softirq                   | 1245 vs 920  | 1238 vs 961  |
> | CPU Total                     | 29 vs 22.7   | 29 vs 24.9   |
> | aRFS Update                   | 533K vs 59   | 521K vs 32   |
> | aRFS Skip                     | 82M vs 77M   | 7.2M vs 4.5M |
> +-------------------------------+--------------+--------------+
>
> A separate TCP_STREAM and TCP_RR with 1,4,8,16,64,128,256,512 connections=
 showed no performance degradation.
>
> Some points on the patch/aRFS behavior:
> 1. Enabling full tuple matching ensures flows are always correctly matche=
d,
>   even with smaller hash sizes.
> 2. 5-6% drop in CPU utilization as the packets arrive at the correct CPUs
>   and fewer calls to driver for programming on misses.
> 3. Larger hash tables reduces mis-steering due to more unique flow hashes=
,
>   but still has clashes. However, with larger per-device rps_flow_cnt, ol=
d
>   flows take more time to expire and new aRFS flows cannot be added if h/=
w
>  limits are reached (rps_may_expire_flow() succeeds when 10*rps_flow_cnt
>   pkts have been processed by this cpu that are not part of the flow).
>
> Changes since v1:
>  - Added "Fixes:" tag and documented return values.
>  - Added @ for function parameters.
>  - Updated subject line to denote target tree (net)
>
> Fixes: 28bf26724fdb0 ("ice: Implement aRFS")
> Signed-off-by: Krishna Kumar <krikku@gmail.com>
> ---
> drivers/net/ethernet/intel/ice/ice_arfs.c | 49 +++++++++++++++++++++++
> 1 file changed, 49 insertions(+)
>

Tested-by: Rinitha S <sx.rinitha@intel.com> (A Contingent worker at Intel)
