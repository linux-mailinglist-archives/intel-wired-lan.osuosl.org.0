Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qycdH7zlN2phVQcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 15:23:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A7E6AAE03
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 15:23:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=CJJYAiMQ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0EF6B4EF54;
	Sun, 21 Jun 2026 13:23:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ykC1l1URfK6s; Sun, 21 Jun 2026 13:23:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4A6B4EF89
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782048184;
	bh=qMlib/P1GJt52WwbiEIXOSNQN9+Ub88R7r2hFbv/6xo=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CJJYAiMQgGOqBjRl/h1Txav8sxmOU8+LfMddPP5LMXk1rg8Kjb0C0RzyHtVFAvQxa
	 V3nEf2aubKKGMZ0caHWZOVyuIx8uYlJQ0JkUrGmTu3v+ok+qUtMkhR9ei3y7DCgOIA
	 9yagsAKCEcuhaiZZnQCvdfZD7q0KOJBudIQweaghurWAgojuihrBNTPqXm69a8x4/7
	 gp1ygr1NHIsqih5/LSP8G9APM2hJQs95x75GSYbwvtHsH4I2g4TwfO1wKSJwMXqISj
	 STfd8Uxtler1rS5qYk8Xcx2qbHazK9f2Q6d39HYaTYiMhMwt8oEzc25pX/O+j/qDje
	 2le9hbu15qATw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A4A6B4EF89;
	Sun, 21 Jun 2026 13:23:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 81EC0F4
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 13:23:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5FB3A401C1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 13:23:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i_swoaGl_6hu for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jun 2026 13:23:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7DC58401B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7DC58401B0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7DC58401B0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 13:23:01 +0000 (UTC)
X-CSE-ConnectionGUID: 84cbnzMuRq21p2Job4ZF+A==
X-CSE-MsgGUID: mt+0S6TISYGPJfi7JGp+uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="94300999"
X-IronPort-AV: E=Sophos;i="6.24,217,1774335600"; d="scan'208";a="94300999"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2026 06:23:00 -0700
X-CSE-ConnectionGUID: tcgN6j5eT8CnkTmJZnsX3g==
X-CSE-MsgGUID: LLxj0Vo+Tf6kSyEfXdWepA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,217,1774335600"; d="scan'208";a="246676638"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2026 06:23:00 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 21 Jun 2026 06:22:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 21 Jun 2026 06:22:59 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.9) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 21 Jun 2026 06:22:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U8nNCgE6oUPN74KQ8mGZezirveKcG0LlP071udrvVpo0HuAqwDeLkkXd301Bcngg3qGJIWEY+JlvAjvaZsfMD15wigFBCghK0X4d9ePvCeCrjGBspwKHY9NcEb67iG0JU4Rz/QSoNv/Z8D40Mmn5dqfRjmm82YbuuvUkWoqTHI96miJQfsxfechwbGTNP4E2h/23VHCfEqMj0+kaOakNIkdwlq7OJDPaTmHlMeEJwJnwdF34nlEQYY4NpbDADBpbSkerBb/ovLPlHyAAOfekbtS10ePYnoHT1CKV3+YIRtVe63q+8YvEYkHuQIW8iL12TxmUD+mgs7cY6nr8owPn8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qMlib/P1GJt52WwbiEIXOSNQN9+Ub88R7r2hFbv/6xo=;
 b=wbADiyEQsH2OQ1uXp/7jDJB9PuX2yNyPdeIIyPqJsE2CFCFJevRE9Y75+MlmaoyoGD+va0V/fyWHxmkOvp5kU41I8K2FLHJSaM0JkxYRBNyowC97hFekfqDiFeTUMTXsA8v6smH6qH5c70oS2S2DirirDmSuHpxoCZFNJrWC/mEVGBQjR1AeU2ZEEY/ZTK0HKbARaJEfrRf1YPewuLNYq91VtCUf8TGSa4LzNAreWIQ3m3ekG1liuqgRYfOXinXA3OFx2YcmIXXsH4OJSqukI5K61qAptxvxQO3V7TDlQjcxHFSd58G+CGVlejYysWUHjZQEDO2UsVrsEU1NiQue4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB9498.namprd11.prod.outlook.com (2603:10b6:8:261::10)
 by DS3PR11MB9645.namprd11.prod.outlook.com (2603:10b6:8:38c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Sun, 21 Jun
 2026 13:22:57 +0000
Received: from DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925]) by DS7PR11MB9498.namprd11.prod.outlook.com
 ([fe80::e3fc:2bca:409f:b925%5]) with mapi id 15.21.0139.018; Sun, 21 Jun 2026
 13:22:57 +0000
Message-ID: <dce2391f-8e8d-4eeb-97e1-c7070f340d64@intel.com>
Date: Sun, 21 Jun 2026 16:22:53 +0300
User-Agent: Mozilla Thunderbird
To: Andrew Lunn <andrew@lunn.ch>, Helge Deller <deller@gmx.de>, Helge Deller
 <deller@kernel.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, <intel-wired-lan@lists.osuosl.org>,
 <netdev@vger.kernel.org>
References: <ai8hmGQmXQu64Ld3@carbonx1>
 <e78576e0-9b55-446f-9d10-da3b7aec9b31@lunn.ch>
 <9d80ed59-5483-4c33-9d27-52fdf24aac6e@gmx.de>
 <51828156-e859-44db-9926-c076796d0f75@intel.com>
 <d86c0dd8-8bd8-495a-b750-2a0036fbbee4@lunn.ch>
Content-Language: en-US
From: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>
In-Reply-To: <d86c0dd8-8bd8-495a-b750-2a0036fbbee4@lunn.ch>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0012.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::16) To DS7PR11MB9498.namprd11.prod.outlook.com
 (2603:10b6:8:261::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB9498:EE_|DS3PR11MB9645:EE_
X-MS-Office365-Filtering-Correlation-Id: feb7f78f-1b6a-4043-7c86-08decf9835ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|376014|1800799024|366016|11063799006|56012099006|6133799003|4143699003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: 8EOuU5CNJas940KGtYX/ZHlGQCGHdyng/wIH4fRCpN1wdgfORiKwl7bH4dju4Astj+8aqvEKYAH0qFcHL24gbIuK1WRBTm0edmLnX2lqJBDnnStj65KDI4mWLtHCM1ArarXTclInUy9t23IHQ98Deud3hlRm5HsIiG5HP7/vhhokTqjYfcsR+XbVfCQ9ljdZBwVCHZB9cXClDLR42SHHMMT6D91S2Ti77UTxFO8/lxOv0XPKLcjqV4iqetzbsLu1RS9aBrtLiqRJcWdhlF5Yg/IzpS61O9bZrvkmN+XHJP3tQ+nKpIZdsl6H9CxeWjLO4cw+toRPPpJXCZ6qRv9Q+7MnGCBgY+ufyKJPCNMQeyJ5pgvfnF+AhyBxbEiC/gru+orQj/JSbe/65AyZ3tBq2iSvLmSzPlJkx3PC7BTgpVb4/fGcqkvJcaRmqkAzKwTgMMmq5TRZZKvwBeoOVzXbHJXLB8QjIvZzyNnQB3pAn/0HzIcdSFx6MYJ8IbjRAWzCx7BXCSm5rBvfIFP+BE0HBxo+paaz/oFoDhK4o1uBy6tLMzburSvYPoZDSHPoslxmp5Dt1N5zZjfd9K/zdJcL5bGXhyj43KtNQlRNKibcz3otr5M/Ts6aWFfYnlce9OW5XnijW+koj6gwJtd+v0ctv+OVTuI62xTz7LOOtjoAKW8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB9498.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(1800799024)(366016)(11063799006)(56012099006)(6133799003)(4143699003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K095Qno2QTFVc3RURURFNnhDcE90TnBPc1R6dGE4K2JYNHozOFB1Qzhack04?=
 =?utf-8?B?ejFmT3V0UGtnMG9XdlJMMkRXQlJyMzFYMUhVWk5JaHE5YXRCZEJuQWxYSFVu?=
 =?utf-8?B?cFVIbkpxVGEzZFp6ZGsxb05FZVhQZmhGc0VtaEhMd3lYeVZ2NlFqVDl3SWVx?=
 =?utf-8?B?Y29ueG1pU01BTmQwQlhJS1Ftdy8rQzlScTNqNThWUUtvVUsyQXRSNDd5eCts?=
 =?utf-8?B?TE9FRWg4V1JmVDlUNmRWSGw1SEdsUmlmRVBzV1BXckYwazVFTzZsR24xYWxW?=
 =?utf-8?B?U0o0QmxzNksvZC9GRzhWMjBKTUw2TVZCQk5KWTFnODcyZHA2VWpjWW04MjF1?=
 =?utf-8?B?eEsxNndBYWNENzFHeGpvZXhBa3ZMbDBJbnBTTHM5dFJwUFNBcmdEdy9PSk1Z?=
 =?utf-8?B?RWpJWUplV2FJdzZOcTJCR1lHZjBUMGhSOC9FcFhzMUNEZ2F6MlRid0FFdi90?=
 =?utf-8?B?dUdab3R4WWFKcWVxZ0NyWis2TzFWYzN4UVEwaFVTK0oyUVoxUTNGNTloQUlw?=
 =?utf-8?B?UXRwRDZzTk1NalE5NmswRzRXaTJoQktyeHIvNWxrL1JGMTRyclhrVzBCWHFu?=
 =?utf-8?B?cU1paXRxNXNmM0lFUTJybHRpNWNtVzJRVHBpTVlvVlZLSGQ3NGlkcnEwZ08w?=
 =?utf-8?B?UFBTZzg5eDVhZXM3a2lNem45MHJOa2YxNlRUUnBSNkNUaHhKSjE3YXNuYmpq?=
 =?utf-8?B?azB2ZjFRc3MvYzY4SE01U2Zabm5jQ2JLS1ZrU2psMzdUQTF2K2dLQmRSSnYv?=
 =?utf-8?B?bENjRE9RaDVhcjZSdkJKZTVRa3prM25CSUZlMTJUU0ovUEZ6U2RIMU9rZHNI?=
 =?utf-8?B?Sm5TQVBqRE12QU5FNDgrN0RyQmc0ZGJaRUNLQUZ1TlN4dFA3MlZLdjVQNnNn?=
 =?utf-8?B?YWR0RjR2MkJXRnpvLzVtc1oxTXpSMy9pbFlSMFpkT1BiazVmK0Q4NHNpM1dU?=
 =?utf-8?B?eG0wSnlXTUFPQzlkOURQRlloNzA5U29qWjJjUytsa0hrVUNiWEpoTlF4YjIr?=
 =?utf-8?B?dVhiYnVuUC9XVmpTMnphOEs2enZwbHhDcy9KbGpGaHliOEFRNitpQk10eHlF?=
 =?utf-8?B?TUY5bzdUTVcyblRNU0toWk1hT0ROZ2QzT0Vjb3lGSjQySEl2VEpHb1M5TlU3?=
 =?utf-8?B?UjVSbWVhVURQb0x4Tm1iYmhDZ0M5UVo3b1VTOEZYOFo0NlZjR1hYVG53WW91?=
 =?utf-8?B?UjFhYWw3VmtTQzJDOUZhd1VndUtwUHlIM0IwNnFYam5zTkUvZFAxTkdTWmQv?=
 =?utf-8?B?S3ZCMHdEWjhQOHJacGovQWVHc2JtRk9RM2YzUUpmL1VQZDBQNGRRRmZiRlN1?=
 =?utf-8?B?K3dzdmpXN091WHFPYndLNHl1cUlLUjJzOGJoZWhpazJPT3hoVDI2c2RPWUZ6?=
 =?utf-8?B?T25XclhSWEx3YUFHTzVLOGh4WU1jbUlOd1UvMDQ5T2laYjVBK1d2RE1Kd3pm?=
 =?utf-8?B?NHEweDBFbkZHZW9QNDdTQnp5QXB3WCtLUy9YbW9peDgrZGliYU9aR0g3ZU1W?=
 =?utf-8?B?MXRlNndYZDJxVldtbXNQdXRuOW8yTzgxMDI3MEpPSmQ0SUpSUk5PSEZMbG9I?=
 =?utf-8?B?OENIeGJVZGZhYnJNTk1IbEloRlFYSkZkZXBNNkR0UllsNEVOOWt4RVRRby9K?=
 =?utf-8?B?bHYzeldxclVZV1ZZSEFPVXByK0c4Zm9JaTkzVndqM3c4YVBZdklMVTZsOTB4?=
 =?utf-8?B?ZzV1SlczSC9tUFlQODFRTjZlNWxPbXQwUjRVOExLVmc1U3gyWE83TkNxUmRU?=
 =?utf-8?B?aEhORnVlQ0dzakh6RWJtUmxxNzJKaGJVR2FhRW1VbE1RNytWRXdVaXRNMzR2?=
 =?utf-8?B?L3hOWUdZU0pjUXVDSHJBbzQ0TWtycVQvcWdOYTdXZXpzamhweEpzaWV5QXUx?=
 =?utf-8?B?R1EzcURwOTFpeXJLSXRtZHgxdFZjN1ZEckdnYmNaSWl6am1FOFhFU0U5RHor?=
 =?utf-8?B?elNUZUpGZkhpMys3VC9LN2VuWk9IblRLK1N0QjRxbm5DV2RhY2F3bXQ0djVD?=
 =?utf-8?B?SndRVzdwOEZLdG4rMTZPS2FDK2ZTQ1BjY2FDL1ZjRWNJaWRhd00rbzQxbnZL?=
 =?utf-8?B?cjlpUEFEK09IRW5NWUZhbHdUV0hNTUVrZEhQdEJ0K1FIcVdvQU9HKzJrcnlj?=
 =?utf-8?B?ZmF5L3Q1SDM1TnBWNk9hdUlnMWFBTTBjSXFHNzlVcFFNZjRNMitUOU9kUG1i?=
 =?utf-8?B?YW9teGtiOHg3bm92VUJxNXQxL3RrZUtRdGxUQ0NLb2RjcENUZFNlTzNBSW03?=
 =?utf-8?B?RW9PRkJyWEw0TXRkLzIwNXBOelVhYXhJdWIvY1BHWEFXcW9iVVNGTmU5bkhl?=
 =?utf-8?B?QTQvL045UzZVOTN3Ti9yWEVQQmlEMlUrT0xORGQ5Wno2OXdSS3V4QzFtZVBS?=
 =?utf-8?Q?e1WKN8NgD6P545ek=3D?=
X-Exchange-RoutingPolicyChecked: NK4EwFvS82kXxg67CDlU41cJq6vu6qjYB0fxEwyF5vDLiAF3sgtdbEcfsy/2Y/8WJAELy1aifi50fVlmRrQwpeRIQBKmCYGTYdYxSJBX4Zy1P+nmIWmAEXVSVp0Ugx+CTEkR2Nh5BQZKqqcJ0hWtwf6WdAKrgS/RLLhzxWF7Uzddz0cmATUWPQlsStucUQoE693NgB1dS/2eHpQ/ABhCfHq1zn7xrBJHefwk7jcTY3dGLsilEWxzoF1MAe6XjA9lAyL4o5dbNBIPjjOMshJDKePD4nPZTFRGMG5o/5jUNkuFVzd9zfC2o7eFK6gI/20H8cO/dNa/DwjTKVVZn42rPQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: feb7f78f-1b6a-4043-7c86-08decf9835ac
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB9498.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jun 2026 13:22:57.7818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FBYZNox03W9MvsFS47o1/CcUwzteqjWCwzqhvUehJ2Q70ib2UJsPwR303+cHs9yzFJ09yNMZ8WaqJU5tdJ8rIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9645
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782048181; x=1813584181;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vPatZRrD0dqBJzy1SWGWBRMNuEMPUVRQHLxTPVBgZiU=;
 b=kFrry7P2L0l+YMhgKU1NJ4m6/3t0kWaSUR0fj2ANB/HTPYR+n9ppVXVY
 C7zhdGD0sSnBFM9PwSqkZ8lGBgGJR1jSOQ4twhVSBIUBk651TGMqUVtJv
 GJuWqEX3IRcL1004LenBpepBX9eFDWJFocME9T/AJTFzwo5hQySL1L4bt
 6lvoewMIlD4K58JJUkiOVqrOe1vHCGvTH1Ls19XX/HBqINwHhWzAT2gTO
 prWX1wp3RZMyfkHhuA7nBfRsyX7UE8iJW5axbrL9f1b4ViGOAlsiBgnju
 C+2ePLTGB7XZw1QFVYcdjDxu6GPf1/aOvC4ken3akBDTVrBem9d+MqJyn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kFrry7P2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] e1000e: Report link down after "Detected
 Hardware Unit Hang" ?
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:andrew@lunn.ch,m:deller@gmx.de,m:deller@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,gmx.de,kernel.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:from_smtp,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 65A7E6AAE03

On 17/06/2026 0:59, Andrew Lunn wrote:
>> This does not seem like the right direction to me.
>>
>> The "Detected Hardware Unit Hang" print does not indicate that the interface
>> is dead, but that the transmitter is stalled.
>>
>> This can be due to an unusually high load, or a HW fault / race condition
>> with another component, etc.
>>
>> When a hang is detected, the transmitter is stopped with netif_stop_queue()
>> and eventually ndo_tx_timeout triggers a full reset to the device, which in
>> many cases recovers it from the hang.
> 
> Does a full reset cause the link to be negotiated again? If so, there
> is no harm in setting the carrier down. If the reset is successful,
> the carrier will be restored. However, if the reset does not recover
> the system, does the carrier say down?
> 
>      Andrew
> 

The way it is written - a reset triggered by the Tx timeout path will go 
through e1000e_reinit_locked(), which calls e1000e_down() followed by 
e1000e_up().

e1000e_down() calls netif_carrier_off() at the start, and e1000e_reset() 
later. e1000e_up() triggers a link state recheck, which should restore 
the carrier.

So if everything works as it should, the change proposed here would be 
both redundant and unnecessary. However, we have been getting reports of 
these unrecoverable hangs from time-to-time, so I suspect things do not 
always work as they should.

There is one issue under investigation at present, where a persistent 
hang was reported following an aborted hibernation attempt. We are 
testing a patch against it.

I did not see anything in the original description of this report tying 
the hang to a power state change, but I will happily share the patch 
once we get preliminary positive results.

--Dima

