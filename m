Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2BD5A56C4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Aug 2022 00:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 255F781282;
	Mon, 29 Aug 2022 22:08:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 255F781282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1661810881;
	bh=Bko3Q2qHBcyiBhOeNM7cfjUUimh/cKoz9dvueSDCfM4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JwiM5p5he6dtLFZRAFoVzv4DQAicHS7RqeMcJrJLxVUyoYD5IN4HT4HVIPt5jV7wJ
	 yLAaxELOTnDE+egYjTJ5Wfx+/YN0H+qJ6ZjEUqxzw8PXCZNoGDKGwiPu9RTVVyeIv/
	 wYHNqJstKL64aAX9hddjCblyaxY75VhyxB+xKDYfmRn7wQzVSKiSqWEdul2tmCvkn8
	 IKaQTOia9/BsHTHrrfcGk45qqnZp+S8kMIlbAg1E7D+zlyD1nu9YUyE6jr24VDJqfQ
	 x9IUR8EVkVv/MNvaC3QDoIkyL9fYOusnUS9qnweGiEkfmW0UhmL6lfmZKLPTD/U+RJ
	 gYZFFFsOjjo9w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jw4BWZhyfztY; Mon, 29 Aug 2022 22:08:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 078A38109A;
	Mon, 29 Aug 2022 22:07:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 078A38109A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D3EBB1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 22:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD8328109A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 22:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD8328109A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lqyYDEQdd5aX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Aug 2022 22:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEE2681076
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AEE2681076
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Aug 2022 22:07:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="295013789"
X-IronPort-AV: E=Sophos;i="5.93,273,1654585200"; d="scan'208";a="295013789"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 15:07:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,273,1654585200"; d="scan'208";a="641100746"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga008.jf.intel.com with ESMTP; 29 Aug 2022 15:07:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 15:07:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 15:07:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 29 Aug 2022 15:07:51 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 29 Aug 2022 15:07:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=flh9EGE4IXlnSNPeMclmEtEut5buK3tjhMubYwGZGWmpkT46cSWRmfxJQdW9t9fUk0588b15Dz8mOusW/2Oq+0s8uqDu39kPuyfzV0VhnuzkQsL9yh6w31vtdv9RntnOQtavyXPPaPMdkVEE6IM5ANnAUf+Ag3/sJ+rubzfmtNQKDiQt1l1qe/rUGahcRZmqnR8kLcVg9ar1ddPTsAouvBaNdmpiIfneVS36mPiDVLhsymdMjfqY2G2Lw8YXLfPQI0d79qYrryXqPbTJ39yD1dF0j3Jmw8S4CjJITCcrbnacWfnRSiFLdXqQ9rj0BSG38sNkOtwmVxwkxydMP3j+4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=co8s4184WlZQL9ePE316usV2bhKpsoMgOxpIjeLzMmI=;
 b=N6+forRxqAcpG0jUACzArkKDnwQAUavZ3xUGHOkwOgOQ9O3rU6HinYSPKn9xjRo5W1iwOuR437F7UsibKvYSJUlK50rTKUEwlmYTC8MTBssYFpMy/UmYr4fVfRfWv/jBBZYKlpJinypcOLtZ80QnHOuhZLyXa2nWsRtpTG70gJ6SW8cdFC+ZXlIss2arkv3a1XGY1feJWglrBcLFx4bUwaXFmn8jIZQjeFRTWrgE8cbkPJsFn9EWhC8ud2iVSTMRRt3ofcvULmpDo0d4gXnqTUCQ0Xj3BW76ZLYcRb2j0aJuURGCq5U1Tp7JobCOPXWtv6nIV+3u/2KD2stQM8HiVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by MWHPR11MB0062.namprd11.prod.outlook.com (2603:10b6:301:67::34)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.22; Mon, 29 Aug
 2022 22:07:45 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a422:5962:2b89:d7f5%7]) with mapi id 15.20.5566.021; Mon, 29 Aug 2022
 22:07:45 +0000
Message-ID: <a3668c54-b5fb-6bf5-28d3-12818d46153b@intel.com>
Date: Mon, 29 Aug 2022 15:07:42 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Li Zhong <floridsleeves@gmail.com>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <20220826065627.1615965-1-floridsleeves@gmail.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20220826065627.1615965-1-floridsleeves@gmail.com>
X-ClientProxiedBy: SJ0PR05CA0010.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::15) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 60131290-5a6c-4f55-980e-08da8a0ae695
X-MS-TrafficTypeDiagnostic: MWHPR11MB0062:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w5J5sx3MMf9CwucXxyhhYRzYz0x5sseQln5NW3wrVRn82/mtc1Uv0MlufE8EPtQuIPGEH5MaTGfRHxcO6EnTcwbfawalztyMSmZbG9WVpLBtrpUuNZ1nCPTKbl6YiEq/Z2aJfC3bVLT4TDJc55UZ6vuSKS6gfOpFejVB8wy6YLiO4HfQUnktPShimqqFZdp72x8wGCMV/qPdS2bhJcPbDNgGSfgZCnMDOZjls/SVQmkh0eHx8o6pLKgYwdo+Z717U/s94TjT+wRCsylfcjqHmFT2qHUC1uS+GLFyhR0iapGxbddeFpl/JSPbgG7+G6DXHuRxoQY4WdKwgfGpemVIbBpnzvYPKb5fK0w2aZhu6VizxI0HtSDM8JM8l6FAo7HPWCitAWUMB/9Nh5gi/aoLLlEFNnTKT6vQ5Mxt6CoxBS3XeSVGDp7XvafyDFjWIexxXngcnyDilUVhdRYwl+2CfvRHADH0IEV3auoWEC2V2GKdK4gZlxoeerCQCjHzMuWUPaeoUT7iErxVgVWdsovFDWpEwOn4MSHiau3M7wTuiw/Vcq2rQ7IlBnmQZu4Oa6xgtDkSl4fkjVzgJkfu/OroWkn36xSFvQZkiez8359dM2BvL3vfINKqkRv7yujy3Ct6/PE2Jy+K23YhNs1pnZvMDZyyaIOxC9+51Pip2WKPPTDwauZwdeCHPCoCJcLP5nNeaITjF9VyvidXMBN3nxpPo4qx61fAVvr8nUlUVly7BYkJhzhgR706JV2LnJFh5BaBhKwHZPDgI+Nm++hVOcIjCY+dEgSi/8vQd9MzNwVlduI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(376002)(366004)(346002)(136003)(31696002)(31686004)(82960400001)(86362001)(36756003)(38100700002)(83380400001)(2906002)(316002)(5660300002)(6666004)(26005)(6512007)(6506007)(53546011)(186003)(8936002)(4744005)(2616005)(41300700001)(478600001)(8676002)(6486002)(4326008)(66476007)(66556008)(66946007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzlCNy9IZUFVcFJreDFFMm03eU4zd2w3WHB0WTJXeFUyajBOaWhpRTZRQ2Ir?=
 =?utf-8?B?cUVVaHBkbnNEdVZ4YndjRndaNlV3Z2tuT09CT0xhcFJZTWN2ZW95QjAyWWtR?=
 =?utf-8?B?TTZ5VDc2Uy9JMVBaQWRzb3ltaVBod1hiNGd3MTYrb011eW51U09rQ01vd2lK?=
 =?utf-8?B?ZzlERXlCMnMwY1ZvTjhVejhRazU0L2xuUVJZVFpEaWpsbXM2OE9ic1BKZERG?=
 =?utf-8?B?bEc1WVVhb2hrWnpDQm9yQXVzdjV3TlNvRHhTRllseWpOdEl0ODRsRjVhRnZ2?=
 =?utf-8?B?UFoycFZZUGMzdXp5aFRpR3plcE5vZGs0TGpKbXZHNWxEWVRyT093OHlzZEpB?=
 =?utf-8?B?bTZnSXpNd1IvUmZyZXFSRnFlMTlOMzR1bnJjZUJqL1JVcHdDTFREbnQ4Wmxi?=
 =?utf-8?B?dkxTVysvS2czUDFLaVlpVk9qOWdOY1FVeHVxZnZOdnBJVk5YenJwQitHeVls?=
 =?utf-8?B?QXhOZFRrUG9IWGY5bktjKzgycXE0ZEVpK3FNNnJpQWVQUndXUDNpZ3BmRW9E?=
 =?utf-8?B?cEdEVFpadVZCQnNhRlRoQXA0c0xRa1pFYlEzZmdkeVUveHFXSVdMZ2RQWVF5?=
 =?utf-8?B?ZFBGMXAzekNOUTFFR0QyRURCSjhjOTVQRTVCK3lqSXQvM2hwS2lpSVUzcW9v?=
 =?utf-8?B?NVYrTFhOYVl2MkszM09LT2Y4Uk4yVXNNNXliWk5lWGpKemd1emJMTEdjZnVS?=
 =?utf-8?B?RWZyZGlFUkFnMUF1OS9LWHJnRFVramc0QWRmNXJ2MWFaZjN1Rm9iUkNJUytR?=
 =?utf-8?B?QWR3Rm1JOE9xTlBpMjlPSFZIYzBDNCtEWkUySHZQb0NFSWVOMTE0R3UyeE5o?=
 =?utf-8?B?U3d6eTJWY2xpTERxc3dmR0t0WlJiWUpVOFp6bUYzZWdIZDF4R0tibHgwUDRi?=
 =?utf-8?B?YU1DNytJSCtmYm5LVml4NlZidnZGUi9NdzhPNXh5dzkwSXZMTHRXQ2dhTWRK?=
 =?utf-8?B?Tk1abkg0MEpZQnA5RjVnLyttWWNlalgxRUZBNmxnVjFWTzRHazI5ZWJFbnZL?=
 =?utf-8?B?NlBwOWhyM0QwdW9yakVuajhjVmhZUWV1bUI4RStLS3grT3UyMzBYdlBwcVg4?=
 =?utf-8?B?bzI4NnIxc0NvVWxKMVdOR2FUWUdhK0g5SlhoUHJrY0hqdFkyUWFJbUJoTTRH?=
 =?utf-8?B?eGtvMUhaVmZuVUhZWmh0akE4dyt2V01GcFk4bnlVTXkrM1c0YXFGM3BNdi9h?=
 =?utf-8?B?dXN6czN0QWphL0xubFBmUHNZcFRXL21MOSt3THZDMmdYdnc3dmFGTXZ3bE15?=
 =?utf-8?B?RzhxTTVwNDg4WlluWWQwbWQ0VHlNZmc3WkxseDBHT1V4cWo5ZDVxSVY3VkNw?=
 =?utf-8?B?b2kzTmY4SVYzRS8yL3J3a2hHYlpHa2Z0c3cxdGtjL3d3ZzhRZCtuVmprZ3NS?=
 =?utf-8?B?WnFadUgxcXU3MXVNdjBIZThaMERuTVJIT0JkSENRU2d4YXl1TEcxZlZoZGw3?=
 =?utf-8?B?RStYb0d6YXBUVWRrVWZBN0NUNHliYVM5ckNYT1ZrV0owSnI4MUhzTG9NTFBo?=
 =?utf-8?B?bVBSdEZKUXNBMUhzZWxEa3ZQR21RbmNUQ0VPSXNvbVpPVGk3NytkYXJEWHlC?=
 =?utf-8?B?ek9CTHNDQ3hySzBtOFFWUG5vMnZwQWpRbmE2SkVlWFF5dHdhNjhOejdpNkxG?=
 =?utf-8?B?b0owZGtWaXFTMXk4V1JDN2VWZW5xQW9OZksyVUtPNEQxaWJNSEJyUE9pV0I5?=
 =?utf-8?B?YUZ3eVBUNng2SW1adEZWa2RsNlorb3p6a3RUa0UvMHIra0F5QUNORGpicTFv?=
 =?utf-8?B?MkIwTmFsYnhxV21EUERxcVBvQTM0MnlUcEdmaVJka1NtR09CTW5uY25qekJM?=
 =?utf-8?B?WlJQekJmY1crNUkxUDJhRGtvWXVCT3VzQ0JxbEFBcWpiZzZBMnY2UkI4RTZK?=
 =?utf-8?B?NVN1TWFCanFZU1hzdXJWYUFJQ0xnbWsrdkZZNkFsMU5yaVRUbis4UkF2Q2R2?=
 =?utf-8?B?YmRPSUI4YjM1N3FZZkxTUXZicnNXeDNTWHBFWGhZMkR2OXNjcVYvamdiSGZj?=
 =?utf-8?B?ejlpVEhTR1BCeFFoTlMvL2FTaTJoNElSUUdmZlQrcHNwNjFEdENBU3hpTnlx?=
 =?utf-8?B?R2lzWmdObFR0WitkeC91Y0xwRTJicmcranBPam5GQVRvQytNeHRlSk1IMHFa?=
 =?utf-8?B?NGJRK3JpRDlIbm13ZVMxR0J5NjQvQnErUHBZaEtudjdISEpwMC9MQmtnN3Zq?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 60131290-5a6c-4f55-980e-08da8a0ae695
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2022 22:07:45.1559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mT/mjjRZ6xQivOtQaLcwZqPhYVNVXkQ5bjmxF14qgeWqT3nwkjphVXtooEAcSC6/fYrLoPdDGzt0zR6ik7pb22SWhBoZ8TCZo9O9p68d/Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0062
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661810873; x=1693346873;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sKseJ//O7h7EGJMD4EfZY59QF/D8EUx3d+Va4gk7wY0=;
 b=dbsX3vnxFWOFcG3zV82uj351K8Y82TXNMAmde9iOIe2ZcUP6j9+VGowY
 9S0MI7NQUt6LKZTNKtebCO9MIg0AsWpg8bkqMSCEwbyn6LQEq3EFzSy2g
 +iBR+yRW6QE9vgKaGS0RkHu6gZEXVvFbOxdWtrppT0/us1AMiPwROszHG
 ZltKSrhWv7y/tK66orxu/DO7uyS0R/UFOF9p6vPNEVYJ7QpIoUor3+kBb
 YUjy3kdiNh3kIgpZRMuxAbrNRr/IWQXQIDtKHSlzy3kiV6rVvKHBReXtc
 Q7HlfZgD5ULNrydj2ZP4Rt3WCPCLUc0OFC78kkzR5lOONQHiEbntagBRz
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dbsX3vnx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] drivers/net/ethernet:
 check return value of e1e_rphy()
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
Cc: kuba@kernel.org, edumazet@google.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/25/2022 11:56 PM, Li Zhong wrote:

nit: Could you mention the driver name in the commit title

e.g.
e1000e: check return value of e1e_rphy()

Thanks,
Tony

> e1e_rphy() could return error value, which needs to be checked and
> reported for debugging and diagnose.
> 
> Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> ---
>   drivers/net/ethernet/intel/e1000e/phy.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
