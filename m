Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FAEA30BF5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 11 Feb 2025 13:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3381280BE4;
	Tue, 11 Feb 2025 12:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qgshpZB8m1g; Tue, 11 Feb 2025 12:45:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8AA9C80A7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739277909;
	bh=QVMYVUVw3vyl47EsVzYGF23DglS1nN0sPTbCH0qtIrg=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3mwwvo2b16Rfvi3UyZenG7ri+kO3+hF/fHA6k7e2eF3fJjlLkSNbHIdsM9+9KbNw8
	 IUscvZMly2jxZeeBdJT/8LdzTykzzEkDGGYaojDLqxoferjruLiGazRNSgEZlJL4R+
	 sAQboFxUsbwsKOIFMfMVSPdSX6U2zS+shdEMFGp9FlbijEYmv096iXqR1CVEgzxr09
	 SX0x10NLgs1yNsCkSVl6R9pTlNmfhnnPsXb1fwaj/k2RfD1AkxuaT96CFNCR391pxR
	 p0e6jVZUeMA6lF8RJiMCTolrtbAmLneuZQCdo9XURv/V2u8/wue23ofL35YiV8VFkB
	 5ulT3+l6xINyw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8AA9C80A7B;
	Tue, 11 Feb 2025 12:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D98D0194
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C511D41142
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ObdTmM4hXRNa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 11 Feb 2025 12:45:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=bharath.r@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AAE6440454
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAE6440454
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AAE6440454
 for <intel-wired-lan@lists.osuosl.org>; Tue, 11 Feb 2025 12:45:06 +0000 (UTC)
X-CSE-ConnectionGUID: +rufriDXSu+aHnjsLy2/CQ==
X-CSE-MsgGUID: w2F/tT+TTumveQXJNVG3Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="27493609"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="27493609"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 04:45:05 -0800
X-CSE-ConnectionGUID: xxIIfghCQEu4is9HcvDbbQ==
X-CSE-MsgGUID: OBVPtUgRSyOhDhZJI3CDow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149686036"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 04:45:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 04:45:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 04:45:04 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 04:45:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q49Yj6mE19uE5N6gO/e5RzrtCNvV7WZKtldVL+DbpA2imGqe4SyGbw2VUUvNJSAdag45hJcSav7LP6X4/vK4TVoFJwClw3Nd49tB8gfIGRiHg2BmyCXBObFJxWKNRsaCNmZoINNyC9/af4X6HI5GLiizRhsathoyyaBaHG5bbO9zGHpSJA5DRstp4Gj1iFVrIOcwylXCdfezmB+wxXfnKuabdFyq+Lmdb1RxkHsa2erwuvlz3JW43pQQ4MYoYML2LuHN9+4ZwpmzwyvbBTVVBExiOzUhFzYvNGJOIsgySaJnqTNg+noPMeO3nkp+PnnPU1+MdA08MyrcT+5PBIpPVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QVMYVUVw3vyl47EsVzYGF23DglS1nN0sPTbCH0qtIrg=;
 b=qUpwCGm9yZDHuxwaC8tOBBCUoJGaUgNHxg0BcbOYPdGcwRtDlYdHVBN+BCf1X3NFae81iFgSvYTjb6wfUlDWequlgev6XUWFZqCShQHpsoFgouwBtlay5wDq9DP7stzkz000oVvTkKdaU9Y31Ny+wheCQ3UeYascUZOM0VpSN2lFeE+XgfPJhhkrPD9EURAMOImAb9LdZ5RYoB6q0ITBRW/0ZqmLCFDi/FGtCflF/odtsgXLqIbfAsB/wqdn0ncafBJWXGGeKQ4ZCKVE1eqsl6yeQtq+3Bp3Hk3ZU5P5mVCFOJBrBoRZ9CxFBt9E2dM2IZITBgZEwimyP7d2mspoLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 by SA2PR11MB5098.namprd11.prod.outlook.com (2603:10b6:806:11c::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.11; Tue, 11 Feb
 2025 12:44:34 +0000
Received: from PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739]) by PH8PR11MB7965.namprd11.prod.outlook.com
 ([fe80::ad6c:cf56:3c3d:4739%4]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 12:44:34 +0000
From: "R, Bharath" <bharath.r@intel.com>
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>, "Olech, Milena" <milena.olech@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for
 E610 device
Thread-Index: AQHbdtRGrnryYDcJV0S436zPtA1IDrNCFkaA
Date: Tue, 11 Feb 2025 12:44:34 +0000
Message-ID: <PH8PR11MB7965152D078C063F1E0B2250F7FD2@PH8PR11MB7965.namprd11.prod.outlook.com>
References: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
In-Reply-To: <20250204071259.15510-1-piotr.kwapulinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB7965:EE_|SA2PR11MB5098:EE_
x-ms-office365-filtering-correlation-id: eab3d40c-d2b4-49d9-3be6-08dd4a99d640
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?vYtAUVXpvmOpCMjo3NY7wkidEcNoLLI3f2KCm5ymKldke7ICIFN045qq/sPg?=
 =?us-ascii?Q?AMqorVXDC9e2z+rtb0ySaLFenu5F7/GIb3Lz339azSippRT+kQUk4k4rozcm?=
 =?us-ascii?Q?7QY+bh1aab0ORtrzrDcH3ElX++np4DIe6dWRw9ZW4QqVQfTBiWS5UjLSpQO2?=
 =?us-ascii?Q?aCfrEXK75/yR1JTwJpmKUacbCIrl9uLcE3Lb45dSo68LepPjZo/Nvlkl4/aj?=
 =?us-ascii?Q?+lJufXUJp169d1ZA4C/+cI0TX1nF69113zUnC8jTluRXNXKPbIQWGSWXyEf+?=
 =?us-ascii?Q?fl7/EICZIg2NKosuxLtU7McxuIow3b13e0uEL8xnwksGVKRdomsqiZh7ZZoL?=
 =?us-ascii?Q?G+y1Ub48hMLjcu5vTykK4foiYoPkVnIB4YjImhZM4IAHlGC1weAFb0AhPhGZ?=
 =?us-ascii?Q?BdaG4RhHrgSX3+mKNItaZFEAlMpU0sSnPG0HtahAMfiGJwMOIDuFincRQEVk?=
 =?us-ascii?Q?DQQ+2pwjtfgW5cm4QRoVhFqeXAHZ4hPTdQUbHH2ScCJs+EzaaIiaRD7NKVIw?=
 =?us-ascii?Q?xJ+LLR0feQ2BBUE9e+DkViwOg9YQJ7K2qNk2y4gdLcCkRCJeHmNxE5ZBiAmk?=
 =?us-ascii?Q?C2iHwfHVcNtlOacmBCyFpykXcvz7/y/3DLrv79X8UplJ6PdQ9Zg2iOOTnc1w?=
 =?us-ascii?Q?y2C9587t86pjR6oNU8vfaMVlFIczpUdNCmbbUcdTz2BqLJ5PxjzIlG6O0P6y?=
 =?us-ascii?Q?/rc5tG/llNhgncYL0oCmfRpiJu5qJ6yEi8DSCerfDX3wF5x2nO0Ypx5chi4g?=
 =?us-ascii?Q?uEr7l/FsDseNq4/iHmieBM4gPplVyU/HyuqT+tR3CeCAbQF1kUBeDFSIy0RA?=
 =?us-ascii?Q?QfTPz+6rZIJ01SMqQRlhxOnOciE4NNLYnK3pSIW2cdBInkJRDDZ2NOlwZLXk?=
 =?us-ascii?Q?jLvCjAP/SWpRX7ysFNcTl+LyRUo3wUcxwB6cEeFc9EkDm3IRi5n6ZA6TKWIN?=
 =?us-ascii?Q?LUFPjYSCIMnoCupHEG4aCgvVHJyZOOtCYUJng4DI4Cz/lpqi3BN9MgFyeNkT?=
 =?us-ascii?Q?NT4bJcGsR8ipvLl4pUvwAsaQScsZbT3v5tafpaZYk2x3s5RkNMC9nSDk7JOw?=
 =?us-ascii?Q?GTDrs9STD45OjDKIaph+k/MLxe9aRmPrrRy8RPdtChoIwWiXu0mPohcqrMzA?=
 =?us-ascii?Q?h2ftYcn7EK/Bz+YRZxF0F+7u0NC2PkmNrhfZE5vb4MNkGEBswC0yH2vuciHu?=
 =?us-ascii?Q?Hr3++SHvsPQZO17I8LMdKT8EnNpnImYHdXU+beLayNSs4ocqeiBXWGCmGhUi?=
 =?us-ascii?Q?ZHbV1gKwPA5n9PWdmMNH59f+tB/VkRVOQW2ssSvCFRVrc4cflOEc1hMNIVhD?=
 =?us-ascii?Q?fjpVsynaqF965rx+j7Pk5r4dk/2iCw5Guf1XXGr2MniG/rMfDxTdGdfB5xMq?=
 =?us-ascii?Q?tN+gTg3+OumPJNVFd3E3GDWskG+Xt7bf5zWxgAzPAkgCpG5S55V9QhNNowhJ?=
 =?us-ascii?Q?VEeu3aTU6EfssKDRUafBTIk1KHe85cFS?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB7965.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vJ7vmfvdb76qBvktjroqzrjBj5u5nfAweq3ybB3OuR+PWhMCbaotjtFhsP/6?=
 =?us-ascii?Q?tYw/fpWrCVDXiC5QLLD2AJXrgys6CS5x9kaot/ySgJgfVX3/zg4H4HdOBFDB?=
 =?us-ascii?Q?Rdb9QYu0aXuDzDH4fKzOlapw4uU2fcmHPf1Zsrbi2+zVTnogQrgkOeYvzTWL?=
 =?us-ascii?Q?5OuWl7H9jwwcngvGeZM8AiKMovMQtT10aTJF3N1ofI+Kn9VUGaXtQgSGqqh8?=
 =?us-ascii?Q?wTKy8NCMNTaMamXICSBQzJ80Zq2p6blWKMxQYEvi0DAlbMGR9yMQUvqaQctQ?=
 =?us-ascii?Q?jUznN6PkbPI5ssrS/31EMn7zz9Esm4dd+RVnY2zr3LMag9NtWvOSpwLMHJyZ?=
 =?us-ascii?Q?lLZkqJnukd+Tl6Qo3aIZFBwyWh8XiEPD/uipjf5xo9zz5UuX76OqLhs15XTP?=
 =?us-ascii?Q?OeJiBamF3r21GWng5PazfIn4/Q+O4xEEM4b2nS4UiMo3IuhC+ehG3Y/IbeWJ?=
 =?us-ascii?Q?K4YK0CRdP+OFstMO0KxemHAdjsPcjRD5sMcguNkG/a//eICB560mtC8fJo1p?=
 =?us-ascii?Q?mdMl9P/ENvxtlkRxZK16GAMyETBY0ZzffzYP2CZtcq50paYm3ea21j2QJnaU?=
 =?us-ascii?Q?HVZzHipVpfoDyQ0ZLKJF9jHoluhfqjG5yLXi2mI2xaFl1jkQH0ZOoiz8++NA?=
 =?us-ascii?Q?8G1CiD4Co4dIue43C76KdyH/WuyDfRwWBgpKKaQoWHqy7lpvnm6+Yojzy/bV?=
 =?us-ascii?Q?hcFLPq1PRi5zqOYqcGyM9ntC5OxXFwvgD0j9kVOZPb6c5W9/JMK+W1oIiGSy?=
 =?us-ascii?Q?7NR4JduxHJgd42Q6N5e9j5enSArJO3hjKhgKyGt9ANI+1r1E4uMGas/sP6tx?=
 =?us-ascii?Q?TeUFBPBNWGMZt5apxBd6FMAYeWqTzcKwJi6jDsYcbFRuo3f3EQ47MsapRwa1?=
 =?us-ascii?Q?7g0qheJgAz9WCPIS7ET9ID8hi+t8piwkp7GQzn3JLazohrL44SB30LVPLjQ8?=
 =?us-ascii?Q?ZZwH6bwpMIT+jVPvVWNrI/RfdH9LHMvy1iyyiXV+e/CnYGio8Z5DnUePi4Mc?=
 =?us-ascii?Q?7XyKX+7GlPoMG3D4c6Dx8cQ7o0RwwUdTrK3ijR47WnWuY7gI0VMEKrp5OwHS?=
 =?us-ascii?Q?LTF5MpyeRbj1mbI4GnfdxHerR23taFR3nDLedEzZ3L5rhKM/7z+r7YSoFflR?=
 =?us-ascii?Q?hT5Mmuwk5SwF+Z1VGs8lYL4dJY3vYrSyNLXmomVYshS5DJWozOl1YkWHjlRn?=
 =?us-ascii?Q?XruYJuEhst/NmMyUuCPHMgVOVGS1MNhiqXOXuKrzVWqkiOZSMDRloJ7lq9tZ?=
 =?us-ascii?Q?VE4wgEuz5bhgHX1oErFFH1NeM+shMi3/O1n0srfMihJKJrL/O9XMkFSi6bfP?=
 =?us-ascii?Q?+pzm9GrdyyTkglaOmXLbaIkeoxpTmnMfP7V/q/LjTJUXygk2I3KUyQRyESTu?=
 =?us-ascii?Q?a58nL5aYELX073k7iIhdeBkMVztANH1GkEPMFW67/EeRrsWcYNEmVPIJJfOi?=
 =?us-ascii?Q?X2T8i2Y/yW8tulsUSYaTaE/vEHl17pr7WZWcVDoZJm9cKIxxd8JL6c4yBPPk?=
 =?us-ascii?Q?nu45d0sP7PJFFcgo1BBvwxUomLolT1huPF9O8dvqiwOJtQkpx6aJiKdtXHHe?=
 =?us-ascii?Q?SBzGqMXytLyGRbIt+VA=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB7965.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eab3d40c-d2b4-49d9-3be6-08dd4a99d640
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Feb 2025 12:44:34.1387 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: APgZeNRgfzfsqcLN0eEzIoBoUS2bYbbYtUt0889uiPHOxHg2FNZ3uLv8ESTpjo3hxilqyIttGO12x2gbWzi+Aw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739277906; x=1770813906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=254xqfWkZu0gsGEJ9OyP7l6sCCAxd37RQJkY4e/iYyw=;
 b=mTbMUEEBJ7JZazv3dFNlycMPwaUeQIfdqWUO622+dn9U9gxl2ylQne6S
 lXImnQC8C0cUZ0Kr9+MHosdcpXBfnuyuJ+WdGOkvw30qk89srJa1aUq3X
 UzTRMK9Z9BQAiGIw3JQ0CPDPhGS069mSU5HWAxNNWBceJECRdnnedNB7/
 A/pgxDvDFqfYCykA/oAyYfffYOOzj0NBlVCIuTVjZIvlK0A61EWxQlL2s
 nQfYnwCy3h2ekxAQojEdJlxK9oepCcxo2PeRAO/vR28+knms+VEtkJj4N
 ihy2DCeBWnzhg5bm2hkA64dib34sjYon6ZZrAJplPhTAwwU4tAd3IeEkO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mTbMUEEB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for
 E610 device
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
> Sent: Tuesday, February 4, 2025 12:43 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; richardcochran@gmail.com; Kwapulinski, Piotr
> <piotr.kwapulinski@intel.com>; Olech, Milena <milena.olech@intel.com>;
> Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: add PTP support for E6=
10
> device
>=20
> Add PTP support for E610 adapter. The E610 is based on X550 and adds
> firmware managed link, enhanced security capabilities and support for
> updated server manageability. It does not introduce any new PTP features
> compared to X550.
>=20
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c     | 13 +++++++++++--
>  2 files changed, 12 insertions(+), 2 deletions(-)
>=20

Tested-by: Bharath R <bharath.r@intel.com>
