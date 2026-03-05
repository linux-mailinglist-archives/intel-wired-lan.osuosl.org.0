Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uOVEOxv+qWk1JQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 23:05:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D55B4218C36
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Mar 2026 23:05:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D258041923;
	Thu,  5 Mar 2026 22:05:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D49kEtXuLjTP; Thu,  5 Mar 2026 22:05:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 210904192D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772748311;
	bh=w+N9WupJ4IlJrxCtNuZ715nK4K2chQ76Di6cRAgzzT4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9JZNrLnvgcHs6k++GJTy6WvjsGFDWBJTN39dRrixw5VYrKB6PsJu6KzuDmjdbJLim
	 zjHCk59gq182uBWnuevLreyQW+urqtIIvtQPpxzRr4tRJLbja3waVc1mOn4Glk/byJ
	 y/YCrnVqMPBb+wMcW6cwaos2tlt9QalfdVem1lR0OjIJTZyZT272PKI2yqp6edZ9cE
	 54UmwtHN3+HNIv4frSWgpv8jVR8q4uLqFIUVNK6SKBcY2qIbt+kWfuEkM2g4DXaVuJ
	 59iDO4y8FOLXRWxAaalR4xHIIARvCXPJO5zrETWCFC2MgpNwm+nl5oIyCxZlzEw03N
	 SNHvbDUnEm+fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 210904192D;
	Thu,  5 Mar 2026 22:05:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 9E5592D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:05:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8322C60EA8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:05:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rfVrChgCULNw for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Mar 2026 22:05:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CB70460E9D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB70460E9D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB70460E9D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Mar 2026 22:05:03 +0000 (UTC)
X-CSE-ConnectionGUID: z2oY39qRQYSWIZ1mkc/Z8g==
X-CSE-MsgGUID: DPgD7gbQS+Cw7kgimb6Aig==
X-IronPort-AV: E=McAfee;i="6800,10657,11720"; a="73724294"
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="73724294"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 14:05:01 -0800
X-CSE-ConnectionGUID: 9nsKdqvAQCyg8V0CtAwD4w==
X-CSE-MsgGUID: qBLO2XQKSiabszMbOJsfQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,103,1770624000"; d="scan'208";a="215566370"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2026 14:04:59 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 14:04:58 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 5 Mar 2026 14:04:58 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 5 Mar 2026 14:04:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Kr1lZ5KxlXy+P4/stkJppda9um8/aiEGc6/fdIJ2dJ2uJ8pwF64FoXVdIhfS0odp5C1fGn6Fj6PyEoixu/bsg4Lhs2HFhp/FRygeQOU5UY84yUEI0Ii7cjjUNLNCEq8C9KWoRxTrqduJybxjQaf2zn2fpQjSQZBe9qBGtRfuTZBTWdku6Upj8yqp/MSSOTNed22Mg7NPORG12CQKz2VWNB5SJ7/HSIwQpHFERqR4ORMDyr2n3fvrfPD3uNUnBJL2JFCQ4XrH79ogTcUJkxVmmW5TDOgKxDESHP22gFPpCfHDROCq8VET3KgaS3kjM3DX/kt7Hd32JVabgtcnldz3gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=w+N9WupJ4IlJrxCtNuZ715nK4K2chQ76Di6cRAgzzT4=;
 b=D+3yY7UUXzdfvRjc2bwv7Zw4MYNlWR4fP3iW/MKxo44awWqPP3d0cHcI9aE417PsJLp5po8i1p1741ofGwWR02NpWYkmo9oZY9aluZGV4GVCmg2eTXVoxEEW1WXrd4r7ll7HfVqya0iQZNCkCnemhSq2+nfJ1rmktgyzvkzfsDkQ0keOnjoKPbmEcKmXSkZsfH3xC4o5Wj0LG5DFM7aPTQreJPfMxwdWyRHjUsauCGE02DxlNKmSEVSLie5HEF3B3pznRoVWx/bXWDSRZBFHCk7iToNh1JcYux2hv3g/zVp3XZgNdV4VbS3oRLZSCVaGJZJkCDJ0dr4WVTN8AK1qsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8168.namprd11.prod.outlook.com (2603:10b6:610:186::20)
 by SA1PR11MB7132.namprd11.prod.outlook.com (2603:10b6:806:29e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9678.18; Thu, 5 Mar
 2026 22:04:55 +0000
Received: from CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee]) by CH0PR11MB8168.namprd11.prod.outlook.com
 ([fe80::9549:c8e9:6748:12ee%5]) with mapi id 15.20.9654.022; Thu, 5 Mar 2026
 22:04:55 +0000
Message-ID: <b21bbcdc-ec87-4f83-8449-e627b6353281@intel.com>
Date: Thu, 5 Mar 2026 14:04:52 -0800
User-Agent: Mozilla Thunderbird
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: Tony Nguyen <anthony.l.nguyen@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Simon Horman
 <horms@kernel.org>, Kohei Enju <kohei@enjuk.jp>, Jacob Keller
 <jacob.e.keller@intel.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, <nxne.cnse.osdt.itp.upstreaming@intel.com>,
 <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20260224174618.2780516-1-aleksander.lobakin@intel.com>
 <20260224174618.2780516-3-aleksander.lobakin@intel.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <20260224174618.2780516-3-aleksander.lobakin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0192.namprd03.prod.outlook.com
 (2603:10b6:303:b8::17) To CH0PR11MB8168.namprd11.prod.outlook.com
 (2603:10b6:610:186::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8168:EE_|SA1PR11MB7132:EE_
X-MS-Office365-Filtering-Correlation-Id: 69593fc3-7bc0-4055-fb72-08de7b033bfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: itKKOjVPMjuF/XlSf73kvJ21C9viZoBDw1LU5txqlGGQKW42H+6IO+DL93gNhfrSDAHIVh7fKn4CLv9ufWGZZTPs8P7m0PxBo6tBDM7pjbL8nN57phGqclL7+h46bLTrgD4QYF016eDrD7kzbeJnmVwrrXx4kcSFg+PWZ5mz+kxHkr91qWm5PHWPcG27fl27C0RTwMaT0lRCjag4HgvkJZctmYOwpehbgj+Q02BcBgl1SG6si1LFR06HT0Mvk5BsKB+EfoIU/z1Om/FeKCrjuiw1MWS+wsJlLT9qsWCbc87gneYMrZgMNDf2dXanxPtgCbG4JSuxgPGbrIls6kcvRsU9j4phqKdUEH26qJrZjC2o04R9HAgfSuKo0yjmPR+qpHeJlLznfYzjbA5D6qPugzuauydz0ch860VlO3vvVkz7+0w8wBZtIDI0pVZd2kVK37g2V3vPwHUqfWIN6v8ZglkEhMe1XK9AElsGl6mrZMnynJVDoH1tlEOMHyEn977Xv88n9+RAh+W1LiYQl+/J2G/KShYpcLKJ6LPvMf/3L6yYEfDMdL9Vg7eXhw8bYHFDI9JZ5eHxxxucLbkgUTmELKXm8jWLAq9s67tMenuahte5B3cE4vRR1xh+r+WtX7eVdhkGeohP64hJcUk4k1HAuOMbpU59SDlNfcXXwItN6giAUZHP0V6SMwrv3GXPsMd+BNeTm2jIkWo1g30GzcUS2zsp9JkEXAe7BuSK8GstTNQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8168.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SUozZWEwMmZnb0F1Y2IrWGxIamkwVGhUMGkwNUticnZsVWM4ZW9weUZOSGtY?=
 =?utf-8?B?QnM0ZzYvOWQzdXRTTlhWN2JQc0lNYSs0NTRLc3JLY0pqRHZNSCs1SkNtZkIr?=
 =?utf-8?B?bTV3NGpJMjJHbjYzamZxUGVGMEkxZXFrdW1SU2dCb0dHejRiNDBVZ1RvK3hv?=
 =?utf-8?B?N29NL3FJRVRuSVJ2ZmNLdmNxdFVqREdoNWF0Mk1RbGltdXJDZkxESllUVkZu?=
 =?utf-8?B?QTFicDUzSWFYRkh6NWQvZ3RBNEJZakQvVXVQUGhVMjM1L2llTzg0akpXZU1J?=
 =?utf-8?B?bUJHcWdTbWVsVFRNQ3gyY3ZTNWNGanA4dUdhT3lKdHhQRWdqZGlKdVd0UHkw?=
 =?utf-8?B?UWczVlByRWowenA5YlMyNit4VVFCMUVCcU9pZU00SUtqTTFqdHpoazhwbUdV?=
 =?utf-8?B?eUM0YmE3aUQwMHZtc2ZENmJSaWh5dGdhOE96Y3grTFRtajZyQW1CaEZ5d3gy?=
 =?utf-8?B?dnE3eU9jL0ZCcmh6VCtkWVc5bGFSVC9sS2k5V1lKK0tENDBzTzBHZWxFcnJN?=
 =?utf-8?B?bzNKa2JIZDU1RjlkSHdDOHN3Z3VSbFhmNXF0Sm1DekJWUTlGYnNNc1dzR2Y1?=
 =?utf-8?B?TkhuZlEybkNoNnplVEl1UmZWQ0QrMTQvODZPbGdjRDBySzZmajlSWmpBRmJo?=
 =?utf-8?B?UWg3Y2x6Mk03cTJvZ3V6K2dGQzl0amdmZFUzNjdibHBjQ29PSDgxRGVRaGh5?=
 =?utf-8?B?SFhTWm02amQxZUFZNnloMWpaTEQ3Mng4MUZrNDE2R1dPTGhmcVo1UGQ5aUJ1?=
 =?utf-8?B?czA3aXpKbkY1czBJejh5ZElkWXBEOFlmNlQ5NjYxZnU2NDZ3UHl3S2NSZk1v?=
 =?utf-8?B?cFkxWFo1UFFyOTBjRlZTZVpDWGlZWEFuamFzRGQxQWJlY2VrRTBDQ202OFJD?=
 =?utf-8?B?K0xwaENTSHN4V05NR1VVUW5HUHU2MmZ5V1MrU0wwTFJYTVRFaFZiQ1ZWMXRR?=
 =?utf-8?B?SUJHeitTOUI0aXppVlFWTld5ZDk5Rks3S2NLUFg4a1JQMjAyY2tTZzgyUmJC?=
 =?utf-8?B?M0EvWTM1a0ZyRktYdGROdEk0R0xlK2hhVFBXTmVHcmUvT1VISG9TeFZ0aVEy?=
 =?utf-8?B?OExDL1lzM3VXeE5uWFl1ZCtjdDdGdkdMNzZrWDloajBUekUrVXZ0YlQ2eExC?=
 =?utf-8?B?bXg0eTJvRmNhUVN4NUdIK0lyUlM3WnFDb1BsVkwwYVF3UURwTFdZSGxMeHZY?=
 =?utf-8?B?L1FMMnM0OWxxMTRybzVMZmgwYmh2SllEQUlmMGR4TE4vdFJjVFlPS0JuUTdM?=
 =?utf-8?B?OVFla0lPM0c4TFlFczJCdndpV3lzM1pHWUZzSllOKzUxOUw5eTZxNURTZnJk?=
 =?utf-8?B?YzV5NVZMcUpBWXVMcEc5bUVCU1VBRVVZRHZPdkhRdlozbmNYMW9QSnpBTi9m?=
 =?utf-8?B?eHpEVFpKdWpZMVNEOW5Yait0MFFjWXRiU2Q5YnllOSt6MmlCeElEM3BjbGN3?=
 =?utf-8?B?Tjh6TkhkWWhaTFR5T1JicVo1M05BNkFrUTJDbUc0RHIwbFUzNExDZE54MnZp?=
 =?utf-8?B?Y09OK28xb3NPRmozWk1IekppTXQrdSt4dmQvTzRRYXFqMVhFdk85L1ZSKzQ3?=
 =?utf-8?B?TjZ1VmR2a1lzYnpCVUY3Nng5akF6ZjlZeHhmZUtsNjJYL3VPZ2JoM2VHMjNK?=
 =?utf-8?B?dTYwVkRJdytlVzZxV3BnbnhldTFSdTZLbmRMNHRqWGRlNUVrRkdJU2FBV1BK?=
 =?utf-8?B?VFFqWjdHVmRoVkdGQS8ra05Xcm9JS29vem9zN2dIQ0o2MjRYRURacFVKR1VR?=
 =?utf-8?B?b0RvNGQyTXJHQ052WXYzaDZNL3lySnlrV2NhMk90OEZXYXQxNWVtbEszSGdj?=
 =?utf-8?B?R0VUY2JuNU1YbE1adlZFVHFGZmp3cE1aNmxBZjd1dFg5R2pnK1lzazVLTlZR?=
 =?utf-8?B?MXozMVNTOFdXWHJQR0srQ2ljN1lMYnhOdW0wMkNPenhHcnJDNE5jdi9aR1Y2?=
 =?utf-8?B?c3k1U2hZbGRUcm5QczVKY1JybUNHR2YwN2hCRitJR09KUXdiWGViNXJtcHha?=
 =?utf-8?B?S3oyZkRERy8ycTZpb1NLT21ZcDJtUnl3RTB2NXBEKzJqem5SYzlOZk1EWXZN?=
 =?utf-8?B?ZzJHM3NBcEVJcXRyMnUreXVyUHQ0aVJ1VG1WM0djK25kaFBSd2VMSzNMNnBG?=
 =?utf-8?B?MU8yazVtaHp3eG5WVUw4d1JaQUxTS2ZoOEV6MDVqN1NpclFOMFRJYmNZUDF4?=
 =?utf-8?B?dHRCUEQrMjhSR3hrY2oyWHZqdFJReWQ0VkpQZ1RKcDdXdkdobDFYcmRGRzUx?=
 =?utf-8?B?eVJNTVJCbkJ6WVNGcmxmY3FFMzZjMk9tckZEaWFXWkZzNi9hODdPTFNCZlBy?=
 =?utf-8?B?RmVIRlJGSWFIMHdhTDlPOUJxOUlUckovUVhrMVVaYlF0SCtDMGtjNEViaWUz?=
 =?utf-8?Q?WFErQH95K7cB2bX8=3D?=
X-Exchange-RoutingPolicyChecked: M4d5wXT3ewJ0VwG0J9YTP9jJBOkOBbe74WZAugMP2c61ghJCk9V4wigYNQOE66MIbY/6LQLS1qZ+xjfmJGNjzBQFDO94Team82IK23kGEl3b8mo6uB9bjudcs8EMThpJII0TXSVOXCo3z7JI3FC1g8CWjOiR2pJ0tPVlqAHlj/uXNWAX5Hy3f9om+UkoB1/nugDOrG3veY827Q4eaHwvQCoRTRmTSjSNiGmULaU4D3zP2Z+EImv1tMMZcEcLPICb2tv1FlMFUr5t73GPkuDvwe89dRBXuKctJhTnHspjwSWjeBZRrcfdHwc6u1aUTfUfbMzQHDVzm29adQ4P88lPmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 69593fc3-7bc0-4055-fb72-08de7b033bfb
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8168.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2026 22:04:55.6482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BYhdEIYmNwWW1ePLyb41AeF21YPJg0zmdafFYDnaQJ9ulIGLZysCqTITIwrIz2fINBYdaYx8LmrrEtPkDbv6LCf9oxuGA/DQUoWUpMYSHYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772748305; x=1804284305;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zAH8c7//50jH/s6k9gENWr7o4zm9ANgNy9w6GOTp+l8=;
 b=DdxqJ7Y4diW9bvOpxSTSZZyR2GETD3gsGBxm6dC948kax1pmfPzNSKb5
 ECw+djRclmWADae5HsVduYgDkNKlEKhCA8dWvIDMmtp2vEvjcM9C1iMpU
 PajntbE1Z2GCDZo4KRHOwgDlHPwzispAexUkQWPk7WdqNTXR5kG6iE3Gy
 e9Ig8fjyaTHWD+dl8BgxJ1zTZoYZN34xj8zMhq9EE6pYinkaFW7Nxbj7g
 uBWHKHEgLDA0LMr5XJO6z2v2CTzyE3jBxWvdpFmCvW9uFjYIszckPK7Py
 7pk4NqpHagtJ7y/wSwQgeRo64SCwIr5lRATut06u7DWffRzkJovVUjTxr
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DdxqJ7Y4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 2/5] libeth: handle
 creating pools with unreadable buffers
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
X-Rspamd-Queue-Id: D55B4218C36
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:kohei@enjuk.jp,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[emil.s.tantilov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Action: no action



On 2/24/2026 9:46 AM, Alexander Lobakin wrote:
> libeth uses netmems for quite some time already, so in order to
> support unreadable frags / memory providers, it only needs to set
> PP_FLAG_ALLOW_UNREADABLE_NETMEM when needed.
> Also add a couple sanity checks to make sure the driver didn't mess
> up the configuration options and, in case when an MP is installed,
> return the truesize always equal to PAGE_SIZE, so that
> libeth_rx_alloc() will never try to allocate frags. Memory providers
> manage buffers on their own and expect 1:1 buffer / HW Rx descriptor
> association.
> 
> Bonus: mention in the libeth_sqe_type description that
> LIBETH_SQE_EMPTY should also be used for netmem Tx SQEs -- they
> don't need DMA unmapping.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> ---
>   include/net/libeth/tx.h                |  2 +-
>   drivers/net/ethernet/intel/libeth/rx.c | 42 ++++++++++++++++++++++++++
>   2 files changed, 43 insertions(+), 1 deletion(-)
> 
> diff --git a/include/net/libeth/tx.h b/include/net/libeth/tx.h
> index c3db5c6f1641..a66fc2b3a114 100644
> --- a/include/net/libeth/tx.h
> +++ b/include/net/libeth/tx.h
> @@ -12,7 +12,7 @@
>   
>   /**
>    * enum libeth_sqe_type - type of &libeth_sqe to act on Tx completion
> - * @LIBETH_SQE_EMPTY: unused/empty OR XDP_TX/XSk frame, no action required
> + * @LIBETH_SQE_EMPTY: empty OR netmem/XDP_TX/XSk frame, no action required
>    * @LIBETH_SQE_CTX: context descriptor with empty SQE, no action required
>    * @LIBETH_SQE_SLAB: kmalloc-allocated buffer, unmap and kfree()
>    * @LIBETH_SQE_FRAG: mapped skb frag, only unmap DMA
> diff --git a/drivers/net/ethernet/intel/libeth/rx.c b/drivers/net/ethernet/intel/libeth/rx.c
> index 8874b714cdcc..11e6e8f353ef 100644
> --- a/drivers/net/ethernet/intel/libeth/rx.c
> +++ b/drivers/net/ethernet/intel/libeth/rx.c
> @@ -6,6 +6,7 @@
>   #include <linux/export.h>
>   
>   #include <net/libeth/rx.h>
> +#include <net/netdev_queues.h>
>   
>   /* Rx buffer management */
>   
> @@ -139,9 +140,47 @@ static bool libeth_rx_page_pool_params_zc(struct libeth_fq *fq,
>   	fq->buf_len = clamp(mtu, LIBETH_RX_BUF_STRIDE, max);
>   	fq->truesize = fq->buf_len;
>   
> +	/*
> +	 * Allow frags only for kernel pages. `fq->truesize == pp->max_len`
> +	 * will always fall back to regular page_pool_alloc_netmems()
> +	 * regardless of the MTU / FQ buffer size.
> +	 */
> +	if (pp->flags & PP_FLAG_ALLOW_UNREADABLE_NETMEM)
> +		fq->truesize = pp->max_len;
> +
>   	return true;
>   }
>   
> +/**
> + * libeth_rx_page_pool_check_unread - check input params for unreadable MPs
> + * @fq: buffer queue to check
> + * @pp: &page_pool_params for the queue
> + *
> + * Make sure we don't create an invalid pool with full-frame unreadable
> + * buffers, bidirectional unreadable buffers or so, and configure the
> + * ZC payload pool accordingly.
> + *
> + * Return: true on success, false on invalid input params.
> + */
> +static bool libeth_rx_page_pool_check_unread(const struct libeth_fq *fq,
> +					     struct page_pool_params *pp)
> +{
> +	if (!netif_rxq_has_unreadable_mp(pp->netdev, pp->queue_idx))
> +		return true;

This is causing a crash on IDPF:

[  420.570632] BUG: kernel NULL pointer dereference, address: 
00000000000000e8
[  420.570684] #PF: supervisor read access in kernel mode
[  420.570712] #PF: error_code(0x0000) - not-present page
[  420.570739] PGD 0
[  420.570757] Oops: Oops: 0000 [#1] SMP NOPTI
[  420.570784] CPU: 35 UID: 0 PID: 1058 Comm: kworker/u258:8 Kdump: 
loaded Tainted: G S         OE       7.0.0-rc1-next-devq-030526+ #34 
PREEMPT(full)
[  420.570844] Tainted: [S]=CPU_OUT_OF_SPEC, [O]=OOT_MODULE, 
[E]=UNSIGNED_MODULE
[  420.570872] Hardware name: Intel Corporation 
M50CYP2SBSTD/M50CYP2SBSTD, BIOS SE5C6200.86B.0027.P10.2201070222 01/07/2022
[  420.570912] Workqueue: idpf-0000:83:00.0-vc_event idpf_vc_event_task 
[idpf]
[  420.570967] RIP: 0010:netif_rxq_has_unreadable_mp+0xf/0x30
[  420.571004] Code: 2e 0f 1f 84 00 00 00 00 00 66 90 90 90 90 90 90 90 
90 90 90 90 90 90 90 90 90 90 f3 0f 1e fa 0f 1f 44 00 00 89 f6 48 c1 e6 
08 <48> 03 b7 e8 00 00 00 48 83 be c8 00 00 00 00 0f 95 c0 e9 8a 25 2b
[  420.571078] RSP: 0018:ff6bf03aa83e7bd8 EFLAGS: 00010246
[  420.571109] RAX: ff3579f9888ed0d0 RBX: ff6bf03aa83e7c78 RCX: 
0000000000000000
[  420.571145] RDX: 0000000000000000 RSI: 0000000000000000 RDI: 
0000000000000000
[  420.571178] RBP: ff6bf03aa83e7be0 R08: 0000000000000040 R09: 
000000004b1a4093
[  420.571213] R10: 0000000000000003 R11: ff3579f9bed90ee0 R12: 
ff3579f9d58c6060
[  420.571247] R13: ff6bf03aa83e7d88 R14: 0000000000000001 R15: 
ff3579f9d58c6050
[  420.571281] FS:  0000000000000000(0000) GS:ff357a195e9db000(0000) 
knlGS:0000000000000000
[  420.571320] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  420.571350] CR2: 00000000000000e8 CR3: 00000023b2e2a006 CR4: 
0000000000773ef0
[  420.571384] PKRU: 55555554
[  420.571402] Call Trace:
[  420.571419]  <TASK>
[  420.571436]  libeth_rx_fq_create+0x7c/0x380 [libeth]
[  420.571479]  libie_ctlq_init+0x304/0x460 [libie_cp]
[  420.571516]  libie_ctlq_xn_init+0x29/0x230 [libie_cp]
[  420.571550]  idpf_init_dflt_mbx+0xa7/0x170 [idpf]
[  420.571611]  idpf_vc_event_task+0x15d/0x2f0 [idpf]
[  420.571655]  process_one_work+0x226/0x730
[  420.571699]  worker_thread+0x19e/0x340
[  420.571729]  ? __pfx_worker_thread+0x10/0x10
[  420.571760]  kthread+0xf4/0x130
[  420.571785]  ? __pfx_kthread+0x10/0x10
[  420.571813]  ret_from_fork+0x32c/0x410
[  420.571844]  ? __pfx_kthread+0x10/0x10
[  420.571871]  ret_from_fork_asm+0x1a/0x30
[  420.571909]  </TASK>

The driver will call idpf_init_dflt_mbx() before the netdevs are created.

Thanks,
Emil

> +
> +	/* For now, the core stack doesn't allow XDP with unreadable frags */
> +	if (fq->xdp)
> +		return false;
> +
> +	/* It should be either a header pool or a ZC payload pool */
> +	if (fq->type == LIBETH_FQE_HDR)
> +		return !fq->hsplit;
> +
> +	pp->flags |= PP_FLAG_ALLOW_UNREADABLE_NETMEM;
> +
> +	return fq->hsplit;
> +}
> +
>   /**
>    * libeth_rx_fq_create - create a PP with the default libeth settings
>    * @fq: buffer queue struct to fill
> @@ -165,6 +204,9 @@ int libeth_rx_fq_create(struct libeth_fq *fq, struct napi_struct *napi)
>   	struct page_pool *pool;
>   	int ret;
>   
> +	if (!libeth_rx_page_pool_check_unread(fq, &pp))
> +		return -EINVAL;
> +
>   	pp.dma_dir = fq->xdp ? DMA_BIDIRECTIONAL : DMA_FROM_DEVICE;
>   
>   	if (!fq->hsplit)

