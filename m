Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D59581BE0D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 19:20:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A987E424DE;
	Thu, 21 Dec 2023 18:20:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A987E424DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703182818;
	bh=03Jed4Id6mAGojvs2fEmtgaU9qYOUr0EFMgiLWmbHSI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CMvpIofR3ftcw4j0BakRJOiWngaRzyhNmLWZChcTlu99G/xqVWCV5yBwgwQ9V1mW6
	 lW9NgX8yn3FrIIo1m9/qpEK3EfoLYqRc3EKHsBdhtop0wHISAc1mKjkYTLQd46v1vP
	 cl5lCmiuF7823eDo9pdfM2z2fFkHvB2nStEQMAy2Q9oKy5ghGatltk7wXBx6ED6Hvu
	 pfTotxmabOoE3sbP/vJbPPITAweJZNthTzikWO+ZCI/oCboGupPEL/9bGJ7YTVPOOW
	 9fMbomt0i6VEuCGO4O7i/51Pd9VShY9VthXLFx3XzU7IA8AyHfVW5l4cSMtNh++rrY
	 txIQX4AtKoFlg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GoPK959L_Pxs; Thu, 21 Dec 2023 18:20:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80C05424CC;
	Thu, 21 Dec 2023 18:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80C05424CC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 966791BF349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 18:20:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E363617BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 18:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2E363617BC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c6ITiAobVNig for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 18:20:11 +0000 (UTC)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2067.outbound.protection.outlook.com [40.107.93.67])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CCA75617BB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 18:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CCA75617BB
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nSlcn6eVR6ahRtbf9mIZ1uj9O7VopEFiJPEXNZ/igiFw0T82opGe5OsYYYzxu/hMbWrl0+J7OxMiBkaamDkgg+CieEYcjVQT9ltzYMoqApCfq4vZ9kquCDKYZRuWW0Lj0y4IQk2U4+PBotsTVjhPbw1N+tMwrOSVTdi7B3d45uDhcRF3j3k4MoXPu6i1WTlafip8YCuZZx9PNBMCzmPkwMiG9m3xK7BT3f9RLrWrD+Nbl8hbbQLQzFpNuj1ZZFLF0bVYvibpwRJdzBqiawy0wab1UO0metcewujnuzbFEhHPhNG+QfJe67YDJI9dZrT5F3sxDlgXh0rizmlJOQirUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W/jZTRuyXvnollSlnB+ZpPMwzeLdXxw69O49Opui4p4=;
 b=St2VpAqID5Gdk4/aPYumjYp6m+Mm+sEw7zCtpFG5/cN3SXFZxN/FSk0eH/oVakIGpkWotkANxVdBW3oBA9hXrIsTeWgzK43sO3p9EFfjRT7qpfXIcxzmQkhnT7hCVGY3JAjBzZS8WNMMdKnjPbKLtl/B+GeGAro93aCBOR2XM2rmw/8DnTUujpT1w4TmleP8gpwTKnaAld+EvL0ibzCPa3PUqxPkTuVYcr/k0FEIKWRNUpq8S9VfOKvovz4gdPTX+Ee2V+SjYhdcckZW/UOcMj7gUmkSGeGOT7ZjVKhGi1XrK7AbWrQizHS2gJQ7+9sHaTxldoz41EMpK+EMjvarVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by CH2PR12MB4939.namprd12.prod.outlook.com (2603:10b6:610:61::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.21; Thu, 21 Dec
 2023 18:20:08 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::bec4:77b3:e1d1:5615%5]) with mapi id 15.20.7113.016; Thu, 21 Dec 2023
 18:20:08 +0000
Message-ID: <050f2151-6dd3-269e-dddc-941d6d343d76@amd.com>
Date: Thu, 21 Dec 2023 10:20:06 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Karol Kolacinski <karol.kolacinski@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20231221100326.1030761-1-karol.kolacinski@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20231221100326.1030761-1-karol.kolacinski@intel.com>
X-ClientProxiedBy: PH8PR07CA0008.namprd07.prod.outlook.com
 (2603:10b6:510:2cd::16) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|CH2PR12MB4939:EE_
X-MS-Office365-Filtering-Correlation-Id: af2581c8-3182-4f9c-c563-08dc02517666
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EeAJd9Snk5ch28mVyqNoHPl+icSAhgGdSsjFveU1JndukWBVcuTOIBuUQIUmZcNZ8UkDgoUvRMV/p0c8nont6cBgTv121rtShp8nhtW2X5GQGUrh+gjMmNbNcACtu0mkyovAwLLd6+xQJbH8bRiXSHx0TN9JGpeuJo1ZYTXAmwXSb3yW2Gsmjl5+vz/3878tMNzMipfbPqj9EgWoBtBVx4ZVMyb4YIoptQJJSbS5CDuE2RMyxSb0H9ktArBThe/MXVFTgLJx5m+vZXJZJeHVf73uDr03i0tgxKdPVtQMVX2iZ/Wqi/gMspuXkBsD6PdLCA4TJDY5LoBJAjfeCikVdLChPss+CHBwY4lZgAeP1qPV1DjT5ktn1AhAGIkI6cZimNpLWCLgr6ARNiOh4GSZVELOoZkhLAs72ic839+PRS3X4TiXqe8tZ+XHDkFOzvcK6t8BsmERURGyRP+YqRfV+y8FA23MlO2m6vNkdXGI2W4Gujf9iEYDBGpPHnk/ud4R9c4gB2+lWvrzzFF0rXDP8gja/txRssGxP8XC/RKDnZtV3aubKN2Pkyk1VMyVp9L2anT+06PD7Vl+GPjjx17ozK3EMosbskA/LJCkSFJQGIncsduNjIn0TnRAqqEGNfFNarcoVbdWUljKfNdMjZPGoVjYwNbSTjGTWth+mkAepgG/d7yrxxO1x8DqAH21bBBP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(376002)(346002)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799012)(451199024)(64100799003)(66556008)(26005)(66946007)(66476007)(2616005)(478600001)(31686004)(83380400001)(4326008)(8676002)(8936002)(316002)(6512007)(6486002)(53546011)(36756003)(6506007)(5660300002)(2906002)(41300700001)(38100700002)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWpFTTBhOE85UnIyUGFuU0xvMmpjTEhMenU5UmhFVjhRKzJrYWZFdERCT0Nu?=
 =?utf-8?B?enJCa1FPaFc1M3pPVCtjVktRSHk0eEpDRFljZEFsYkNQaFVrR1ZDa00yUGZa?=
 =?utf-8?B?c0dzMm9iYW5xanhzcjJMRE9QQzFTOFJLUTlwTVlRTVVnamFnZURMVzJNYXRF?=
 =?utf-8?B?MkRMeCswdk50MGxNQjZpNmtjZG1YTWxleGVZRWJZTEFmMkUyb0p0ekRkcXRa?=
 =?utf-8?B?RWloSnJTOXRFaVBXOHBjdlczYnZQSUZ5cnZXaFBBQ3p5eGt5a1VBakZ5cEJ4?=
 =?utf-8?B?MXQ4VHRQaWlYZWNrSDRpVUtLK09XNVhaQ1NJeS8zN25XTTk5bHNCejE4TmZY?=
 =?utf-8?B?YzBoOVI5bmt4VEZFTHZXNmlWWU1Tem9vbWJkN0Q2bDJadUJSclUySTRnckhv?=
 =?utf-8?B?dU1ZMGY0YmlVRUNxNEtpclpQL09wSDQ5aDFhV20vaGFxUWNZUnMybWZCUExN?=
 =?utf-8?B?Wm1NQitXdnY3dDBDZnloUFJaSkE5Wlk5RXJGMUd4NnFDTmk2K0YxVzJQWXJp?=
 =?utf-8?B?NjRqMXV2YU1OZ0RFL0MrZVROYVo4bEtKV1JYMXFnOVBxcWFmbDdxT3NmUjJM?=
 =?utf-8?B?ZUpLOWxMVlNrSERyaldyOWhBRWhzcnhML2VjTi81VG51VWw4SlcxWlFibjZP?=
 =?utf-8?B?TnBPa0swUENxVlRVR3FjK1dOaktxOTBHcWZhSXlpYU15ck1PWE4zb3pFczd0?=
 =?utf-8?B?WkY0NTlXMDYzTmswRHY2eFkwaWhvK0gyWlNnTFVzZXRRbEl4MnoxV3N2NTBS?=
 =?utf-8?B?UzAyckI0WEl6bzdBNWZtVlJ0dlkzZlV2MThXUENPVWlZWFlLdUloR2QvV3RQ?=
 =?utf-8?B?UDA5OFNsMFJ6K0RYMDk1NXJLdGJyQmlUbzdqSnR6cWd5VERzdk9RSHFuUkFG?=
 =?utf-8?B?UnFNYnpyM2Q3Y3lBL0J6MHluMk1LWlZEZXhyME51RHVrZHR6S3M0YzNHOG1q?=
 =?utf-8?B?aTdnVmZYRVlMaytYU2F4elcvd0FRQ2FmRngxMHNxeEw2akJPa1JkT0VraitO?=
 =?utf-8?B?bTF1TzRTR0V0TWhRdTUrbmMyYkh0ODc0OGNBYit5WWlqTjZtTkxyaEtVMFYw?=
 =?utf-8?B?SU9ZOW8vMWtXUVB2YjZHckZPNUdBSVpneStxTlRzSjBmdzl3Slg1bUVPellv?=
 =?utf-8?B?anZLTlJPRzlKbUhodlhNc0JVSEQ0WTVPSmp2eTN1bXgyUm1LR3ZXdllPcVdX?=
 =?utf-8?B?ekl4OUZ5bWRZWDlsQ0RMRnh2ZmE0WkdRQ0dqK2h6dEl1U1VkVEE1WmFWZ3Vp?=
 =?utf-8?B?Vk1EdEVlTnpLN3lsdis2SzRzYlZiSVVYWXhXZkFkRytWaGtqWjRaQjQ2Mjgz?=
 =?utf-8?B?dGpEd2x0VkJ6TXd5aEZDb1RVV3VsUngySnZ2RFI3cUVZRXM3MERXbTdRYk84?=
 =?utf-8?B?R2FGd3pUcWN1ZWhmZjEwTDhJZWo2N0NSNFprdy9MWTJKYjB2V0NIeVhDN3pQ?=
 =?utf-8?B?a243dnJ4bWNybmthY1MvYXdpQkZCQTdkWWl0SXFQd3RKQTBUdm1jbGlsVk43?=
 =?utf-8?B?Y0xKcm1VbDhyNkdlajU1enJydEVKOEV2dDJUeEhpQlByRWVFV09HQ0JTWjFo?=
 =?utf-8?B?Uk50cXZOMFQyZUJqUXpVSGVhalVmbG9ubEZzYXBTN1RsekFQYTJVSFdpYjBB?=
 =?utf-8?B?czRWeUNTREZBbXdEL3FNaTZ4ZFFuaUJMeHRRbmhnWnZEZCsrUW1rcU9zL0sx?=
 =?utf-8?B?czRETHpBNnVTWVNBNU9Wc2VpR1c2dWwyV0k4c2txc3ZvQ3dQNHFaTWtRK2Y1?=
 =?utf-8?B?ZzBFYTA3Rk4yekdsaE5TYXB3T0E0S1lndy8xYk5rNTZVZHh3VjdCVVJhb1N1?=
 =?utf-8?B?Mm5iR2UvbFV5d0RJMTMvMVY1TnMrQnZnS3Z0SUdYeVFTV3pVcGtmaDJUN3Ji?=
 =?utf-8?B?V3FQNUdpY0FxQ2hhSlNUaE5SWGhpeVhQMXVwRHpSNzVqL1lqRW9HVzB6Ny9U?=
 =?utf-8?B?LzBCRXl6SkFwQ2tqOFFibVh3RTlDRk8yVTAwOTNOeG93ckxNZ2NranlsYzlO?=
 =?utf-8?B?Wjc2NGpsRTNOajBFTlAvbkxpbUtBNkRLQ3laNkFHYWtkNk43RG12c3ZLU2hY?=
 =?utf-8?B?TXhYbUpKLzhubCtKZ3k1Q25ueVVOMDNtNkFyV1dxTEdxaWloQmVGalg1ZHRD?=
 =?utf-8?Q?2fT0e4HuevPelcZl0Gl0q5WxK?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af2581c8-3182-4f9c-c563-08dc02517666
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 18:20:08.3604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8whv+E3Q+hM2fLA5RamSXGL+5Sl/MrEL8mM9QVqrfGwjNlKiuFxORKfRAQHt9QeqQdTN1F4gD1UE2M5g70Mllg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4939
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W/jZTRuyXvnollSlnB+ZpPMwzeLdXxw69O49Opui4p4=;
 b=bGsNZq3MSOKW9D97xeQvkuUJPMFicHVeokieepuFcKldi4XekUMOGHCA27WiX3FPTpxTZvKvZ/T1JH7ZHzt+RT8ZW2sWmzfzjbqLPap3TnUb7kwggoOm3fzL0Clmnj2TeDn0B3Yzu4laAu/mkHMZx8tYPpNrDL7/vIS5X/sbh84=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=bGsNZq3M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-next 0/6] ice: fix timestamping
 in reset process
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 jesse.brandeburg@intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 12/21/2023 2:03 AM, Karol Kolacinski wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> PTP reset process has multiple places where timestamping can end up in
> an incorrect state.
> 
> This series introduces a proper state machine for PTP and refactors
> a large part of the code to ensure that timestamping does not break.
> 
> 
> Jacob Keller (5):
>    ice: pass reset type to PTP reset functions
>    ice: rename verify_cached to has_ready_bitmap
>    ice: rename ice_ptp_tx_cfg_intr
>    ice: factor out ice_ptp_rebuild_owner()
>    ice: stop destroying and reinitalizing Tx tracker during reset
> 
> Karol Kolacinski (1):
>    ice: introduce PTP state machine
> 
> V2 -> V3: rebased the series fixed Tx timestamps missing
> V1 -> V2: rebased the series and dropped already merged patches
> 
>   drivers/net/ethernet/intel/ice/ice.h         |   1 -
>   drivers/net/ethernet/intel/ice/ice_ethtool.c |   2 +-
>   drivers/net/ethernet/intel/ice/ice_main.c    |   4 +-
>   drivers/net/ethernet/intel/ice/ice_ptp.c     | 231 +++++++++++--------
>   drivers/net/ethernet/intel/ice/ice_ptp.h     |  34 ++-
>   5 files changed, 166 insertions(+), 106 deletions(-)

For the series:

Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> 
> 
> base-commit: 67b40ee196fd2fd6d9b7f9b58912587c837bdc39
> --
> 2.40.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
