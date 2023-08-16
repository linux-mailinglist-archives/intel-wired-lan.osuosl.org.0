Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A0377E702
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 18:54:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EE419837BC;
	Wed, 16 Aug 2023 16:54:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE419837BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692204892;
	bh=sks347AcU4KiS26fnW9zIRTlUzEuCn2A2wedWWFc9Qk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1+85Kpyqg5CmhLXDHpNQ/+4w01OCmbGz0RaWJewfpu9Sx9x1nATFnCv4lfQ6+ib+x
	 lZvewxttF3Y72CpkciJMvlY8Vbl08XwAgs7UCB2LxsynY1+ehdqXPEl+b6x1zTHmjx
	 OqmP7mOm0mwcRb9C1e7iiDG8Y96p5G5047ip/DUmRQzfmzBlyTG3BtCg/efiwNoBe9
	 e1veSe9o03AVisjEXW0xFJjra5g7yfRcq0zx/eHGnxv6RHzLHjQfiSd2RE0X3ByZpb
	 UQ9a8hxwDW2N5yuSW/BQ58CAkRJg0ucB0vZoaDivOyMNlvoaMrvFUQjClvDHGvECMj
	 mOh5Yoor4rcuw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nnKKqOv3eIkE; Wed, 16 Aug 2023 16:54:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA4B3830C0;
	Wed, 16 Aug 2023 16:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA4B3830C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F2E441BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 16:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA52A4086E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 16:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA52A4086E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SvstEQHHbFhv for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 16:54:42 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam11on2046.outbound.protection.outlook.com [40.107.223.46])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D23A2405D7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 16:54:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D23A2405D7
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FY9MmfOYfQzhRqogsIUAg7cjQQMXCrrpHsKR2GyfRB+uGtnNG/REBQlXuPSUKJC+Dh52SlKrDv9YC+1AUH+DmlOV207ycolhY8ZKEVldL0hmKYtD1eydTo9KYIv0WlwuDGa5L8he9s/xyfoHcx3NeFDI/u7OwGicrz/mE159/vvY2bsQcuSh24VXGND9gQOUYIfKDAjnN7y/FpKe4RTfXEX8QdvMFfYhSqJsrsVi3ljYqVLUx3Ux2m1jJWASXVz3cNaRNkbPkgD6gfvb7pr9tiIPK6N+VWhdq//l02Ry1qoty7cHVoUdZmNwM/ObpIiR1SOyPT2Ts/82uGZGG4ll/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VIAq9DcrrjFfD/dtYYyGC6BV75CWcG0xyt62hj8tDGU=;
 b=nYjA5nsjATnJ7Gt7GpXVb3A/N0f44S4aj5LkEBfCHU+GweULQTsxQxRvPBDNIYLtZhYS8NXE43OkomziZEasN5RRFr7zujOzcEmgbhz0W+nx5MiG0K0IgIJXtftmSQSvyupFf7y3moNJlX1NHo//HF0fL28rp0OA9GpUY0wL5H2c5fI/kYS0fFlZR3BLTN++2zUyalU1y3PqEO/She/3LCS7d1e7agKqJeRO+TWLLwC2JQe1aDAqzlxWIixloFwjrwAr9HSzQXlz1YgScWApMYeenYnE1CrMsR79lVWb9kNHBIMvu7r5TgG51J8xpnvt9yUWkkYQwEnGXJpbx43qZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB5655.namprd12.prod.outlook.com (2603:10b6:510:138::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.26; Wed, 16 Aug
 2023 16:54:36 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2%5]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 16:54:36 +0000
Message-ID: <dc699afe-1fa4-344f-016d-2d46c320426f@amd.com>
Date: Wed, 16 Aug 2023 09:54:34 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-3-wenjun1.wu@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230808015734.1060525-3-wenjun1.wu@intel.com>
X-ClientProxiedBy: BYAPR03CA0015.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::28) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB5655:EE_
X-MS-Office365-Filtering-Correlation-Id: 76edc0a5-1055-4a5d-ab7b-08db9e79792b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nqAueoB5uODKVDcPcMUD5mvaT1w7V/iV+LL1y2fiiw5+kPEawb80HYGnTYeHWXaTibqZViHyrZFulX1eYN8rNj8I0vTJkcrEO6ihasKwnyI+X2rJ4p0XM+Iyb7E3+4HNIh1ccVWxJmV/eoNYvOJgkxizxYxUq/GGsFrjUO8WEZTcThcqPz4dU/cqtxh8anyyz95DO9+HWpJJmMfalWWSCjkLvqUMfUPMoibTaUsfqj6fUtgdzfbqJq46oKt4z5eElfLDE3XiP3+uEqztCs1n51odISA6sIAQy7MBOizvgUhjiL4CwfOmZFPomcSMBqIEqZUeYM+YjUDujlwlMsmrfM0EvcS2CenanMDNH5g6hHuNus/dpLSedVqpO3ll0mZvWm+nslDdfy8YL3Z2Pm+CbQIqm3G79wpTnz3UNcR8MCUgnYduWYesNdJCtScdjc9O4UXYY1BZDFWZRx+ikZvIua11BZbSQeTftqrl7WfcjVv6KNtY4swRmS/FJrDWc2lJRI9lOwSGds57sOTt0U3LIkcMwqXWGYZ2AOxdVNwKbwxLfAEgxQyQ+8smeUXF/2W1iIk5Z9Ar+L85egouAxACou6B9I/M4nVMGraK88dcgr6V/IcZw2h8/Nyde96BRTGi2ZnjtR+We4zd1ikx/7ccQg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(366004)(376002)(136003)(1800799009)(451199024)(186009)(316002)(66946007)(66476007)(66556008)(41300700001)(5660300002)(38100700002)(31686004)(8676002)(4326008)(8936002)(66899024)(30864003)(2906002)(83380400001)(26005)(478600001)(31696002)(6512007)(53546011)(6506007)(36756003)(2616005)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U1FGSXZRcXNCOENSMWY3ekNSV1FwNEJ6U0h5MkVRVXU4N2Z2eXZoYmNRb3Uv?=
 =?utf-8?B?Y2xEWXIyRlA1a2cwZ3RHdUxEZDlVa1c4L2tWckNYalNxQ0lhMGdPV0UvL01k?=
 =?utf-8?B?QTlKeEdPZlc3dGIrRUx5cEdEdmZ1WFBOK0VuRWNybVFJRXFaakpyMlk2NkRU?=
 =?utf-8?B?VjFiQ3BzazFRUWl5bzNORGhHQVZ5N2oyS0RQZDhDMUlRS3FpS3gzWm1KcTZu?=
 =?utf-8?B?QUJYNlM1NUhRUzN4OEpoMXdJR3VTRUNFblRzZ2hZVjBoZ1dLSmNyNVJzOSt3?=
 =?utf-8?B?dGJSZnpRQnkycHJ0OVdQVlRidEpWMUpnM0pocG1Wb3F6aERrL216SWx6SjJV?=
 =?utf-8?B?UHFZaVFmOUh4R0wrbVRlUjJXOXNLT0RtZlBrMzlHK3JBdmhIOTNPUUNETEtC?=
 =?utf-8?B?UWdKL1BHcGF5VEY3U2tYcWVMYUZFWElTQU8xcm1IdVpUeXFGVWkwRnRsV1JM?=
 =?utf-8?B?SXF4a2FlNGlub2UrMnJVZUFwMEFvQ3pZUHhDVEhnWFQwZ1BFRzNLRytFNlNY?=
 =?utf-8?B?R0kxWldDcDRMby8rQmdweW1hdXNNcVpYZzBDYmxXazJIRTV4VzFMV2RLQVpq?=
 =?utf-8?B?cHhNSDlnNGxXOHVUU013djNYVC9GeTdmamQxM1JzZTNiS3IrbGxFZXZNaVZG?=
 =?utf-8?B?dzJjWElJd0FzZzg5NnpieVdMOXp6UXF0VUM3NURvV2N1SlBaZDEyTWNIbzQ3?=
 =?utf-8?B?UU5LQWhjV0N6R3FLNTM5Mm40SnlhWmZBYTlwRUpvZ3QzN285Nk13dWdFcUti?=
 =?utf-8?B?aEc5aXlENFg3YzBJQnQzZ04wVnNuTm9uUjNpbG4vQ2tFOTVHS1FTenAyRTN0?=
 =?utf-8?B?eVhsZVJRemhEK2l5MjR2aGdoRVV2Smt2NGIzTG84U3ZUNm43UUZZTjhJWVNt?=
 =?utf-8?B?Yy9iRkhsZ0g4UnQzZkI1V0J0TjRNYk41am5vL09TN1FMT3BudXJialNaeVpU?=
 =?utf-8?B?WjR1dGNKL2dNM3hpclhTOTZpOEI5dEttVjNRODY1c2ZFL1QxSlJJV2QvQmZu?=
 =?utf-8?B?NW1UUkcrdmVKYUhYQXJ2bkNWUmVZYlM1aUQ4RnMzMjYxQ0IvRDZDZmxTSi9a?=
 =?utf-8?B?Tkp4SXNOZ1ZhTVpzaGFJY1B1TUNEVUhGK3kzMFh3Rk1acXRwNEVTWGR4SnZv?=
 =?utf-8?B?RFhCelM4NUdqN1d2OUlXWndBK05KeEltVkc4bDNWalJZdjJXeW9udWZrcTR6?=
 =?utf-8?B?MFdoa2lqUG9HQitIdHdaeG0wdVhzN0VhOVdFV01DUERwaklxeEpYMEZqa1FL?=
 =?utf-8?B?ZEVhcmJ3Rm9VRmFrazhoamtkL1dtd0RvN1ZaZ0h3Ym85T2RZZ1pzSDdNeE1o?=
 =?utf-8?B?NkN4Qm9GcUVnOW90TUF1WmpUZUxaeEFsUVNubE1iSU5JclNBbnZtWkY2Zll1?=
 =?utf-8?B?a1BtSWtRQ05oRTlZKzhxQ0NOcDN4ZUVZYjJsOFNQc1pZa09xbDBiZHpoNHhQ?=
 =?utf-8?B?bjlpNE5YTWR6WFpRbkluQmNwejRSNENjdVAwNXVOWGhreTlUamUzdWdNN1NJ?=
 =?utf-8?B?cnRqL1E3SVltcDhXRktuYm05L2tUZ1grcXRXTEJvLzgzTmhwelhaR1FpUi9s?=
 =?utf-8?B?THBXdDdoUGhQRzZzVWxxbldCZ3ovTVczYmhSdWVjQVZmaFlRNkkwV3c5OWsx?=
 =?utf-8?B?NTlnblFlVyswVC9tOWpNa0pzMGxSNE55bGJuTEJyMWE1MVV2L0lycVZsSnVR?=
 =?utf-8?B?UnhQN29CcThiWW5Db3I4Y0U1ZjArUlpvYjhIZ1JIdTk5Z0FUL1YwSW5MWVln?=
 =?utf-8?B?MXpEaUtyUnVGblBlbXo1RktuOFV2bENOYTZZRTVjY2dKaVdUOGUzM2xkY0p3?=
 =?utf-8?B?d1kvcG56UnFNbkR6RHI4aGZhczZrbHFiamxOVGowbk1peDZHOU9sNlpwNDl5?=
 =?utf-8?B?Y1RVQ3dYTVgvM3BhUHJ4c2paVXdmSm82NXdIMzVvVlpMT3NiSEVRTUlEUGgr?=
 =?utf-8?B?bFFMK0x6QytldFJTcndiTG8xVjFrV3VsMHdmWm1nRVloK0Nmb0MxdXIrZG14?=
 =?utf-8?B?Q3ltWjlpRGdKN3dtUmwwZFhXenJOOFFXZk5xQWIzcE4vdlNGd1BTSTZ2R21u?=
 =?utf-8?B?Mm5zU2trQU1LRSszLy9JcU1PZnZrbVhJaXl1bnpTVUJjYkRKcHdwMkFzK3NC?=
 =?utf-8?Q?kdlklIhwOMHzROgLhDX4iAo1W?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76edc0a5-1055-4a5d-ab7b-08db9e79792b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 16:54:36.5850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BnVKdAljgaeMYQ63Pv5GOESyw0ic8WL9agGL5lpoW7BWlDFqI82wonmX4FEjX1nlXI7rnAfNJ4r4zgcpjtFcZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5655
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VIAq9DcrrjFfD/dtYYyGC6BV75CWcG0xyt62hj8tDGU=;
 b=wASUS82U7mLfOefnhzZh68DJKFHlldVTlZPSNpFuQmtwL2Z3ksltXbUOFsICEYcYdkw+PR77rOiBeHj6uFUihth0e6EVB5JuTu4oWt3dm6ayK+3KWQ1GLVlZkTP8oV2UWDXX1NuFukv9kl7Cy5aWP/627QtYzDyx7qJEaAUCpc8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=wASUS82U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: Support VF queue
 rate limit and quanta size configuration
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
> Add support to configure VF queue rate limit and quanta size.
> 
> For quanta size configuration, the quanta profiles are divided evenly
> by PF numbers. For each port, the first quanta profile is reserved for
> default. When VF is asked to set queue quanta size, PF will search for
> an available profile, change the fields and assigned this profile to the
> queue.
> 
> Signed-off-by: Wenjun Wu <wenjun1.wu@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice.h          |   2 +
>   drivers/net/ethernet/intel/ice/ice_base.c     |   2 +
>   drivers/net/ethernet/intel/ice/ice_common.c   |  19 ++
>   .../net/ethernet/intel/ice/ice_hw_autogen.h   |   8 +
>   drivers/net/ethernet/intel/ice/ice_txrx.h     |   2 +
>   drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   9 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c | 312 ++++++++++++++++++
>   drivers/net/ethernet/intel/ice/ice_virtchnl.h |  11 +
>   .../intel/ice/ice_virtchnl_allowlist.c        |   6 +
>   10 files changed, 372 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 34be1cb1e28f..677ab9571b3f 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -642,6 +642,8 @@ struct ice_pf {
>   #define ICE_VF_AGG_NODE_ID_START       65
>   #define ICE_MAX_VF_AGG_NODES           32
>          struct ice_agg_node vf_agg_node[ICE_MAX_VF_AGG_NODES];
> +
> +       u8 num_quanta_prof_used;
>   };
> 
>   extern struct workqueue_struct *ice_lag_wq;
> diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
> index 9ab9fb558b5e..efd01874434f 100644
> --- a/drivers/net/ethernet/intel/ice/ice_base.c
> +++ b/drivers/net/ethernet/intel/ice/ice_base.c
> @@ -377,6 +377,8 @@ ice_setup_tx_ctx(struct ice_tx_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf
>                  break;
>          }
> 
> +       tlan_ctx->quanta_prof_idx = ring->quanta_prof_id;
> +
>          tlan_ctx->tso_ena = ICE_TX_LEGACY;
>          tlan_ctx->tso_qnum = pf_q;
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index a0e43599eb55..910525a19a4c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -2463,6 +2463,23 @@ ice_parse_func_caps(struct ice_hw *hw, struct ice_hw_func_caps *func_p,
>          ice_recalc_port_limited_caps(hw, &func_p->common_cap);
>   }
> 
> +/**
> + * ice_func_id_to_logical_id - map from function id to logical pf id
> + * @active_function_bitmap: active function bitmap
> + * @pf_id: function number of device
> + */
> +static int ice_func_id_to_logical_id(u32 active_function_bitmap, u8 pf_id)
> +{
> +       u8 logical_id = 0;
> +       u8 i;
> +
> +       for (i = 0; i < pf_id; i++)
> +               if (active_function_bitmap & BIT(i))
> +                       logical_id++;
> +
> +       return logical_id;
> +}
> +
>   /**
>    * ice_parse_valid_functions_cap - Parse ICE_AQC_CAPS_VALID_FUNCTIONS caps
>    * @hw: pointer to the HW struct
> @@ -2480,6 +2497,8 @@ ice_parse_valid_functions_cap(struct ice_hw *hw, struct ice_hw_dev_caps *dev_p,
>          dev_p->num_funcs = hweight32(number);
>          ice_debug(hw, ICE_DBG_INIT, "dev caps: num_funcs = %d\n",
>                    dev_p->num_funcs);
> +
> +       hw->logical_pf_id = ice_func_id_to_logical_id(number, hw->pf_id);
>   }
> 
>   /**
> diff --git a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> index 6756f3d51d14..9da94e000394 100644
> --- a/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> +++ b/drivers/net/ethernet/intel/ice/ice_hw_autogen.h
> @@ -6,6 +6,14 @@
>   #ifndef _ICE_HW_AUTOGEN_H_
>   #define _ICE_HW_AUTOGEN_H_
> 
> +#define GLCOMM_QUANTA_PROF(_i)                 (0x002D2D68 + ((_i) * 4))
> +#define GLCOMM_QUANTA_PROF_MAX_INDEX           15
> +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_S       0
> +#define GLCOMM_QUANTA_PROF_QUANTA_SIZE_M       ICE_M(0x3FFF, 0)
> +#define GLCOMM_QUANTA_PROF_MAX_CMD_S           16
> +#define GLCOMM_QUANTA_PROF_MAX_CMD_M           ICE_M(0xFF, 16)
> +#define GLCOMM_QUANTA_PROF_MAX_DESC_S          24
> +#define GLCOMM_QUANTA_PROF_MAX_DESC_M          ICE_M(0x3F, 24)
>   #define QTX_COMM_DBELL(_DBQM)                  (0x002C0000 + ((_DBQM) * 4))
>   #define QTX_COMM_HEAD(_DBQM)                   (0x000E0000 + ((_DBQM) * 4))
>   #define QTX_COMM_HEAD_HEAD_S                   0
> diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
> index 166413fc33f4..7e152ab5b727 100644
> --- a/drivers/net/ethernet/intel/ice/ice_txrx.h
> +++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
> @@ -381,6 +381,8 @@ struct ice_tx_ring {
>          u8 flags;
>          u8 dcb_tc;                      /* Traffic class of ring */
>          u8 ptp_tx;
> +
> +       u16 quanta_prof_id;
>   } ____cacheline_internodealigned_in_smp;
> 
>   static inline bool ice_ring_uses_build_skb(struct ice_rx_ring *ring)
> diff --git a/drivers/net/ethernet/intel/ice/ice_type.h b/drivers/net/ethernet/intel/ice/ice_type.h
> index a5429eca4350..504b367f1c77 100644
> --- a/drivers/net/ethernet/intel/ice/ice_type.h
> +++ b/drivers/net/ethernet/intel/ice/ice_type.h
> @@ -850,6 +850,7 @@ struct ice_hw {
>          u8 revision_id;
> 
>          u8 pf_id;               /* device profile info */
> +       u8 logical_pf_id;
>          enum ice_phy_model phy_model;
> 
>          u16 max_burst_size;     /* driver sets this value */
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> index 67172fdd9bc2..6499d83cc706 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
> @@ -52,6 +52,13 @@ struct ice_mdd_vf_events {
>          u16 last_printed;
>   };
> 
> +struct ice_vf_qs_bw {
> +       u16 queue_id;
> +       u32 committed;
> +       u32 peak;
> +       u8 tc;
> +};

Nit, but you should re-arrange this struct to have the largest numbers 
first.

> +
>   /* VF operations */
>   struct ice_vf_ops {
>          enum ice_disq_rst_src reset_type;
> @@ -133,6 +140,8 @@ struct ice_vf {
> 
>          /* devlink port data */
>          struct devlink_port devlink_port;
> +
> +       struct ice_vf_qs_bw qs_bw[ICE_MAX_RSS_QS_PER_VF];
>   };
> 
>   /* Flags for controlling behavior of ice_reset_vf */
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> index 85d996531502..9fc1a9d1bcd4 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> @@ -495,6 +495,9 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
>          if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_USO)
>                  vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_USO;
> 
> +       if (vf->driver_caps & VIRTCHNL_VF_OFFLOAD_QOS)
> +               vfres->vf_cap_flags |= VIRTCHNL_VF_OFFLOAD_QOS;
> +
>          vfres->num_vsis = 1;
>          /* Tx and Rx queue are equal for VF */
>          vfres->num_queue_pairs = vsi->num_txq;
> @@ -985,6 +988,170 @@ static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
>                                       NULL, 0);
>   }
> 
> +/**
> + * ice_vc_get_qos_caps - Get current QoS caps from PF
> + * @vf: pointer to the VF info
> + *
> + * Get VF's QoS capabilities, such as TC number, arbiter and
> + * bandwidth from PF.
> + */
> +static int ice_vc_get_qos_caps(struct ice_vf *vf)
> +{
> +       enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS; > +       struct virtchnl_qos_cap_list *cap_list = NULL;
> +       u8 tc_prio[ICE_MAX_TRAFFIC_CLASS] = { 0 };
> +       struct virtchnl_qos_cap_elem *cfg = NULL;
> +       struct ice_vsi_ctx *vsi_ctx;
> +       struct ice_pf *pf = vf->pf;
> +       struct ice_port_info *pi;
> +       struct ice_vsi *vsi;
> +       u8 numtc, tc;
> +       u16 len = 0;
> +       int ret, i;
> +
> +       if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       vsi = ice_get_vf_vsi(vf);
> +       if (!vsi) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       pi = pf->hw.port_info;
> +       numtc = vsi->tc_cfg.numtc;
> +
> +       vsi_ctx = ice_get_vsi_ctx(pi->hw, vf->lan_vsi_idx);
> +       if (!vsi_ctx) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       len = struct_size(cap_list, cap, numtc);
> +       cap_list = kzalloc(len, GFP_KERNEL);
> +       if (!cap_list) {
> +               v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +               len = 0;
> +               goto err;
> +       }
> +
> +       cap_list->vsi_id = vsi->vsi_num;
> +       cap_list->num_elem = numtc;
> +
> +       /* Store the UP2TC configuration from DCB to a user priority bitmap
> +        * of each TC. Each element of prio_of_tc represents one TC. Each
> +        * bitmap indicates the user priorities belong to this TC.
> +        */
> +       for (i = 0; i < ICE_MAX_USER_PRIORITY; i++) {
> +               tc = pi->qos_cfg.local_dcbx_cfg.etscfg.prio_table[i];
> +               tc_prio[tc] |= BIT(i);
> +       }
> +
> +       for (i = 0; i < numtc; i++) {
> +               cfg = &cap_list->cap[i];
> +               cfg->tc_num = i;
> +               cfg->tc_prio = tc_prio[i];
> +               cfg->arbiter = pi->qos_cfg.local_dcbx_cfg.etscfg.tsatable[i];
> +               cfg->weight = VIRTCHNL_STRICT_WEIGHT;
> +               cfg->type = VIRTCHNL_BW_SHAPER;
> +               cfg->shaper.committed = vsi_ctx->sched.bw_t_info[i].cir_bw.bw;
> +               cfg->shaper.peak = vsi_ctx->sched.bw_t_info[i].eir_bw.bw;
> +       }
> +
> +err:
> +       ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_QOS_CAPS, v_ret,
> +                                   (u8 *)cap_list, len);
> +       kfree(cap_list);
> +       return ret;
> +}
> +
> +/**
> + * ice_vf_cfg_qs_bw - Configure per queue bandwidth
> + * @vf: pointer to the VF info
> + * @num_queues: number of queues to be configured
> + *
> + * Configure per queue bandwidth.
> + */
> +static int ice_vf_cfg_qs_bw(struct ice_vf *vf, u16 num_queues)
> +{
> +       struct ice_hw *hw = &vf->pf->hw;
> +       struct ice_vsi *vsi;
> +       u32 p_rate;
> +       int ret; > +       u16 i;
> +       u8 tc;

Nit, the scope of p_rate and tc can be reduced to the for loop below.

> +
> +       vsi = ice_get_vf_vsi(vf);
> +       if (!vsi)
> +               return -EINVAL;
> +
> +       for (i = 0; i < num_queues; i++) {
> +               p_rate = vf->qs_bw[i].peak;
> +               tc = vf->qs_bw[i].tc;
> +               if (p_rate) {
> +                       ret = ice_cfg_q_bw_lmt(hw->port_info, vsi->idx, tc,
> +                                              vf->qs_bw[i].queue_id,
> +                                              ICE_MAX_BW, p_rate);
> +               } else {
> +                       ret = ice_cfg_q_bw_dflt_lmt(hw->port_info, vsi->idx, tc,
> +                                                   vf->qs_bw[i].queue_id,
> +                                                   ICE_MAX_BW);
> +               }

Nit, brackets not needed for single statement in the if/else blocks.

> +               if (ret)
> +                       return ret;
> +       }
> +
> +       return 0;
> +}
> +
> +/**
> + * ice_vf_cfg_q_quanta_profile
> + * @vf: pointer to the VF info
> + * @quanta_prof_idx: pointer to the quanta profile index
> + * @quanta_size: quanta size to be set
> + *
> + * This function chooses available quanta profile and configures the register.
> + * The quanta profile is evenly divided by the number of device ports, and then
> + * available to the specific PF and VFs. The first profile for each PF is a
> + * reserved default profile. Only quanta size of the rest unused profile can be
> + * modified.
> + */
> +static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
> +                                      u16 *quanta_prof_idx)
> +{
> +       const u16 n_desc = calc_quanta_desc(quanta_size);
> +       struct ice_hw *hw = &vf->pf->hw;
> +       const u16 n_cmd = 2 * n_desc;
> +       struct ice_pf *pf = vf->pf;
> +       u16 per_pf, begin_id;
> +       u8 n_used;
> +       u32 reg;
> +
> +       per_pf = (GLCOMM_QUANTA_PROF_MAX_INDEX + 1) / hw->dev_caps.num_funcs;
> +       begin_id = hw->logical_pf_id * per_pf;
> +       n_used = pf->num_quanta_prof_used;

Nit, per_pf and n_used can be local to the first else block below.

> +
> +       if (quanta_size == ICE_DFLT_QUANTA) {
> +               *quanta_prof_idx = begin_id;
> +       } else {
> +               if (n_used < per_pf) {
> +                       *quanta_prof_idx = begin_id + 1 + n_used;
> +                       pf->num_quanta_prof_used++;
> +               } else {
> +                       return -EINVAL;
> +               }
> +       }
> +
> +       reg = FIELD_PREP(GLCOMM_QUANTA_PROF_QUANTA_SIZE_M, quanta_size) |
> +             FIELD_PREP(GLCOMM_QUANTA_PROF_MAX_CMD_M, n_cmd) |
> +             FIELD_PREP(GLCOMM_QUANTA_PROF_MAX_DESC_M, n_desc);
> +       wr32(hw, GLCOMM_QUANTA_PROF(*quanta_prof_idx), reg);
> +
> +       return 0;
> +}
> +
>   /**
>    * ice_vc_cfg_promiscuous_mode_msg
>    * @vf: pointer to the VF info
> @@ -1587,6 +1754,136 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
>                                       NULL, 0);
>   }
> 
> +/**
> + * ice_vc_cfg_q_bw - Configure per queue bandwidth
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer which holds the command descriptor
> + *
> + * Configure VF queues bandwidth.
> + */
> +static int ice_vc_cfg_q_bw(struct ice_vf *vf, u8 *msg)
> +{
> +       enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +       struct virtchnl_queues_bw_cfg *qbw =
> +               (struct virtchnl_queues_bw_cfg *)msg;
> +       struct ice_vf_qs_bw *qs_bw;
> +       struct ice_vsi *vsi;
> +       size_t len;
> +       u16 i;
> +
> +       if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
> +           !ice_vc_isvalid_vsi_id(vf, qbw->vsi_id)) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       vsi = ice_get_vf_vsi(vf);
> +       if (!vsi || vsi->vsi_num != qbw->vsi_id) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       if (qbw->num_queues > ICE_MAX_RSS_QS_PER_VF ||
> +           qbw->num_queues > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
> +               dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
> +                       vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       len = sizeof(struct ice_vf_qs_bw) * qbw->num_queues;
> +       qs_bw = kzalloc(len, GFP_KERNEL);
> +       if (!qs_bw) {
> +               v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
> +               goto err_bw;

If there's a reason you need to allocate this, the goto label should be 
"err" instead of "err_bw".

> +       }
> +
> +       for (i = 0; i < qbw->num_queues; i++) {
> +               qs_bw[i].queue_id = qbw->cfg[i].queue_id;
> +               qs_bw[i].peak = qbw->cfg[i].shaper.peak;
> +               qs_bw[i].committed = qbw->cfg[i].shaper.committed;
> +               qs_bw[i].tc = qbw->cfg[i].tc;
> +       }

Do you need to allocate qs_bw? What's stopping you from setting 
vf->qs_bw directly here? This would remove the kzalloc above and memcpy 
below. It would also get rid of the "err_bw" label.

Also, does the virtchnl_queues_bw_cfg need to be validated in any way?

> +
> +       memcpy(vf->qs_bw, qs_bw, len);
> +
> +err_bw:
> +       kfree(qs_bw);
> +
> +err:
> +       /* send the response to the VF */
> +       return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUEUE_BW,
> +                                   v_ret, NULL, 0);
> +}
> +
> +/**
> + * ice_vc_cfg_q_quanta - Configure per queue quanta
> + * @vf: pointer to the VF info
> + * @msg: pointer to the msg buffer which holds the command descriptor
> + *
> + * Configure VF queues quanta.
> + */
> +static int ice_vc_cfg_q_quanta(struct ice_vf *vf, u8 *msg)
> +{
> +       u16 quanta_prof_id, quanta_size, start_qid, num_queues, end_qid, i;
> +       enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
> +       struct virtchnl_quanta_cfg *qquanta =
> +               (struct virtchnl_quanta_cfg *)msg;
> +       struct ice_vsi *vsi;
> +       int ret;
> +
> +       start_qid = qquanta->queue_select.start_queue_id;
> +       num_queues = qquanta->queue_select.num_queues;
> +       quanta_size = qquanta->quanta_size;
> +       end_qid = start_qid + num_queues;

Does it make sense to set these right before they are used instead?

> +
> +       if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       vsi = ice_get_vf_vsi(vf);
> +       if (!vsi) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       if (end_qid > ICE_MAX_RSS_QS_PER_VF ||
> +           end_qid > min_t(u16, vsi->alloc_txq, vsi->alloc_rxq)) {
> +               dev_err(ice_pf_to_dev(vf->pf), "VF-%d trying to configure more than allocated number of queues: %d\n",
> +                       vf->vf_id, min_t(u16, vsi->alloc_txq, vsi->alloc_rxq));
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       if (quanta_size > ICE_MAX_QUANTA_SIZE ||
> +           quanta_size < ICE_MIN_QUANTA_SIZE) {
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       if (quanta_size % 64) {
> +               dev_err(ice_pf_to_dev(vf->pf), "quanta size should be the product of 64\n");
> +               v_ret = VIRTCHNL_STATUS_ERR_PARAM;
> +               goto err;
> +       }
> +
> +       ret = ice_vf_cfg_q_quanta_profile(vf, quanta_size,
> +                                         &quanta_prof_id);
> +       if (ret) {
> +               v_ret = VIRTCHNL_STATUS_ERR_NOT_SUPPORTED;
> +               goto err;
> +       }
> +
> +       for (i = start_qid; i < end_qid; i++)
> +               vsi->tx_rings[i]->quanta_prof_id = quanta_prof_id;
> +
> +err:
> +       /* send the response to the VF */
> +       return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_QUANTA,
> +                                    v_ret, NULL, 0);
> +}
> +
>   /**
>    * ice_vc_cfg_qs_msg
>    * @vf: pointer to the VF info
> @@ -1710,6 +2007,9 @@ static int ice_vc_cfg_qs_msg(struct ice_vf *vf, u8 *msg)
>                  }
>          }
> 
> +       if (ice_vf_cfg_qs_bw(vf, qci->num_queue_pairs))
> +               goto error_param;
> +
>          /* send the response to the VF */
>          return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_VSI_QUEUES,
>                                       VIRTCHNL_STATUS_SUCCESS, NULL, 0);
> @@ -3687,6 +3987,9 @@ static const struct ice_virtchnl_ops ice_virtchnl_dflt_ops = {
>          .dis_vlan_stripping_v2_msg = ice_vc_dis_vlan_stripping_v2_msg,
>          .ena_vlan_insertion_v2_msg = ice_vc_ena_vlan_insertion_v2_msg,
>          .dis_vlan_insertion_v2_msg = ice_vc_dis_vlan_insertion_v2_msg,
> +       .get_qos_caps = ice_vc_get_qos_caps,
> +       .cfg_q_bw = ice_vc_cfg_q_bw,
> +       .cfg_q_quanta = ice_vc_cfg_q_quanta,
>   };
> 
>   /**
> @@ -4040,6 +4343,15 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event,
>          case VIRTCHNL_OP_DISABLE_VLAN_INSERTION_V2:
>                  err = ops->dis_vlan_insertion_v2_msg(vf, msg);
>                  break;
> +       case VIRTCHNL_OP_GET_QOS_CAPS:
> +               err = ops->get_qos_caps(vf);
> +               break;
> +       case VIRTCHNL_OP_CONFIG_QUEUE_BW:
> +               err = ops->cfg_q_bw(vf, msg);
> +               break;
> +       case VIRTCHNL_OP_CONFIG_QUANTA:
> +               err = ops->cfg_q_quanta(vf, msg);
> +               break;
>          case VIRTCHNL_OP_UNKNOWN:
>          default:
>                  dev_err(dev, "Unsupported opcode %d from VF %d\n", v_opcode,
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.h b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> index cd747718de73..0efb9c0f669a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.h
> @@ -13,6 +13,13 @@
>   /* Restrict number of MAC Addr and VLAN that non-trusted VF can programmed */
>   #define ICE_MAX_VLAN_PER_VF            8
> 
> +#define ICE_DFLT_QUANTA 1024
> +#define ICE_MAX_QUANTA_SIZE 4096
> +#define ICE_MIN_QUANTA_SIZE 256
> +
> +#define calc_quanta_desc(x)    \
> +       max_t(u16, 12, min_t(u16, 63, (((x) + 66) / 132) * 2 + 4))
> +
>   /* MAC filters: 1 is reserved for the VF's default/perm_addr/LAA MAC, 1 for
>    * broadcast, and 16 for additional unicast/multicast filters
>    */
> @@ -51,6 +58,10 @@ struct ice_virtchnl_ops {
>          int (*dis_vlan_stripping_v2_msg)(struct ice_vf *vf, u8 *msg);
>          int (*ena_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
>          int (*dis_vlan_insertion_v2_msg)(struct ice_vf *vf, u8 *msg);
> +       int (*get_qos_caps)(struct ice_vf *vf);
> +       int (*cfg_q_tc_map)(struct ice_vf *vf, u8 *msg);
> +       int (*cfg_q_bw)(struct ice_vf *vf, u8 *msg);
> +       int (*cfg_q_quanta)(struct ice_vf *vf, u8 *msg);
>   };
> 
>   #ifdef CONFIG_PCI_IOV
> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> index 7d547fa616fa..2e3f63a429cd 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_allowlist.c
> @@ -85,6 +85,11 @@ static const u32 fdir_pf_allowlist_opcodes[] = {
>          VIRTCHNL_OP_ADD_FDIR_FILTER, VIRTCHNL_OP_DEL_FDIR_FILTER,
>   };
> 
> +static const u32 tc_allowlist_opcodes[] = {
> +       VIRTCHNL_OP_GET_QOS_CAPS, VIRTCHNL_OP_CONFIG_QUEUE_BW,
> +       VIRTCHNL_OP_CONFIG_QUANTA,
> +};
> +
>   struct allowlist_opcode_info {
>          const u32 *opcodes;
>          size_t size;
> @@ -105,6 +110,7 @@ static const struct allowlist_opcode_info allowlist_opcodes[] = {
>          ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_ADV_RSS_PF, adv_rss_pf_allowlist_opcodes),
>          ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_FDIR_PF, fdir_pf_allowlist_opcodes),
>          ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_VLAN_V2, vlan_v2_allowlist_opcodes),
> +       ALLOW_ITEM(VIRTCHNL_VF_OFFLOAD_QOS, tc_allowlist_opcodes),
>   };
> 
>   /**
> --
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
