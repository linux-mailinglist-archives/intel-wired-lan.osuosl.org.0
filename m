Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED4B94F2D5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Aug 2024 18:11:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 523A4812D1;
	Mon, 12 Aug 2024 16:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dAg_tJcGWESy; Mon, 12 Aug 2024 16:11:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FE02812CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723479105;
	bh=C8W+EJJx140IvDkWQM9DhaSqqJwxOY+n8Vw0rw5mXEg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UjbUjZqxY6B63rH3D4cf9//51EhuIiB+khbE864A4DmRMir1vhbmt/PpWNacz2/bz
	 kU+iIRMAAgSqFmU/b20LTJ3fiCpswspMy371TrzxMRGx46QBGguW89f/wA9db/Dumw
	 qKSk8p6qscYvW9GNeFexUDVf/Z2fTU8CqmAxOOgFiO8uVpqTLFcYsuN4pp0na01w6p
	 Wj8jG1lC5K4sPLQirEwZgAvfUnxYN+ZKol6ZtxZqd/Hh2K/xL69XetAO6nIYQ4tSJY
	 JnLmPKZOKR1gXvz7eyK0mOPTQsIrb0LGMsiEua3NX80eY7PuysrUG/LBVYwbB2OMUF
	 U+taZbBjXfYyA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FE02812CD;
	Mon, 12 Aug 2024 16:11:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6C5B51BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 16:11:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6625C812C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 16:11:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OiMl8LCl6wGn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Aug 2024 16:11:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5F13E81286
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5F13E81286
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F13E81286
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Aug 2024 16:11:41 +0000 (UTC)
X-CSE-ConnectionGUID: VkeCIlxvQqyNdW+FqgkB1g==
X-CSE-MsgGUID: ZZPNlAePQQSOzCv/EN+HPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="25467561"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="25467561"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 09:11:40 -0700
X-CSE-ConnectionGUID: 9B9Xd6sPSsCXYdhbCQRAWQ==
X-CSE-MsgGUID: kEgjGXQ5QEq/0TbiqQedhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="63240267"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Aug 2024 09:11:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 12 Aug 2024 09:11:34 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 12 Aug 2024 09:11:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 12 Aug 2024 09:11:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmxDrlb17EHk0Qyt3hFtPLCwGHdTrCCeMauJews8/9PHcyZyhDWsoY6Zl6CIm9eh58WrXUvTBH+gmFAyPcwqhFcKTyyy+Zfp6nXdHPS3Htsi4GrdKWMBosgnKQQsszSy361RmR67aOlKMCDupWukrYC99Y7GzaPb7ruR2Ql36UQVui9EGSgcR/npEF6tt0FGbUMNWykc2ABbi00n+tcpXb3jv2YRkIS832jrgPVHRt44Ve+DEtF8JkHmdiylGWR3KxR2JVSKNbwAm+qE3t1aVksQHMmroV7yMR3QEVak/9g9h1sqB6vayGuAKKcUVvpUnD6NdLxZ5xDG3qVSajzZ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C8W+EJJx140IvDkWQM9DhaSqqJwxOY+n8Vw0rw5mXEg=;
 b=CylJZFQ1sneWnNor4CRTNDd5Zvdg43e5AmRTDnu0jKt1/qmczohtTOxOASJS6KmfbQVRWD0MwjbaiW2PkkCZWdz4iO7DKDZU3I81130Fn5Uwp6bJ6KJ+7bMSGFtc1EUzsYX/0/1ayVFYbR6RA1nD4rmNdH1pQ1IyylCf2scsuHDtdLqL13vxutC810XxfhYG8KKjFo78R663xyElk7r8h/REJJDGdcp5/IgRFDq88RyPLWPUVE+oqgt1cplmypXeJ7+25k0tc2AACoa03rMy6RiQKqVyqKhYiv5ziLGtG4I7byLaRdJMGWjImHXhYva3e8oaH6UeYoffvsidsQi+6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.31; Mon, 12 Aug
 2024 16:11:30 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%4]) with mapi id 15.20.7828.030; Mon, 12 Aug 2024
 16:11:30 +0000
Date: Mon, 12 Aug 2024 18:11:20 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
Message-ID: <Zro0KAMpZ9DQSm3t@lzaremba-mobl.ger.corp.intel.com>
References: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240812125009.62635-1-dawid.osuchowski@linux.intel.com>
X-ClientProxiedBy: TL2P290CA0017.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::7)
 To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 00e603e1-6fc9-4e6a-38b0-08dcbae96d0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Il/w7f5kpud+qmMyzoJzjyzwBwLQ07MT7nVhDmUkw9Qzvd0ulC9+yYVDJ+OH?=
 =?us-ascii?Q?xnKq2xqh5bH3T8SZ4p10cHz8wpW8O4SwaJ6Ryktf+Y/l2IuUqJU1r7CE6tKJ?=
 =?us-ascii?Q?z800bQOHbD9cY1qiwE26v83pNRl1K2qhzFBlnpFtjGfs/u08hJDAAfGk0OD/?=
 =?us-ascii?Q?tztp2kWQTuswzz8MoYHM1xT/LSKZ3hjomH1dizoVjoWqit3PGUVj1QQ3HMMN?=
 =?us-ascii?Q?hqj2/y7yTX/qvKrSMgkyRCOq2D+KXYwHMxE8kOMvatpE51aNPBtMtf8UGpe0?=
 =?us-ascii?Q?qRjIBadDpOBDmLMA77P/svAfTPpriaJ7jNBK887G0NxC9OhMT7s06Kmu/w2u?=
 =?us-ascii?Q?fU3aWE0xOU18X/D3s+bEK49CenKLkYrrqncvKv2XMU3ZbqgIiu5ImG6Y+b/1?=
 =?us-ascii?Q?s5J5DnIjU4VVqkR6J2dnSLvqaQj2/jjBBNj4Ds+VzyUAiZZObZ0XG3gNf8ct?=
 =?us-ascii?Q?PbE8t1MLmfm/3IFJW60w31dhpD0/tegMRx+tMszxdjWBKFvn0jbNQu2A9Raz?=
 =?us-ascii?Q?cos0JQjvm5N/58BgkgPyoX8tYgST/2mLgH9PivTNzw4wPYpN96tZeTNa90uL?=
 =?us-ascii?Q?S24uT7sQZgozs5LClymCbqTmNc+fKT6KJJclc8TJNp1lzXc+oXfvWj/EdK1s?=
 =?us-ascii?Q?l6sEg5ZmXpjrP5dRAzDBK2PI9RN1EjGmzot7abD8jqRB0fQTvd2yQScmMdW4?=
 =?us-ascii?Q?RgamvhMPid9EoPYQR3tv+fSz8fVL9guR1mZQTU0MsjtvU08b2snE4CURhZXI?=
 =?us-ascii?Q?KNUDtqy0pNy7Dzkmq8udVjFyJbW0+h+1GtA7brTEUHQ8micL8ent0HI+X4By?=
 =?us-ascii?Q?MM6TY23jGSRjfOBTDrcaNhEXEJKxsgRC1EIk0oOSSilMD6cCxit0OO8CM+bO?=
 =?us-ascii?Q?m7qk2vEmoy678bUY2oKrxbPL6BvddNEjKzWblxHzRoIHhasO+o634WzGQgkr?=
 =?us-ascii?Q?o+VCAuOcM3C9z0r0QuekMx8Ey1T/lxfCI6n1U63IeK3W7534AugcuZsiMSPc?=
 =?us-ascii?Q?Hs2bi1DZcK0Gg+nF57b1F84HRRvNa/wn+xmeyRpieZDoGtgBfuG9y7sZDSkA?=
 =?us-ascii?Q?od+SXL4luDky6a08PUNWblPA7JMnzPy0Ng42pVplDG1kpmXkX6Fi93WgOXSW?=
 =?us-ascii?Q?IYKjJJWQbjIY3Udfzxh+4WoZ3kO47iJDtNaBAa2cen41bhP8mBh9mfigSjsj?=
 =?us-ascii?Q?tyx6G8QANF86z/Q9viw81oHvitE3Sn/4LhQ4m2fhFScXYjLUrReTJr6dt2uA?=
 =?us-ascii?Q?0MfX3a/hUAZRqgTUS3PvdHSLRhGTNajOmZizw6cC6DYBQ9UWkIMVKmkfguHr?=
 =?us-ascii?Q?FX0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OwH2pNTgmYtSeRXyzU1Ylr3W2Xq8C/TWcIVfAJkOFbxJiw/cQ5h7bU+aWbBT?=
 =?us-ascii?Q?fL1Ppk/LsJz/VOlnjwpakk8y70vCgr+xumDrV9F8k7MH7G2aKi1vhdVwiHF7?=
 =?us-ascii?Q?BP/uTBYQcrfxOpmbRrf8oJPpR0PjebZUJLranShwneW6F+5FbWz8ODOCkgMq?=
 =?us-ascii?Q?+SZ0KOvOK2lxSbU6jYXUzqXXyhd7Oedf21XqDovfPsOUqbmSOzNoPoUu9U/8?=
 =?us-ascii?Q?Zvt+JMTVnNOzs3zV7IDUQSwHJ4DBJT0b+osP74XeTEnM0D2CyfhkVCnpqcbm?=
 =?us-ascii?Q?jPIXsRSL2dXiGbttxr7SYNRkoFCKcA6xAyxtrfrzC4bejgoXT1cwDZseA+VQ?=
 =?us-ascii?Q?tS1uYIQpAorclWb/RA+1ntsExCU/mVlsvA9tyHC/cqoTBDRkqO37kNO1WL96?=
 =?us-ascii?Q?hkvVveZDHze0Z/3v9AYETXLYAkxlPEzWzsJMIt6KoFgmajsk/1FoW5j2l8BJ?=
 =?us-ascii?Q?Qp4CoFGvjDBtDCA2l7gnlCJcpeXg0oBIoLtZKbgPwpvqgaGYpfkxaJ1YoPTA?=
 =?us-ascii?Q?+6KZ5tJY8sxUpp5gi/T9WBSh011KCva1Y2wlxBG/biJvHAx++gJfpNVOd3Er?=
 =?us-ascii?Q?uN2qOJl7oRYZVDW64FVuNeL+rJuN3rMqTVp4WLHlsB5LK/I2l05bRJTx/1yC?=
 =?us-ascii?Q?vBbsZeGqHynVET+/mFa01tV0guLd0pryxrBuJIX72onhdSINAW+tWHQdF7ay?=
 =?us-ascii?Q?JxqgVYJlmnILV5b3quiNzRnsP+l/QrqXCbA3oHRXq5+1h4OyvJu9aCTfCiKr?=
 =?us-ascii?Q?5EcdWb4pAQJWvcfCG1FffJ+xz/ghJVYwSBx9JAw31kyW16nYDz+PcEBBrpMF?=
 =?us-ascii?Q?NeJasx38EXoC+Z5QiY65l+s8S1IzGieQ5P+ewTokCD+gLsQYKEdCnegP0H+d?=
 =?us-ascii?Q?3HIfi6idquGt7PEWn9irE/iZf07VTc0Mqci+zIeeRGB/JlNfRsldTrtEBhBW?=
 =?us-ascii?Q?yNzMck1UmumnuTHnFr8OOnIcD8kHgs+I0FllLKGEL4AcIqyytVvCDTj5rUj1?=
 =?us-ascii?Q?km5+b6S8LJwc9ix2k8o3F6nsBzTIeWh2aImhpk1zfxqRGLbwhu9T2hfDEkXI?=
 =?us-ascii?Q?SvaGTZVvZKMKtQy7Asbbg+wqy390qIYs38hE9mnZL81AO99GaeCs5ZuShK90?=
 =?us-ascii?Q?qIW1uFQUwfhpH4PinaeVYJeOKwV8F45P8tfMktNBD8D+nIKw972Xs95sHgeB?=
 =?us-ascii?Q?KFcmUifixd+xtrvIxejq8Npe0NUycIW0sfX+wl4zlEelaK5Irr8xLygtJ7js?=
 =?us-ascii?Q?pDz6yJ+MIENuq69XYACceLHSe/y5Bo67D1DabnCRJfm4s8NhThNKUTiluQaF?=
 =?us-ascii?Q?cPWFZTifP2rNxivO7wPf7nNvgyZkOv0xh9tVvK9SrgKKwr/1aDI2TMWfW5yM?=
 =?us-ascii?Q?+X3d4tWd6+xfgXgNJJ88KiXY2cFDF4YlTYXzZwQ/kqzGSJ3g+tMI/aupj3x/?=
 =?us-ascii?Q?YDwmDWikGrE3eH09sGe23K1Kb771SVDGAelIVv+RkJ5NZ5u/4nZnsj1MdTIq?=
 =?us-ascii?Q?5pMJ5wqM6zAyQXdwvwjwCT5MZBl3TTwY3u/fSVyHarfGqC+aOucyDRVpxlLT?=
 =?us-ascii?Q?oaKUP0Y+Z5POnILwpOaoKzKHLYUANohDWLep3db2?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00e603e1-6fc9-4e6a-38b0-08dcbae96d0f
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2024 16:11:30.1337 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7meMqi3lkvvLoY6JKDNN+CRzTSoP3oA3/Pi74v0D+7ZGK+k+zKOXxFFFY4Kw+bd1Mkb7tUeEbeM6eC6d4D8dZGQobdAPI2VycoGe+Ksi4og=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723479101; x=1755015101;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WFdaTs+05bA2WsbpDtuFDAN3lcVzCDpWig3FARkVIA4=;
 b=E/kiOe1W3ycN3aNIriVdxIfvzMar9KcFJLGduLygdaPj5jhRILe65xx3
 QKO4+PXOTUnEY1hrPMur02NAM8yveDs/AbByUXwUtPiFY+PzrC/Mco+cf
 u108plEhLQhClpSJmxe9msz0se3KGGyhZQFmVckRhaYB+9viT19/cOci/
 tmVtfnBh72gHiLRizFk0YiBxmZO5po8IpEXnVX+zTeEn9FzusyOgE+mt1
 1VinBXebiICutI/pvQxv+NB9VMJEd+ERVddxXi8URxm+AkFyokBBLEtS+
 dTuTQXVbHdwX1qZAP7tcHPg9q3Yl7oa6n2a1Y+l1U0/kEUDFmqRr7s0Mq
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E/kiOe1W
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: Add
 netif_device_attach/detach into PF reset flow
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Igor Bagnucki <igor.bagnucki@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Aug 12, 2024 at 02:50:09PM +0200, Dawid Osuchowski wrote:
> Ethtool callbacks can be executed while reset is in progress and try to
> access deleted resources, e.g. getting coalesce settings can result in a
> NULL pointer dereference seen below.
> 
> Reproduction steps:
> Once the driver is fully initialized, trigger reset:
> 	# echo 1 > /sys/class/net/<interface>/device/reset
> when reset is in progress try to get coalesce settings using ethtool:
> 	# ethtool -c <interface>
> 
> BUG: kernel NULL pointer dereference, address: 0000000000000020
> PGD 0 P4D 0
> Oops: Oops: 0000 [#1] PREEMPT SMP PTI
> CPU: 11 PID: 19713 Comm: ethtool Tainted: G S                 6.10.0-rc7+ #7
> RIP: 0010:ice_get_q_coalesce+0x2e/0xa0 [ice]
> RSP: 0018:ffffbab1e9bcf6a8 EFLAGS: 00010206
> RAX: 000000000000000c RBX: ffff94512305b028 RCX: 0000000000000000
> RDX: 0000000000000000 RSI: ffff9451c3f2e588 RDI: ffff9451c3f2e588
> RBP: 0000000000000000 R08: 0000000000000000 R09: 0000000000000000
> R10: ffff9451c3f2e580 R11: 000000000000001f R12: ffff945121fa9000
> R13: ffffbab1e9bcf760 R14: 0000000000000013 R15: ffffffff9e65dd40
> FS:  00007faee5fbe740(0000) GS:ffff94546fd80000(0000) knlGS:0000000000000000
> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> CR2: 0000000000000020 CR3: 0000000106c2e005 CR4: 00000000001706f0
> Call Trace:
> <TASK>
> ice_get_coalesce+0x17/0x30 [ice]
> coalesce_prepare_data+0x61/0x80
> ethnl_default_doit+0xde/0x340
> genl_family_rcv_msg_doit+0xf2/0x150
> genl_rcv_msg+0x1b3/0x2c0
> netlink_rcv_skb+0x5b/0x110
> genl_rcv+0x28/0x40
> netlink_unicast+0x19c/0x290
> netlink_sendmsg+0x222/0x490
> __sys_sendto+0x1df/0x1f0
> __x64_sys_sendto+0x24/0x30
> do_syscall_64+0x82/0x160
> entry_SYSCALL_64_after_hwframe+0x76/0x7e
> RIP: 0033:0x7faee60d8e27
> 
> Calling netif_device_detach() before reset makes the net core not call
> the driver when ethtool command is issued, the attempt to execute an
> ethtool command during reset will result in the following message:
> 
>     netlink error: No such device
> 
> instead of NULL pointer dereference. Once reset is done and
> ice_rebuild() is executing, the netif_device_attach() is called to allow
> for ethtool operations to occur again in a safe manner.
> 
> Fixes: fcea6f3da546 ("ice: Add stats and ethtool support")
> Suggested-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Dawid Osuchowski <dawid.osuchowski@linux.intel.com>
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>

Your SoB should be the last tag. Other than that

Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>

> ---
> Changes since v1:
> * Changed Fixes tag to point to another commit
> * Minified the stacktrace
> 
> Suggestion from Kuba: https://lore.kernel.org/netdev/20240610194756.5be5be90@kernel.org/
> Previous attempt: https://lore.kernel.org/netdev/20240722122839.51342-1-dawid.osuchowski@linux.intel.com/
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index eaa73cc200f4..16b4920741ff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -608,6 +608,8 @@ ice_prepare_for_reset(struct ice_pf *pf, enum ice_reset_req reset_type)
>  			memset(&vsi->mqprio_qopt, 0, sizeof(vsi->mqprio_qopt));
>  		}
>  	}
> +	if (vsi->netdev)
> +		netif_device_detach(vsi->netdev);
>  skip:
>  
>  	/* clear SW filtering DB */
> @@ -7568,11 +7570,13 @@ static void ice_update_pf_netdev_link(struct ice_pf *pf)
>  
>  		ice_get_link_status(pf->vsi[i]->port_info, &link_up);
>  		if (link_up) {
> +			netif_device_attach(pf->vsi[i]->netdev);
>  			netif_carrier_on(pf->vsi[i]->netdev);
>  			netif_tx_wake_all_queues(pf->vsi[i]->netdev);
>  		} else {
>  			netif_carrier_off(pf->vsi[i]->netdev);
>  			netif_tx_stop_all_queues(pf->vsi[i]->netdev);
> +			netif_device_detach(pf->vsi[i]->netdev);
>  		}
>  	}
>  }
> -- 
> 2.44.0
> 
> 
