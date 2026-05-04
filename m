Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mAH+NRib+GkAxAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:11:52 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 941704BD963
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 15:11:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D241D84592;
	Mon,  4 May 2026 13:11:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8qGOwzMc-o8w; Mon,  4 May 2026 13:11:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A2538458A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777900309;
	bh=of6Fiaf/IpKk3XwG069heysr6eP3/97tbHcdfL1nUz8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tllxncMD2V2tVzuJvCgfiN/IcAZotuzpzalBNdGfu/C9lSTIiTpqgTz0nieuUks5/
	 5rBMpWJ+mXBWzt2jNU3+GdKICd0Bt94q7fAUJn4OA10CCO9DrZoZQX/YvhlztNQBdh
	 3cwkBn9CpgJ+dsjIws+KPzaEIax0sxaaQcdx7JZNujeXt46EnWQPybwIik3Mfij5ks
	 WJ/xxJQ8CK6ib8q+sg/JqMNMCCoUO/JEz6F93E+VAtTQiBDkVEJ8uyMiDMgiFjxbgE
	 IbldEy4R0BDSVlQkEpEWqiEb83H8UOHSiGmHzOR1FHNrdypIUz0bvOm//tvT6WVeCi
	 6o4q22D16y6RQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A2538458A;
	Mon,  4 May 2026 13:11:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id C0D3725D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B238E419E2
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:11:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vdAPjRkaEgmA for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 13:11:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0DE63416C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DE63416C4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0DE63416C4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 13:11:44 +0000 (UTC)
X-CSE-ConnectionGUID: Sdc3xiqOTKWmc3EysBkIFg==
X-CSE-MsgGUID: wFqIAcEBRSegvTzfCNXwwA==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="82366556"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="82366556"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:11:43 -0700
X-CSE-ConnectionGUID: xnWSFZqeRYSUpg1FXLNh1Q==
X-CSE-MsgGUID: 06oFl7Y4TU2iJ1RSNBm8pA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="234652069"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 06:11:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:11:43 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 06:11:43 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.33) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 06:11:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X4yysZQG95rocaiy9DaD6gK2z9mdR2t9BPGr3rTucXRBCtvED/sjgOiCi4m554I598dmYYMHj1o1Aa9IMfOelQ3UeRlSOSabL4ZAPEo9XZ7fjYiCnOECLgmwFyYu0w8rnUaqe7ETIka6/omaTHwvxw8luNxa4/d1xvhZnXUOveJWj0pAryD4ucLGA0tMRTmE94sa49uWQ4warQ1gVIX4bHL63Cxr/LgAYOb853Gcam+qJzbfqfqdt2mOF3mEgA1EdpDIAP81NTtQsuFmXQWCBmxad5f6AtVXLTvZazMSCMJRcBwUrT7WmLhYbASRB6eyGs2i9ceNBv1sn2maHbyXlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=of6Fiaf/IpKk3XwG069heysr6eP3/97tbHcdfL1nUz8=;
 b=gol8DFBw6MzJjGvapmtS70C96zDa8rfh1rIb8KlvAp2D3fXeNMwlA7sSF92tzB1P1AJcOZBsMq6cr+niA3bk6ECWbSKjr6Ti/Uqrl/97zmFHTT//8xyVZ4X0z4iIm3gQXhBDUSY0Zz+wj43Rm7YufOci89WIZOTsIrJlxnJw40uhRWSgsO6rB4bOVcnpHq7kwjAgf0qEr0ZVIcsQdo3OrCSt4dTWKl9YMTu/F224lL0BrdwYpmCKKV2BP1xq9XgN+IAuvHASlNkBAzwJLCykPCP+sAAKSmwFRFRzqp72oKm8HkoO/Omojii+AirUCEd34kpn6NHTOadaFrgQGMVnBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL3PR11MB6315.namprd11.prod.outlook.com (2603:10b6:208:3b2::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 13:11:06 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9870.023; Mon, 4 May 2026
 13:11:05 +0000
Message-ID: <3bce6411-6d65-4f4d-b5db-53fffbb0b77d@intel.com>
Date: Mon, 4 May 2026 15:09:28 +0200
User-Agent: Mozilla Thunderbird
To: Michal Schmidt <mschmidt@redhat.com>
References: <20260427151827.43342-1-mschmidt@redhat.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260427151827.43342-1-mschmidt@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1P191CA0004.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::10) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL3PR11MB6315:EE_
X-MS-Office365-Filtering-Correlation-Id: be91d9e4-8649-41f1-dc5d-08dea9de9917
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|7416014|376014|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: YlD6bht/uLnfWac9JCYPB/vLA+JCx8pWdu+9lRDRXoIFpJq0S4JefOxbqXQPGT05IV2cjuWcP4XIt0SDvnF1pEUlC3hqc8foihKvm73pukp9kBvXvbQGQHj+MBWIAzxPh/dt3s5ZljwBYbhxH9E0qd2scznVMQzutr7j3+z/GjMWSeVSdxI1eUwNcFAjkC/PHXEJVcV3VCR8Ir6POE5ed5wcI/V5GHedQdS+AegBLMPx3I6/SDUMxmNsZ1iDmDNNAp3HmIF7l4I2De6vuQto1DwL7ZR9Xtsj+WTUEOKVOf6wyK1cSz/T9tgn+NSZQ2nZT9xCj053jFzkrSH6vh0irt7fpOK8dQeHG22KWzGFA+4nAtz8fq/oib6d6Wi7lR/gZQpiormhPSO0jI/RcX7M0U55fLRtbFUt8EgSMS4HM3Z2ByKWLzoJoE3U7VNrLZ7JWzj/dBtmiiJCFgnLFrwmLaNQ4s43J3lwU+OxjB2vxvm57eD8qcR6EJ4t01xSQREOyd7HmdtMy4T5iiPF0FMcQQdNnq94wMZdooPvofF9HC7b8mu6+9DnXUQYc4Nlk0AtJ8aXvmgJh3FqkDuRlacFa2uFPZKDgVSNEeEmBNlrYt9zJ6qL8OlonI6nZeyDLj2NU5/y8H+UKAGrzL26lU5Uko4Z5PS5QtH/hMyZowMgAaw6mvCBQF23Ar0F/FwBXrOw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(7416014)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VXFMTGhSL3cxR0JkQXFxQUVvaGhwWWxnRkhLRjRFR0VjenlzQWUwMGhNcEdY?=
 =?utf-8?B?cjhmV1dMaGsyRUZwQXFTZXBVTEpHbVoxakZVZDBOLzZQSXk0SVo2Y29WLzRK?=
 =?utf-8?B?WXlxYXBEbkJrclYvVERLM2tjTHpoalEwUmpJSmt3R2pRb0hvZHprVHZEMllo?=
 =?utf-8?B?MVlFRWcvSVJOU3g4WXYzeUNOMm0vbG42MXVqRnFVOWUycXF5SHZnbjMzaVpT?=
 =?utf-8?B?UGxTR3lGODU4eStuYnkxN2w5djNqRXZzYWhUUmJQTHZJSmdyMUFGTHhCbDhM?=
 =?utf-8?B?MGlIUXhMbzBxL2FrcENybDk2Vy9CNXQremZMNGRqdG1JQTZXK1R2VTJjUjJH?=
 =?utf-8?B?N1llOFlQaXlQcTBodjU3OURDY2hrem9HUkNGaGpLZ29VTXQ4SkJ4NSswNUZV?=
 =?utf-8?B?Rzk4VnM3WXEvY20yQjU4S3RRSVZlL1BrN2I2Z2R5Lzg5bHFHczdMNm5uYkpB?=
 =?utf-8?B?cUVEaWY5aC8xNHg5bnViY3hUSVBJT1YxczlVK3hYbVo5alp3Tmh5ZzNsQVlR?=
 =?utf-8?B?bWtScVhoL1c2TXpKWUtLSktPRGRqVnBNS3NNcG1GZk80UENNTjdNM0hEVUFL?=
 =?utf-8?B?TTB2K0ZWUFEzU1BvQ01LRXFwUzcyaG1wUXl3Sm5jWUM5SERrRG1uMmY2ay9W?=
 =?utf-8?B?R0V6ZHdGS2QyMGpvTlFZclZ0U1BtNGY3MnhyS1RYdjVkUnJ2eXRPRlczT2tm?=
 =?utf-8?B?UjJ1Mk11MXAvVWF3NHZMWHdtQ09VcE1tNjdYd3JkODhDeEZNcDk0ZjhtLzFW?=
 =?utf-8?B?MjBkaWlMdE9PRitYN3lKZ1VmbnJKRE42TVZxd3NhSWd6S2dMMDhLTys1djk2?=
 =?utf-8?B?SHU1UHlEUC9vVHJtRVY1cVFLemhvZWg1ZjZKQzR5MXlQWlZ3ZFZjN25mdzVY?=
 =?utf-8?B?VDdkWXpXdGkycDJwbit0Rnp0QnUrT0FUek01TjBLVVVMT01oa2ZDR29SUVR5?=
 =?utf-8?B?b1VKbGFqazROcG5GblJuTDduTVByN3pIV29tMmVxOVFkV01Ua2pzSm92aEhB?=
 =?utf-8?B?VWZHVHZwL0ZuL3EyY0hTR1hSeTFIN3RwR1ZKdWQrR295SDVEV2tCWVBNZHh3?=
 =?utf-8?B?T3lSak9tMi9KY3R5WndoU0VWRXROUlFyR013UFJEbFpFeTd6K3RWWjVrcXkw?=
 =?utf-8?B?czVpbUZlZExlYVdQZWpadkcxMlNDUjl2ME5pZ3plbzJFWENiT3M2cEJwaUlM?=
 =?utf-8?B?Yk54VUV1N2pNbTVUM2xwNWcrOUIrTVBxTkpTaDI3b1NocytIU1BuYzF5UlJ4?=
 =?utf-8?B?VDRWS3l0c0FmZGpvY3d1S1dZdUdtaG1BRHFHMlhEMTR3SjJ5NFgxcnZQV0Nh?=
 =?utf-8?B?VGgxRFNGMmpCcE9JclFGRFpKbmZETUg1WE5EYnZaanR5RGYwNDJIY0dWNDZF?=
 =?utf-8?B?NHdad2FlOGxJK1Z1Vjd0WlVpSWJESExpWHA2V2NjLytucm5obzBrbHBVdUFv?=
 =?utf-8?B?UVNjUWc0Zk5mZW1jODZ4R2RtWFd6dmxKWEx5MjloUHFZZjFTM1FjL25JREg3?=
 =?utf-8?B?ZGdLQkZmZFVLUFE3N1dhY2hPSXpTQUMzRGthRnoxUnh3QlhOM0dTcUNPU0xU?=
 =?utf-8?B?cFN0QkNRbVFIZnBIS2diWlJRUXVGSTJkcXc4UjJoNm5WZEtuUi82ZWxQTVF2?=
 =?utf-8?B?T3dHaGJuOXR3N09GZlFVQzlMdTNocTFuK0pldS9OczBPemF6L2FRd2NjUlF0?=
 =?utf-8?B?Um9pMmM1R080bng2WTFwaDdUakduK0hld0laZGJyRHRmWlJrZW1IRTAzR2Fl?=
 =?utf-8?B?cnJNQW5PY1VqV2IrT0RWVktBMkJOUCtGTzBQVHlPd0dnSUtEcGZNUzAvb1Rj?=
 =?utf-8?B?Y1JYdWxTVGJ5eVQwMmo2bXM1cjdWWVRHcUZ1TFo4dzZUdHBuL2pGQnBuTVM5?=
 =?utf-8?B?NHRuRk84eUVjU0VmdGJsTzF1OXo3RXF4Q28yRWdrMW1QSnliKzRRM1VFWXpK?=
 =?utf-8?B?THFvSmtYeFhWYzUrdnNWTER1c2pqclpyMW5yNTBDZGtTRFFoQndTRHZOK0t5?=
 =?utf-8?B?bnJUNDdPRzhEeDhYU2htL3dYUGpnWWF0ZTBybG1wSGZoWFBycnpMT1BzbTJQ?=
 =?utf-8?B?S0x1Z3p6MXJiVWY5QllCeFk2TkUwa1ltTGtOUm5PeFcwQmMvU2ZiTTFpekhZ?=
 =?utf-8?B?QWNCMWtyK2Jja2ptdmRYRFBWNUxXTk5ZY2ZQUjFocFFyT1o0VGZWSW5FdnVD?=
 =?utf-8?B?T29BSE05TWdabG9WaTcxSnNJaHUwQnp1a01Oc0lRaE9jWFptRnVOamkzaTlQ?=
 =?utf-8?B?a1NCU0NWeVhxOFhCSTVMWXZwdmszTnZNQkFIaHZSa1RsOHdoMGtOOFEzL0Q3?=
 =?utf-8?B?R3B0ck84Qmthdm9GN3FQQ3FCMHJ6UEV6RlFDdGxBYWs5bytBTHJtanpHNGQ0?=
 =?utf-8?Q?ccjjeuW40KDjPO1o=3D?=
X-Exchange-RoutingPolicyChecked: a+fXiFOqsEaCE90G1zZYcbn+D1XoHC8jjOsLZjfnMzHaW3VOig0l1IhUbC3TY6ZScUBqtugmsrLuEUZZ9BBXhRAIZQc85yaNR0DPjB6NsjWQNlxbdSd/rWXpNxPhCcXc8UkBz3CUiqMs5plxFKSiQvD8VXj152wfczhUrsbidMB35gJbtSISjZ01JtqKAw2cnjXDTR+JLThgj23/w9ve1Qhjz7yBLSoFaRXfEWgJ00jbURWmbvzUh3d0c7yKrxkgnzLJdu2mngRgYQtX6rJXXhChOIjLEqe2Loc160lfRru9mJX0dqgp6yGcWwYL8sSZ089BuesameNpy2XxBNCXpw==
X-MS-Exchange-CrossTenant-Network-Message-Id: be91d9e4-8649-41f1-dc5d-08dea9de9917
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 13:11:05.6927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 47MDRRNazBwvto6al72fUkUMg2inYY+94or/Q25kCtT6mwes2XatiCcN/UGFEvbZuDFdzHQ49LBkSBkNfZ3dDNwyErSJG/Q1Ny1OX1RW7nU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6315
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777900305; x=1809436305;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GKx0v6ghzyiiyKL1b2aF4rlj7Oe/hjegscBz35C44sc=;
 b=JL7Np1YEvDzaoakLtvd+FEjpMHZtDnxk7FybWa+tJT3jdP3lSPnUc0S+
 zNOMBtDaP+RvYEu1wH2VwSTf1QtIAHIrLVMH/UoJ0Ng+dbsh7G8gBgN6e
 hWeORSXN4piQCthKjy3Q2gHITvT8LrVZwULuQumQemVfHFSSaXQMDIdRX
 qkvaLOjCjlDP35S4RfrosRmevuCCGLrPG5BDHHrkkYthOwMvBkriP6Pff
 rmzqpWfh9mrCrxb/ttJuJo9pHfr1cuh44M11Ga4IYn7JHKzWhJjAvaaHD
 6QuLVdgbQU7R1t02XVzPMs+vhC0ZBXDnHjb0vAHpZUfXCTCM1x2eVHi2v
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JL7Np1YE
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: fix stats array overflow
 when VF requests more queues
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 941704BD963
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:mschmidt@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,atlassian.net:url]

On 4/27/26 17:18, Michal Schmidt wrote:
> When a VF increases its queue count via VIRTCHNL_OP_REQUEST_QUEUES,
> ice_vc_request_qs_msg() sets vf->num_req_qs and triggers a VF reset.
> The reset calls ice_vf_reconfig_vsi(), which does ice_vsi_decfg()
> followed by ice_vsi_cfg(). ice_vsi_decfg() does not free the per-ring
> stats arrays. Inside ice_vsi_cfg_def(), ice_vsi_set_num_qs() updates
> alloc_txq/alloc_rxq to the new larger value, but
> ice_vsi_alloc_stat_arrays() returns early because the stats already
> exist. ice_vsi_alloc_ring_stats() then iterates using the new larger
> alloc_txq and writes beyond the bounds of the old, smaller
> tx_ring_stats/rx_ring_stats pointer arrays, corrupting adjacent SLUB
> metadata.
> 
> KASAN detects the bug:

[...]

> 
> ice_vsi_rebuild() handles this correctly by calling
> ice_vsi_realloc_stat_arrays() before reconfiguration, but
> ice_vf_reconfig_vsi() was missing this call.
> 
> Fix by calling ice_vsi_realloc_stat_arrays() in ice_vf_reconfig_vsi()
> before ice_vsi_decfg(), mirroring the ice_vsi_rebuild() pattern. Set
> vsi->req_txq/req_rxq from vf->num_req_qs so the realloc function knows
> the target array size.
> 
> See the linked RHEL Jira item for a reproducer.
> 
> Fixes: 2a2cb4c6c181 ("ice: replace ice_vf_recreate_vsi() with ice_vf_reconfig_vsi()")
> Closes: https://redhat.atlassian.net/browse/RHEL-164321
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

I have an unpublished fix for the same issue,
but your patch is smaller, and thus more suitable for net-

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

thank you

> Assisted-by: Claude:claude-opus-4-6 semcode
> ---
>   drivers/net/ethernet/intel/ice/ice_lib.c    | 2 +-
>   drivers/net/ethernet/intel/ice/ice_lib.h    | 1 +
>   drivers/net/ethernet/intel/ice/ice_vf_lib.c | 7 +++++++
>   3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
> index 837b71b7b2b7..fc78176a2a8d 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
> @@ -3015,7 +3015,7 @@ ice_vsi_rebuild_set_coalesce(struct ice_vsi *vsi,
>    * ice_vsi_realloc_stat_arrays - Frees unused stat structures or alloc new ones
>    * @vsi: VSI pointer
>    */
> -static int
> +int
>   ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi)
>   {
>   	u16 req_txq = vsi->req_txq ? vsi->req_txq : vsi->alloc_txq;
> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.h b/drivers/net/ethernet/intel/ice/ice_lib.h
> index 49454d98dcfe..6f7da84384e5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_lib.h
> +++ b/drivers/net/ethernet/intel/ice/ice_lib.h
> @@ -66,6 +66,7 @@ int ice_ena_vsi(struct ice_vsi *vsi, bool locked);
>   void ice_vsi_decfg(struct ice_vsi *vsi);
>   void ice_dis_vsi(struct ice_vsi *vsi, bool locked);
>   
> +int ice_vsi_realloc_stat_arrays(struct ice_vsi *vsi);
>   int ice_vsi_rebuild(struct ice_vsi *vsi, u32 vsi_flags);
>   int ice_vsi_cfg(struct ice_vsi *vsi);
>   struct ice_vsi *ice_vsi_alloc(struct ice_pf *pf);
> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 772f6b07340d..9edb2c14f553 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> @@ -268,6 +268,13 @@ static int ice_vf_reconfig_vsi(struct ice_vf *vf)
>   
>   	vsi->flags = ICE_VSI_FLAG_NO_INIT;
>   
> +	vsi->req_txq = vf->num_req_qs;
> +	vsi->req_rxq = vf->num_req_qs;
> +
> +	err = ice_vsi_realloc_stat_arrays(vsi);
> +	if (err)
> +		return err;
> +
>   	ice_vsi_decfg(vsi);
>   	ice_fltr_remove_all(vsi);
>   

