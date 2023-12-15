Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CF7814FF5
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 20:06:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87BC661AD5;
	Fri, 15 Dec 2023 19:06:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87BC661AD5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702667167;
	bh=rGY41prEOF+005y31Ceau5IeqRy0ht9zyMlPX2ZoXgU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7MLury2ckh8gOC/wBCjRewyMRojnubUReFGGNKlX4lsV2HFMJLCmcZ3H81bT/Yadr
	 712OJOLCynOLMTm7VViFp9w6z5YeyKkoLyHbvjvjx3PuVglPg7ex07rKq1yBQDSFVY
	 3VO1xfUl1WCUlWC9sTc67AFrA4ZAygOjhpy9r0OXeYi/WA/Gcw5f0V1RgZVYG8cZ5Y
	 k39rUzaN454cVvOR82SM8360UHvczJ2erAGkbjLn88IDaLsOJ+DEjnhmBWYU4PcMcw
	 wCu7q6bhsOjE5T1BMEUE1TbS0AvoqOeQS5DAE951EL9SedWftToyPcROEEWyn1fNHO
	 +ysUGKYbY1IaA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UcHrm0hJ3MPE; Fri, 15 Dec 2023 19:06:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3D91B61097;
	Fri, 15 Dec 2023 19:06:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D91B61097
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA2921BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:06:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 95EAA42258
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:06:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95EAA42258
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gO_9z4eCT3CZ for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 19:05:59 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C20E742251
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 19:05:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C20E742251
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="461776020"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="461776020"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 11:05:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10925"; a="1106216589"
X-IronPort-AV: E=Sophos;i="6.04,279,1695711600"; d="scan'208";a="1106216589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Dec 2023 11:05:56 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 15 Dec 2023 11:05:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 15 Dec 2023 11:05:56 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 15 Dec 2023 11:05:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B42dUPUbYN92QhhrI+W7HjnDPykHdj9BVkZPo2VjHdXkeRVaQIZoy8jgD6sEaBNeOhXuPZXRbgK3f2j3s28du6JBxbhyEezFWhqdQOzAw48IrFjUztXhDyskJ7YO4ov+gkE69s2klaqDHxn1Izy2lcz15d4zAe0lENosISZ9PZJmXulCZ2LpjFF8y/XCe54rDYoGtVDhXzJ2aUGh3LbTTobEcKTox8mByxroanyBHL2pJCMx7NsYUObxQ/7R0dHvbqbtr8SN+1apqPRDMJgh2WGfEbkjnC8/w7N7TjUd8ZV9S+3gwJPlxSrcBB54Qo8WwnMVSbCNsr0RU5sHqHTzSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPCd2Cu+/MUcIJF1xSihfAt29uFfxtwMx+Uxx+/sDMM=;
 b=HVUQNF5rhXlumhb9/ugSKdukMYUDq619ing/lDeX0g2AJ4bVH9bsIzx/cN5E4AhWYG9VIi8oPiBI3RbU9x8NwgRgxwdGzHToAhf1zvbflkF9xXWmhacF8HnKIeE6GARV7eR1iV3wo++g70sxKx1P8sj3B4wPJCG5l/tiRwL/VZum/BsjR6IA7B6EGzzc7q/3uLoNxckc57zSoDNf6HiPW/9frjBnO+UOtq/x+6NJWyktS+DfvfzMCGn9OgQBkCp8BGsHawv9kO99cNi8oQ595pFvTgCqVqs5BfkUEaYl9zyowNuSJoQ/qMg/auEC976prX5XT6hmNgHuJjbUZbTm0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11)
 by PH7PR11MB7122.namprd11.prod.outlook.com (2603:10b6:510:20d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Fri, 15 Dec
 2023 19:04:57 +0000
Received: from PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37]) by PH0PR11MB5782.namprd11.prod.outlook.com
 ([fe80::dfa4:95a8:ac5:bc37%5]) with mapi id 15.20.7091.032; Fri, 15 Dec 2023
 19:04:57 +0000
Date: Fri, 15 Dec 2023 20:04:52 +0100
From: Michal Kubiak <michal.kubiak@intel.com>
To: Brett Creeley <bcreeley@amd.com>
Message-ID: <ZXyjVCdi03p29jcc@localhost.localdomain>
References: <20231212145546.396273-1-michal.kubiak@intel.com>
 <9ea0484d-a2a4-308c-95fd-c9accdcdc424@amd.com>
Content-Disposition: inline
In-Reply-To: <9ea0484d-a2a4-308c-95fd-c9accdcdc424@amd.com>
X-ClientProxiedBy: DU7PR01CA0043.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::21) To PH0PR11MB5782.namprd11.prod.outlook.com
 (2603:10b6:510:147::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5782:EE_|PH7PR11MB7122:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e2da750-1daa-4a28-d5c1-08dbfda0bab7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tA6AWQbue6TFc4ZZlUzhQW0tg8aqpM3VVaAA2czDapyXDfzaz3u+As2Ce+APiV+NYzlmsdVizX4PInnC2TjSotBshGs7f+6VNtNjVdG9J06ATSRQXJN1FYlHQzUlXnNu3brmO45z+qd+0pV0xthst7kEEM9xvD7x+33R+shfgwShFDL3Dn1nUTmscdBDBUpmsv8xGUQ19dTlH3WUNpKreCV36x0VyEx2GfnfmkgA/lnc4XW8KdsZVGcOh0vncfcVb4wp3XKQ4KVEJC1pplsnZU9fsUmV3n0lwZpRhd+W5FJQMbMNzJnKl0F+gXPwe/8QjAwXz+wNTuXxNXCcRjb6bgeLDkzfh0lJfa0nxuVg8x0PjGc9TS0+12Uw4kIEBjr8TIOPuLMmw2JDnJbjVGoa1IRqI2T2pCXpGvasq9lF8fR07F+ue26Jk9mB2qcrgmxgw0iBCIW5bp/SwAdCtsMyi7uHshss1admiJerR7mTZFY0c1ykf3/8Ap9UOkdu5nAWho5ladckRz1gedSa7IMNNhcMpH2zvCUB9otJC4qLau48o36lDJCJzvP1PHzaAjyh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5782.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(136003)(346002)(39860400002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(26005)(6506007)(107886003)(82960400001)(86362001)(38100700002)(83380400001)(5660300002)(4326008)(44832011)(9686003)(6512007)(6666004)(6916009)(316002)(66946007)(8676002)(6486002)(8936002)(66556008)(66476007)(2906002)(41300700001)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8xbDmmZuZk1cAzUYS+afzCK0yLyQkSI2fyB5AsgIGUIJQ3c6yTEDZIrq7ZSF?=
 =?us-ascii?Q?sBd1cfShV+E3Wc1NSeth0A4aFSQmaA1mGUJgslfQWlZDVI+y0QcuZBT3kU8h?=
 =?us-ascii?Q?8D/vX6j65XZeDNFvEe4cfr8wDZyibO+jFA8X5BpNC1aSgO+f6MGzoYfBJK2t?=
 =?us-ascii?Q?Bvhbo3RiHTKrTsikjbFhUVL9VWGEnZvHQO9bHfrWSJ9yUa/z8BxwJyxKGukq?=
 =?us-ascii?Q?0Qf3BO+frxngS1bvydJ4CgSKBiuqyJuA0sb01PQM3/zMzzCh5SNZAGuDj+kO?=
 =?us-ascii?Q?5pXwrx2uQOGILxetU2prjoruE+SUpXU2RUjKXbmLmtUmx+YlBNtJryu+scbw?=
 =?us-ascii?Q?XFrDob9P2xxcJJwhVfRiMcYLP1jluCoLKcmDlhqnbYrxiftnaPJmAFYkWtmy?=
 =?us-ascii?Q?4ocXSJmGVPtwTsxraqPNAVfm7DYg/JM01obQoCAR7Sgej2wn9OQj/Rwb6SHB?=
 =?us-ascii?Q?EUqq5PQjgev3ZJAv1CX3O6ZNmcC8GtDESvdyAUBKshcF8X7yssudz3OzcP5q?=
 =?us-ascii?Q?ezJCjzmCcI2uOPvmSAIsMqt4zWCNyPnRPSW3y79JNd1AMmTWky3DW7SGsx3N?=
 =?us-ascii?Q?PUqcOpvRPFLSMSMyA0hvM035RC0UzZt36WMLH1rHA6yG4r9BJgb1/JqoMxFl?=
 =?us-ascii?Q?tvA9JyTlmYxKrgogdXWjcsU/qHiD9l4LuO1LiUxPoXG5HvpPCppzYfpdZCSy?=
 =?us-ascii?Q?2uHThpjwi1h3TpWcQx1Vs3pBZX9GL9wKAgNVwZ3RsJxnPdOwPJi7014BJ05H?=
 =?us-ascii?Q?awGNCdB7TqrGDLwe1kK8GeXa1cFATGVS6246YixuhvN080bFkVa9AI8zfKvy?=
 =?us-ascii?Q?UQ6UrjRRTPMWFaSLtW2WYQ79F770lU8kydGslUKs8PDlFjI6oXN3VJjOiW0l?=
 =?us-ascii?Q?dMZY3og8SFim0Jq2yefBFRyjpEFsMMmm0yiD2USYSkSmp9Ko1WQNtsffVzZy?=
 =?us-ascii?Q?IT0/zrvWg7nL3UTimH3jY5JtFoq1sp3IvFJwo1DoAPfD6PwGzdgwwgrdqGAD?=
 =?us-ascii?Q?d7cvAfNuhzPO65NLrhrRz/aafXnT3tmKfc8KXS4iztlAJCy6Lk53h8uGjVDe?=
 =?us-ascii?Q?YfTxn6pHVCqAHnXOoBBt7liQLv1AnKroO/Jb9gwEfgiK9LPPTZRpunKGJOrS?=
 =?us-ascii?Q?ZVyaYxrcKwUPkQAHaPfXQVThYMNdjW0iVBnlSqsDxcLTLwQObb3bc8KYdN50?=
 =?us-ascii?Q?ftWqYsoASrOc2XpN5zwr8V8jHE1tAMgCxpSc2mzzWEj7U0xV3q/JjXrlFv0l?=
 =?us-ascii?Q?2fXbq3rF1v7nXumDh18nW09COsMZJFJU6cvh8uJE4s8PxlCT94QN3uVy+GP1?=
 =?us-ascii?Q?okVGBMFt+7K+hW59f6bpBb6P33GLBXuvhiUVe3Pgwjw7OiOCi3hS/mko17Db?=
 =?us-ascii?Q?sm3QWhcdExrQEh8HQbQbH4FAejwykIfjOybeFu2R9gQP4pGP0zWNeFEZoVO5?=
 =?us-ascii?Q?I2WNDhc4pqRYDpf3bNTwpS0SMYYaJ/xM/HybMmUadZ+p+wGFlzR4yYOx3Eo9?=
 =?us-ascii?Q?7GFpa0q1PcWzOXBMZV86e3kSpfz1jFxdHZaYRZdcOIjwUTIkb7Gji5zWEP15?=
 =?us-ascii?Q?gdf1SGNP1Nrb8BzaNy5MzugO+8NTNdSIBCyYQ4R7uHre8ck23jaHtq+tkBkM?=
 =?us-ascii?Q?ZQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e2da750-1daa-4a28-d5c1-08dbfda0bab7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5782.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2023 19:04:57.3719 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GcZ8I8V4h97mi8VGlMoA3l8zsHBozLXwOjVxBG/6pouWbg2Iezw2AkWVFgPrIamhcWCm8pY+P0eegJQmYuYH4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7122
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702667159; x=1734203159;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=MCn3NqISnLaU/oZvg2jfnSko6LT/EgpqKTP6n3l0EUI=;
 b=naWoOykE/Ki45z5v35kcrfvNIHZQyigioQzF0CHivJFmf8HJGh6wmXVU
 fCn5FHeBkEO0VzETWHD6ZEazpzdPg9takuob19Q+jR3cyK9Qot9V+ETuZ
 Oz6APtkCvO8j78xkO2YLMz7h+unVFStgR+M/Ngm39CXrtnzAe09PND6tP
 2XFVblEchqctRy0Fw0L9z3naHELJ/5dbYs6yV6uHcImDy81yUj4nLFqIQ
 zmZdpkon7hIUzqtA/p8jtp6QM6S7Hcmo61rsZ2HN1d2jMVtaxPFDXkb8E
 k5Gro7fMAkqPsMzRCb/unbO8qXugG/xkVdXXhh5Kx2Df3R8FBbPnzS3cM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=naWoOykE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: enable WB_ON_ITR
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
Cc: maciej.fijalkowski@intel.com, emil.s.tantilov@intel.com,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, joshua.a.hay@intel.com,
 aleksander.lobakin@intel.com, intel-wired-lan@lists.osuosl.org,
 alan.brady@intel.com, Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 15, 2023 at 10:01:36AM -0800, Brett Creeley wrote:
> 

[...]

> 
> > 
> > diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.h b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > index df76493faa75..50761c2d9f3b 100644
> > --- a/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > +++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.h
> > @@ -495,9 +495,11 @@ struct idpf_vec_regs {
> >   struct idpf_intr_reg {
> >          void __iomem *dyn_ctl;
> >          u32 dyn_ctl_intena_m;
> > +       u32 dyn_ctl_intena_msk_m;
> >          u32 dyn_ctl_itridx_s;
> >          u32 dyn_ctl_itridx_m;
> >          u32 dyn_ctl_intrvl_s;
> > +       u32 dyn_ctl_wb_on_itr_m;
> >          void __iomem *rx_itr;
> >          void __iomem *tx_itr;
> >          void __iomem *icr_ena;
> > @@ -534,6 +536,7 @@ struct idpf_q_vector {
> >          struct napi_struct napi;
> >          u16 v_idx;
> >          struct idpf_intr_reg intr_reg;
> > +       bool wb_on_itr;
> 
> Not sure if this was considered, but it might be best to put this before
> intr_reg so it's on the same cacheline as intr_reg.
> 

Good point! It wasn't considered before.
I have just confirmed with pahole that it is worth putting that flag
before the register structure in terms of cacheline.

Thank you for your suggestion. I will reorder this.

Thanks,
Michal
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
