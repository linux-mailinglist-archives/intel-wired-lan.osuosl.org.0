Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABAEB8BD6C6
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 23:18:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5DB1D605AF;
	Mon,  6 May 2024 21:18:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uvWUIaYd9Msa; Mon,  6 May 2024 21:18:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B302606AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715030334;
	bh=ahv50rTEwwobfw+afb+bGJbjUZPMKsCha2ERApGRJS8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IGpRzSt5m478vE5cFfDYKpVsbY9n1ctTO/Yw56GQ9n5Atlwee5Bsu3vy/CXymk8Qa
	 5Geu17t6shB7AaWJMWZGekxZkZ5FcP3fTr39KOvMk5l+3YFtfecCf1pDO0ojbrp9TJ
	 AzX2imePOUBQwlYI7lXHaE6PKNUVuslJ868eMfixgKK4gJiuaQvpO3SjUx44rrT39+
	 D9ZavYyd8+bgKxSLiyuEQmgJRJ83cgJomRhg5CKfKfXStzFcBSTB22mdqpyEQY1i8g
	 GtZ8coR75pL0oFT9El8NSoLW3oPbdI6ctOHHX5hW/VbRdd1yENALGe7QeQDp4sRWEI
	 0vNutr7U5vjWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B302606AE;
	Mon,  6 May 2024 21:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3FA301BF46A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 37ACF605AE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wq9NkQPnAdZa for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 21:18:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3E6B5605AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3E6B5605AD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3E6B5605AD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 21:18:49 +0000 (UTC)
X-CSE-ConnectionGUID: lIO0yOjrSdKp3cGOsBLlWQ==
X-CSE-MsgGUID: efu6tvMNS0y2ZKgwLQ//6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="11012628"
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="11012628"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 14:18:41 -0700
X-CSE-ConnectionGUID: Vzew+IWtT56cuSF92oUg5Q==
X-CSE-MsgGUID: 0FcuW205R9mA+fY6kRbTpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,259,1708416000"; d="scan'208";a="59147373"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 May 2024 14:18:41 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 14:18:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 6 May 2024 14:18:40 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 6 May 2024 14:18:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 6 May 2024 14:18:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R07YjhoeJx7i9IH/4h/C9AKFQtlj0rI0NelgwvJg+4G73/vBgx4D40iUQHyDVaXKgOzcWV13a7syn7jjIhzG3KU335dBQbF/0+SN+mXbQWe/WboUbHd/0DfUFOGBX/e94cqIlGpo46+HEEMwCM6bd+6NIwoCporzzDsNHSLjIqO9owfRn7lqBmvrpDyUpTxBwnT6JjwMdKn4BvnbyJbC8GNojUR+pa/rZP/y9ociMmf6bNW74i7HgJEXFJ6rI6rmic21jlRx3iORQN/sjJPWHfAt4FR2X5cvbHpqtRKeYmXX9tGSG5qyRq13o5XkpxbhSds7VwJ5LqJ41aGcsUqYlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ahv50rTEwwobfw+afb+bGJbjUZPMKsCha2ERApGRJS8=;
 b=Dc/Lj+0DtUZbNRnT/S077k8AHocCENTnFJuH1t96tRfX4Q88uXwyahowam4e3aEcGV+QRd4qpyiNePSo7UtoOdRQ7cZ9HvjHQpHMXoABGIKVW+ituh4AG5F6sDk6Qm4lvc8MqGfi/5Tu5D90v+rqw1tvue6TRPjAY3ISdL/z8tLxItGVbE5gLq2pIyHjOrmTgSzU85Lj+Nrt7y20EVwGLlzGaZXK6R6+WvfHga7WiBbKYTk8hrnmD6KC4HywGuGfI5XutjfDSUvW1VGsRerNpUUcQt3EOd1S0xDkRYgpKPBW/sh/M9ElNSJyqQ9G4fenNFvbR/VV7Mv9gPX9HzBy8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7289.namprd11.prod.outlook.com (2603:10b6:930:99::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.41; Mon, 6 May
 2024 21:18:36 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7544.041; Mon, 6 May 2024
 21:18:36 +0000
Message-ID: <4a0bf7cf-d108-49ac-ac7c-6136a070c44b@intel.com>
Date: Mon, 6 May 2024 14:18:33 -0700
User-Agent: Mozilla Thunderbird
To: <kernel.org-fo5k2w@ycharbi.fr>, Jeff Daly <jeffd@silicom-usa.com>
References: <cbe874db-9ac9-42b8-afa0-88ea910e1e99@intel.com>
 <e16d08bf-49f6-4c51-85fa-7c368d1887b4@ycharbi.fr>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <e16d08bf-49f6-4c51-85fa-7c368d1887b4@ycharbi.fr>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:303:8f::32) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7289:EE_
X-MS-Office365-Filtering-Correlation-Id: 86988a73-dab1-4253-e127-08dc6e12175e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZG1URlFwZGxuRVh6RzhSd2hiTW04M0hMZjVqU0NxZ0p5ZE1vRnF0c3Rwenhy?=
 =?utf-8?B?Z0w0RGRraTdKQkZUOTJZVU1kMXZkT0sxK1ZQNkV6bms5Ny9aT1ZJNy90c2Fq?=
 =?utf-8?B?VVlSNWZYM1VNOHBQOVdZT01Hd293RExCU29mMktRVm82MGZwSTRMUkt1a3JO?=
 =?utf-8?B?MWhEUStvRU5TVDZpUUs5UHFoa2NZRG1aemR6dEk0cFF6RnlYbDF0K1ZMTXVM?=
 =?utf-8?B?Y1dxcEhLWW1ybzBzbTNCd25weHN2eTdKQlBMSEl1VnJSTUN6UmxJQXhGTUFt?=
 =?utf-8?B?UFFzMmNxbm9YWjkwT2dnN3pDdkRaUlNXMFNZZ2NITit2QmhHbjB5ZzJoNFJN?=
 =?utf-8?B?ZEtxVHpPY2RROUtPVGdnYTRlUDlHVHdkcVBlY2M2dEVtb2wxK0thNjZRcGJ3?=
 =?utf-8?B?b0VKM256OWtmV0VRK0duZ3BFSzhob2F3b1FTdm4vSWo3RzFFeFg1RVMwWit1?=
 =?utf-8?B?SEtjVjk3ZWRJWU5GcjZ3eW1jMWp0elhMNUlCRHdqRGhtQ2lhcisxUnk2ZXl3?=
 =?utf-8?B?Z2FiYWY1OU94Z1U2WlFwWTBrNVQrVnRoYkwvaFQ3cHZGMHhVUEQ2NzJKekt2?=
 =?utf-8?B?dFpvYTd1RnpLYlZsR0hSMWVmbFRNMHR2MnR1N2V1UUVGVENMTGNIaEpUb0xk?=
 =?utf-8?B?Q1E3SDkxZ2FVOGY2WXBOWldmR25Rc051Q01Rcm9KYnFjaVJCTGVwcnBxaVc3?=
 =?utf-8?B?Um5QUWw2MG8yc1EzNVRhRlRBRHFNbzZJMXp2R21wY0hLTDd3Y1lnT0psbGdZ?=
 =?utf-8?B?TzVYVkFFbTNDL1FPUWdQN3RFaEkvcTRBN3NacS90aVl0aVNXNm1Ba1NpVklB?=
 =?utf-8?B?RSttbjY5Z0dqb0ZPWTFuRVVTWkNhN2Y5NU9lbWRXbG5qVEo5T3BucmhIMFlz?=
 =?utf-8?B?WERWYWU4VnFGVTdJUEZsTXpuNFFPL3BVY0FxaEVCUFhQY2kyVGI4THg3SElS?=
 =?utf-8?B?SHFuQnFJUnRFY25PYkdFNmpBYjZSNFlGTjN1QmJtMU55RnlvcER2ekdxSTls?=
 =?utf-8?B?Q3FQYmRlc292R0crSVFmelNCRVg4b1kxVUlRQk4rMkR6a1BvSjZtUzRyNUZ5?=
 =?utf-8?B?alZ6V081UFh0cGczWjA3ajRhZWJwY2JuY0IxcHdNQlUyczFMYlF2czVkbzRW?=
 =?utf-8?B?RG1sZDFTR0VCeGw5Q2ZGSCtjdmJYby9Yd21NRDFtamIyR0VlUnpTVUJRWHRJ?=
 =?utf-8?B?TnlBYldYRm96THpLKzEzQkppeEZTRExHMVppNmpOd3lHS25PUnRyWVByWUlF?=
 =?utf-8?B?VU8vLzIwTHhQREdIRU5UWVJBaUY4c0VrODA2b3hla2JhNDR1aFZ1RU9veG5B?=
 =?utf-8?B?ZzFBdWxRVGZJVFlJSnpsNjdHREkyL0pGV2hlNWJEZVZ1dW9DTXFLRk9Mbm9w?=
 =?utf-8?B?TEJQUGIyUUZYYWdrY0NLMmRlaFFZK1Vod2lQbGZHMmhObE9jMys4Y0lrbUJM?=
 =?utf-8?B?UTVyelJBYUU5YlFzSWlMS3FFeUVjVHIrS1VqTVZqQ2JXeWJVSEduMFZsU09T?=
 =?utf-8?B?UVRGQUlTbHdZTWtWUUhJdGZwN2VOLzNIMWpGdEl0MXd6T2dnaDRELzd2eDBz?=
 =?utf-8?B?OFJOQ0xkUW9OUDBjRFNUR20vMGFYTXJFN1IvZDJJd1lNTTJWTW04allwZ0pI?=
 =?utf-8?Q?okSL3K+r+TEgXc5uY1lf4Vb7ehekCx1S/K1nuuq00vh4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WWczbXBUVmd5ZXl5Mll2Ym55bUo0Ky9MMFRoNjR2N1hJR0JQWHpobUJIa05k?=
 =?utf-8?B?ZmYvUUVod1U5TnhCQy9kRDc4clRRdmYzK095TWoxQzdlR0NkalcwU2M0WUdV?=
 =?utf-8?B?NHhWUS9UZGhKY0dUMHltRnl2bFlZL3pra05xcndEeDkvcFpqUlp2Ulk3akov?=
 =?utf-8?B?eXl4RlpSWkpoSE1BWDF5RGhXSnpQTFRBMUc5R0lsMHhhMDJVakYwMU1lR2dS?=
 =?utf-8?B?Q3RrK2ZtR2RtT1BDMTBsazU3dHpQdnEvb3l0d1h6V2ZOS2RXWlM0aTRrWVJE?=
 =?utf-8?B?S2RLM1pNNmVMMTE4dlNGSFBwYURhaHJDNGRlK0pjZGZXcW0zbzBBUHgwMEw0?=
 =?utf-8?B?V2dBU0VuUlpxUDlrcEZyTXZSMlZ0MGEyUzV5K2FSWkcxTEl4T05RSmZKSkpy?=
 =?utf-8?B?dzJCaXVCQjQ0Q1Q4RlFHLzByRm1mMSt6NHJwU2QzeTZaWE8xa1Myekc1SUdF?=
 =?utf-8?B?RHlMVFlzczA5YzBUZFBxckVvSURXaTY3djdKZHIzY2tKencrSFBHdTcrNHow?=
 =?utf-8?B?RGNpYnBOdEZ1ZlptcnBnTXlMUEY5N05vOU1PckxybVMrZGQvR2hpUUhETjhk?=
 =?utf-8?B?SUlxOXVhb2xTd1JDSWZyY3VzY1JhaTJjWDJXckcvbFhMZ054d1NKUjJ0dUR2?=
 =?utf-8?B?NElOaTJFdGJmMlR1aTg3WlFPaCtZdDhrYmpvYnAyODBWbnJBbXJ6cTVITW9v?=
 =?utf-8?B?Q00xWVk3WnUwTXU2R2V0NkxnSU1zM3BpeUZzRmlxWG5Ba2pSeFMwK1ZCK1dS?=
 =?utf-8?B?WUZEbXNKREpLanVEV3Faa21oTTFFS3FyVkQxeGlaWHA5LzBwQU9xMzh6NFNp?=
 =?utf-8?B?ZnB5V09XOW1XSFhiWjRXUEQydkpMRWcrVlhSM1hKeis3b09DWkpXSWU2ZXQ2?=
 =?utf-8?B?RXV1K3dBc1I2T1Y3SWdMeDJxaXVBUDJYTXF0NU1yM2VXdUFmWDRkV2ZyeWQy?=
 =?utf-8?B?Mno0Q3A5Nk05Qkd3OVorVVk0azVJMThrWHloK0JlLzV4K1VZTkV5QTh5SnI2?=
 =?utf-8?B?a2VJck5DM3dlV2xCWlBKWDRmVnhtd3A1Nzc0QUxTOEJaVTltM1dwU2ovNjRa?=
 =?utf-8?B?V2xRNCtkckJ6cTRTMEl4U3V5aGdYTnV3NGJQWkNLV2VOL3FPcjh4cEhhTHVM?=
 =?utf-8?B?WlRxdlV1V1NCcTNFc0xmZVhJOFBsUnBOcWYwRkxlTjdLcDZuemNWY0I2T1lG?=
 =?utf-8?B?TWdWbmR5Z0ZGemZhMVRVZ3AxQWV2SW55ZG4xRGRmaXFKYmNOS1l3dUlTUFZ3?=
 =?utf-8?B?NVdlNzF0Rmw0d3RIUjJ5Mm5vbGlzYkhiMktJb2IrZE9rK3EvYXo4Rzd0SXY4?=
 =?utf-8?B?M29PYzljWit4ZDBub1JIalo0MFJYTVlYZXJxdWE5NVRrWCtiaHlTVE1LZ1hP?=
 =?utf-8?B?L3N0WlYreUVrSlc5MjBxMjdraENlN0hOTG04M3BHdlRSVy9HZ24zTmY1YWxH?=
 =?utf-8?B?M01sQkN1UlI5TTVxK05pWjNFbzdHOFUzc2QvckRJNzZIMDJOWDR4c2RYSmc5?=
 =?utf-8?B?WUFPcTFBaWIzR2xoaFI4cWR1cFJzZC9CVmxNbS9Cb1JvcmdJTnB6SXhxOXda?=
 =?utf-8?B?RHd2RGpKNWh0dEZBd3lJdklJVHFwN2NpOCtzSkJNdTNaUHFlZjJ2SHlXOWov?=
 =?utf-8?B?ck9DbGJlZyt5cjk0VzJVUThkaXFYVzlyUTA3M0dkdjNkRG9wcHBKSmJvUzJJ?=
 =?utf-8?B?d2lmOFVmKzlpUm5GaTFjRlh0V0hJZ09LOWI4UjRjVFlML1c5TWQ0YXNMODFx?=
 =?utf-8?B?cG5TQ0hPOWloSVVBNkQ4anhuZXJmclhHdHlQanpXbTd1SUtITUhId2xhTGZi?=
 =?utf-8?B?QXFYU1plWERWSzJSRXNrams5REN4N0FiaEtsV1hBYkllZTY5TTVsbDlKUjYy?=
 =?utf-8?B?NGFwK3Y2TlJZam5obW4ycVpjajRXeUx2bjQvMmtOMFlTTmRNcjRKQlE1WWk3?=
 =?utf-8?B?RkhIQmh0ZHhhNG5sTENKalJJVGpJUU9MOXVxQlBoaXprQlRScWduallxRW51?=
 =?utf-8?B?dDRDbGpqaE1qUmdpdnBnZWNvcFhGUXF6OVdNUDJSQ2IvU3JFNlkvTVMzeWZS?=
 =?utf-8?B?S3lxV1UzNDNJMWpVY2l3dGtsLzB2MVEyRnN0SUx3NTgwd3lEUXhjQk81MDUx?=
 =?utf-8?B?YmliSEk0cmNIT3ozaE5wZVB0Z1BsVVhvaVBabGR3S2hielMwMmtaU2YyVUx4?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86988a73-dab1-4253-e127-08dc6e12175e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2024 21:18:36.1600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rkX+aVNsR/jh0tUk/PACv1tDkmtGhFWKM/reEEi2NjFQ+Jbz8Un+lqhj/BSZUjTWqwY1+XqslEZqWRV37Fgh/UiMYdOS0qsEM24fFvzRLXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7289
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715030330; x=1746566330;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9rxuurmpiQtZRuuC2gPPwNAoZnuX5gPXa0JomvTuTe8=;
 b=nYWqqFyhOrtNDHw8B4F2nt3MBS5AeyXnsdQbIo3YmaQ4fGwwFM9DtnzP
 Lh5gRYBfOOl6AT5DX+D9a9AblT+KmPM9a8YLoSC+Hu6rsxVJdt6fPMXUL
 IO1wBRQt/Qf9BplaGjMpTumBl4D5x4uJkJM2wYPemzBp03yU6ZK4peKw7
 bedanRCw8V8bRqz71cgRqNwZBqMXIDCEtutfLdo/+OwvmvUWUl757s2K+
 iH7Vvfxv+RR7l6qJSowTf3HBEpD2dPTTv2R+Sxxk14B3cnKr/+lYOfPy9
 vOetP/LEe0ViplSPyrvejTgZ5UaKS4dP6f+xJy9DkfsLAq2gY4VnONBB0
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nYWqqFyh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Non-functional ixgbe driver between Intel
 X553 chipset and Cisco switch via kernel >=6.1 under Debian
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
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/4/2024 6:29 AM, kernel.org-fo5k2w@ycharbi.fr wrote:
> Hi,
> 
>  > I haven't touched the ixgbe driver and hardware in many years, but I'll
> try to see what I can do to help.
> 
> Thank you very much for your reply. I'll answer you point by point.
> I upgraded the Qoton to Debian 13 (testing) with kernel 6.6.15 (amd64) 
> to be even more up to date.
> A quick test with Fedora 40 shows the same problem.
> 
> 

Thanks for the detailed information.

>  > So everything works when connected back to back with the Connectx-3. Ok.
> 
> Yes, exactly. Everything works as expected with the Connectx-3.
> 
> 
>  > To confirm, you use the same cable in both cases?
> 
> Yes, the same cable. I tested two different models:
> - 1 Cisco SFP-H10GB-CU1M (1 mètre)
> - 1 Cisco SFP-H10GB-CU3M (3 mètres)
> 
> I'm only using the SFP-H10GB-CU3M for the rest for convenience.
> 
> 
>  > But on the switch, the link is reported up until we bring the interface
>  > up in ixgbe, and then link drops and stays down indefinitely?
> 
> After initial start-up of the Qotom :
> # Port 10Gbe LEDs are green (please note that the MAC address OID - 
> 20:7c:14 - is registered to Qotom, not Intel).
> ip link show dev eno1
> 7: eno1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN mode 
> DEFAULT group default qlen 1000
>      link/ether 20:7c:14:xx:xx:xx brd ff:ff:ff:ff:ff:ff
>      altname enp11s0f0
> 
> # Cisco (Green LEDs - port mounted)
> show running-config | section interface TenGigabitEthernet1/0/1
> interface TenGigabitEthernet1/0/1
>   no cdp enable
> 
> show interface status | include Te1/0/1
> Te1/0/1   --- Vers Qotom --- connected    trunk        full    10G 
> SFP-10GBase-CX1
> 
> show ip interface brief | include Te1/0/1 | Status
> Interface              IP-Address      OK? Method Status                
> Protocol
> Te1/0/1                unassigned      YES unset up                    up
> 
> The Cisco and Qotom ports are lit and flashing as if they were 
> exchanging ARP or STP traffic. A mirror port on the Cisco's 10Gbe 
> interface, however, shows no frame exchange. I connected a PC to port 
> g1/0/13 with Wireshark for this test.
> 
> monitor session 1 source interface t1/0/1 both
> monitor session 1 destination interface g1/0/13
> 
> Port switch-on test :
> # Starting up the Qotom 10Gbe network interface
> ip link set eno1 up
> [ 1770.476075] pps pps5: new PPS source ptp5
> [ 1770.480784] ixgbe 0000:0b:00.0: registered PHC device on eno1
> [ 1770.575496] ixgbe 0000:0b:00.0 eno1: detected SFP+: 3
> 
> # The ports on both devices switch off immediately.
> # There's no going back:
> ip link set eno1 down
> [ 1831.329797] ixgbe 0000:0b:00.0: removed PHC on eno1
> 
> # The ports are always off on both sides even when unloading the ixgbe 
> core module and plugging/unplugging the Cisco SFP-H10GB-CU3M :
> rmmod ixgbe
> [ 1872.503663] ixgbe 0000:0d:00.1: complete
> [ 1872.547628] ixgbe 0000:0d:00.0: complete
> [ 1872.591645] ixgbe 0000:0b:00.1: complete
> [ 1872.631725] ixgbe 0000:0b:00.0: complete
> 
> A reboot is the only way to restore this port switch-on state.
> On startup, the Cisco switch displays the following logs (the date is 
> not configured):
> Sep 30 14:33:00: %LINK-3-UPDOWN: Interface TenGigabitEthernet1/0/1, 
> changed state to up
> Sep 30 14:33:01: %LINEPROTO-5-UPDOWN: Line protocol on Interface 
> TenGigabitEthernet1/0/1, changed state to up
> 
> 
>  > But if you use the out-of-tree ixgbe driver everything works. Hmm.
> 
> Yes, that's exactly it. The driver on the Intel site works perfectly.
> 
>  > I tried checking the out-of-tree versions to see if there were any
>  > obvious fixes. I didn't find anything. The code between the in-kernel
>  > and out-of-tree is so different that it is hard to track down. At first
>  > I wondered if this might be a regression due to recent changes to
>  > support new hardware, but it appears that v6.1 is from before a lot of
>  > that work went in.
> 
> If it helps, vesalius' post of December 3, 2023 on one of the links in 
> my original post 
> (https://forum.proxmox.com/threads/intel-x553-sfp-ixgbe-no-go-on-pve8.135129/post-612291) 
> reports that the following commit has been suspected as the culprit: 
> https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?h=v6.1.63&id=565736048bd5f9888990569993c6b6bfdf6dcb6d
> 

I'm taking a look at this commit. I see that it was done by someone from
Silicom, and says the following:

> ixgbe: Manual AN-37 for troublesome link partners for X550 SFI
> Some (Juniper MX5) SFP link partners exhibit a disinclination to
> autonegotiate with X550 configured in SFI mode.  This patch enables
> a manual AN-37 restart to work around the problem.

So it appears like its disabling autonegotiation.

> I quote the end of his message:
> "An amazon employee states reverting this commit and recompiling the 
> kernel allows their similar network hardware to use the current in-tree 
> 6.1 ixgbe driver. Otherwise as stated in the VyOS forum thread linked 
> above compiling the linux kernel with the out-of-tree intel ixgbe driver 
> 5.19.6 works too."
> 
> 
>  > 1. The kernel message logs from when you bring up the interface. You can
> get this from dmesg or journalctl -k if you have systemd.
> 
> The kernel returns only the following three lines after a "ip link set 
> eno1 up" :
> mai 04 12:01:21 servyo kernel: pps pps5: new PPS source ptp5
> mai 04 12:01:21 servyo kernel: ixgbe 0000:0b:00.0: registered PHC device 
> on eno1
> mai 04 12:01:21 servyo kernel: ixgbe 0000:0b:00.0 eno1: detected SFP+: 3
> 

The logs show the device coming up and it detects the SFP, but we don't
see a link up status. Ok.

>  > 2. "ethtool eno1" after you bring the interface up to see what it
> reports about link
> 
> ethtool eno1
> Settings for eno1:
>      Supported ports: [ FIBRE ]
>      Supported link modes:   10000baseT/Full
>      Supported pause frame use: Symmetric
>      Supports auto-negotiation: No
>      Supported FEC modes: Not reported
>      Advertised link modes:  10000baseT/Full
>      Advertised pause frame use: Symmetric
>      Advertised auto-negotiation: No
>      Advertised FEC modes: Not reported
>      Speed: Unknown!
>      Duplex: Unknown! (255)
>      Auto-negotiation: off
>      Port: Direct Attach Copper
>      PHYAD: 0
>      Transceiver: internal
>      Supports Wake-on: d
>      Wake-on: d
>          Current message level: 0x00000007 (7)
>                                 drv probe link
>      Link detected: no
> 

No link detected, but it does detect this is a 10GBaseT cable.
Interesting it doesn't report FEC or autonegotiation. Hmm.

> 
>  > 3. "ethtool -S eno1" to see if any other stats are reported that might
> help us isolate whats going on.
> 
> ethtool -S eno1
> NIC statistics:

Snipped the stats. It looks like there wasn't much useful there. No
traffic was sent, and there is only this lsc_int count of 1, which
indicates that a check link status interrupt was fired.. but its only
triggered once.


> 
>  > Do you happen to know if any particular in-kernel driver version worked?
>  > It would help limit the search for regressing commits.
> 
> I can't retrieve the driver version itself via a “modinfo ixgbe” (no 
> field mentions it) but the driver built into Debian 11 kernel 
> 5.10.0-10-amd64 works perfectly. Debian 12's 6.1.76-amd64 and Debian 
> 13's 6.6.15-amd64 are problematic. If you have a method of retrieving 
> more precise information, I'd be delighted to provide it.
> The problem therefore “spread” between the release of Linux >5.10 and >=6.1.
> 

Knowing the kernel is the important part, we don't have specific
versioning of drivers in the kernel anymore.

> On Linux 5.10.0-10, an ethtool returns this (the port works):
> ethtool eno1
> Settings for eno1:
>      Supported ports: [ FIBRE ]
>      Supported link modes:   10000baseT/Full
>      Supported pause frame use: Symmetric
>      Supports auto-negotiation: No
>      Supported FEC modes: Not reported
>      Advertised link modes:  10000baseT/Full
>      Advertised pause frame use: Symmetric
>      Advertised auto-negotiation: No

Interestingly, this does appear to still list autonegotation as disabled.

>      Advertised FEC modes: Not reported
>      Speed: 10000Mb/s
>      Duplex: Full
>      Auto-negotiation: off
>      Port: Direct Attach Copper
>      PHYAD: 0
>      Transceiver: internal
>      Supports Wake-on: d
>      Wake-on: d
>          Current message level: 0x00000007 (7)
>                                 drv probe link
>      Link detected: yes
> 
> 
>  > Ideally, if you could use git bisect on the setup that could
>  > efficiently locate what regressed the behavior.
> 
> I really want to, but I have no idea how to go about it. Can you write 
> me the command lines to satisfy your request?
> 

The steps would require that you build the kernel manually. I can
outline the steps i would take here

1. get the kernel source from git.kernel.org. I place it in $HOME/git/linux
2. switch to v5.10 with 'git switch --detach v5.10'
2. copy the debian 5.10 config file to $HOME/git/linux/.config
3. build kernel with 'make -j24' (adjust -j depending on how much CPU
you want to spend building the kernel)
4. install with 'sudo make -j24 modules_install && sudo make install'
5. reboot and select the v5.10 kernel, double check it works.
6. in $HOME/git/linux run 'git bisect start' to initiate the bisect session.
7. First, label the current v5.10 commit as good with 'git bisect good'
8. Second, label the v6.1 commit as bad with 'git bisect bad v6.1'

This will initiate a bisect session and will checkout the kernel
approximately halfway between v5.10 and v6.1. For each bisection point
it checks, run the following steps:

1. 'make olddefconfig' to update the configuration for this version
2. 'make -j24' to rebuild with the current version
3. 'sudo make -j24 modules_install && sudo make install' to install this
version.
4. reboot into that version and check its behavior.
5. If it works properly then run 'git bisect good'
6. If it works incorrectly, then run 'git bisect bad'

A new commit will be selected. It will pick one between the latest good
point and the closest bad point, essentially honing in towards the
incorrect behavior.

If for any reason a commit can't be built or tested, you can use "git
bisect skip" and it will skip around a bit to find another point that
can be tried.

Its a lot, but it would help us hone in on the exact failure. I think
its ok if you can't do that. I am checking the out-of-tree and upstream
contents around that AN-37 commit.

The upstream implementation of ixgbe_setup_sfi_x550a is:

> static int ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
> {
>         struct ixgbe_mac_info *mac = &hw->mac;
>         u32 reg_val;
>         int status;
> 
>         /* Disable all AN and force speed to 10G Serial. */
>         status = mac->ops.read_iosf_sb_reg(hw,
>                                 IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
>                                 IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         if (status)
>                 return status;
> 
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK;
> 
>         /* Select forced link speed for internal PHY. */
>         switch (*speed) {
>         case IXGBE_LINK_SPEED_10GB_FULL:
>                 reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G;
>                 break;
>         case IXGBE_LINK_SPEED_1GB_FULL:
>                 reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G;
>                 break;
>         default:
>                 /* Other link speeds are not supported by internal PHY. */
>                 return -EINVAL;
>         }
> 
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* change mode enforcement rules to hybrid */
>         (void)mac->ops.read_iosf_sb_reg(hw,
>                         IXGBE_KRM_FLX_TMRS_CTRL_ST31(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         reg_val |= 0x0400;
> 
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_FLX_TMRS_CTRL_ST31(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* manually control the config */
>         (void)mac->ops.read_iosf_sb_reg(hw,
>                         IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         reg_val |= 0x20002240;
> 
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* move the AN base page values */
>         (void)mac->ops.read_iosf_sb_reg(hw,
>                         IXGBE_KRM_PCS_KX_AN(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         reg_val |= 0x1;
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_PCS_KX_AN(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* set the AN37 over CB mode */
>         (void)mac->ops.read_iosf_sb_reg(hw,
>                         IXGBE_KRM_AN_CNTL_4(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         reg_val |= 0x20000000;
> 
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_AN_CNTL_4(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* restart AN manually */
>         (void)mac->ops.read_iosf_sb_reg(hw,
>                         IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         reg_val |= IXGBE_KRM_LINK_CTRL_1_TETH_AN_RESTART;
> 
>         (void)mac->ops.write_iosf_sb_reg(hw,
>                         IXGBE_KRM_LINK_CTRL_1(hw->bus.lan_id),
>                         IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* Toggle port SW reset by AN reset. */
>         status = ixgbe_restart_an_internal_phy_x550em(hw);
> 
>         return status;
> }


The out-of-tree implementation appears to lack that change done by the
silicom folks.

> static s32 ixgbe_setup_sfi_x550a(struct ixgbe_hw *hw, ixgbe_link_speed *speed)
> {
>         struct ixgbe_mac_info *mac = &hw->mac;
>         s32 status;
>         u32 reg_val;
> 
>         /* Disable all AN and force speed to 10G Serial. */
>         status = mac->ops.read_iosf_sb_reg(hw,
>                                 IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
>                                 IXGBE_SB_IOSF_TARGET_KR_PHY, &reg_val);
>         if (status != 0)
>                 return status;
> 
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN;
>         reg_val &= ~IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK;
> 
>         /* Select forced link speed for internal PHY. */
>         switch (*speed) {
>         case IXGBE_LINK_SPEED_10GB_FULL:
>                 reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G;
>                 break;
>         case IXGBE_LINK_SPEED_1GB_FULL:
>                 reg_val |= IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G;
>                 break;
>         default:
>                 /* Other link speeds are not supported by internal PHY. */
>                 return IXGBE_ERR_LINK_SETUP;
>         }
> 
>         status = mac->ops.write_iosf_sb_reg(hw,
>                                 IXGBE_KRM_PMD_FLX_MASK_ST20(hw->bus.lan_id),
>                                 IXGBE_SB_IOSF_TARGET_KR_PHY, reg_val);
> 
>         /* Toggle port SW reset by AN reset. */
>         status = ixgbe_restart_an_internal_phy_x550em(hw);
> 
>         return status;
> }

I suspect those changes must have broken the Cisco switch link behavior.
I unfortunately do not know enough about this hardware or the SFI
configuration to understand why this causes it.

If you don't want to try bisect, I would suggest trying to revert that
commit or simply replace the ixgbe_setup_sfi_x550a function with the one
from out-of-tree here. If you do that, you can rebuild just ixgbe with
"make M=drivers/net/ethernet/intel/ixgbe" and then insert the module
with "insmod drivers/net/ethernet/intel/ixgbe/ixgbe.ko".

It seems likely that this change had unintended side effect which broke
the Cisco switch linking.

I've added Jeff Daly, in the hopes that he could provide more details on
the change.

@Jeff, it seems likely that the change you made at 565736048bd5 ("ixgbe:
Manual AN-37 for troublesome link partners for X550 SFI") is breaking
some other switches. It would help if you could shed some light on this
change as otherwise we might need to revert it and once again break the
setup you fixed.

Thanks,
Jake
