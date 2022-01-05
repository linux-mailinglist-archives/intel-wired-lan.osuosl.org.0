Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E8F485900
	for <lists+intel-wired-lan@lfdr.de>; Wed,  5 Jan 2022 20:15:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6410429B0;
	Wed,  5 Jan 2022 19:15:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T6_4u-ThmkRZ; Wed,  5 Jan 2022 19:15:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBBBB428B7;
	Wed,  5 Jan 2022 19:15:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 518F91BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C10F6FC2B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id riLRzSvmo6Dh for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Jan 2022 19:15:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 362E26FBEB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Jan 2022 19:15:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641410151; x=1672946151;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hJ5N1YDm4f/xfbt8EYJe2AIXku5FCY7RR0MtP2DixQw=;
 b=eBaUsEeKD7BYPYSdpdV+HdpzJbqEs7lEHUF8wQZNuFDfQXkWfB8xxni8
 uoXxHWzeCbMVqEnZMrXxOrtn8u8f6/IXAJxZDLqMO/b4lkmmRbbmcIehk
 NJ6DhQ0Ia67gN65ijeBMONxrCchDG9OmyUUG6NzUVL+FMelzYeK/OAcs3
 EG9frv/S/QkYPcsePfogTuGEVLgxPDSFeL/ZDk/mjICvEUfLNNFJ8AxlX
 A75PMr3gQaRqpiEbaoHBq+xuYixkjg4XIJCiJezWBItY8f1+UsVIA8qZk
 YpLVJi3dfMGryc2Eu/cy8ixfOF4l/moteIM03ndCxB0mxTxXziLP11gDv w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223202532"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="223202532"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 11:15:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="470681430"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 05 Jan 2022 11:15:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 5 Jan 2022 11:15:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 5 Jan 2022 11:15:49 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 5 Jan 2022 11:15:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSB0YPjP8KUQikaM0Ir3NVAX6KytyWVUpp1JbjVvqmfiiBS0ZkTKFZNAheh8jN/9NXp1guNpyWCpKWcJndWTALPu3dP5DViaWVpmTdKg+IKYThcGIzzEZF7g0E7W0B1R79Bos+la/CcafQo8Q4Diuzr7wItOCkGh/kXZ49+u2HhJc+U8usL7pVJvJa7M+sGCK2cEnHr0TW472Ku+ff87d52F45yDcuRBZxrFWB/CPcX0fxyo57iWJW3XyeBBtXiMoN5hRzcd0UeWv1ZDH4lphH4Ks2kaUuwbCUYxvggBSVT5ApQWGGG10AzWifNYGyt27tFawQuO396lN/U+J6cQVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UzVCtauhKdeBrhPyxDDgwSXIBT66WfzUPpisvbbPAx0=;
 b=ciEE+rc4DNptOV43cmtvzwn5rXosxaBEufs05GKjxLc9kwZzSxV8sb0fEejpg3O36nRWpr8MX1kXsOeg4zMSFq+n5ilR+6HJrVopGBSJDjT9l4z/dq7TjDHRl7hP6KP1ym7363m+TzWwgkImCwUbVArW39FZhQMePr52CjBuxiVVpY2zfv2IkN/VOtjnCReCldS6Td5s/YNu9Ow9+aLzuPao0cW/DhEtkY5OFwZ9iH9BIv76bdL1URmErTvhhTMztdJUVbZC3vZcG5DETRekxhi4saaem1LNEyyS2YDACRgvURIj1rK363ZFefGJyAHmASdjAiCOjO7ZnaqTy8g3sQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR1101MB2319.namprd11.prod.outlook.com (2603:10b6:301:52::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.15; Wed, 5 Jan
 2022 19:15:48 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::b0d7:d746:481b:103a%9]) with mapi id 15.20.4844.016; Wed, 5 Jan 2022
 19:15:48 +0000
Message-ID: <3b256624-b68f-3105-ca7a-7a8a2e95e0dc@intel.com>
Date: Wed, 5 Jan 2022 11:15:45 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.0
Content-Language: en-US
To: Joe Damato <jdamato@fastly.com>, <intel-wired-lan@lists.osuosl.org>
References: <1641397753-121138-1-git-send-email-jdamato@fastly.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <1641397753-121138-1-git-send-email-jdamato@fastly.com>
X-ClientProxiedBy: MW4PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:303:b9::28) To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 80b576c7-760b-4116-7ffb-08d9d07fc7c7
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2319:EE_
X-Microsoft-Antispam-PRVS: <MWHPR1101MB2319369C654249C086422D61974B9@MWHPR1101MB2319.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:221;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XdTfduOVOjYvGFYboiw6nKmVV835qw0fZuSZ+BcD6A/hol7ZvW5PdhOt3vPtW9BPXLALqD4fNFh2RtK0YrRzwShD/RGu40YivCx1TBYd3OwgGB7eehVdh/vLxWKgrmLlVWHXR4nT/UszOb/GCQ+4iNfwXKb7y2A8Mqxz6aUQ0Uj+EboojNKoXjF6lb3kYIr25cXb0Z1WfzA5yDwyM7CQD3Z1+8CKPMzxTmv9oj2jnalMZ3amBwrB+56nOPcf7ZCxRSZ4sIN4QOK182NqQxDYvAzsU4MOxS0TP1FrZAVTqI96ZmowdZEC+kIGuRJNEKlfRNHeyUkYD/bcsgIxw00hbgGG05NwonEL2I1qXyFgdFofPgem7yL0mMUhNeidXsxgYFHZld3bplSgu18Edl79YniEj34iFAZEINi+sc86p2pvjvgl8VFef0VCvgwUj0qFkxckHMb3LaxnlQSEzGp07Z+YfAlX2UBTuxBENDmaJ9tleNKSLYo3+iPYdEnRa2NV6oCUTDBEctDd23b0VImeqo7MulrKEmMHsbt0I0B1Rccq5p3xwZMgH6R3nV9eFW6QKyVDCLW/lM/NZjX/55eiSe+lnbXMpdDLfrZU4SJdWZHCVvG9MRLQFrZ6TgPcSUlb/H8WoKsBR8efc3hWVaOC3davh2S4X54POclYNXCTOmrki30MHYYvWKiZVIi9ugI4jstbLLQk6PcliBbCxpbys3ydCui0EuQtaaa2YclSqa8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(6486002)(38100700002)(186003)(36756003)(107886003)(66556008)(44832011)(66946007)(26005)(6506007)(6512007)(8936002)(2616005)(8676002)(4326008)(2906002)(6666004)(31696002)(82960400001)(508600001)(83380400001)(66476007)(31686004)(5660300002)(86362001)(4744005)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0lOV2VUN0FZYUZrVm94QVlGNkYyTml6S1BoaGRYNi9Sa3ljNkZveXhLSEQ0?=
 =?utf-8?B?d1lKeDk2UlVEQzJNQzdaMXVuc01rb29iOGIrWUlQSXBKcUtyZGZFUDdyeEFt?=
 =?utf-8?B?dmlQdTVaYk15NHFwSk1OaWJWdGJVUURxWjVldHFyRnhRMGlidCtNTnlyankx?=
 =?utf-8?B?TkRLLzF3YUI5TndZdXRhMFhtbUdZQXRPYjZkUG1TczlVcnJwYWUydTVRbFV0?=
 =?utf-8?B?STlwYUpzUDFEb1kyeXhnTG40dUtnMGxiUHVGc00xOG9RMVhPRTIxUkFUTXNJ?=
 =?utf-8?B?Y3hSd2xBK1Jwdmg2T084b09lamhJVk9RRlFMcEVjNVRVaGZMaTllTUdacWxx?=
 =?utf-8?B?RVFld1hnYmhSYlkzelpYbXNEdnB0Y3hEQlNhOC9XMzEzZkNRYnoxS21WTWY1?=
 =?utf-8?B?emNra2dlRUg5dzZkbE1kNTFkZzVOZjQ3TDY5ZnYxWWgzdVNXZ2RtK2hCeXEx?=
 =?utf-8?B?cDdJQVRKdXpXSGRGcFdENFczTnBMTmFDdjhERlRjRjdJMWh0UWVSSlVUV202?=
 =?utf-8?B?R1BMTk5qRXJoSW9rL0g4SmF2TzFOMkczRTdVMU4xZUloNVdSSTJMQmZmVXNm?=
 =?utf-8?B?NFlSUzcrQ2tpci94WDZ0eDNaQnk5cGZYcUQxSnFtZklZUHJJakFXa1UrcGNw?=
 =?utf-8?B?alBnVFlFRGZzU2ZwU2g4RGdSbTRkcThvWnY5Mk55b1NaT3JSVmErbDVrRWMy?=
 =?utf-8?B?ODg1REtWZGFFRVRpNkEyQnVGblExa3VlMTRXOTM3SjdTdzllR1ptcTJ0NnhP?=
 =?utf-8?B?cTVxVzRYUjM2MnFyc2ZWbGlvZE1OVEd4bDJlWXBhci9XbGZhK2swVWNaUlhC?=
 =?utf-8?B?YUl3YWxRV1NEUE1iKzBqNWV3YXBVSGdwV21EV3JsSjBCbDYzODlBSTVOS3VW?=
 =?utf-8?B?SUxQdklDeHlRNVl0Mi91M1o2YkVFNGxyekpTSkUxaXppNVRWT3M0TnZGUWl4?=
 =?utf-8?B?dkpCdnZsN1pBakVyRXR4aGx0ZGZPbVc2TzdwdXdyS3BBYzdMYVdTS3dWL0Ur?=
 =?utf-8?B?YkxnRWMrdnpWWDVrMFVJTmNMMzhxaFZqbWN6NVFhZVFDOEw3SlQyOVM5SE4y?=
 =?utf-8?B?REt3WHBlbUFiWTJKMm1HMHRaMnN5cUtDVnBTMFF2T2hoSHFpa04wcW1BRk0x?=
 =?utf-8?B?MmxiejFHdnJpcTZwRFZ5cFVQdU1ZeUM1YWlYZlArRzN5amtvc3NreitDdldQ?=
 =?utf-8?B?RnZmY1VRR250TEhOUHFPZTNLSDhjeUk5ZDBUUENuSVdaV3ZKWkN6aGp2ZjVB?=
 =?utf-8?B?TjcrQ1orTFdPeEM0WG9OWS9HRk5HTEJNVFV0ZHBSaWp4cXh1REllV0EvdjFK?=
 =?utf-8?B?S2RSQTVGRmNYeWIybVYra1M4N24vd3MxL210Qk9YME0veThrQi8vU3lVUDhJ?=
 =?utf-8?B?N1NNK2Q3aUVXT1FhdDd5VnlZY0haTW90SFd1U3RJL0VubjhuNlQyenNwdnEw?=
 =?utf-8?B?QlhZdllEN0YxY1ZSZ0RFT055OWdHTnRNTDN5LzZTN3VqYTE3dUFjWXUwekxE?=
 =?utf-8?B?dDlVQndRamhHQU50UUdIVjY5WWV0Y3ZyTlBYbU95dnl3dktmSU5jc3d6Y29w?=
 =?utf-8?B?eXNuSHNkQndqSmNleGdYb1Y2UE13bjhUbXpXdmVhWk5KWGJ4UlVGdzkwZFJ2?=
 =?utf-8?B?MVh6MGI4YzJwZFI2TEg2ZyswbGY2REZzYVVqVjE1TE1CUjZEdmZDNkRXS3Mz?=
 =?utf-8?B?WFNlZnkrbnVJcktPQUM3VGU0bWxiQVFKL3NNeitNSlo5TFBqVGNFbU0wczE5?=
 =?utf-8?B?SURlWGFJZmgvRzM3U3ZpcmZ3UUUxdVlqalBRcnVpVlhHck1yNEo1anV5NG1j?=
 =?utf-8?B?OTlPUWs3aFhMWSs1WkEybzNhTWRGSG5uMFBELzhPRjYxd2d2K0JPenkxaEZG?=
 =?utf-8?B?MzlQZVdXVEczamcydnRVYmwwMzEwUlhqMDRMRWkvM0pZTWU2VmI3MDRSamY5?=
 =?utf-8?B?L1A2TFpZM3N5LzA1a1pzYU5OY2VRMUI1NmR1OVZMUDRkNFBEV1RYZDZjMVdF?=
 =?utf-8?B?QTg4K2VoS1c4U2lUTjJ1ZnhNT0wwdFFxKzJWOWJiVVJNQ1ArMXdOc0ZJM25p?=
 =?utf-8?B?T0RralBxZ0cyMGNRU0dKZTZZWlc3NnRoNEZFMW9xT1pLT3VQbkRzV0MwWC9u?=
 =?utf-8?B?NmtWczZ3eThMZlUyMmxTUndMd3VnWEtyV05Nb2l2WHkwRTVWZ0tsckpkb25p?=
 =?utf-8?B?TVFsWm5YenJNT0VLR2prVWFYbm5ZZ0Jwa1Q0N1lLbUpFb2NORVV6c3VhOWox?=
 =?utf-8?B?T0RvUUNaR2FtU3d4ck5Pcjl6MFJRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80b576c7-760b-4116-7ffb-08d9d07fc7c7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2022 19:15:48.2871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2A/l5+GrlhfwnfX3YFyIXRM1RQblJGyHFy/2G6e0ex+uCfqOtPG9wWmmTYoUM2SDMSAUVY/wgLSb6LtW+8MPABcuerGc8WuHZKwydbnJsfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2319
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [next-queue,
 v2] i40e: Remove unused RX realloc stat
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

On 1/5/2022 7:49 AM, Joe Damato wrote:
> After commit 1a557afc4dd5 ("i40e: Refactor receive routine"),
> rx_stats.realloc_count is no longer being incremented, so remove it.
> 
> The debugfs string was left, but hardcoded to 0. This is intended to
> prevent breaking any existing code / scripts that are parsing debugfs
> for i40e.
> 
> Fixes: 1a557afc4dd5 ("i40e: Refactor receive routine")
> Signed-off-by: Joe Damato <jdamato@fastly.com>
> 
> ---
> v1 -> v2: Fix commit message to include one-line SHA summary. Patch is now
>            based on next-queue.

Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
