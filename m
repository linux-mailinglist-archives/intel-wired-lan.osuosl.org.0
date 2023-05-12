Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D748E700E1D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 May 2023 19:50:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 672DE42DCD;
	Fri, 12 May 2023 17:50:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 672DE42DCD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683913828;
	bh=01NuuCUOHzQTBzucPI10/OKcGIgjuDEx0msvY545acY=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=WhaYflu4FTrVo0WN4Q1ehyyxaySs7Pg6cCTja/ACpGOd99Ua+lcNcDDtW3PsePYEI
	 LjjQznQwkbjiW8GVzfffNDOzzdKeGTEMhGp9E4dngwGkLAaI8WZwejQ3fZKVO8ACnG
	 HEApfXpbOdcFE1c1JRx7Tapf+KqKkFm7llHy2DpTObJouNvULpCJJX623suuZm2Odb
	 Rd2gn++4fithedwrSGw6wrjvyd2llYHneafoBGq7p2FimDwOXulaRzUYZ1PrXbIAUH
	 WxZs9q+m/79lfCg+BcQBB7/8YfUOHgQ4tpJr0NzYfd1vPhYURTLQbughhGCDe2S7a8
	 Inq/MPWNgcJcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-I-6LT6lH8k; Fri, 12 May 2023 17:50:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4845841781;
	Fri, 12 May 2023 17:50:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4845841781
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 08EB81BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 17:50:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D420A60B6C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 17:50:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D420A60B6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3pN2BBvByZrF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 May 2023 17:50:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C73E60737
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4C73E60737
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 May 2023 17:50:21 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="353101619"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="353101619"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 10:50:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="874472993"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="874472993"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 12 May 2023 10:50:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 10:50:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 10:50:19 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 10:50:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 10:50:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E/3FpJXkBGNt67p3LocxrzLsA7Fa3ykKzZluHJQpEzOmPAtJ6uGjhLnMb9Imnfywmsf5rVX06e6qgTIPLiDOLpOsOPsOK7L5CNxXHPJlH2F4FdZZDQGxx8xyGA/6GxTW32YAkCZBjI9Zwd95NeG63ginfJMLON+Qsq1bDFCDscJkgnUEEaK2pIXMIkR0cjSXC+9+cBaOGRNtHmieM4WurDJYQDCwnvxowd14EtIaU0FRmc0AoZzd4COlHgYcVjg/MVlhtMqi/c7cDul+DLJsuYq/+igdPPWwD0u5mnDtoJCWfVCGFNwSpxotb8kLJ7S5Fj8GKcngi8D26XVu6RKvIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vxC7rldUETmMtnjJRlLqJblub+3hhbQ+l0jARke7MJs=;
 b=UpcLkuUmdxhDKe4FZW5NsCttHScn05sgNJJVwy02NwYYGDf/41GUegPyoWspsjlZVD83blZum/RPhtWevqP4MDb6Oapvi60BYtf0cIsQ1bibZ+V7Lnug/G6BxWEku42J5ncwaQKTvsKQpNC/EuDmSxdQDPx4+5VgR7/H94CFlVg9wAA5NZo08AfDPz/aj2imVRt/w26lANTXTLcx3+vmJ4jf4dRwDKLd9lwI8LA3IEFZL7r/r2k+OkpHUvWJt1GnR/DsypRSgBhBj7VJRGcwuNcb+kbPrR3pf4slv5eJBc4NsFGvn7Tc7gc8YKU18PzSA0Jyeb4LBVeGe5suipLTjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SJ0PR11MB4973.namprd11.prod.outlook.com (2603:10b6:a03:2de::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.22; Fri, 12 May
 2023 17:50:17 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::cb9c:7293:63e7:17d9%6]) with mapi id 15.20.6363.032; Fri, 12 May 2023
 17:50:17 +0000
Message-ID: <c6c47980-1683-6eb9-4ede-434ae815b161@intel.com>
Date: Fri, 12 May 2023 10:50:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Kamil Maziarz <kamil.maziarz@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20230511095628.17907-1-kamil.maziarz@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230511095628.17907-1-kamil.maziarz@intel.com>
X-ClientProxiedBy: BYAPR11CA0053.namprd11.prod.outlook.com
 (2603:10b6:a03:80::30) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|SJ0PR11MB4973:EE_
X-MS-Office365-Filtering-Correlation-Id: dbac49b6-146c-4eca-b275-08db531158b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kKyvvOYu6TZjoB6hkJ2DuNGZB7edXy9ITzF6c8hx/81kThfa4TzeHaK9KQa+vkYrYCuepR3Xz6PAFK6dH1yde987mMp52rox4q7qzGAVNnZ3fvsCH/S83UwLOL4SU6i/X3e3cOaEnhpQ+D+j5fYnqNEcIdX4LYGp2Eera7PU6uaMBK7IyMnBlaw5nK41/v7OqQHyBy20aLK9IBGzG0FhA1cLy5L7HzIK67A5XAxAsFwRmzrJFTmZw/+qxrZ9gQFMUSCQ3fkFjjmATx4EMXqvXcka8/xAusGepJ3NOBxFAK0d1wclifdmAZZIl+hk+Ur2WR5qhLgfV0mq0/FZDh+zalxzE+eaatVnPitlo7c1QdfhVhYrll/piHDTT+iitDfqyGlaoOPh4qiVB0IMrw4n3m4smKUX19Zi7bvy0S4uoKWSPywSs4WqSEkI0w4GAC8/XEjl8h3Nr4235o5oDvFaq9GUqt4UU7ELqfnwMYyXdGhHY0cr4b/xHMUOQYu+mVuj5rhZ6kWtBXLAa91XsX0F8hN8Shrr9ZvqVzdKYXGIhZyTDr+HZQ1hkTXMxH1G9wH4gitlIszbyT4+zBfRgX57528NdsPcvzV64nmb6MR+ac7q4r0q91XbYwUv2y1rbWz2c1AR7VOrFB/U1WTNRKQrNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(366004)(396003)(39860400002)(346002)(451199021)(83380400001)(31686004)(2616005)(36756003)(186003)(66476007)(41300700001)(5660300002)(66946007)(66556008)(8676002)(8936002)(6512007)(2906002)(26005)(82960400001)(53546011)(316002)(86362001)(6506007)(478600001)(31696002)(6486002)(6666004)(38100700002)(4744005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2F6UGpIc2lpaXdpMFZ3WU5xdStXb1FvMU1aejh5TFU0VzFPV1Bob3ZzKzcw?=
 =?utf-8?B?WkNSd0lkZGliM1dYdjJQV2dYaGE3Rmw3L2t4UC9rZElDeUJDNnlrMzZ4Qjdq?=
 =?utf-8?B?Ymt1REIwY3ZYcHovVkM0NGNqV1BnazEzWlhzT2Z5bXdBc0xvTFBzVk9pUVVn?=
 =?utf-8?B?NEpRT0pDT3M4NHdhU1V5WWVBTzJOUkRMQUwzdW42RWplQ2FYWU5XN0cwd0RS?=
 =?utf-8?B?elhMVjRVcG1iaGlESkFIOVpWb1NwSEpjVWRUZHNOeXpqcDZsNzVJMEllZHZD?=
 =?utf-8?B?Y3FYUHJWRnl4VEZjSzFMSzFmRTZRYWFkWjU3Q3JDTE44VXA2UzNCUWs3WEVK?=
 =?utf-8?B?OWdWb20vY2JzWXBHMEY5OUVQMW8xMEg1RUdKM1V0TEt1Rnp1c0szcllRVDNC?=
 =?utf-8?B?ODJuWXhXbm03aEhPb2VPYW41eWU4OUQvNUtxeHN3SFArSjd4aXV5Z2RiaGR4?=
 =?utf-8?B?SEFtKzF6OU1iTVhVRGQwa1B3enRMdmJJOEx5SFB4S0hWcVNhdVJDQ285Y1lj?=
 =?utf-8?B?cTlTVkUyOGdtQkhKTEI4dmtpeFI3VVNqK3dTMTdZMGtGbnQvS2I2eVFaKzcy?=
 =?utf-8?B?aG1aNHJPUEd0dDlmeGF0dmJUR2NOSHd1RkNVYWEwb3JpS0JKRWI1WHRzNzNO?=
 =?utf-8?B?MGZxbTIvaFZyclhKemhrK21xSWU2NTJiRHBQNllDMTNnKzNZcmdmV0MzSGhp?=
 =?utf-8?B?cGtIWEdqVExudUxLV0lTZ0IvaWVRdlp6UnM2b0FHbHBWQjRtbTJwdGxTV2FE?=
 =?utf-8?B?ZzNmMFg3bkRBa0Fhc2hrT0ROaHRkU0JhMjUwOWtMNWUyUlRNRWZob1F2cmZi?=
 =?utf-8?B?cDZqUS9TcEV5N3JaWDhyNHdVWUVYaUczVHFiV3hOOTFYaWJCV0gzN2VudFVX?=
 =?utf-8?B?aGwxMEpqSm9BVENjeTJ3NzdQR2o1d3BUVU52NVk5TUFCMzdZM0ZxZWthQTJ0?=
 =?utf-8?B?TjdyM2hqMUs5NS9iYzNtMVRTQXdLNHhUTFBLdnhEMzN0VmFiMlQzeVlFUmQ4?=
 =?utf-8?B?SDYwTE5rZFNteVNsVEdpWXZMbWsrcCtnTXZiT3JUZTZ3RHRDMHhpUkY2Y1Fv?=
 =?utf-8?B?dERBbWJmSXF2VkQ5eGNwSHFpZ3JVdlE0ZnlPOWtWaHhJenRWM1RYZWt4TWNs?=
 =?utf-8?B?QnZMdVNZNC9WOFlnU2dGaERlcnVXdW9wekxZMUlQL0ZwQmdrV05lbmMyWHdG?=
 =?utf-8?B?M2VsQVpCejh3OTRYVmpKV3BaOW9BRHZYZ0ZQejB0eGZYczBVNXdxcmRiNXdW?=
 =?utf-8?B?NWpMUC9XTUJna2JCQ1dJaUdGMER6S1ozS3NJeU5JNVlqOGVXdXN3b2VWdnFH?=
 =?utf-8?B?SlRnakdVOVN0S3lqUGp1dENmUEZCNDdFZVFnZEtwU2YrT1ExaHNGekhyb1JI?=
 =?utf-8?B?T2p3VzYyT3p2T1lxSTZzZWxaYllKZTN6NkhIOStESzZTY2czUVBMbldUa2wy?=
 =?utf-8?B?VHpWbUlqY3Z3Mk41bUxEZnN2SGw1QVNHQlBsY2VzN1BBejRFSTByc1E4ZnRt?=
 =?utf-8?B?QTZpSTh1aEsvVG5mZjNGd3dSakxING9GRklXL3RIbXN3TXRYdi9DSEVXYmVT?=
 =?utf-8?B?M04xalM2YVphMklVb0E3UHFmbGVJN0xCTHlZRWkwc0drcWNROVJ0RjdMenpu?=
 =?utf-8?B?VWhxQnlIMjFCd256bHZLMmRPUVkvYU0zWFQvcWhaK2t2aHpMZVllbTlUUlhL?=
 =?utf-8?B?d1l6dW1vUnRPR1B0Z3BwTkk4NmZCM2Q1REVYMTVSYmdBd0hnbjM5em45MVRz?=
 =?utf-8?B?bkJlMXpsSy8zaGNMdmRwWWxmQkszNGp1Zm84WXJ6VmNFTnMyckdaWER3NXFY?=
 =?utf-8?B?b2EyZTB3aldsQnF3RDFuNmdOemdNWlUwT1JwWklIUU41VlMwMnUwMFZnenZ3?=
 =?utf-8?B?ZGgyckdhVDF2bDdnYVNsQm1iVS9Lcm1TeFQ1VWtFUk14MXdiUnk1YnFBRDdK?=
 =?utf-8?B?bGUzVm5QYVVORUVvQ1ltaDhOMVNDckxKWXQvT3Jnc1pxOUFZbzFlU2JId25s?=
 =?utf-8?B?TWltbnlUOXBqM3RwQk5hcXJzclVEcWVPdnNZREFwQzYzWkQxaVFEVmZJM3pw?=
 =?utf-8?B?aXJURXJ3emNXUGNrK0lOb281NWJ1NVBqak42R1VSSE50dE03UUU0NWhNN1JX?=
 =?utf-8?B?SWVQcTR0Y2pwSG1lYlNkaDBEOUVYTHRvT3F1Yy9nYTM4UktDNEtKb0hPSzEz?=
 =?utf-8?B?Y3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbac49b6-146c-4eca-b275-08db531158b3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 17:50:17.3982 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kug/3ir62TBYsrLiS/FEqMya48MCZ4QWJ0HfS76mg8otaGUh5yQG4toFgxIYVfsAMGzunuN7TTIT8wJqRvTIxHGWVedaQ0H5E34MZ8JY4jg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4973
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683913821; x=1715449821;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=s6XQuqwm9RLEp01/cNtgGKLGko97LrlnX3yH2zcwyDQ=;
 b=hE//5RvGvQvNRYZS0tv+k5eImY0SmJ4wJrUQQ8xLmSQNrfuMPX9e8xA/
 XZAmqL+xOdFZsAILz0Cn24TAnB5f9CzjRpMXQYvfFy82K15mXO00j2NA1
 T/5f3xQDYljkIyZY1UkRTTBV+j7+6cGcfCgtdlTAh3nok5y243wPPb5AR
 AegYWgd8kDPyHMZfgOGDj/G6gEGandvRF4S567YgSFd0RI9+sJKNBit30
 xE1/CbtRTBje94FIPGeg+D4t+2QhfTBcKitgNdxSWrlRpIHN7jbnRmR1z
 2WuC80a2IEetAMtDnHrulrd8p6XMx55YyhOILEyE/E2Q2Q3d0HEkfoUSf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hE//5RvG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v6 0/4] iavf: fix reset task
 deadlock
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/11/2023 2:56 AM, Kamil Maziarz wrote:
> Changing the way we handle resets so that the callback operating under the RTNL lock will wait for the reset to
> finish, the rtnl_lock sensitive functions in reset flow will schedule the netdev update for later.
> This will eliminate circular dependency with the critical lock.

These patches don't apply to net-queue. Please update and re-send.

> Marcin Szycik (4):
>    iavf: Wait for reset in callbacks which trigger it
>    iavf: Don't lock rtnl_lock twice in reset
>    Revert "iavf: Detach device during reset task"
>    Revert "iavf: Do not restart Tx queues after reset task failure"
> 
>   drivers/net/ethernet/intel/iavf/iavf.h        |   3 +
>   .../net/ethernet/intel/iavf/iavf_ethtool.c    |  31 +++--
>   drivers/net/ethernet/intel/iavf/iavf_main.c   | 118 +++++++++++++-----
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   |   1 +
>   4 files changed, 105 insertions(+), 48 deletions(-)
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
