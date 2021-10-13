Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF92B42CF06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Oct 2021 01:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF1D660D87;
	Wed, 13 Oct 2021 23:15:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FEl1IQK6g4Gr; Wed, 13 Oct 2021 23:15:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B7F7B60D70;
	Wed, 13 Oct 2021 23:15:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82AEB1BF31C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 23:15:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7D9E760D70
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 23:15:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2aPN0Z68PKN7 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Oct 2021 23:15:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 559C160B11
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Oct 2021 23:15:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10136"; a="214502797"
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="214502797"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2021 16:15:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,371,1624345200"; d="scan'208";a="441845589"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga006.jf.intel.com with ESMTP; 13 Oct 2021 16:15:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 16:15:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 13 Oct 2021 16:15:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 13 Oct 2021 16:15:24 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 13 Oct 2021 16:15:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ith7SMClxjJGzogCECZh7Uo8qgHJU4Lk8o6x4JveAELoD3StuFRyhS4Kr597QO66lgtoKTqNYGZV7CPZVVwnn68xENy1Q2ztY2vqGYFJDGy9mlJjH2qbor2gnZsi40NueY8R3fX3ExJWYb6H6FbASKDheCP+Chp88xaPjEAp/m0y7xQ4nsHK1xAGDsFoGNy1sgXi1OYaJ/vO67aazpFZH7GvEptMpiNP5uTMz94YvHgFuhUbnG7gCTzHO62FvnHjK5dDpuw0YfmKav4lV/QOvXg3bx4Qve/rq5RVLTkLTPr7NmrsOTt0cxpqUJNdNTq7S+ErR+BUi+1HzD1dz4UZLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4hhWBOVCNs3btrFnuNbf/rg4NTVCH9lVYDp4wlITCOI=;
 b=I+STyU4FsGR1yc+O/u+gV4BRtdPqD9mbS/XnohBYtM9F21hvC7CCxB6XJXOIhJSOEexzPL1uhv+C6oqO6S9I2T3MLChB01+CgrOxLr5oCeU9n3jjF+xhhmrIeLLVtz6WhGi1brpOwe3CTWTomai2y/Nu5vbPdDkMtqXHBVk+ScX/2nUUwM14xiebEKH9uDCn1Aena4+Qabfg8c+k7lGpbnR/QMTI/qe9rxAq/R7VpXeBNtDzUYOX71pcKoDCJ2nD7ff5m9lk7kVRFGOSOms0B7GBuJ4zz1RudLeglQgXOe1wLzZCplXhw+602Eeo/MpIAXW1+heuPgz8D0Z6T9bmLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4hhWBOVCNs3btrFnuNbf/rg4NTVCH9lVYDp4wlITCOI=;
 b=Whm5T+sLr/DHnJnkdWaoFsnF+YUQzMRMiy1JVvFLS1LF8euKUWHR9fO5IOCiM+is2blBNTPPLJEmCYPPSRpifbQGAm9+9jbxm7dERGE0mmHJgWv2C4y1/Jn/mYCfnYgUyH1Q/h2dx+3GUSpx/9izDW7Eto+7DPFmZBnOdxXHCKo=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB4914.namprd11.prod.outlook.com (2603:10b6:303:90::24)
 by MWHPR11MB0047.namprd11.prod.outlook.com (2603:10b6:301:68::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25; Wed, 13 Oct
 2021 23:15:23 +0000
Received: from CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3]) by CO1PR11MB4914.namprd11.prod.outlook.com
 ([fe80::d0b6:9cc:d07d:e8a3%9]) with mapi id 15.20.4587.026; Wed, 13 Oct 2021
 23:15:23 +0000
Message-ID: <0215a7cc-0a9e-874d-0962-638b5b2a3489@intel.com>
Date: Wed, 13 Oct 2021 16:15:20 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20211004121525.6384-1-david.m.ertman@intel.com>
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
In-Reply-To: <20211004121525.6384-1-david.m.ertman@intel.com>
X-ClientProxiedBy: CO2PR04CA0153.namprd04.prod.outlook.com (2603:10b6:104::31)
 To CO1PR11MB4914.namprd11.prod.outlook.com
 (2603:10b6:303:90::24)
MIME-Version: 1.0
Received: from [192.168.1.214] (50.39.107.76) by
 CO2PR04CA0153.namprd04.prod.outlook.com (2603:10b6:104::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.16 via Frontend Transport; Wed, 13 Oct 2021 23:15:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: eff84cac-59bd-41f3-5cc5-08d98e9f5555
X-MS-TrafficTypeDiagnostic: MWHPR11MB0047:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MWHPR11MB00478CC02CEF322362AE3C3E97B79@MWHPR11MB0047.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CGwacWP+LD/gtsENvFWgU5QV6HhKNZR+P1i+8Ggs1zJC4jo4b/YrQYBwcSrpI+lq1sqr+fV7XlFK4cNLGaWOLD/UKMfrJUfXW78E+W4YSFiYHNMZrRuq/h56Foxp0I1UyAUTHwAk3gilzUqLQ4JTUt3ub2f3J5cSuTpnmJPhiA+ynxhVchAsOlFLXpjExa+6a7IiAuiu6DrdgsQafrSCa8LOXprx4BcAc97Rj5P+i4Y6Qt0k/etazklZi/+nmsBGw9+rbNATQ/nlT0jA24JXaawi/FQYLOgU1ZW/18aXXvLMXS90ibNuVX3R0EBW6Nav7WpyqojK62PrHvLdAnJyYWJ+zl9GgdzKjzrY7OrYbWIphWTF/EcFngMHgSxMVk33SKZybHOtolcfZznIC0PGrKreYEJTDQ6pUoTztK0wkpx9nxLLjcCI9KzhcPY9hJ5jt6IdyzRILAIzQbcl/t1Zwr5r9kHeRtgrBe48YTfhss3+OSZLgy2/co9HUYnTUQjbCbLqJzYfvYsORli7/O0pwJbDyZ/uRj5QgU3IpFIR6Ai8ZjgQJG6s+Xj72clF4Z0EZmYxxkeefaZnjwlXY2fXNqFu70UJvNz3UIcOg2xokxnHpCICEaisaVUl2OcK1l+1Tlo2U4wa/39y1R4hd0cQfq/LDo5VFI+UkVEKU/vh65WwvCSzBBTumEH8r1so/Mt8ZD+S8aAvcDAXOC64lf1jVthUmZ+MLjZjRjWVhfetXqAImfasVlFsBeEPhAp5WjAs
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4914.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(5660300002)(82960400001)(44832011)(316002)(508600001)(186003)(2906002)(6486002)(26005)(38100700002)(16576012)(31696002)(36756003)(31686004)(956004)(53546011)(8676002)(83380400001)(2616005)(66556008)(66476007)(8936002)(4744005)(86362001)(66946007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVNzZU52UGplbHp1aWdnc0tZQkdMSjJnZ0NZemJIalV1YmlqUnZuS1ZuT0JF?=
 =?utf-8?B?d3gwT0lReDBUWUJGRnZUME1CU0t0MDQ4bG9LRHFxdktHbUJ6RXZ2T2o5Tmd3?=
 =?utf-8?B?dzZSaGdBZjF3amtqRFFXSTdndC9hVFlNY1lHbnpZOWtkMUNSVmduNTYzNGJu?=
 =?utf-8?B?M0lMaVpzaXIxYWl6c09yRHZRdHRBYmpsMHZHVUY1VFpjVDJqaHFxcmxzQyt3?=
 =?utf-8?B?VnNBRlJlTGxQdUlGWUNkaUUyRHdWWkpqNDZWamlqa1JpRzMwREhsMUJWejR4?=
 =?utf-8?B?WlczMkptejhVaFltMGNza0JSOHZUSXA4cFB1eUtKSzM3WUhaK3VwY0NOeFRw?=
 =?utf-8?B?emRKTWhtV0xRdkVNdUt1ZDZxczZFdzdmM201T3Vodk9wZVZxeXdVNHBUemlC?=
 =?utf-8?B?T1lsWDYzYmZlQlBiTHFodzd4UllPNURJVjVIQlVMRFRvdHpNVm1wNUxIU2xt?=
 =?utf-8?B?eFZLc0dheFJzUlpMUDJPYlA0WVJlL0ZWZFVQNGJyWXVpeE5nSHZ0cDN6Rm96?=
 =?utf-8?B?OVduYXJuQlBrdWV6U0psWFhrNldneG4vRXUvdnpsYXI1OThiRDhiQTZHcDVC?=
 =?utf-8?B?ZUtxd3h6ckpNY25LMExCcWdYVWU4bTlMRWRNQUhIcDlDL3pyRi9pRy8zQit2?=
 =?utf-8?B?YWRKYUJHMnlDc091ZVpmeTZhZUNFb1ZLR2RtN1hIR2ZXWTZGNzVpMzlMN1RF?=
 =?utf-8?B?TG9hOFcvSkNKL0ZyM0tBMzh6Zk5WMTRHbXA2QlRoTlVvdEttRG44aHF0N1lm?=
 =?utf-8?B?clc3aFdHQm5lek5lVEY0TUpyMVBCZzFKR0xxZ3E4UHFnNGZpYzlGbjFkTTZv?=
 =?utf-8?B?MzFxV3l5TWdDbFB0Yk5aYlhuYTF6V01YWlZnRUtEL1plMFVtK25PZC9RRmNh?=
 =?utf-8?B?RWw0ZVlrSWJqZndiOXplSktaZWR0eW1QbUVuOXV1TVFTOGREbUtYdzFLelFF?=
 =?utf-8?B?SGJVaTk0VTNNVzNJYnJZenkvV0ZZeUdidTBJUGhTQnEzQXA0am5kclo5UlFt?=
 =?utf-8?B?WW8yZVRoSW54TmhNWDRtSHF5RmxCeU8xWWozWVZEM2FHQUNuSUZvVWFLV0Zp?=
 =?utf-8?B?MzJpQ1FRK3hVWDlDUW9idHhad2lFdVRERXhWbmlMMDZHR2xhWXk0aW0xLzlv?=
 =?utf-8?B?em9FZTd3eEFWQm84VDAxdkJQdDJBRGEwSUFLaWNIZDhZMmxLSjNUY2tvcUJo?=
 =?utf-8?B?amdnUm1QVi82MHIrY0owQkNQcTZpV3FtWk93bk5oYlE4N016YmhNZWJMTEov?=
 =?utf-8?B?MzlGWEZTWEF6NVE1YUk3RDJtR0w1QXZJYnA3MzNVeEd6TVd5Z2JOaW9lL2t3?=
 =?utf-8?B?N29wVERmNUJOV0Q0TzQweENHYVl5UE5Cb1d4aDVwcU5qdUFYeXEwTGd2TjJC?=
 =?utf-8?B?TjQvT3RPUmtncmhFcG9jSzRndzBtL200eHpSVUdXVXk1RmhDZzZkY1VwdHpB?=
 =?utf-8?B?Y09mYjdFbExyTU9nRXRYcmV0ODU3M1lzU3FleEFybDhzb3NPTXFHbFdtOEQ2?=
 =?utf-8?B?S1hiYjBEZFk1WnR2WkRsRG50Ujc4b2JqUmlsNkhOZm5GVmhPRWV2WHBobnVj?=
 =?utf-8?B?emtPeFVWS3NmQWZrNGk3L3owODh0b3I3UHA1MXRMRmt5Uk1mTDJZMXFOSC8w?=
 =?utf-8?B?cUY2YWRZT09ZdEJlUTVaa3hXUko5L1RVMlRoSERoN1RpN21ER3J4UDN1THo5?=
 =?utf-8?B?dVFWQTE1WGRWNnRva1BJMFo5Um5JREJXbGh6WExNMnVaZ09HTFk4eDZmZWRl?=
 =?utf-8?Q?nHdjcATKZsXNpytScyfFv71Z4JnKyCbZD0O2Ops?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eff84cac-59bd-41f3-5cc5-08d98e9f5555
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4914.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Oct 2021 23:15:23.6210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I+L9oBT4IgTYxryWSlqGCHtbusyl/ygV7sZsnzr4zPjd7TftUYZ9Yj+3SNUbhYxwbdVwD51jzv6iFmkar9dCMCwZDWeDNc3OCDcDWdEATaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB0047
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Avoid crash from
 unnecessary IDA free
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

On 10/4/2021 5:15 AM, Dave Ertman wrote:
> In the remove path, there is an attempt to free the aux_idx IDA whether
> it was allocated or not.  This can potentially cause a crash when
> unloading the driver on systems that do not initialize support for RDMA.
> But, this free cannot be gated by the status bit for RDMA, since it is
> allocated if the driver detects support for RDMA at probe time, but the
> driver can enter into a state where RDMA is not supported after the IDA
> has been allocated at probe time and this would lead to a memory leak.
> 
> Initialize aux_idx to an invalid value and check for a valid value when
> unloading to determine if an IDA free is necessary.
> 
> Fixes: d25a0fc41c1f9 ("ice: Initialize RDMA support")
> Reported-by: Jun Miao <jun.miao@windriver.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Please send upstream!
With this patch applied I can now rmmod my ice driver without a panic!

Tested-by: Jesse Brandeburg <jesse.brandeburg@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
