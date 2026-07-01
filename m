Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id AYfiBEP1RGoU4AoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 13:08:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5680F6EC936
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 13:08:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PxXCaJsb;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7618683E4B;
	Wed,  1 Jul 2026 11:08:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3SC_vPIawY8g; Wed,  1 Jul 2026 11:08:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1D8A83E4E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782904127;
	bh=7JZ6V67V0I0kaUxJAh5bOvUUvGJA3EDHBUFAawb0ksM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PxXCaJsbbRRjKm8uVkc2e1MCiVakx+wuOpsBosmpk5fGEgQNR7gz9YCAC0FdSUVxN
	 9J2IVLFDlsIxvhpTkEMTvpYmrPmHFtxFKzn07Df7KKLHqwBkPjuOLP74iNUWr9+qDT
	 WOOuCKcCuZGszbjkcSBr1LIruxtBdPnDLAsHZr/V74Zx8CY7ZDfGHIubY0UkZZDO+U
	 YAl0xdCgOo1iOKcA3UPc5n6KDVOBFq9Zof9tS1F8/0I9ILX12NLT0JrrgavtS9Q56F
	 poEuctjykS8JjZfV6QPIl25xHA5tgNQSYUtqpE+eQwfnaGIeiBLJcEseTgJXoopY3x
	 KfrG9y4mO760g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1D8A83E4E;
	Wed,  1 Jul 2026 11:08:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1B6DD2D5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:08:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0D20C405BF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:08:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Aqwu3MdxLZay for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 11:08:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=adrian.pielech@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 21DAE406C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21DAE406C9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 21DAE406C9
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 11:08:44 +0000 (UTC)
X-CSE-ConnectionGUID: 3k671vjoTXulFUIcX95GFw==
X-CSE-MsgGUID: /QK5zIjlSmWGzo6gbkEGqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="87546288"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="87546288"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:08:44 -0700
X-CSE-ConnectionGUID: GSuqByzIR0Ww7joUgbtBhA==
X-CSE-MsgGUID: z6So+sPFSwq7cNe5vtX43g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="248563632"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 04:08:44 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 04:08:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 04:08:43 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 04:08:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OrSLE1mj66rqVw2dffMpzyFLthfmdRjpuf2O29tUhZYuh8E0vX4j6pe2dH5yn3uhE/KaSjLib1yH1EnpzbC8aC3pmcwI07LAL7lZCQ35ZrzCi9eNDmKrYcJDNpdKH/ukvLaV0f1PCOLzxOCjwl6MqZyTYcR3jGXShEFbh4EWXDDsUsUvi6V6NuDELbnU+BRktpM9v3VaPzdpJPpyE4mf8T463XfhI7SruujpzrD8jFMws5Qaq5BVbmM8Uf20ljmx7onsgEd4eJkHGTHyo+Yq/GlHYVetk/Sq53sRutfSL/8LEf4BMuCYhPRIe2cZ8L66vyVpsGk0Utz31EA/4SBKIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7JZ6V67V0I0kaUxJAh5bOvUUvGJA3EDHBUFAawb0ksM=;
 b=H5otueC9Jmj0opdQtn90k2FeyLrSCNepmSWhKI5y3P6g5MptNeG0U+Ibclk07Tt8VruycS8rQtTwRSlkc6yO/ov+O53BdrRdVkI3QhO0F+ddQ2ezA2t66SbjD8f+XKCs/se+uDv2QPNO2DFwAzGPIVGBLMmICQgmrZYfSEN5kr6cAII2RA03Ud4hmyVshE23ogALIPiYqBbW5lUC6MHKaXEPP4ApqDLfoRv25IED11GQw7m5txRYGPwwDYQlBLSM7G7tzbpdpPXdYCGCJEy297WyEEyz8/nRmJkzgAcUoZgLFDwVKOqoaPpe6BCmhjtAqsp72bbr9G5oakbI3yfUMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB7323.namprd11.prod.outlook.com (2603:10b6:610:152::6)
 by DS0PR11MB7903.namprd11.prod.outlook.com (2603:10b6:8:f7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 11:08:41 +0000
Received: from CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556]) by CH3PR11MB7323.namprd11.prod.outlook.com
 ([fe80::abb8:c470:36ca:e556%6]) with mapi id 15.21.0181.008; Wed, 1 Jul 2026
 11:08:41 +0000
Message-ID: <dd1a53fe-4713-4e21-b854-cf6314915519@intel.com>
Date: Wed, 1 Jul 2026 13:08:37 +0200
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <leszek.pepiak@intel.com>
References: <20260627095400.3c3d9f80@kernel.org>
 <35ccefb4-a588-4556-87c0-ade880eaa8d6@intel.com>
 <20260630155022.27c9a271@kernel.org>
Content-Language: pl
From: "Pielech, Adrian" <adrian.pielech@intel.com>
In-Reply-To: <20260630155022.27c9a271@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2PEPF000008A8.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d8::648) To CH3PR11MB7323.namprd11.prod.outlook.com
 (2603:10b6:610:152::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB7323:EE_|DS0PR11MB7903:EE_
X-MS-Office365-Filtering-Correlation-Id: bc51e24b-d62c-4ba0-8321-08ded7611bb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|376014|1800799024|11063799006|4143699003|56012099006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: idoMCGz5VLdSIIGtaxl/cjhQ/r4ibklWibcvokFlEUJatv+MD+YmZlHvQsLTsGvJLjZ1I/0Pt1jQvLEMrFoo2Oo37ly5eztGnE/J0GxARNkqkPbWMc3SiZ8vc/Yfxs7FJVdK+B/6MLhqOFK6cdg0oCF74mEjWFkv/7ROYxvrf5DbolFE8Krx27KnfdKR9grf2zhrwVwjHBwfivzFWBizE7mGynCGsmKeHDHlxxUGHixmtAVtNcKAYDQnuUFFibN4tdEwbvtyLQHFus4fjgA+1PquBwQncrPN6nFWSyZYL0r3cbnqo6wHQ2bjqX6U9/ve7D/rmruHUGJRFyE+2DJFjUdq8FefX0RJJgjT+LT/3Y1b1KK8C2C6o2HgcD4F7SP8oP5PAoFJ7OvZFkegIWEUL8FHO9X46ksj7I7tP162AF2s5NtA7Er5Ht8OQZLH6DHBRYnaaRr8PzGKpUkfy+Yl0XlUfNnDk5A7TbwKIkNHj2TI3GQBtrMpGi1mF/vn3A4w72B+saE07TtdZP5PWXnn7O2EfS61UHcxqnFdCsBTnYxjnUObAGv0T8z0oOBIQJbgpB+vMji/gaEb4tq7ud8ju6H8Ouc0YmJA+qsgDnzWSLMlgqAoXIq0Laz0Yz4ChFmaebd3sZyrP0RWZY3MRUlEgi8N0UJPqXmIiUQBjXcTE+o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB7323.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(376014)(1800799024)(11063799006)(4143699003)(56012099006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFRTdEZBaklwODNVWFg4WHFZeTFpWDFFSElSN2VscElVTnArRzZQYmtna0d4?=
 =?utf-8?B?R3lkMng2ZXBrbmpLMU45NFU5L0FGclhNNk85R2QvMTNyUlJha3g0RkZ2MnZ4?=
 =?utf-8?B?OEFJVGwzTENFQmRsd2QxVGtRckdkbU13VFVmYnZWR1h4alNySDRReG13cURZ?=
 =?utf-8?B?S3NjR2ZIZGVoU09wZGtiS3dzcXJvTVhwM3k2cHNjSkRtYzI4UGdPNlUyTnpq?=
 =?utf-8?B?VUtWQkZCNUJFV2Q4cmNHYzIzNVBnbjhXUUpzT2tlamRCLzFDMHprYXhyc0lm?=
 =?utf-8?B?YzlKVTFzNEFaaVBFM1VsNVMrcGpNYnZ3ZGxEMEtYUjRKRWFFUkJCNXZTZUtr?=
 =?utf-8?B?WFNQOUFkRGdpc0pNRE5LY0pySVZaOUxmOUpTWE1CeVVNU3NhSEVmZVl0b1FE?=
 =?utf-8?B?Ty8yU09mLzdFbmR5WEszUmtQb3paK2dFZi9lNEgzaHFpK0NZZjFTc2hsNHIy?=
 =?utf-8?B?REw0c3FDY1NmMGRLNHdmWXZUL3ZFN1M3V0tTYTRkWHVTem90RURQSWVITVhr?=
 =?utf-8?B?RkQ3SFhYajVscmhkVHhXQVpqZk1IeHloeUYrbk05R3Y4Nlp3c0VyaVh1SER0?=
 =?utf-8?B?QnVHY1UwVmpxeG9SM2Zzem5WY2dIakphaUdKUStuMENSSmFWdWlqM3QrMGpq?=
 =?utf-8?B?d0owTW9jaHU0U29MOFlBbmppZGUwL0o3ZFVnMHZXR0NKTmdOaHRlcm1vdnBo?=
 =?utf-8?B?TElwMGFFU2k1ZWtxRjRPV3hsMzlSZU9ub2tldklxTnFPdWwzTHoyc0h6SFJx?=
 =?utf-8?B?MG0vYXRlWWJONVNqalE0b25YR1Rrdi9aOGRZSFNOT2dSaWdORFpxVTNtNVpK?=
 =?utf-8?B?S1VTVzFnU2pQT1BRS1EzWWlTRVVpV2xLRjlXZXBJRitnUnJ3cHgvMUUxZnJY?=
 =?utf-8?B?aWNYSVUyUDVpaHBBajMvbk93QVJqMSt1S3lFRHVoSEwveUtIK3FlbllYZ2N2?=
 =?utf-8?B?ZGdFQXR1VHpCUExHTWZndTU2ZXdsSGR4ODVFeG8yWElIcmZxVzJUWE5nNXZV?=
 =?utf-8?B?UW1qTzJmWm9YemphbHVlNXlQeHp2UUx3QkdoTjRQZ2RoTFcwUDA3NlZ2WTE1?=
 =?utf-8?B?eG8yMTFWRFZZRGpGNURjNTlEOWZGOUdNMHhRL0ppWVRUaGNsVEZaanF2QVBm?=
 =?utf-8?B?VzBVdm56eFdSME5VT253VlpVN0M3eHYrK3RIVldwL1pBYTM4c09CQmNsQUpw?=
 =?utf-8?B?d1pYeHlZZ1NNc3luSDJZcUVSR1M2V3R4bEplUWJFeE1wdklLMDVMUmlGY2My?=
 =?utf-8?B?STlueWkvZzdyUE8yeExDKytQT1NxbHlTb0hzUkpQN2dFWEhzZE4zb2hodHBN?=
 =?utf-8?B?a1hBSU5oQjVwSlRoSFhUOHRjK1UzOGxMTnVpUUdZU0EyNHkzVE5qWm1kNTRE?=
 =?utf-8?B?ZXlLVVo2SFpSRkd0cGFiUkJFNnhkUTB5VjFic2lXZFNwZ2U5K1FXaExGNUth?=
 =?utf-8?B?MUQzVVhRanJpbjFiYWFFK3M5SlNIeVRqN3lUV2JYMU9jdjBnUTZyc0hZSDBP?=
 =?utf-8?B?R2Q3Z01YOXZxSTYyanlSQmRQVFlWemlISmh6aU1Ib2JQVElwNGd0bWVpbml2?=
 =?utf-8?B?eXFUOWRBamwxb1MwbXBhbWNncnB1NnVzSmU0TkVtVGJ4TkY0UjBqdXdGZGI3?=
 =?utf-8?B?eE82eTJrUE51RTZNU3J2Q3JqK2dHcnNzVVlvM3M2SWV3c0dzeVdiSHR0RGFx?=
 =?utf-8?B?cTdnckFyQkFSZmlGWFAzM29JVWNaaFYrc0c3K1U0Q01DbmIwNWZ1S2xNam1I?=
 =?utf-8?B?U2NsNFd2a3J1dS8rNExwRWhjRldISVc3RHVpZlBjRlVZb3JkQ2V6T0MyRnls?=
 =?utf-8?B?clg3VFR4SWpMR1ZOeHE3YmNLbG5MVjdqUWhKRHlITmI2VGxoQ3RIOUtPR3Nj?=
 =?utf-8?B?dUdEUkV3Q3hzTmpWc01nNlBRU3VKYUxjMm5vMlhCSklOUHNNOG85OHZ4c1hC?=
 =?utf-8?B?YjQrSU9HQjkveERhWWJXM2RUK2pXYjFwZUhVSm9UL205Z29zRGQzT1dYWmVs?=
 =?utf-8?B?SzVoT0hXQzltNkVYRllOS1hBZU45NHAvMTBDREpkU1lSMDhBZ0VvcEI3eDUw?=
 =?utf-8?B?SzJhc2wwTHJBazhCb010QlY4NWI5VEQrZUd6NVYrd3NidTRiUjhiSHZuOVdU?=
 =?utf-8?B?VGtpVXd2T0ZUaDZIWERvcFc1aWo5bWp2aWN2K1VUV2Z0YjI0cUdveXhFbXdw?=
 =?utf-8?B?eWxDaUtOZ3JYdnlGVGcxd093TXV4UW9MemR1QVRjdE5oMElrZHRDbFlyMkZu?=
 =?utf-8?B?UjJBaEdQL2V0K2QrM0tSV1dnNjdNU1U0RTB1SmhCRDZjZmNkb0hCbEQ1RWwz?=
 =?utf-8?B?a2JjSklnTExFODRFK0t0dHFtMzBSNTBFM2JFK1BrdnJiUXMwOUpxZz09?=
X-Exchange-RoutingPolicyChecked: Z/zCO4FdFaVz8fQstSSj85QCmoVVUqm25+hGqVxebtfxfABU8vAdKO5kAG08h5Lj2UOfqrK0XVMWeC8tCS3DoazTwqp8QS7EGiPxmns7s4dQek6hB+RcElDq9KeFRUKClyfK8kJdsa3Tedz7s2DlFbuEDerPHfsIOQ9f9I4mI8sakDLE+BV4VBPuZQ9EBn3grAG4pPbLvO9M6uKKIgDdx23k4SKxe/XFEd7igYNe5NyFfg1DbSth/4hHuKQ410dNQ625/4NQHr07jgNDPR2sZ9vcvNXch7IWSOyiDtD+kVaGXVuUcc31DF/BHtXWLOp3TqOesI8li+R/1eFlEpX/JA==
X-MS-Exchange-CrossTenant-Network-Message-Id: bc51e24b-d62c-4ba0-8321-08ded7611bb6
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB7323.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 11:08:41.3045 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2p4bu32YGdlWWunl98LqLgynSQL8nEcqMOxcdYF2R0VW14FiSX94RBHp9Sj8XaFKWV2/pfmJAOqn+HDQrov2JCAIz6gwCK2tt/MiEWR+Z8M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7903
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782904125; x=1814440125;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fKaLCVe6Y1pcUH3AMcop5M/5kk1t2iAy61HUPvsZ8TI=;
 b=NVpIvIudIscCPNKeaN/k67bLIz4riYgWSiPHRmK/W9q6o+3h0axWegGP
 Z3Yon0qlgHI8IEf1/oTITnQE7dd3velm08CO7TST27dw4RZogJQP/tXK9
 e/h5Vvc1FLrVXnZ5Qqow07QQCxz+TmOwvWLq30T+9tFJ0d17wEt8ndjUx
 ZIclU50Mm3El4cqRlPSGbR8Cz/m5QQwCQ8CmeuFIo24KgjeazGshhpivO
 5/WD9QNLLUqf52Hm5Z66l5n86AjrBLSjahCv02GH8F2Yj12b4KvZ49J1D
 e/UvFK/0ABeNGMPuPo+/Yw5ocPMGSoCtUD5ITxNnjNO1MAu1jzwROrOaU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NVpIvIud
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [TEST] intel: low timeout
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,m:leszek.pepiak@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adrian.pielech@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:url,intel.com:from_mime,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5680F6EC936

On 7/1/2026 12:50 AM, Jakub Kicinski wrote:
> On Tue, 30 Jun 2026 14:56:02 +0200 Pielech, Adrian wrote:
>> On 6/27/2026 6:54 PM, Jakub Kicinski wrote:
>>> Hi!
>>>
>>> Some of the tests need more than 5min, could you increase the timeout
>>> in the runner to 10 or 15min? Looks like it's hard-killing tests right
>>> now after 2min:
>>>
>>> https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/xdp.py/stdout
>>>
>>> which leaks config across tests:
>>>
>>> https://netdev-ci-results.intel.com/ice-results/net-next-hw-2026-06-27--16-00/ice-E810-XXV4/irq.py/stdout
>>>
>>> BTW the JSON reports the timed out tests as pass.
>>
>> Hi Jakub,
>>
>> I've increased timeout to 10 minutes per test run. It seems to help with
>> XDP tests score.
> 
> Great, thank you!
> 
>> I'll later take a look on default behavior of runner in case of timeouts.
> 
> default behavior == pass/fail status for the test?

Yes, pass/fail status selection. I've found the culprit and since next 
run timeouts should be reported as fail.
