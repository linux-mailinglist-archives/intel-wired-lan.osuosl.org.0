Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22FD98D44F6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 07:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCEC86102A;
	Thu, 30 May 2024 05:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o_mtEabNQU4r; Thu, 30 May 2024 05:52:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E72DA60B13
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717048351;
	bh=Q475Tc8JBJGC4W+w4K06DdHG+RH2VkVVSTj5kMwse8U=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ERPUj72LKamd3G9FCnIVEQcZcmoJm4eEjACpjWcLPMe5CVx0E7TtwraFXWSeZzxDf
	 0RQIjwl93BPpfsy8Cjit4wFjh++nhoIfkD/3ToZau2AYcquSvUgrtTjKMic2WCQE5V
	 J/qGvhvEa/MlRPH9ROtdTbNgOhri2DX2qVg3LmmVb4QV7feJJj3g1s8mRXmyuTMy7M
	 enTqAerFWf49fZgEvF7CU8E4QcKlw6o3GD8WIloLA5PBKIZh2AFomoQd/v1K+haXH2
	 SIWo5HqzMF5SqxNiWi3goQSKdtiqjeWDTlraD7dlK6hOmFpHTd6RzCuRrL590KHfaS
	 yx+XFltxmPbTg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id E72DA60B13;
	Thu, 30 May 2024 05:52:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 37AF51D4236
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:52:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1969C60790
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:52:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qaFoJL3fOmNc for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 05:52:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lakshmi.sowjanya.d@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 19F4F60657
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19F4F60657
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 19F4F60657
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 05:52:26 +0000 (UTC)
X-CSE-ConnectionGUID: Cw1SsoVOS++3qZLLDEbzOg==
X-CSE-MsgGUID: X6gcl7rUSwC58sba9m05Jg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="17296077"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="17296077"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 22:52:26 -0700
X-CSE-ConnectionGUID: QnMIvU/cSrSzXGLsdVumcA==
X-CSE-MsgGUID: 2FiGaZIZRa+dvIt+9s/odQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="35638267"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 22:52:25 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 22:52:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 22:52:24 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 22:52:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 22:52:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mKnt2XxmxQ4NPK1RXozNC2px6SePD8XEnLiKikwxJNRFTQMCqdNKoNxVW9djRzlW6z+xi39ZTZSiAM3LlnxheeazIiOT/WzL5Q6zz0tPdcqbLqHLnKQZNs10kohO1EzhdDBcy+gDYghHecTUvkVhWPLlA2XON61idQO92a9dgnYsOOuoO2oOms8ScOV+Ch8P/TNINQHoCz988jh7G7291GJ2befPuC5BvMlE3yXNBu4vyqEbXvk4qi3tKf9sziqrtBgYbwYu/urJrsFKqahTs3bsF6LS5yVdmno8CCtoO7lHMFzQKq3fmTGpFY9ZAPbQLtxGOeIqmPfypQ9GPpzHew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q475Tc8JBJGC4W+w4K06DdHG+RH2VkVVSTj5kMwse8U=;
 b=bkTv3vrmdazKB5DZ3gGXWhLF/FiKCC/tBSV3rcs8pJuAIkovtpuCG6chiCpAHSIIiAeATOb+e822HLYwSP84tPXRJLrUFHodnsA/IvrxpSbgAy4QSP+2iya8LEMMjqXE6Icv9GMHz7HhTnjkt7pwo3eOXWGCasrG9/LAUaEbwckU6VSbtMSQf1/gnldPSsHkVsUUBKaSu8Moqavp3JJrLvTfAO3FDrH/IIMDKsDIy1IEzRA92y5l3+16jX7FTF0D00XgJy4iSernGPUc+p+vUTtuE6N8JHeT3l5a75CrTObaFcNKD4r8Y6x8Bgn8waSKY+RESqJwue0y5te1uQdO1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by SJ2PR11MB8514.namprd11.prod.outlook.com (2603:10b6:a03:56b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30; Thu, 30 May
 2024 05:52:22 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::1fe:535e:7c0e:1d67%3]) with mapi id 15.20.7587.035; Thu, 30 May 2024
 05:52:22 +0000
From: "D, Lakshmi Sowjanya" <lakshmi.sowjanya.d@intel.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Thread-Topic: [PATCH v8 10/12] pps: generators: Add PPS Generator TIO Driver
Thread-Index: AQHapSHXUIkwGaeDCkGimvlL+UU2cbGVBGIAgBXrFfCAAEwvgIAEIpPA
Date: Thu, 30 May 2024 05:52:22 +0000
Message-ID: <CY8PR11MB7364118081A77973A9504C4CC4F32@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20240513103813.5666-1-lakshmi.sowjanya.d@intel.com>
 <20240513103813.5666-11-lakshmi.sowjanya.d@intel.com>
 <ZkH3GP2b9WTz9W3W@smile.fi.intel.com>
 <CY8PR11MB7364D1C85099E4337408EBAFC4F02@CY8PR11MB7364.namprd11.prod.outlook.com>
 <ZlSZ63ST-Pj9CwCh@surfacebook.localdomain>
In-Reply-To: <ZlSZ63ST-Pj9CwCh@surfacebook.localdomain>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|SJ2PR11MB8514:EE_
x-ms-office365-filtering-correlation-id: e5005cd1-c896-4da7-3947-08dc806cacb6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230031|366007|7416005|376005|1800799015|38070700009; 
x-microsoft-antispam-message-info: =?us-ascii?Q?TTqcrxTq6KxucDj8p4j8KJuI2y7rvYt+0WA+pb1M064ZH7n3WYdo0wiEn66X?=
 =?us-ascii?Q?ho4jcqM0Lth2DSgyrXr/iGy+4ftFyqE/PdZAqHc9xwLQpwAcJ/eiAsjLLra8?=
 =?us-ascii?Q?Vq3KmHCvwiF7Nt01p4K70w+8CT3/43PkX5at//sLXp3oMSxVGVGYeWxb25IY?=
 =?us-ascii?Q?t7PprLdOtXkaAiy8SKrkoXFmoSAfMwNT59Zy034r9XzRYt+ujeXy8l1UOYUL?=
 =?us-ascii?Q?3UNqf1J8hTztFzCI4HD31spIitrDoR3j6xWgfZOfz/EgGn9YLZLPSOAceiqn?=
 =?us-ascii?Q?7cY/A1M3u5N10zEHDuJ3Tn/0gm9pWzJzmxNYX41OwIS1iPoytQKnx6IAu308?=
 =?us-ascii?Q?U5xlAaaXpiTtYXoLVlPMPOx3y/+IlaZjMtrHKelDtP+04GaMRsSNBXZzaTYz?=
 =?us-ascii?Q?+XieDuPyCkTn909Zom4WRRuo+S3IaIBfzCaHFmYqpHNwPAh+0391x/NV6ijn?=
 =?us-ascii?Q?X4CqAOYM0jAWHeWVmX2FEX26aJ+0pK5TV355MiPEusUl/+bnRJxx6QryqxZT?=
 =?us-ascii?Q?qYlMDgwPaP5Vunm4quYAxDKHRohxxJpz7aTAQTGBQGioQJ59eMRFxAM5vAFR?=
 =?us-ascii?Q?U7IQ/GN6TsvATmE0RSPPxPNHdYFsoQKIVpIwhhWCdBYZWTqNnEIW5fwAZHMI?=
 =?us-ascii?Q?RhhlcODIIpoqyYmkUJeWSBS3mXpSH0Tbp7/npzJTCQuk1WTp44Vu4UwWrOKX?=
 =?us-ascii?Q?3MhEWIZj84DEuLiEmyp33SRDF090D56EC9Rd3TX6XwzN5JC2QWLjxsR782nQ?=
 =?us-ascii?Q?FP7tqaVVHbqQBRHpEyBgRhtDnzefOpYcmc71zHGpCrtZ8kI/JHDBK/NncSM0?=
 =?us-ascii?Q?kQgTj/kzczUUWRDAHradh34VYwV8VovgoA33cPwVYX8FflsQW5gYQO1tpRkP?=
 =?us-ascii?Q?sKlcB6q6RNTVFXsCYL2WVsYUuH1bf8//WjFUKbva4PSUQPXdUYRn2JAfTU04?=
 =?us-ascii?Q?+Zdw2LZNTWqpQvVaUM6MJQ5ylD3WYE3cUpfDXaeIvNImDdp6HoJXO6PAnrC4?=
 =?us-ascii?Q?kK4UCxFChchDeN9zBcpj7Fx1anS+VWsGnRdUcEVZ3VPpkSg6+OClv0JbaNqi?=
 =?us-ascii?Q?JLbt0xHHomkBQwRNqthjbdFJkTB+yzP2fMV8a5jCDlBu/j27VmM6Gq6sGHss?=
 =?us-ascii?Q?Ad6Vu0XPGNdlDClTqwIPIv+dUZPwAM30o44dzEmraeljZp/ijaOnWfX24Pk4?=
 =?us-ascii?Q?yxOiIRDllFUiBLRYIKZsN1M8No/z6q3DW8R5c2RnsrsLRr8VIsoGBSBNqWVE?=
 =?us-ascii?Q?CrV8wvM9bn3ZiitX0EXLnqVt0IB9B036jSt21dlEcaJst3yT59fWLyDDIEmj?=
 =?us-ascii?Q?qfMJv/f+PIn9CL5C/6CX4GYi6qjpsX7JWyaeFjOJpEd0tQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(7416005)(376005)(1800799015)(38070700009); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4/gc4AuBADE/NRjcGtPgJdXdIDDGWPr7Uwy6+C4l+bHbL/jHV3cQ8SZ42ndp?=
 =?us-ascii?Q?CfWy3/QJ/7PNGHOTLcD7Xw5IMDlR7Qeu88/pHckQLnft2e2EfFQKKeFCowRh?=
 =?us-ascii?Q?gT5bMPFwmxiK6hArJAbpeCxocjneqeRB3H+w+9Vg3TFUqD0msL83QFalC2sL?=
 =?us-ascii?Q?yeE8UJ4ZnGwXk5YmxN5Wml3GiwdJNfYjO8SncoXE6+gaTpL7zERoYzqA9s08?=
 =?us-ascii?Q?TQrZhu9ECitB5l0MNIvMZ3E9mBd+gxFUU4Ta1Cf6O8SbBFrvkIoVvxeSKM83?=
 =?us-ascii?Q?XvscuR5c/jH8dqGtwv06qXrrSKfcGGwYvD+O/gUCvwaF9RiG3vGijbWqLOZJ?=
 =?us-ascii?Q?AmdcFRjBYXNbcs2mdDTTk/47Fp3zEs66tWNAUbSDNVIZtkqwGa9C50/MSy89?=
 =?us-ascii?Q?z+p8VO2h84918G/3kLvObBuKibUmQYvghd18ASJn9+vcgSRslXn/YkGYPYnG?=
 =?us-ascii?Q?ynY/aorUSuyomapQ2y/ywjJDGCp5381t/JeEMa6u/kGmfgDMDAe0+VjuLPOl?=
 =?us-ascii?Q?HEGalqfHy7LP35CRHNpHhaiceKZrZTi0ryK6OtY4e8W0OuJRFoHAUPMFQdD0?=
 =?us-ascii?Q?KfMTtgIl9gqqwGMuqnlF5CXc+/4qb6cmEynPHASXxItSn1pK+Vq9EirVd6nu?=
 =?us-ascii?Q?uGf9vGus8F1bbWRVHZ1/H8igubPeGUhsPsw2aXwFT8CJr6t1VJdvSTPpkE13?=
 =?us-ascii?Q?F9jpY9zDcuYwhQfBVUWcgWByoXz3y0uHzugNIZ05L8WTEKWNjZIh2heWTVaX?=
 =?us-ascii?Q?q9S2eETJqMkOMsAOsOsxTCNFOjcVHj2UU+O9VSuyfGO8cAYfqysWN7xFEf2Q?=
 =?us-ascii?Q?LV818MZkLihNJ6vNXiJvl2AoTnhT/Xh3NuFNwQt+EU9pM2YBQScitf7qL61W?=
 =?us-ascii?Q?TstRX1jdI4UZe0LsVn2iFEzlBQ8y7dbYD2UgypcshJkQTvgPg8Bq+H/eSmIi?=
 =?us-ascii?Q?y4AhYQGBt0HDxsB4imj/T1If1pHx5O87FPReHjYBVWI7FKjY0U7FPMFtNeiH?=
 =?us-ascii?Q?zYOr0dampjJBZqXwnmoTaAC4eeM66vNXvAlu0HtcbeCE7tgBLvIWfWgEBU9t?=
 =?us-ascii?Q?h9aE39NzwT9u8z7Kmr6WNrUk5wIPSmRxVyQ9+tUWJqGzYNXGiYFl11i/u0et?=
 =?us-ascii?Q?DRPFLdDqZqMAmotct4ApoEMSK1e1hhXfigNXqPbXgGQ0T8OeiQ4H13+5nQFA?=
 =?us-ascii?Q?pMHbd3sm8cirMIvZC5t+iJVP60feQYQbLpM/Oi8eSmvf5qYxttlySNbw0Gv3?=
 =?us-ascii?Q?+TIUKYyd8TZTC51iU01sNWkjgRVq0FirQP0LawXgm/lgmeZFVNPVSgYqOA16?=
 =?us-ascii?Q?7Rsw4t05eU2eUl6e284vH7YVQ7aQ+wKcRToLWjuL0+z6KAVtpU+k/bsSrXDW?=
 =?us-ascii?Q?ewrZDP/mQzmMYV4h6l6VD78Q6WtVFv/z/F3vD9yiSZLfXEcbtx6llydBVFT7?=
 =?us-ascii?Q?0md7yewqpMkr4qNop2ZSxfuLs38oL8FLncDLzaDiZ1KkEqhqmGLnPgD7f/K8?=
 =?us-ascii?Q?xW8hKPWceaaM4Qad8yROEqSiMHGBgnkVHV+EbiEauL56Nd09TmR/qOCdoiT0?=
 =?us-ascii?Q?ikaK/N6zeQXwtjXcJnjJ/RsaTBE1s64Wj8Ec7QxOZKRWnc3ThlnUJSm1Ysx1?=
 =?us-ascii?Q?pg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5005cd1-c896-4da7-3947-08dc806cacb6
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2024 05:52:22.1989 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J6+p97mequNQpAEEVdjcinzrqNbu/HZ06A3+wgVaE/mKyelkMXdzp1Gn+X15qo3lp4gXNOFKPvoUoJVPof+GkbD0Vr2EEsCFxFFaiCHgz1c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8514
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717048348; x=1748584348;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gu0F3a1lN1kYCIUS1AZpDt7r7ifZHx0464OW8jrbcKE=;
 b=SIR6LLvIvy6jq4PrYF8fF/HeQQvcDJux+FRURmGPJjjvPr19lWSI2L+8
 dDiB+YsB/f6Tulz4cnHXW+9MrCzfHjrXdn4UnZ9f14yUZjKGmXh3UoUmS
 R7j5vk8N1Q0eD1a9BMXI3yz79l4K/N0pMjerYBUwWCcTqHcNAHpDV+EXr
 V2lCACbxQ7Dj/EtkEMIb7mwRxwqza70diDbYQj9H39b4hfypB8zi6GdBT
 LCqQmlAmEp9hw+Vw02F1CoJOhkaw5aNIRZdixXZDiK2cMOgzeuKmxn5Sx
 5BSeUWZRtljFlwF2+3hDimf4eCNMIEZJ1c6/i0b1U3k+vHkPSWJ7UJ+LN
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SIR6LLvI
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v8 10/12] pps: generators: Add PPS
 Generator TIO Driver
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>,
 "perex@perex.cz" <perex@perex.cz>, "Nguyen, Anthony
 L" <anthony.l.nguyen@intel.com>, "T R,
 Thejesh Reddy" <thejesh.reddy.t.r@intel.com>, "Hall,
 Christopher S" <christopher.s.hall@intel.com>,
 "corbet@lwn.net" <corbet@lwn.net>, "x86@kernel.org" <x86@kernel.org>,
 "joabreu@synopsys.com" <joabreu@synopsys.com>,
 "peter.hilber@opensynergy.com" <peter.hilber@opensynergy.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Mohan,
 Subramanian" <subramanian.mohan@intel.com>,
 "linux-sound@vger.kernel.org" <linux-sound@vger.kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 "giometti@enneenne.com" <giometti@enneenne.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "N,
 Pandith" <pandith.n@intel.com>, "Dong, Eddie" <eddie.dong@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "jstultz@google.com" <jstultz@google.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Andy Shevchenko <andy.shevchenko@gmail.com>
> Sent: Monday, May 27, 2024 8:04 PM
> To: D, Lakshmi Sowjanya <lakshmi.sowjanya.d@intel.com>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>; tglx@linutronix.=
de;
> jstultz@google.com; giometti@enneenne.com; corbet@lwn.net; linux-
> kernel@vger.kernel.org; x86@kernel.org; netdev@vger.kernel.org; linux-
> doc@vger.kernel.org; intel-wired-lan@lists.osuosl.org; Dong, Eddie
> <eddie.dong@intel.com>; Hall, Christopher S <christopher.s.hall@intel.com=
>;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; davem@davemloft.net;
> alexandre.torgue@foss.st.com; joabreu@synopsys.com;
> mcoquelin.stm32@gmail.com; perex@perex.cz; linux-sound@vger.kernel.org;
> Nguyen, Anthony L <anthony.l.nguyen@intel.com>;
> peter.hilber@opensynergy.com; N, Pandith <pandith.n@intel.com>; Mohan,
> Subramanian <subramanian.mohan@intel.com>; T R, Thejesh Reddy
> <thejesh.reddy.t.r@intel.com>
> Subject: Re: [PATCH v8 10/12] pps: generators: Add PPS Generator TIO Driv=
er
>=20
> Mon, May 27, 2024 at 11:48:54AM +0000, D, Lakshmi Sowjanya kirjoitti:
> > > -----Original Message-----
> > > From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> > > Sent: Monday, May 13, 2024 4:49 PM
> > > On Mon, May 13, 2024 at 04:08:11PM +0530,
> > > lakshmi.sowjanya.d@intel.com
> > > wrote:
>=20
> ...
>=20
> > > > +static ssize_t enable_store(struct device *dev, struct
> > > > +device_attribute
> > > *attr, const char *buf,
> > > > +			    size_t count)
> > > > +{
> > > > +	struct pps_tio *tio =3D dev_get_drvdata(dev);
> > > > +	bool enable;
> > > > +	int err;
> > >
> > > (1)
> > >
> > > > +	err =3D kstrtobool(buf, &enable);
> > > > +	if (err)
> > > > +		return err;
> > > > +
> > > > +	guard(spinlock_irqsave)(&tio->lock);
> > > > +	if (enable && !tio->enabled) {
> > >
> > > > +		if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
> > > > +			dev_err(tio->dev, "PPS cannot be started as clock is
> > > not related
> > > > +to ART");
> > >
> > > Why not simply dev_err(dev, ...)?
> > >
> > > > +			return -EPERM;
> > > > +		}
> > >
> > > I'm wondering if we can move this check to (1) above.
> > > Because currently it's a good question if we are able to stop PPS
> > > which was run by somebody else without this check done.
> >
> > Do you mean can someone stop the signal without this check?
> > Yes, this check is not required to stop.  So, I feel it need not be mov=
ed to (1).
> >
> > Please, correct me if my understanding is wrong.
>=20
> So, there is a possibility to have a PPS being run (by somebody else) eve=
n if there
> is no ART provided?
>=20
> If "yes", your check is wrong to begin with. If "no", my suggestion is co=
rrect, i.e.
> there is no need to stop something that can't be started at all.

It is a "no", PPS doesn't start without ART.

We can move the check to (1), but it would always be checking for ART even =
in case of disable.=20
Code readability is better with this approach.

        struct pps_tio *tio =3D dev_get_drvdata(dev);
        bool enable;
        int err;

        if (!timekeeping_clocksource_has_base(CSID_X86_ART)) {
                dev_err(dev, "PPS cannot be started as clock is not related=
 to ART");
                return -EPERM;=20
        }

        err =3D kstrtobool(buf, &enable);
        if (err)
                return err;

>=20
> > > I.o.w. this sounds too weird to me and reading the code doesn't give
> > > any hint if it's even possible. And if it is, are we supposed to
> > > touch that since it was definitely *not* us who ran it.
> >
> > Yes, we are not restricting on who can stop/start the signal.
>=20
> See above. It's not about this kind of restriction.
>=20
> > > > +		pps_tio_direction_output(tio);
> > > > +		hrtimer_start(&tio->timer, first_event(tio),
> > > HRTIMER_MODE_ABS);
> > > > +		tio->enabled =3D true;
> > > > +	} else if (!enable && tio->enabled) {
> > > > +		hrtimer_cancel(&tio->timer);
> > > > +		pps_tio_disable(tio);
> > > > +		tio->enabled =3D false;
> > > > +	}
> > > > +	return count;
> > > > +}
>=20
> --
> With Best Regards,
> Andy Shevchenko
>=20

Regards
Sowjanya
