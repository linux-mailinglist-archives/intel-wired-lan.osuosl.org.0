Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5312277E7A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Aug 2023 19:33:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5271408BC;
	Wed, 16 Aug 2023 17:33:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5271408BC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692207180;
	bh=W0cP0QRBXlDDLrIU9TpnFOrxPLbdoGmbWrc6n/pqEi8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VDpS8aoqGkFllaVTIwVpy3snfakc4XNeCudBwv48+ppcZv/F+Igrz/THEzfMeBUMF
	 cAIGAnOLDkjxqFaTprSXo5ZRP+jjgrxL8n/HlVXWtDDQ4rBzag1IMy1ojiGUia7MQq
	 pOsovQCq/ho1U3lFQ+bFMnsYr7LH/psViZTGoRQLs8Nv5MK0J2O81NRZEX2VtpCpry
	 5x0XnBHpJsx5mpUVqNhltmXl08Xr6fql7ww4XlQ44IubjpEUkV+uBkAyPKrofzuPMe
	 XR2sgzOwLcqawkmbHAtZ5sJQs+MKRP53POjn08wrAxjA9bxHfaVQxNV1A4K41VHA9A
	 0yTeyD+AEamoA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e509ATUC4U16; Wed, 16 Aug 2023 17:33:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B3595404B2;
	Wed, 16 Aug 2023 17:32:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3595404B2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B37A11BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:32:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7A645838DE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:32:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A645838DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qxGRts-nUxvu for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Aug 2023 17:32:53 +0000 (UTC)
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2058.outbound.protection.outlook.com [40.107.101.58])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DD34838B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Aug 2023 17:32:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DD34838B3
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fb/svFw2Kn3iaPHP/DKymAE/K8aooDBlDr/roq2Bxigt1vHeragAQ+tMzdkL2yt6SBB7O9CzfZpvycQvdjN62Ex7g6/9KHzuHotYPhQ8o+4vR5n8dw6fDt+cJhVVXS1D7es6U8D478q+x7vNGaaSH9+RIoJchei0HNOIsi9rqc5RWXwS37jXCk2L2N/niYkBSWKaKBRm933aiWeEpEtBPdBL8C4Aof/docLW7+lEJOv9PwbUppO1RD/KMOzQdbT92ikwpxlOdmZVgAUqrqP4gyzvLJiOs0HeurmftJ13fGs91CvQT+6GqTIGQJJsRyhXbEPi75CvFIGa88P3t8lDPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QRhi0NYSyynfNWuyjd6WRuLytm7DQB4Pysh+taDYNRw=;
 b=gn7QYFxU+kE/CKorGcHkKtVcmqtwP5HP/JriDSTihKtMM2cS+Sup5x9fcHdpbQlbnFpv0UsIvIOzAjCgtyIVuWG/1kwdeJbBd/PdVJIQryuX17OgCA1V///8poOgcJcwR/DBAYuBciIZfZUQPdbm7ttAELjv+rhKedybtR3VLAOO1yZP+DJmB/0gfjxDf70lKAl+rCzPCe/tKdejDvfo8jeQnmghyABUDs2t6C3Qzt6bztNLIgme7V09rNFpFb2ww/1FY7PemTpCyxlYZiDa8N05jGh5zt0Qw9MqZELTfWE2z/K+HPCb9cTVv2zmIKUriYrOyvgmzPui0k1pouZBUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by PH0PR12MB5420.namprd12.prod.outlook.com (2603:10b6:510:e8::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 17:32:52 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::ee63:b5d6:340c:63b2%5]) with mapi id 15.20.6678.029; Wed, 16 Aug 2023
 17:32:52 +0000
Message-ID: <d7d6b96b-11b7-fc6a-90ce-82deead74b89@amd.com>
Date: Wed, 16 Aug 2023 10:32:49 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Wenjun Wu <wenjun1.wu@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
References: <20230727021021.961119-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-1-wenjun1.wu@intel.com>
 <20230808015734.1060525-6-wenjun1.wu@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230808015734.1060525-6-wenjun1.wu@intel.com>
X-ClientProxiedBy: PH0P220CA0013.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:d3::11) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|PH0PR12MB5420:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ff0f735-a809-4f31-bca2-08db9e7ed165
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x2/Ve5XqRwviLeIx1rWPa+brDhd6m7g2xjAxWqUDn+el0qeMz5qP1KSj4TfYrXusDXZ/Kk/lBuE1UJe3ktMVGUeIARSo2RQE6PjMOF78u5Mw8kJc+F1CaoCUXwg32hnLVWkeXiDhX+9h+itBdez1N+v7GH7FhMgCl3tjhUJyH5MYOda2Oya1fN6eiEhqiOBktq3c+RmYOyGEIdPcK45yv+tNm5siALtCT+JlXKFiD90jVkmDFXKRP+qVEgHjWJeNTMV3CNDb5a5IXy6FYZ+YjoMKu/Ef7r2UYyR5VpNYL+xWriBbGdUJw8JJe8pCvGHVk5qNKqp3WbOycekcU6NVAcZkq3SSPZALN0zaZVIgGS5A9CWqze+yOKLoqLZo+U3udtD5zpTJeuPfjvnZdEXzv/kuqoJ0DmHJ3rQWOIPL+rUoWUZ/YfF3Y2DswCo/NZdeYUr/TrXazOZ6jPDqHw3PlkKwxsN/yQa2b1BwhSggRwYCKHsJnrw6/AT5ASBxyf6brVWDlgXBX53tb6bsJxHrj9hhTcEZbXj7LaX8xzFs9lm6uJFBtNiexel9qph8hj498ZdOCV6Z+JlOy0kLkUP/x0PpgAEogEQq12qC+eGRYXqbcyHs33cGuzyUgTGy/S2fUVdQde3pef/3uMHWS6kQGg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(376002)(39860400002)(396003)(346002)(451199024)(1800799009)(186009)(2906002)(83380400001)(478600001)(31696002)(6506007)(36756003)(6486002)(2616005)(6666004)(6512007)(53546011)(26005)(5660300002)(41300700001)(316002)(66946007)(66556008)(66476007)(31686004)(8676002)(8936002)(4326008)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWlaa0FQbVhkdWFrclF5YU9Rb2JZSDFkUUQ4S3dTZjdzZ3BKeUMvZlRqbElT?=
 =?utf-8?B?SEl0bEZPVm1LeWpuZVpvd0MycDR2ckR6aHFZVUQzbWx1aHZzUjlDeHdoMUJP?=
 =?utf-8?B?N2k0NmNoZ3FBQU0vaWt0ZUJsRzgzVGxUQTdsZFFTT3M5b1ovQ2lkRlhyZm9E?=
 =?utf-8?B?cGxIN2F3U3Jqc1pNd0lyWVlQZmFqTk5wS1h6L3Frdkd1UDdScGpqODc3L2xH?=
 =?utf-8?B?bnpTMGxNbHJlT3pBNGh0UGFrc0dLRTJYa2JZNFlZVVpJaWdUOEpjUXJ2d2xH?=
 =?utf-8?B?Yk5RUngxMisxQ0JreXBZYkNkNGVpb3YwTTdkVXRhT0hKSTBGSFpmZ1MxalV3?=
 =?utf-8?B?Y0FPenVnc0cxbmt5MmUzbk1ONEN1UmZ5S1J4V2FGKzNTbUdFclNER2RvazZT?=
 =?utf-8?B?S3lnakU1WjJsZGdyVWUvRjFiWnhLV1ZaaVBFTmQ2VTZIRS9oVXIzVEQzRjJp?=
 =?utf-8?B?RnFRQ2NBZkNUNXNDRjR3RFpId1RjaWZyK0VnT25WcFN3eG9uZWZ4bkw4T05p?=
 =?utf-8?B?Y01QK25EK3pUTnVSMWF1VEkyZFo1RGR2STB1WnZNSWxDNG43UVo5VnlpTC80?=
 =?utf-8?B?MTcxT045YzZ0eWVYUmh0eFdNWE9odVFaK3JLNUk0bW53emt4U0pCZFZJaFhv?=
 =?utf-8?B?cS9vdHQwMUZ0aHMrbWJvYlE1RWViYlZBM29qZGRJS09wcUcwSDFnQTBNT0Uz?=
 =?utf-8?B?K3JnV0g4NVZuL2ovSEJXVHpNUDVBNzFMMDUvQUJzVnpKTWREMXlTQXlnb0ll?=
 =?utf-8?B?SUVSaWVqWW1JRXpSZWhseFNtZ3Y2VlVRNEliUWp4R0lMTXdTR1RlUW4xZkJq?=
 =?utf-8?B?elkzWHJPSzZCMGJxRlJxR2ZLN1dkUFZlY0NWWEsyQ1ZKcStBKytuQ3VSR1B5?=
 =?utf-8?B?MnlYc3B6UExLTmJFSkhLa2NydDVJTjhISE9GaWhtWDFyMnN5TkFLT1lRMWh2?=
 =?utf-8?B?dEEyYkIrWGtOL2ZFYXJjMzViSmNjelZaTnZERjJEN2F6RFlwa25tdjYram8v?=
 =?utf-8?B?MTFCSFp5ZUZZRzY4NlA1N0F4MWRMQUZlbWNLYW9oend1U3hOeW9KRy9KdTVB?=
 =?utf-8?B?VW4wSG9ma0c1aEZNY0p1dVA3RzVacHdmN1I0ZEpZZHh2eCsrdGloSlk2a2lT?=
 =?utf-8?B?bVhMUWJqcUs3RE1SN0VPT2Z4aVBaTTVLUXpudG9jZkxhMHQvYjl0RnUzYzFv?=
 =?utf-8?B?eVc1T0NOVllqa0VDWWp5dmFaaU95Q244OHpXdWR0NGhGZGowYWxiY3dBNjhO?=
 =?utf-8?B?UHBGa2tjWkNZcTEybE9NY2NmUEJaU1pPSlZvUW9mTWJEVkR4c0x2T0pMa2VZ?=
 =?utf-8?B?d0YwYmJhRlFnWFMvbWRmMDFJUjdHYm5SVmFMOG44VlN4MzR4R3hFMWhSQTlV?=
 =?utf-8?B?ZHc2NzZhV211R0lvb3p5cjJCa0p0S2lDSHlmQ1ZDQTAyZWg5RktoTXlXNEhq?=
 =?utf-8?B?cVRzQndsQ2hNZWlRcHp4YnA2azZyVTRteTk4aEhMLzdUbDFrb2wwRjdIK1dy?=
 =?utf-8?B?bFN1RXFjeGxIYWVlZmxpajJiYzcyZVF3UVhaSmdzOVhHazdQNHFJa09qNkJw?=
 =?utf-8?B?Y1R0OHdiUzRRaUtIRFBVL3JYWjlrUW53NG5NU2lWNTBnS0VEeTFJeEd6VFFx?=
 =?utf-8?B?MG1BRXNiTU1xcThqbWZhSHhCQ0RRUkNWeDZxWHJIMGZDSHdDcVNRcWUrMEFK?=
 =?utf-8?B?Q2pLRmEwWEJ0SER6bkdEaXpYUk5aNWVIbHhTTHhiU09XRmw1TWtKbEUxV3dG?=
 =?utf-8?B?NithV05mR1ZCcy9QRXZCaDVEOWh1eFpGMlNYZm4vMHRKUm13Q2Rja0YyS1Yz?=
 =?utf-8?B?Y2tzYXRnTkVHdTNkTUtkektQV004R1J1cGNRT0RSV1htNUlFK2JiQlZxT0Vk?=
 =?utf-8?B?ZnA0RDFOSVRxYS9jYkkyd0JSMk9TTUMvRUFEcnpFRkFtaGs0OFU3RGZLakxT?=
 =?utf-8?B?UzZOOFZOL2Q4cU0vSEhOSE83aVAvRHh5c2dwZlo0Q1F2RW56L2JIbXFScWN0?=
 =?utf-8?B?UU5aM09aQUFqSVpkU3NFMTVjMlZFN294UTZSVjZ1RGhaU2xuNzhDaG1nbEFz?=
 =?utf-8?B?eGRzMUdKRUNVTGJrNUlVaHJDb2luanJ4Z3luMmZiLzFZNm5yQjJxRnVMcGZC?=
 =?utf-8?Q?cD1/lVb2ztpbwDGBmEVea0WOU?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ff0f735-a809-4f31-bca2-08db9e7ed165
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 17:32:52.0354 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RWC69vHKHIbYL4CG/0LHJsJbRQyxEeIfNxpupbXZUQ2QWcIJmvbYnPW4RlDSgsZrK7MBmGLTq3HPTNl8+gsutA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR12MB5420
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QRhi0NYSyynfNWuyjd6WRuLytm7DQB4Pysh+taDYNRw=;
 b=qIK2t1bgIvv2FS3gvqkrUtYlNE1fWEojzVJGK08MP7+a+mq8oijDnbBPMPLVG0Q1ksJAKvRiOKGwEedW41cZQT21fEAAigP8BD2KX1Hm5JdH0bIj1gQc3fwV2Zq9CvEdduvVt+7VAgJEvImJ/QEVivzSm1wih3yeCoE6QjFwIEY=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=qIK2t1bg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] iavf: Add VIRTCHNL
 Opcodes Support for Queue bw Setting
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
> iavf rate tree with root node and queue nodes is created and registered
> with devlink rate when iavf adapter is configured.
> 
> User can configure the tx_max and tx_share of each queue. If any one of
> the queues have been fully updated by user, i.e. both tx_max and
> tx_share have been updated for that queue, VIRTCHNL opcodes of
> VIRTCHNL_OP_CONFIG_QUEUE_BW and VIRTCHNL_OP_CONFIG_QUANTA will be sent
> to PF to configure queues allocated to VF if PF indicates support of
> VIRTCHNL_VF_OFFLOAD_QOS through VF Resource / Capability Exchange.
> 
> Signed-off-by: Jun Zhang <xuejun.zhang@intel.com>
> ---
>   drivers/net/ethernet/intel/iavf/iavf.h        |  14 ++
>   .../net/ethernet/intel/iavf/iavf_devlink.c    |  29 +++
>   .../net/ethernet/intel/iavf/iavf_devlink.h    |   1 +
>   drivers/net/ethernet/intel/iavf/iavf_main.c   |  45 +++-
>   .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 228 +++++++++++++++++-
>   5 files changed, 313 insertions(+), 4 deletions(-)
> 

[...]

> +/**
> + * iavf_set_tc_queue_bw - set bw of allocated tc/queues
> + * @adapter: iavf adapter struct instance
> + *
> + * This function requests PF to set queue bw of multiple tc(s)
> + */
> +static void iavf_set_tc_queue_bw(struct iavf_adapter *adapter)
> +{
> +       struct iavf_devlink *dl_priv = devlink_priv(adapter->devlink);
> +       struct virtchnl_queues_bw_cfg *queues_bw_cfg;
> +       struct iavf_dev_rate_node *queue_rate;
> +       u16 queue_to_tc[256];
> +       size_t len;
> +       int q_idx;
> +       int i, j;


> +       u16 tc;
> +
> +       if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
> +               /* bail because we already have a command pending */
> +               dev_err(&adapter->pdev->dev,
> +                       "Cannot set tc queue bw, command %d pending\n",
> +                       adapter->current_op);
> +               return;
> +       }
> +
> +       len = struct_size(queues_bw_cfg, cfg, adapter->num_active_queues);
> +       queues_bw_cfg = kzalloc(len, GFP_KERNEL);
> +       if (!queues_bw_cfg)
> +               return;
> +
> +       queue_rate = dl_priv->queue_nodes;
> +       queues_bw_cfg->vsi_id = adapter->vsi.id;
> +       queues_bw_cfg->num_queues = adapter->ch_config.total_qps;
> +
> +       /* build tc[queue] */
> +       for (i = 0; i < adapter->num_tc; i++) {

Nit, the scope of q_idx and j can have their scope reduced to this for loop.

> +               for (j = 0; j < adapter->ch_config.ch_info[i].count; ++j) {
> +                       q_idx = j + adapter->ch_config.ch_info[i].offset;
> +                       queue_to_tc[q_idx] = i;
> +               }
> +       }
> +
> +       for (i = 0; i < queues_bw_cfg->num_queues; i++) {
> +               tc = queue_to_tc[i];
> +               queues_bw_cfg->cfg[i].queue_id = i;
> +               queues_bw_cfg->cfg[i].shaper.peak = queue_rate[i].tx_max;
> +               queues_bw_cfg->cfg[i].shaper.committed =
> +                                                   queue_rate[i].tx_share;
> +               queues_bw_cfg->cfg[i].tc = tc;
> +       }
> +
> +       adapter->current_op = VIRTCHNL_OP_CONFIG_QUEUE_BW;
> +       adapter->aq_required &= ~IAVF_FLAG_AQ_CONFIGURE_QUEUES_BW;
> +       iavf_send_pf_msg(adapter, VIRTCHNL_OP_CONFIG_QUEUE_BW,
> +                        (u8 *)queues_bw_cfg, len);
> +       kfree(queues_bw_cfg);
> +}
> +

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
