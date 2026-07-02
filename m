Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jp/BBFpdRmozRwsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 14:45:14 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 987526F7D3A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 14:45:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=2NyRUYFL;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C9A4682246;
	Thu,  2 Jul 2026 12:45:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qAlqRr6yl-Yt; Thu,  2 Jul 2026 12:45:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 03F7981FE4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782996310;
	bh=JQOPEvLpEkyYEuliC3YKwPn+ihHl6oW9izLKeWuvbQU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2NyRUYFLZGdbZ0rNdZX0XF5MsFt1gulL4r51cpgPy2fe3x7xlGPgyDwVQNGD882wp
	 9/W49Vsc3Ny5Cj5MgwY3qQK2+f4f1nTwYVVfeKGQAbwiO2EgePQO68BTgl9fDlMaTM
	 huS0JDs0F97WKhXmJ01ObMf+7iM5NF0+MqzCXzdyRIJ/xQb+tWEqFE0irdmOjO5xzS
	 MZ/7V2eLqnx71CFaQCqFjjy5ynnkIDYzGYjlCBG1Aytg7I9Ymw5sp5xZxQRPz1iGZp
	 6zpFqHOJ+s6utyCgETht3uXDKDyXwSgYPn2mcFGTIe/0K4TC+cZvBm9jV24oiZWtTp
	 bqo/vwJGudiDA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 03F7981FE4;
	Thu,  2 Jul 2026 12:45:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B3B8D316
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 12:45:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 933B081E91
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 12:45:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 26ou-EsuJtL8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 12:45:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 48F5981E8F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 48F5981E8F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 48F5981E8F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 12:45:06 +0000 (UTC)
X-CSE-ConnectionGUID: HYs1otRQRu+VYvMAqRXsGQ==
X-CSE-MsgGUID: jJ4icY5EQIG7WTzX8ww/Jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="101173426"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="101173426"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 05:45:05 -0700
X-CSE-ConnectionGUID: bXV2t5yyQ16zo7XnDocOcw==
X-CSE-MsgGUID: Ra2gPzl4RzmvWy5nHnMqsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="248875708"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 05:45:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 05:45:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 2 Jul 2026 05:45:04 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.1) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 2 Jul 2026 05:45:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gvd35n+3b0dGfnGXx5UC2hYPN5leeq6uFpZ3SRwgG7oJlVYE65u2vslhC8+gfERQAxf7dZ+/iKZdCIVaO7gPabqcPAqkbdsmdzthYyMPgoq1Wd3H/YPVB/yB4kt5k7E1Nu6nQQi9oYBKf8X8ktFxZi1rYhxfIaNLF9iNwA/m0lXRuAZBfoTBtRO0ZP0P7N6fuH3tcdVpcQyMsorOavj76qKzMmykrdoa+D5d/dCm5gAj1rzfAbVcWSMk78Gn9iPW7Z7r3qrEaWElZs5/+VmfDJ/Sj5Fk0rxL5/eWFucm0hfCrG3vOFN1WJiCk5mufI+mGWSkOw0S7CKpdTp7Su60MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JQOPEvLpEkyYEuliC3YKwPn+ihHl6oW9izLKeWuvbQU=;
 b=h3/1X9BHAqZj4t5OIPhSa0pFoGLDEFIKKOeezwRK4XorrKB7mrM8BtYrMiv37f/TMYYy0cds+go5kYcGEe8dBU6kzJbnjdutrVvibYXwwb24VpQG22RLlXSZX2VL0/ZvyIcx3kmZgJdz+k5knqAX21zFdZL0KCUs1bWGaB9J5Sdfis0NCWdmTmbm8alsZmLCcTAhnOVFIiY4uH0CrzETpni7bodk3w8iHbFii4lxxFXw/ibw9Z6R3LQG1QBi7ac/O7Fuv8vrWm4hbzTgE8ZhKvvCnZSOThgcpeANjzZ2Zeu5lRNjdQYwxV+ao7lfwkP783DUyLJUc4hjA+HA6Ef3OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV3PR11MB8508.namprd11.prod.outlook.com (2603:10b6:408:1b4::8)
 by PH8PR11MB6730.namprd11.prod.outlook.com (2603:10b6:510:1c6::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Thu, 2 Jul 2026
 12:44:47 +0000
Received: from LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51]) by LV3PR11MB8508.namprd11.prod.outlook.com
 ([fe80::a1e8:1786:e5d1:8e51%5]) with mapi id 15.21.0181.008; Thu, 2 Jul 2026
 12:44:47 +0000
Message-ID: <70abb5f8-6c44-4ec4-8274-c6b94d2f2671@intel.com>
Date: Thu, 2 Jul 2026 14:47:09 +0200
User-Agent: Mozilla Thunderbird
To: weirongguang <weirongguang@kylinos.cn>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Rongguang Wei <clementwei90@163.com>
CC: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <aleksandr.loktionov@intel.com>, <anthony.l.nguyen@intel.com>,
 <andrew+netdev@lunn.ch>
References: <20260701013618.29934-1-clementwei90@163.com>
 <akUmFsLra3VpRNPg@boxer> <bc2c7b23-bcaf-4c10-adde-753ede92b7a7@kylinos.cn>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <bc2c7b23-bcaf-4c10-adde-753ede92b7a7@kylinos.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: VI1PR07CA0297.eurprd07.prod.outlook.com
 (2603:10a6:800:130::25) To LV3PR11MB8508.namprd11.prod.outlook.com
 (2603:10b6:408:1b4::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR11MB8508:EE_|PH8PR11MB6730:EE_
X-MS-Office365-Filtering-Correlation-Id: 5a26697e-5f63-4b95-186f-08ded837b320
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|18002099003|56012099006|11063799006|4143699003|6133799003|22082099003;
X-Microsoft-Antispam-Message-Info: S07o2eYTtSBeTN9MZtx8Dm5I4RqxxPzr13kLOlYy/J9TLg9zAhe5g3Qisq3yjC6HDpFv6koYP8biq5DAddNWX1j6B9Wn2ws8F90uiRgjC3ffFz6fEa9zqFXSSWphECB4PW4fRsmv3soVTPYB1h1s9zdlq7b8LexcJinS8XgtwTo+L3hKpw0euRZ2QpYOKLIureg9dUrwXWC5V0t6nKZUuZSgrNRcTAkmYtrfD+ROSg7wKLcsOu0Fu7PsnzRYQ5fQ3M5IJWK6R6Rd731O7A4qXV6CYE7rLbzOGM0SyQyq+ovonTIau6UZIAdLaYiA/4ONK43rvUJ4SI2K1C98RsvFLylhevq2RyB1I/aPjmw0hbc3vEgOVaPbspK4sgSQET3vdZAvZXt60htXV+TidxioSDOKXLD7a/+1ZngBbVWSdjUH3Bx7glFUVOYoK9l1abBIVVfQK7EyPiF8uZId3HVadBfYzNAlcpuSTuznZn/0W+McKXmRGJBgUonoT2RnVEkwYtHeLA/vUngYwws9EABBq12MdbOi2CsxxxtxZBPTTv+pAwjRnlV3jB+dLG4Rm/i1sDdSMAqdOVnO85ktniEzezJi9X/aRSOlL7hdmdkfRN+1XFAMKmHj3rOm5lo8i0WZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV3PR11MB8508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(18002099003)(56012099006)(11063799006)(4143699003)(6133799003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzM1Q0t5VGFwZi91MDBtcEtlOWJpWjdEckYyMllPT3BRVTAwVFRRdnlVUUN0?=
 =?utf-8?B?VmVTa2FRZVNLbHRYWGVabXZlUW4zWFg0U2x2K21ueHJUYWxHYWxSeEJOMk9Z?=
 =?utf-8?B?YWt0SE5SWmVyNVR4OVdwYUZ2TG1wNVhQbWlRdjJRa1plazBwNnNxS2czcWxx?=
 =?utf-8?B?UHNRZk00U3dqWmdtcWp5ajFINFc5MjAybDFmRk0zcER6TGwxZ21jS2pWUUwv?=
 =?utf-8?B?ZTI5L2ljYmZrNVV3dFIvajF5M28xSENkMkFyV3BYMGNaKzBGYlJvWko5MVhV?=
 =?utf-8?B?UGk5SFo1c0lpSHpjVmZDekRHYkZ3V1kvTHE2amk0Ym5yOHVmRmUvR3FPZlZo?=
 =?utf-8?B?MGxTWFFuYWRkVjlGSEswTlZabXJlSWFYMkE4WVVxQ2x0TGhzQmRIK01BL05x?=
 =?utf-8?B?bng2NXlDSE9UUHAyWjhqdFE4L0dsMDFNZzJ0MGRETVhSVWhOMlZlZ21NS3R0?=
 =?utf-8?B?MGV0bXMrem1MWXdaV1RtU1dNaW1ydDUydE9wWnEvWmR4L2crU3BXRVBMbE1j?=
 =?utf-8?B?YUF1SEFkWlF5dGFxQk9VZXJ1TXd1N0U5bndCVDE5M29OOTZuRDlRU1dOa3hQ?=
 =?utf-8?B?SUpGYlZSTlVZb1hQWkJGR3BwL0tzcCs5MGFodElUTHMvLy9ZS3ZFWEpDT1hK?=
 =?utf-8?B?b3h0ZnFIZnRwMHlmRVE3TjFkeitzL2t6aTYvc1hyaURmdlpxNld2OGJTSDlN?=
 =?utf-8?B?emRWRThLcENWWFVlQUZYNjFjUFNiVVN1RkxJVGVTOG4xNjF3dEFhS2g4S2gz?=
 =?utf-8?B?UEdNK3B5TDBQWWNSeXZrM3FMeVhnU0g5RkpUdDZaN1RYckNNVkZWcFVSNEF4?=
 =?utf-8?B?dTA3QTNoMGF2OUI4SjNteUQ3THZrc2tGMDF5cHVISFJ5WXR4SFVyZ1JWWU9F?=
 =?utf-8?B?NmlKbjc0R2hjVkZJbzFZWDdCaUE1UWZLakgreFAzS2g0TTlwYmJUMDFWRFJP?=
 =?utf-8?B?U0xadmFML3NpNFJOL2RzZVpDa3dKTmhKTWVQYk9CRGNob3pQVWNjS29QR2J6?=
 =?utf-8?B?a1R4M29kNnQ1aXdvUGdhUG9ESDN4ajNnV3ZGRmZtZ01iSVJUcFkyTDFFRlpP?=
 =?utf-8?B?WnIwdmtjdi95M2FKSElqWmVDbWs3a0h4Z1FCd0FBTjRyQmNXMy9MS3c0NUJa?=
 =?utf-8?B?VUdXdlZzUk8yVEdHc3U0Q0J6NkNJTCtITEVodDBXWnR2SzZyM2NzdkpIcSta?=
 =?utf-8?B?SHd1Z0p3anBkS2pYL2wxQXlVK1AxZjJLR2NHem5GSE9Rc2R1NUlNWWdQN1Jn?=
 =?utf-8?B?dnpFNjFFdGxTNzk3ZEo0amVreDdJVGpOb1Zpc1I4S2dEMjhXRE11bVRjei9W?=
 =?utf-8?B?TEVtRFVtSEhvb3JqYmhYR3BzSGE1WWVWOU0xYUlKb3UwTmtOQ1l2V2dkZ0ZC?=
 =?utf-8?B?QzFCNFhJNEQvMm9lV3A5ZDZFVTFWaXU3eWpiUFhjVmZlU0ZFdEVZNEV4eHBT?=
 =?utf-8?B?NmZOcldWZTdndGZ0clQ1bmZjZm5BcHFmdzBjSUtQUDk2bUJ1WWFWdmNGWHA5?=
 =?utf-8?B?MzFlRmdiR2oveDZJZmZTS1lmT2RxZStjSkJ0VnhLYWlJQSs3YVR2QVJDaUMv?=
 =?utf-8?B?ajRGM1BZK2VzR2V0OXVJY1BnMXVPS0xzSU4rVUdOdzhZZnVudUZMVlBZRW8r?=
 =?utf-8?B?M1NNUEkzWnRtd3EzcTBTbDRyb04rd0VnN3gvd2VEOTdDTlZoSTVONHk3RnRr?=
 =?utf-8?B?Qk9lM09BR2VVQU9kZWhnNmt2YjVyT2Z2a1g3b1JLb3NBMTF2cXA2QWp6eXZM?=
 =?utf-8?B?SXBaNVF2c1k1M3FRcUhaRHBGaUUzNVIzQ3lKaFNRV3VCVGU3NEg0WGR1Zm5D?=
 =?utf-8?B?U3lvOTRKbVVlc0ZtemNubnFXR29sVVJ4UW1OY1l4eU1adTRLODVGVmw3ZGVW?=
 =?utf-8?B?K203SVhoQWVqZ2lodUJ4U2hHTlVxVlF1R0NqQ2s5a0FPb2s3YUdJTFpoM0d4?=
 =?utf-8?B?bWd0c3ZCaERqYjVaZTdLUVlhK21oMXpLNkwyMWhEQjNJSzVTZVJFM0JjYnVY?=
 =?utf-8?B?Nmo3a1F6NWtnNXA4dVNOcEFPcVdTd0U0U1NBa1cvd2pGUSt6NzVPaUl3Tkkr?=
 =?utf-8?B?eWNYbjJCQ21tUkNCVzBnZXY2dVBSRjJPR3NyUEJhc00vdFM1dzRPSkpmdVZh?=
 =?utf-8?B?cGsyQWh5MDZsSnNnVXlUdEFqNW1ySHFLMFQrV3VwWjVQUkw2ZUJrbVNTYnJ1?=
 =?utf-8?B?SFArYWNxcHVuS2dXMzQzL25IQTVFV2RjM2ZKcGsyZkQyTSszdVZENnRYaVpV?=
 =?utf-8?B?UUJaNzNOVGNnYTFHY3lqU3VWMDZLM0NTUjMxb2o1V25vZ2haOUptVnA4dVJN?=
 =?utf-8?B?QWpGSFFYMmNqbkkzeEVJVnJib0Nodnk5a0tiWXBkSXNSRHlYZjZPdmVWNHp3?=
 =?utf-8?Q?OV+y05dCwfffwSEU=3D?=
X-Exchange-RoutingPolicyChecked: QukZv8Uk8Gj6Zh8M5PVnjKHSAemasyhzKh+1e2G79ioP0UrNOvUFpvBFMYz7zymVDmhvyei3LNdlaPNiw+SHmpo5gWGdj4TlN7+vFCdUfNp/niQpTV3K8APtm6nM/CoyDWjeeNERPmXbXpmcmWcl3P2pYBv/7pQ6qkZRIdiV7/xuWE7nvSN8eyUmswRZkCW2pdjao/BqfoE0S99pQcAYM4IlXVy473x4hC9OIbdmtWzu2OCyrUXm3XFk9zD/JtyLWi2P3RGCYjg3LrD6SuD4oIjC714f/QWs9c9KYapoPDSWonhKLtpLVlqMKfilYW26DShSa5FaxvxQQM8Bs0NvWQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5a26697e-5f63-4b95-186f-08ded837b320
X-MS-Exchange-CrossTenant-AuthSource: LV3PR11MB8508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 12:44:47.5250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yK5JiEUbSxH47neDpD0+8GUziLNjQTTCIL3hFE1PrPwtWYKrdrkKEXxayHc3E6rB18zYqT3DHLAwxZwfVsPkyHNs8r/QjNcVs7K8uyYoh5s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6730
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782996306; x=1814532306;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xGW1popIw976hScGAun4VYsbbkJ0FEWhLkZgASaSytc=;
 b=BkjyUr+gtHWiDGVFfMkhWVOQH/eRhGUQUyytfutwi92NoOdJ2Zo9QffS
 0tJ5NkDvlNLeZGXtZQ9TK9VzNenH7Hj7O95Yc9Rz+gFYrwqovvT1buw6x
 LJf2KtdXtJUowzOG7nI6fjJYKFcZtI2zaJIHZkpPpuww9Ekb9frd/Aitr
 JMBJCp7C7YKQNiYS7N1W+9MON0f4MlGAK/BP2yaho/2/4wl6S4pkci28M
 OXBxnKOyQtZcTmkLFS8NmPXPyYe+sjygWSJzsj1V4UD7HRgjgcret95o5
 1J600UYyL0zioE2yQj7I2AAX/aTIS3YHBpsz7elW7fGDOPKv5f52kdvdM
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BkjyUr+g
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ice: use dev_err_probe()
 in ice_probe()
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
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kylinos.cn,intel.com,163.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:weirongguang@kylinos.cn,m:maciej.fijalkowski@intel.com,m:clementwei90@163.com,m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 987526F7D3A

On 7/2/26 09:05, weirongguang wrote:
> 
> 
> 在 2026/7/1 22:37, Maciej Fijalkowski 写道:
>> On Wed, Jul 01, 2026 at 09:36:18AM +0800, Rongguang Wei wrote:
>>> From: Rongguang Wei <weirongguang@kylinos.cn>
>>>
>>> dev_err_probe() logs the error and returns the supplied error code, which
>>> allows probe error paths to be written more compactly.
>>>
>>> Use dev_err_probe() in ice_probe() for error paths that currently print an
>>> error message and immediately return the same error code. This keeps the
>>> existing error handling semantics while reducing open-coded logging and
>>> return sequences.
>>>
>>> Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>>> ---
>>> v2:
>>>    - Fix commit message per Aleksandr Loktionov's recommendation.
>>> v1: https://lore.kernel.org/netdev/20260630032537.42605-1-clementwei90@163.com/T/#t
>>> ---
>>>   drivers/net/ethernet/intel/ice/ice_main.c | 24 ++++++++---------------
>>>   1 file changed, 8 insertions(+), 16 deletions(-)
>>
>> Could we also address rest of sites within driver at this very same
>> commit?
>>
>> drivers/net/ethernet/intel/ice/ice_dcb_lib.c-873-       dev_err(dev, "DCB init failed\n");
>> drivers/net/ethernet/intel/ice/ice_dcb_lib.c:874:       return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-4482-         dev_warn(dev, "Failed to initialize hardware after applying Tx scheduling configuration.\n");
>> drivers/net/ethernet/intel/ice/ice_main.c:4483:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-4543-         dev_err(dev, "Fail during requesting FW: %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:4544:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-4961-         dev_err(dev, "ice_init_pf failed: %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:4962:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-5192-         dev_err(dev, "BAR0 I/O map error %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:5193:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-5206-         dev_err(dev, "DMA configuration failed: 0x%x\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:5207:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-5244-         dev_err(dev, "ice_init_hw failed: %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:5245:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_main.c-9627-         netdev_err(netdev, "Failed to get link info, error %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_main.c:9628:         return err;
>> --
>> drivers/net/ethernet/intel/ice/devlink/devlink.c-1244-          dev_err(dev, "ice_init_hw failed: %d\n", err);
>> drivers/net/ethernet/intel/ice/devlink/devlink.c:1245:          return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_ptp.c-1935-          dev_err(ice_pf_to_dev(pf), "PTP failed to set time %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_ptp.c:1936:          return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_ptp.c-2000-          dev_err(dev, "PTP failed to adjust time, err %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_ptp.c:2001:          return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_sriov.c-829-         dev_err(dev, "Failed to enable SR-IOV: %d\n", err);
>> drivers/net/ethernet/intel/ice/ice_sriov.c:830:         return err;
>> --
>> drivers/net/ethernet/intel/ice/ice_eswitch_br.c-314-            dev_info(dev, "Bridge port lookup failed (vsi=%u)\n", vsi_idx);
>> drivers/net/ethernet/intel/ice/ice_eswitch_br.c:315:            return ERR_PTR(-EINVAL);
>>
> Hi,
> Per commit a787e5400a1c("driver core: add device probe log helper"), dev_err_probe was
> originally designed for probe functions in device driver to handle -EPROBE_DEFER.
> 
> Using it elsewhere is not the common pattern in the kernel. I'm unsure whether this aligns
> with the intended usage if we also address the rest of the sites within the driver.

Maciej has pointed only the places that are of "probe time" scope, even
if not "directly in .probe()".

It would be nice to have a general handler that just logs and returns
the error, but it will be a rather "too much churn" type of conversion
anyway. But for new code it will be nice.
