Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A7F9F6699
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Dec 2024 14:11:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CE46042480;
	Wed, 18 Dec 2024 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tzFWjKbDZpqv; Wed, 18 Dec 2024 13:11:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E455142476
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734527509;
	bh=wG6rczmF94+CkB73R/aZyr98410gu/PATk7BR55Zqbc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5NQUl0mUDMsipYAL/4mvB/wfcWUxB/poir2aXLosfgTVPfie8X7m2gBQcw6RzoV2x
	 w5U9gx0h5Xz90Mbj35nMjLygPX0kd3Lz/3JoydCdbFpi4BYtZA0NeVPqK8NfCYqyrm
	 QIiH3ozDVoIN1R4IPUfcbfEGkl2Ln6ZSi/FCGQhwAR7q/prLdcYU+qCZIiQJzz6SOP
	 dkVds5h7trF0JJG0Mtu76deTozxGIEWDM3S0m+T2D/5ZDLOymiIw6MDme4RGySGEMb
	 qyqODqSe2hF0NY8QHKPXlwehTizrFktfxjXsC0vFzKspOGSMdGMZbAHWd1MrP4kJir
	 OtsQhkIZiNNJQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E455142476;
	Wed, 18 Dec 2024 13:11:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id DDFC6CE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BF87A42459
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rZgXzkFuew0z for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Dec 2024 13:11:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C1A1842460
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C1A1842460
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C1A1842460
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Dec 2024 13:11:45 +0000 (UTC)
X-CSE-ConnectionGUID: f3CSeg0dRlSRvP2sLU+rIg==
X-CSE-MsgGUID: XmuIEyzSR16iCA5eSyVwwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35216662"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="35216662"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 05:11:45 -0800
X-CSE-ConnectionGUID: e0bfzJGqTLqnlILJDQzzFw==
X-CSE-MsgGUID: wx8mvIXOTqGhUQR/U7pNxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98337504"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Dec 2024 05:11:45 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 18 Dec 2024 05:11:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 18 Dec 2024 05:11:44 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 18 Dec 2024 05:11:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rTuCNnjsfXYUcDhFfmjEgJBeH4GmMzU7MThG3Y0vwdAAyUXxDi6ZHYGnbyF6WXopEJWek5KCrcNoGWahfh95DVDnkaso5SdBkw9+wUK09/zQbWD7bfcufuA3IQs+ML4pfLgXqC91h2VjrPIzVdTh1EzHjPRL2lBaLgsojIZdpJR14HdfoB1/0Ag2skjEhsoQzTRsFu4acRNE23HAnKQmy7yisAZYTO4ZVDS72DNndyTCLHYeXfvnFTbC5jbMVYoNM2PxT+no0aiN2O6yb5WI7Mgqu5uwaxs/0Uj2HGXkas1g36QzRCSzaB8gH2swaGntF21HSrxfz5qNBJrowL5PmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wG6rczmF94+CkB73R/aZyr98410gu/PATk7BR55Zqbc=;
 b=GiIU89RLXcHyMctRM8nNLdqxAeIOkZeIFtxJVCedKLlqiqYpzEoLuEyMhRjTB67jfRz5tIKtMdNYaQCrzk1lf+k6TJJQs5jioKo4Ut8FnKS3PpBWcFdwt/4qP/XnlHdwkuBwi/3Q7BVpe/fxCwZ974xZ0VZdD/GCE7kpiei28iqnHU44h2eMyVyjfFrYqcJXZ+MN2yn2nKyes9+u25YOB4AMp36mMrVqLuwCwisV12xzELItg099/yriFu30twC4Cf7TrR5e1LWHwNPzoU5di4pN+wPeEMXx8umiESIHr0vC+E1IZ3S5IHHpzXdFf4jE2l4IJBVMPC4Cj6nt39ZAAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Wed, 18 Dec
 2024 13:10:42 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%3]) with mapi id 15.20.8251.015; Wed, 18 Dec 2024
 13:10:42 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, Carolyn Wyborny <carolyn.wyborny@intel.com>,
 "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>, "Glaza, Jan"
 <jan.glaza@intel.com>, Simon Horman <horms@kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
 management in E610 device
Thread-Index: AQHbRvI6o+BeNDGCoUGw2Yz9FfLpnLLsDg1g
Date: Wed, 18 Dec 2024 13:10:42 +0000
Message-ID: <PH8PR11MB79656541308D11C577601D31F7052@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20241205084450.4651-1-piotr.kwapulinski@intel.com>
 <20241205084450.4651-9-piotr.kwapulinski@intel.com>
In-Reply-To: <20241205084450.4651-9-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|MW4PR11MB5800:EE_
x-ms-office365-filtering-correlation-id: 94125ff6-1651-4e1d-a2ed-08dd1f656014
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?GktRjB27guD8cQJZxDu2JG8bMuDK5Rvo/gGwpPV/fWYObv4BGEsdBU4TWv75?=
 =?us-ascii?Q?GwUKjHYIRRZZ0alqcD+lM2jBQA3KCRzcYlROqm8Ie+4DUFJuzEZH0AqGa1Rk?=
 =?us-ascii?Q?NwiVUP7Y9HitUMoXF2+CmBMdiDCgi+/AGdiUjVD+OwgnOPxCnEnuH+dAkBtT?=
 =?us-ascii?Q?4D4cou4KeHdM0B9yXTnBdr0PKykcJIbjVTKo/oQpgWJJuiOdutUvdOu3wXVF?=
 =?us-ascii?Q?RC9DInYljOMjUcM48OpmJ/36Iy1mD955NMteMjs8FmV0afBPi/AnjOfJLX2D?=
 =?us-ascii?Q?xuvOMTZAbisALspcKhMnoPo6OP3DDlgNkpsO7Z3OMyIt6nLqmf/FLlInHtW4?=
 =?us-ascii?Q?pi+T/rPeGUXHKNFdaXyyDu//eOfpa8JhvPopLU4Tb4Y1vyOaiYEkddCU9teR?=
 =?us-ascii?Q?U9gOlJvmwqU0Yvi3NDscQreoGgEy6KWNZJkRz0cLYHc6Bka7gt2g4kvQ90A1?=
 =?us-ascii?Q?Yb6HZ//ABHJzDXtWXi7huFdnUOMlTezaDox9jMvF7JWhqipJnxhoN5JvuzYw?=
 =?us-ascii?Q?2aS5zFxYCMnuV+3EZ0Ww5jkQeswAHsEUNTJ1r+YmjPPbSwXWqZkoRNLnQt38?=
 =?us-ascii?Q?r0M2qooSByEH0VPevH/2Z8462/tNgdQfCllrwdIASGXwu9Z87mmhx7xD/rNb?=
 =?us-ascii?Q?kBSFgZY8S4RSdsjTvG2QhC8zVxIUei9mLhbqxL2+rcgLoAVaFuwclrDfCDIu?=
 =?us-ascii?Q?2DE/XsHDnmZjunmyvtsotPurTyMWVCcT3qVi0E8XUsK4/KDe76we1Der6qrJ?=
 =?us-ascii?Q?MPJ9YZcT8NzSFMPzuh7OxvSBseXwavYB6z2JDzXGbOSNgg1HBdeZHzPj3Y6V?=
 =?us-ascii?Q?Z2wZpSU5TKRKyTrr6ygBQzYUsOLLwbcAAvk213LVy2t/nXacvOffeD2u3Ras?=
 =?us-ascii?Q?oaT1EO99hOzjO/tjBdjvPSwV/dclFSG8RhxCkPrjUuBcCUCvdtzM36kFNb3B?=
 =?us-ascii?Q?JftF5dGoEBdvbl0IBgFxTXAkj4pnWNZo+mAZMV3SRAyPDvo8RDxVrwFh3BKu?=
 =?us-ascii?Q?PCZIxLs7s9Tq/tO6XPWtD9Vc1j3nj2elO4MbtNa1k1+hVzPTTTHsTAXPrPh5?=
 =?us-ascii?Q?BJGUlblJY7K3Di7nfv+FJBaciUo/NRE+beFlTyQwCAGElR2H28DqK0nxL+Uh?=
 =?us-ascii?Q?SEXAlhYLkpNrQtIimQ7FUtQOpdXjdRV67fKUNSCCTv+l9acrtgzJoSLyZSJb?=
 =?us-ascii?Q?D4KaIutEWNbJXFO5PEay1lKLrnhdueB934YyVrMN/BpPzvEd36MQVQ7zC9g9?=
 =?us-ascii?Q?B8NgA3FN5T8A1hF/+6YenGhO6baCjQpPysvdLLPMSV5przjxojULX6LPDgPT?=
 =?us-ascii?Q?PQ6taEHmq0CneBbv+JtlC8Z68NKjQRIjzySMwXV9Vk+sEmYsTvNOsz4oEvos?=
 =?us-ascii?Q?hTVk1Cm3Zji5xRT6zEfdeHt9rhQd7cfA3WofwiWmbwnkQY/5YEMGMGzQnX5h?=
 =?us-ascii?Q?LyzeNNvKzPXtTRwMIIhIOhACCLSs1aAL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JhEcrfSVi8V1HPV2JU+fhAfaUIlk9fDnNqD1P0/Yzb60AywQMsPpZinj5/Qj?=
 =?us-ascii?Q?488wtoRQNO+OG7iY6lQDWBZbIw7+8e9nSi9W4BYC/AF60WedYKIZUTKL3HPY?=
 =?us-ascii?Q?LOtQlyY53Z0WeQizkUbzIGi4ecJHRe3aL90ZmScefaPkvj8AGj46UPRJPbc0?=
 =?us-ascii?Q?ydu53nRaEt03MldPNs2lBtbfQPu3Yx2Ws5IDTydUsj00CujNM3exP6xFJO8M?=
 =?us-ascii?Q?rofd7KXYH80zdMztKsc90wpHuMowH5YWP0+W1x7+VJLy8u9g1ynw5dzcaL/x?=
 =?us-ascii?Q?KhZLcYf8elj2njusbHszZQRkThdklHqAg2mPIZZ4XGEQGiPBH5dn9BFgHR0x?=
 =?us-ascii?Q?G/uHiJ+cf/LfrdtB14xtgLP/ZVCjYuStcd7bd5lu9GREmk+7BSc3z+nZNhhx?=
 =?us-ascii?Q?7YvKtqEOipKE+b88s6prwBHynPP8QnuBb3KmimCxJ2BX/xYvTgluDDTTW+xO?=
 =?us-ascii?Q?FWoizggAw0lMo488CunkVCco79qI4ogL6XBXeOxYbADTQEY9cqXJDLSmpv5t?=
 =?us-ascii?Q?1juKqjo5bjNiigfg2oLhrYgg3PonaqhnlsYDsUanX1PC9axUst4+vBBi4da6?=
 =?us-ascii?Q?KqRoZPKYdvOuEgSdzwRPDC9UkbPigC2aOtcsYiSefgpTLv7afiMmxSVPgo/H?=
 =?us-ascii?Q?PNIJqgBHBHLkbBE0r22hq45h5ylmEJ2P2xP62VaNTxNa1UmswOkmxMZUtYdS?=
 =?us-ascii?Q?yhjMB0LdLdUIAHJsnBslcHEn82wmU2LHrvA7/YWfqp2EhfAMZL9/Pv8S8dZU?=
 =?us-ascii?Q?HyHU/EiKf9N+eoBL7xNH9lX3MMw91RObgyj32GabKmzsAwPrjuHrioWkIjwB?=
 =?us-ascii?Q?IOyTZMyKYUAhPEROuB9qbGizc/ZnjinHyI1yNXbE+NyBm9VQIsAcmbOItWib?=
 =?us-ascii?Q?7cJ1hLqtehpYu3mxCacPmcxBPVuAM4hpi4oaCmCWZl0aVQldQPHvSlFIwhTV?=
 =?us-ascii?Q?rKxwiJYZvGF9kd95hI905+roUlaOM+A3Fqo75t7hsEZJbWEm7EUN39yiuqwj?=
 =?us-ascii?Q?/Lcjz4XqGkXCCfU40RfhkQu/HtvxzOu+ZoqllFKX5slGQQb7ACt/9ZV2cAFC?=
 =?us-ascii?Q?01ySHMsksNeAbBVFafoCOjZmvYWKcYQM38FudaI016bfEam1RMgprakzan6R?=
 =?us-ascii?Q?pPK608xFX9wc6gni4mdgJakr0oJt5DFXMNDXnbRa7qBLdgfuJHf28pIEfN0K?=
 =?us-ascii?Q?20v4KZUZYFxPHCgu2sRKlXIIrIT5PdWU4uzm1+z3gkLQmlQYcJY0Qv/5dSXW?=
 =?us-ascii?Q?GMdJe4Ce5dqsd7MkebxFg6NSKSi67nLoXbxcB1T0OvezKMhHPnZJ928TH0h7?=
 =?us-ascii?Q?UIOEfKeg77dy82c4spMt6+0N0FPdwD1QLkDfR1ZDjOogG4moK9JJdHGBeGEb?=
 =?us-ascii?Q?4HZCeEoPI/wHdW0dqaF47IwXSltrau3sYuHWnlK8SzaRRAEaulamL8AixmY1?=
 =?us-ascii?Q?MRlBVydp+GCrTKedbbUYWhvzu+HZe/1g9B+aHc8xvWIPiV5+WDd3SicyzmJK?=
 =?us-ascii?Q?9msC9Cl54l5lF0pSHscDzy/zaNo3/sNOUlNNa3zxN1SrSkkoebD3WhKCuQnf?=
 =?us-ascii?Q?zepoBFE8K7jJpsx+wU8V8XVu/aoBHQEjxmAel9Z8?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 94125ff6-1651-4e1d-a2ed-08dd1f656014
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2024 13:10:42.0523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPGcwGiXyBNKF+oOwn5ylJEvL0dqdStmcCqJNmsuZK493uwTr2dI2iIRRk3oFTCobLpZPW7p6pVHxbSUxjx4uA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5800
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734527506; x=1766063506;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=upwuUmq4GmZ4mMziwFWwf+7+x9Upj74phfffTpAuIgw=;
 b=nVAWGv0DVUAEI8WtzAwulkyjNGdsp2zQ+QQUm0Ep9+Lt2DGwvWHmcJDD
 XD+dvWDcC3OVAnVoonntDCX8dISSVclYE8YdYVqqXOmsYhhP0AtDUI+bb
 WE/N1bohWtzREUsVC7Il0b8dEoS2P1wR4S/0pJ89WS6YzImzFYVTd/kTX
 TqL50MtUT2706rjqkEULhLcyPVcHB3ygANvtV+I9BKGUKyJ3lE21eiIXn
 tGJMUrSsAC7XWYxXoUDl6p6+BkkGWRFcsOPp9r9SfW+kYoczmrWgHEPlU
 GQeKoUZeR5qp0qpYqYL5nKXk1ob9/Gta0d8EGQf7EXEDOH1CyCi2xmtAI
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nVAWGv0D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
 management in E610 device
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
> Piotr Kwapulinski
> Sent: Thursday, December 5, 2024 2:15 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Carolyn Wyborny
> <carolyn.wyborny@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>; Glaza, Jan <jan.glaza@intel.com>; Simon
> Horman <horms@kernel.org>
> Subject: [Intel-wired-lan] [PATCH iwl-next v12 8/8] ixgbe: Enable link
> management in E610 device
>=20
> Add high level link management support for E610 device. Enable the
> following features:
> - driver load
> - bring up network interface
> - IP address assignment
> - pass traffic
> - show statistics (e.g. via ethtool)
> - disable network interface
> - driver unload
>=20
> Co-developed-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Signed-off-by: Carolyn Wyborny <carolyn.wyborny@intel.com>
> Co-developed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Jan Glaza <jan.glaza@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  13 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_82599.c    |   3 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_common.c   |  19 +-
>  .../net/ethernet/intel/ixgbe/ixgbe_dcb_nl.c   |   3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 165 +++++++
>  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.h |   1 +
>  .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  |   6 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c  |   3 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 414 +++++++++++++++++-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.c  |   4 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_phy.c  |   5 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_x540.c |  12 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.c |  21 +-
> drivers/net/ethernet/intel/ixgbe/ixgbe_x550.h |  20 +
>  14 files changed, 659 insertions(+), 30 deletions(-)  create mode 100644
>=20

Tested-by: Bharath R <bharath.r@intel.com>

