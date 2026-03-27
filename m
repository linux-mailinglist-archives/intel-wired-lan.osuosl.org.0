Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PchGww1xmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:43:08 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C03F6340913
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 505E26128B;
	Fri, 27 Mar 2026 07:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id psgebBD_vLmy; Fri, 27 Mar 2026 07:43:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B055561282
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774597384;
	bh=bfShXbwTpZH24UxYagTFOkyHTAjdwxCRLB0KtykuLGI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qkzoiQYavwjr9ajw1SC96S+PSulh62Cem/jPpwb2oV4c8m5cVZ9eUvnIp9k2n4ITp
	 4kwwd6CLOnyD9t69+BCAUz4NszXNXx0cxdmtZxSS7cjGEbN+YaDRpE0ymwuizCNWTd
	 STX3+RuxrmuYsbDiDfav+ttIcFcokUaOiUgtZhWk/v+ynFfyYDKwO5icRSi+DHR664
	 glyfWpYCGEus0iJP5/Bobsm/ZAoblSY2FTeKN9z8d1/bI3kGtkqiLHnH15BQ/mfGM8
	 XS9JX7NK0WUOXbWNwCiMXcg4Mg//kz3L2dWNfihlJ9PosTxTZrBidm7J4MoFkeXMn3
	 c4PCyEXdnJgYw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B055561282;
	Fri, 27 Mar 2026 07:43:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 348662D5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:43:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25EAC40BA7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:43:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IxK1AzBcf3qX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:43:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 52E5D40B9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 52E5D40B9E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 52E5D40B9E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:43:01 +0000 (UTC)
X-CSE-ConnectionGUID: 24I3bbdFQSuqDlTPweValw==
X-CSE-MsgGUID: HFqW1qk8QayICqlcCKz5EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="78263040"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="78263040"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:43:01 -0700
X-CSE-ConnectionGUID: T+RFb/0GTLeTPqpKAxPumw==
X-CSE-MsgGUID: QkfB8WzpRnCPOzRVphTsnQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:43:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 00:43:00 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 27 Mar 2026 00:43:00 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.52) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 27 Mar 2026 00:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CR8gXdpMWvAfBVBkuV3tOSIzCBlBAH9Iec5eWoxPDgXyMONkHpIVxFTUhAUnlq76Gve2qKXLt1B0zWRLRxthyuGRnc8vswmljOydyJdYHfUBHoXiNpcV6ot+atQBkiRj0V9Wkr+Ok9ISvXq8bwNe/8orqfMNtE/6/ilBltHzFjVnikmd/5zmO9BVAad2npLUKT7TiUeHyHfdlUra1QD5vuKT2AIM6O21DQdvv8nM7K+ZE8f6Ejo6eYzPsfzTKqrLZmXIv+1wjcYi7IUf9rP4omxz7mvN8wdwNG38sg4qEvplXc0YR+porvTVXgAoX4E+tI5LZZXxaQgXqDu3wKdUKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bfShXbwTpZH24UxYagTFOkyHTAjdwxCRLB0KtykuLGI=;
 b=axBG2v6sytb8csVBbbeL6DbDafV6N1xtsC0BPMsQNjqBjoBuKYNBmP9MgJs3befBAHH47bvybwvzvlamDIJbFv9Z+j6XlMfWnDiCGN95kZEHamassrGm5qgqmLxrdtu0ccplay7WSn9NO1w91JpX7SsldlsByzvkCnoWIIZhyZv1Gs73VIEjOOUsNKLVDVWa/9/bFfrThu63K5xE7CSqaSdH1KopvdFBuh3PJYBV5XQdEUpBYhrw0buHXhPt7R65jx4wjU34j+JBu4IRDb0MEex+v8zflR0IGSeM56KAAcs1AWfwF1GzHTFBFnHvbML13v7t0m3zHDfQ41O1vnAHzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by MW4PR11MB5799.namprd11.prod.outlook.com (2603:10b6:303:181::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.8; Fri, 27 Mar
 2026 07:42:52 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9769.006; Fri, 27 Mar 2026
 07:42:52 +0000
Message-ID: <f930e404-412c-46c0-9e3c-feee4d3c70fb@intel.com>
Date: Fri, 27 Mar 2026 08:42:47 +0100
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20260325063143.261806-1-przemyslaw.kitszel@intel.com>
 <20260325063143.261806-2-przemyslaw.kitszel@intel.com>
 <20260326143808.1fd69825@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20260326143808.1fd69825@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0243.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::11) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|MW4PR11MB5799:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bef2057-b279-4eb5-37a1-08de8bd47356
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: cDIOugWgpOeC/wbfNZdE3R/wqHuTKWF+jjz4uwDrLQjNnM8WdSoSLUOCMoDtw5zWseDjx5E4Gov0zco7wfkOeqKg+vpgT81ZVMohvWauyw2dlwwJAPLRarKDZzAMthk+GsJejKTsGLR3JxH3G2vu4BT24I/f+/AzhVx/UUtL9tg9bVUCTeYWcTeOBJN4b8ORRPKu7wdly2YkMebex5okkwDg3AROJtc6/oiRtpb8RAgypVOkaFl/iPmprdUBwU8/V5YObvz/epf6Oczl7qLEFbFlIiDCKsdL4xq9YtqafI+2vlnfK53KL0BUT8SF7X0x/jyh59I3drpvOKlP/VDco914GjzeRigM+qQ5Nv2V9kq1Rdj3Es97i9HFrgkVOJYKwyarV98CR3Ir2PLTbxdOjjtmI9kdpU5X90Z4yv2nk99dptjWo2oWIV3AmtQ0ga+RO5vKxVxUnoaKLybWZJuKK/2OQVLk11/tMS70BM2x7kXoeVZDEHIXTk5PZXoNfVpH+NfwnOT1Kj6QGux5SygBz2nydq6m6q5x3N+2N9WYrR5bNExsHCE8MDbNkpektwi/W507Id7AgkRQowwrOEzaVTZHC7e1kLRkUGTWQRd1ytWYErmZM8yK6SJOWsotUN1lgtCvqvVkLlQB2YkqPugafNF+3BYCC2V5mlj9N8eGXlxDN1QK/M42MrukgBxL7rCPUVJU8pK8J9yrb+hYFl5wD/hSuSQiLwq8Zh1nFVsKHD8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjZLQndERFNoNmJHNVFqZFJaWlZSdWorZzRNZGNFT0pyVUYzaDlZUkZBVzd5?=
 =?utf-8?B?cXNQUEVybDZRSkw0NU9nOFNxbnhUamRXZno5Y1MxbDhneG8vWVd1R1pTSXJq?=
 =?utf-8?B?Tm5jMitCRHlFRFpQdFR1Wm9uTElSWXI4LzRZZ3l5Q1p1cDVabkg0OGZwU045?=
 =?utf-8?B?SVhOYVlHZFFrZDNSZ0NEUzVXd0ZhbVBQNnd1elltdFlRM2xjazBCRjVxOXE3?=
 =?utf-8?B?V1BnUmxlYzBvbXpsRnpIQ0M5QVFjcm9VcUxVSzJUbDlITUhlb2IydUQvYkRs?=
 =?utf-8?B?UU02Umc0VmpGZGlJRklZVUMyQzJRUjg1Z0trU2w1Ri9CdTAwanZtTWVpS0NT?=
 =?utf-8?B?bnlYZlVsWDJiZWY1Szk0VkxFb3BjQTJpVDFaUmdXeXBBaUl4TmhHWFJGLzk3?=
 =?utf-8?B?NUZNNGVNeGhxTWlmU1JFRDdnZzc5NkdLbEhEcm1lWnVPQXl6OEdYL0JmUXNn?=
 =?utf-8?B?UWMxWUYySCtSemZ5OTJrMVl3VWx4SW5ObWZnbjlCaWx3YTJkL3ArRzZEWE81?=
 =?utf-8?B?NkNqTDQwZy9SN094dlRSVHVDdXd6MXQ2MDN0anA0V3dNcENxZC9nMVN5bE04?=
 =?utf-8?B?MHB2aXlkWnl2eGkyRkFmZGRWR0s3MGRQYndmdnBRd21nUTIvVXpXNm5ObUxn?=
 =?utf-8?B?Uzl5b2t4ZVZQZzVPMTJSNGFuQmUweU9CV2RJWk1mLzNqK0dxNUZ5VWJsb0M4?=
 =?utf-8?B?QUxWNjJzZS9vcmFlR3RZQ3NqK0JsaVVoNEtqZHZsb3c2c0ZwdnpDYVRKYUd2?=
 =?utf-8?B?U0JqQXpERUpBd0E4TW15Q1lRdDM3ZlhLNkt2bjNvRks4N1lDWjFRMldPci9x?=
 =?utf-8?B?VG5kbThOMy9nQ3BJUWkyYjFFNDEvZmVkcUJzTVlJcENobGNEaGF4aWRHWXFk?=
 =?utf-8?B?UStIRGo1dVlKWHU4b1c2RlBwTHVYNVJGN0tISUwzZWtpcXFDbm92cHFxS250?=
 =?utf-8?B?MmQ4VFlsaDY3T1JaT01jRzg4R1RiZU1BT0N0TlVIZTk0eTJiQ0d1emt0YVVX?=
 =?utf-8?B?YnBvbzBadmZUbVZmd09xQnBDbkhuM29iQ3hJNll2dlBUUlUzcEh3c000RjBR?=
 =?utf-8?B?Sk04TWRxbGlDdk5GNDBOa0x1ZEZMQ1pyMnpFQlI2Y25Fckc2aXZPc1JhSHF2?=
 =?utf-8?B?K3cwRi9JWjNUNEY2dW9DQ0lGVDJob01rY28xQm1HMWt1WnZTdUVlRElJc3M0?=
 =?utf-8?B?cURqbHJycEE2Z0tKN3A5aVVTQ3kwR0g0bXZMUlc1TWpDUmNSdUN2R3h1bWhH?=
 =?utf-8?B?b2tsaEFEL3JLRUhxRzlLMHlEeDlKUkluSktxakQyUXpibnZPT29aMHhoNXA3?=
 =?utf-8?B?Yk5JVWZ0YUhCWDFSRFdoMHMwd3pLRWd4UmpaZXFpSG81T1BKZUlrcXJaUWkz?=
 =?utf-8?B?QkFNNk1VRWhyWXdUYWxhUit2bStqb3AvZFdnQVdtMHZPd01pTXJJVTB5dWVt?=
 =?utf-8?B?NXhtYTJ6SlE3bHUxY3IrYnRlbUNSdjhRcXpvbUZwTDNEZjNqOXJaWExvam9L?=
 =?utf-8?B?UFYxSzJHQkVGT2VqVnJhYm5Ick91ckptaXduMG94V3g5RjE1eDBUZWFyeWxj?=
 =?utf-8?B?WlEyb2JuOFlrR1JxOGVta21wSTVmS1lERG5ZYU5NaFdqVzlwcCs1UmpOL0lY?=
 =?utf-8?B?MkZIa21abHV5YlhGcUFXVmNKK0VQdUQwbXgrem4veDgrak10ZG1xbmtuSGFo?=
 =?utf-8?B?NFJ1YjhubXMxbUthcFk5NUZhY0R1YzE0N3VKSnR1TW9ZVllwRTlCQlAyRVph?=
 =?utf-8?B?QmdIOG9IODc0MURSWXRhNUlhVlNpa1EveTNXMDJHWUQwWnZhVm5jOFBVTE9L?=
 =?utf-8?B?L01vTDJhZ2Q4N1BmRnFOVHU1eUNtazhsT1h0amJtQ3h5YTY0cVB1WEFZTGlK?=
 =?utf-8?B?ZFl0TFRtNXZPcDZWWU51YXdRajNCVGViUzJKWFY3TklmeEYxTU5mTmNwOGFX?=
 =?utf-8?B?R0pkNDlwTjhCR2Z0dkdyRmRUaG9CbjRqM2RZUmE1SEV6SkVtRFZPVS9TVWxN?=
 =?utf-8?B?TXFDUytZZjRpNzJnSXEyMm1jMytFUmoxT1lQMFA0LzhnMjFYdVBtQWdUWERU?=
 =?utf-8?B?TE5Dd0pwOEExMVZyclh1Y1BNRkxSdTYwQytFbWtVcENIODVxbFNvcllZc2tX?=
 =?utf-8?B?ekoyM3FwN3l0b0JnUktSRFFValVRQWMrWGxTR2pDTnUrWVpicHFDaTVHaHlh?=
 =?utf-8?B?NzNMU28rL3JvdnVxQ2tKb0xhSGRXbitoWWtyRWttN2lQTG10RmJzK0JrUG52?=
 =?utf-8?B?SzEycTJCeStraG56bDk5TkdDZlRXWlpkVCs2QjRQWTVHVUJsSWxwNEROZ2Fv?=
 =?utf-8?B?LzByZXBobTU5MFprdDFnMU8rSVM1WkJIU3pJeWxtaEo3NDkraVhKci9PU0g3?=
 =?utf-8?Q?dMgmdL5JqI8xpIZ0=3D?=
X-Exchange-RoutingPolicyChecked: U7LYw415EgWn3uKz0kdqCE8UX80VkAbXVsX0qQNuYP13K1FTe75BoI5V2yTNxt3kvLkoDuJfIFRln+5VKTYRLEkxBX+0fwzWyjIEyzPseEnuIilWRd8qitNIuZ1y+iH0oPzK0GfEZ/pDEMRitHM/lL/L1z97KDWFdrt0vxIayx3YwYNIH/Sf4Ewd7U8juvXUm40i7rns3iAOmVodaYhpt8zXDvtboiAXqcm5dTd1VaKzz0wnj333M/Jnlz/H2Hf2DFWhsvQMwvSrLEobtWTWx8tFMW39PYmwvULAIirIGQY5rpaHS3TYHkiRwBxuTPpFkw/M0pfi7S06jwuXP2OXAQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bef2057-b279-4eb5-37a1-08de8bd47356
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2026 07:42:51.9817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bsDo/Enwzb2uu2rjhaBoKlhq00ZBGy6r8IcBvkQJ7CJS3tOoilyOaAqNBGwRo3kZMlAZVTMUHKbMBVnVhMeA6PMO0wZF8duxOTktMLglMYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5799
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774597382; x=1806133382;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ikBUy7C719IVGCkGNYVpVDsCoVR+9DpOFIx8YmJVSww=;
 b=W1sqYWez6y5FENEwWFWGDyX4yY5uIhP8ZT+P5XrEj/3Zn4ZMgGUrniqF
 0b8W7wAQFMISkqh24t7cfa+Htca/Q2RuJIETplHMgHfePJaY86vJqmFWv
 WiiWO+e0ASx40TueEW7EUwvTanYJcxeNXwUWQpUNJPao7/wj73gBnDT5h
 Z8K1joccWsBt9db0SKgH6cLElvgS2jgJTj958MFT2CA1gU8v5joqgthwG
 H4xJ0Wl51TekhcCAJcYWXdLfqewXEpHUKEbyvZymp7fpZMet8cOgTjqaa
 LEcAoNtjm78JahJKAJIHnkzYCK3zOUE00wrMQXWelt8v3EpcaI90MhUe/
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W1sqYWez
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 1/2] devlink: unify
 devlink_shd_get_priv() into devlink_priv()
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
Cc: Jiri Pirko <jiri@resnulli.us>, netdev@vger.kernel.org, Aleksandr
 Loktionov <aleksandr.loktionov@intel.com>, edumazet@google.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, horms@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:jiri@resnulli.us,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,osuosl.org:dkim,intel.com:mid]
X-Rspamd-Queue-Id: C03F6340913
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/26/26 22:38, Jakub Kicinski wrote:
> On Wed, 25 Mar 2026 07:26:52 +0100 Przemek Kitszel wrote:
>> Current API makes it possible to access shared devlink instance's priv
>> data:
>>
>> 	void *devlink_shd_get_priv(struct devlink *devlink);
>>
>> but it is easy to forget (especially during rebase from "before shared
>> devlinks" era) and call:
>>
>> 	void *devlink_priv(struct devlink *devlink);
>>
>> which even has the same signature, so it's hard to catch the error.
> 
> The implicit conversion may make things hard to reason about.

hmm...
now we have simple devlink code with a possibility of hard to detect bug
in drivers, plus hypothetical drivers code that we will need to reason
about. I would replace that for:
"complex devlink code", which will be harder to review, but then without
bugs and with hypothetical drivers code that would not require reasoning
at all (one API call == no decision, and no checking for correctness
later, when someone will be hunting an unrelated bug)

Anyway, I have used "hypothetical drivers code" twice, so maybe it will
be best to forgo this patch. I will just call correct functions in ice,
and we will wait for other users with priv data on shd devlink to see
if they struggle.

The priv_to_devlink issue that Alex pointed out will remain unresolved,
although it's easy to just keep the devlink pointer in priv (as I will
do in ice).

Thank you.

> Are you sure you actually mean that it's "easy to forget" or
> it's easier for OOT transition?

I have literally forgot to change (written from scratch for upstream)
code, in the part that was rebased conflict-free. I guess, I was the
only person that were in need of devlink-shared, with code ready to
rebase over Jiri's work. And I'm done, so there is not much relevance
now for this point.

> 
> If we are worried about misuse we should instead add an accessor
> for "individual" (better name welcome) instance and WARN_ON()
> when devlink_priv() is used in the shared setup.

that would require the same amount of code as this patch (curr ver)
has, only with WARN_ON() instead proper value (IOW: we detect what
developer wanted, and give them big warning instead)
I'm not interested :)

> 
> Or add a third argument to devlink_priv() which will pass the size
> of the LHS ptr, and warn on attempts to access priv of the wrong
> size?

this could incidentally match sizeof(devlink_shd) :P
