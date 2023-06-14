Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B18C7309CA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 23:24:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5E2F41EC7;
	Wed, 14 Jun 2023 21:24:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5E2F41EC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686777876;
	bh=VcI2Og5agZO8LdTNkE+mANLMnb8fltoMicsZBNr9BWk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n0R/2j6JMqEmiDfdZ1zHNb6zJQ5t4BmVPM5qFM/Gy5JZg0O0rduwPBB5b9JIZExm7
	 LDJ8vQf55GZHAyaVCcCQCuollD1CF+a6HMmJT56Ku46zRwNBpt8Hluid/AlHgUpgvc
	 Ogeq85/OrRxjHikf+ay7AKVIN0L90txoeyENHf0bp31OcsBeHqvTj7v4NoGWC5cpKf
	 WJH2lurM4lRj7/sMDxn/zs/RwhxWbfNktcOD7MynuzW5Bxrx8bgFBDJoqydh3DuaFe
	 3OtQQnBYa7FuUtwJtqdBGgoYaOjoQ55bdq6ByKmgNLutCKuKlCs+ciUh1/LY2WskWB
	 s+uM0UVRFYMJA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IYhggxyU3gBS; Wed, 14 Jun 2023 21:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74B6D40950;
	Wed, 14 Jun 2023 21:24:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 74B6D40950
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D89C1BF964
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EC2C983BA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC2C983BA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qSuNeAy2_W1x for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 21:24:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC8AD83B81
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2085.outbound.protection.outlook.com [40.107.244.85])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC8AD83B81
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:28 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LUpZ8lkfmRgqfi3N20O/ccImg+Thh438UF/0Zx8BLmVIdBBvDg14QqhoEFcLjgcI0Hnd56bC3rZCaKvvY29+Z+8GyJfPet9sZlEAQd2A+Si7LSgflM2FJMGsHHTmWENVbvDtJChPU4vdS/EgjwaIgqg4hjQFIcnibkeH7LxxOPDq546kUJUGKWEmPockbFB3g+dU8yNcldxQNFRAlbqpzJIYuT2WF2IcVEznAXvaL78TXVq2oaE5j2haNj3hFPZjaYb+kJK7aJ2/rEvpZncCZRHNSMo7GP5SBjRwwpU4unMZBHj4yccbZWGHCV3RZPx/SEuIoTp0uZxWm/XJW43XvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5KzyPtgaWau5roy746i7VekCutFmNCIHm/nZOhUZlkI=;
 b=ZchBTjZXIDbRpcx4QTNOmm4EbFUDfzSabsAZ+Z9HBBG+M4wxLcU8gNA4UAvk7BCJ6QlUz9pywgEDNn22oEE0wUHTPtn4YghyK/DNkdIfBKL23rw8rg6MiJ+q7DTbtmxVVpvi1inNKOopem9bEcZIIS2kk7hM5G4U6WZEXK8D3oyTE9nDRiqW/s8V3kUDtbOvnYYL4aPR8ZkytarQ0aeiAIGNisE0zBzG10hYW1gx0l56i5YoyAhSuLH1+3yqrk08tDGA84Ym65Wmi0Xg05bH5pTPnvQ9wmDCGMHVXQKfslyIKfoLhTM0F8kOfz6gTEhvCR4p+CTRARnV1aHWcRgi3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH7PR12MB7163.namprd12.prod.outlook.com (2603:10b6:510:202::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 21:24:26 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e%3]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 21:24:26 +0000
Message-ID: <887cbcd2-d01c-2736-d0de-660de80ef4d6@amd.com>
Date: Wed, 14 Jun 2023 14:24:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-6-david.m.ertman@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230609211626.621968-6-david.m.ertman@intel.com>
X-ClientProxiedBy: SJ0PR03CA0017.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::22) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH7PR12MB7163:EE_
X-MS-Office365-Filtering-Correlation-Id: a488d0de-d45d-4d46-aa2a-08db6d1dbad1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D0SAUKuUB8hqNpXQsm0AvpQFLR1uXya7MOoBzGzX39uUn5GL5cTVPMqQS2+3VclBecYuUkxhESm9rjCR9m/imumesR6t5CubfAvfQMaN9gZwYkEWL/q2YqCZhJ2vUthYyh7jYKf1+uFOC1oL6K4WcjZqg+kOlK/j+NbkoUrVFG75eLb6tOMdae+P772UbKsUxgF3zaH+/gZMFwqgJcIWx+EbvOHRlSjBW6LcijqYkeW9yU3ieQrPM+5kDLMEjvHVkgPbYtLpoVdOhpp47taN/MHNSI+MB1r/6Avk9e1DKM+DxFS4XZp48wAQ0OjTcWovrWoFEQpU/QUSqYf/wd/9b2GUvh89H4vpLCu9y3npPpdPue6ZsXefk06q3v6T0rjxM2oE3p0F8DchbtXSN3AmkPEaFBL9F72BtIKvIxMnkWnZ4PVKj2nYy0TlU6Zv6YhmJYxDoLU7yUpKhrKn9XX5/oO0GhPrMHTLSew/x3ffv65GAVsmbn3IwNXlNuYkDkUuYzHp2+9ZdPTcCyR1kMdLnAP7U1asAhF1Xg6Vg+LiBbEmVmy9vBQvpsbkAhrqAirfRuYz2MIPyPlkYrHjeGEiP5KQAEuHq1fydatEnqE4YvG7s8OSBBiTQfuKVZhhYziHur7wWYchq5B3xxidB/D4Zw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(39860400002)(396003)(136003)(376002)(366004)(451199021)(66476007)(66946007)(66556008)(4326008)(8936002)(8676002)(5660300002)(36756003)(6666004)(478600001)(31686004)(41300700001)(316002)(6486002)(38100700002)(6506007)(186003)(53546011)(26005)(6512007)(2616005)(83380400001)(31696002)(2906002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUdPVTlvUzBNY1pIcjRQMWVMSEhEeFhGbGZ6ck1DREZmVTAxY1Z5TnM1SUdT?=
 =?utf-8?B?aEJGVGR3UkVlcUhnKzhWTXdzVGlUM0ZCK3RuV0JtQUxUeDg0QmlCNTlYWSty?=
 =?utf-8?B?NzBRZHdKQzFiaGRqQnA2YzJaalQ1WC9DY1VUM2J5NlZwR0ZqbHphYThRWHdi?=
 =?utf-8?B?c09zWGNOc3ByY1ZXaGx4dDRLS3owZjJBaDRNUnZMaW5VbzhXRS9FczFUU0lG?=
 =?utf-8?B?V05HYW9MTkRveGUvQmpQTXdVdytLdVJXcXpWR2tHL1RuZ1RtNlpLM1NtdW1m?=
 =?utf-8?B?L1Y4ZWRhMjQyL0VVaWFoZVUrUENyS2hCU1B5aDE0b2prcVIwZmxkaEhYSUFy?=
 =?utf-8?B?S2xyQWp4ZFRNSDE1UitDZ2U0cGFGNWYrWnVHMnNKVEluNndCTW05Y3hHZXNj?=
 =?utf-8?B?VjlaWnk4U3UwcUtHbWJvKy80V3d6SXhybkFZQXZ5UHlNWk91ckdpQzJwVUxa?=
 =?utf-8?B?NkxmZTZKelZMRndwZHlOUk9oZ095Z09mWW00eDE1UXI3aTBBTHBmYTVsRzIx?=
 =?utf-8?B?cVQrSVV3WnFpK2J2OUczNlBTaUJZemJTV3RsaTMxUHdvbisvNjNBelVXVnVj?=
 =?utf-8?B?S0Q1NlRQN0d5QXRuM0hIU05qK3NocmFkOHJqY21KUFN0ait5cWpZWWE2U3Ba?=
 =?utf-8?B?OXBJbTU1UXZjMXF1M3ptWTRWQUpuaUNIWnRuMWRudFBxaXdJRXBWSjBjaUd5?=
 =?utf-8?B?cDRyUm5WV2o2V085MmFpNmZFVG1LYXJGL3p6TmU0K2VTbDMrM2ljQnRsb3Vz?=
 =?utf-8?B?ZW9rTHBaSUFzMVhTUmlBRzlTY25HaW9uWTQveHRvWVAzOFNpV1RlVWxJYUFq?=
 =?utf-8?B?TmsydEFGdWFHZkRJOTRWR3pGbkM1YUs1b2h3THBqMFhCT1djUVFRMGUrNXBQ?=
 =?utf-8?B?OHFjZFBicW96K20zSDcrdnl6TDB0MUk0aHJtZVRTb1RtdDBCRXhzdTJ6L2FD?=
 =?utf-8?B?ZjkvNmhoV2l1dGlNNVE4eFUrcGE3WjREQkJvdVFJb0w4MnIvQkh3T0d0TDcw?=
 =?utf-8?B?N3g3Z0Y1WmlyMzJreHh0dExqM3lOalNOamxkeHJVVktkZ01ZczVoanhEazNE?=
 =?utf-8?B?amRBVEUvdXlnc1poZmdLNG40TlNNL3BKdjhMQzE2UVJBREo3dXdweFJHVWNQ?=
 =?utf-8?B?bDl2emhXZXdkb0JrV21TZXhVdFlQcmZWc01hNjJUR0tLNVpDekxINjhJbHVm?=
 =?utf-8?B?dkRyUXQ5QTNFOGsrbVFGcXcxMmQ2Q2g2cmtQc3gyZDRhbW5aUXRDazBKSTd0?=
 =?utf-8?B?YUJybmNwRDJPeTlONFZtSHV4bTZ1QTdwUEhvY3VQbGNNSkRXYm5FL3o5Q2Yx?=
 =?utf-8?B?cDU1YWdieVlxem1ZbHljNmxiTjV0UmIwRlpFTVRudjQycUdjZEh3WTg2c1BU?=
 =?utf-8?B?T1NZbFcyTVJ4MEN0cSt0SzRxbkQydTZNa3l1NXNnMWpyOCtwWlYzdDhPV2V0?=
 =?utf-8?B?YnIzcHZXc1NRRDhQTng5OXREOGM0NDNCM2RDOVY2dmlDUTFGbWV5cjgzU3dx?=
 =?utf-8?B?TEJHOTZGU3UrelZiYmJMNTZVeEFVMjBEL2FaOUpJTTcvY0RiTnYwbEQ4S0dH?=
 =?utf-8?B?L3BUMlpZaXdMT2RicmNQNjd1RWZJWHhJSWxOYUNTNHhDbkttT0d2MDFETFA4?=
 =?utf-8?B?N3NTRHBRNmp6aVduWWUyZDBYc1FtbGhSeWhubStqcGF6Z0I5cFMva0pIbHJU?=
 =?utf-8?B?UGs1eDUzRUk2bmxHRktpS0YxRVovUnBlb21KbnRCc09TZnpoY3RHL3RRU1Mv?=
 =?utf-8?B?dXpvQWtnbU5sdDM5THJnbHhYM1hGV1k3SHdUMmtjVVNiMGtyS1A4L0ZLK3FM?=
 =?utf-8?B?alJiM1ZKbGlOczFOVFYwUmFKd2hWd0d4Q0p4TEkxREUxRUpoV0ViaUVHRWRq?=
 =?utf-8?B?OVFMM2pOSXkrSWx1MGV0MEsvdEhXbUFFZHRQNk9UU3V2YnBBcGZHTTl6V0Rv?=
 =?utf-8?B?Qkp5ZGJVN3RqRFBLQjFCK1cyQjJHcURicnd0dkRpVzM0KzlMSmZwaU1RdG1u?=
 =?utf-8?B?K0V1TENEVFJZaUxDT2YzNXFZVytlNCtsb0cwb29YckJwNFB0MS81QURTNTcx?=
 =?utf-8?B?dUZLZWh3ZVJRaE1xVmlTZWoyREw1UlhGU1N6aDBIc01Ta1QzUjUvVGlqekI0?=
 =?utf-8?Q?+tM6nZ4xBhHpNl0XlAfaLMaTc?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a488d0de-d45d-4d46-aa2a-08db6d1dbad1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 21:24:25.9774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xy3yYTCQj/+sEokK4v/q1hIfq1y4p+a5sOwa/izhVCSjuWTD7nFupqeCPfsrY3x77P5WRQJvEkfJOpuH3Ng4hQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB7163
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5KzyPtgaWau5roy746i7VekCutFmNCIHm/nZOhUZlkI=;
 b=xYBtmA8Ufyj9l/AZXoGHlNzR2yIeiv+KbVpao86b1D/ZILwh4EJ0NXRJBf5/POmOBJAv/ouatc1qofLHi52J0d/F5NSq/xHcWiyDr7TOPd8Fz+gE/UbAM/iLMWnTm05z2DyA/uyFZUG02KAWVFzdqBdTsfkeH+3Zkvv1LYZ1VSE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=xYBtmA8U
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/10] ice: process events
 created by lag netdev event handler
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/9/2023 2:16 PM, Dave Ertman wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Add in the function framework for the processing of LAG events.  Also add
> in helper function to perform common tasks.
> 
> Add the basis of the process of linking a lower netdev to an upper netdev.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c      | 535 +++++++++++++++---
>   drivers/net/ethernet/intel/ice/ice_lag.h      |   1 +
>   drivers/net/ethernet/intel/ice/ice_switch.c   |  10 +-
>   drivers/net/ethernet/intel/ice/ice_switch.h   |   3 +
>   drivers/net/ethernet/intel/ice/ice_virtchnl.c |   2 +
>   5 files changed, 478 insertions(+), 73 deletions(-)
> 

[...]

> +/**
> + * ice_lag_reclaim_vf_nodes - When interface leaving bond primary reclaims nodes
> + * @lag: primary interface lag struct
> + * @src_hw: HW struct for current node location
> + */
> +static void
> +ice_lag_reclaim_vf_nodes(struct ice_lag *lag, struct ice_hw *src_hw)
> +{
> +       struct ice_pf *pf;
> +       int i, tc;
> +
> +       if (!lag->primary || !src_hw)
> +               return;
> +
> +       pf = lag->pf;
> +       ice_for_each_vsi(pf, i)
> +               if (pf->vsi[i] && (pf->vsi[i]->type == ICE_VSI_VF ||
> +                                  pf->vsi[i]->type == ICE_VSI_SWITCHDEV_CTRL))
> +                       ice_for_each_traffic_class(tc)
> +                               ice_lag_reclaim_vf_tc(lag, src_hw, i, tc);

Seems like indentation got messed up here for ice_lag_reclaim_vf_tc()? 
Is this supposed to be under the if block?

> +}
> +


[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
