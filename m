Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D10A191B9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jan 2025 13:50:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1766D85025;
	Wed, 22 Jan 2025 12:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AIn5N6yH0PGA; Wed, 22 Jan 2025 12:50:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8C4084FA4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737550249;
	bh=YNbFL2NqUTUVRqlbZQgUkJQkE081X0z1czgt406fu40=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GDHni8b6Cl02V4tMbkztUdbneu3kY34Cj1iTJDBa2hLXc548ReejsB93cBuHO+qDJ
	 n2CY0T9p1rI1mOvn29/Uj/Q6OLZ83Gf0mSrSURiuiNQSyVkVVQ9Gsqh6nFNpePgXqf
	 YZH7f7I/TLBhH/26DbBLadkRTCtPg3K3hdnFIyTGaTgFIphD1CpCSbcgNmVk+JNOBW
	 rnRKsqhztGWxDcHoAVR8N62IzQbZRB4K7eoNlUMLNrsdKqS6HxAQKlsjsE56pnCh9w
	 pfYqOGzne/I4L9msEXiEto9WWD8SL4HCT+6IWTVS8MKwz4hy28kzBj0xQ36GKK+xHy
	 hHhLnU/xsxjXA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8C4084FA4;
	Wed, 22 Jan 2025 12:50:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D12A51DA8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 12:50:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B49FD41924
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 12:50:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id o5CQ3BtcUCAN for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2025 12:50:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6388341918
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6388341918
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6388341918
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2025 12:50:45 +0000 (UTC)
X-CSE-ConnectionGUID: P50mepMFTcG7lQJKuVJnog==
X-CSE-MsgGUID: 4pu+gGYdRmG2u+1JhTi+sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38154358"
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="38154358"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 04:50:45 -0800
X-CSE-ConnectionGUID: l8NoUuTFT8GsZfiHRh8IKg==
X-CSE-MsgGUID: gPw9siN7Qhqtd2+hyV+UKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,225,1732608000"; d="scan'208";a="107050202"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 04:50:42 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 04:50:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 04:50:41 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 04:50:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vhC9vsYpnpzVPNhPo2Yfpz75tzVnC+mtpkbsiT0ixE7zlFAuU8wrUQs/SQTkAmEpHbfKmkr+s7ydXkn8lV+zohSkSlSi93oVXWodQ/qegMsBHqNGJEK3j+BpBYc9Ly4P6pHh8E+o0yta5WDnjpnahDPR3xnZ5S4Obh+M6ZX7e0x+pSo41rbZuF91u6O5SBfABYa/X/8rnfFPhqBdW0wmcy9EUD4VTQhrH4okbCQ5W75DlM7Zw7JjXqVyBlW8387nvRqtkSsWfH1jRGBKrBfjdThkRbnMNXnVdyW5OP3acB6Pw/juANapac6nXnc9t0a8xITcLEsHC+OiRine/uf9rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YNbFL2NqUTUVRqlbZQgUkJQkE081X0z1czgt406fu40=;
 b=pQq6hTR4uoyDbWXR41fqI/SAhkU0hc2BTnFDXHSayF7gGEDmiLJhkUAMiDfOb2fESdgJd1E5fZKam2hi1egnr+jOt2SSEzCQqEhpXxAHgsiKPUexrX9scO3zUfy/FdUV2XIL7IwNNNok7dmzsdjwpUBCo9heb8d4k2wpkNAE/9xe2Zz/0qifoGF0YOMe2wTsd7fkekgYRQgqdn0EruS9eUBnzfT3boMrbQgbwszAkYeDALmv9IzhB3c0yL9NfCDYY51UUUnMCrzoyGduxmKdebQJiwALT+nfvOYYsbstyqmKimN3w3Cwo7XI6l7Rk6zGIe4DqXMtz4VbVTOkAMz66Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SA1PR11MB5827.namprd11.prod.outlook.com (2603:10b6:806:236::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Wed, 22 Jan
 2025 12:50:11 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 12:50:11 +0000
Date: Wed, 22 Jan 2025 13:50:05 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <Z5DpfQVw3oQ+Ancx@boxer>
References: <20250120155016.556735-1-maciej.fijalkowski@intel.com>
 <20250120155016.556735-4-maciej.fijalkowski@intel.com>
 <20250120163755.GA6206@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250120163755.GA6206@kernel.org>
X-ClientProxiedBy: DUZPR01CA0196.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::23) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SA1PR11MB5827:EE_
X-MS-Office365-Filtering-Correlation-Id: a8b2958c-c667-4c29-4ab5-08dd3ae34f0c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?rq4TH3iDPNI5E1yqTFNAcwGOTFfdu57gkPMRTuV1/m3h2AJ+aZ5QK71hxdaI?=
 =?us-ascii?Q?vpiW64uCIz6ljvbWNViz6W52aIMmXd05v+2LrVx0eWO/biDJbnzo0clGEnY4?=
 =?us-ascii?Q?qdLp/NFPCXwVRUG0EfgGa3ZLhRYinA4nB6yeSLprOO591Mx57xHNnX9iCca/?=
 =?us-ascii?Q?rDw7wLYANBi6SE1HCwY/rJzlBmwpm6obpyfV7o37ItQENyJEg2Xzkg/jT9e9?=
 =?us-ascii?Q?1ydL4C/5SpFshPTZbxKUMYBrgfUxmzL68PPp18nDo343oigza2xEc5kybNvI?=
 =?us-ascii?Q?VwestEa9Yr/Tqy1A8atI8XE21BgaAqeXSCMRuNxtKXwCH+zS17MNqWgVXoQL?=
 =?us-ascii?Q?doJ4amm5uxlRhl/3ZanO5/92vz3I1lb9okOvy3clQ19hXf9dmF7bwffKjhiX?=
 =?us-ascii?Q?VptJrH3bcXJ1hSW8TabMM+QXFfrAHZA0bXc3SWAeU/GR4aoRL4O8w4Dnml9m?=
 =?us-ascii?Q?M/iuRtZHQ026Egjj06ZhKfBjD22an30jaqoim4U4JHaeLV+MuDcASaoGnVNv?=
 =?us-ascii?Q?1Jsx7aK8impSehhxSIVCDMDGLJzvlyE3V2gReNMGX8QB0th00hNgGPEtL+ku?=
 =?us-ascii?Q?tE3fy/WsqnP8I/HmYhJF3fATL/sbpPEFt5zUm69XVEAi9cPKPGLq5BLVpbC5?=
 =?us-ascii?Q?Dgy9tJfeEUqSKsLUfiW63TTbWf2KlosLaMBVoAENT0k5n+owNPR2h5MVGbUh?=
 =?us-ascii?Q?353h8s3SF5PGeC0ArPqYESWboIQPICPdvVQuKi3WPYJApfrez+AgTK05p9W/?=
 =?us-ascii?Q?QaSvCXt92QAoJyeMDJ3ckNZneFpZpmx3rjaB5WR8lVHNKKiAcQfCceOdhFV9?=
 =?us-ascii?Q?JTpV86L+/HzFiiVvzzLLhr38yyhvJJHJQWuod+Qiz7IYDn+Z1oPvY/zz9mqS?=
 =?us-ascii?Q?/1IdQV3n6/0oeDbHj3s0NwMvvzm00M67C11ZxJnrsLAq8qHp6UqRZCh2859Y?=
 =?us-ascii?Q?kaWFqbZEFnGmU41mGjN0ev6oSYu2fYyzg/S4W+6Lw9pNkOPwlclimN3BkNhS?=
 =?us-ascii?Q?cvpqENEeU5djwz59s8CXUmKyvdHpiFy18JpBRdw4iyEttzoUN4brM3rgdLr+?=
 =?us-ascii?Q?7XNo9qhXl36rVpiffCFy7Wsmotudx/PIrQvpYZxNNriKtUmgih8GGPWqd0Yv?=
 =?us-ascii?Q?r2d0WlSoW8I+C1DQULRExjFcKQOK27DfBXYUXZWHXCMCXbacwpMcoVRBHhVx?=
 =?us-ascii?Q?fVeuGhuxxlzbPWOQ96UIX+EwXt2fq11PEtg8cWhu/l65+EC46ZxRXzebT6B3?=
 =?us-ascii?Q?zmJJ6kMuKYv+xySJ72Dl9Ec6sOS9Lrsmns1HdtBGSHjkVaZt5FBteWXSLh27?=
 =?us-ascii?Q?6TKJ82cux34zjUZ7tDXrnHz/+iuqRLLCPbrzTTdS6OgyNXb2EBAuqqaUjxDS?=
 =?us-ascii?Q?kSTXYX7k7sXtneTscR4pI2oFaZJ4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aHsU7Y7s28Ph9maqGdSdAt5OutNzWY/HOWnXfE3qhMOzaS9ksajA2lpYvDQP?=
 =?us-ascii?Q?CQixrkL3F7HJUcJKMTQsgKBmRLZ1dewueiBOQwMmqYchhCJLAZRva+tM0PSU?=
 =?us-ascii?Q?yarD4KobW9KwXfc/AbGaZR19yEpAWFol7TyVNvm1+pFMZgJ4jhPD0aHHs6E0?=
 =?us-ascii?Q?SXwvqpBFFG4h/9vsfyT3V+wS7Po7QbHZV5cLZ+IupL70kprPaMHCkYBXp8MF?=
 =?us-ascii?Q?505Zfyl8yvt7gOSmyHUGvP2nP97dQjDHFtjG1E+Pc1v03HFA9nljhQwhv3xy?=
 =?us-ascii?Q?VCC///zZ+6n7KxyyVeH9EVyo59q5yKy/Hzcx+Am31TnODPZOe24z+zRUVxOv?=
 =?us-ascii?Q?UL65+EcJ8iAD/h0XWZVJUj700/5cnS53x25YbobTfxYyOCdEvlLdqAGTh0rC?=
 =?us-ascii?Q?E/nLc0V8cH7nd2fmtkWUn3aPTbhuAZMVu8WUOJUJ57rPwXverpgYpfpJ75ui?=
 =?us-ascii?Q?BEUM1Vn4iKcrHmoA5WyOwnA7DxnVOtjV6+pgwuE0FR9kTGrX3bYLgWxfrdcZ?=
 =?us-ascii?Q?oqaOL5gGGQP13r5X8/hDH1Mt9h1vXnodCj7S9fVnCQCoH2MYuhBx79EvvxLD?=
 =?us-ascii?Q?/I4LvokS+eWQP02Wz8ebglN0inXzEi4VrIyvfPpjlFVuEamY++9Sc90UjugM?=
 =?us-ascii?Q?xW58cWAqvR/lUKhm9pGk9sn7C9a92xr3cen87MuqdCjIHwsW02DN7tANlu8i?=
 =?us-ascii?Q?9Z48GsKVbnJvsJilraL4xT1yYjQ/Lofuw8xXlPN56s6F/JBFFwK0Z8rY4xG2?=
 =?us-ascii?Q?lEnxwyBOVPFMFnfi5yuRIVR3owtPXJbd0NR1swmZdMuPZt3td9XeWoAYXZLB?=
 =?us-ascii?Q?1sC4BZqRjX94o1hzrHZD9Mn10ImRSSmYE+zMV48wrjX40aODd93XWI3AtiEg?=
 =?us-ascii?Q?/aE3YIcia4h8LiOo8Hlqo9URtNGuRjgleAJ885jjzPlcqX3p4pPa7GMLSSjA?=
 =?us-ascii?Q?Z5nZdhOvdq2/67VdZYUoR5Qu3IbW1pQHiVUMv1yYW7larQpTwYcTbNcPk0ta?=
 =?us-ascii?Q?iqCQytbxDO03gD049GlJmfZDp7IxSPc1joMiddywcndUv8L2wDSXX4BNnVYO?=
 =?us-ascii?Q?jXrO62mpR981YaniwkPde4pGibi+9F097TAAcWcSe1sCdZE04WcRsOz/BmCL?=
 =?us-ascii?Q?E1uswKTSStA+WNBChrGrXNsdCwylK61IQiCf60MzZdlgvCDAy4LwgVOt2cNX?=
 =?us-ascii?Q?K9slVSL8DjdBxRbrkI2xD53semWRnLQYKWOxjiETPRxqKxV4YbxibyAcMsoU?=
 =?us-ascii?Q?It0YTMTkOqo5QbbTStWxQ+LP31GMmRKJkq8ONZC/e2tK5oxuSCOtoinK2fiJ?=
 =?us-ascii?Q?YW10+6APH0eGZXS9pfMEVoC/78gT7TMZEkpk6682EiOogYOzYObmowp+HcQn?=
 =?us-ascii?Q?UwiPJMy3J4uHYQSFxGqOEgd5odIMZMMNIWqy77kxl/RakVe85wpdS8S/d5UK?=
 =?us-ascii?Q?Hl4wdI/qhlBe+yU97J02bXQhA7kDTKHdRd9Awgh2xnLqRzSBBLcPGK03Qv3b?=
 =?us-ascii?Q?yCKEwCrF1okHlC4zQdCHY34elBcB68u/qGbPtgRyhCAKNzx6AZj3ISNuWwna?=
 =?us-ascii?Q?2TaI0ktRx2/HM6fWo9/18QEb34lIzL9ZabPhUdg09PRUiUFW6SaV9eS+8XlB?=
 =?us-ascii?Q?0g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8b2958c-c667-4c29-4ab5-08dd3ae34f0c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 12:50:11.5907 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6jJ0FAbJWftrd5FyX5XdGyrcZrFHJWnDwF4aeHc13w7SxWh2WdZz2pI7z9IU+wkc3h+9xNY5RYgWsr/n5w4CVlm3FCUgzzUUFOAWY2rG6rE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5827
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737550246; x=1769086246;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=K4/Ay17DSDFps3/vONa7/q2/ngK5N5xlDwZ7mQtJoaY=;
 b=lfiEq/vqz692Wf+vdzO7R70e5RZO8JwvWaUpc7C6pZfRW6UkJ49c8zjM
 JYGFYTS/6yagCWXJMqfvCIJwxEy1Hqi3BqK7UH89E7+U0NtjetgIi7GL+
 SbXYv6ps0PfAObC/sy9ONkFIRzrmBolkDHmDhkc/oKQbGggqQWxdFC83s
 KDP1IRZNfKF+PqrtA2MEULUYunQgtFc5VMzQAySeoQZH3n1GLaQ9Qa9Ui
 lPqU89CWcUNtgzPHjHEENOxNYM1a5pKTGzfX5GdH5z7u/8DMaksZYYj5P
 KeGzqwYk7w/MZe4N6nqy5AWHaHgAbrI8EFJ09F1rxIqUZbp2okz9Kz0gF
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lfiEq/vq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-net 3/3] ice: stop storing XDP
 verdict within ice_rx_buf
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 20, 2025 at 04:37:55PM +0000, Simon Horman wrote:
> On Mon, Jan 20, 2025 at 04:50:16PM +0100, Maciej Fijalkowski wrote:
> > Idea behind having ice_rx_buf::act was to simplify and speed up the Rx
> > data path by walking through buffers that were representing cleaned HW
> > Rx descriptors. Since it caused us a major headache recently and we
> > rolled back to old approach that 'puts' Rx buffers right after running
> > XDP prog/creating skb, this is useless now and should be removed.
> > 
> > Get rid of ice_rx_buf::act and related logic. We still need to take care
> > of a corner case where XDP program releases a particular fragment.
> > 
> > Make ice_run_xdp() to return its result and use it within
> > ice_put_rx_mbuf().
> > 
> > Fixes: 2fba7dc5157b ("ice: Add support for XDP multi-buffer on Rx side")
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_txrx.c     | 60 +++++++++++--------
> >  drivers/net/ethernet/intel/ice/ice_txrx.h     |  1 -
> >  drivers/net/ethernet/intel/ice/ice_txrx_lib.h | 43 -------------
> >  3 files changed, 35 insertions(+), 69 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > index 9aa53ad2d8f2..77d75664c14d 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_txrx.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
> > @@ -532,10 +532,10 @@ int ice_setup_rx_ring(struct ice_rx_ring *rx_ring)
> >   *
> >   * Returns any of ICE_XDP_{PASS, CONSUMED, TX, REDIR}
> >   */
> > -static void
> > +static u32
> >  ice_run_xdp(struct ice_rx_ring *rx_ring, struct xdp_buff *xdp,
> >  	    struct bpf_prog *xdp_prog, struct ice_tx_ring *xdp_ring,
> > -	    struct ice_rx_buf *rx_buf, union ice_32b_rx_flex_desc *eop_desc)
> > +	    union ice_32b_rx_flex_desc *eop_desc)
> >  {
> >  	unsigned int ret = ICE_XDP_PASS;
> >  	u32 act;
> 
> nit: The Kernel doc for ice_run_xdp should also be updated to no
>      longer document the rx_buf parameter.

Heh - but after making it to return the verdict again the return
description is valid:D

I have been missing the kdoc descriptions for introduced functions in this
patchset so let me add them as well.

Thanks for review!

> 
> ...
