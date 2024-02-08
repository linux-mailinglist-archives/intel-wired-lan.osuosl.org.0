Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E83EF84E66F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 18:15:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9AF304225B;
	Thu,  8 Feb 2024 17:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZC81qZO72NFT; Thu,  8 Feb 2024 17:15:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CA2F41EEF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707412501;
	bh=AxiQiGDNQZuWeD1JfITN2kGF1CS5btrG8lU5fGEr5JU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=a91ZuDZAiJEiAi0WKb5uWP6UEdsRYntu2udKmy+9sgl/c6lODNO4GU8VFsrBIjXEu
	 tf7cJsGsV964CrXxMOeIyIjIAT4iNmQQ+3IVR9ymHyFSt8zkZWKCb8j2IvgOxjgQPT
	 LFT09lobPDjP0GfWBesbZqL7ViJOeUT07f5kib9hFir9R/hmbP23zjuPiwrzbWnU4I
	 IBJr9yoglTzFfmF3Yh2DTO7iYScdJVEZkksRUGYdJnezNqzA9CwfY6RKOfO/h3nRYE
	 UgDv6tomEhSCZK44iGZoLVIxogJfFyb2B/uyqWjc9L5eayYtLuEBvZNEd1sVEb43D9
	 ObYV+rtwVPKqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CA2F41EEF;
	Thu,  8 Feb 2024 17:15:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6C0391BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 63EDF61527
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pe-WHWBlEdzD for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 17:14:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.93.59;
 helo=nam10-dm6-obe.outbound.protection.outlook.com;
 envelope-from=brett.creeley@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7524C61525
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7524C61525
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2059.outbound.protection.outlook.com [40.107.93.59])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7524C61525
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 17:14:56 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSpogTbvJYidEmU1/8Orj/npLrPUANlAvE1Q8ZpGFGwRRhzV5GcaAc7gbb5LxjAoVuqfG5Jjb1BeE9+y3Be3/Jr5cRl1GhdzDLlYj4WAdGXchEo7W8Ra4B4iwpl/qpDTo/cuZVpJOXu4Ms5tvtP7FEs3h20Ad+wKUc83wvHk5ELiMXD5exPK6dA9SwnHw0iEn5EGgfKDRn6dtY72iIteqmawobaBDfbKGpi3bnABvubQcZ6r6fwICKWnT7XbAkaECIybSjfpRXnWGcRbF0EJJXBA37ShOSCmNLEaRdKG316TubSq+FibmLBWGAAMyhKM/6s0zqN12NdHnZgIgxyODw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxiQiGDNQZuWeD1JfITN2kGF1CS5btrG8lU5fGEr5JU=;
 b=E5yPW7YNV7wI/hZWnOh3jNCJUegBpBoFaySOU+o6+QE4frRO3nb+WdMfHOOcBnLxkwZyA3h+tXZZaXLvgOvY8PqK4HlHgrEL/Q5EVIjV/FDadoV4ShnFHg/Lg9ZXzOtaRfE7+QOrh8JW+MWcjY0ZeOp6Fe975jEDs9sZynzDfgvaD10x4vcaIez7pOCcYfMWDsjpP0WcBky+Wo66njGl+ElBYDiCo47bHfCBr1G9BVYbu6T53DGvbZo8PIuhn1j4KgKpGtVKKWyXiDW6WVd0+EyZM4YaF4ikpsqaqD/fH+hHK8931PggcgzikiuDz78n3W2DlcIlq7Oku306ybYtig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by DM3PR12MB9391.namprd12.prod.outlook.com (2603:10b6:0:3d::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.14; Thu, 8 Feb
 2024 17:14:54 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::dc92:cf24:9d0c:53ea]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::dc92:cf24:9d0c:53ea%6]) with mapi id 15.20.7292.010; Thu, 8 Feb 2024
 17:14:53 +0000
Message-ID: <1a5428ff-b5d3-4781-bd1d-f5ca2b6823e1@amd.com>
Date: Thu, 8 Feb 2024 09:14:51 -0800
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>,
 intel-wired-lan@lists.osuosl.org
References: <20240205130357.106665-1-wojciech.drewek@intel.com>
 <20240205130357.106665-3-wojciech.drewek@intel.com>
Content-Language: en-US
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20240205130357.106665-3-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PH7PR10CA0008.namprd10.prod.outlook.com
 (2603:10b6:510:23d::14) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|DM3PR12MB9391:EE_
X-MS-Office365-Filtering-Correlation-Id: f865c8f8-2c1e-4cc1-e78b-08dc28c9777d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HV1iK8fgQgmKSoKiGPRcyPYZWK4cl1u2X3NxtsoeQkAvSddI5OCz0ZLs6b95dvYcQ/MG3wfXdWOqWKsVFFiaxWn5sivJaESi8xbfhrDOKh3zOqMkFXIgS/m1asiA8d19cjQKa32Goq5XqWqEksjZeTRcJHnDZXuyBXWAiC7U3SMgPOxYGchN/ok9pwZp3SG/pbfUgF6xYc1PKBnmZRN9CLoLfMyaBhiKnseWDp9fRin9lPTqwIsg20jOwKgfz5a/dDrQ+S/fEyY172D7v4sakiqYGbzAeCqzwGu+aSxH6NxCKK3Ifpr3/2XLZCjr5eiVt5QG9TD/Jfu3hHBZ2CnkUYZdGTJr0ByLV5Hmk7bsjhgQzIcs/Crm+n54jM/fp2XBl+AuGx8GNAenerTqzA1TEwmFIbjZ5q/85S4YbpxhG61dBivvMl8o+ctu5phZLwK+UHs5YMA4klhyxVOD0lDgXhX6qaNQUoYJhW7F/lwLHXEsmIRz8NLY6XaBLsmVmOlVwQ3c0ajIdf8UFgjOTZO1c00m10kPSXbcJykrZQHtIUH4FBoBQjXEQvrlVIN44q3S
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(396003)(346002)(39850400004)(230922051799003)(230273577357003)(451199024)(1800799012)(186009)(64100799003)(6486002)(41300700001)(4326008)(478600001)(6506007)(2616005)(26005)(66946007)(38100700002)(6512007)(53546011)(8676002)(31696002)(316002)(83380400001)(2906002)(66556008)(31686004)(5660300002)(66476007)(36756003)(8936002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y05QYTNpY1AzY1dWVFREdjd6N2ZqNElpWHpZNUlIZmhETmt3UTExd0lQbU4r?=
 =?utf-8?B?dUNhOHlrZXNCUmxpWXJyMGNTQUIwa3NMSkc0NFZSWGJwVitoaThRZVRndEp1?=
 =?utf-8?B?V3F2NFR1UjkvSTYramcrTHdlb2M3TjdpZFFqNE5teFdqTERvWExCYTdCbmpn?=
 =?utf-8?B?YUtIajVBcmVNWjQrNi91eEhETjBWZEJrMi9xT1Z0V2M4dHIxbVlJd1JiOHhQ?=
 =?utf-8?B?WHJlc1pObnM0TmxiNXMwcHBuYWxjSTY5bndDU3JaL1ZDSGU2ZDdYT2xMSUhD?=
 =?utf-8?B?US9PdWd4YjlMWDV5aXU0aDNpSXZzQXBwWUczclhiRlBMbEJjL0FuSVZaQVFF?=
 =?utf-8?B?eEtvcWdGWjZQcjRzTXhaZHkxcFBvWnlCYXhqZnJ5a3pLdHVlZDNlZ0NQa05v?=
 =?utf-8?B?U3NGMzdtQ3FxUnRIT1ZzVXhXVU1aa2ZUQVo0cDJRTVNCMVF0WWJ3aE1hUjR2?=
 =?utf-8?B?UW8rYjExK3ROcysxZkpaTy9zSThaQjh0ZWFYd2lQY3VFRzBmSkVUWnJpbGYv?=
 =?utf-8?B?V2hvMWYreEJMRHVtMG1BeExlK0lROS9tNDJCVk0rejdYaEZFOWdhZDJFVHJT?=
 =?utf-8?B?d3FJcmlISHNXOTAvVllPTXVHOERxaWVha0t2R1QwU1d3dERWbVNDTlhwN3g5?=
 =?utf-8?B?MjVCTldvSi9vOGZyb1BuQU9yemZPV0xTUTVOcUFuZUVWZ05YVXRBVjEvQ2Jz?=
 =?utf-8?B?OTJFbUFCZVNFcjFyeVJaVVZITUwyaUNyR2JKWmZyTnE5SEVnL1dzZGJBTjhw?=
 =?utf-8?B?dWFpRnEzTjhwaWxUSVJsN3NPMTZqUXFmRUxNM0FwRWRZcmZxUExNSzRCODlz?=
 =?utf-8?B?YWo1dC9FVnBEeDhlMVdNQVJTNFB3dkNabkVmZ0t5S2pZSjBpMmQ0WmZzNlQ5?=
 =?utf-8?B?R1ZWZFVNS0FvckR4MEpPTTdKK3ZxMXNVdjFJc2tSVlZGY3B6QkpTeE5pTmNp?=
 =?utf-8?B?d0hzeWkzdEhWZ0c1dDI0b3VNNUNNSDM0a3orWkVGQTJaeEJOWHFFb0liWWl4?=
 =?utf-8?B?bnN1ditiVklBZ3cram5CQzh1L0VsMUVINUMyaEozWlhGRGhsRVRMTUlCbWZT?=
 =?utf-8?B?L1g5ZkgxTGJQdURLd2dnT0hFVlk0NlpFMUZvQ3RTVEZ4RHc3UXdaUlJlNEJv?=
 =?utf-8?B?U2NIdHFPWklkOHBIeG5jU3ZTOE9PUlk4d0VFbnRZN00zQmhtN0d4K0pUWE5D?=
 =?utf-8?B?U2pPdGZsOTR2WG5LbXB1d1FFMEdWRWpYMWF6UkpzZ1VPRFA4dXY2K3F1YTNr?=
 =?utf-8?B?NjEvVnc3WkhJNUc2YmFzTHEwSUtDcEN3M3l5UXJaRkdaMWdiWGdXRThaMUho?=
 =?utf-8?B?aWlsS2JqSWJKVisrQzhqQ2VNZFhnMFFGZmpacURDRUlSdFIxVVdiUzJyNXFp?=
 =?utf-8?B?WWNWKzBWcG5hd3laMmNjMkw2WHF6ajU2VE16Y0c2NlZGR3hVSGdKTEFacTQ3?=
 =?utf-8?B?Mm8zc1RJMzVoVmhIT0E2dzBEekdHYzJBL2g0Y2RXWW5pV2I4UVNuTG5PQ1Nt?=
 =?utf-8?B?VkMxNXhCOUg3cVU1ajJRY093NGs1UTcxaW5jeG9LeWl3N1pScWJQYjNKb2pq?=
 =?utf-8?B?Z2hWVlNOSjJxSldBT0NwWHlMSHZXZWFqNjZ4Ny9BbTZJZlgwT1FTb2Y4MVR0?=
 =?utf-8?B?eTlwVndKN1BqbTRPelNjVHpMUFcxNW0wN2V2UGliSDA1OE45Qk5rdnF2RmN1?=
 =?utf-8?B?cFZ0Y1I5UENhbTlheU83Rk9sVGUxaDVubW5xSjNLZi91cmIwNzQ1cXdBQlQz?=
 =?utf-8?B?akY4S29UNWhKMU11clVzTmNDd2hsajl0NjdMTXA0ZC9JaDZzWmFFdGJkdVJK?=
 =?utf-8?B?SitHT29MS0tnbmlreUVHVFNqQ1l3Mk5JSzluZ2wzYjM3SFE4bWVzVHBiT3BC?=
 =?utf-8?B?NFhTbjVjMExEeGFSSkxLZk4vSW1RVUlNdDRXNW5MVTUxTEI2ekhvVkVaaW4y?=
 =?utf-8?B?ZGRnTzFDUDBEOXdLcUJhMXRaWkMrWnNyU0VubklRZ216SU12QnN1KzNuT0F6?=
 =?utf-8?B?TXpkWGFycU1jaDVncWhxMnVNZXhQd2dtZEFkcVM2S245c2JqWU1xd29HN1p4?=
 =?utf-8?B?b2RiUStEdkN5eGQ4Z1dFY2dUTVV2TE1ROTRhY0tCaWJ6T05ac0d5MkhyeDJt?=
 =?utf-8?Q?6tZ9V+6dKpbCZuipYp16ijX/9?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f865c8f8-2c1e-4cc1-e78b-08dc28c9777d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 17:14:53.9118 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z2Bt0PxvZ1k3kTdYWyPpFvvDzfdmMLkOXXV0/yLQRL9p+tuFttn4h6OlKLHnIEsRYyN9wHbV/2SN71M1hgFhXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR12MB9391
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AxiQiGDNQZuWeD1JfITN2kGF1CS5btrG8lU5fGEr5JU=;
 b=hn2FPqcR2crc4JN9g1aaf9QDqGRpU6D2mPnpm+q3NzwcuoQXU4ygkKGNkBcGiunmuTl9Nb9De4IKK75OFyrwzJSIQbsSnKZ3saAmhysG8PShIPRoTOLUWQOD9CwYLg+jDRu/UWpkDRiMDCmw9rlqOvIjMF+QrDD6QageWQ8ZOR8=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=hn2FPqcR
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/2] ice: Fix debugfs with
 devlink reload
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
Cc: netdev@vger.kernel.org, jiri@resnulli.us, vadim.fedorenko@linux.dev,
 paul.m.stillwell.jr@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2/5/2024 5:03 AM, Wojciech Drewek wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> During devlink reload it is needed to remove debugfs entries
> correlated with only one PF. ice_debugfs_exit() removes all
> entries created by ice driver so we can't use it.
> 
> Introduce ice_debugfs_pf_deinit() in order to release PF's
> debugfs entries. Move ice_debugfs_exit() call to ice_module_exit(),
> it makes more sense since ice_debugfs_init() is called in
> ice_module_init() and not in ice_probe().
> 
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>

LGTM.

Reviewed-by: Brett Creeley <brett.creeley@amd.com>

> ---
>   drivers/net/ethernet/intel/ice/ice.h         |  1 +
>   drivers/net/ethernet/intel/ice/ice_debugfs.c | 10 ++++++++++
>   drivers/net/ethernet/intel/ice/ice_fwlog.c   |  2 ++
>   drivers/net/ethernet/intel/ice/ice_main.c    |  3 +--
>   4 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 118e84835720..365c03d1c462 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -896,6 +896,7 @@ static inline bool ice_is_adq_active(struct ice_pf *pf)
>   }
> 
>   void ice_debugfs_fwlog_init(struct ice_pf *pf);
> +void ice_debugfs_pf_deinit(struct ice_pf *pf);
>   void ice_debugfs_init(void);
>   void ice_debugfs_exit(void);
>   void ice_pf_fwlog_update_module(struct ice_pf *pf, int log_level, int module);
> diff --git a/drivers/net/ethernet/intel/ice/ice_debugfs.c b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> index 85aa31dd86b1..d252d98218d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_debugfs.c
> +++ b/drivers/net/ethernet/intel/ice/ice_debugfs.c
> @@ -644,6 +644,16 @@ void ice_debugfs_fwlog_init(struct ice_pf *pf)
>          kfree(fw_modules);
>   }
> 
> +/**
> + * ice_debugfs_pf_deinit - cleanup PF's debugfs
> + * @pf: pointer to the PF struct
> + */
> +void ice_debugfs_pf_deinit(struct ice_pf *pf)
> +{
> +       debugfs_remove_recursive(pf->ice_debugfs_pf);
> +       pf->ice_debugfs_pf = NULL;
> +}
> +
>   /**
>    * ice_debugfs_init - create root directory for debugfs entries
>    */
> diff --git a/drivers/net/ethernet/intel/ice/ice_fwlog.c b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> index 92b5dac481cd..4fd15387a7e5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_fwlog.c
> +++ b/drivers/net/ethernet/intel/ice/ice_fwlog.c
> @@ -188,6 +188,8 @@ void ice_fwlog_deinit(struct ice_hw *hw)
>          if (hw->bus.func)
>                  return;
> 
> +       ice_debugfs_pf_deinit(hw->back);
> +
>          /* make sure FW logging is disabled to not put the FW in a weird state
>           * for the next driver load
>           */
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 85a996ad2c1f..9c2c8637b4a7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5276,8 +5276,6 @@ static void ice_remove(struct pci_dev *pdev)
>                  msleep(100);
>          }
> 
> -       ice_debugfs_exit();
> -
>          if (test_bit(ICE_FLAG_SRIOV_ENA, pf->flags)) {
>                  set_bit(ICE_VF_RESETS_DISABLED, pf->state);
>                  ice_free_vfs(pf);
> @@ -5783,6 +5781,7 @@ module_init(ice_module_init);
>   static void __exit ice_module_exit(void)
>   {
>          pci_unregister_driver(&ice_driver);
> +       ice_debugfs_exit();
>          destroy_workqueue(ice_wq);
>          destroy_workqueue(ice_lag_wq);
>          pr_info("module unloaded\n");
> --
> 2.40.1
> 
