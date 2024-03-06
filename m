Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDE28739E8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Mar 2024 15:56:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E085041850;
	Wed,  6 Mar 2024 14:56:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3R4k7VOPiAbo; Wed,  6 Mar 2024 14:56:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 008D241852
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709737014;
	bh=GeEevyx5t1kKgd1Oggrtuh7cr3OHB7iSb5CT2mr+4vA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GCYphT6tLH5iiFKV7tXwWs0j3mPCYLsQo4xZpjNU5NW6qqeB3uIxDPHT3NXtvD9a0
	 z6yMQu8IXbmE0q1S5RbSvt672alUoGnZ+O3EpCl5hALGG/18L8ZVyPcwF1RHFo2zA8
	 v4tsEXGkyiaQ3pZvXWHkKm+IB1RY5u/O1lkIf03iXDg0uZOD4V9lmlkidIjM/4uFg8
	 tgCMk5SwUp/Vc0LtAKmwrKgwbfm7brSRn55QOQ78VcoDzlhiNaiKwqb8VcKvOmvgS0
	 Y9pqQCF6wRkHMcsCwelgns0MRhrvFlRre7d4mL8rTHkzMkMQnz8RLglIyFgVcQWQ38
	 i6AWYV9VwUJBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 008D241852;
	Wed,  6 Mar 2024 14:56:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4409A1BF3DA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2F5616077E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D8r2NJRfR50l for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Mar 2024 14:56:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=steven.zou@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DEC66077A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DEC66077A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DEC66077A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Mar 2024 14:56:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4282855"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4282855"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 06:56:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="32927197"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 06:56:48 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 06:56:48 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 06:56:48 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 06:55:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DnlbtYJ0+SWkRc19AQmN19GlmXXAVmR76MDah48QVZ8tMjIo6a95WngZI7L8BypHCUaQ1XyzMHd9RH64q+E/W61QXKXeWQUN5vUfiTJikc87RJbwmmynqmXCIO0JytRaHa1szMTE/ywh00Heh9hmiRPXqnUDVBfj4AiXN+ydqckPXb8bWbWUuTyeYolEz3EnBXL5Rq+567ByYvcbN7jbUOndeNHZuPXrfMEEWNuIrrehwVjodSuteZq6/pTPx1VcmYxUj6gMKoLRV0l97L0bzQh2OBWpT35bQAaDdMZpKnp8JAJ8hXpv5X3Vg22LFPZKI5WSbpfhlIvdEwadNOitOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GeEevyx5t1kKgd1Oggrtuh7cr3OHB7iSb5CT2mr+4vA=;
 b=KgKvlbEDlHl27wlTau53KfYhxYaYEfR8SKkTx5rRvcsB61izgNxZLEqP0w8ENPC5rrqPxJf6D9NV1CD7tbNC/c/NjfTfhrqXI1chbw5bPvKbutmju9yeoMENyPabTxkVgcUhPKPbovWRZaMVD0AIJRDOItFzpACG07rWRWPcAtji6bsQlyuR0JdiKEvxfeQOacXv7n+a4+fmSEwRSpGEV89PU5PBmvUfuXFv/n9LdL/Jxnb7PMCnAtLeKkou08WTZRNTbXIUlYl2oaE9RSKYZEjacu8prRcyR4vysXjzK6KqmtXDG9NnJ143iEBt/uuPHXTHQC8X/nuiPHKftsl31A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6801.namprd11.prod.outlook.com (2603:10b6:510:1c9::8)
 by DM4PR11MB6168.namprd11.prod.outlook.com (2603:10b6:8:ab::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.6; Wed, 6 Mar
 2024 14:55:56 +0000
Received: from PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::f86d:342c:4802:148e]) by PH8PR11MB6801.namprd11.prod.outlook.com
 ([fe80::f86d:342c:4802:148e%5]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 14:55:56 +0000
Message-ID: <0056a010-4fd6-4300-9790-649d820a5a01@intel.com>
Date: Wed, 6 Mar 2024 22:55:48 +0800
User-Agent: Mozilla Thunderbird
To: "Sharma, Mayank" <mayank.sharma@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20240208031837.11919-1-steven.zou@intel.com>
 <PH0PR11MB5013D1C2AD784512CA70173396212@PH0PR11MB5013.namprd11.prod.outlook.com>
 <IA1PR11MB79422EFDCA5CDD7EC60125C0F4212@IA1PR11MB7942.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Zou, Steven" <steven.zou@intel.com>
In-Reply-To: <IA1PR11MB79422EFDCA5CDD7EC60125C0F4212@IA1PR11MB7942.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SI2PR02CA0048.apcprd02.prod.outlook.com
 (2603:1096:4:196::23) To PH8PR11MB6801.namprd11.prod.outlook.com
 (2603:10b6:510:1c9::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6801:EE_|DM4PR11MB6168:EE_
X-MS-Office365-Filtering-Correlation-Id: 20018908-5784-4229-3f6d-08dc3ded86b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: woIkADbuVSauyUkLG7VN06NSKoCAF1pQ+Lap0/q1XaetW5Bprd+YCoCsKiiSrs/NaHgmSmIa/0IEt+GgaDya+O5V0oOcYBsiYWMj+5yEDxhac8H8LdFlSBkpEqFkytTLOTz0r3arZnk01l1mSCnIs6Gstdjevi2W2L3PQ5ZbRMM9q+VLKKABJIGuS8bXVNOONuhCyHVm32BsvislR7hYb67OaO0shmJwUQvn/wE7ZPpZACOFmahh3kx4lyhnEGmYuFOmEFexX6/QRasXDQaCf2j+D1U6BALdbF0OPIL3IoCWmJWGaicxS4EDAP7SxKcZnPrdk7fbrMHnTJUGvO3fOfRILzSqWerGNTxGj4NfVqQOpIkKTvkCvwA16kMJ0AFUz2im9bfQX2GeReqbLrOxFCIEz9ziduh/avdI9rcuojJUCK7bbviFPcxScHhYlqia7mNiJPHu3PQ+KV+u4JrXuJ7Td3pjlLHDE4dW3AgkR8iCJiAHTTb4pWXb5v12zXpdqQTf1ppdUl7AHcNJfhUpEZiqBB1vfrWKeW8dBoEZhjaMAFEc9S8agfkgQmeVyrQWvuEdMVz0W0MQNVbpXlpVTWfrGzAiGas/JbR8IhNwz1XpW7Xb2iwYZeH5xOqKy0Q/ryxbCL7Hq98FpnHGNEXUoc+d2KrjcEoQjMkdbH0hv/g=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6801.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVZRYU1pY1FCdlB1dkVPU3ozYUliRW1yZFFWa09USDZlOTQveUdleFJqeFBU?=
 =?utf-8?B?dHVrd3ZYa2ZVc253eW1TeXdFSWxtS2d4dnB5SnRBR3A1OFZndmdlL0Ftblp2?=
 =?utf-8?B?ZDlRVTVtVXlLSFJnd2JyVmxOeVM3R1BOQWRNeFcxUXdnZm1PRTZiZjRxdW1C?=
 =?utf-8?B?dHFNYy9BK0FBSER3bVErYmpuSjV3RG9NQnNhWll1NXFrdFd1OGpTNWxKZlND?=
 =?utf-8?B?dmt2Zm5mbnk5MXY5L0t2RGo0Y21NL1FkbVlwa2lQeVB2SHkyL1ZsN2dqQTg5?=
 =?utf-8?B?ZnU1NkQ3R0l5WXlPL0V2WTBoMHVxb1ExSDVQS014QURtd0lyeEZpU0NXcnAr?=
 =?utf-8?B?b3V3VFVXcmhMeCtmdFZBMU1yNWhZbUJFek9GK1E4NjhpSFRqRVlTcDllZ0VU?=
 =?utf-8?B?ZHVVallOU0NncUR0YUpJeHd3VkJGVGRwYWhEZlhZcmlKQkdTbnlqSU9LRE43?=
 =?utf-8?B?bUxpczNFa3hnV3pjS3ZXM1V3eS96NDNKcFZzS3dMeWM2TW1Scmw4M1p4Mits?=
 =?utf-8?B?SnQzYkwrTFJvQUpDM0p6NGdkSzh2R2ZZc211YUM0bmRBNjFlMHlkTGRjOVhk?=
 =?utf-8?B?SGczQk5hdmxYMWcyalNQK3hjUngxd1VuTnZibms5SVFJZzVmaDBVS0NwQmd6?=
 =?utf-8?B?bkxNNDFDbjJPWTZ6aWFFaTRlQnBkWmVDVXNFUnM0emtVOWtpWUZ0RFdpS1pE?=
 =?utf-8?B?a0dVNkUyTGdXRDlRZkFPL1lwOEs5c1B3TlE0aXJMZ2N1dzN3MTVKMUpXZHNC?=
 =?utf-8?B?cWZBbFdSMGdKcHdxYjNUSmQ0Y01uSVk0M1psZTlteGNMY0NZTDBFR2tXT2pu?=
 =?utf-8?B?MndLZnZNL0lleThHZUUyazJVNnpCVm83OWhodzBCeThPN1pqaGRWUldVbklR?=
 =?utf-8?B?enVhUStIVkNlWGJPYWhISU5rekVaVWNTcXRrT1lTMklIS1lqZ3Zpd1BacnlD?=
 =?utf-8?B?OE01MXhKc0FhMTh3WkJMd1E1TUVLQnEyRE9uRUxWaFZmcEpDbWZjRE1tYXdv?=
 =?utf-8?B?YkNnSG5PcFhaNUZjajlRNkpSbHVvS1dGVkRFdWxIeUcyTXVHeWRybmQvRnR2?=
 =?utf-8?B?bHMyUlhScG94bWJaSThvY2ZNTXVOa0pLalRad0p0OS9tTTJVQ29GU3p5bFpo?=
 =?utf-8?B?YUppZ0hTYzFVSzA0Y2VjVDZHYVBVWGRTZUxXV3FUWlZUY1ZUSTdReHBOeWw3?=
 =?utf-8?B?U1FZTzlRR0ZiVWVFZEJWeldudDlzWmVCM1hjMVBVL1VmVWFMd2JUVkF4L3lB?=
 =?utf-8?B?YmM4c29hMzltdG0rM01EbDMza212Q2MrSnlZWHA1MUE5UFkxc0ZrRTA3R0Nw?=
 =?utf-8?B?enR0dkdGTFZnU21sQ040VFMxamQ0Vm00TFRtVUJSZFpPYmF5QUdKNFYyMnhP?=
 =?utf-8?B?UXdnRGh0eGNwVm5MR2dvS2RrYldZL1cyd3BMY3lWbmIwOEVvTjZxV1RJVjBK?=
 =?utf-8?B?citFYldvdHZ1WE9IZG5LUUZ5Z0Z4MEJJbnVJVXBTbDBaQlJJbVBLT1BjbHNN?=
 =?utf-8?B?QzA0S290YXlDL1dkUXVLZ2RWQ0xUekxoelB1amtOeDUzaGoybVVxbW54ekYx?=
 =?utf-8?B?eFhibGE3dytxTWJHZjVaK2oxRzJHbmNwODdmYW1zZ3hUOENKczRLN1hCNnMw?=
 =?utf-8?B?c0E2SEREQW9IY2hKMkZZQ0pBZUZkaFJWS1FWVWJOMXFBS0k5L09MbjM1UlBK?=
 =?utf-8?B?MzFZQ0cxOUZSZU9OQWFFTUpPVWp0dW5PK3N3dWxRRGMxR1Jvd3B3Q29CQ1Jt?=
 =?utf-8?B?SGlQbTlURUpuU2x1K29ldHVXYlpRYzEyRjh2bXkwbVd5UEJ3Mm5wS2xHeE5Y?=
 =?utf-8?B?NHJNckUrNnlzOFBiaFRWbmdscGtIN2lwQ2Z0NzFha2FRaG5meWJKN0NNVWVs?=
 =?utf-8?B?UlZaTWlhTmlPN2lqTlUvVVZUN1dGNnZnckdGTGJUOEM2OWRUVjFRSGkwWGNt?=
 =?utf-8?B?eXA4aVhCcGcxUVBGMWxQa0krVVB6T3dPbXBlUC8xNGh0RUpGdnNUTW9LWXRI?=
 =?utf-8?B?N1RkR2ZwZ3VCc01HSmYydnN4UmwyNFI5Q1BVM09GdnFEUnpuMCtsdDZaZGdG?=
 =?utf-8?B?cTBFNjQ0SHFDRTJNL2NKMkp1SVZKVFZjYm9ZZUxlSEU0RXpnOUN6YUdEYk1T?=
 =?utf-8?Q?+K1HRRXX30v0298w+K4VwUj2y?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 20018908-5784-4229-3f6d-08dc3ded86b2
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6801.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 14:55:55.9407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qpifvv/O+qcirAbWFBwuJVr5olbXtGQkASc59L8vFfkP7KiI16DU1w8hbqy1XDkpo1A64gOEvezaUSLgXLwhQQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6168
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709737011; x=1741273011;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xwn8fTcOW3GwujOPLqCJTe/KxWLeu91ayKyu8bgFsGk=;
 b=eltQltykzvLg1BcW5kgrQETrwCcgfjFRWp+MrBq+KwOQXQypN0B3P9vN
 hLMcM/MpAUF2CN9HAkoWurCn3FsjjyzwR/jF3FjEiKnoWXx6aFwHQZTuD
 hwwmr2dzk/eLk5vaxvSkfeS7yszjYkAfMkvRAsjvRPqT0MHkCkVS/92F6
 oNFdBBngaUtsyFdBXFadD2S+8chChCw5FIc2fC3DL+vQhw8d+u4q7XnCQ
 RHYKJoLK6zmYq+caPh1tdHh+MJSA9ZzDd/4o5w5N0eqolaTt8ew65MuC3
 7rEQlun6THwn1AG8XE/wMqCOCY+TbDeD7roQmfLThr3H2fT1SYY2ReUtt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eltQltyk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe
 reusing feature
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Staikov,
 Andrii" <andrii.staikov@intel.com>, "Lobakin,
 Aleksander" <aleksander.lobakin@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


On 3/6/2024 9:48 PM, Sharma, Mayank wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Steven
>> Zou
>> Sent: Thursday, February 8, 2024 8:49 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: netdev@vger.kernel.org; Zou, Steven <steven.zou@intel.com>; Staikov, Andrii
>> <andrii.staikov@intel.com>; Lobakin, Aleksander
>> <aleksander.lobakin@intel.com>; Nguyen, Anthony L
>> <anthony.l.nguyen@intel.com>; Simon Horman <horms@kernel.org>; Kitszel,
>> Przemyslaw <przemyslaw.kitszel@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Add switch recipe reusing feature
>>
>> New E810 firmware supports the corresponding functionality, so the driver allows
>> PFs to subscribe the same switch recipes. Then when the PF is done with a switch
>> recipes, the PF can ask firmware to free that switch recipe.
>>
>> When users configure a rule to PFn into E810 switch component, if there is no
>> existing recipe matching this rule's pattern, the driver will request firmware to
>> allocate and return a new recipe resource for the rule by calling
>> ice_add_sw_recipe() and ice_alloc_recipe(). If there is an existing recipe
>> matching this rule's pattern with different key value, or this is a same second rule
>> to PFm into switch component, the driver checks out this recipe by calling
>> ice_find_recp(), the driver will tell firmware to share using this same recipe
>> resource by calling ice_subscribable_recp_shared() and ice_subscribe_recipe().
>>
>> When firmware detects that all subscribing PFs have freed the switch recipe,
>> firmware will free the switch recipe so that it can be reused.
>>
>> This feature also fixes a problem where all switch recipes would eventually be
>> exhausted because switch recipes could not be freed, as freeing a shared recipe
>> could potentially break other PFs that were using it.
>>
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Reviewed-by: Andrii Staikov <andrii.staikov@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Steven Zou <steven.zou@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_common.c   |   2 +
>>   drivers/net/ethernet/intel/ice/ice_switch.c   | 187 ++++++++++++++++--
>>   drivers/net/ethernet/intel/ice/ice_switch.h   |   1 +
>>   drivers/net/ethernet/intel/ice/ice_type.h     |   2 +
>>   5 files changed, 177 insertions(+), 17 deletions(-)
>>
> We are seeing following kernel compilation error while compiling next kernel:
>
> "error: dereferencing pointer to incomplete type 'struct dpll_pin'"

Thanks Mayank!
The patch does not touch 'stuct dpll_pin', I do not think this is caused 
by the patch changes.
And the patch is based on the base-commit: 
ce1833c065c8c9aec8b147dd682b0ddca8c30071 that I built and loaded the 
ice.ko successfully before I submitted the patch.

Hi Tony,
Do you have any suggestion about this compilation issue?

> Regards,
> Mayank Sharma
>
>
Best Regards,
Steven

