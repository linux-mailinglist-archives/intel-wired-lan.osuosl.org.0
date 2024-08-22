Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 704EE95B421
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 13:46:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6F0581456;
	Thu, 22 Aug 2024 11:46:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RxHdWlU7haQ6; Thu, 22 Aug 2024 11:46:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3D3881760
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724327186;
	bh=crwS4G3DQx4xaqhf+YGO+7AzkSh67+VDqNI7FY7GYiM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IEqAYyS/oYDswyTdvuH/cXPnkrICC1/Txu3JMM+g/e78r+TRDuHauJ5wKnaGb9eXf
	 OEu10YMLSNRng6HBRJGYBZrkmdiWt8/yCPaL/0d7o9bKqmVDHZl4Ihgrm9Wwzoy3GH
	 AOBnFchs4mrGRJkCOC0dq2VO4/UGR4r3IRZh2j5/OeMZpWf4y+9cSxItMkJoU8BKik
	 JSQED4XT3lLnCaJevXZIhlboL1MMXeB+N/EGpVgy4qf/uxOpACXf6Bm1ezKsfK+SBe
	 Iyo/iifOD/PzPJyGb2EIlb34iHvMAUcMlsgtmuXy+5LE56m+YuOa58bxby+pxfaLTi
	 r1+kVu1rXKPjQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3D3881760;
	Thu, 22 Aug 2024 11:46:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 85C9F1BF361
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:46:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EAAA40911
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:46:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nqVrZo-dsCjC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 11:46:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11C5C40889
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11C5C40889
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11C5C40889
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 11:46:21 +0000 (UTC)
X-CSE-ConnectionGUID: q9dYOuSQTZK2ZXxkk34WKw==
X-CSE-MsgGUID: H/nFvXl2QvOLWT2mcLX8HQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11171"; a="40197700"
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="40197700"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 04:46:21 -0700
X-CSE-ConnectionGUID: +jW7Q3tbRYCb7SWtcwMJvg==
X-CSE-MsgGUID: fIUURYP4ToiJqhw9OYC0Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,166,1719903600"; d="scan'208";a="61129643"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 04:46:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 04:46:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 04:46:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 04:46:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W6D4QsfqD9IXh1iAhOMWGDeMzolNceoQ555NSOqv2R+3WKNxq2RL6/XtMswgt4DCkF8KDsIAh/LJHzHqDHx1ckS7rzWk7Z6ARf8gsSriLmpZnCj/+ycGDnb9WYGx/liA5Tqsnv+b84XzrfJD74G3idaK7OSMO78aZHF7RhzPakEFPAoohrLJR3v8rTEywiRcTE7MnfjcgZr3shbEkA8yHgHR9GIv0HD5qlQZ4tn73bo3qUzYXzRrGoE4tRIOrineZoETKvPXNI8s0MTQOX8HbvqSeBkNcq9O7fpIho8bg+zs4l81FwWAh1C0mcKbE+e7IAqyRl6N1T3le1MqmMCEkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crwS4G3DQx4xaqhf+YGO+7AzkSh67+VDqNI7FY7GYiM=;
 b=QpWw190Exev/rDFcfqHTFYeZoPo9qeXkA8KxMiHYzmCagx0U8YcNdhsv3ck2OOz5LI5fDGLbsWehUGI+McZvy7FUIKSiChcGeCs9puSE55hM/RY/53SwDkHBBqgzAtSisthlpPthBdMaxE2nMH9TaUR9sEYkc/J0RE9XZp3t2W1Uvc79YdQfxpOAeYsP6nrFxRmI2orB80Lye2qpY89kAsGddsiMa8M93lo1I2kYbXaR744GUDKsvmGcS1EiL3xq2BA7Fcs3BWS6VVZizxvw+m9MDpjCjYGXrvi1ojGd1pPiVbVUV2LKIESqq8n273B3JdhT4/DbbIMAHGBpQLtr3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7897.16; Thu, 22 Aug 2024 11:46:17 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 11:46:17 +0000
Date: Thu, 22 Aug 2024 13:46:05 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <Zsck/ZR0H+2CA6Pw@boxer>
References: <20240822-igb_xdp_tx_lock-v1-1-718aecc753da@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240822-igb_xdp_tx_lock-v1-1-718aecc753da@linutronix.de>
X-ClientProxiedBy: ZR2P278CA0047.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:53::12) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM4PR11MB6120:EE_
X-MS-Office365-Filtering-Correlation-Id: b68b0f5a-ccff-426c-7f1a-08dcc2a00822
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7416014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RwkSCk8Yh0OowUGc7qCNaOTmJgzVqxGk3GPUKhiC3tUnwei9x90jut1P+N6p?=
 =?us-ascii?Q?VJ7+lKMIrQXZRJM7TFC14+5rruoZ76PIPkrl8em1q4yIr0e1eutdQntET8hF?=
 =?us-ascii?Q?X6EsnT4nd2kn4+q+nBMvjOYlpQB/sUuqIsD8N1OlkNySh/Xlre5s/Pqs+sEX?=
 =?us-ascii?Q?7qX/HJQABkAgHcSSznesURItTomlL66tbl7cnd4iYs79ENp7fy1ZWjegyq8i?=
 =?us-ascii?Q?1FaItqlf+xQ5sFrnLYa+ohGsCO9Ve8kjNGFDnSNm0/OEYLswX3NInb0z3PPw?=
 =?us-ascii?Q?AgNiSmJN2ksfDZxlN2ooaTpkVpal2afrQNLdVeBMqfIKZtGRLws5UAzye4H9?=
 =?us-ascii?Q?uWOdXMOmDFp3q56L2k3RBZtWWbrKZ4nuzEwwzi0HUVR/kFfmnuzHZjS4iDAA?=
 =?us-ascii?Q?wW0GtL8rmW1ooRoNlAcaZPzN+18ukI7Rxsubo5Gl5d0RO7ODwTA9vWeIgd/f?=
 =?us-ascii?Q?6PTYQiRGBFil2Vt1BiXwek3OwvT4We09rVxIWlGeSqu53FWNfeClSPeSefCd?=
 =?us-ascii?Q?53VcKvkWPBSl9qnF0rhD9amf4THEAdi9ms0bp4dado53EE8zyqBF+z3xLufs?=
 =?us-ascii?Q?HW8NOjYOGfdm0LuK8tM5tvQwQdwqajtgqBL40bOZs0r7a+wMUfD8GUqCmyc2?=
 =?us-ascii?Q?KxP0lBo/6gD9Vyyk3V1RFErw0btEUdzentFZHDfodNvweSruiGrf078KQ3yD?=
 =?us-ascii?Q?vuWvTKNx0BWZOzpCzi5RzAT0lTXbeucGh/HQHFjyvSNosYfvtb3BX9R95WKO?=
 =?us-ascii?Q?zM/dcwXZOvB/BAMcVrdLk7UkR4Zu4tiWrZwm0LjAGeZvHEPajA5EvMo+SyRm?=
 =?us-ascii?Q?NNtEjDrABTGgU9RVCYI3hnqEbNSJ6BQRz4UOQFUrr1nIOT5ka2BDfCtHbFtv?=
 =?us-ascii?Q?6Be8Zmbw2bgjTOQ6NqbFWkk51aidP2eWWiYV/K2nL42AajJR8HSfMaCo3eZ1?=
 =?us-ascii?Q?+ipccrQHEWuRqHVSFnniyP/HzZydyVeygBUXwZSRUaclobLkdHS/A72/xVn2?=
 =?us-ascii?Q?3aiTT5IwB5VXAVgWA3JOwqm203XKrq8Pp2quBq1rFN3OBcSyzUQa88Qf5UFX?=
 =?us-ascii?Q?JXuQ8mI5hARlglm6tRy+qM43UEmdVRsYuIiF1QfYEe2jxO5Ku8C00NFFQTwP?=
 =?us-ascii?Q?0gcfpF4rtGNRr6kaxBdBwQLDHWnEwSWZzk3C+jC3bfqIRLORCOP8mUzS4l7E?=
 =?us-ascii?Q?3gWRJHcnvTvYThrS4FwNtkDO/zgucLZ2pJGfg7yWDf9TEUmXq5P7s+cP+Nkg?=
 =?us-ascii?Q?JE3VBUJlkw9w0yy/4/gckTI4d6jnYREbnjYPmFMPKJ4Hs/Gb1CnhaWkbgBGZ?=
 =?us-ascii?Q?YCxYf3B+BNHVilnShTa5Led5Uq6eux94THt81D3YN2eJew=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RN79u+ineQyT3jWb5XAICUGJE2zRdooUk62zRlEzT+IgWit/3eFLUjrksy9K?=
 =?us-ascii?Q?NgIoIlGXGJcg4URko30VzK5l97wqTe3kMYVIlTAQn1RloPz6Xv6fCbkHgiE+?=
 =?us-ascii?Q?xxfeDTXzyjBu/pqzQCv/zNlu+8GRMYQOWomK3vsVhrdfSnwuV9AdWSUdGOfz?=
 =?us-ascii?Q?rWvYMrVsuJ/FQgq42qkK1gN/5NXiC9EPxuXUAsXP9TtlsJBWGUBsJI0WsGJ2?=
 =?us-ascii?Q?PTanVbd3P92EI+IwtRdAiDPP/uQhqa7DynGb3krFLmJ5CcTa9yuu/mFUm7/C?=
 =?us-ascii?Q?n/38W0+n1d/dSoiPmWDqu09R6PWZIJstF8ylQ2FU2zITuZPaoe54G3lGgVi2?=
 =?us-ascii?Q?Gav9s1IoAukETDlz0s15X+EWZ8cNMCd1HyroT6Zl9KZlgKwnxhKplC2Hkb8m?=
 =?us-ascii?Q?H2JJgn4SX3MSSBWTkLfIUPEAHdEj6Xw85mL3DCHiXjSnzDEeam4Jtm1haMbh?=
 =?us-ascii?Q?fFqgc9QWwT3Eg44UOqqZJfxSSdcCuB57AuLwk+7uelZF7uPm4sJcsgKHC08t?=
 =?us-ascii?Q?SmNfStKkyj9m62HciijhjTGk4S9j8Gw4Ktt3gQzfVjOm5zdtNIWXq5r5wI4k?=
 =?us-ascii?Q?twyj5xjZabNfbbwLymFMmjtp8JpAmeqMhC+1lmifM991b35U/47xuSxCfnfg?=
 =?us-ascii?Q?0QYc+zljTlNfjpYowPvF3uSDURwe1PsN0nM915MPc+cDcADiHePe5o9Pm7fq?=
 =?us-ascii?Q?0KzKk/VGPOw4Ir1CnYgnyrCFTwQ9Wl7R7THt1F8MDm6ecsQIs9AbDwyz13tv?=
 =?us-ascii?Q?ZyI8IC2dtO9oP/vJHUE2rppiAmKoFY6WVZbHpVqjmKZg90lA1VAyQdjw0wcK?=
 =?us-ascii?Q?j8SETnd1sZQx3rob0Kdi2Xw0G5ISoq4bg5NbH2VQFNvgMNjHKlMloExW9YgO?=
 =?us-ascii?Q?jQy6C9H2O28LBzK7/aFB8QgplOevLeBuGFanIfIfthk/lMsU6pHv2yhDndiZ?=
 =?us-ascii?Q?4dFi0bYM8tuI3kGLnAhYCOZ8lb1uWjI83BizpccYDzcyYPsPKmSau5L6gyZQ?=
 =?us-ascii?Q?rJ9jgA3cQLQuxLOEs90qV2UDoVR7Cy54osCYE4uxqS01H41RXBPByulEQP6Y?=
 =?us-ascii?Q?ase/Wg1AzhT3d30Vd2JBejbytAo7JPWxoLeWJxqYeQOADUBu1Y/caFMfInn/?=
 =?us-ascii?Q?ReYcscAEKbU0TrTY3ETXAJrqB4zYuqq9oyZvQsEgjhCinnAGLF/wVBgGGYE9?=
 =?us-ascii?Q?epALhkRIANLFK4zaRR8yN0MmFRmwxDtpEDhR+nokXMvyxppuY3OfCfXr/DQH?=
 =?us-ascii?Q?5w8bwn1QPDyHLcWjuQVO6UJlxOWTeHUKkDMyJHwsMNSo6ob9l+M0PBBg7vkn?=
 =?us-ascii?Q?OgIb0GaU3DlTlY39qtNKMkhgGVtmJ/hWAur8BWHNTQOUlwHtKMyHaoFPkUnd?=
 =?us-ascii?Q?5e5y9yB7ivg8/MqbGyCb7ufbqrQJetU0m8L8Sz3FrnX1ywKDAdPMhLHPWgAe?=
 =?us-ascii?Q?fYIOuC14Z4Qfp14RJG5/St3D/4pBvyAkzTiyqFBIouys11W9CpGevB6/CiEd?=
 =?us-ascii?Q?ecmNzaOSnQWdt3DX8KwNrcdfp0vB/m5lgGBx54niH/KZWIg2A+Wzbb/vBELM?=
 =?us-ascii?Q?qC3/CUD4lOL+v8f2v9MhJ4fxwA7MsVxMG+kk3VmiPmATLdgdOLlfbfBV0O37?=
 =?us-ascii?Q?Bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b68b0f5a-ccff-426c-7f1a-08dcc2a00822
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 11:46:17.6488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YT1txpJQcBnf6mojjryUUqpIu1sQ5tnJCI8XMYVakqkO/XB4Llj/IuTCJgrQ+kvtxgvrCLAJM/47yzR4JZI7yo0R/ddUZHVahMa749aaD8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724327182; x=1755863182;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VbNTQYbotE4ncRGuJBAlQEXc5LVG/I45zHLkImudotM=;
 b=QSvsyiibMGcN+Nx9kHnn4/DIM41UD0HjWEiSpK2PGgml6Hs/5oYlVBsl
 eE5GWQMG9i6zDp8oKX/kI3whBfdPSheHzBQK91rpRurYScW9maABv867k
 umq0vlxWwQTbi/dZSXwoq9wxP2xwlIWyTjoJXj9EO8PONX0OKLyW2OxQj
 n/LzXxNCHfNjoZdUZESqphYop+BjZu5xExpUm6c+Veje/9yS47PBqUBTV
 a6PPJnZO2GyVZku34XEdh1pf2aS0CkcbuHE+ilOZVt/vRVlUVlgNay9JV
 oLOGvYLaLDzzFpxq9BY2yaZAvlzy+Wg31ZdHIrYJWSCHVem8qTcIx6Y0Z
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QSvsyiib
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] igb: Always call
 igb_xdp_ring_update_tail() under Tx lock
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
Cc: Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Sriram Yagnaraman <sriram.yagnaraman@est.tech>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Sriram Yagnaraman <sriram.yagnaraman@ericsson.com>,
 Benjamin Steinke <benjamin.steinke@woks-audio.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Aug 22, 2024 at 09:42:07AM +0200, Kurt Kanzenbach wrote:
> From: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> 
> Always call igb_xdp_ring_update_tail() under __netif_tx_lock, add a comment
> and lockdep assert to indicate that. This is needed to share the same TX
> ring between XDP, XSK and slow paths. Furthermore, the current XDP
> implementation is racy on tail updates.
> 
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Signed-off-by: Sriram Yagnaraman <sriram.yagnaraman@est.tech>
> [Kurt: Add lockdep assert and fixes tag]
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Thanks!

> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 17 +++++++++++++----
>  1 file changed, 13 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 33a42b4c21e0..c71eb2bbb23d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -33,6 +33,7 @@
>  #include <linux/bpf_trace.h>
>  #include <linux/pm_runtime.h>
>  #include <linux/etherdevice.h>
> +#include <linux/lockdep.h>
>  #ifdef CONFIG_IGB_DCA
>  #include <linux/dca.h>
>  #endif
> @@ -2914,8 +2915,11 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
>  	}
>  }
>  
> +/* This function assumes __netif_tx_lock is held by the caller. */
>  static void igb_xdp_ring_update_tail(struct igb_ring *ring)
>  {
> +	lockdep_assert_held(&txring_txq(ring)->_xmit_lock);
> +
>  	/* Force memory writes to complete before letting h/w know there
>  	 * are new descriptors to fetch.
>  	 */
> @@ -3000,11 +3004,11 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
>  		nxmit++;
>  	}
>  
> -	__netif_tx_unlock(nq);
> -
>  	if (unlikely(flags & XDP_XMIT_FLUSH))
>  		igb_xdp_ring_update_tail(tx_ring);
>  
> +	__netif_tx_unlock(nq);
> +
>  	return nxmit;
>  }
>  
> @@ -8854,12 +8858,14 @@ static void igb_put_rx_buffer(struct igb_ring *rx_ring,
>  
>  static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  {
> +	unsigned int total_bytes = 0, total_packets = 0;
>  	struct igb_adapter *adapter = q_vector->adapter;
>  	struct igb_ring *rx_ring = q_vector->rx.ring;
> -	struct sk_buff *skb = rx_ring->skb;
> -	unsigned int total_bytes = 0, total_packets = 0;
>  	u16 cleaned_count = igb_desc_unused(rx_ring);
> +	struct sk_buff *skb = rx_ring->skb;
> +	int cpu = smp_processor_id();
>  	unsigned int xdp_xmit = 0;
> +	struct netdev_queue *nq;
>  	struct xdp_buff xdp;
>  	u32 frame_sz = 0;
>  	int rx_buf_pgcnt;
> @@ -8987,7 +8993,10 @@ static int igb_clean_rx_irq(struct igb_q_vector *q_vector, const int budget)
>  	if (xdp_xmit & IGB_XDP_TX) {
>  		struct igb_ring *tx_ring = igb_xdp_tx_queue_mapping(adapter);
>  
> +		nq = txring_txq(tx_ring);
> +		__netif_tx_lock(nq, cpu);
>  		igb_xdp_ring_update_tail(tx_ring);
> +		__netif_tx_unlock(nq);
>  	}
>  
>  	u64_stats_update_begin(&rx_ring->rx_syncp);
> 
> ---
> base-commit: a0b4a80ed6ce2cf8140fe926303ba609884b5d9b
> change-id: 20240822-igb_xdp_tx_lock-b6846fddc758
> 
> Best regards,
> -- 
> Kurt Kanzenbach <kurt@linutronix.de>
> 
