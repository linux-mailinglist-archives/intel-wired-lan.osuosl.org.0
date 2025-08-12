Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A0FB22C12
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 17:50:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4B9842895;
	Tue, 12 Aug 2025 15:50:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mdI0OPojVvv1; Tue, 12 Aug 2025 15:50:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2CC49428CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755013818;
	bh=7SdsTft0pg9KIKZLCiJYBLXpaJxEKx4FmVFLBC7bih4=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LO4zSFm/URHSMeNYvkO+wNj+SLgC1o7Yz0Ya4jSukDLAwO9wlXpYSrK/VAtGNNFkM
	 /RCzhd3kmMQ3n3F1lj6TBgtc9SlcrX7lrVHOvhnXSQ3S0HqSjIC1ltzBWMpDP3C3uE
	 ZmHQ5VL/XqY+3HomHOtsHVlkr8sVFHseBV6MqVmEj/gF3oaY9UiaK60nWoDC7hAVHa
	 QDOqiWvr+XoYT4EmrMB8ZRNWrKQMuygQMJVDSIUz2dFGk+DzyU5uG64x1lIRH8XPrg
	 fQeAiobPlRJERfSCx5/dNiYR2KPth/BtaRgUTGAGHGhQkvvDfrkeCV3qavL0yHNkgG
	 wvehXZxeE/sdg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CC49428CB;
	Tue, 12 Aug 2025 15:50:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C52FD183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:50:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AB75142876
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:50:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nOou6uzvFLDO for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 15:50:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EAABB40170
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EAABB40170
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EAABB40170
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 15:50:14 +0000 (UTC)
X-CSE-ConnectionGUID: mTiI9q0OSzyrfL+2etiXCw==
X-CSE-MsgGUID: TB7vQLrmR7qvoOPCwuHHKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="57213565"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="57213565"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:43:07 -0700
X-CSE-ConnectionGUID: IhYABnKKSqOgt9s//Qtg4g==
X-CSE-MsgGUID: 5o2Scw5CSfq6Jfs4J8rG6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165862121"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 08:43:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:43:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 12 Aug 2025 08:43:05 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.51)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 08:43:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OsTki7jx8ZdWSM4/nZ4mT8T+5HMGDgt+bLnm5Z8RPiMeMgIP/xRuBRVqdQ7RCSvW/+MGVNGJckjDpe6qJ/g3DC8uSiKq4a/6fljY3X6FBnM7a0Z7U27urzQ10Iu9vDzASyx+2VFWA94A7dydkq+0RJZoe5mgauc9sQisiowfDY0mXKrfobH5EqqhcclL67SUwfKFnsXrzvwQCvHGp3N2pz+RRX72CT015OySBGMNEq90E1EaEt50oY6Le3oyhGn752O3xRyIqAJr9eOr3BmQjtOFa2mqCsCBlPUhc3wBdat69VH3kf99LvAun1a8W+mFjtP8SqriGTUVv73BeLVQdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7SdsTft0pg9KIKZLCiJYBLXpaJxEKx4FmVFLBC7bih4=;
 b=Lh/ePknOliJ/Tl2Ou4PNnWmpehWvltQQ6J+XLRJ7BNH9fgw5pu4yc4D7a2hwiCwrzJAn95n+n7CFyT/C+gkImbcgfeacn5zjFntD0iALQmE8d7lqFNSrpfT+R/e5kc4J1D9xqbQa0IIbFDuJcvMIE6ALQYffibNZoDmT/+eodumpFyEhoJbN+v5tLaG8Q66Frmmzpm8BWig6bVv4/sHLIz2rL6OEP6pA/2e2OygvTvskZoL2SQHKNyGzYJxvV326nA733q6VwTfeElfF7VfmOLCg140SmSSHtU1F8DD79zNfBcPVWyaVB7ai9g+pIDi6AmmERlUwS1uleKv1v7nnAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 SJ0PR11MB7155.namprd11.prod.outlook.com (2603:10b6:a03:48d::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9031.13; Tue, 12 Aug 2025 15:43:03 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%4]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 15:43:03 +0000
Date: Tue, 12 Aug 2025 17:42:56 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jason Xing <kerneljasonxing@gmail.com>
CC: <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <horms@kernel.org>, <andrew+netdev@lunn.ch>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <sdf@fomichev.me>, <larysa.zaremba@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, Jason Xing
 <kernelxing@tencent.com>
Message-ID: <aJthAHfC2dK/Tyen@boxer>
References: <20250812075504.60498-1-kerneljasonxing@gmail.com>
 <20250812075504.60498-2-kerneljasonxing@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250812075504.60498-2-kerneljasonxing@gmail.com>
X-ClientProxiedBy: DB9PR01CA0021.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::26) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|SJ0PR11MB7155:EE_
X-MS-Office365-Filtering-Correlation-Id: db09ab8a-a15c-41b8-4f25-08ddd9b6ec8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/ceGs2bqilAu2jeengBh6VFypB0brEQYG2YfbgO4lCv06j6qxbL/hwuVpk7f?=
 =?us-ascii?Q?mBMWwz6oJwfdcV2RU6EjrmyHOQe5P4IbqoPtPq3SN6U/VACtiiKkN81H7EZV?=
 =?us-ascii?Q?M4BlXJSfQ8q+igDr73+90H/u3Uwjm6H/sWWj4+itxjEoCP8rq5ew692HzQCR?=
 =?us-ascii?Q?74v/eCaJckQYRZ+PvYl0GEfOBO2S37AaYb6hoUoo19iHjLDzn6TLh1j4kEha?=
 =?us-ascii?Q?IY08sUpevcguP9pRc+/8kcUJCTTGbZSwJscCmLNuLQBgNU2PdYmnUGA+34vh?=
 =?us-ascii?Q?9vr8luNYlPYWwxVfDxgZ6ScJdLlMEdfuDBW2auIQhMNYcc9srcpjBbJ1rGDo?=
 =?us-ascii?Q?xeMyMc6/jeDUWGv/K7qx9P5a0qJ6sbRzAWl667e3ueBWCZc/ZUeJyzK90aWs?=
 =?us-ascii?Q?aUaZEk1AaTihwr1LTmCvgrjIAve3xqGFGobEHhwJL6AX3K3HvfVsgp5UeAr+?=
 =?us-ascii?Q?1neje8S2f+XBhZZzgFBGmCzReyy/xAhCt81RTBA+CVF8xksgXzqtjhAIQuih?=
 =?us-ascii?Q?ivNfJWaKsE08lN6Wmr9yUOsufv44ZRP+b5RKpfu+zG23sETqZkPlDk99exzT?=
 =?us-ascii?Q?wLNJ7wuWsy3mthYT/gtE71S/7uFaQWcGLJHXBkF3qk0AmwLy56LDS6m1OXbR?=
 =?us-ascii?Q?RzRsAFhAt3UhpGRr4QpqRtX5RK7qe7vyfX6LSt1DmwKpDKSHYGcDydDqBI7y?=
 =?us-ascii?Q?lsE/IdpGFs3Nny/YxWZ/wRQei2pqLIzCeClnQl0z9QXw/usTxsMZWxeJm3Hx?=
 =?us-ascii?Q?QKMkYD8beC0vsLlMpPjSx4cTq47cik5S1N3qHK2LnqF9NXhSgScyekkKyEUu?=
 =?us-ascii?Q?n66D9XPHXxIODX8LMVjuTUwIdbTRik5j2CxbzONo/cAjd3Sksk6U/tQAI7VS?=
 =?us-ascii?Q?InOGbb3ZeE2RdEwTLK3G93aACinuKVZqVV+/YjLwijpWzNzRjtnNiQMrECBI?=
 =?us-ascii?Q?7JaSV8mw9Cc8xBMtDx8vb3zughJP2hUuutRotfnLQPVnRu3pzJheu8/dw/B7?=
 =?us-ascii?Q?3AFdrC2mHe4tiNRi1NjvV4oEWukqdr+LfmMpQXnF0Y20LW69TG1GrmBC8kG4?=
 =?us-ascii?Q?a7IWHT3f40KCyOVpFp1h4geS1nWi2toIAgFq8S+sbKzuxuF+CddVeMF9Jo4K?=
 =?us-ascii?Q?iItd67A9pBJ4vEE/P2WTKV7bF5BbRPdG6OL3O2DJEiSvKyMgL3rsRNPSC3Wi?=
 =?us-ascii?Q?HzDdsf+aBSr5yKkIDxql/jzrDEY8xDR77lVlDx9wLCDpWy+HTVdRlLWNzcTV?=
 =?us-ascii?Q?Pr5U0iYDCYbtd8cISJMsq5b0TaL8E6q6yQfy/+tN8lHfJUCvbtQgDwE4lp9p?=
 =?us-ascii?Q?Y/LFB3z2BRDis6Q45n82lcJrSL/dgiV2hvu3EgXAGsAj0e03AUZ8497OLPY9?=
 =?us-ascii?Q?pv5IxGt5q5Q9eolYz66pVZZMBICw3LClZbkQYowdJyepTuE9WZ9F7ILHsyot?=
 =?us-ascii?Q?cFtqP+1Leg0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8Txrj+d99NaeCGq2vByFBUI5tN3PiN5AuTcMOhbIw7BBuw/7OxhCBbDEaVqv?=
 =?us-ascii?Q?mvsTt97B8qrVDpQyLrUqj8oHq1GAp4JxBRe/HtEvCxlSd7tazJ906kWKfeJd?=
 =?us-ascii?Q?LuzfN6VWaRMMticTwTWGrhSl8kPTKaGqpuQGAlCQDHrWurwf9ahNJzrJHYQI?=
 =?us-ascii?Q?sFHK//XqkSHVAaDEVW7MBaEj76ngb4RHFKbz3sxx+VLXMR63QVrAsUIAZByq?=
 =?us-ascii?Q?FiIKYxQ6PBRcnFo0E53mwYXxyq+0mMBZqzpw3cAyxouMLiD8uyJvUoCaktEd?=
 =?us-ascii?Q?i/iomKz/xuV/4bXEGCgeEVrsywP+lCtl9Xc9kVlrGIAcGd6JOe8sCXZXuV4w?=
 =?us-ascii?Q?/JRFqHoAZmsfmyvkxcQFHkUBnBujGPj7iRiuW7928QgVQJmXJGmK1caLvY+d?=
 =?us-ascii?Q?lAwX0zS1x+0vGP/GJZzlgN/UvMY+FDPbJtxZcVIuA42QKwhbrg6/N/GZotP0?=
 =?us-ascii?Q?smt3mw6jFxACX+Xgxx0QlYm6jCNOVeCQjlIYHrBabgjEw/9UAgxv+69UMXll?=
 =?us-ascii?Q?5FEbJTXv40K59n5M4XpSv0uwNYLIpiion6HZNTQPbL/LjS0a+GAi49TLWpYx?=
 =?us-ascii?Q?hOwZp5Rd19YvwuVjXgBFYgX7+gxGvY1D57j2s5O3tDacP2DqfL0aY6hTnuDj?=
 =?us-ascii?Q?H9FK7PCRIfL1U7dGyPl/ttzyiZ5iaXFJMuInDik8sAYmF1KLnqWnZ9+dE601?=
 =?us-ascii?Q?2GMZ9sQOXtKs0kFDHSR0shzTMEmTd0hcM3ariHLPkEjvmlrV33pjcBXauEQ3?=
 =?us-ascii?Q?a4W1p8u60Tow1PQ2FLgjXo255XdnOACHn1lJRdE5ZjRXD74aLXgK2J0UQIKR?=
 =?us-ascii?Q?wKILjiw+6SFyjW3e7SHiCUNcaOxSFjZSBddTTyhhHQDxN2c2bvUJqtKlsorZ?=
 =?us-ascii?Q?9Lh+oPz9efwNMUT0HBjwvduIujDC9aOynMps35JPD+OGQHVpy1indx0m/aYZ?=
 =?us-ascii?Q?jQ0X+P6GV5WurX7cZA6SdghiTeMzkA4JAzWJn5S0e599EJasdOkx4XEG5zE2?=
 =?us-ascii?Q?q5E8/oeHmLZhX1X3xE9/YjJ2Ihpr4oPJCECMcqdP4iIGR0larXOhrkSXec8e?=
 =?us-ascii?Q?uiwNbyIajrr/WbNSQtKeT7mq+V15mSLeRQUSXbFkgIQz06Rt8505qT1z6rnB?=
 =?us-ascii?Q?e5TxW4Pp/rVJEj6ryRWpaqqnQUZr5zaV49OpbPf7W+tItIoKTW+twILMha6V?=
 =?us-ascii?Q?b+roTpEkSze13ksU+jS7/qiFDSvwZvdQEA5ItNpbeIfrHXD5HaOtcokzVf+W?=
 =?us-ascii?Q?sXXbC3MZoh6Hkz7LUmicKrugHMKf48xyvc65qDCMARwA8rG60Zn0dpuATc0h?=
 =?us-ascii?Q?vGRNyY4FUMgbGfwD14xhyoPRArNhFZaj9DheIe81HjmGZGfu2Cgn3e2fAMxO?=
 =?us-ascii?Q?/lQXkkVSKtCYsdXnNWhdzGCS7F/mGpaNInxoVDdI5D8Sl55BgT4a1VmqH7HQ?=
 =?us-ascii?Q?4dpXWkJWainteoLB7JFE0P6qyJIIcPA9CVq+pAnqAtWGNmAuYeBrco2cR6Xt?=
 =?us-ascii?Q?yJJC1JeO+HTO6mbhaZc+igoodrXAU+RLmHkwoj+BuTr7GIUkHr2sDBpmY71k?=
 =?us-ascii?Q?xJoo+t+E5pdXnrOA1a/oQ4zRJVvi/9uKNENmti/EuAogTxYaX4UKaWhTwKIs?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: db09ab8a-a15c-41b8-4f25-08ddd9b6ec8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 15:43:03.4490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LUHWeAqZtD2fp68J7twbihl6fGdoBQRSp0679IFRKFySwweZ8uP8sJn0QT9wZRHzS3znpT+e+UiZNCgLYM027YQA5wETHg+i1ahWMY2sQ2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7155
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755013815; x=1786549815;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IoJKx06PwA2NbmK7E6s0YcHh/bYEPMVbEVfbP5+rZO4=;
 b=GJXJbnPL2WFWKE3zwHBjATNwYypG6MUI4ZANZkvqsu7aH6uRfqzhAQ1P
 LxqlHAZ4l0m6LP1j5QypPcsgJD+WFUm1Ua9lX+fpyf1teO/kEcRPwU0A4
 GvCEMyDbq4MR25Pc1eGjAVEuUnFqSm3o1WVUkzCWOlGnnavn9kSjGlkzP
 Hi1USaaFYLSCzc95Fs2oX7HTyMHjVu+Y3g9NpyRpC+XZSbkMCUYHsXxl3
 4VloOYHISqpeeaYVp7xJlddCipB10qFUDNRW0bAM1qyBWYWlp8nAjvD1o
 PW3saGFclNgv4BfprPdadchnc+HCfjsi3ftZlx3F5TRRlo4yjzhBqnp69
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GJXJbnPL
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/3] ixgbe: xsk: remove
 budget from ixgbe_clean_xdp_tx_irq
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

On Tue, Aug 12, 2025 at 03:55:02PM +0800, Jason Xing wrote:
> From: Jason Xing <kernelxing@tencent.com>
> 
> Since 'budget' parameter in ixgbe_clean_xdp_tx_irq() takes no effect,
> the patch removes it. No functional change here.
> 
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Jason Xing <kernelxing@tencent.com>

Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c        | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c         | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 9a6a67a6d644..7a9508e1c05a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -3585,7 +3585,7 @@ int ixgbe_poll(struct napi_struct *napi, int budget)
>  
>  	ixgbe_for_each_ring(ring, q_vector->tx) {
>  		bool wd = ring->xsk_pool ?
> -			  ixgbe_clean_xdp_tx_irq(q_vector, ring, budget) :
> +			  ixgbe_clean_xdp_tx_irq(q_vector, ring) :
>  			  ixgbe_clean_tx_irq(q_vector, ring, budget);
>  
>  		if (!wd)
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> index 78deea5ec536..788722fe527a 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_txrx_common.h
> @@ -42,7 +42,7 @@ int ixgbe_clean_rx_irq_zc(struct ixgbe_q_vector *q_vector,
>  			  const int budget);
>  void ixgbe_xsk_clean_rx_ring(struct ixgbe_ring *rx_ring);
>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
> -			    struct ixgbe_ring *tx_ring, int napi_budget);
> +			    struct ixgbe_ring *tx_ring);
>  int ixgbe_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags);
>  void ixgbe_xsk_clean_tx_ring(struct ixgbe_ring *tx_ring);
>  
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> index 7b941505a9d0..a463c5ac9c7c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_xsk.c
> @@ -456,7 +456,7 @@ static void ixgbe_clean_xdp_tx_buffer(struct ixgbe_ring *tx_ring,
>  }
>  
>  bool ixgbe_clean_xdp_tx_irq(struct ixgbe_q_vector *q_vector,
> -			    struct ixgbe_ring *tx_ring, int napi_budget)
> +			    struct ixgbe_ring *tx_ring)
>  {
>  	u16 ntc = tx_ring->next_to_clean, ntu = tx_ring->next_to_use;
>  	unsigned int total_packets = 0, total_bytes = 0;
> -- 
> 2.41.3
> 
