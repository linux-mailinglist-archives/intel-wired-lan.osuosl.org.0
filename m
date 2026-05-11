Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SB3XHXqjAWpKhAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:38:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 70EC350B0B3
	for <lists+intel-wired-lan@lfdr.de>; Mon, 11 May 2026 11:38:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 451BE8119A;
	Mon, 11 May 2026 09:37:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zAdPmzHpNatH; Mon, 11 May 2026 09:37:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B50D48118C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778492277;
	bh=qfdyIMfBaZwjVef/ySXRA1uvzgUhS1vjqARbnbClQ/c=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7fsVaDEVDk65a2CJ+hWCmt1rwv8Ig0337w6BvJn4DVi5WkrhHH4wUw2bzKRgb+BaC
	 HIgldV8MfRnqN400u4mLVCKo50Fr+Nw4pwmxseP/ZE2o0q9R4vn4VZHCmLRbJVmnXM
	 2WzA2zkuKUk2ovWvZ7QxjgvwDgHVUVkp5vfFOQvZWE3k94Mt3dEhgsWZcg12l/IUBA
	 IJVETgxK2FMQwRa1m7mx45f2nYoIoHOVrpwT8LDdVIPjzhUUWZqcC6wcZtNWezS6Jb
	 jT4goDrKOn0zsdWMD3GgPUVD9pa1MxMfWhaqy59Tot0tJ0ZEOaVRWpNkF+lxw4unOX
	 v8kmFQuwDtQ8Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B50D48118C;
	Mon, 11 May 2026 09:37:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 154D8272
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:37:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E785941592
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:37:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h7wYr_isyoR1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 11 May 2026 09:37:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3BE2741480
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3BE2741480
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3BE2741480
 for <intel-wired-lan@lists.osuosl.org>; Mon, 11 May 2026 09:37:54 +0000 (UTC)
X-CSE-ConnectionGUID: 6D5Sd+NYSAuW2xgbmb7KvQ==
X-CSE-MsgGUID: /53iwtq5SWa7D+75z36rqQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="83244824"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="83244824"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:37:54 -0700
X-CSE-ConnectionGUID: VDcIG6VvSJufaIVGOwWdqg==
X-CSE-MsgGUID: jX8VOHMhT4y39Q6Sk9rfGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="275540477"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:37:55 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:37:53 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 11 May 2026 02:37:53 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 11 May 2026 02:37:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aHdDExwRIT6eAN6WViJmijOAa47DrXAMim5Cm1pEcoVghm3KYOWrYUfzl4iedIimmH3+V7SA+6IJlEQkLpRJIu53lNow1htNlhyqUo/o8VaLAUayemFjCFhTmqiBlFTeGgueX0BM+i/Sv4tv/9r3JoBfAhjPwibc1vyLMMnmZcOQ5tVsX+dN2vd5ItrxggG9V3nec/ZM5zZVXPaYlr/qnZtbg1JUtXRz/hdxvYQ0LZ4tUIYACWmELQl7pFuiItXq282JHAstj8+hqnuatkBN35TlUObseUKnw7DnIcFujIkPfBuxnIXmZIL4aJvR2A/QPw/IBH+FJf9rYpQjS9iViA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qfdyIMfBaZwjVef/ySXRA1uvzgUhS1vjqARbnbClQ/c=;
 b=d/HP/tSHwlBHm7lddw8H+byZpzXVeOfOZ1CND/xf5m7IUISVakCoiPySWwDsJJP8kWNDviV1ZmFyuiCvcM5fJJTd9sDTp4v7ddh5XUNNFbplU8ltgQDCnDWoastcZFo2XThhjVHt9ISVGzMxAnLyAeJ6WO+qg6l/a+YF4Bw/Lm+p8tVAX5muAgvcQ5y7JbgpLONnBGxBm5/OrC13k6qtpsjecokUlZJ+i8o/Ma/Jjo2xxG0RT4y2fay363X9DA/m4v3O17k851yp67pEj4d1XJD4ti86TXNPJX1Z/3V54OO5UY6j7r/wpTi6ialdY1KIw5Wz0Tm5cSYt32KbwfzhIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by BL1PR11MB5977.namprd11.prod.outlook.com (2603:10b6:208:384::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.23; Mon, 11 May
 2026 09:37:45 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9891.021; Mon, 11 May 2026
 09:37:45 +0000
Message-ID: <c3df8514-9f69-4502-b9ec-debf4b1da290@intel.com>
Date: Mon, 11 May 2026 11:37:35 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
References: <20260508124208.11622-1-przemyslaw.kitszel@intel.com>
 <20260508124208.11622-11-przemyslaw.kitszel@intel.com>
 <IA3PR11MB8986A92C9A9F7763410E8607E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <IA3PR11MB8986A92C9A9F7763410E8607E53D2@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2P250CA0020.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::25) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|BL1PR11MB5977:EE_
X-MS-Office365-Filtering-Correlation-Id: 28f6ae89-8a0b-464d-3163-08deaf40f4b5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|7416014|376014|366016|56012099003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ayL7KrcSkAAQ2tT6aGyZ+qYRtQcv9zWh/JsLB95gugD2+lENI1mSPTMfsltgpCm3cq9chQkvMONOUF5eojNkm0J5/87SUUJJAmjQCH94EckOK8AyWly2EeXL+e4wnzO4bgFk6gqso1SSRByMPEsQ9eEBB3u8kVcez7jQVZssz0rQRHLUg20zou0OqrOQs7ODJAqrdFzrFyoK5nI4RHqLPh/pkpcO9ULS/qtBi+PdkeFpNyVSUAWRsUXj9lUuaOwbTBAPJzlum2njATGQG/alXjMo5Q3In7Li+bU5OAgiA+ksFFTiNd2HekKHaqptwnZyE0dSAzmx0Xi8Q1if88+JymD5WfwP7jmcWIjbqz/pL5GDNrLrBy/nfaIMt6iTgmo1HNzl+OkhkVbIy2vW/khulbH/6tOTLaAon4A1/EmzV61TJG2aOGbU5QvjCNK1J6W9XRJRxNr6JOyHYpE6qy/Qqt6Mqb8nbpNr2QGwDFKAw6k1yWQb7sLP7OEwa6WqIUqolK2o8+Tf2v8ob6gmCw5NsEOlIqczt0RT87tMK9OChxVzvLJks+4jrDXVrftFIdXVwD94HL7eJBMknEnQoqAfC8EWQOpxyqYmJOv3WuPchDcr9dQkrVeCTZJDKCctwwJU9QQe3z4z2n6YwBRgp6rS+MV0QyDWOcYHoVGZP8i01JAGCtrNq8kuN51+xN1VqMpG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V3RCR3hrTWtPc2t6elM1anpLNWE4ZzN3d3ZBdG9qRnQ5Vk9kd1VPQVlzazAw?=
 =?utf-8?B?eXY4TjFzc3dCOXdmazQ2Qkk1aVJYQjVpM0k1dVh5d0RQV3JIQm9rNUhzREUy?=
 =?utf-8?B?YTlheHpOaThoVVhMeklaUVhyeWd0aUNWOE1PdXRENjN5eU55STNES08zUndj?=
 =?utf-8?B?WW5KeW5UaWpvRGZtTFRzdGduZkNuSFFUOEFOU0d5b1BmZzMyWE9MNllhZHJv?=
 =?utf-8?B?YndQNWVaRm41WTNVT1VJOGRJK0h5b1g5cit2ZUxkdGo4eXA4TG1YbDRMa1dJ?=
 =?utf-8?B?Q202bWYrQiszL3VreWswbitQZU1QWFdTNkFtc2NkczRDOVZVV1NzbWN3elZu?=
 =?utf-8?B?eVk0N2VOaHRKNmZxd0dBVnZqOEdRemtXa21naCtSRzJTODRObUxjQ09QQUtV?=
 =?utf-8?B?OWp0SXZBNUd3UVBjYlJvUXF5dEdMNENYU1p0Z05sT2szQWlkRWd5dUtZODlX?=
 =?utf-8?B?OEEycFhmUmgvczZhcW1uRU5rR1RFeGlWVGUxdWlaaEV1QjhsOS9qTjdUeEVh?=
 =?utf-8?B?bTRVTy8ycFo4cFdSWk5VWTVIV29aaVlmMUUyWTdNTEtpdTEyWGE3eWNYbjlN?=
 =?utf-8?B?M0dpSW8zSVovVG9yemhYSWp0SzVScjJVTEo1WUFWT2dYd3pvNllUS3B6UEhV?=
 =?utf-8?B?M2NBUEpyNTZnWEtEZEx3cmE2UzdJdVJFKzRXcExFc255alF2VnZCdDNQM1VD?=
 =?utf-8?B?eGo3cWk2OHMrUTVzcDFlVjFLWHRGSUlwYlNCeit0eFUwWjQrSWJOQ0xNVGdj?=
 =?utf-8?B?eHVINnN6TW16Szk4aC83L082R0x6RjV6TGljdm95dDgvRklQNXczTDVNZlVP?=
 =?utf-8?B?RUc1QjcrQUVCSGV2MVpMR2Y1N21OTFdkMDNjU21rSTNZK3B6cTZhMjI1UlU0?=
 =?utf-8?B?TVZtYkZPSWJFQVd6NzQ3K2xGelVoOFlJVzFVN2UvWGNQTWZiaEhmNENpRnY3?=
 =?utf-8?B?QzVsdXlodFF6OXNnbVdjb3A1bmRaWnh5UndSUTFIR0VCdzNtTXBRTW9wOENQ?=
 =?utf-8?B?Mm1aUHFaeW44aEhONi9DeG9lTFJOOW1zZlM5d2FSTSt0RFdMVVduNE1aajU0?=
 =?utf-8?B?VTBIUXhwbjREdW9MUDg3d1BCZXdJYUVRUXVwQkYvUVE0RWJKMUFtYzhyZW1q?=
 =?utf-8?B?a2tkVU9qTGhtOURBN2VlNEdSNDVwVXJQZjJ4cWV0MEt5LzhkTmtYY1FwNEZz?=
 =?utf-8?B?MUl5bmhlOFZoM1ZCQkZ4MFZVdEszak4rQk92YUNqMHZFK21NbUUyNEFmQkZM?=
 =?utf-8?B?VGY2SUIxeHhuQVJMbm91OEFHcHdXRkw5U0pWMWxvQi9zNTJrZU1NQmV5RHMz?=
 =?utf-8?B?aWZaSWV5ci9Lalk4T3VJVlQybUl1L1BUMnd4bkxGM1c5N2RveEdyRlduRzFl?=
 =?utf-8?B?SHZUL1Q4YjNZQ0xMRGUrK1RMSE5wQ0JYR2hHUmM1SnpYUHBoZ2dvNFRKeERq?=
 =?utf-8?B?eFFaUGdtTjlHVGRjTDYvMU0ydENEaXhKeWdkSlcvWHhMOGQvK0lmcFFiZURh?=
 =?utf-8?B?dDl3TGFmSTNudE1tUjNpZzJaOUU5WHdDeWRLcWtMY3JUQTFVNExaOC92NlJ1?=
 =?utf-8?B?TGtMMDZYK05jZk1LRUw5SXJHeXp0bVBLTU5LanhUbmhsdkVTTlFrMGtuT3c4?=
 =?utf-8?B?WWhqanVIQ1BWQUVrclk2K0dOWVo2TFVZM29UVno0b2ZZeGZ5Q3ZtSWQyT3dw?=
 =?utf-8?B?THRzZGIwcXpkc3M4V1pBeGpvMndGbW1MSk9PbU5RaFk0UGJTSzlpTTBtZnlu?=
 =?utf-8?B?RkJxcFJEM2ppQVJUTUQzWUxLZU5NaC92aWFQUm5EY3pnbVA5K0pRcldIWEI1?=
 =?utf-8?B?eklEZitSVmIxa21QUXNCcUdOZ1o2WERTSDJjMWY1RTE1M3Z0SUQ1eEhiVHU2?=
 =?utf-8?B?bktMbDFSMXdsMkRoSTBjVG85VmpuU2VEL1gzc0d3K2d5YTlYZmw3T2k5bEJs?=
 =?utf-8?B?TWRYdjBpaE9pYUFVUWQra0VTRDBUaFNTcmpIQ0Rzc3ZSaStjT0FOZlY5T0hQ?=
 =?utf-8?B?ZnlBTzFvN3l5bTNQOEFqbjRYVmZEUUNyMEZDcnh3SkwxOXNRRzVMWm8xZHZO?=
 =?utf-8?B?VS9VSytFazB5UmtiMm5iZXdjdzliUEpFbnZBdEVaYjNYcUJVNVF6UkJSSExi?=
 =?utf-8?B?MmRnOTFJa25jdHBNelI2a3FWNEZJc2tXSi9EM2dpZkpONEJTYThEV29HSW93?=
 =?utf-8?B?Mm5VZW1lWXlOMUlmUmI5N1dPN09TNFZpTU91OWxvUGhXMmFiREkvb0FSblYy?=
 =?utf-8?B?SzNKQ3VURVozU0JyYk4rd0VDZU1CNEtaOUlhSG0xaUFGL1JEYU1uVVVTdkhY?=
 =?utf-8?B?Nm53MEtIbkRjT3BHRWhrSWRJb0RwVGUxMUw4c0o4amRBZ1pvMFVsRWIzbURC?=
 =?utf-8?Q?cR0oIhm+GUVsRy4k=3D?=
X-Exchange-RoutingPolicyChecked: WHyVur7S/bivHnPT8qmlb7oAx5Jw9B80MTEdm+cu1WsB6jI8fAz995dSAwzaHcfpf1JdogRpYkUbXXeYcfYGubLauZ5a5rnm5H52yT6ymFitlB5vjqoT+5l2iZl4+x53Q3uF++W8JbwMNTHbw0rL8y2WOK15cYjDJqNAZcdSSJZPSpMExXZu6UXdrVF2FrTE1oDqGCP+BoKgwgTr54o6g34XJFwZ44Az5s1mEwrP+is7+hyjt890S4ilI96OV9Hr0lFXRCTvdan/lnmKmTYNUrcttJPht1+1APCiYFFAnELEQrGM2U0Wuz3y8BbRCMOuAvye0JiQBwKGncUQxAZ4kQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 28f6ae89-8a0b-464d-3163-08deaf40f4b5
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2026 09:37:45.6522 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2onLYIXFtHawBbtQ1XhMN7o76f/RZm8eJ2AHeo2d0QSbPkdml8cD3ZkjNqrn4RcDQudS794WemAlZOVe2hmY67DhUq8qZRX9imMKx3hFHEE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5977
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492275; x=1810028275;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ur+IS6wihaPxMR9pT3JatONMbRNmRQhC9qDt84VwXd0=;
 b=DLdsV1/vIvUKIuN30ZzM5y1vA5y+skcfBkO5aydbGTTGB0bD2hOZfqES
 7PliVrMj+MoCT9HJ40BTWJouY/6LvOzGREReNygc8aOBk0lVolqs6uMvR
 Gsrex6nJ1N28BCKaLRIXbbRppR1XzHvZBkCTCmHsEGMNSY/cAqJ7Ej/5d
 Kwh4lp4nfUm8ar8UfcGUYxU5XrOesMR1c9eRWRQsUR8jNVMJ9JwkjBTOg
 bA4EQ3CLYTwf1QNmXes0UvF3VsFMgEUjfJaq35xH/Gn7hiB+qzaB2NroY
 dOdBh1zi/KKAJtxK+vRACm78Zv0eIFGcSp2bLndW6qdSoLAOWrpal0e6Z
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DLdsV1/v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 10/15] iavf: increase max
 number of queues to 256
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
Cc: Eric Dumazet <edumazet@google.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "S, Ananth" <ananth.s@intel.com>,
 Leon Romanovsky <leon@kernel.org>, "Medvedkin,
 Vladimir" <vladimir.medvedkin@intel.com>, "Jagielski, 
 Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Miskell, Timothy" <timothy.miskell@intel.com>, "Keller,
 Jacob E" <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "Czapnik, Lukasz" <lukasz.czapnik@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, "Richardson,
 Bruce" <bruce.richardson@intel.com>, "Connolly,
 Padraig J" <padraig.j.connolly@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Mark Bloch <mbloch@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Simon Horman <horms@kernel.org>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>, Saeed
 Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 70EC350B0B3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:edumazet@google.com,m:anthony.l.nguyen@intel.com,m:ananth.s@intel.com,m:leon@kernel.org,m:vladimir.medvedkin@intel.com,m:jedrzej.jagielski@intel.com,m:timothy.miskell@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:lukasz.czapnik@intel.com,m:jiri@resnulli.us,m:bruce.richardson@intel.com,m:padraig.j.connolly@intel.com,m:netdev@vger.kernel.org,m:mbloch@nvidia.com,m:tariqt@nvidia.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:michal.swiatkowski@linux.intel.com,m:saeedm@nvidia.com,m:davem@davemloft.net,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Action: no action


>> @@ -554,8 +554,9 @@ void iavf_map_queues(struct iavf_adapter *adapter)
>>
>>   		vecmap->vsi_id = adapter->vsi_res->vsi_id;
>>   		vecmap->vector_id = v_idx + NONQ_VECS;
>> -		vecmap->txq_map = q_vector->ring_mask;
>> -		vecmap->rxq_map = q_vector->ring_mask;
>> +		vecmap->txq_map = bitmap_read(q_vector->ring_mask, 0,
>> +					      IAVF_MAX_REQ_QUEUES_VCV1);
> It looks like a silent data loss on the legacy/V1 opcode path.
> You read only 16 bits here.

and this VC opcode is used only with upto 16 now
next patch (11th) adds an early check in this function to dispatch
to new opcodes in the case that more than 16 queues are used

(so, no need for change IMO)

> 
>> +		vecmap->rxq_map = vecmap->txq_map;
>>   		vecmap->rxitr_idx = IAVF_RX_ITR;
>>   		vecmap->txitr_idx = IAVF_TX_ITR;
>>   	}
>> --
>> 2.39.3
> 

