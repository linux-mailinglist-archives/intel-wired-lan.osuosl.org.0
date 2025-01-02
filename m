Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F188A000C6
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 22:38:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1A48680F4E;
	Thu,  2 Jan 2025 21:38:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VRrrH61OLitX; Thu,  2 Jan 2025 21:38:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E3CA80F45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735853907;
	bh=yVkLOkEP6iaELizZWo6TppEHO2s2qAfq66pNzTdlgXU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3V/teF97ZZeoivSMLklepdTo30/fthWHr2itDufgMiEfWOvdTa0ckpVtR+IzRKNZZ
	 RCu9SNX+4Veo7rfzktlyIhZ0gdjb2A4niuSIWkaRqhX/NzfzMLDSZyrQ2ZGUg3IHzc
	 C5RXsqpSRqyiM+VeBs5nIZGLjGTuC/WsMCiC7ZgFwr6qPPhhgs/m7ebk9JCw8yn/Mv
	 MPB4LgtkOgfegUoIRVXB3lCJAmgohhTF0VdnFMZjdHesriP9nc0Wze3inRfNXhpINF
	 doq7EeSIqbscEZw7CcwvYoRL7kzMZSZdsBuT2Zgx9YY7GAQtpNj5GbOdSocjaBfaQy
	 q/HOLfGdaejiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E3CA80F45;
	Thu,  2 Jan 2025 21:38:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CF2CF24
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 21:38:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B1A180F31
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 21:38:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j2ic-rZ-Q9iW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 21:38:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B30C080EF1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B30C080EF1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B30C080EF1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 21:38:24 +0000 (UTC)
X-CSE-ConnectionGUID: H57G8vfjT4KYRX64uopgMQ==
X-CSE-MsgGUID: VcOdA2v/QEOAGo97wQCXFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="46775176"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="46775176"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 13:38:24 -0800
X-CSE-ConnectionGUID: RyC2upJkQfuvNVVs91aqNw==
X-CSE-MsgGUID: 0v8bmDfYTbicOCCeRhx7Ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102480897"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 13:38:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 13:38:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 13:38:23 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 13:38:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nVw2UouQX+UAtThWn9K1s3W/DtItGP3Nd0gxA4ra8YVUoAU+CYpldmn06R6LcRBQyOy/WdWkLKtYaot5geVGlLeH3xaug0WzfIE8iqDchybTTL9MW0dvXxNf16jqHc4l7IJpKp1HX2L9ceK31q84RxUrT8bF2PVXOSy7QyZ+4FYjuYVuEbZ5em/TUoiQiRgNKB596jKZlgdXl7X981ybho5mxEdvTJDxGgg4bDZ68DpT8NT/oSkmz6shb21IoJ84nIHVZI4jtZYrsimxJS3XsoxlIsSix5z7TGkzS8hTL6awFexLvR2jEF1IAdYN7NY6sn8kj5b/S189jLcxsEMVUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yVkLOkEP6iaELizZWo6TppEHO2s2qAfq66pNzTdlgXU=;
 b=DgR5FZEPJWbcVjrOkI3hCKo27GZ2FwVsQMOZIyrZo/o1cAegBpVJ172i+/uZaQoiQk6XpTC1TknOqT9hbJnVoMRoASUWGt/d1bQzh0vr5FhY5r32g5tmVOxjSjHJ8hb+vEgUBjnNbCA3FKM1nF9k39whUHfcPx/1b5734cuFFs+YtQJ2Ck/Isznf8nrtQ1IwlFZl7fGKa6Dy63rjA0AfLxpVRW9XA0XwvOtNM9NG+cUpnJ+Hx8eYDEu1Q/oZL8tl9A7pQZs9biqOLr027/2GnPsYZbkvLJH+yHB64Fv1ufzhAPizi/xF6FCcgZnBdTGCczeb4fzxMzkWUgTus59PbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by CH3PR11MB7895.namprd11.prod.outlook.com (2603:10b6:610:12f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.20; Thu, 2 Jan
 2025 21:38:15 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%7]) with mapi id 15.20.8314.012; Thu, 2 Jan 2025
 21:38:15 +0000
Message-ID: <3fc25f04-1562-4ad9-a8b4-8b85847e91fb@intel.com>
Date: Thu, 2 Jan 2025 14:38:06 -0700
User-Agent: Mozilla Thunderbird
To: Shay Drori <shayd@nvidia.com>, <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <davem@davemloft.net>, <michael.chan@broadcom.com>, <tariqt@nvidia.com>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <jdamato@fastly.com>, <akpm@linux-foundation.org>
References: <20241218165843.744647-1-ahmed.zaki@intel.com>
 <58e58bb6-730f-4167-9f86-92ea8ec17019@nvidia.com>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <58e58bb6-730f-4167-9f86-92ea8ec17019@nvidia.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0096.namprd03.prod.outlook.com
 (2603:10b6:303:b7::11) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|CH3PR11MB7895:EE_
X-MS-Office365-Filtering-Correlation-Id: 34043fc0-6651-4500-a1a0-08dd2b75c388
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFZCR2tQT3NITjZXejZUREY3R0pLM1NNbmZMQ3NXSVhQeW1Od0dQLzVhbUFy?=
 =?utf-8?B?U2cwbGwwU3pQV1dNOUxJZ1pneU9NNm13MUdQek1YTTMwLyszV1QxU21iY3VC?=
 =?utf-8?B?YmNIcStZSXJocHR6TW93c2xOZkRQcnY4MWhOVGhYcE9BZFYzRDBhUVZ0Y2Y0?=
 =?utf-8?B?Z1lHQXY4WjVaUFBHaTNVMGFVZmpGOHdxNU9BT0tvdG1weUU4dGxnRVpJNWl0?=
 =?utf-8?B?S2owZnVXUkFkMHhmYVdxazJwcWNSdHRaSUNjdGppUzVYU1ptNjc4YytabUJ3?=
 =?utf-8?B?b0JFUENWSkZNcjF1RlBadWh3UzVFaVV5dVltRks0L09QK3pGQ3BDdFdyM0xp?=
 =?utf-8?B?NWFKRHFvRUdjVmw4SHUyb1pjcEFKd0JrV0VybVhYR3F2aDBwU05xSnV3dC8r?=
 =?utf-8?B?Vjd1dVlNSm1YQk4zeDYzOXJVam5zdzhVd3ZEZ21EOXNWKzFBNHdqUmV1dFVG?=
 =?utf-8?B?aVZmeHB2STZCb2hyaHRJWUNJTzBONTlHNWhwaGdSQ2ZEc1c4eTlKUzQ4M1g1?=
 =?utf-8?B?OFhVUkVhdHRRaGtld1VTM3R2VzlQMDBSTmtjdU8rZHZRblFMUWVGcXZFNWN0?=
 =?utf-8?B?a1V4bTRrU3ZiaW1MYjlCdVZFRXBUUVhFUDhlajdjVU1ITWFNck5uSWJiMURo?=
 =?utf-8?B?QjgrdkxiQmFzWlY5dmx4YnduT2R6VVQ5UjFCa0NEU1dXQ085R2duQzVtbFBu?=
 =?utf-8?B?aURwSGRzUDNEME1jWWVSaGNPUVBCYTBFbVc3T2pXbm5Cb0FvQUthNzdITGlC?=
 =?utf-8?B?dE93eWs1VERuMzc1UVBJSXVkc202TzBmaVkrS3JQd3NMZjlHUDUzSWF5K0sx?=
 =?utf-8?B?blRQcHRVanFTaEJiWGlCRDdkUEd5NHovT1hCejV5dFN1K3pJV3VkN1dxdFhh?=
 =?utf-8?B?Z0JLbGExaWxSaVJFTTdDTEozcnBPTW03eHIwS05SRHBMZW15S0ZLQzZJdlRZ?=
 =?utf-8?B?Ui9kSG5pdnpUOFVNR2VVRVZtYlZIZGdlbGI2YVEvUXVEY3BXUy90WlVOaWlL?=
 =?utf-8?B?ZkRJSS91bkNZaE5MQlJpSUg3QUNpVC9EQUdTbUdXbkJ5enB0aTRleUEwdDRw?=
 =?utf-8?B?WExoQ1FWZHhRbDZVSC9kQkZhWmdsOE16TVNBTXNQWjNKa2NrS25sQXI5aWRO?=
 =?utf-8?B?K3BISWZyeUgrbjZrcGdXTUpSNUNsckhRbktKeWJOWkNNRE1wdjVJUkVMc3hI?=
 =?utf-8?B?SmZrYXZMRzVrcUgvWE1nUUhib25hQ284YmZ3b2pJeDlIRXRVUmM2N1laUFdO?=
 =?utf-8?B?NmZPR251b2h4NDREUHBJRTlHelAxTUl4WVVSVjR6cDVUQVJwYWkrNlZQeEN2?=
 =?utf-8?B?YndqL0ZhdGN4b1l1RGhXZlJ5OVovNjZYNWloKzltSlRoTSs2eGhCdlVWS242?=
 =?utf-8?B?RlYwQjhGc0ZBb0J1TEJDMUFGM0pIdURkeEJkczlyVkZjcHB2TTQwdEVtMmF2?=
 =?utf-8?B?cGtoV1dmZlIyWWpnZVBQeGJqOWtndE8yQkdsVmNUY2wyMEU1WHo5VHlrQ0x2?=
 =?utf-8?B?am9qZHdrakJkdlgzUGZBY2xiSVBkZEU5TzlkSVpmblduc2lXRklNYytXcGRD?=
 =?utf-8?B?Ymh1Kzhxb3BTcE11ZDh1dVpVYTBrVGhua003UENMUTJ4QXE2ejFROGx6SGJw?=
 =?utf-8?B?cENxdk9tcGwyY2cyREZoUUJMdi9Ua3gvWWJTOWIyaXkzTUJZZ2Zhei9FQ2hI?=
 =?utf-8?B?bFBZOFVGdlNsbHk3ZWJDdnFnOFZZcFZEalE4U0J4NGNOZlYyWWIyYjlKWlMz?=
 =?utf-8?B?bzNqTnZsMThTU0VMUFdGY0lkRlFURVdRK0J0WStrMzlQaGhNRnVGckJHbjlW?=
 =?utf-8?B?cjhlc1NLMTV2eStUNGJyREp4dGVwWHY2a0J3YW1TdGY3VGFrWmFIZGYyTFky?=
 =?utf-8?Q?kGB1SOisbYkBH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(7416014)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MlNmcUFPWUk1N2VrWFM5ZS8yVFdaOXk5QkU5UUk4WnNDNTFEOFY4cCt1ZUpP?=
 =?utf-8?B?eVQrTk0yVFhuTjlqWlFxN0F2ODFER2lRM0cvU3VjMlhRMHJVR0hEUHdRWUNo?=
 =?utf-8?B?ckYwSHRLN2lhdXovRTgrUFMxTENXbmliNGxjN3pZZUhzdjVhTFhpRkNGbnNN?=
 =?utf-8?B?VEkvREZoaHJiNkJmS29FUDRlQ2VES0lvbmVtUGMzUEg0ZkwvSzhQQ1pjQUx5?=
 =?utf-8?B?VDQ5YXNNaXNwWE9FWlJiYzZJZ1BHVEVwOTFWZi9pQWtMK0l4aUhqRGl6Sk53?=
 =?utf-8?B?V1R1UW9tWW5JNi9KQ04rUkdnQU1RUTlXM1c3bGxRVWpZdnNHMk9NTzRDeHYy?=
 =?utf-8?B?aSt6V05KK2JSYm1JNzRjUlV1VFpnaFBSWkJmdG5lVkw4UytQYTkzNzg5eFIv?=
 =?utf-8?B?UjNQbmlDOFMydDM0dHNaVGRFNGp4ZEZwLzIxMUUxMXdZazkvak5ScG9xWitI?=
 =?utf-8?B?bnRXWHhCSXp5ZEUrdm9Ic0hoY1A1WjhXSXF5N25NUzZSV1pnZXUxYVM0aGJE?=
 =?utf-8?B?WUtqRHFpOVZHNmFjVCtFaDZTenhya0pMcEQxR2VxM2Q3NkxKSkNPNC93Rk5J?=
 =?utf-8?B?ditiNUZsaS9mbU9OKzFYa0E4dGxyT2Ivc1RwcnZjNUdNbWhGbm9pTjVNUGlP?=
 =?utf-8?B?eERWYXpUWWdlcDI0dXM3NVF4d3ZKWkc2d2ZNS05PcHdwVlp1SnpvNlQ1YnBq?=
 =?utf-8?B?SEJjZnRUTzF0R1N3Y0EwRFIzY0srcHFManNpR0VKbm5hRkRLTGJBMWNoaU0x?=
 =?utf-8?B?NlB0V1krT0xqbWRyb3dqczlpMXU5YWk0bWEyb3A2UWlkRXhWOHNWR1BVb1B6?=
 =?utf-8?B?alNCVXg1SmRnc09WZXZFTHMxNnV3MTZ0YzBOaW5RN0c2dDFmNFlEK05OWFZY?=
 =?utf-8?B?RlFXcEtKZnJlRHYzazdrQXQxdkNLa2t1YmZYL0R2dWFhK2cxZ000aXJFblM3?=
 =?utf-8?B?R1M0TGZyY3NNbjJVdXBaZnpDWnNJcGlKdURYTHB2cVptMXZxSVhrNlJ1QWgy?=
 =?utf-8?B?MFQyV3lyQUR0UDdBZWtiRmQ4bytCQVZwaFJKR0dFMisyOWoxQ1p5K09aRlNB?=
 =?utf-8?B?Z0h2Q25VMjhOdmE4K0JZMjlWNUY1bk1wMEJCSW54bEFJeVVWNDhNcFBpOVky?=
 =?utf-8?B?VlZ5SkRIU040a0VTZmtVbXBwOS9vZWRVOGVzZVdYcDFvVzlaMU1wUU80Q2oy?=
 =?utf-8?B?TkNlQTVEV1cyaG5LLzkva3E2MmV2ZEQwNFo3K0diOGtQKzlBN09kQ1FYUGN2?=
 =?utf-8?B?RmhNVTJubGVxVUZVbEUzVWwrRFd4L25MZms1MWFrMkVuQlM3dWdjeWFCWHJu?=
 =?utf-8?B?bEVneWNydTQvSEdhbFoxcm1MUzJBT2xGYjZwdEdUMGFqVTJJYjdWSUhFMUlk?=
 =?utf-8?B?L3RUNTRpU3BwOER5ZVBTdEg5Q3RHUmZqcGlnS2IrUTdnQ0V0Z0graHE1Yy85?=
 =?utf-8?B?RVo4MHJFTGhkSVM0UDNWUFg4dXBDcjEzZW9OeEh4YWhZSFhyQnlqYzVKQndn?=
 =?utf-8?B?d1kyVkZlU01xRGFpOWcvaStpU1BIVUdkcVRBVk50dmVKU1BaYmxCQSthUk01?=
 =?utf-8?B?TXpvU2ExNGdYbjRiNU1LRzRQS1pCYjFnc3JWS1pRUEFreFhtZjRSZlJDNDEv?=
 =?utf-8?B?eHY4YXdpQjFQSnRPcGxjMlJFYVRwaDNjckZ2UFlJb1FJVm1QNDNuUWN6NjJP?=
 =?utf-8?B?RjU2b09rZlZvNENKSWlWNnc0Wm1hNWxyNW9wTzB5WFdJdzJTTENxeXJsUmJD?=
 =?utf-8?B?a0NLVzJKeDFPckhobU1VQ0FIeW1VNVFNYmNKQ0I3WS9DdkVRN1gwcFdLQTlW?=
 =?utf-8?B?ekVIMVpDejIwK2VLRG5LSy9KckxzMGkrYjZEbXlQYStNU1o0ekdVcjFwT0N3?=
 =?utf-8?B?WDhKdWxPSHNJaWxOcEVBSUJWQ2JRa2k3WUhjT0I2K0RVT2hYSXBrU3NRMHA1?=
 =?utf-8?B?bTNxeVZFNWNSeXc0UGFzcU1FRDhWN1M4K2hzZHdzOTZJYkJoUkI1cEM3K1k0?=
 =?utf-8?B?QU1JV2RVamU1Rk9oSUhzWlNrNUF5VnM1dnhrdlF5SnNMYzlRRHZxc0RsMDJU?=
 =?utf-8?B?S3V5cjFKSzRsNFJzQXZNdWdLZkN5MlVEdk00KytrRkFZZUVoYWlSZE9LSnF0?=
 =?utf-8?Q?LV0yL82Sd9A36A9rXF0HmIGvX?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34043fc0-6651-4500-a1a0-08dd2b75c388
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2025 21:38:15.0094 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M7UMTiZ0Eo3vzh+O4ACCv7Mv0QvO1TFmEBhm3hDgORp3Hd+W/WPiIWXi6Cd67YSLn6NV6QVnoiOrMqb/ZgS27g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7895
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735853905; x=1767389905;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rZTi5eFTl1y67KiW5CCVG+xhqv2Du8JdGQ445I1bosY=;
 b=BWYKIAIpysuitgLf6M7/HgqbLWT6x9RCpIpIWJcnX3pqXQZ4WOr9w8zU
 aM09k3Ohiq2103TafnIUtqodsNVQGsm4EO5OezCBbdmANYq3iDYLjDaUM
 r3DNRRQ5AMHrHPZJYp0E4U5H0KWZITLN2Ey8T4xymT0/WOWcSbyd0ilXU
 Zo8e/NurRN0xUB8YN3tHrRIuHF8862SKXUs7a+9o9BNXaufXbrrh+/deW
 QKzFKphXJ7siMrGRIKiTTZspobqoquD+E90/qVWOFIPheLZ5SDzbn+jXr
 KOT8/jVUtR0nzvBwxlEcfVt1Nw161gPoCOq9fHwEVvWieYRTVeo/I8LJm
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BWYKIAIp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] net: napi: add CPU
 affinity to napi->config
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



On 2024-12-22 2:23 a.m., Shay Drori wrote:
> 
> 
> On 18/12/2024 18:58, Ahmed Zaki wrote:
>> External email: Use caution opening links or attachments
>>
>>
>> Move the IRQ affinity management to the napi struct. All drivers that are
>> already using netif_napi_set_irq() are modified to the new API. Except
>> mlx5 because it is implementing IRQ pools and moving to the new API does
>> not seem trivial.
>>
>> Tested on bnxt, ice and idpf.
>> ---
>> Opens: is cpu_online_mask the best default mask? drivers do this 
>> differently
> 
> cpu_online_mask is not the best default mask for IRQ affinity management.
> Here are two reasons:
> - Performance Gains from Driver-Specific CPU Assignment: Many drivers
>    assign different CPUs to each IRQ to optimize performance. This plays
> a crucial role in CPU utilization.
> - Impact of NUMA Node Distance on Traffic Performance: NUMA topology
>    plays a crucial role in IRQ performance. Assigning IRQs to CPUs on
>    the same NUMA node as the associated device minimizes latency caused
>    by remote memory access.[1]
> 
> [1]
> for more details on NUMA preference, you can look at commit 
> 2acda57736de1e486036b90a648e67a3599080a1
> 

Thanks for replying.

I will use cpumask_local_spread() (which now considers NUMA distances) 
in the next iteration.



