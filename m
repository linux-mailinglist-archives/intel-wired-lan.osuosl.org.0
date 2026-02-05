Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wI64G6UohWkk9QMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 00:32:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 58341F85BD
	for <lists+intel-wired-lan@lfdr.de>; Fri, 06 Feb 2026 00:32:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4880842BB;
	Thu,  5 Feb 2026 23:32:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VgdlzIBJDV7v; Thu,  5 Feb 2026 23:32:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A4331842C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770334368;
	bh=xkSbbxXNguA/+zNcbDoN5VhbIQrEFejVRAp5kqJ3Od0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bsMJX9WkpEtv6vNQnQXMyb3Ntew41Yf3ZEX49Ux0Lg+VhS7v5nUX9RLgj4uJwpiK6
	 3+JxI57J58vP6WI+xJJDoV3ec4LOObv56hB6apxeb51P/NOFUC1XjfW+sfirC6zckG
	 nnwzPOGLHb5MoH3J7HPydTqIYBQCM2dLLWym3gin8HBOASVM0Rl5J3nPCD3eMhrJL5
	 JTy2ZhMtlSZ1BvSU5OPCoIJvyuEBd9xrLz8HjJgVC/9bJYrpbQTree1eG1ehxIqi3J
	 Fg96CSxcVoCUCo2XTKw+YugciB1L0StL0ZkczN9hdjH7K4iSGrmMZX+5/2zJCwS7L6
	 gguI6dVmG2PyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4331842C8;
	Thu,  5 Feb 2026 23:32:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F118B173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:32:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DE27F610F5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:32:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7SufCtIeBPbf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 23:32:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0CEF9610E3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CEF9610E3
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CEF9610E3
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 23:32:44 +0000 (UTC)
X-CSE-ConnectionGUID: MVKsZWNsTlCV2+rlRvtd0w==
X-CSE-MsgGUID: TcauyqcBSuKlmZVQ9OSiRw==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="96998501"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="96998501"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:32:44 -0800
X-CSE-ConnectionGUID: YsYSkmDpQgKGFdY1qMgPdg==
X-CSE-MsgGUID: 2ai2whrbT3STPBuTW1abSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="215230641"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 15:32:44 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 15:32:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 5 Feb 2026 15:32:43 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 5 Feb 2026 15:32:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NozPDpxNFyvk5OgMZCc0DWHAjn1EnB58j7pYiNHLuzy0C9iRmnca805BWI/UbYduZ61tjaJx+WqPXQLR7bxhCahgEcZpFKYuljhQjYWg5m77ZwgIPBRpdY03oKsGGyAOFTxTkZW7stlemXZeayocSvtOlmIVHXr/a/edXSdtU7sgirgqRajRygCWNiN2HS7H9Mf6tLCumJ0m8qCeZ3yBILBCPNLDHoEgAJTI4h5U+Zojx8eHeX/a1/cwFrHRhVa+s83wDe3bCcuePo/ubyF+y+xjhkkRYJodbC/0QPCo8DdPH31rm3Ul4fyPcPVu502UVUeZHj5xUOyCkkZ1p+Ao0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xkSbbxXNguA/+zNcbDoN5VhbIQrEFejVRAp5kqJ3Od0=;
 b=Nt/SEDGAmCu2JiIP8ksw8X423BfzvjnNKZtvzBHPyVl+sc84tOfEe+I7Jd/eflJziULI/zbvxu0/IA9/qBdZBc4ikc5uOh5GrOh/8sh+LVPY71T6MIuL6MYjyZa2uhgVzfwFxuSahq8i5j5Xbt+cHxkXn0XiUkUVqJJ1/BHWEIc1MI769c8wVd2b4ikqVp1gCBmFOSPa3DgWuRJO3ikYD5gpyzLVyKFdS/d/3lsYlKwaT4srwoKlzBG7jmopi25JfHsQD8Ohjyn3WHDTwl6ZXeI1v4NCyUkjFdOq9AAurr8KayNtKmKj5WN779285H41+CMtlEVMmsi3degjYMCQtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH7PR11MB8058.namprd11.prod.outlook.com (2603:10b6:510:24d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.14; Thu, 5 Feb
 2026 23:32:39 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9587.013; Thu, 5 Feb 2026
 23:32:39 +0000
Message-ID: <eae106f6-f1b3-4a84-8831-6be0bd573990@intel.com>
Date: Thu, 5 Feb 2026 15:32:38 -0800
User-Agent: Mozilla Thunderbird
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>, Andrew Lunn
 <andrew@lunn.ch>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "dan.carpenter@linaro.org"
 <dan.carpenter@linaro.org>, "horms@kernel.org" <horms@kernel.org>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
References: <20260129175455.174241-1-piotr.kwapulinski@intel.com>
 <60e6bfa6-4267-4d33-9987-24b87c0d0091@lunn.ch>
 <8b146fee-a63e-4e22-a1c1-eae052786e66@intel.com>
 <PH7PR11MB59833D1AE8A3EC0AB6F87901F399A@PH7PR11MB5983.namprd11.prod.outlook.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <PH7PR11MB59833D1AE8A3EC0AB6F87901F399A@PH7PR11MB5983.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0068.namprd04.prod.outlook.com
 (2603:10b6:303:6b::13) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH7PR11MB8058:EE_
X-MS-Office365-Filtering-Correlation-Id: 18dc8750-14ad-424c-df02-08de650ed99e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2taOHF4ck5SdG9yb2NBaElXZzdZbUZXRGR4azhTS3c2VjVxR25pK0ZXcEJN?=
 =?utf-8?B?Tzd2WmE4bzd2eG5DNnpFSEhXY1hNY2JORUp3bTZxMFRoKys4YzVXdmJVWldX?=
 =?utf-8?B?SGNBOXZKeStTQVJTSFZvcmFGTlZSbFl3ejBsQzg4cWt5ZzAwM1FiM1pjVmow?=
 =?utf-8?B?U005MmpKLy9Zd0FNUnR1VEpmRWRLUUxGUG1YWnBBeUVNSWlTS2pWR1FDdTJn?=
 =?utf-8?B?L0NnbHU3WjNaNXY3bnJ3RERSakdVanRGL2dpUE95ZHN5UWVrZitZUzNUS2o0?=
 =?utf-8?B?Z2g4UkZ1R056dDF0dFhENUtVKzNLUk52MXF1K05NdWlGNkQyLytmWlN0SFkw?=
 =?utf-8?B?SE5WVHd1OEpZSzRUYm54am1KVnhFaGRqOC9Rc1ZPWll0OStVa29zN1ZPcGdw?=
 =?utf-8?B?b3JBNERoM053dTIxUW84K084OFF4UE9GRGNRUFV0NXJLT2JDK2JTeW11akZt?=
 =?utf-8?B?RjFkcXV3cmpldTV5M2pyVSt4aWN4eDUrdXNNQVN6LzZsbGwvR1h0SVNsZlp5?=
 =?utf-8?B?Mi95UnRPQnJ0VXc2Y0xNVlo1OGFTS29tZFdveDg4Uk9zL2xjK0VCU2t6aHZy?=
 =?utf-8?B?bVdRU2ozeTBzbmFLVDVteDRwQXRiZ1FSdEhhU2hXNmZhSFRZR0xMV2IxalFy?=
 =?utf-8?B?eHpQalVWMEh5RkhzZ3F5K2w4d0QzejZOR3pjOWJMRjgwa3A0b1hFcEtVd2FI?=
 =?utf-8?B?WFl4aW11enoxU2htb3o1RHV6ZEUwRUVLQXZyT2w1V3JRb3ZPdDJnM1c4M1Rz?=
 =?utf-8?B?WVMrdzBxdTVmalhBT0N2dExGT3lZYzdZNDRZY3JBSDFWNk5zbGtpT3UzNFRG?=
 =?utf-8?B?RTBnVnAwaWU1ZnptYnh6YUpxVHBYalZ6bkd1M0VGMVZjWDFMSzFwSVd2WU9F?=
 =?utf-8?B?b2haa1J5YXhLQzZ6L0o0OXdFYkhZc21uZnlzWktldWFQWFBGMkxTTEY4bE1k?=
 =?utf-8?B?c3BoeUpDSFpYbnIybVlsUHhxYTlxMStqTFNMTlhvbXRieHpqd2xnTmV5dUN2?=
 =?utf-8?B?M2tMd0dvQmxtUHhkYU9zNmlwM2J6WVdoaE1CYUxKenRuQ0FoMklKYW1XVXhW?=
 =?utf-8?B?Vm9uc3Baem9xNVpJWnQ4UGRVZDRSVm1tNm8wMVRYUFVLdlNRWEpWTDI3enE5?=
 =?utf-8?B?RWVPYlFUKzVCWTFGbi9SWTUzYTdGSzFFSmVhVktPdHlZaXROK0JBTWdPc1o5?=
 =?utf-8?B?WXN0M1JYaFBHSWZEV3VEaWF4OFNIZVZCOEFLTjVUVnoyaSs0aEhCU0wxak5q?=
 =?utf-8?B?Rkd5bXBwcXdxZEErZjVmdjRZWDIyWEdTNjVUMm9RcTV0MEduRmZabXhaS1Vr?=
 =?utf-8?B?ZkxUejE4cWU0R1lWeTBsQjdpMDNMekU1WUNUUEJxa2wrVFN1OElxSy95WXJI?=
 =?utf-8?B?aCtyT2d5TXRvUUJnZVgyejNaSlBCTHNDN2R6VHBwYkZsN21rTTRIN3JJQitG?=
 =?utf-8?B?Wkx0Q1MwZ2NyS3AzaUpTMEZNMi9jbmRLZWNDcnJLcW1heG9KaUdOOGE0TVdV?=
 =?utf-8?B?enllSGJaWWh3V3B2V21KdWxjNlI4cjFOU042d3RiUnV4ZFEyTTQyRDM0ZUJz?=
 =?utf-8?B?RE41KzVMSXRWbmJQVHlVM01DNTNmTElSMDVFTVVtbEFFVG4zL0pXQzZyaXJh?=
 =?utf-8?B?TFRnUjJaSFcvRVphSXZ5WGdPV2IzOVdDQ0tYLzlPWUd2VXVyTmdqMUxCUG1J?=
 =?utf-8?B?VDFmVjJ5SzhtdWpjejRtb0J6Q3NrODJEUGpuamxRSHE4cjQ2ekVSelNEMmZF?=
 =?utf-8?B?NWFTekhoNll1bUFybDZSVmdvdk15aTJ5VEFxaEpnZ3dXbXJTa25kY3pkV1VJ?=
 =?utf-8?B?NFJOR3d6c0E3NmdnQlI0VWZjQUl3eHVIQjl0WTU3MjRtMVlCMUZDakdibi9I?=
 =?utf-8?B?T3lpZzNNWjBvQXVpUjNjTFhLRGVvSGhIbUZ6eXZJbmZpWWdKWk0yaXpVd203?=
 =?utf-8?B?MW9RaSsxS004aEJLUDV3a3BmQkJTMGZpT3FKODRHUjJuWmFUVTYzclNLcmpO?=
 =?utf-8?B?c1hJbXBpNTYwaWhiYzRGaGRndEZpQXp4YkxGZEpoeFFvWjJwT2d3Kzh2N1J2?=
 =?utf-8?B?bmxnWDVqOUlzMHMya1YrRzZSTHJtS1V0MHJzeSszaGxieUtwZUZtNkk5ak05?=
 =?utf-8?Q?sr+4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ektlc2tjSFdEVk5IRDYrcDVwejJkd1ErbTdIRU93WFFZZTdyaE5wQ254TjBM?=
 =?utf-8?B?NTVKYmRVYjVmWlltcU11bVlFLzJ5NHJteXgrMmYrNW81NUJVOHhDbFkycm9r?=
 =?utf-8?B?MjZHVVhVQ0VBem41WTFyd1VmRVBtUHBjUkpORy9LZ3J4WE1EUXNaM1BMOUEz?=
 =?utf-8?B?MlVVRkl2WDBxYWxFK1g0ZWdHUC9vcmlHVDI0d05YZUJVQmFNN3Bla2RtdWtH?=
 =?utf-8?B?SGpET2lmRmE5U3BXTG93MFNhd2xhdHZhUjQ2Mkk5bVpsaE1SNldvZUVtV1Rm?=
 =?utf-8?B?WUIwaGR6dUxoaEliZWR5M3RvZkQzczFVZWFPTEtaa3dQRWFnSTBGeU8yNGtl?=
 =?utf-8?B?ZFNkWWN2YUhtdlpPK1JlMjJhd24rR2NVdXlvVG16Si9XSmZvalVjYlRPaVRt?=
 =?utf-8?B?Vk5Fcm1LQ0VvN0ViZE1sOExMV2RiYVU4Q1o4cTZOQ3JuMUFmbGthakZDNHQy?=
 =?utf-8?B?NkNUSHZLMDFxWnNydXNzWDZ2emlRY1pEN3ZidDAyT0RoTjI4RXRRODFqYVVQ?=
 =?utf-8?B?MWdYV3lFcGY5blNsNGg2eG1lTnhpYWMzNkluai83c29IZCtHanAvMXZQQTVm?=
 =?utf-8?B?TzUrbVBINlE5R2I4SnY2MUsxbzFlR2hoVEU0dXdGN1haOHNNWEhsd09lSFJO?=
 =?utf-8?B?TUVzbFZsRkMrVkovQzV1M2J4OW12bnU2TEtlY251RWNRaGtONjhtOFp3N3lu?=
 =?utf-8?B?eEk5RGtrc3l6Tmo5eWFpeXJmZnRIeFd6RFZjRmFPcE5PNk9xcXJ2UjM5R05B?=
 =?utf-8?B?a2F2Z01JZkNPYmJlQmNxY2doSko2U1VFVmVkTHc0YzlBUEtVV0dYZjlPNkZI?=
 =?utf-8?B?cFZLV3RoVXNMRzU2UUpOMWJGcGluY0ZDYk5KZ0w2UE9BSWc3cE1QMGtnWXFu?=
 =?utf-8?B?d2xmZkcvYVlCYmxrbVFoSW5PWFZEWlYxTnE0VTFTRnJCRDJJWWorZUtxOHlm?=
 =?utf-8?B?L1hER1gzZGh1RWlVb2lZWGlwaW1SY0NwdUZxUEdhL09GZThZb3BaQmkxUjRR?=
 =?utf-8?B?VVo5NHU2ZzlwV2pqbUlKeUNiZ0dZQmc1UEpGOVhnTUlpM3E5WFdsNCt3K0FD?=
 =?utf-8?B?dVZ4czZYRHRwRDdwdm5QL2c4RXp1b09oT0RxWGwvMTR3SUVYbk96VEZwMks1?=
 =?utf-8?B?RHFmY1Y4N3JKdEQ1Qk1JYzdVd1JFNm1lb09BU0xMOUdZTXFPdm5VbWN1VHlS?=
 =?utf-8?B?cHRKVjdpNFZVSGQvQ0thb0l1OTJ1L3N0Rm9WSjhkOXlubjl6TkR0UTE3S1Rw?=
 =?utf-8?B?ZC9mOEZ1M211U2N2QjNXRlFMRjQzSzJFVGsvMlR0c05DaWxGNldqcTZyYWl3?=
 =?utf-8?B?dU0zQmljYWUrWnJGQkZHL3FBdVZYWk9YcWkvTU02SGFwS2Jick44TTMvZ2pO?=
 =?utf-8?B?RFlQZXpsZExTdFIvTmJUcVdIY01sSXdlVks1RW50dm5SWTg0azhOWFlJd0xo?=
 =?utf-8?B?RC9JRGRzOGEveFZLUDIyNk0wRW5SbXdBRFFhOGdvTmtGMk16Nk1xQTRyd0lU?=
 =?utf-8?B?Z0UvMGhEQS9SdEtXZjRSZG40YWNOaUwvQUVYVWRwS1J5RlVXdVYrMksreHlJ?=
 =?utf-8?B?NllsRG5xTmdNTzdXZk9PandvUFZqRDZFdVdNWnkxNG0wSlJHcXRaWlhzc25G?=
 =?utf-8?B?YVhSTEYxS0pUNzc4bmRKWVE3VzRtK0g3endKQ1RTeTBZdUxSRTJuZVh6RnF5?=
 =?utf-8?B?TjlxUkZuV3I3aGd0RWRzL1JRVm82c0czZmRtbEVxYjU5ZG95MmkzVjYrYjZN?=
 =?utf-8?B?RHZMWGdXR0wrbmRFM1orRENGQTczR3BtQkl3SHBpWmJXREdDbmdFY0lEbk02?=
 =?utf-8?B?MEs3anNrcUQ1cjd0bnlXNmFiWnBVMzE1bkZzQ1pCbWlHYi85OTFEWk42MkdM?=
 =?utf-8?B?Yyt2czRaVHEyR1Q2cTJqeVNnc0lOSTFWUFhreHoxbWRZc242MS83WXVXSFJX?=
 =?utf-8?B?aXQ1dzNDQ2E3VUJsYWc4czRxT1BFVEp4amk5Y1RISEh0dkx5L1ppZGdzVDJY?=
 =?utf-8?B?VlFJK0g5eTlsTUw2cjdXTFNvTElORG9CSGJmUHA0ZHpLNUtOQnhxdXR2SXI4?=
 =?utf-8?B?ajFJWVFPWVpVa3BTdHR2VUpjUWptTk9zeFZKTlgrSjc2T2ZtN3NXV2oyNUt5?=
 =?utf-8?B?NTdSbVJ6TmljeXhkQWdMNFEydVR3QnhiS1c0aTgzaXoyUXBoTjBTQ1Z6UTVV?=
 =?utf-8?B?THRLWi9FdnFRb2FCbUpWUmt5Wnh0UkVNMTZKV0RUWFQ2NnlqbVV1MUVjbnZV?=
 =?utf-8?B?MDdzcTJ2dURMenFlaDN4T1duYXBOWFhXZXVKMEYwTFkrcndTdGhEQzBXU0N2?=
 =?utf-8?B?dVNUTWdWTlpaM2tEQVFiM2crZmpoR3U2Zk1KVFFnZm5iYjhUVWRidz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18dc8750-14ad-424c-df02-08de650ed99e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2026 23:32:39.0022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PQLZvMyrfIV5Lbu+vQnUmTUyvRxhs/wVM1AjXFoeEqzktiJxaqWG3GAHRP0GwRw9Po4qALLhM6R+BIQtfK1Yf7LJKN04CEEjKYzW2CoCNH0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8058
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770334365; x=1801870365;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=evKiRMZ4A7ob53z9IS+dILTMJ5Xg9Ms4ci2dhbmduh4=;
 b=OsMMzsgl+A3URSUzn+u/wWb7k4OB7eb9eKpmM87RJO5EhSnSd9Q3/jiC
 ylUvCckk89BjHz6xVjF51MHpycNStHh23WSYyCEqv5//ddo1oOuDJJPYJ
 fQrUDjEXXKbN5qvAz0XyWew9bIOQ3utO4Z9HSgyYCWJ8XDvFdObplfmFL
 qDvAJt62QGUDp1iNSSzXECK7alzfArDnRzZwWT1XJla4BYuAgunvf8vVH
 yhN0wW9kLOrgF5Ln+bfvm/Xt3yYqobwn0SfwI8LBK8b+MPV1fUws2fNdI
 fuCuzWRpFypGTebRgPSDEON1j37Q4yYA1sca8eVfh7q58JfGaWtEdop1X
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OsMMzsgl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove
 redundant assignment
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:piotr.kwapulinski@intel.com,m:andrew@lunn.ch,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:horms@kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 58341F85BD
X-Rspamd-Action: no action



On 2/5/2026 12:35 AM, Kwapulinski, Piotr wrote:
>> -----Original Message-----
>> From: Keller, Jacob E <jacob.e.keller@intel.com>
>> Sent: Thursday, January 29, 2026 7:11 PM
>> To: Andrew Lunn <andrew@lunn.ch>; Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
>> Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; dan.carpenter@linaro.org; horms@kernel.org; pmenzel@molgen.mpg.de
>> Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ixgbe: e610: remove redundant assignment
>>
>> I actually don't know which is "correct", as I don't really understand what the register interface expects, and how it will get interpreted by the firmware...
>>
>> Maybe the byteswap of each 4-byte block is right? but I'm really uncertain now...
>>
>> Presumably it expects flags first and then opcode? we're writing it that way now on a LE system.. But on a BE system thats going to be byteswapped before going into the register.. so our 4byte chunk would end up potentially reversing the flags and opcode w.r.t what the firmware sees??
>>
>> Hmm.....
> I'll work out the solution. Meanwhile, possibly it's good idea to take this patch since this code is unnecessary regardless of the final outcome.
> Thanks,
> Piotr
> 

Makes sense to me.

Thanks,
Jake

> [...]

