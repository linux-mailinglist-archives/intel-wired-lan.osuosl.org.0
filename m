Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4118DA9EB83
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 11:11:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06E49811DC;
	Mon, 28 Apr 2025 09:11:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7yp93hjHKIjF; Mon, 28 Apr 2025 09:11:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BEFDF811E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745831482;
	bh=UNLBnFe3Ht4PY1i6YZXxESdX6hbXw+BS2FgurXBImDc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zYW9+/Nx0RrqfrRQ7UoLxihj+IMZDR8YkCaMq8zsDhDt5AM6UcsiKcT+42b0ZX6+p
	 fz4OBX8PjR7O7aH7PT4uCFj/kXE9TJY6tWSp3OOIJw1tB4Cvr/flGwgT9VZ86ZqtR2
	 E3JhFpi0pMPIWezGe38R/K9r2xBM42IJz0eLR9VQmxTVcBN0iUSyFHXhGAjK2Oj/Xt
	 dYHvoHCcKzO88Mdd7aBOr0gN8896ukjSU/vmFLTCwg7GXudJH2638rIH+NIJ3X+UN+
	 hTamzvaiK6X1o9UtHjKpdcS+qM121bgr9EsuTa4/kOwnawl+SF1+fV19HTUSJd4ABN
	 ln2jfFoTeX32A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id BEFDF811E0;
	Mon, 28 Apr 2025 09:11:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id CE27331
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 09:11:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C02B340F60
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 09:11:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id t4w1UnsRXBeQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 09:11:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B2FA840F52
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B2FA840F52
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B2FA840F52
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 09:11:19 +0000 (UTC)
X-CSE-ConnectionGUID: YU2QQT0BSD+uHpsqc3iLKA==
X-CSE-MsgGUID: /Ty2Qm3tSZOrrNz6wOCdsQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="47323143"
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="47323143"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 02:11:19 -0700
X-CSE-ConnectionGUID: sg/FiJaURViJPS8wnrv7LA==
X-CSE-MsgGUID: uIaHq4EdRKCu0Ur7zWgIWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,245,1739865600"; d="scan'208";a="138280914"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 02:11:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 02:11:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 02:11:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 02:11:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kdEgD3hgWFG6eNuovatEiFCHSjgIud3DdkJtvPqboPoFh4eXO1wG5wsba8JheUv1va20dFU+58fQVKWBmfLJMphrTr/UdL3DDw/Oe/ej5k2dZcXuVcgAD60ykc/L/p1t9jsDd2klseVYObRz4nzIh2J4NBMSZ4Yu/aPkvl94I6+8LMGHKJEq8zalp2isQjOlw3NNH2OBqmq/AQSt1mDrmyWqG+SYUa+qZEuR3xj4iaFgXLhUuVx3fWOP4qN64Uhckp+DNSDCpNFB9Ypb6K/IUbfMc5ansAEzvxt4I7nPBGjnXHeWMq4PhAb8jVAY+4awpNWE3YfpT2O7nfpAUq/5VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UNLBnFe3Ht4PY1i6YZXxESdX6hbXw+BS2FgurXBImDc=;
 b=m8P+6g2e/T1QUHAdTprM+hIF4i3h48CzEGCrS9bOTmnjDysdVuNgSua0alVOx4a3Sjqrnrqe5ezIygpQ4eEit1DylgNZ0Gg8qW/c8s3VjhEP9zXCYDrjsSicH6JO3NX8BkhnDJG8Cj+SflBE1oSk4KcMHpzI/FSMsyw8zHXv4kEYCb8It8D7tq48DFLGVw9n6omQyCPAeJFvOEgGsR3fHqc/ew991elVLE4FNS9q/uaNB++GnNhH8Ub6DFtA+KUscTfltXSMDl6Gf6rixNk8WiC+j7L5inmCMkVGHKQeZQDd0NOZL6b/U3xMImY2HOSH4K0DRsc3rv3TdSfD2LlrtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com (2603:10b6:a03:429::10)
 by SJ5PPF867D7FF5E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83d) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 09:11:15 +0000
Received: from SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b]) by SJ0PR11MB5866.namprd11.prod.outlook.com
 ([fe80::265f:31c0:f775:c25b%3]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 09:11:15 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S
 . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Vladimir Oltean
 <vladimir.oltean@nxp.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Choong, Chwee
 Lin" <chwee.lin.choong@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible
 queue support in taprio
Thread-Index: AQHbuANaCWkAYaLWIUqtiKw5zr1MFrO4yqXA
Date: Mon, 28 Apr 2025 09:11:14 +0000
Message-ID: <SJ0PR11MB5866B4EC7D136421FCF6BBC2E5812@SJ0PR11MB5866.namprd11.prod.outlook.com>
References: <20250428060225.1306986-1-faizal.abdul.rahim@linux.intel.com>
 <20250428060225.1306986-7-faizal.abdul.rahim@linux.intel.com>
In-Reply-To: <20250428060225.1306986-7-faizal.abdul.rahim@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB5866:EE_|SJ5PPF867D7FF5E:EE_
x-ms-office365-filtering-correlation-id: f9dbe559-15f9-4d6b-b9e3-08dd8634a0bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|921020|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?BVuaXhaThDKr+UkW1WO7GdTkIk4NDk8ZC13a18/5SLNs/W2u1tbYNGgeTWxd?=
 =?us-ascii?Q?Y1vmlpwrW2IYw+YzoJunUHSNb2hCJRV/JFGuZ2Dls0m+LcMxCtQCuNNB4B+D?=
 =?us-ascii?Q?Ga3BxnfsKiMTjuK/aOmZNBlX3z8i+oKtZsqmiSLl1EkpyJd3WDBziIlQ24OE?=
 =?us-ascii?Q?mHdyDVA4AmW4zCuuLoJTKGIORoglsMpEd7V7mynvrhEkVeCJsYaweXpGM6Rr?=
 =?us-ascii?Q?a+Rzxz8Rg9jf5aK8ZaKGSF+yXwJGbAakxPy1pvYG3ITkLqNAxdZg1Y19nI1A?=
 =?us-ascii?Q?n0TjNkjtgEjR0wRjmsjxdnLX0rUGZ1C6dnJX/tqqbEKKV02G5hAV/rgOBV8P?=
 =?us-ascii?Q?968Vro76nFci6ZKuf5Hns5ozbh9BamQLtM0RNZpvh3lZGxAOF09BE5jtqMpL?=
 =?us-ascii?Q?X5WquxuhGuhfklY/txlowVtbv+5j3iA/cOVL4IK9VIND9q6xIty6908ewH/E?=
 =?us-ascii?Q?zMGsHIg7u9MLasxlWCKYVoiKGm1JwXXb5imr/6HdzGbkb/HmdUdkFex60GpH?=
 =?us-ascii?Q?qyaDOSEa5H26kBKWOxGWx6K9TXfj8rnRxuDUGHXCXvR+9Lj19APw8yKkxwRP?=
 =?us-ascii?Q?fbaLa0ZG0WodIHtEip8xFkPuNh4lTDz30aDr3ABYMefoRuxDrW4w6kdlcuT9?=
 =?us-ascii?Q?pvrrLzwXUjQaOy9rTzGFGWueSstkHzj463ID4oVW5Yd6BAcJLB2QdUcuI1cY?=
 =?us-ascii?Q?FrAVAbOIVYkqgSeivF++YyjHN3HvT+83Mim/14YicJCemXwhtZRwwDmDblG6?=
 =?us-ascii?Q?pzRD8EeQhwZxv6wXloDQlBC7BB8iOKSjf/ych8tRND4d2hrOY7DrGlia8EbZ?=
 =?us-ascii?Q?JXH4NK++RYgaqNIuVEOVD9Q8MUMB50IfxdsALJnAOGPys63LIa/PB1B18k3L?=
 =?us-ascii?Q?8uMandMnORmMJng4MEHERXG1xJlz40gGy5ZnMPYbPh8hifpoqWLo5yB0QRe6?=
 =?us-ascii?Q?pCICnAFeX2oRWQhkYmvNaSnrTlQZajCYfTPUsnFZxaj80P7sBjQAryksrieh?=
 =?us-ascii?Q?JPYjzTte6pF+rNvLwxNciU65CKyy3FMdRw6qgHExupbAdnahGcckzolfXf8y?=
 =?us-ascii?Q?w3GqE9TwG1zFloWqs/T88xmQp20ZYkppqCp7rHJdUz75FqpDh37pXJchakpy?=
 =?us-ascii?Q?InTD3kqhS3hON20U3BLhFt+krt9ErOn8LPt/hliBrLbqNogADHQZJYAzIuOl?=
 =?us-ascii?Q?ysT68HLANcB0w1mhmi10FS9Gl6Ns6iCVpaGhp9WhMB3QklN3V5snPf4CTwU/?=
 =?us-ascii?Q?FecnP5bx5qtQjpKR/JqJHxvhuf4fesiUc5dZs/R/UrAyGdkPxHWrDL4GIll9?=
 =?us-ascii?Q?3uJ4JK5c3lpDOIpS4S4zhdxEC5SXc5MJtX6Se0oodDovp0EMvmHosVHBBB8P?=
 =?us-ascii?Q?NidX1UixaCkGKCLsA/eNaGzP3i5DrB3IGvMvf/H3T0o0zlUQjiEaO9yJGUbb?=
 =?us-ascii?Q?qRPVlLb/2z3apmrp2NHZV6Hl6C5rOKLDiapBi2N2KDIgw3nBLngkZEjSUmql?=
 =?us-ascii?Q?eKH/GC04i09cOhg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5866.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(921020)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5lqi2OC/kWgjSfCQPbbYOlv49QZvr8JuOFg0UR2PIU5jQWIoc9/dgV2CaMS9?=
 =?us-ascii?Q?+5qHRzq7wG/iBOQRNLQszTeoRC0xtFNg08BZb/Kh3SCXdIcuLr/zIw/Eo9em?=
 =?us-ascii?Q?BABKNbIm7IpeHjrf0MBnkfRaPivv9nsDnB3pkmrE4ks+LVqpD4kKQeVJMZnI?=
 =?us-ascii?Q?VYFFdh3xw4NR8TTlSvekr/vP4+HbUu+FElnOZxrkaHLRKL2/LBDoPcUF/E93?=
 =?us-ascii?Q?wVeq7wwtTmLTmYoS94Q1V23h0WYueLFzAEmygm96+ss1Jk7DygPhPKm9/25d?=
 =?us-ascii?Q?Lx/K93MUJAdxRItbheJirz8BlRUlB+Z1wuHi9+A+KfayC3npml1DUf2iZJIr?=
 =?us-ascii?Q?EBeNKTumqfm2fWMJRcyQj8u0VAY9f52GZ3BOvsbHHyG+SqWPF3r3eJzYLhSu?=
 =?us-ascii?Q?M9xbg83PuB2fOt5tRFBXv/athngRihUiXmZncw4N0cb5hwqe+BMgiAybOUS0?=
 =?us-ascii?Q?CoGGKAVomSKiVE7LSIU+bGu2Xidjx65G2qTR4usfZtAi8j1X+kKjqnZ2cYpg?=
 =?us-ascii?Q?sR5pmVoL53341qbh0OdAmxEbUFDZu601qiR1eLRCLm5yZQJJOJ/3gXFGNAmZ?=
 =?us-ascii?Q?GmUoRUFTmDIVH7EzBhylrlAGrnh3Nj+xNXhbSm5x99HQQUse6MTQkhJfpQ4m?=
 =?us-ascii?Q?aFTlykgW8d9EvDneHAETiuk9xrjWji6CpzW6LEIhLb33PKm2Mai5S3rIdDfp?=
 =?us-ascii?Q?lCKz/7wOs83zxteuHjlKgz7icr+POitAUfaa/anOEEGo1E+MLD5moSVCD51A?=
 =?us-ascii?Q?yr2DFIo9NAy/pU1uKrvC0Zho4UfhTiAGwFVuXML6sk3kFIyGOjMULAbv9jtd?=
 =?us-ascii?Q?VBKZHykSBcM4Ldp5vVopCWjPsS63DapnKqEkCv5jOs16J/ctBEtaKDHQttHI?=
 =?us-ascii?Q?N4894MtJmW92bzQ+ezYxOSlS4NFko92O4MdBHZ3CWiSyQ5yAgvTfQl+VBdfW?=
 =?us-ascii?Q?cLonJQKxJOOf8GIJ2Xx60jNLbjyZwrLMi3PpQc1TUiRajW0Ez+uqOozaiZjL?=
 =?us-ascii?Q?FXhfnq3BI0xKTZIgXtAbmp8xa8r7y+K2B0Z1GwcvYrNzu7TmMEi/h1uV7JEg?=
 =?us-ascii?Q?jymJTewywsx2gt9gtwlD6mccTJXPhxglYPfJuMvgrem/yyDkc7/78YusxzUM?=
 =?us-ascii?Q?0xdTaI4PyP4xXzGgzRRizk5gcNs5DXFmxU3ayMRyNOQ54Nyhyp8Q6fYBObN8?=
 =?us-ascii?Q?S+lj5BAw8plFGA992evGpYG6IRJTfmr/tshaVY9QT9BOyDCV2tjbsnkDcNGE?=
 =?us-ascii?Q?AC1zfzj4oe1WqUafqP4rNzP234HOFIHiGgvSaHc9SXEdQg9fE9qIBxFNNH0l?=
 =?us-ascii?Q?SIcIvK2cPoWPkkJF6sTZfeOJel1ZTC6r9NcxtlujfF7okm2wdN/vWyxhjjxp?=
 =?us-ascii?Q?EPDYE6tJAPiH3wDNMyhN9pCWGFsVsPyFqfdDPgnOvGZ/siNG/+kpKgLPXwM4?=
 =?us-ascii?Q?VbjfOKcwEI5sPXtmpGej4kdDIsZ0L4tl2ofYWYm1wuN7oUCGaiTwOtlVVyTA?=
 =?us-ascii?Q?GpYylAPsCPtGBr9X8/UCJWgEub6j3fiN63bi/bpvBDI040/fH9YOitFSNH1F?=
 =?us-ascii?Q?Npk8TywDW+tM/z/MGQf6QRqpouCFIXkseIMxWQ76MN5JhovRenQhxL8sQrNr?=
 =?us-ascii?Q?3Q=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5866.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f9dbe559-15f9-4d6b-b9e3-08dd8634a0bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2025 09:11:14.9600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kkcQ7IXsRi6MWdN65IoabbPD295fQukISMllkgVt7kNM+u+LnIvk4Dxu2DAjMh+Qk7fNLSmaPJ1y7qACTM46tJXZh6MYSiXq2ssHcFWlIxs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF867D7FF5E
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745831480; x=1777367480;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0nHfdzRqvGXSqOcAuZJ4Ez4vxPX2PPljtgMigj4M+lE=;
 b=EXIJNhcAv/iszpRmqpPslrtUuARzoRFEh1oX+4PAQFdC8RyNV8ABVkZv
 bULkR7CT3fM+wY4vemOw9mjissoYy/lSgHdY4OwnufRXumpZ3idKs/qMH
 MccIMDKoY4oIwWI9K2qJBSo/NZRW4mfDiUZCBOaUUqQSMJgQ3ujMrOPvQ
 Utg8VdyGXNcW953e6/9JSIm9IYRxHPxRw0KemlqCeO5Z9MhLod25yT8sQ
 XjPm8BeJfPaSGnb84mxUiHxbajRD/fffG7WQil0WIGy5KC/iiiZY7lYhO
 vZ4k9sSZBWrVNjNIzbknAVU2i+3+tq52aoglDNooA5wgRN9KWc18uJ+ph
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EXIJNhcA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible
 queue support in taprio
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
> Faizal Rahim
> Sent: Monday, April 28, 2025 8:02 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; Andrew Lunn <andrew+netdev@lunn.ch>;
> David S . Miller <davem@davemloft.net>; Eric Dumazet
> <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni
> <pabeni@redhat.com>; Vladimir Oltean <vladimir.oltean@nxp.com>
> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-
> kernel@vger.kernel.org; Faizal Rahim <faizal.abdul.rahim@linux.intel.com>=
;
> Choong, Chwee Lin <chwee.lin.choong@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 6/8] igc: add preemptible q=
ueue
> support in taprio
>=20
> igc already supports enabling MAC Merge for FPE. This patch adds support =
for
> preemptible queues in taprio.
>=20
Can you mention what "FPE" stands for (e.g., Frame Preemption) for better u=
nderstanding? Everything else is fine for me.
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

> Changes:
> 1. Introduce tx_enabled flag to control preemptible queue. tx_enabled
>    is set via mmsv module based on multiple factors, including link
>    up/down status, to determine if FPE is active or inactive.
> 2. Add priority field to TXDCTL for express queue to improve data
>    fetch performance.
> 3. Block preemptible queue setup in taprio unless reverse-tsn-txq-prio
>    private flag is set. Encourages adoption of standard queue priority
>    scheme for new features.
>=20
> Tested preemption with taprio by:
> 1. Enable FPE:
>    ethtool --set-mm enp1s0 pmac-enabled on tx-enabled on verify-enabled o=
n
> 2. Enable private flag to reverse TX queue priority:
>    ethtool --set-priv-flags enp1s0 reverse-txq-prio on 3. Enable preempti=
ble
> queue in taprio:
>    taprio num_tc 4 map 0 1 2 3 0 0 0 0 0 0 0 0 0 0 0 0 \
>    queues 1@0 1@1 1@2 1@3 \
>    fp P P P E
>=20
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc.h         |  5 ++
>  drivers/net/ethernet/intel/igc/igc_defines.h |  1 +
>  drivers/net/ethernet/intel/igc/igc_main.c    | 12 +++-
>  drivers/net/ethernet/intel/igc/igc_tsn.c     | 71 ++++++++++++++++++++
>  drivers/net/ethernet/intel/igc/igc_tsn.h     |  4 ++
>  5 files changed, 90 insertions(+), 3 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc.h
> b/drivers/net/ethernet/intel/igc/igc.h
> index 684a11df445c..39444e61003d 100644
> --- a/drivers/net/ethernet/intel/igc/igc.h
> +++ b/drivers/net/ethernet/intel/igc/igc.h
> @@ -43,6 +43,7 @@ void igc_ethtool_set_ops(struct net_device *);  struct
> igc_fpe_t {
>  	struct ethtool_mmsv mmsv;
>  	u32 tx_min_frag_size;
> +	bool tx_enabled;
>  };
>=20
>  enum igc_mac_filter_type {
> @@ -163,6 +164,7 @@ struct igc_ring {
>  	bool launchtime_enable;         /* true if LaunchTime is enabled */
>  	ktime_t last_tx_cycle;          /* end of the cycle with a launchtime
> transmission */
>  	ktime_t last_ff_cycle;          /* Last cycle with an active first flag=
 */
> +	bool preemptible;		/* True if preemptible queue, false if
> express queue */
>=20
>  	u32 start_time;
>  	u32 end_time;
> @@ -495,6 +497,7 @@ static inline u32 igc_rss_type(const union
> igc_adv_rx_desc *rx_desc)
>  #define IGC_TXDCTL_WTHRESH_MASK		GENMASK(20, 16)
>  #define IGC_TXDCTL_QUEUE_ENABLE_MASK	GENMASK(25, 25)
>  #define IGC_TXDCTL_SWFLUSH_MASK		GENMASK(26, 26)
> +#define IGC_TXDCTL_PRIORITY_MASK	GENMASK(27, 27)
>=20
>  #define IGC_TXDCTL_PTHRESH(x)
> 	FIELD_PREP(IGC_TXDCTL_PTHRESH_MASK, (x))
>  #define IGC_TXDCTL_HTHRESH(x)
> 	FIELD_PREP(IGC_TXDCTL_HTHRESH_MASK, (x))
> @@ -504,6 +507,8 @@ static inline u32 igc_rss_type(const union
> igc_adv_rx_desc *rx_desc)
>  #define IGC_TXDCTL_QUEUE_ENABLE
> 	FIELD_PREP(IGC_TXDCTL_QUEUE_ENABLE_MASK, 1)
>  /* Transmit Software Flush */
>  #define IGC_TXDCTL_SWFLUSH
> 	FIELD_PREP(IGC_TXDCTL_SWFLUSH_MASK, 1)
> +#define IGC_TXDCTL_PRIORITY(x)
> 	FIELD_PREP(IGC_TXDCTL_PRIORITY_MASK, (x))
> +#define IGC_TXDCTL_PRIORITY_HIGH	IGC_TXDCTL_PRIORITY(1)
>=20
>  #define IGC_RX_DMA_ATTR \
>  	(DMA_ATTR_SKIP_CPU_SYNC | DMA_ATTR_WEAK_ORDERING) diff --
> git a/drivers/net/ethernet/intel/igc/igc_defines.h
> b/drivers/net/ethernet/intel/igc/igc_defines.h
> index 7189dfc389ad..86b346687196 100644
> --- a/drivers/net/ethernet/intel/igc/igc_defines.h
> +++ b/drivers/net/ethernet/intel/igc/igc_defines.h
> @@ -588,6 +588,7 @@
>  #define IGC_TXQCTL_QUEUE_MODE_LAUNCHT	0x00000001
>  #define IGC_TXQCTL_STRICT_CYCLE		0x00000002
>  #define IGC_TXQCTL_STRICT_END		0x00000004
> +#define IGC_TXQCTL_PREEMPTIBLE		0x00000008
>  #define IGC_TXQCTL_QAV_SEL_MASK		0x000000C0
>  #define IGC_TXQCTL_QAV_SEL_CBS0		0x00000080
>  #define IGC_TXQCTL_QAV_SEL_CBS1		0x000000C0
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
> b/drivers/net/ethernet/intel/igc/igc_main.c
> index 8562565842b1..c6e2cfd630df 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -6419,6 +6419,7 @@ static int igc_qbv_clear_schedule(struct
> igc_adapter *adapter)
>  		ring->start_time =3D 0;
>  		ring->end_time =3D NSEC_PER_SEC;
>  		ring->max_sdu =3D 0;
> +		ring->preemptible =3D false;
>  	}
>=20
>  	spin_lock_irqsave(&adapter->qbv_tx_lock, flags); @@ -6484,9
> +6485,12 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>  	if (!validate_schedule(adapter, qopt))
>  		return -EINVAL;
>=20
> -	/* preemptible isn't supported yet */
> -	if (qopt->mqprio.preemptible_tcs)
> -		return -EOPNOTSUPP;
> +	if (qopt->mqprio.preemptible_tcs &&
> +	    !(adapter->flags & IGC_FLAG_TSN_REVERSE_TXQ_PRIO)) {
> +		NL_SET_ERR_MSG_MOD(qopt->extack,
> +				   "reverse-tsn-txq-prio private flag must be
> enabled before setting preemptible tc");
> +		return -ENODEV;
> +	}
>=20
>  	igc_ptp_read(adapter, &now);
>=20
> @@ -6579,6 +6583,8 @@ static int igc_save_qbv_schedule(struct
> igc_adapter *adapter,
>  			ring->max_sdu =3D 0;
>  	}
>=20
> +	igc_fpe_save_preempt_queue(adapter, &qopt->mqprio);
> +
>  	return 0;
>  }
>=20
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c
> b/drivers/net/ethernet/intel/igc/igc_tsn.c
> index 5dc05b42f53f..897813eb2175 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.c
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
> @@ -115,6 +115,18 @@ static int igc_fpe_xmit_smd_frame(struct
> igc_adapter *adapter,
>  	return err;
>  }
>=20
> +static void igc_fpe_configure_tx(struct ethtool_mmsv *mmsv, bool
> +tx_enable) {
> +	struct igc_fpe_t *fpe =3D container_of(mmsv, struct igc_fpe_t, mmsv);
> +	struct igc_adapter *adapter;
> +
> +	adapter =3D container_of(fpe, struct igc_adapter, fpe);
> +	adapter->fpe.tx_enabled =3D tx_enable;
> +
> +	/* Update config since tx_enabled affects preemptible queue
> configuration */
> +	igc_tsn_offload_apply(adapter);
> +}
> +
>  static void igc_fpe_send_mpacket(struct ethtool_mmsv *mmsv,
>  				 enum ethtool_mpacket type)
>  {
> @@ -136,15 +148,50 @@ static void igc_fpe_send_mpacket(struct
> ethtool_mmsv *mmsv,  }
>=20
>  static const struct ethtool_mmsv_ops igc_mmsv_ops =3D {
> +	.configure_tx =3D igc_fpe_configure_tx,
>  	.send_mpacket =3D igc_fpe_send_mpacket,
>  };
>=20
>  void igc_fpe_init(struct igc_adapter *adapter)  {
>  	adapter->fpe.tx_min_frag_size =3D TX_MIN_FRAG_SIZE;
> +	adapter->fpe.tx_enabled =3D false;
>  	ethtool_mmsv_init(&adapter->fpe.mmsv, adapter->netdev,
> &igc_mmsv_ops);  }
>=20
> +static u32 igc_fpe_map_preempt_tc_to_queue(const struct igc_adapter
> *adapter,
> +					   unsigned long preemptible_tcs)
> +{
> +	struct net_device *dev =3D adapter->netdev;
> +	u32 i, queue =3D 0;
> +
> +	for (i =3D 0; i < dev->num_tc; i++) {
> +		u32 offset, count;
> +
> +		if (!(preemptible_tcs & BIT(i)))
> +			continue;
> +
> +		offset =3D dev->tc_to_txq[i].offset;
> +		count =3D dev->tc_to_txq[i].count;
> +		queue |=3D GENMASK(offset + count - 1, offset);
> +	}
> +
> +	return queue;
> +}
> +
> +void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
> +				const struct tc_mqprio_qopt_offload
> *mqprio) {
> +	u32 preemptible_queue =3D
> igc_fpe_map_preempt_tc_to_queue(adapter,
> +								mqprio-
> >preemptible_tcs);
> +
> +	for (int i =3D 0; i < adapter->num_tx_queues; i++) {
> +		struct igc_ring *tx_ring =3D adapter->tx_ring[i];
> +
> +		tx_ring->preemptible =3D !!(preemptible_queue & BIT(i));
> +	}
> +}
> +
>  static bool is_any_launchtime(struct igc_adapter *adapter)  {
>  	int i;
> @@ -317,9 +364,16 @@ static int igc_tsn_disable_offload(struct igc_adapte=
r
> *adapter)
>  	wr32(IGC_TQAVCTRL, tqavctrl);
>=20
>  	for (i =3D 0; i < adapter->num_tx_queues; i++) {
> +		int reg_idx =3D adapter->tx_ring[i]->reg_idx;
> +		u32 txdctl;
> +
>  		wr32(IGC_TXQCTL(i), 0);
>  		wr32(IGC_STQT(i), 0);
>  		wr32(IGC_ENDQT(i), NSEC_PER_SEC);
> +
> +		txdctl =3D rd32(IGC_TXDCTL(reg_idx));
> +		txdctl &=3D ~IGC_TXDCTL_PRIORITY_HIGH;
> +		wr32(IGC_TXDCTL(reg_idx), txdctl);
>  	}
>=20
>  	wr32(IGC_QBVCYCLET_S, 0);
> @@ -400,6 +454,7 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
>=20
>  	for (i =3D 0; i < adapter->num_tx_queues; i++) {
>  		struct igc_ring *ring =3D adapter->tx_ring[i];
> +		u32 txdctl =3D rd32(IGC_TXDCTL(ring->reg_idx));
>  		u32 txqctl =3D 0;
>  		u16 cbs_value;
>  		u32 tqavcc;
> @@ -433,6 +488,22 @@ static int igc_tsn_enable_offload(struct igc_adapter
> *adapter)
>  		if (ring->launchtime_enable)
>  			txqctl |=3D IGC_TXQCTL_QUEUE_MODE_LAUNCHT;
>=20
> +		if (!adapter->fpe.tx_enabled) {
> +			/* fpe inactive: clear both flags */
> +			txqctl &=3D ~IGC_TXQCTL_PREEMPTIBLE;
> +			txdctl &=3D ~IGC_TXDCTL_PRIORITY_HIGH;
> +		} else if (ring->preemptible) {
> +			/* fpe active + preemptible: enable preemptible queue
> + set low priority */
> +			txqctl |=3D IGC_TXQCTL_PREEMPTIBLE;
> +			txdctl &=3D ~IGC_TXDCTL_PRIORITY_HIGH;
> +		} else {
> +			/* fpe active + express: enable express queue + set
> high priority */
> +			txqctl &=3D ~IGC_TXQCTL_PREEMPTIBLE;
> +			txdctl |=3D IGC_TXDCTL_PRIORITY_HIGH;
> +		}
> +
> +		wr32(IGC_TXDCTL(ring->reg_idx), txdctl);
> +
>  		/* Skip configuring CBS for Q2 and Q3 */
>  		if (i > 1)
>  			goto skip_cbs;
> diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.h
> b/drivers/net/ethernet/intel/igc/igc_tsn.h
> index c2a77229207b..f2e8bfef4871 100644
> --- a/drivers/net/ethernet/intel/igc/igc_tsn.h
> +++ b/drivers/net/ethernet/intel/igc/igc_tsn.h
> @@ -4,6 +4,8 @@
>  #ifndef _IGC_TSN_H_
>  #define _IGC_TSN_H_
>=20
> +#include <net/pkt_sched.h>
> +
>  #define IGC_RX_MIN_FRAG_SIZE		60
>  #define SMD_FRAME_SIZE			60
>=20
> @@ -15,6 +17,8 @@ enum igc_txd_popts_type {
> DECLARE_STATIC_KEY_FALSE(igc_fpe_enabled);
>=20
>  void igc_fpe_init(struct igc_adapter *adapter);
> +void igc_fpe_save_preempt_queue(struct igc_adapter *adapter,
> +				const struct tc_mqprio_qopt_offload
> *mqprio);
>  u32 igc_fpe_get_supported_frag_size(u32 frag_size);  int
> igc_tsn_offload_apply(struct igc_adapter *adapter);  int igc_tsn_reset(st=
ruct
> igc_adapter *adapter);
> --
> 2.34.1

