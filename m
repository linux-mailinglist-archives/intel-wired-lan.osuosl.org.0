Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B253A3D1D36
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jul 2021 07:02:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 385EE81D16;
	Thu, 22 Jul 2021 05:02:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZgpdPAn8TpmS; Thu, 22 Jul 2021 05:02:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 353DC819BE;
	Thu, 22 Jul 2021 05:02:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB54D1BF39F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 05:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B788B40134
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 05:02:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YLD1DcjFcNCC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jul 2021 05:02:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 46E68400A8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jul 2021 05:02:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211626137"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="211626137"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:02:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="658678580"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 21 Jul 2021 22:02:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 22:02:30 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 21 Jul 2021 22:02:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 21 Jul 2021 22:02:30 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 21 Jul 2021 22:02:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eC5RlsMxznOtX8PNARZ2p2TZvwZgWC+/5APA/1BjRr/mmt7QxUwfRoATG2YdnMChwaPehUuy7zS7NrLFdLextU+rFL8jbK9y+wLpi5TtiRNYoIlVgT/KjM+bUXetKs2Hmt5um3mGDcZ2FKmDyy/PGMyUu6Bm0cuO2ZSixY8ExHZXBGjpTnCCNo5fZix3iCJB2TXJOklxBxVNDsiXWyK+Qxbas2XYn5X485YbosOoT1dgU54hWVB/N+oLmbBflJc4Od4LiiYcfTVLMTglQhBRxjnmk/A0qgTko5EmOu1MPbsqPE4SxtWyP6p3y0mG8ulMENQyE0QiVoPLje4HUJK4sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r93i3imR2Iy97nGJSZNo40WtDChyUiJm0kxutGh4iYk=;
 b=BO6lU3kBOYGhH+/P4xyymVXS6BidGXQiksdWv2ASXVspWjdN3WWjsyPL2uM9DqFmAyJ0zk29oD3JioV/XTVpzQw2OFmfOmRGjfMpmj6Fv+VACWCWN+18igDO4+LiEXw0KqEInMencWunm24xg88yo77s0DyyHwOZR34vJfiYcxuJOC/mexBv2ZkH3GJ3SqVM8NrHUYtJISSMHnt+I7HJhqzk6Owr997ObQKE03aqJMIhbMqBJmUu+GgyAJuhc92KjVWXxu8KSVjmYK8nbmbaHAduNdkwZmcUKkW9pEuIE5XQQVVdQ06itiSmfKJkUzOIBKI5JsOYR1tjzRDubjGppA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=r93i3imR2Iy97nGJSZNo40WtDChyUiJm0kxutGh4iYk=;
 b=nvc+CJy0guLE92ZG1NsXJYKeoun+sA32OMYZb8dJfQe3XbASXHrRDD6pJ2Vj4Y3Sj47pOrlfL7/97vZqV3LHgiBRPfNXV+3qTRChLp5RQwaZ+N7zFk0fJ8bshBJNjkcZn3eRsc2VP2NR03AbLkVP1e15RiCBFOAqWT0zK6g5UFw=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4787.namprd11.prod.outlook.com (2603:10b6:303:6e::10)
 by CO1PR11MB4897.namprd11.prod.outlook.com (2603:10b6:303:97::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24; Thu, 22 Jul
 2021 05:02:27 +0000
Received: from CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74]) by CO1PR11MB4787.namprd11.prod.outlook.com
 ([fe80::b856:1bc7:d077:6e74%4]) with mapi id 15.20.4352.025; Thu, 22 Jul 2021
 05:02:27 +0000
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20210722003403.69289-1-vinicius.gomes@intel.com>
From: Sasha Neftin <sasha.neftin@intel.com>
Message-ID: <3b92e1b7-5187-b180-04fc-b3363d2d212f@intel.com>
Date: Thu, 22 Jul 2021 08:02:20 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.12.0
In-Reply-To: <20210722003403.69289-1-vinicius.gomes@intel.com>
Content-Language: en-US
X-ClientProxiedBy: VI1PR09CA0146.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::30) To CO1PR11MB4787.namprd11.prod.outlook.com
 (2603:10b6:303:6e::10)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.168] (84.108.64.141) by
 VI1PR09CA0146.eurprd09.prod.outlook.com (2603:10a6:803:12c::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.24 via Frontend
 Transport; Thu, 22 Jul 2021 05:02:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 88475052-3c88-4bf3-af0d-08d94ccde6ca
X-MS-TrafficTypeDiagnostic: CO1PR11MB4897:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CO1PR11MB4897B29504903756539251A697E49@CO1PR11MB4897.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K5rjGDWonmqMM8MzPFIS7X5w8qrp5bERqHgtC/wUYTuwye2gRbsdLpG91I/oXZLlwsdwPbkWCnXJsfpPwLbuHE92o6sZ4pV1IB4k+qK+BAwkz2NVyNnlbM+qlUYDL5o232lNiaeJtG/eKmv0xFWYQUvpvEY+4nywTOyMs/iVUjno+GA6N4PNDT3PYwo+nu9Eqb7HxCavGP2XkbRRlUbgcPX/jHvRZPRPIjJWdICyIK1FMR84s9C0Vl/tbeEbkzFNHXo18A6wOrC8/9TxLwFpM6tHohQ+HTrwg2+X+vWjm0RKGn/UNXEKMHcS4xJFdlVr+NgGXzAx+gRg1A/g4hXkaujkGcT31SzbPavloceEItukctvRMYaVq8L28Ju9NCrefdhzM0HJal/MhE4sfZ08TCPDMdO+q/NqmyWus73oz32DyD7xqZnQHcLYBOIxZZOl5AQ3p79RxYK/SOLlhxYJwb7uqvJc4SF+924xSH6xh3tlzX7ACEvb0iP3xHJmb/86+dx27KFXUpZinyS5hDXVQee81/ty1IapK3KZHr9qOC/DQM73326SzusN6tVgL+csgCm+HzYLPszMb4iKdirfX+XVTEz/35sX8LQWvY9nAH29xPtjVvBthJQ4v+AMN4rTgFatiSeVhDotG8u8+dPcW5LzeRLYaTCh5szNtBgoqXUbZV/AXLOC/353ysXWH09vOTGbSZxBl5N5kgD+/C8uFbWcJLJetlPYnZflFhLkiM7ThZ0ESLmVYoskyVcK+Qje
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4787.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(136003)(39860400002)(396003)(376002)(366004)(53546011)(38100700002)(86362001)(2616005)(31686004)(66556008)(26005)(36756003)(66476007)(186003)(66946007)(478600001)(6486002)(54906003)(4326008)(956004)(5660300002)(8936002)(6666004)(44832011)(2906002)(8676002)(16576012)(31696002)(107886003)(83380400001)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2pxQUYwcTJ4M2c5dFpBQU9pZzhrMjRDbXVGRE1FRUxYdFQ0TUZLQzdLVS9F?=
 =?utf-8?B?enNRK1NPSU43d3R3bGh0eVRick9OcjFjUlVZMXpVanNyOWVzZ3VLQ05LNEhw?=
 =?utf-8?B?SVpwTmowVkpOMWNta3ZubXppbnZxL0FMTEU0bzAyaEJMSjZnQTNxanZNeUpt?=
 =?utf-8?B?TGl2WnRXbEtzblJ4RFk1SW9KdXVpRVBxZ29TK3JubnRVanM0bzhDTGZxdkpW?=
 =?utf-8?B?cjE3UHkyTDVXSmp6WkY5OVQ1NVVWbVlrcVZQY1B0cFRsUXA3NTByMHVEMEV6?=
 =?utf-8?B?WFRrZU1oR0o0Y2hFYTZWY3lkYktUdDMyNEdQZy96TU4vdzd6a3k4blcrZlJy?=
 =?utf-8?B?b0U4MzJWWlF1QW5ldzFGUU5QUW1DTG8raHNKc2ZXMXVRUlYzOWdtYWZDZUtZ?=
 =?utf-8?B?c2hxY3lsV0VKQkkwZW5meUVlV0xTOS9JckNmQ0pIZlNqTmZVVWQrcTNOUGhz?=
 =?utf-8?B?ODhaTVhIdG5vYnlTSkRlSkpHcTViYTBHU1RqeUZpNktSTHBYYzZ2WTJCUlBS?=
 =?utf-8?B?MngwM1VKK2lhSjdSTkVoREREc1BGZlhFZGJOTFhaaTlZWmN0a1hOL09IQVpF?=
 =?utf-8?B?NjR4eTBidWJHcDBsbU5TNXRtSXJ3M0l5MHF0SjNhYlFTUHVQWFovSmNta29P?=
 =?utf-8?B?NXhvb2k3eDRiRHJZTk9lNTQzNWhVNHc1TXFvNlVla0ttR1ZycGZ4TklwTDY3?=
 =?utf-8?B?SXFvU01HT1g0TEJaMWUyYllzczZ3a2F5MTJERkdwbElsMU1TZkhTbnNlbzY2?=
 =?utf-8?B?WlJOeFY5K1lCam1jK1hKUDBNZWl3YVk5UGVNaTUwd0dqNTlTeFp1ZVhSK0Ev?=
 =?utf-8?B?bmlrODNTY3ZZMXRodmJFU2plMExsSmx2MUFMUStqQUEwaDB3clE5cXhxQmRy?=
 =?utf-8?B?MjFMbWU4ZVFDZG9GK0M5WmQzejYraURvVytNWGVoU3dZNjdnSGR0Vm9PVXNy?=
 =?utf-8?B?OEpsVXdNOU52YmxFUGtvVStpMFMyMTBJL0VmTEozVFJsVkVFTXAzdlEyT2FD?=
 =?utf-8?B?ZGpSa1FDdDhPazNzZ2JrSjhSWFh4ei9OTjJzUVQ1Z3JWOGU4dmJhVzV5SS9w?=
 =?utf-8?B?eUdvemZBOHY4aU4raG81VlZPekRnanlvU290WUNtbHhWL0d0SlhONWJaS2V0?=
 =?utf-8?B?Kys5Y0tPYTFaUHZJS0FGUVhtdFFJN3NkcWJsZDlMclBTQWNPTk5BVzBicjl3?=
 =?utf-8?B?L2s2QkRYMGZHQVY3eVRNZ3JOR0d1by85WC94QWNsKytFUjJSQWNaT0piQlk0?=
 =?utf-8?B?Ti83YUxGUDZkQjdNL3ZFaStHd1pvQkdsSGVzOEJGdkNSWWxKMGdwcjh3ZW9U?=
 =?utf-8?B?RFgrUUEzcUJ6Rno3amxmbzdHNlBuK3ZpdXlCOTc3c1FHUWFaTCtFdVJxcU41?=
 =?utf-8?B?TDVseUpLQkJpQWZSbDREYkZ4UkwyejUwWU90N0RKZ09lSzUyK1FPcTZFL1Jk?=
 =?utf-8?B?cW5BTHBpbGNpQkNtdjFpNDVKOTZITjJwNXBhYW41Wmt1Qks3OHBQaUxOeXB6?=
 =?utf-8?B?OE4wZ1EreDJhU0s5cHQrWEYwMXQvMFlFTDB6bDYrZlFhWnQ4L052SzNWMVdm?=
 =?utf-8?B?cXh4NS9QOVVKcFRudndrVURyVzdkUFFVYlJGOSt4M2E5OEMrUytuZ05IVzhL?=
 =?utf-8?B?ZHh6YlVlNzFCbFRVaCtIaG1EZTNRMldXcTVPNDdCUG8wZk9PT3FlcENIN29P?=
 =?utf-8?B?WE84NHBnWWxOVWRKOTFYazFUMi9qWi90MGJ1eURrczZSTFNER2RJYUVGbzJZ?=
 =?utf-8?Q?IPcmhlKI+5AqUT/VfJNzaX1+oamR3GniMr3LRmI?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88475052-3c88-4bf3-af0d-08d94ccde6ca
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4787.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2021 05:02:27.5616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 683eSln++HkiAQXK5LVDtFdkF52TLctqJpYG/3dbIFZgo3r+dlSSi06+BNaqFdvugOAA4hDPPJKNcGOC33zbfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4897
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-queue v1] igc: Use num_tx_queues
 when iterating over tx_ring queue
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
Cc: "Nishioka, Toshiki" <toshiki.nishioka@intel.com>,
 Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/22/2021 03:34, Vinicius Costa Gomes wrote:
> From: "Nishioka, Toshiki" <toshiki.nishioka@intel.com>
> 
> Use num_tx_queues rather than the IGC_MAX_TX_QUEUES fixed number 4 when
> iterating over tx_ring queue since instantiated queue count could be
> less than 4 where on-line cpu count is less than 4.
> 
> Fixes: ec50a9d437f0 ("igc: Add support for taprio offloading")
> Signed-off-by: Toshiki Nishioka <toshiki.nishioka@intel.com>
> Tested-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index e29aadbc6744..2b3b741f816c 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5489,7 +5489,7 @@ static bool validate_schedule(struct igc_adapter *adapter,
>   		if (e->command != TC_TAPRIO_CMD_SET_GATES)
>   			return false;
>   
> -		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
> +		for (i = 0; i < adapter->num_tx_queues; i++) {
>   			if (e->gate_mask & BIT(i))
>   				queue_uses[i]++;
>   
> @@ -5546,7 +5546,7 @@ static int igc_save_qbv_schedule(struct igc_adapter *adapter,
>   
>   		end_time += e->interval;
>   
> -		for (i = 0; i < IGC_MAX_TX_QUEUES; i++) {
> +		for (i = 0; i < adapter->num_tx_queues; i++) {
>   			struct igc_ring *ring = adapter->tx_ring[i];
>   
>   			if (!(e->gate_mask & BIT(i)))
> 
Acked-by: Sasha Neftin <sasha.neftin@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
