Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mJGVBFVowWliSwQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 17:20:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE882F7EA5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 17:20:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 51EAA40A2A;
	Mon, 23 Mar 2026 16:20:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvAPKz-z9FOL; Mon, 23 Mar 2026 16:20:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8515640A22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774282833;
	bh=SpkdRX1ObY7evf0xpqvsQGg/tR40AvJBBlTtT9QGL70=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S6vG5wVO1IX8+CAgoptKnpbnpXuIJ2lXYKWnX/+SKM0yjalMAVImANCIyuRDoQW0B
	 RQR9XAhFa0JIos1ZrnFif/hsgjf49fq70XhKioQof9x15O50uylco6aR9QtohW4jh3
	 IJb0LEK+I/59LcM8dbMpoj7ERdy/KSIU0bt5EEeoUuR90AYiNRAUxV9TX89H63pmC8
	 kJMklkjPV1M0lIiQA83mH+dLRuMm1ZJO2w2bk7OtK6coKI+XBFY8SHoPB1olFKUdUe
	 FbLVdcQIPQMs4ykFFcUiIxuMHknQzZgKndCBvKnk58Gr99zwPpd0/gLWrd90ftn+RZ
	 BxM1y9eKqwXUQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8515640A22;
	Mon, 23 Mar 2026 16:20:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B15B1D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C5B440A20
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lVg9c3_4CsJN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 16:20:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 92B5F40A1D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 92B5F40A1D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 92B5F40A1D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 16:20:30 +0000 (UTC)
X-CSE-ConnectionGUID: JIUZcGm+QEyAxrTjw6KrVw==
X-CSE-MsgGUID: 6FEOln5NS1az1SeZQH/l7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="100738031"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="100738031"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 09:20:30 -0700
X-CSE-ConnectionGUID: Ws7wX1igR0So2NF2VHL7DA==
X-CSE-MsgGUID: lGJVUn/1Sv2lu6+RUSFgqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="247814201"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 09:20:30 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 09:20:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 23 Mar 2026 09:20:26 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.64) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 23 Mar 2026 09:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9u0VKe6uu/6Cyg1UJMVqvmUUH/NK7o1WTICBOkJo87TZJtDCdEtSbMlYGHls2zNrzNb4dBxGqE6w30IRfx2xw2z64yEtUnJRocZg6xw0Lb53J6D+PEI0+QNXmPiEiNF6tnoW29U3Ehje2p24Ui75gGuJgmg2Hn/6BFTH3ZHdGxYuEsbzEdlly7aTeMIWVtaQ77z705T/253CISc4gTJr81foFWvBc5cBzzZhr/Ctv56RqJtUDkp0fCtTWWlTztlHMrVRsmDH/cXeqUMbAwOu35l+oe05J2WqObwoDrAUyXjTWRghX19vnBfPrKESLQIVDEpAfSZKtK1QklYnMQXDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SpkdRX1ObY7evf0xpqvsQGg/tR40AvJBBlTtT9QGL70=;
 b=UfrsBB2jPwR6EO/aLMicLeupq2eNhETeTdY7vuW2JnXyE8c9HyGDORJRijC96iG2QkIE5lGxMWw+e2PFoVDGfmnS9L754FYfoqgE5e6rifdjUIsHd8SCozK3HZ2xapK2J1dde070hnZ2xX6sR+8G/U2x54NhkyCGE2TX6i6CRxGA5X/4sr8O74e8zn0fgZ5fmvUc3uqnZHYzSfkoNbaYDfn57Haa9uJNH5kVNEpNyQP7tc0a1q6ScPJTX9oGDXtcuV+nQBebN4DkB35Yh6CO/e/bPzwjRdIh/londZEglIHoDkUi5iOXH+mV6AUdNpGLGvlNaxwSA/NsyF4qJDVk/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by MW5PR11MB5860.namprd11.prod.outlook.com (2603:10b6:303:19f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Mon, 23 Mar
 2026 16:20:24 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9745.019; Mon, 23 Mar 2026
 16:20:23 +0000
Message-ID: <6c1cc71d-0b3e-4edf-84b5-a4bac52de4dd@intel.com>
Date: Mon, 23 Mar 2026 09:20:21 -0700
User-Agent: Mozilla Thunderbird
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <aleksandr.loktionov@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <clrkwllms@kernel.org>, <rostedt@goodmis.org>,
 <linux-rt-devel@lists.linux.dev>, <sgzhang@google.com>, <boolli@google.com>,
 <stable@vger.kernel.org>
References: <20260319211335.23236-1-emil.s.tantilov@intel.com>
 <20260319211335.23236-3-emil.s.tantilov@intel.com>
 <20260320074245.f8dPuv4j@linutronix.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260320074245.f8dPuv4j@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0162.namprd04.prod.outlook.com
 (2603:10b6:303:85::17) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|MW5PR11MB5860:EE_
X-MS-Office365-Filtering-Correlation-Id: 4431cca3-ae57-4109-44a7-08de88f81586
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|7416014|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: RRZIcCI6aPI+MNBP51hk++Ul5BGceGS2DfDhd0bZJfQyGwzCTpR9PhJ366ZpqhcVyYy80sG0fa7bv6CFftNq0l4+5UNu3C7MRpWEhQtoX3vAxxRKQFBtLnn/VOehpT/fHIFhDEUySsj1+mj1omy0A1Kd68l2RO8tIQsbT0wL86XW+b3/pyL0KY3rLcPs7Ci2HGK8xTnXKFh6XZZ+HZK9FboX6kxuqvTA+IyGNZhI2N6F/cQmVr0R0NkAuu+xOXUkZkDdHwFsNY9RWrLkHtts/lenSMDiCDbFx4430RgoREyPCJYJW7Yx0d3QVjNtfmHWBwAX4MMhCpRALFTaxuUMNWocLtazFzQs05enDME4QWaK8w16sS6ftjL1Cyub2lTEo15X1OlWQRn4w+ttx5jM4ytPlCZW+7Ax81w7RANCRI7DDEuaMW+qzpqy5qgLFS4gG55/qyS6RF+Gb48bDrPjxsg5ApxpUEbsllt7AILGapeZvoOYSkyLKyB1DgK19NTDfdsx2bxbzfikK7ejpgHkjDHWCZwO1Aw8xzT+tfwqRkfl/s8wGjdR2Ioa25rHsdgopTSNlzcxnptuXjYBexDoDGMcuWuGgE4/VrdRXEZDCCEWchM7TxJSOFkABSuMoYE2uBWeVy/0X2quz7q5UfllEp/qC+aMwqGUHUN10FWas0laEUsHZ/UDGfqHUffGX8d73+LLhyEy4hKkR5w8vGteFOrAIVFm8QCdXaIb7SBtOpw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0QvckJhYVFhdFdJd0YreDdhVjhPMWJUMGIyNy9jdFRjT24vcm1Qb0hXUi96?=
 =?utf-8?B?MVJhcmZHZ1d5RHNmTjV5YzFGNWI2bDhEWjJwL09peGhIMGM0Z0Q4NWNwckt4?=
 =?utf-8?B?YWdZOFdqK29xb2I3YVEvb0N0MnF0UU1WSFhValdZK0Y3TFM3eXlwRG11elN1?=
 =?utf-8?B?aFJBSkJGdEIrcVlZY1dXczhYWElCUjdGYUsyYlowdHkwaHljVVQrZ001d2Zk?=
 =?utf-8?B?TWVnQmFYTi9HV1JsV0U5UzgycFg0dE56dFhweFdpZXkrZ0ZSNyt1MEwyYVdU?=
 =?utf-8?B?Zk0rVFNsc0g5V2RXVTUwb2FhSTZHaEFYdXRMMm5QMjladjR6ZEJzazNVbDhj?=
 =?utf-8?B?VWVqakFRdXJjeStOckRNV2lWeGhJVlk2Y0l5Qi9KdzByelcyU2VzUjh4dkVo?=
 =?utf-8?B?WnlFeExqVWxsSXdaZTV2Y3RQcjgvMmNXVnk3Ty9WLytscEFXNmdKd2ZKejRi?=
 =?utf-8?B?YkNKVGMvNEJuQTdCL3dNVStGL2N0QzNJd3RvQlFnbGZrOUtsWG1PcHZUMHlG?=
 =?utf-8?B?VzdQVHp1ZW45bkc5QkJrdG9ZSWJhajh5amxWVjlUZkhlZzNLNmdDQm1zZmhG?=
 =?utf-8?B?QnhocE5Mc0pkb0JaM0RBbkpkRE13b3R6U0hGSGJITUtic2EvWm1RWUs0UDVN?=
 =?utf-8?B?d1VHMGk5NVdBOFc2Um1EdzViVXZOcmFDQ3VRaVNPV3dhWmtMenhWTVJNY1ZZ?=
 =?utf-8?B?S3p5aWs2SzJqdmpiSWZCSkJ3dldCbmJzQTBDNStQUUZ4Yk5qVzd5VXArNDk1?=
 =?utf-8?B?bmZlYzlRdTEzOVhCZUZyRzdDQ0FSVTFld3czRXQ4Uy9tbkNHdUFIRmFzRkhn?=
 =?utf-8?B?S0NzUW82RWZVUktNMlVmZjZkNUlNZ1lNWVNmcm5CclNTbmxsMHduTXVlc0tJ?=
 =?utf-8?B?WHZYbHlKUU8vT3Jkd2RzZUZwWTlaM0tnMEl3TXdrM3NHNVRuZVZRSlluem11?=
 =?utf-8?B?a0ZmZHF5MjBYMXpJM1krQzdudkxBWFdHSm5HOGdjM1RUMFhMQzdBUGp6elEx?=
 =?utf-8?B?RGdJOENBcVg1dndPQUF2OTM0bURDR1d1bDhGNElrU09NYUhQNllnV0RTK2NJ?=
 =?utf-8?B?NE4wNFVOZ0JodTgzWHc2Q0VYY3VObk1OckZEVklkdEVwU0UwdzUrUldhVW1a?=
 =?utf-8?B?dWJ4Z0tXZ0J0a3ZDeStNdHI3cEMwTHNqR0xjZnlwTG9oTXNGZXBUNmRwZ3B4?=
 =?utf-8?B?UFJoTk8ydThqdzBXc25PRHFmbkh6cE92b2pYbm1TVWJ1ZXRVWU5qKzhaZTQv?=
 =?utf-8?B?aWhzWlBpZHh6UlRrdHVKZGgyaHdPdzBERkhLOHBTRUFQT2tnV2tVT29obk9I?=
 =?utf-8?B?RHJmZXc4K3ozNUdIVVZkQ1RQV3pPL1JPTWtEVzdXYi81WExKVnE3cnRlQXhZ?=
 =?utf-8?B?alZiZS9nQlpWTjRmS2l2SXJKL0R4ZXNjR29tSGlaYjIxRUR2enRpNW5RVlFV?=
 =?utf-8?B?YVQwVU83aHU0Qml4Zy9oeHU2VHBJY2ZvSnhselI2UlA5Y3dxcm5RZ3pFZHVK?=
 =?utf-8?B?QXVlNnErdmQ3TmFzTFdBRmszTDRjL3VhZEZSSVdTM0Y2dGNvcnRpa2toK3U3?=
 =?utf-8?B?SjFHYTVSVSs1V3hsV0J1ZVFLVUl1M1lTRzlHV29tZ0xmcFhXOGtmVUNkTjZZ?=
 =?utf-8?B?cXAwQjMvdE5Ba0VydncrVDJWRWJZa0xQQXNkSnlCdFo5RGdnVTR0eklaTzRZ?=
 =?utf-8?B?UlJzQ1BLL3hDM0c5TWFyOHFCdGdVaXhFNUdiaXJSOWtzbzdrR1dKaW9WQzZU?=
 =?utf-8?B?WU8xdTdxbGowTDJuUlhZZTNlVnBDb3lUeGsySEZSSHBiM1QxVHJQT2YySC9Z?=
 =?utf-8?B?MkFSZVI0MWYxK0ppd1RDYkdLTW50RlJ2UXlIWFpvcDRkRVU2eUVPeDgzQlRv?=
 =?utf-8?B?VWF4MXRwS2ZwYkd0U3B6UndWckJQMTRreGhLZTc3Ti9HWStsY0lrSTVzRUdh?=
 =?utf-8?B?dFUxekpiTjR0bjAxOTF3RGlPekh4U0lFU3JxK2paVVBlZHBFWm1PVUt1OXMv?=
 =?utf-8?B?dVA2UDNYaktqVzJLOVI4dTVjRnNkcjFOQWNNMXpqdlcxbnZpQ2xvSEMvdit0?=
 =?utf-8?B?WU1tQ1JEL0JvNlRITzV4NVVwS251QTNVRjR2dGNCK21ONEs4T3BZa25YTm5H?=
 =?utf-8?B?TUpyek44T1NINXZRZkk0MmQ2UVBSYWVSd1BGNFpobnhEYXVpQXBoWFlWWFlJ?=
 =?utf-8?B?b2tuVXljTXJFUGMxNW1sY1h4RDB3UlRwOFE1Mlc3eVBlRGczNjhmcnJQV1Mz?=
 =?utf-8?B?NElvaWh2QVB0Q0JnYmtOV3JKcFU2L1VGWWR5ZUhIcmRzZno4alVycHdQUTEw?=
 =?utf-8?B?bkMrR0FMV2dLa1JwWlQxaE9McXZzbmJobTB2alRJckhxU3p3MWFLQnJibHZh?=
 =?utf-8?Q?a88GD/ObRBpJ2ghY=3D?=
X-Exchange-RoutingPolicyChecked: eYkg1HRVzuxQ4GQZqnNv03Z53CqUiFvjycajp1WA+f3htp9PAiZxb3nY414EL7a8StYHQ72RMc24eFy2Q75sVBMWp8/9Ux0IRAK7FwGEoNgwEnYTe+fAUqI20qLthI9BpDwlWhzZYhF1rpbX0DthwC9g6AGgx7EVC4AYhKwg4277TpZdGv9HKLwHUhot2ciJqVDk45zCYDRN5eq9jS8yycJJBiM+cXtRZ6ioIR8RLDZD5xUdzDSe/FyTOcKKCSBUFU2q9FA26jQBweD5Vc36vxqmYE1RlYAhsEYK9ENYqtvfBo39BJWej52i7gdy7eziQhHC4UgaFlqCnZV8QWySjQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4431cca3-ae57-4109-44a7-08de88f81586
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2026 16:20:23.2295 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TRLFEiCapSKBYUa4PmaFBR+u5Xcneu4o4JDpwhOUgG6VowfTMKsopkqZpvbb2UjugjidFLTnGhqrGYE1ZAvU6gG5zte6Y/Pdhgu+ywQtrg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5860
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774282831; x=1805818831;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rnrxJxXbTWVvsM5vJF8qezmcDw9yTPyFQX2/Rj53B44=;
 b=dCcCpghtR33QH3/UaAJjPINobMS/4REzHRqiWjdE9EK+XFpv6WHRTyWf
 zx2KwDf76cyIJ1ZjLUhElZNMqNSG1lDJgZ/S79Rj8jeBPoVrRaNbg8J92
 +uhg+bc8H5r49rpmUvppMMfVAWxuAB+M5KM561f5syItaPkgAc3MQkzh6
 FLUgfy4R0otjT0PeHxbIweV3AAWGmcb8VI5FuOQeEuEslX71w16x2C9PW
 NlvF8i/4kqVge+SG5eV/kzOHeiUNfhqu3v3jZNGjQhIHCh0WN/fN74TIj
 3Z+Qh2K3uxh5aAHxGKIs9Z0S46s5jSBCBAf9hjBOnBgMnNzkleMqjppPL
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dCcCpght
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 2/3] idpf: improve locking
 around idpf_vc_xn_push_free()
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bigeasy@linutronix.de,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:clrkwllms@kernel.org,m:rostedt@goodmis.org,m:linux-rt-devel@lists.linux.dev,m:sgzhang@google.com,m:boolli@google.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns]
X-Rspamd-Queue-Id: 4CE882F7EA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/20/2026 12:42 AM, Sebastian Andrzej Siewior wrote:
> On 2026-03-19 14:13:34 [-0700], Emil Tantilov wrote:
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 582e0c8e9dc0..fbd5a15b015c 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -402,7 +402,9 @@ static void idpf_vc_xn_push_free(struct idpf_vc_xn_manager *vcxn_mngr,
>>   				 struct idpf_vc_xn *xn)
>>   {
>>   	idpf_vc_xn_release_bufs(xn);
>> +	spin_lock_bh(&vcxn_mngr->xn_bm_lock);
>>   	set_bit(xn->idx, vcxn_mngr->free_xn_bm);
> 
> If all of your bit manipulations happen under the same lock you could
> replace atomic set_bit()/ clear_bit() with their non-atomic counter
> parts __set_bit()/ __clear_bit().

We have taken similar approach in the refactor/move to libie:
https://lore.kernel.org/netdev/20251117134912.18566-7-larysa.zaremba@intel.com/

Thanks,
Emil

> 
> The lockless alternative would be find_first_bit() +
> test_and_set_bit() loop. Probably another atomic op for salt. Using the
> __ is free with this change.
> 
>> +	spin_unlock_bh(&vcxn_mngr->xn_bm_lock);
>>   }
> 
> Sebastian

