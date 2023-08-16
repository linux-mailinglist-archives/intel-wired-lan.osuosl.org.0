Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B72C77E78B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 19:28:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BC609408BC;
	Wed, 16 Aug 2023 17:28:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BC609408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692206880;
	bh=psPaygJ5NBmjSknZB2qZLdbDJ/MPlJ5qlAn6csjyJA0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=K2sjFmjOIKjFmHdARTxwsKAXDPqVT6AUm4Vwvi5HwOu8AKXKBl6nkxy1sammynCIN
	 2FreIzdgtG8tH4Hn2FEw8uOA2xzhKg6HZETRN2SBb7O3OZU1RtmHDaZ4sn/j2NBbKe
	 piWdBIuFgSLzN/ucXetBJlFeZ20V7fZFXBsyl03yXpG1zmFZvsaVLZZOtPoUZlI0Um
	 y+8exD7snRfCksH2NfA+lmavJ6yXE67GCttaCb4Lf0MPMhtMjWICudTcb3j3LRCkxa
	 ShNvbvKAIxRTry5ocq62NXRMdeSH+/nBGSqZQUxXbROkA9VeZWz56avnCiiuxm26Qf
	 TKFYTHWqL71DA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iypx_AMcneUq; Wed, 16 Aug 2023 17:27:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EBDDC4021C;
	Wed, 16 Aug 2023 17:27:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBDDC4021C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B75351BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:27:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C47B42050
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C47B42050
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 280gu-aMrHe3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 17:27:51 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2056.outbound.protection.outlook.com [40.107.244.56])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 27BA741F33
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 27BA741F33
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=By31x8Ogj8ukFd2U1YtIIKJ0fMTn/QcVK+bMiQtZel9O3ToJ8ALd6oOkdDMOvqYUxdENvvdbxOteM34Yb9SgZrasHj7c2mODLAiR7IixPo/h8AhiUS0x7pGc8+ft7zxgKNhbmxB5w9OW+OVUeTZeXu0Jvo+yrhZOl8MGr88b3Zprx8RAj+OtyYPHLLUy6QWX+pNQJPALKZLKOGUy9tbmKPtSGvrWAMEMEkSsGp9VRfTiymbn4jaZeR0p6kcitCJdz+bowt9UTST6GFqgj+WTLMGDF/RWOjQvGp+WmzaTC7rHF10trVe28MbZKXostCTKK1KSjueeFwwrRnymsfGoNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xYp3JRqHDbwm81Lr0iC19cUMBXNnJ+8k6TKMnOzmaf8=;
 b=jPdzqpWLyqfCsoZUmhWV0vq5hVHrY3N/K2Gp7tQKgKPp5uGrRxa70D9P9fN1Ib4jnhOnh+bMDYavmiw1qa2yflENEoRO+3rzsTcKYyg9C4rnYPVITdmDxbLK0MFBka3i3mveDmgJGi1Z/qKuTio4iN0ZZS/We0j4QDPq7wWxmIm3NLUJDWdDIUce48LJxrIm2bCXbta7z2J2G1Prar6NL5mRcZCyeQCu5SDnzM0STy2XO3tFIKwlRvsfb9Dt7Bc8IgJ9u/ah8gCn3pfhLybp0KaTL3W1hwaXI9/A4KI8bXbSXg82klRsiOBHJuWWlG1uqTdXjmkecW+ST9A0xldp9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH0PR12MB5420.namprd12.prod.outlook.com (2603:10b6:510:e8::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 17:27:49 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2%5]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 17:27:48 +0000
Message-ID: <416aa269-ba69-fe7a-ddab-0faf1f0c24ca@amd.com>
Date: Wed, 16 Aug 2023 10:27:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-5-wenjun1.wu@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230808015734.1060525-5-wenjun1.wu@intel.com>
X-ClientProxiedBy: BYAPR06CA0004.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::17) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH0PR12MB5420:EE_
X-MS-Office365-Filtering-Correlation-Id: 3911e706-4c68-481d-8865-08db9e7e1c5c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TFVYt3aj1A768ZkxelzmeOjkFnWZE1EI8xt8jsavaSltkz9wndr3wJX7w6+KOXjN6lHGiPkKCxZkwYn6KP4qwjEkbKphUQEEc2B28G6hUitUqL4/p3a+cxRFdXmk+9p0muoUBgzIGtd6LgarR75YL9IRrRoT6aLUjmtOEwhebpBIuL3anXVl54W4Kr+XINiBvgjfT6o60RCq/8MJdV+zwWr0tP1SKwqAqFgqPBmrgB8+oicbfk7mW0XRohtAqCoSHwEECK+rwuheGZXbB0OwSIZx0uEWUpRQa4PJImQIwa8KYMs7Sk1BH4Aak4jGxG87aeIPlXtkk1TnI27JstMtY+YPScFYQbF5UlNR2wr+FMa5DHLPqnb+hLkRz2sLugTNn3Xn+aAG0kjJUw9Rk4wpJUW8brXudJp31piSP7wEQpNrQqTYKfCpsEYQerzM6tF5iGDnsqcO/ibvC9se7VPCWTwJtsMwbD56uItOKrqBxF+sqoLKY0H7RRwCqqbdZtzLLTMs6216co4sAH/85sGFZ7PnqiBf79s5q/UnfNSTph27pbccgt07JFC1A4WKbPLZSn3i0nfNgLb+0dS1bKHj+GZr1GX9JkPcoXFeFmxngchQ6jvcVhIEdGFzAFNSVKbz8AX9vqYxtzTqCCQizS+7QA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199024)(1800799009)(186009)(30864003)(2906002)(83380400001)(478600001)(31696002)(6506007)(36756003)(6486002)(2616005)(6666004)(6512007)(53546011)(26005)(5660300002)(41300700001)(316002)(66946007)(66556008)(66476007)(31686004)(8676002)(8936002)(4326008)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WXVuaEFqeDlFTmRDdGM1VUNxUEhya1VQQW5TRzJhbFlPMUFYTlM4WVBCR2No?=
 =?utf-8?B?N0hqQXFOUmdpYUpXa3R5SHdrM0F3RmVNTEJGb3B0Z0ZCVU43bTROdnF1bkhm?=
 =?utf-8?B?YnkyN0Q4dGoxTDlvRmhaaTFuaWpZYXp0SUhEc0xYRzVUZTRFMmhyTXhMZlN0?=
 =?utf-8?B?R3Nxcjc1TjdYL1RVMGNMZDVrOXJHNzZIS0NiWG03bkM4YmwxRzB4MTRtazFU?=
 =?utf-8?B?dmV2dUVVZEFTMFdtemF4WmhJOU9pYjJ6YU5rYUQ5NmtDUFZLL3U3UkJITmlj?=
 =?utf-8?B?VXNrcG5xRWlRY2s1OStwNGN5OFhDTk9rSVUvbytLa3VKSWNxWW05SUpXWDJ4?=
 =?utf-8?B?ckVCbGxjdG51c3UzTXNoUU4zMHExcEVuVGV6VWlLZzV6ZW0vWnh6STI3MTBD?=
 =?utf-8?B?bk11UVZic0tpd3c0VUtwdHRVTmQ4YUVCVjMrWjNkRUk2WjBHZlUwL0FBeTIz?=
 =?utf-8?B?WUZ1a2lOQkRQREJrRzNlZTRSVmwxVEFzZTNmc0xXVkRlcHdyR0xwVEZFWVRE?=
 =?utf-8?B?a2VjUUU1Q1RyWWlZdGdaV3R1VWlucWJIMy8yMVVBakdIcUt2dkZQdU1WMW1n?=
 =?utf-8?B?UkFNaHdaUVRDYXlKUWdrWnJyR3FkYW1IeG1jcXF5TDN6Z3JPUE5KWmdXUmRU?=
 =?utf-8?B?WUNkQWtFMExxbFJLUmVuMlQ4L3c5NzJsYWJ2ZHdrZDhSMEpYQm5vc2tTc0FJ?=
 =?utf-8?B?QXhrKys5MjR6cXBEOU45LzM0T0NHekVsS2pXMG1NeExpbW5oSWc1cUgzMGw1?=
 =?utf-8?B?NlpQV1hBQVBFRHkzMVF3UTUrRGxHK0xIVDUyOGl0S1o3cDBqSHZDbExsLzYy?=
 =?utf-8?B?VG96Z1VxZnBNdVNtQlpDRFVrM3hscVVha0oxUmY1bW1ZQklMN1dnYmxJZ1pk?=
 =?utf-8?B?K3Q4SVZGclo3Uzlkd2VzeDZsb0JPcWZWRU5rQjdaTlF1NmRqSXFOWWF0QXMy?=
 =?utf-8?B?bUpTM0wrbFArenpQYWZMK3hsalNTaUpLR3F2M1lxa3pGSko5TFdhR0h5Z1Vx?=
 =?utf-8?B?MmN0Z0paRWxzUFFrNGRrQXFLcUtRcHRDYTNyNkZ1bXdyeFplMXJodkdOT1Fo?=
 =?utf-8?B?NWxRZjZhYVNVSGRnL3dTTitpQkFNYzhEdDBBcnpvTEZWRVRxeE9HVm5wQ3l0?=
 =?utf-8?B?K3ZwL1A2bFg2cm0xdEd2SVdPZWZEckkzOGpXUzdIRncvb0tBcDYwdWZjR01V?=
 =?utf-8?B?SGNLNEUrd2pEbjJVcG8xbzkvTzY5RFdhTmV0eC9WWUlPOTAzcUpmZ1dORXRC?=
 =?utf-8?B?OEhXSTlJTE82a01DMFFheFJ3cHVGR0J6NGF6cm9iNmc2OHZ1UE1RY3JZTVJr?=
 =?utf-8?B?NDFvc0w2UloyZnNNT0JHRW92Q3dMcDZHbW9odXJaL2twblB0RUxDanNNSjhv?=
 =?utf-8?B?OU1sSFFkYzhzVld2WFFrNENYKy9XZCsyRDRGWmc3M2NIZXhKbVlQVmtTeC9Z?=
 =?utf-8?B?blFqQU1UZHFGL0UwamY4WTlBVnpKODZTYm9VOUp1U0pnb29DS1dwTkhRWGFv?=
 =?utf-8?B?d1BTaG5odTFiOVorYjlheGJYenRkNHdkeXNyWnl0Y0pKSjdoN0xYZ3lXRC9C?=
 =?utf-8?B?Yi9iRjQyRldSQ1lpRjY3M0hSNlQ1MWZhc3ZuYkpNYUtNY3lpQlJFN1c3MzdL?=
 =?utf-8?B?V1RmaUhiM3g0R2w5TjJucmVXcUg0QTRpOGpjdHRCU1FuZEtYN25lNjE5NmpC?=
 =?utf-8?B?NmJRYzNqZXJLL1RTSi9helFSWHJJME1UamxjaHlUZmNCYVFaWUlIL0J3UGYv?=
 =?utf-8?B?cWpoL1NuZWZDU2xBS1ZjdnVFUTNHYWRXYkhqa0J5MkpNeERiTFJQZXRjNndl?=
 =?utf-8?B?N3RCVW9LOFZYWG9aZFRyakwreTllM2o1SSs3WkxReldsVkIrL05JdUVxTmM5?=
 =?utf-8?B?dlYxajI3eEdvQ1NRMUJjcmV5WURkMkRYRXJISUltVjlWMCtNQWFQK1BGYTFQ?=
 =?utf-8?B?elpIdXkrVGdZQWJ6RitIb2tZL09jcHg5ZmxhMmFIMzdEU0NMR01majhNWmht?=
 =?utf-8?B?ODRGelg1SjJ0RFZUOEkyUkZ4dk9iaUR0eGxLdVpHQ25SWDZVQUNWL1ozRUhM?=
 =?utf-8?B?aDdXMkl4QlVzQnE5YWE1TVp2cTQzdE1jUDlWRHcvd0krTzl6RVdMcHlCUmQ4?=
 =?utf-8?Q?Eu8toTZk0xzqMFOBg/PldBgZE?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3911e706-4c68-481d-8865-08db9e7e1c5c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 17:27:48.3306 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hVXB65mIxYK4EfOWA3PVyfSxfcktHQH8ysa+nGp/lb7vmIvE1hT8Fxvy4K+nPTlvlCz3Z/pY0klRccj43upjBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5420
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xYp3JRqHDbwm81Lr0iC19cUMBXNnJ+8k6TKMnOzmaf8=;
 b=mEHGkXmrhPsHEUNoH5bRXD2myGe6n+HNrtsJb8ZLdwA8wnxzaSHvzdL+An/gad7upLA608fBmbDphsf6aMDwnmmH8D5ZX/6aB2WMZqaH1hH041C6hQ73mTFkdHfRw3sc2ky5ahQVE0pmO+YmkPLI1um4b5hodyLggCaUQoOacgo=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=mEHGkXmr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/5] iavf: Add devlink
 port function rate API support
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
Cc: anthony.l.nguyen@intel.com, qi.z.zhang@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/7/2023 6:57 PM, Wenjun Wu wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> From: Jun Zhang <xuejun.zhang@intel.com>
> 
> To allow user to configure queue based parameters, devlink port function
> rate api functions are added for setting node tx_max and tx_share
> parameters.
> 
> iavf rate tree with root node and  queue nodes is created and registered
> with devlink rate when iavf adapter is configured.
> 
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>   .../net/ethernet/intel/iavf/iavf_devlink.c    | 270 +++++++++++++++++-
>   .../net/ethernet/intel/iavf/iavf_devlink.h    |  21 ++
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |   7 +-
>   3 files changed, 295 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.c b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
> index 991d041e5922..a2bd5295c216 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_devlink.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.c
> @@ -4,7 +4,273 @@
>   #include "iavf.h"
>   #include "iavf_devlink.h"
> 
> -static const struct devlink_ops iavf_devlink_ops = {};
> +/**
> + * iavf_devlink_rate_init_rate_tree - export rate tree to devlink rate
> + * @adapter: iavf adapter struct instance
> + *
> + * This function builds Rate Tree based on iavf adapter configuration
> + * and exports it's contents to devlink rate.
> + */
> +void iavf_devlink_rate_init_rate_tree(struct iavf_adapter *adapter)
> +{
> +       struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
> +       struct iavf_dev_rate_node *iavf_r_node;
> +       struct iavf_dev_rate_node *iavf_q_node;
> +       struct devlink_rate *dl_root_node;
> +       struct devlink_rate *dl_tmp_node;
> +       int q_num, size, i;
> +
> +       if (!adapter->devlink_port.registered)
> +               return;
> +
> +       iavf_r_node = &dl_priv->root_node;
> +       memset(iavf_r_node, 0, sizeof(*iavf_r_node));
> +       iavf_r_node->tx_max = adapter->link_speed;
> +       strscpy(iavf_r_node->name, "iavf_root", IAVF_RATE_NODE_NAME);
> +
> +       devl_lock(adapter->devlink);
> +       dl_root_node = devl_rate_node_create(adapter->devlink, iavf_r_node,
> +                                            iavf_r_node->name, NULL);
> +       if (!dl_root_node || IS_ERR(dl_root_node))
> +               goto err_node;
> +
> +       iavf_r_node->rate_node = dl_root_node;
> +
> +       /* Allocate queue nodes, and chain them under root */
> +       q_num = adapter->num_active_queues;
> +       if (q_num > 0) {
> +               size = q_num * sizeof(struct iavf_dev_rate_node);
> +               dl_priv->queue_nodes = kzalloc(size, GFP_KERNEL);
> +               if (!dl_priv->queue_nodes)
> +                       goto err_node;
> +
> +               memset(dl_priv->queue_nodes, 0, size);

Why not just use kcalloc() here? Also, it seems like there's no need to 
zero the memory here.

> +
> +               for (i = 0; i < q_num; ++i) {
> +                       iavf_q_node = &dl_priv->queue_nodes[i];
> +                       snprintf(iavf_q_node->name, IAVF_RATE_NODE_NAME,
> +                                "txq_%d", i);
> +                       dl_tmp_node = devl_rate_node_create(adapter->devlink,
> +                                                           iavf_q_node,
> +                                                           iavf_q_node->name,
> +                                                           dl_root_node);
> +                       if (!dl_tmp_node || IS_ERR(dl_tmp_node)) {
> +                               kfree(dl_priv->queue_nodes); > +                               goto err_node;
> +                       }
> +
> +                       iavf_q_node->rate_node = dl_tmp_node;
> +                       iavf_q_node->tx_max = IAVF_TX_DEFAULT;
> +                       iavf_q_node->tx_share = 0;
> +               }
> +       }
> +
> +       dl_priv->update_in_progress = false;
> +       dl_priv->iavf_dev_rate_initialized = true;
> +       devl_unlock(adapter->devlink);
> +       return;
> +err_node:
> +       devl_rate_nodes_destroy(adapter->devlink);
> +       dl_priv->iavf_dev_rate_initialized = false;
> +       devl_unlock(adapter->devlink);
> +}
> +
> +/**
> + * iavf_devlink_rate_deinit_rate_tree - Unregister rate tree with devlink rate
> + * @adapter: iavf adapter struct instance
> + *
> + * This function unregisters the current iavf rate tree registered with devlink
> + * rate and frees resources.
> + */
> +void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter)
> +{
> +       struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
> +
> +       if (!dl_priv->iavf_dev_rate_initialized)
> +               return;
> +
> +       devl_lock(adapter->devlink);
> +       devl_rate_leaf_destroy(&adapter->devlink_port);
> +       devl_rate_nodes_destroy(adapter->devlink);
> +       kfree(dl_priv->queue_nodes);
> +       devl_unlock(adapter->devlink);
> +}
> +
> +/**
> + * iavf_check_update_config - check if updating queue parameters needed
> + * @adapter: iavf adapter struct instance
> + * @node: iavf rate node struct instance
> + *
> + * This function sets queue bw & quanta size configuration if all
> + * queue parameters are set
> + */
> +static int iavf_check_update_config(struct iavf_adapter *adapter,
> +                                   struct iavf_dev_rate_node *node)
> +{
> +       /* Update queue bw if any one of the queues have been fully updated by
> +        * user, the other queues either use the default value or the last
> +        * fully updated value
> +        */
> +       if (node->tx_update_flag ==
> +           (IAVF_FLAG_TX_MAX_UPDATED | IAVF_FLAG_TX_SHARE_UPDATED)) {
> +               node->tx_max = node->tx_max_temp;
> +               node->tx_share = node->tx_share_temp;
> +       } else {
> +               return 0;
> +       }

I think it would more readable to do the following:

if (node->tx_update_flag !=
     (IAVE_FLAG_TX_MAX_UPDATED | IAVF_FLAG_TX_SHARE_UPDATED))
	return 0;

/* rest of function */
> +
> +       /* Reconfig queue bw only when iavf driver on running state */
> +       if (adapter->state != __IAVF_RUNNING)
> +               return -EBUSY;
> +
> +       return 0;
> +}
> +
> +/**
> + * iavf_update_queue_tx_share - sets tx min parameter
> + * @adapter: iavf adapter struct instance
> + * @node: iavf rate node struct instance
> + * @bw: bandwidth in bytes per second
> + * @extack: extended netdev ack structure
> + *
> + * This function sets min BW limit.
> + */
> +static int iavf_update_queue_tx_share(struct iavf_adapter *adapter,
> +                                     struct iavf_dev_rate_node *node,
> +                                     u64 bw, struct netlink_ext_ack *extack)
> +{
> +       struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
> +       u64 tx_share_sum = 0;
> +
> +       /* Keep in kbps */
> +       node->tx_share_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
> +
> +       if (ADV_LINK_SUPPORT(adapter)) {
> +               int i;
> +
> +               for (i = 0; i < adapter->num_active_queues; ++i) {
> +                       if (node != &dl_priv->queue_nodes[i])
> +                               tx_share_sum +=
> +                                       dl_priv->queue_nodes[i].tx_share;
> +                       else
> +                               tx_share_sum += node->tx_share_temp;
> +               }
> +
> +               if (tx_share_sum / 1000  > adapter->link_speed_mbps)
> +                       return -EINVAL;
> +       }
> +
> +       node->tx_update_flag |= IAVF_FLAG_TX_SHARE_UPDATED;
> +       return iavf_check_update_config(adapter, node);
> +}
> +
> +/**
> + * iavf_update_queue_tx_max - sets tx max parameter
> + * @adapter: iavf adapter struct instance
> + * @node: iavf rate node struct instance
> + * @bw: bandwidth in bytes per second
> + * @extack: extended netdev ack structure
> + *
> + * This function sets max BW limit.
> + */
> +static int iavf_update_queue_tx_max(struct iavf_adapter *adapter,
> +                                   struct iavf_dev_rate_node *node,
> +                                   u64 bw, struct netlink_ext_ack *extack)
> +{
> +       /* Keep in kbps */
> +       node->tx_max_temp = div_u64(bw, IAVF_RATE_DIV_FACTOR);
> +       if (ADV_LINK_SUPPORT(adapter)) {
> +               if (node->tx_max_temp / 1000 > adapter->link_speed_mbps)
> +                       return -EINVAL;
> +       }
> +
> +       node->tx_update_flag |= IAVF_FLAG_TX_MAX_UPDATED;
> +
> +       return iavf_check_update_config(adapter, node);
> +}
> +
> +/**
> + * iavf_devlink_rate_node_tx_max_set - devlink_rate API for setting tx max
> + * @rate_node: devlink rate struct instance
> + *
> + * This function implements rate_node_tx_max_set function of devlink_ops
> + */
> +static int iavf_devlink_rate_node_tx_max_set(struct devlink_rate *rate_node,
> +                                            void *priv, u64 tx_max,
> +                                            struct netlink_ext_ack *extack)
> +{
> +       struct iavf_dev_rate_node *node = priv;
> +       struct iavf_devlink *dl_priv;
> +       struct iavf_adapter *adapter;
> +
> +       if (!node)
> +               return 0;
> +
> +       dl_priv = devlink_priv(rate_node->devlink);
> +       adapter = dl_priv->devlink_ref;
> +
> +       /* Check if last update is in progress */
> +       if (dl_priv->update_in_progress)
> +               return -EBUSY;
> +
> +       if (node == &dl_priv->root_node)
> +               return 0;
> +
> +       return iavf_update_queue_tx_max(adapter, node, tx_max, extack);
> +}
> +
> +/**
> + * iavf_devlink_rate_node_tx_share_set - devlink_rate API for setting tx share
> + * @rate_node: devlink rate struct instance
> + *
> + * This function implements rate_node_tx_share_set function of devlink_ops
> + */
> +static int iavf_devlink_rate_node_tx_share_set(struct devlink_rate *rate_node,
> +                                              void *priv, u64 tx_share,
> +                                              struct netlink_ext_ack *extack)
> +{
> +       struct iavf_dev_rate_node *node = priv;
> +       struct iavf_devlink *dl_priv;
> +       struct iavf_adapter *adapter;
> +
> +       if (!node)
> +               return 0;
> +
> +       dl_priv = devlink_priv(rate_node->devlink);
> +       adapter = dl_priv->devlink_ref;
> +
> +       /* Check if last update is in progress */
> +       if (dl_priv->update_in_progress)
> +               return -EBUSY;
> +
> +       if (node == &dl_priv->root_node)
> +               return 0;
> +
> +       return iavf_update_queue_tx_share(adapter, node, tx_share, extack);
> +}
> +
> +static int iavf_devlink_rate_node_del(struct devlink_rate *rate_node,
> +                                     void *priv,
> +                                     struct netlink_ext_ack *extack)
> +{
> +       return -EINVAL;
> +}
> +
> +static int iavf_devlink_set_parent(struct devlink_rate *devlink_rate,
> +                                  struct devlink_rate *parent,
> +                                  void *priv, void *parent_priv,
> +                                  struct netlink_ext_ack *extack)
> +{
> +       return -EINVAL;
> +}
> +
> +static const struct devlink_ops iavf_devlink_ops = {
> +       .rate_node_tx_share_set = iavf_devlink_rate_node_tx_share_set,
> +       .rate_node_tx_max_set = iavf_devlink_rate_node_tx_max_set,
> +       .rate_node_del = iavf_devlink_rate_node_del,
> +       .rate_leaf_parent_set = iavf_devlink_set_parent,
> +       .rate_node_parent_set = iavf_devlink_set_parent,
> +};
> 
>   /**
>    * iavf_devlink_register - Register allocated devlink instance for iavf adapter
> @@ -30,7 +296,7 @@ int iavf_devlink_register(struct iavf_adapter *adapter)
>          adapter->devlink = devlink;
>          ref = devlink_priv(devlink);
>          ref->devlink_ref = adapter;
> -
> +       ref->iavf_dev_rate_initialized = false;
>          devlink_register(devlink);
> 
>          return 0;
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_devlink.h b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
> index 5c122278611a..897ff5fc87af 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_devlink.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf_devlink.h
> @@ -4,14 +4,35 @@
>   #ifndef _IAVF_DEVLINK_H_
>   #define _IAVF_DEVLINK_H_
> 
> +#define IAVF_RATE_NODE_NAME                    12
> +struct iavf_dev_rate_node {
> +       char name[IAVF_RATE_NODE_NAME];
> +       struct devlink_rate *rate_node;
> +       u8 tx_update_flag;
> +#define IAVF_FLAG_TX_SHARE_UPDATED             BIT(0)
> +#define IAVF_FLAG_TX_MAX_UPDATED               BIT(1)
> +       u64 tx_max;
> +       u64 tx_share;
> +       u64 tx_max_temp;
> +       u64 tx_share_temp;
> +#define IAVF_RATE_DIV_FACTOR                   125
> +#define IAVF_TX_DEFAULT                                100000
> +};
> +
>   /* iavf devlink structure pointing to iavf adapter */
>   struct iavf_devlink {
>          struct iavf_adapter *devlink_ref;       /* ref to iavf adapter */
> +       struct iavf_dev_rate_node root_node;
> +       struct iavf_dev_rate_node *queue_nodes;
> +       bool iavf_dev_rate_initialized;
> +       bool update_in_progress;

It seems like this is never true until patch 5/5, so IMO it makes sense 
to add it there. Also, why is this bool needed? Is there not another 
flag or lock that can be used instead of adding this new flag/bit?

>   };
> 
>   int iavf_devlink_register(struct iavf_adapter *adapter);
>   void iavf_devlink_unregister(struct iavf_adapter *adapter);
>   int iavf_devlink_port_register(struct iavf_adapter *adapter);
>   void iavf_devlink_port_unregister(struct iavf_adapter *adapter);
> +void iavf_devlink_rate_init_rate_tree(struct iavf_adapter *adapter);
> +void iavf_devlink_rate_deinit_rate_tree(struct iavf_adapter *adapter);
> 
>   #endif /* _IAVF_DEVLINK_H_ */
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index db010e68d5d2..7348b65f9f19 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -2037,6 +2037,7 @@ static void iavf_finish_config(struct work_struct *work)
>                                  iavf_free_rss(adapter);
>                                  iavf_free_misc_irq(adapter);
>                                  iavf_reset_interrupt_capability(adapter);
> +                               iavf_devlink_rate_deinit_rate_tree(adapter);
>                                  iavf_devlink_port_unregister(adapter);
>                                  iavf_change_state(adapter,
>                                                    __IAVF_INIT_CONFIG_ADAPTER);
> @@ -2709,8 +2710,10 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
>          if (err)
>                  goto err_sw_init;
> 
> -       if (!adapter->netdev_registered)
> +       if (!adapter->netdev_registered) {
>                  iavf_devlink_port_register(adapter);
> +               iavf_devlink_rate_init_rate_tree(adapter);
> +       }
> 
>          netif_carrier_off(netdev);
>          adapter->link_up = false;
> @@ -2753,6 +2756,7 @@ static void iavf_init_config_adapter(struct iavf_adapter *adapter)
>   err_mem:
>          iavf_free_rss(adapter);
>          iavf_free_misc_irq(adapter);
> +       iavf_devlink_rate_deinit_rate_tree(adapter);
>          iavf_devlink_port_unregister(adapter);
>   err_sw_init:
>          iavf_reset_interrupt_capability(adapter);
> @@ -5150,6 +5154,7 @@ static void iavf_remove(struct pci_dev *pdev)
>                                   err);
>          }
> 
> +       iavf_devlink_rate_deinit_rate_tree(adapter);
>          iavf_devlink_port_unregister(adapter);
>          iavf_devlink_unregister(adapter);
> 
> --
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
