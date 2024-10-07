Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A07992CE0
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Oct 2024 15:16:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BEC880E3E;
	Mon,  7 Oct 2024 13:16:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bMYTg22CmNUc; Mon,  7 Oct 2024 13:16:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D59680E3A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728306963;
	bh=DpEhYe85WGYf8NmR3VzzbWqNjS+6qFOsxbPzun8nUjs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dodnt+wWNZ/rLA8YJ9nVhLxgReZPyUCJx2PklRvXSdDTZR1rIrIhH+MHIpSEm0AtJ
	 aHhgb6SwMJ37Gas/M1oOkHlaThVLJ+urJ7dXLJOq0NlBGtO6BU2wtSMpGtL3anvI9G
	 SvJ3W5V085/2CwCyEyIspN+ee/JwHUPngkAXrqC/MKeCJZFrHkzLY22Kw884SXdT6o
	 AqKV+r23ZhSWKqRGeHd1mIKYVYh2gGZkxMHBd5FH4P+rbEpnOXndnpgki8o+eWW6+t
	 i+UOCHMju/x9fU+4uVqRLs2wKfSLmwjH+LncLk+s1F5TEmzfoxJzV0lg+AEZWjBm/T
	 TRFCaeIjdwmPg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D59680E3A;
	Mon,  7 Oct 2024 13:16:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2EDF1BF424
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:16:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EDFB04064C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:16:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6s0Ync-xPxjd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Oct 2024 13:15:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5EA2A40647
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5EA2A40647
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5EA2A40647
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Oct 2024 13:15:59 +0000 (UTC)
X-CSE-ConnectionGUID: +0FcpJbAT560xUogXsfGUg==
X-CSE-MsgGUID: voUaEnTzSBurLO/A/AoogQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="27393696"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="27393696"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 06:15:58 -0700
X-CSE-ConnectionGUID: r2oMdv8XRwqNpakj+76Oug==
X-CSE-MsgGUID: UggNfCV+QgmGKQp52eLm7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="106217638"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 06:15:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:15:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:15:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 06:15:56 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 06:15:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OuRrjEpjhE/fvMM5GNkXmj0TRMlRXNv1G/clF646fXd5TBbnx4NvB9JBt/gOEzGmr5atu+k81Gx+59UAjiEW1XX6Fzj93GC0OWBO1c75Da3a1YAJF416chTJRPBrHxnP1g67RmQC3obXi34Qvqp7CfAYf4sB0cuh9z6P1NH32K3rw0jdLcxVqJAUOvVkG4Vg0pNTwnivMWF2Hy6GXhqW2L+5Pw9+BRtsznWrTFXy7S0gKFe6OVeqKDCpQfko09sTR+AxgIIXbdOxHBe2RELO1V8HZ9Z8LV4E6AaEC15NzbNPLdj1pz67AhT9ao8A58+AczQfOh1Dt1BKuUIJdsPciw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DpEhYe85WGYf8NmR3VzzbWqNjS+6qFOsxbPzun8nUjs=;
 b=xUDOXwW+qpfCJ9JCpiNlfZu41yWtpOOQ5xFHBBFV+xhNQRY9m0gytYuBwBDc3Vyzy3+sHgzu6Vh1OoXNH+gmPGoI0z/amv2/8f1co797lHgJsVyzVrMCfUSWN7FQGCPLEz0xd+foy/K06jEMu5ZYNkk9kC3roJfaG3+jFNf1axEMau3i+AK83RIitZmBxJ2033E/5zfzeJJREKvN9cp4XvdUjmMPQWJUv9kZ1XQkkIANYKmBLOv5NAZbkQ12JEsWthaA1cjPql/Xfff+57DMMwY6E2FlZTPjXtgz5i/DjbG7LoCYBStmpFInPr1Dgrph7GK1o1/ybBMoJxoGpnyrnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA0PR11MB7696.namprd11.prod.outlook.com (2603:10b6:208:403::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Mon, 7 Oct
 2024 13:15:53 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 13:15:53 +0000
Date: Mon, 7 Oct 2024 15:15:45 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <ZwPfARyIRE+MvqyK@boxer>
References: <20241007-b4-igb_zero_copy-v7-0-23556668adc6@linutronix.de>
 <20241007-b4-igb_zero_copy-v7-5-23556668adc6@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241007-b4-igb_zero_copy-v7-5-23556668adc6@linutronix.de>
X-ClientProxiedBy: WA1P291CA0018.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::25) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA0PR11MB7696:EE_
X-MS-Office365-Filtering-Correlation-Id: dfeba62b-fb17-4787-5436-08dce6d22bad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ZKSj2eNPHX/pYuruexkWGL0M7k5K4wXOlGdeQjb64KuirEkyjwe1C6zEj9xk?=
 =?us-ascii?Q?IcFkJ5kqf+qIwnA9TaZ2Ys4sWBjjI7ZCfK5G9VZpmOjhdGTDtV6tVGgEzTMu?=
 =?us-ascii?Q?+rIub9n8Th2KDU+UBo/BVmNVdOFIqTSVZcuEqreOnlKWeRnO6HP346ipGXBr?=
 =?us-ascii?Q?ojWluSvLU4JJVuY1VzyhEX50DbUu+GXljSXsve0Jp+96hbz+IBaUb2DNw6HN?=
 =?us-ascii?Q?V7PzzG1wemDnK5J8j7fBWqacceQWRPQVBR176hfo1NDa5j1sLeY3RCpsZvkb?=
 =?us-ascii?Q?g6LQ8Vm7488HIzKuXHYrAnvj6yb7lZEVWvYYvAp4lrs2/LoFwMJ/YnsC3n8d?=
 =?us-ascii?Q?F5WHkfDxSUeTmdSSA5JHSdXnazqi0eIq8DlhyzbcHttUtmS+T4CZPf+wIn50?=
 =?us-ascii?Q?M8APocpxbkPnB9Jml7wzpRjlR0IWjmuiDh3TDvPB6yLip1U+7KCThDkg6h9f?=
 =?us-ascii?Q?E8XGL2cKgC1DhxWvZa3pmusoXE35nbR0TkjKF3jkii4pyXSj9sFWPWK9gziz?=
 =?us-ascii?Q?qPS5XUM6StTZWS1mAeERq3owyYJi4Ovu929Az8/Mq6XDIMu0xHw+FjoUP+kM?=
 =?us-ascii?Q?RRpMKkik8gw1cJa8SuoGf2Y64Y64zx3mGe+qIjXR7Uo3jjQnRbRwyNXce6lC?=
 =?us-ascii?Q?wFm2fPkPVHw+pWhtVknjHr2QOqEhpUVq+DGdBzcONYzAr0oKpNk5wnVkhlOU?=
 =?us-ascii?Q?Erx4SaRLItOU1uVO+VMG8EBzBf5EkiIj63FMrAfzqt7Xs9nTaKv/+I2CupEJ?=
 =?us-ascii?Q?Gebhelxi2omRqg1fGZc5bNgJxrzX3ylMJyLoGtomObTivK9QouVu+xbtGXyl?=
 =?us-ascii?Q?4zqNiKyBhDmMnalHTGL/raCcCBjDf5/tj792tUV32kAq+fwvUghcr4Sqjsay?=
 =?us-ascii?Q?N3oFTyTVo2mmDrgST5cPoJ8blo1Bh2RXk8rCudX8MDHBQYvDS4rVqJFePTg5?=
 =?us-ascii?Q?1zYFkYGyyNt4DarAYULxQN+iM819Nc6rTnfvwVHjMJdONo2fCogbETlwtKXP?=
 =?us-ascii?Q?IB6kWzsmsxskE45/h67nuLYQoYGAiwhpJeO+NEIrfQwfouQe9HyT4YQaJLhP?=
 =?us-ascii?Q?w7l3mwwfq/7kkeQ9PUb/z2+ykOWJI7199iehN59QAqRwNh9lrnoYvj31TBzV?=
 =?us-ascii?Q?iB4shVHmLLgEULN+SzvUgGLTTRjpI2egLybJs8alvQJp28aaPufZ/HMBb/gc?=
 =?us-ascii?Q?5iyxN5ni1huaqIgxfytMRpYLjJXkChoajpmufwTZCEeP52w71szjYfHpPmUR?=
 =?us-ascii?Q?RfazkMoyeVYn0E1Z9fxP4MhjadyYiSrGZiJVfNCKRQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PqZRYxhseNAqt2QgHFbpfkPF3D6C7Zb6NlbO8q5/D/kQxHOrJre0NldRQZC2?=
 =?us-ascii?Q?hR9c54/BM8fKgIskw2LVvRclN5fzdUjq9bmhHPXgReAV4Hs1OyPHAmU2ez0M?=
 =?us-ascii?Q?cvIqqCYRmVaOYAFXKFN0Z5QiftSXiXTAtlIb+coibFNwcWz+pmqeAaQmhaRg?=
 =?us-ascii?Q?uHoSjX0nbBLqEKR3NvqxEBXkQlZlyXBocMR46vUxbGkw6tvyQuS6EhmONO6Q?=
 =?us-ascii?Q?7ZaWbEVpcEX+H7swFuw1a2Leg15fy1Wy1vKQ+Y+avv3cU9h1N55XAd74gXEq?=
 =?us-ascii?Q?TWulVrlX8XFJ0zdMAT/DdExQc753eel7+JOkZGc0vubTrBIhEBQwkpW/J0nL?=
 =?us-ascii?Q?CDOFsyEnhns2LVa67XDjJEvMQEmrr0k0yIvlhv5yKVivvmoyo1Ogzb2Epzzh?=
 =?us-ascii?Q?tK7wYiwh27S/g1ONV2qkLnAJPLIOK6YZUQloj6MknIf7ruVSN3Hk51Dju8x8?=
 =?us-ascii?Q?rcia+xq9TLENoOmooQMFbKYV8ErOd5zqTBfA4J1P5vdsVRqwQkHEwfcGWcIE?=
 =?us-ascii?Q?5K3c+334mvehd4zpwdsg3P/pRlVl2o6fCmL2luF0Hx7nClcwtjFja8Cnd7us?=
 =?us-ascii?Q?GQ/GPjUzN86ZPMUAfw8yzASYO1+/ab1y4AEXph8WvtUaUfO//K9OEr1YAlBn?=
 =?us-ascii?Q?uJSfbOvsD7neOhrWi1/xwSjHwtoPXPC0zBZ/nIJm6cbMvJBZiLxmBFDqsjQa?=
 =?us-ascii?Q?IaeWYAhXduw7bo+bNJMdxFKSjPP0OnyFeVkYjLpG0suvYPR8GCOjT1ndrj7z?=
 =?us-ascii?Q?V3GxUBb58cI7VbpNfBNv5Yt8Wv1PX1ipEyft7/NCUJLsCf7CFJYkKEs1mRh+?=
 =?us-ascii?Q?dikNR0+ArzE3wSqlzu1z+5AXvCXMqBYW/mYIsEinsbqaDNwja/SX3g9svXUC?=
 =?us-ascii?Q?iCrEIfgDiylv0eN9WE80fLA3p60SUiOrbzqIWWVobGQ1Anal7EVGnPCtjDwU?=
 =?us-ascii?Q?0yRCOp/jkpiuCfwo8SaalrwZoAVzJOwVJx0IpmQ90R9syvyHKd7RQB4c1BME?=
 =?us-ascii?Q?s3hH1cXduFlL/ZWX5mIEpBfUGitYPw9BUEGZj33qIbToqiK6P8aycpQYvmTl?=
 =?us-ascii?Q?5uHjAVfD98OYEvc5jHerX+mHGN3xXKvMQw6u6PpHHpc2aEwYRCNYjndneQfQ?=
 =?us-ascii?Q?bg3iXmooJT+NO8vFO1EEW1hiBo4P1iPOJFqjisBjwVBPAXORJUr/2ptLz4Ts?=
 =?us-ascii?Q?P1NqLvPnCO4EEPlfauxywNeyz7D7a0BWzVQk1wl9/kC/zbUVg4ngDEp/WtnA?=
 =?us-ascii?Q?f5h/nXvNA4I92fgUpXmnar4E08AIUo3NdxLlfCNhnJUxNFcI5RMrsx0dP6kX?=
 =?us-ascii?Q?0Mb/2BwjwKs7z2sLF52rAU9ZwAjy6Ar5Cp2xIDc+KD6XAumij5vFWmZHne3B?=
 =?us-ascii?Q?l+JeXa/jiCoP4qUtD6uwrVSJzjdhtXGvDTkcmbQtCvG4QNO/1J0L2fWNXNz9?=
 =?us-ascii?Q?AcxrJYi36jACbxrwc7qC6VFMhX/iljUr844xeu9ZokMLs8uMb+lfaTa9N1Ds?=
 =?us-ascii?Q?WT0/izJySSUgHe0WLg74lej8SLZXrv1yY2u96xf29ynHM8aQ8gyYw6kGV+zU?=
 =?us-ascii?Q?r/zPV8veMFRVk+jRPOmwUlFz/806qwJm1D6eiX244CopFMnMO50tWyqkeis/?=
 =?us-ascii?Q?iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dfeba62b-fb17-4787-5436-08dce6d22bad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 13:15:53.1407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /g5phPr5uyN02VBhAqaHzo9H5MZAyMrQhPUtUcqfGquI31HvvZS3DJ6MNTb3rDW3sgHGabb9JXJW/P46E+uvE1F3wR2AUiGZa/Mz1vwNEyI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7696
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728306960; x=1759842960;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GxuMI+jcx7sL0IzlX2etUO1IMVB+ALn+Syq+MTwCPsc=;
 b=LrQy2ipHMxLEPhAY92y/UIJFm2yC50NuGh17Fi1edepZe2NncEHnKLI1
 QxsgCrGtFy3PqMdbCXB8+khFAqVmEBMIdImtAR3i0wKTkqkoN7VDsdH3P
 DvtjEbe6ykKVhyaNpnG5Rql6QPHn7lM3d/AYCXCU8F48+7Drp/f7TEWas
 JJFqJ9u/FN0RKSmCAjEMThH3E1iJBBIdJ8FLx929pz3ecB6u+AFD++lgx
 wLkpLZf0pYhdNIlrADcwdydbsDiD9RvJjz5rBcH2FnkHfRGdoQQEmDRdJ
 gHKvP6qyid8mfkBYY3RMCW46tBZGNHzsIYE6XDmGVg5yK0o8nSKkeLLzH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LrQy2ipH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 5/5] igb: Add AF_XDP
 zero-copy Tx support
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Richard Cochran <richardcochran@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org, Paolo
 Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Oct 07, 2024 at 02:31:27PM +0200, Kurt Kanzenbach wrote:
> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> 
> Add support for AF_XDP zero-copy transmit path.
> 
> A new TX buffer type IGB_TYPE_XSK is introduced to indicate that the Tx
> frame was allocated from the xsk buff pool, so igb_clean_tx_ring() and
> igb_clean_tx_irq() can clean the buffers correctly based on type.
> 
> igb_xmit_zc() performs the actual packet transmit when AF_XDP zero-copy is
> enabled. We share the TX ring between slow path, XDP and AF_XDP
> zero-copy, so we use the netdev queue lock to ensure mutual exclusion.
> 
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> [Kurt: Set olinfo_status in igb_xmit_zc() so that frames are transmitted,
>        Use READ_ONCE() for xsk_pool and check Tx disabled and carrier in
>        igb_xmit_zc()]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb.h      |  2 +
>  drivers/net/ethernet/intel/igb/igb_main.c | 61 ++++++++++++++++++++++++++-----
>  drivers/net/ethernet/intel/igb/igb_xsk.c  | 59 ++++++++++++++++++++++++++++++
>  3 files changed, 112 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
> index ea3977b313fc..d65bf0dc634f 100644
> --- a/drivers/net/ethernet/intel/igb/igb.h
> +++ b/drivers/net/ethernet/intel/igb/igb.h
> @@ -258,6 +258,7 @@ enum igb_tx_flags {
>  enum igb_tx_buf_type {
>  	IGB_TYPE_SKB = 0,
>  	IGB_TYPE_XDP,
> +	IGB_TYPE_XSK
>  };
>  
>  /* wrapper around a pointer to a socket buffer,
> @@ -858,6 +859,7 @@ bool igb_alloc_rx_buffers_zc(struct igb_ring *rx_ring, u16 count);
>  void igb_clean_rx_ring_zc(struct igb_ring *rx_ring);
>  int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
>  			struct xsk_buff_pool *xsk_pool, const int budget);
> +bool igb_xmit_zc(struct igb_ring *tx_ring);
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags);
>  
>  #endif /* _IGB_H_ */
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 449ee794b3c9..7a07071d9d16 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2978,6 +2978,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
>  	if (unlikely(!tx_ring))
>  		return -ENXIO;
>  
> +	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
> +		return -ENXIO;
> +
>  	nq = txring_txq(tx_ring);
>  	__netif_tx_lock(nq, cpu);
>  
> @@ -3325,7 +3328,8 @@ static int igb_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	netdev->priv_flags |= IFF_SUPP_NOFCS;
>  
>  	netdev->priv_flags |= IFF_UNICAST_FLT;
> -	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT;
> +	netdev->xdp_features = NETDEV_XDP_ACT_BASIC | NETDEV_XDP_ACT_REDIRECT |
> +			       NETDEV_XDP_ACT_XSK_ZEROCOPY;
>  
>  	/* MTU range: 68 - 9216 */
>  	netdev->min_mtu = ETH_MIN_MTU;
> @@ -4899,15 +4903,20 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
>  {
>  	u16 i = tx_ring->next_to_clean;
>  	struct igb_tx_buffer *tx_buffer = &tx_ring->tx_buffer_info[i];
> +	u32 xsk_frames = 0;
>  
>  	while (i != tx_ring->next_to_use) {
>  		union e1000_adv_tx_desc *eop_desc, *tx_desc;
>  
>  		/* Free all the Tx ring sk_buffs or xdp frames */
> -		if (tx_buffer->type == IGB_TYPE_SKB)
> +		if (tx_buffer->type == IGB_TYPE_SKB) {
>  			dev_kfree_skb_any(tx_buffer->skb);
> -		else
> +		} else if (tx_buffer->type == IGB_TYPE_XDP) {
>  			xdp_return_frame(tx_buffer->xdpf);
> +		} else if (tx_buffer->type == IGB_TYPE_XSK) {
> +			xsk_frames++;
> +			goto skip_for_xsk;
> +		}
>  
>  		/* unmap skb header data */
>  		dma_unmap_single(tx_ring->dev,
> @@ -4938,6 +4947,7 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
>  					       DMA_TO_DEVICE);
>  		}
>  
> +skip_for_xsk:
>  		tx_buffer->next_to_watch = NULL;
>  
>  		/* move us one more past the eop_desc for start of next pkt */
> @@ -4952,6 +4962,9 @@ void igb_clean_tx_ring(struct igb_ring *tx_ring)
>  	/* reset BQL for queue */
>  	netdev_tx_reset_queue(txring_txq(tx_ring));
>  
> +	if (tx_ring->xsk_pool && xsk_frames)
> +		xsk_tx_completed(tx_ring->xsk_pool, xsk_frames);
> +
>  	/* reset next_to_use and next_to_clean */
>  	tx_ring->next_to_use = 0;
>  	tx_ring->next_to_clean = 0;
> @@ -6485,6 +6498,9 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
>  		return NETDEV_TX_BUSY;
>  	}
>  
> +	if (unlikely(test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags)))
> +		return NETDEV_TX_BUSY;
> +
>  	/* record the location of the first descriptor for this packet */
>  	first = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
>  	first->type = IGB_TYPE_SKB;
> @@ -8259,13 +8275,18 @@ static int igb_poll(struct napi_struct *napi, int budget)
>   **/
>  static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  {
> -	struct igb_adapter *adapter = q_vector->adapter;
> -	struct igb_ring *tx_ring = q_vector->tx.ring;
> -	struct igb_tx_buffer *tx_buffer;
> -	union e1000_adv_tx_desc *tx_desc;
>  	unsigned int total_bytes = 0, total_packets = 0;
> +	struct igb_adapter *adapter = q_vector->adapter;
>  	unsigned int budget = q_vector->tx.work_limit;
> +	struct igb_ring *tx_ring = q_vector->tx.ring;
>  	unsigned int i = tx_ring->next_to_clean;
> +	union e1000_adv_tx_desc *tx_desc;
> +	struct igb_tx_buffer *tx_buffer;
> +	struct xsk_buff_pool *xsk_pool;
> +	int cpu = smp_processor_id();
> +	bool xsk_xmit_done = true;
> +	struct netdev_queue *nq;
> +	u32 xsk_frames = 0;
>  
>  	if (test_bit(__IGB_DOWN, &adapter->state))
>  		return true;
> @@ -8296,10 +8317,14 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  		total_packets += tx_buffer->gso_segs;
>  
>  		/* free the skb */
> -		if (tx_buffer->type == IGB_TYPE_SKB)
> +		if (tx_buffer->type == IGB_TYPE_SKB) {
>  			napi_consume_skb(tx_buffer->skb, napi_budget);
> -		else
> +		} else if (tx_buffer->type == IGB_TYPE_XDP) {
>  			xdp_return_frame(tx_buffer->xdpf);
> +		} else if (tx_buffer->type == IGB_TYPE_XSK) {
> +			xsk_frames++;
> +			goto skip_for_xsk;
> +		}
>  
>  		/* unmap skb header data */
>  		dma_unmap_single(tx_ring->dev,
> @@ -8331,6 +8356,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  			}
>  		}
>  
> +skip_for_xsk:
>  		/* move us one more past the eop_desc for start of next pkt */
>  		tx_buffer++;
>  		tx_desc++;
> @@ -8359,6 +8385,21 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  	q_vector->tx.total_bytes += total_bytes;
>  	q_vector->tx.total_packets += total_packets;
>  
> +	xsk_pool = READ_ONCE(tx_ring->xsk_pool);
> +	if (xsk_pool) {
> +		if (xsk_frames)
> +			xsk_tx_completed(xsk_pool, xsk_frames);
> +		if (xsk_uses_need_wakeup(xsk_pool))
> +			xsk_set_tx_need_wakeup(xsk_pool);
> +
> +		nq = txring_txq(tx_ring);
> +		__netif_tx_lock(nq, cpu);
> +		/* Avoid transmit queue timeout since we share it with the slow path */
> +		txq_trans_cond_update(nq);
> +		xsk_xmit_done = igb_xmit_zc(tx_ring);
> +		__netif_tx_unlock(nq);
> +	}
> +
>  	if (test_bit(IGB_RING_FLAG_TX_DETECT_HANG, &tx_ring->flags)) {
>  		struct e1000_hw *hw = &adapter->hw;
>  
> @@ -8421,7 +8462,7 @@ static bool igb_clean_tx_irq(struct igb_q_vector *q_vector, int napi_budget)
>  		}
>  	}
>  
> -	return !!budget;
> +	return !!budget && xsk_xmit_done;
>  }
>  
>  /**
> diff --git a/drivers/net/ethernet/intel/igb/igb_xsk.c b/drivers/net/ethernet/intel/igb/igb_xsk.c
> index 9fd094a799fa..6c56af9548e1 100644
> --- a/drivers/net/ethernet/intel/igb/igb_xsk.c
> +++ b/drivers/net/ethernet/intel/igb/igb_xsk.c
> @@ -463,6 +463,65 @@ int igb_clean_rx_irq_zc(struct igb_q_vector *q_vector,
>  	return failure ? budget : (int)total_packets;
>  }
>  
> +bool igb_xmit_zc(struct igb_ring *tx_ring)
> +{
> +	unsigned int budget = igb_desc_unused(tx_ring);
> +	struct xsk_buff_pool *pool = tx_ring->xsk_pool;
> +	u32 cmd_type, olinfo_status, nb_pkts, i = 0;
> +	struct xdp_desc *descs = pool->tx_descs;
> +	union e1000_adv_tx_desc *tx_desc = NULL;
> +	struct igb_tx_buffer *tx_buffer_info;
> +	unsigned int total_bytes = 0;
> +	dma_addr_t dma;
> +
> +	if (!netif_carrier_ok(tx_ring->netdev))
> +		return true;
> +
> +	if (test_bit(IGB_RING_FLAG_TX_DISABLED, &tx_ring->flags))
> +		return true;
> +
> +	nb_pkts = xsk_tx_peek_release_desc_batch(pool, budget);
> +	if (!nb_pkts)
> +		return true;
> +
> +	while (nb_pkts-- > 0) {
> +		dma = xsk_buff_raw_get_dma(pool, descs[i].addr);
> +		xsk_buff_raw_dma_sync_for_device(pool, dma, descs[i].len);
> +
> +		tx_buffer_info = &tx_ring->tx_buffer_info[tx_ring->next_to_use];
> +		tx_buffer_info->bytecount = descs[i].len;
> +		tx_buffer_info->type = IGB_TYPE_XSK;
> +		tx_buffer_info->xdpf = NULL;
> +		tx_buffer_info->gso_segs = 1;
> +		tx_buffer_info->time_stamp = jiffies;
> +
> +		tx_desc = IGB_TX_DESC(tx_ring, tx_ring->next_to_use);
> +		tx_desc->read.buffer_addr = cpu_to_le64(dma);
> +
> +		/* put descriptor type bits */
> +		cmd_type = E1000_ADVTXD_DTYP_DATA | E1000_ADVTXD_DCMD_DEXT |
> +			   E1000_ADVTXD_DCMD_IFCS;
> +		olinfo_status = descs[i].len << E1000_ADVTXD_PAYLEN_SHIFT;
> +
> +		cmd_type |= descs[i].len | IGB_TXD_DCMD;

I forgot if we spoke about this but you still set RS bit for each produced
desc. Probably we agreed that since cleaning side is shared with 'slow'
path it would be too much of an effort to address that?

Could you add a FIXME/TODO here so that we won't lose this from our
radars?

> +		tx_desc->read.cmd_type_len = cpu_to_le32(cmd_type);
> +		tx_desc->read.olinfo_status = cpu_to_le32(olinfo_status);
> +
> +		total_bytes += descs[i].len;
> +
> +		i++;
> +		tx_ring->next_to_use++;
> +		tx_buffer_info->next_to_watch = tx_desc;
> +		if (tx_ring->next_to_use == tx_ring->count)
> +			tx_ring->next_to_use = 0;
> +	}
> +
> +	netdev_tx_sent_queue(txring_txq(tx_ring), total_bytes);
> +	igb_xdp_ring_update_tail(tx_ring);
> +
> +	return nb_pkts < budget;
> +}
> +
>  int igb_xsk_wakeup(struct net_device *dev, u32 qid, u32 flags)
>  {
>  	struct igb_adapter *adapter = netdev_priv(dev);
> 
> -- 
> 2.39.5
> 
