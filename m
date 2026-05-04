Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KEhtE04e+Wlw5wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:31:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 908604C4673
	for <lists+intel-wired-lan@lfdr.de>; Tue, 05 May 2026 00:31:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDDA74055F;
	Mon,  4 May 2026 22:31:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VSaMmGWaj0M5; Mon,  4 May 2026 22:31:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BD4B040561
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777933897;
	bh=5wF3Zj2TgcRsc/ohyXDSIAPyiUQGydul42pPf/HxHhQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5lWwmTOrkrQrTJEeTkkBphOHtegHDffx87XqQ7pK9pkOAyfWaOxQzdcr1UHuXhksK
	 Bu6lggm/gGqNWPuyzJoZdddF5jGKweuKIt4rYd+4bG5KXwA6V5gsjrbx3uiYuF8rvY
	 t/+03IRb7sx+5p5rbO2wdcKQ6dYhSsOaT5U6SgPKviwYCWbuywqzjCvqCT12LVZJR7
	 pkTITtPe395wRF3UFYTF5Mmfq+jl48+Letvs1ephIMby4uQtTDJsVydoqBuUyRGGec
	 rvZX1G3F09wBSoMkm8d/vmQHsrFsOu1u8zF7PiOGELgBxkcIbCzLgzGfxNQ/7HaX3p
	 jivvJSknEvOmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD4B040561;
	Mon,  4 May 2026 22:31:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2AA4630A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:31:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1C6EF40557
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:31:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1WdKcB_Im87h for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 22:31:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 901EC40552
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 901EC40552
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 901EC40552
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 22:31:34 +0000 (UTC)
X-CSE-ConnectionGUID: gE2r+1UtQOKKVxqJNjwlAQ==
X-CSE-MsgGUID: 4aj5/t/3Sy+Lba+RShjgoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="66329318"
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="66329318"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:31:33 -0700
X-CSE-ConnectionGUID: O2uUxDqCSjq+5U3VMdy5Mw==
X-CSE-MsgGUID: MTKKxgjaTiyq4zLv0NA8uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,216,1770624000"; d="scan'208";a="232498952"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 15:31:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:31:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 4 May 2026 15:31:33 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.51) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 4 May 2026 15:31:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hxGv3BjARpT5MSyudurSklhjyuXd7IHr6VbhSDLIgiOeAxP/+j2c0JNnsNoaNkocyUXw+YtXOtrt53cmYp5cSUR32h65qCkmYqFN9nbl0RAuli1IwUs2N3urgfCZPEBKasRglO/kjYoIljJo9pYHYGbN5SUypNPIZqF59mqpzeJ1P8eA4Ig56WfstpHykagZuwd7qLjd4wp/b+zNnAh5yXLNouA/y1KWo5A79o9bEXRv8e2+9rr3gs904XJypFJz1GzC17ZOhmvdhmlKJaki99XkTLXPguzPsR5fV4l62iyzO7APJAQkTQRPAT2ERYSjl2yk/A3UskDcUrc++BCT/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5wF3Zj2TgcRsc/ohyXDSIAPyiUQGydul42pPf/HxHhQ=;
 b=f4onmYGePbwGrfpEhjrE937q80ozR5GCRlaSkryixqsHe5JK3nqNS3uQbuaVV1jyTgSoqbpChPUtzxrdsmb6e6kCkYv4v8qR0xcZIpwoORuJpoNL1UM9mECDXvi0Cethgdb140pLnm+QuA34w83liH8bpX+dnAFibz8XgtUCxeVPYLiQYCS0pqh12a7aJd8xqN/iZy4hPLZKRoPFwpn+4YI2u9jQqFWJGtGBT0SXAeUkFq1yFEdS/0IlG5hDRgEL2FrIvG9uZ5YmsZN6R7W8T1WMW+BHDulxpS2jAI9kDcVdtsGe90LBHfpenQfo4cADzJmYQLOx4pme9MeITn9Rbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7592.namprd11.prod.outlook.com (2603:10b6:806:343::16)
 by IA1PR11MB6122.namprd11.prod.outlook.com (2603:10b6:208:3ee::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Mon, 4 May
 2026 22:31:27 +0000
Received: from SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6]) by SN7PR11MB7592.namprd11.prod.outlook.com
 ([fe80::3e09:8700:df72:37b6%6]) with mapi id 15.20.9870.022; Mon, 4 May 2026
 22:31:26 +0000
Message-ID: <ca256097-1538-4c08-ba01-777bf646fc33@intel.com>
Date: Mon, 4 May 2026 15:31:23 -0700
User-Agent: Mozilla Thunderbird
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20260217155808.1209194-1-arkadiusz.kubalewski@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260217155808.1209194-1-arkadiusz.kubalewski@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0264.namprd03.prod.outlook.com
 (2603:10b6:303:b4::29) To SN7PR11MB7592.namprd11.prod.outlook.com
 (2603:10b6:806:343::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7592:EE_|IA1PR11MB6122:EE_
X-MS-Office365-Filtering-Correlation-Id: dfead2c5-53be-49f1-b2e6-08deaa2ce11d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 9alGAZbSwzCIQ07AgQxOp6KwpMqbx0r62QtXJfDyRl/LDgp70lKnfQjy6qfoS8uJXWRxVyNXQbs5dK/pyno4Oj43h98PhYQ1fPVxAGcOZQ8J4KqFdnvz7jjPzsZH1X2+AcRnuw/rcO4ydkrnAY4nrjMr85E4e2mkMF+7+zzkJC/U6p8PtwJXLbcZMB5NDh9M2wtmTo4GaDUe+4HJy76bdU1vwDr1fw8NjcK/wmKC7dTFrfNV2KtbRepxBE39tPHlAMiutwZUD4+/gB8abso3PD7SC2CVDlC6Sb2B3gy6Khn3U956/06FfbI6y4/Cbx1AZjx9UtY6Bi4mPiJq0oNwwPSYUNzWXTUyK9W6iYsiiu2soA9WAzLgmKe3n51UkxWjrZg3o3Tu8sRoGnRZUHhH0+MGJ2ZLOnuYVa0UTYNh2krV2mA09AHaRGGVIpLl2MYn4XPvWm33b8unYtHNzm0PslaGmvc6upwhR7CW2QknLy2zXZmSj51HJ+ZN6Ln/Y1/1aeS55KtFGm1UfZyMdEfop6lp8uFRILLXsePqNQstPijvutgckisecR7Vw+QvuLmPhwYEKUQUSZE9wyPjnANrKVuXI0mt6e7csAkbNsFLs5C4VNU5fOLlqEhnTFgm09haEWGdTLcalnTjgtTMdi+caQQ1du/O2uiBbT/iG5lo0dVdKpCeUpXv5kDXQk6Wcx73
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7592.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0dqdVlMeTg0bENxL3JRQk9yenhzVzFqMisvdmR0dUZoSkdsZ0VtcFBEZkRw?=
 =?utf-8?B?THFDUW0xcXFLUGRXeEFtdjNpbjhubGcxWDVSbkNZWEpSeUx5bWN5SjdHUlJI?=
 =?utf-8?B?QjdvZ01MSWJLTzl0anAwa0k1ZytEc3VDTXEyTGpHeEJETTc3a0V4cmNQVFYz?=
 =?utf-8?B?NUw1bHQxa0dRaVJOM3N3N3U4eUZFVUs1bldzQ2JTUHJpTzB2KzFtVEpSd21p?=
 =?utf-8?B?am9seXlyL2dJMUpUQk53cWxGKzM0aTRzeElSSk1zcjdEbGZJTFNHUUUxcXND?=
 =?utf-8?B?bWlzOE9EZFVWeVlyNUo2VkFySWpDSGxkaFVqNFZOakV6NldHVVpNbEpQZ2JG?=
 =?utf-8?B?ZjF0TzBGSFBRbVlXZDZxNlcvQlZ0NHo5ZGtrTm83L0pyMFQyVGo1NXdydisw?=
 =?utf-8?B?eXQyOCtJdDA5Z2JZYnZiSjZmaVJRQnBwT0sxUjNGdjBUaUdEVGRXVy9JYnY5?=
 =?utf-8?B?c2R0dEJyMjVCc3lIT3d4ZXpsZ3RobkVRbllqNnZzMXR4dkV0akN2dnNWTC9O?=
 =?utf-8?B?b2J6VWhMTDJsZm5jLzlWc1g3WGUyaHlQWWZxQ0JZbFRzdjk0M08zejQyUjd0?=
 =?utf-8?B?NGFZZGtoYlBubDZMdWp1WGlGWE8xUmxTb2NPcW1nTXc5L0lpanJtQzJhcnZW?=
 =?utf-8?B?cXczSlliTGNid2VnM29WSXU4Yk04ZFNydGRtc0kvT1EwMHJnQ1ZyS2tzb2J6?=
 =?utf-8?B?ZloyVU5iblRtMHBsOWFXNUZ5cUM4NkE3VjRXTjB3aVhZdE1VaTdicVErQVBB?=
 =?utf-8?B?WFRHQThoNjY4VGpqZVRFbE9RL1NkUGo0ZDVKNkZucnJnam5iQ2hFM3NwcE5i?=
 =?utf-8?B?c3dzWnF3WUFyUDB3N2o2UWVLSzRTbHQrS0xkRE51QXllNS9xN3Z6Q3hxVnZB?=
 =?utf-8?B?WjBubDR3YVlqY3hGN1pnNzJKWjRnRktIZFYvUmV5S3RENGVxdzh5Rlh6NEMy?=
 =?utf-8?B?KzdZTWJpQjVSTkJ1TC9TTVdmRmxDN1VpZGxCRHVFL3l3bFprMTBTQllRWXBL?=
 =?utf-8?B?c054aDdIUDNZSFgwOHVTZHVPMjVQUDZMaDFpV2lxa2Y5S0UyZXNLb3Z3NVBt?=
 =?utf-8?B?SXFDVXc2VTVtbVRzYml2aW5haFRYOTFxdGw5MVJCVHl2Y2swUjVFN2FLTlpZ?=
 =?utf-8?B?Ri83bDNZSkpGVis4VStOUzJxZ2t4SEowRHhuV1BPSnhZVVZzSUtYa3FLdHVK?=
 =?utf-8?B?WndwMG5WMnozSmRmQnhud1h4ZTBrMEozSldpZVdtV1RXUnQvQjNQRHF0aUpK?=
 =?utf-8?B?bHBjb0Z3OFJNdGg4Rk9lR25EYmxLZ3g5U2VBUS91ZXczMFNnK3N3S28vajk1?=
 =?utf-8?B?N1NpZzEreUFmcFBBOEpEL3Z3RHlEZGRWZnJ5ZWI0R1NaZ1h4UVIwTHBwejFW?=
 =?utf-8?B?WjIwc25MdHowTVJJRjRZTTVTVFMyaXdYRGZUS0tJNC9lNHU1OVFCT1VBbisr?=
 =?utf-8?B?cy9KZzM3MmxCZ1luL1EwM0tvaXpPbG5wbnZtdmhDNGhzQ0ZNVnVhdDl1SDly?=
 =?utf-8?B?NEhMWUxTdGpDSldNRy9aS1N2aHd1UE9oN0k4MXF2YXJCcHQvRStTWkFNSVNo?=
 =?utf-8?B?ajg0Z2tVY3Z4aHVBUGlJOUo2dUF4Z0dQTDBoOHBsRmpsTk1kR1dleUJKWUl3?=
 =?utf-8?B?YWlBdWh2L0FtZWdoaDZiZU1LTzFJVW1PNkVmTWVOMCttMjl6cUc2S1dTa0I5?=
 =?utf-8?B?YUFiVENjSnZKU2JvOWdKeG1GWmU5dXlTMnNSRllrVDdxTENjTDQycHZ2djFo?=
 =?utf-8?B?OG5pRDE4TlZmeHdIaDJOS2Q2SVZCOURnN203TEc3UjY1Qlg4WkFHVUtQTElw?=
 =?utf-8?B?SUdVdVNVeElBUTVIa1hZYUFvd0dqTzFMa05XS2JsYStyU1VrdE02cjh4SENY?=
 =?utf-8?B?RVVHOEJndmFTSHRqTThzM0d4cVducHZmQWplTCs5aUxON2ZpQThtQnR5cnc3?=
 =?utf-8?B?UmJjNnB0UHFIdEJGSk4vWGdpSTdkQXRNMkVsT2ZWbVdwUzMvWmFBdy9vbmRT?=
 =?utf-8?B?Z202cnVocUlTYjVObVduVGR2Y2JNU1dvR2lsS0lKRTNTMUVTc2ZaL1hsOWdx?=
 =?utf-8?B?bDhuRmluRXhrd0xsaFd1UFdxK2N3ZExkZUZLdTU2UlhJZ1lOM1p4Y3N6cFZK?=
 =?utf-8?B?UXc0V3VsSmtFNTNiU2JEbWh3SElhc2NqM09nRFA5V1BuN09McHJzai9JOG13?=
 =?utf-8?B?a3JTUHQvZVdhbzRKVUlCMW5VWFNvNzB4QUw1anU0ZWRQb2ljdjZjcHFCcnoy?=
 =?utf-8?B?Wnp3RnYwRUYzSXRlWEFOVDdubC9FNElUVHVWUHg4eUJLWUVXbUVwWXovbTN3?=
 =?utf-8?B?WFRRYUFTdStndEhNdW9nU2NsNnFhMmYxcks3ZmZYYnd3QXVobVpHdz09?=
X-Exchange-RoutingPolicyChecked: LoKFGufrGWFtTATMOm9yZkMJ9a5EA3J0hfeLVMmv+69fX2d8w8odUgLMVyaO1JtXCJLVnw7cP+HFrjKdbqgMJ1sSv1Pmbq17JRqSa9Pi35rigiypPTtxgP1rTXjhgOcW1XuuKdHsN3QAQS4Xmqt+PLmQx0zxQ5hm7l0bvAfZeYGmMHMjQl3qaTixnWaFJjKTw1Frk42egx2j/TFfB7QTYW6A0cpdW6BxkCNWpqo8NQvXlfT0PESxYw01hMJ/BHN4j9jakXiuxItJAvHM+ZhUKy+v4Y/5J4cXQJguVoVVnvYxKSmXKDDN77nmYupjctZZ4uC4Oy988GA3YXcOd+GzQA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dfead2c5-53be-49f1-b2e6-08deaa2ce11d
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7592.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2026 22:31:26.8249 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jXmdebOuWsbmZUsmghWYiRtnynRIPt7jiAV2UtyKFvhglv6tm1fvqhQ92igLItmN8mnnbao55TAN0g7aXAs8uYgKOugdF3X/mLDBxzHsw+4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6122
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777933894; x=1809469894;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VZ6jtyevJIQjnIduk3JU1VyVdh3wQ+cp7uWu5N5TM/g=;
 b=fOfD5OXFQ1jVsI+bwfxvCPfNVnJdSaxThZ4phzx4FofpeBSrNjux1Ag+
 +aLDovG4fD+t83FkPdQ5Gh9RsfSz7t4C0lDBV4x5RSQzz8wAV4JB2NNXD
 O4WZSPcZuuvId1cZi3pnRtHXaVnJizeg666oSb/DPJAXJcXAy5mJR89t5
 kzwGPA4LZLbIrPW2Hv4r8o6vIQ7x7XhyWRe15I/TgbElW6r2ds84DK3xR
 vJ39tcMoZuEqChGKOIGRYfDUaP92rRYiu0e3Mk7u4fD5Np8ggO6pWlq9u
 I2Pe+E0qm3lK4QqddbgN/urK3EomC1qpZE6Gy54k/77dwIeMh7pUkmN0c
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fOfD5OXF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v11] ice: add support for
 unmanaged DPLL on E830 NIC
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
Cc: pmenzel@molgen.mpg.de, linux-doc@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, zoltan.fodor@intel.com, horms@kernel.org,
 przemyslaw.kitszel@intel.com, vgrinber@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 908604C4673
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:arkadiusz.kubalewski@intel.com,m:pmenzel@molgen.mpg.de,m:linux-doc@vger.kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:zoltan.fodor@intel.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:vgrinber@redhat.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,intel.com:mid,intel.com:email,mpg.de:email,osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]

On 2/17/2026 7:58 AM, Arkadiusz Kubalewski wrote:
> Hardware variants of E830 may support an unmanaged DPLL where the
> configuration is hardcoded within the hardware and firmware, meaning
> users cannot modify settings. However, users are able to check the DPLL
> lock status and obtain configuration information through the Linux DPLL
> and devlink health subsystem.
> 
> Availability of 'loss of lock' health status code determines if such
> support is available, if true, register single DPLL device with 1 input
> and 1 output and provide hardcoded/read only properties of a pin and
> DPLL device. User is only allowed to check DPLL device status and receive
> notifications on DPLL lock status change.
> 
> When present, the DPLL device locks to an external signal provided
> through the PCIe/OCP pin. The expected input signal is 1PPS
> (1 Pulse Per Second) embedded on a 10MHz reference clock.
> The DPLL produces output:
> - for MAC (Media Access Control) & PHY (Physical Layer) clocks,
> - 1PPS for synchronization of onboard PHC (Precision Hardware Clock) timer.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
> v11:
> - rebase and fix conflicts


Jakub rightfully pointed out the mistaken inclusion of HAVE_DPLL_ESYNC.

> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
> index 73a4e28ed75f..64518202dfff 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> @@ -2588,6 +2601,21 @@ static const struct dpll_pin_ops ice_dpll_output_ops = {
>  	.esync_get = ice_dpll_output_esync_get,
>  };
>  
> +static const struct dpll_pin_ops ice_dpll_input_unmanaged_ops = {
> +	.frequency_get = ice_dpll_input_frequency_get,
> +	.direction_get = ice_dpll_input_direction,
> +	.state_on_dpll_get = ice_dpll_input_state_get,
> +#if defined(HAVE_DPLL_ESYNC)
> +	.esync_get = ice_dpll_input_esync_get,
> +#endif /* HAVE_DPLL_ESYNC */
> +};
> +
Please fix this, and remove any other remaining kcompat cruft as well.

Also could you please review the following Sashiko reports and make sure
there is no issues?

The netdev sashiko.dev bot says this:

> commit 7aae4a54d3ef18d8694bc535b6e5959839c9adfd
> Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ice: add support for unmanaged DPLL on E830 NIC
> Hardware variants of E830 may support an unmanaged DPLL where the
> configuration is hardcoded. This patch allows users to check the DPLL
> lock status and obtain configuration information through the Linux DPLL
> and devlink health subsystem.
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
>> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> [ ... ]
>> @@ -242,6 +244,8 @@ void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info
>>  				pf->health_reporters.fw_status = *health_info;
>>  				devlink_health_report(pf->health_reporters.fw,
>>  						      "FW syndrome reported", NULL);
>> +				if (status_code == ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK)
>> +					ice_dpll_lock_state_set_unmanaged(pf, health_info, true);
> Is it possible for this health event to arrive when the DPLL subsystem is not
> fully initialized or already torn down?
> Looking at ice_dpll_lock_state_set_unmanaged(), it unconditionally acquires
> pf->dplls.lock:
> void ice_dpll_lock_state_set_unmanaged(...)
> {
>     ...
> 	mutex_lock(&pf->dplls.lock);
>     ...
> }
> If the hardware doesn't support DPLL, ice_dpll_init() is never called, leaving
> the mutex uninitialized. Additionally, if ice_dpll_init_unmanaged() fails,
> it destroys the mutex and exits.
> During driver unload, ice_dpll_deinit() destroys the mutex and frees the
> DPLL structures, but the service task processing these admin queue events
> might not be stopped until later in the teardown sequence.
> Could this lead to a kernel panic from locking an uninitialized or destroyed
> mutex, or a use-after-free when passing the d->dpll pointer to
> dpll_device_change_ntf()?
> Should there be a check ensuring DPLL is active (e.g. by checking
> test_bit(ICE_FLAG_DPLL, pf->flags)) before handling the event?


My own execution using claude had this to say:

> Now I have everything. Let me compose the report.
> commit d9b481c1d5d8be9dbbca36f40be64db91eb12caa
> Author: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ice: add support for unmanaged DPLL on E830 NIC
> This patch adds support for an unmanaged DPLL on E830 NIC variants,
> where the DPLL configuration is hardcoded in hardware/firmware.  It
> registers a single PPS DPLL device with one input and one output,
> reporting lock status via health status events and the DPLL subsystem.
> A few things stood out during review.
>> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
>> index 8e9a8a8178d4..31e6c5107c97 100644
>> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
>> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> [ ... ]
>> @@ -242,6 +244,8 @@ void ice_process_health_status_event(struct ice_pf *pf, struct ice_rq_event_info
>> 				pf->health_reporters.fw_status = *health_info;
>> 				devlink_health_report(pf->health_reporters.fw,
>> 						      "FW syndrome reported", NULL);
>>+				if (status_code == ICE_AQC_HEALTH_STATUS_INFO_LOSS_OF_LOCK)
>>+					ice_dpll_lock_state_set_unmanaged(pf, health_info, true);
>> 				break;
> This calls ice_dpll_lock_state_set_unmanaged() for every PF that
> receives a 0x601 health event, with no check for pf->dplls.unmanaged
> or test_bit(ICE_FLAG_DPLL, pf->flags).
> The only guard inside ice_dpll_lock_state_set_unmanaged() is
> ice_pf_src_tmr_owned(), which checks PTP timer ownership -- not
> whether the DPLL subsystem was initialized.
> Consider a device where the firmware supports health code 0x601 but
> the ZL80640 CGU is not in the netlist.  In ice_init_features():
>>+	err = ice_is_health_status_code_supported(&pf->hw, code,
>>+						  &pf->dplls.unmanaged);
>>+	if (err || !ice_is_unmanaged_cgu_in_netlist(&pf->hw))
>>+		pf->dplls.unmanaged = false;
> This sets pf->dplls.unmanaged = false, so ice_dpll_init() is never
> called and pf->dplls.lock is never initialized via mutex_init().
> But the firmware can still send the health event, and then:
>>+void ice_dpll_lock_state_set_unmanaged(struct ice_pf *pf,
>>+				       const struct ice_aqc_health_status_elem *buff,
>>+				       bool notify)
>>+{
> [ ... ]
>>+	mutex_lock(&pf->dplls.lock);
> Can this mutex_lock() on an uninitialized mutex cause undefined
> behavior?  With CONFIG_DEBUG_MUTEXES this would trigger a BUG().
> Also, on managed DPLL devices (e.g. E810 with CGU), the DPLL worker
> thread maintains pf->dplls.pps.dpll_state via ice_dpll_update_state().
> Would this unconditional call overwrite the managed state machine?
>> diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
>> index 3eea83b0cdc9..00704dfeb3b2 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_dpll.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
> [ ... ]
>>+static const struct dpll_pin_ops ice_dpll_input_unmanaged_ops = {
>>+	.frequency_get = ice_dpll_input_frequency_get,
>>+	.direction_get = ice_dpll_input_direction,
>>+	.state_on_dpll_get = ice_dpll_input_state_get,
>>+#if defined(HAVE_DPLL_ESYNC)
>>+	.esync_get = ice_dpll_input_esync_get,
>>+#endif /* HAVE_DPLL_ESYNC */
>>+};
> HAVE_DPLL_ESYNC does not appear to be defined anywhere in the upstream
> kernel tree -- it looks like an out-of-tree compatibility macro.  In
> upstream builds this means .esync_get is always NULL for unmanaged
> input pins.
> The managed ice_dpll_input_ops sets .esync_get unconditionally, and
> ice_dpll_input_esync_get() already has explicit unmanaged-specific
> logic added by this patch.  The init code also unconditionally sets
> ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP and ICE_DPLL_IN_ESYNC_ENABLED
> on unmanaged input pins.
> The documentation example at the end of the patch shows
> esync-frequency and esync-pulse in the pin dump, but those fields
> will never appear in an upstream build since the callback is compiled
> out.  Should the ifdef be removed so this matches ice_dpll_input_ops?
> [ ... ]
>> @@ -3153,12 +3181,15 @@ ice_dpll_init_direct_pins(struct ice_pf *pf, bool cgu,
>>  	int ret;
>>  
>>  	ret = ice_dpll_get_pins(pf, pins, start_idx, count, pf->dplls.clock_id);
>>- 	if (ret)
>>+	if (!cgu || ret)
>>  		return ret;
>>- 	if (cgu) {
>>+
>>+	if (first) {
>>  		ret = ice_dpll_register_pins(first, pins, ops, count);
>>  		if (ret)
>>  			goto release_pins;
>>+	}
>>+	if (second) {
>>  		ret = ice_dpll_register_pins(second, pins, ops, count);
>>  		if (ret)
>>  			goto unregister_first;
> ice_dpll_init_direct_pins() was updated with NULL guards for first
> and second.  However, ice_dpll_deinit_direct_pins() was not:
> ice_dpll_deinit_direct_pins() {
>     if (cgu) {
>         ice_dpll_unregister_pins(first, pins, ops, count);
>         ice_dpll_unregister_pins(second, pins, ops, count);
>     }
>     ...
> }
> For the unmanaged case, ice_dpll_init_unmanaged() only creates the
> PPS dpll -- eec.dpll stays NULL.  If output pin init fails inside
> ice_dpll_init_pins(pf, true), the error path falls through to
> deinit_inputs which calls:
>     ice_dpll_deinit_direct_pins(pf, cgu=true, ...,
>                                 pf->dplls.pps.dpll,
>                                 pf->dplls.eec.dpll);
>                                               ^^^^
>                                               NULL
> This passes NULL as second to ice_dpll_unregister_pins(), which
> calls dpll_pin_unregister(NULL, ...), dereferencing the NULL dpll
> pointer.  Would it make sense to add the same NULL guards to
> ice_dpll_deinit_direct_pins() that were added to the init path?
> [ ... ]
>> @@ -3923,6 +4001,15 @@ ice_dpll_init_info_direct_pins(struct ice_pf *pf,
>>  		pins[i].prop.board_label = ice_cgu_get_pin_name(hw, i, input);
>>  		pins[i].prop.type = ice_cgu_get_pin_type(hw, i, input);
>>  		if (input) {
>>+			if (pf->dplls.unmanaged) {
>>+				pins[i].freq = ice_dpll_pin_freq_info(hw, i,
>>+								      input);
>>+				pins[i].state[0] = DPLL_PIN_STATE_CONNECTED;
>>+				pins[i].status =
>>+					ICE_AQC_GET_CGU_IN_CFG_STATUS_ESYNC_CAP;
>>+				pins[i].flags[0] = ICE_DPLL_IN_ESYNC_ENABLED;
>>+				continue;
>>+			}
> [ ... ]
>>  		} else {
>>+			if (pf->dplls.unmanaged) {
>>+				pins[i].freq = ice_dpll_pin_freq_info(hw, i,
>>+								      input);
>>+				pins[i].state[0] = DPLL_PIN_STATE_CONNECTED;
>>+				continue;
>>+			}
> [ ... ]
>>  		pins[i].prop.freq_supported =
>>  			ice_cgu_get_pin_freq_supp(hw, i, input, &freq_supp_num);
>>  		pins[i].prop.freq_supported_num = freq_supp_num;
>>  		pins[i].pf = pf;
>>  	}
> Both unmanaged branches use continue, which skips the assignments of
> pins[i].prop.freq_supported, pins[i].prop.freq_supported_num, and
> pins[i].pf at the bottom of the loop.
> The missing freq_supported / freq_supported_num means the DPLL netlink
> code cannot report supported frequency ranges to userspace for
> unmanaged pins, even though the data is available from
> ice_cgu_get_pin_freq_supp().
> The missing pins[i].pf = pf assignment leaves the pointer NULL (from
> kcalloc zeroing).  Current unmanaged callbacks use d->pf from
> dpll_priv so there is no immediate crash, but if any callback that
> dereferences p->pf were added to the unmanaged ops in the future it
> would hit a NULL pointer dereference.  Was the continue intended to
> skip all of these assignments?


