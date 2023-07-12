Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D02397511E3
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 22:39:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8B4641F8C;
	Wed, 12 Jul 2023 20:39:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8B4641F8C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689194375;
	bh=O/Qq448O7XfK4UjEFrDq9kNa0qn02YfWaJ8aOKavKjU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=D4RroBTRUyEma1D5gwYdi5Sd7xp3Scl8MR6smffKNWX0mGLtxjZtJVGYQOngoDlE6
	 svHlzGGu3LLYSQE30tqehlBUK7hhYAW/A44H3JowqztaBYlGK0Cy4pFdxvln+59im9
	 fWITwfSbHA//Cbn4a98J/12LG95oJGn6IIt1cOq+GXcwjo1mKarAVV6HAeuXQhOQZr
	 2I+AF9NP2/9qRAHrybf8KtJD4fi99fYCoO9N22eBXFuukF+sXfWM1RVu4s0RltHGtv
	 Hy5braMkOd1VwFtv3CsQCODtwgoxtsfM5x25Lf3eIPWEwIDDaDLaHLg38T2HN7t6ox
	 pq2LikpBYev7Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yIUW75vrF4cG; Wed, 12 Jul 2023 20:39:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6453A41F14;
	Wed, 12 Jul 2023 20:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6453A41F14
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CFE251BF400
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jul 2023 20:39:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A7134400FC
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jul 2023 20:39:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7134400FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XKKOsp92uHcj for <intel-wired-lan@osuosl.org>;
 Wed, 12 Jul 2023 20:39:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C05A400AB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3C05A400AB
 for <intel-wired-lan@osuosl.org>; Wed, 12 Jul 2023 20:39:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="349856191"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="349856191"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 13:39:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="845778825"
X-IronPort-AV: E=Sophos;i="6.01,200,1684825200"; d="scan'208";a="845778825"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 12 Jul 2023 13:39:22 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 13:39:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 13:39:21 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 13:39:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kquBWN3OMzi/kdKexLQOK6wV5VADpGlUFqBUbuxrhS73o03rKbqRIXTf67ZkgFtCe4JUgDe/OsKMbWINPR8RC32czOcfh8GXfhtD+vRXw1HKMh8DsaKUBq5y+h0delwi/7ek3FD1EqNwmR2ZUULPFUO6UYvUdr7pLOMA902Q9OOtJlQJ4T7KugxdOoqy4Av2diXOPMiIbqjNhzd222DlJmIeFG98Gh4HeJBnBy5zyA5WcCz6/dGtuouwDHigj3hpaFl9RagxrSDvCMGIfsTljU17B6anL6hw/aTW6jmBlHYNWHVslX4M06utn5EdJh72Sir0XntTfiFdnZEFYQmJbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C2o1up5B9htP+NooyfCMBsWMGjl/GNZzN/8qrJYAuFc=;
 b=XxIc+rv3F8e/KtANbkkseynAWdMTdSSU+D5Wdy066chW4+p8LoBFIiHSwH7dshdlX41PQk53+V+sCKUpYC8WjAyqSatDrz/8+dUZ85Ey+sFqqsKgr2XS1ZbAfuCkxBCGpGVWcG5HHKH5SxwZiO4i7S3qh70R9cXMfv0vh3BXGv8KPbvD3t6djecw0963M9Itf3rsZQrWvWrew4b9S3lHC7v7ql53ExYhWmF2QK+E/otEZa269gjDMS8IlSbAm2sUhs9vH9RLokRDe/oIhIEThBTMZ7hS5NvVroYbwx+slQ0fsrSNBpXESR9SZIzp6sN5jkV5XsC+VN0V/LnohFxn6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BL1PR11MB5511.namprd11.prod.outlook.com (2603:10b6:208:317::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 20:39:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::bd89:b8fc:2a2f:d617%4]) with mapi id 15.20.6565.028; Wed, 12 Jul 2023
 20:39:19 +0000
Message-ID: <40071625-9e78-7837-2ae4-df167932aaf4@intel.com>
Date: Wed, 12 Jul 2023 13:39:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20230711003453.9856-1-muhammad.husaini.zulkifli@intel.com>
 <20230711003453.9856-2-muhammad.husaini.zulkifli@intel.com>
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20230711003453.9856-2-muhammad.husaini.zulkifli@intel.com>
X-ClientProxiedBy: MW3PR05CA0019.namprd05.prod.outlook.com
 (2603:10b6:303:2b::24) To SN6PR11MB3229.namprd11.prod.outlook.com
 (2603:10b6:805:ba::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB3229:EE_|BL1PR11MB5511:EE_
X-MS-Office365-Filtering-Correlation-Id: c95bca85-4962-4caf-6db1-08db8318112f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ovWtirFWzuGFln/letO9OyYCIbNyPwfh0dr0GeeTiKo7ttHV/CZE7Jg6O/xy8rdT8xkyehM3zojQ75AlCkuVTLu0ZKzPcvH8oehnYrz4ftbEXhxZwassaMyrchSunrucgjkKuvNnEahU+ilsTZZzMJ1BArQv76hkw5x6yCtMGFYVRsttZbtfC8j2wWVsd+5SEErEBhgvu1sfacYt1x1Lh53m7UeT6VRp+hHQ54KVGl5HdZYCcE7sEpEElzsfM13ezOoyggtBJUrbt85jvpxko//dWTV3MtbED3brAKGIRNUm0c/aq7KZ4AErOmHYQaiKaTFYbEHxxJrYvW7dc34PPoOoBaWyXOMqXRMxBWzLl254+VAa5cbpDliw1ujU7giHfwOHPVJq20JH85JJDe5o0HtCrKutFLC8U7hJlqw0l1xP22sh9zxSIlEywCOUdvUeKscq2y9NbkOFS4GsHxzXH+Q4ZiKLB9rs4xrOAadZFQYwCseIhT8bScArKcCtLSWCrsA1wrAOtbvs5KOjlpBC6jpENl3kIrOkq/HY+DJKHixj8J+637penSGn1y1pirYYmHov6hmdkJXEtpMBJKJB0zZIeP3UI4f9OZAdFfnTVvJzDKk5PD0DB44ipMrNyu+La/my0YCp7Aialrb0w1nEQQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(136003)(376002)(366004)(451199021)(4326008)(66946007)(66556008)(66476007)(316002)(2906002)(4744005)(41300700001)(478600001)(8676002)(8936002)(31686004)(5660300002)(6666004)(6486002)(6512007)(53546011)(6506007)(186003)(36756003)(83380400001)(38100700002)(82960400001)(26005)(2616005)(86362001)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVUwdHJ4M2haNnVicXEyTEYwdGRrVFZzQmRON01DZXBQNlgyTUwvUklvOGJH?=
 =?utf-8?B?RjdkZHRYSzlsaCtFQXJ3eEVId2ZuWFFYTGhZbkYyUnd6eWtobzZILzJUaFM2?=
 =?utf-8?B?NHhVbjlRNlRLc3JnYTRHWEtTWDg5SytNOG1reWl0VnNLQ3dSV0ZJVUpYRmRq?=
 =?utf-8?B?cmYvb0VGZThsNVJEUFlUSG92dldLK0hHSXBTNzFGWVdDSklGMGFqOUNTczly?=
 =?utf-8?B?T1g5OGs3T1o5VUVlMitVY3grWDlvMTZGN2tiUVE0WFg3OERRZFlFcFpwUjlk?=
 =?utf-8?B?UDRHVGk3UEFUSFhoVU4vcUdjYzVxaHNyZGtEcElpMDNTN2xOMXNFUnpvZk9o?=
 =?utf-8?B?TWJ1QWR2Zm81czdKYkVhNnJBQnJPSG1oVkY3bFlHeHk0R3B0cGVoODRVSm1L?=
 =?utf-8?B?U2hheUpad2s1b2xMTzdteEh0ZnMyalN1THh6b3BaQ0phQ21kaE96OGJHNjVu?=
 =?utf-8?B?b0w1NUZ0UFRpOVEvbXg3QWttVnBXL0t3K1FjWUh1Z1NLNHBBYU1kaDlzNEZV?=
 =?utf-8?B?TXR3VTJjQVRyRWYvdVdYSUhUQW5qelJrV0VWdXJzTW9iTjlsY01JWmRWb3hV?=
 =?utf-8?B?WEUzc2F2cnFIcmV1dDlOTUFyWkl0dkp5ZGFtRmtCV2s0OTBVV3F0cHVaZ2cw?=
 =?utf-8?B?UTlFdTlDY1M3Sy83Q3JxV1poeXpTSnRtMWpVcFFISTExeUp1QWJJUUVOelBm?=
 =?utf-8?B?RDdMK1JzejBSUmpqY25YOEN2QjJiZ2U4VnBwa0dJYjloQlhYZ0MyMUtOOTZy?=
 =?utf-8?B?bi9VU3hWQS9iYkRrUWp0R1B3UFFzRUdhbUViVXFxdW91T3R4dGVraFMxOEl2?=
 =?utf-8?B?SE5zZ3hIVit6QStabEVFSkl2S1NuUzFoNEd5Y1hPTFlrNzBqK29CL2ZqbHBu?=
 =?utf-8?B?dkJYbEp2UE5NUjA1WnN5MzIySHlTUzB5WmdFa1hZOG9VbDNzVE95RUYrYmJo?=
 =?utf-8?B?cHpIbnhHeW1sQTVFc294WkYrN1U5NnZQc05WUzRNKzNISUUrZHJhOERISEpm?=
 =?utf-8?B?TmladWVacnVuQTZXRU1qL2xHVm5CTXIwYnlSZHo3NUJET25NSEVUYUx2ZUNW?=
 =?utf-8?B?UzlBT1NTU052K1hWaER5VlF4WTBPRkdZb3R6UW5kclNoSXJudEoxaDZlSWVk?=
 =?utf-8?B?TUZRKzhrcCtrMEJyUUVJdSsvLzR1V0VQaW1rUUNEQ1pGSFpOU25hZ2tXUWlS?=
 =?utf-8?B?WDNnM2Vpa2JoU21yRW1yNGxzM3lSYWF6T2F2RTI2c1JtK0pnSHh5Mmh3SGVK?=
 =?utf-8?B?eGdXeFNTcmZTaE0wb084em4yalVENkdXVnExeVV2VmVKUWlGUS83VmRFYzhF?=
 =?utf-8?B?NkdpaG44WUJ6a3lBc2ZvV0FhcHJlY2pTQkY4a1Z2dG9UWEh1d0FhZWpYVG9X?=
 =?utf-8?B?NVZYYUkxV05oTEEyZWFVaGtmY2NHZ0xmU2pINWtKcEVFb1dTcTBIMlBBVm4y?=
 =?utf-8?B?M2FPWEVHQWF2bmtEcWtrQm1XVlEwajFVbnpyRXAzWG1MMjFCbi9WYU9sQ2M2?=
 =?utf-8?B?TitLUWVyd0ZDcVlFNmRsbWpyQXdrRnA2aHZ3Z0ZObFVpTW5hcFRxOWVNNWhR?=
 =?utf-8?B?NEhNeUtpTitHMFk0Zi9icFY3d3M1eVhTdG1LaTkvcHJ0VWZTZkJkdFZFdE9Q?=
 =?utf-8?B?R3VVWXFnNENYSENuM2xzaWh3YXV1Vkk4OVhrd09YOVdTQWdnTlJzOExhTU5N?=
 =?utf-8?B?K1h4b21QVnZpcDdFam8yMk5nV1JhaEZLcS9xb3Vkak9xdFFxbHVQdGl1VEpH?=
 =?utf-8?B?bDJUTDhmWTlKbllubzhiRXhCYndBYWRYajIzbS91dndUSUVGM1NZalFETGZD?=
 =?utf-8?B?NnVuU2QzWkx3TE1JQlZtVGFYRlBZVlE2WkxqZWFYRnlTMzJuOWw1MzZXVXp4?=
 =?utf-8?B?c1A2WmZuRTBnVFIrNVNFQkY3WHI5aXVvZzNaQzR1RWJ0Ri9KeEI4Ym1HWW5o?=
 =?utf-8?B?WGs3bm8wc04xM01jeU5DNEE0ejJBTERxeFVTSytzTGNFSk9WTHNFNzMxSjF2?=
 =?utf-8?B?di9yVkJ1aXJzcHU4ZHFubjZwMXAreHJRT3h0Q2JsdTRZbi9UdXM2RlpHQlFn?=
 =?utf-8?B?RDBZbktLTmNwd2pVZXFXekpNdXpmbUhaMktCWU1YdjI1R085VG52M1E0VjRC?=
 =?utf-8?B?SzlJS2lCa1R6V0Y4QVFqcGhDY2pjSUcxeS9wSkduSkExUWlqa3VjQ1BtL282?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c95bca85-4962-4caf-6db1-08db8318112f
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 20:39:19.6294 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VJQfx1tVgToBq0vi/+fMB4hg5z6c7p8HxZRawGinkv8RLC89zPbqRzAoRtu2vXNc1tBIZULecoW0VK7xgUDXX5dK4CDeuzLaRZQjrnIS46U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5511
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689194367; x=1720730367;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ajfAFHCMAknm8XjvzMHUB/yQ0Ke6Hk1zp2+ulQuJJfY=;
 b=YUY04e7sm3iYUZiV+o9eyks6AUFk8SZcVVzqUKld1B4HxQ1qggZbGX2v
 7UDGo5NC7VioQ8PkQBA5FjnbF2jAmCs5AdbrKne5IQt1LQ8x07frQ1hYO
 Bgi6tzOMTeOK3IjXCcd6RgmYleI/6rCBbuq2OWAetz5ln/RBY4rdieyP7
 TCoNkNdtDNi6vNlJT5TxfsaIxJVOtLplIY3z39F59Tlc1YfZaxPFbMtqs
 wTlwwRgsr8NXgk4yWrEQjqQAisBqtRCgHLC7p0mhzx/d4VAv8G6g3BKPL
 VsTdftSNVmQOYITfL1f6BrnEEC4ma4s9GV0FrFaUgiqEgjuW47b9TNr8M
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YUY04e7s
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/2] igc: Expose tx-usecs
 coalesce setting to user
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

On 7/10/2023 5:34 PM, Muhammad Husaini Zulkifli wrote:

...

>   }
> @@ -910,9 +908,6 @@ static int igc_ethtool_set_coalesce(struct net_device *netdev,
>   	    ec->tx_coalesce_usecs == 2)
>   		return -EINVAL;
>   
> -	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec->tx_coalesce_usecs)
> -		return -EINVAL;
> -

Seems like this belongs in patch 2?

>   	/* If ITR is disabled, disable DMAC */
>   	if (ec->rx_coalesce_usecs == 0) {
>   		if (adapter->flags & IGC_FLAG_DMAC)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
