Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D1CA6A518
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Mar 2025 12:39:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 58031828A5;
	Thu, 20 Mar 2025 11:39:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z7rcwE9C70tG; Thu, 20 Mar 2025 11:39:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 618D98238B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742470788;
	bh=FADpOiaMuQYZd6HwCo1mEAGMaPebRKTh29o8A4RNI0s=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ij0iOM0LGx9ubBpVWSucVJbmB8kMXcSnFXJMKxboujPpPc7XMGKomov3zTAzXL+V1
	 TjtipKrRq9eJ/g1y0aa1jdec9ZZjmoFScvQuMgx06Dt7Ry0Ug+zWTpdCR50bSqp61W
	 RnsfgLUr7XybtdVTwMYGyscD2GS9YRBGwqI1oK7RAjRJSvbRXmprYqT3WMapUXSX8o
	 9KA8RVf1034f9ZOQn3SqkJ0uOPBaoYslT2Lv1ELCI/KThSXp18TyUA3ughY/h3t6w2
	 iAduC4NZHfJG3R4xCCfIoH/JPbOj75JYFTN3oo3w/SjWrgtltuxqo0/QNAO/3e7mZ8
	 mNzGTRmEhsbAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 618D98238B;
	Thu, 20 Mar 2025 11:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 93CE41A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:39:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 826F441375
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:39:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4uWvl3aqOcYd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Mar 2025 11:39:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8BA9C41377
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA9C41377
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BA9C41377
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Mar 2025 11:39:44 +0000 (UTC)
X-CSE-ConnectionGUID: Ltrk/xD6Qwe9TFgI2j4a3w==
X-CSE-MsgGUID: KXWfIuBMTw+kVavGsL5LKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11378"; a="42941459"
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="42941459"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 04:39:43 -0700
X-CSE-ConnectionGUID: QNT7/vuVT0CrVuIb/i5Rcw==
X-CSE-MsgGUID: LDraH9soRmuyag03WZRGhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,261,1736841600"; d="scan'208";a="153961014"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2025 04:39:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 20 Mar 2025 04:39:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 20 Mar 2025 04:39:42 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 20 Mar 2025 04:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JmKEQjPku4wtGy5VGilTy0xy2E2GYJhfcDWyjQea9w5O1i8/I0TrX5bJ9YcaVpe3jYrtbpMcRLalmY2l65a5QVx2s28g6LMp3bZQoWfbpP+bM4Fju5pP5+HiOmc/CcZAyorznhu+naQRuq9yQpnPsKcYufV193eCa9I9ZVBb76CPJGGIAJeu74ENjt5bffqPqphDgoGmYZrf/Z920RmDkzgDu6cNZBeunCizM3c7iYBL6b89uEcYHuqWSLw6Hq3fHTiPOCO58UlUX5Zg/YQUAk6kGTFxuIWbmY7oM+VSccx9O7xg9b1mziubmrlCLH5SKzVIIEOTNipEz7Al7AdpSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FADpOiaMuQYZd6HwCo1mEAGMaPebRKTh29o8A4RNI0s=;
 b=x6ZC+Hu5XRW2Xu4dSj+GwthJ3/Fo2qY2CV+/G5wsUCTUxB5GTfZjCSaQbyF6pTsoOd3uJ/iylAVN6HOIBR2fBiN2HfJAOoWq6GQqODSMUjEH/d2gLNmuJtAWuyi0yrw3Q78MDeY5aQzcuP7Q6YMMLUmF+CNej9pGUd2Lmb3+DCIJFMu4F9WWZ2OgRELAuoEfzM7sUD526Bh0OuP+CKvwn70sbyvVdkq8XFmsvXNj2T2/FvuJQ9ymuA8401n0MmZ9P7HoprT6WkjN4donLSd+CaRnBEpKcR7dxMi9g58SNJ/TJ5g5zaaSW3ILhn754Iknvk6HysJX5iQl7AUSzkv9aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by SA2PR11MB5162.namprd11.prod.outlook.com (2603:10b6:806:114::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.35; Thu, 20 Mar
 2025 11:39:00 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%7]) with mapi id 15.20.8534.034; Thu, 20 Mar 2025
 11:38:59 +0000
Message-ID: <263544ed-89cb-96df-dad8-af7e3c5a9e3e@intel.com>
Date: Thu, 20 Mar 2025 13:38:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
To: Vitaly Lifshits <vitaly.lifshits@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250313140556.1064965-1-vitaly.lifshits@intel.com>
Content-Language: en-US
From: Avigail Dahan <Avigailx.dahan@intel.com>
In-Reply-To: <20250313140556.1064965-1-vitaly.lifshits@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|SA2PR11MB5162:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e722ad4-b6d5-42b3-e970-08dd67a3ce17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0tqMjRmUmlNWkdKZmVYMGs2NkRHak1YMWN4bkdma2hTcGZFVGdUV0lUR0x3?=
 =?utf-8?B?Tks1cDN5dW5vMHFXYUVaK0c1K1d6MVBqazl3TWV3aENoK0t5aG1uU1ludnBk?=
 =?utf-8?B?RG5RV0w3VzJ5OXpCbnJ5NTkrdklDWXlyRktQS29QdDF4Y1l2THNlR2lxUG9m?=
 =?utf-8?B?bGtJakhZNytsL0V6VXlTYlVWVHZBQWVBVjBmUEJ6ZkNQU1RqQXAzajA0VjJx?=
 =?utf-8?B?UHhLWVlqMkhLUjJHVVB0SG5qZ3M1cUVqeTlOVUxmMSs4TE9oUXBxT3cwOWJW?=
 =?utf-8?B?MlZ2anluL25jbWtFWllpdXdOM0hiYTY2TDRTTjBRdmVYY0xsU01rZlVCeXhT?=
 =?utf-8?B?UWNydFIyVTllZzlNYkh3WmFBdXJzNkFJVVpHNFNUZ1NVUE5GUEYwU21WVEkx?=
 =?utf-8?B?OFFxMnVzMzByT2UxRENObHpKWm5qL281TzZQM3NhMExYR3ZXVGtHYVpqSkRq?=
 =?utf-8?B?eVFTUTQycDhSL3VSMlFHRHVGbFE2VlpEOWlld3hycFdMOVZ6MDNtbTc0cFlI?=
 =?utf-8?B?ZmVLbUs1ZHFEc014cW5xOUZHMDk2MUp0UFljekJHdkd6eEVscjE0VEt1UjZN?=
 =?utf-8?B?VVh4YUFZYVlIbEVtNS9NVjVSSWhmN1BmY1NEVU5LZ3RRRTdyRWxSUElXSkpM?=
 =?utf-8?B?WVVGeTVXZ3pHMzFXUDJWRCtoSmV2RjRVUllCeFB0MFZ6YitYRGNwNnJGV3J5?=
 =?utf-8?B?eVZUekw0SXUwZEJzbVBoM1NGcm9GMVNLZStlQ2VzOEhOWnNvekFJRVIxZTZR?=
 =?utf-8?B?ZzR3ajI4Zzc3SWMyMEU2UHM5YUxLMEZzNVAwS1U1elVHR01YdzVWSGRkaFBQ?=
 =?utf-8?B?Zk9KY3lpOEdNa29neWFEMEpVOEk2djZxNUR5Ykc5QkdoSkhRWkdkQmM1N2Jp?=
 =?utf-8?B?eG5BbkFxVnhLL3FMTWliZmVrWXVLTUM5M2JoaXpmSkpmRWwrS2FhL0tjWUtv?=
 =?utf-8?B?OU5pTFZvb3lWQXNFTlFHbVQxMDVjUjRibEdER0wvZjkzZWE1RnJDeE5uZHM3?=
 =?utf-8?B?UktrazZzd014NUpFb2txN3haSWhjR3VoRGpDWWsyNVB1NmpuMndIeHczUG5G?=
 =?utf-8?B?VWFoV2hrZCtwS1dmM2IxblhHNzlJUU5nbW5vTXRSTjRxSm5OcnhleVoxVDUy?=
 =?utf-8?B?OWxLUy9sYTJvQ2trbDRKQ3hEZ0pOS3VlTWI1aUNNVlMvRnhHSUVIUzhhSU9i?=
 =?utf-8?B?emo4aVZGYTB3QlRhdEl2cExBTE1IYUtTZ0IxRWg1Z1NnSitJRTJvaFhaVFVz?=
 =?utf-8?B?MkEranExQ1hPT3VTYzhEQ2xLR2pjUWlqZjJSSUdRak1nMXMvQ2FEWTFEUUc5?=
 =?utf-8?B?emhTMFpsUHk2V3AvMkNVWlQ2NkJUazY4Q1l0enV0T3lYdy9ENjM0TVJORGNj?=
 =?utf-8?B?andVN2pKQ1lFZHFsTzM2clNvQjYxS0RPT3ZkUGlBZ240dUs0MDdmbG04RzNM?=
 =?utf-8?B?MnphaWNUb0lNNDAyS28reWtyZFdyQjBLK3p6cy9QaitBK2Q4ZWFsL1BwSzRS?=
 =?utf-8?B?bEdLUHpqeUg4ZDlBL1hsTHpGUzBkc0dsV3doRUI3bzRHVDFab0pEOW9LMGF3?=
 =?utf-8?B?L3pINER4LzFnZVh3RWdURGVuSDBHa3gydVlmZjd5a3lxUkF0L3JnRURmVkZ0?=
 =?utf-8?B?NERrb3REeW8wOTJqWFRaSmI1NXEreTZaQ2w1ZFhkalQzeWM4ZzVnWGpBbTk0?=
 =?utf-8?B?NVJFbG9aMEcxOEo0WFdMZmR5cFBBTWNNdE1GRHA2bEF5d0diWHBpSHBuaG5B?=
 =?utf-8?B?bHhhY3B2Ykhjd0tBTHZMTS9MQWppY09kNi9WVWk5dFRLbHZoaS9BQW9DeXds?=
 =?utf-8?B?YWM2ZE1SdkdSSzM0RHpBMXlFNHNDQkNYYzFtM0wyaURjTURKNW5rcGdqV0xZ?=
 =?utf-8?Q?1Hvo4P4/YEcuT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUtRY1NFbHQ4NlZwK2pwVm9wYzB5ZW5NcTFXZWVZY3Judlc4S3Rqbk5tYU11?=
 =?utf-8?B?anZOZmpyRzN3cDZvR2RuS3NTZmxEMnRnTFNUbjNFTzZEMHpjNkpNWlNnV0Nt?=
 =?utf-8?B?WFpWRk5IU0kyVnREdjFkY3JycTFlZ2JmNFhvZFRLL3BlZHphTFR4V3djbnlD?=
 =?utf-8?B?WWF1NVVqcStaWkFQbnBmN3ZJdjhZcU1Pa2tlTmFacW9pNkFtU0kvSXo2eVFC?=
 =?utf-8?B?enB5VXdZbE5aSnFVRGxCYmRPb2dWK3JRSEs1ZW9GVzV0VFBaWHU0WG5qYUtC?=
 =?utf-8?B?ZWJrUERtZ0g2ZXUza1lMeENqWDdXRnJvbkVtRTE1aldCL1N3RUlONHhGei9q?=
 =?utf-8?B?eUdReUo4S0RyMnpFbUdTb2hMUTRtWTQ0M295ZHV0STBRRS9nY3FKSlJ5TmpC?=
 =?utf-8?B?YWpFbitrSEsxSkhyOUNZTHRFMncvdG5SNWM2SjRhdkEwQ25LbzVmUWZtUThC?=
 =?utf-8?B?WER5SW0zZEZPL01uTndocFk3MkR6S3dCYjZJRTNHUEwreDZpRm95S3o2UEZi?=
 =?utf-8?B?R1hNaGs5czhEZjdlY2RmZGNPTTZDQmtXdEJWU2JGeTRFN0Z5MUN4dTV5d1Z3?=
 =?utf-8?B?ZnJUc1B2Mm1TbVV5REZocUxkUzB0Y2RTVm84L0o3ak9CM3RJbWRuelBSYVV5?=
 =?utf-8?B?Q2t6L0VpUEtlcDYxL0w4ZWdtSXpaV1M5dTZqNzZVaUp2SVczUlBRd2tSeTJy?=
 =?utf-8?B?NkZ1SVhyRTBDaERCZENlSGt2VHg1b3dlWXp0aE4xZytzc3Excy9sZnppUHpN?=
 =?utf-8?B?VmRKTTZDa0dHbWpFZHFPeUVreDhseHZKZ3RYeDhud09lc0JRcXhiUC8vTzE4?=
 =?utf-8?B?WkRnRlRiellkNzhTV2Vzd01sRHdaWFFoS09ZWXI4WUVrRHA0azBRRFZ1THNo?=
 =?utf-8?B?Sk5LRzV1VVFFd1VYVDk5S2FrNU9qcm8wLytROExFQVRQNFZNQ0E1VXhLbXdI?=
 =?utf-8?B?YjR2UHpsQ05Od1BGa01HRll2SlYwRW5lOU9hODRzTmJ4ekwyOWEzU1UrNnBj?=
 =?utf-8?B?QXV2YTRaUTM1OENocks5eUtwZEJyeVBrR1A4SmUxNHNhUEs1MVVhL2gybGpr?=
 =?utf-8?B?cGdPUGJ0Q0JoWjVNSUVqU2JSSHBOTmVrcnZVQlJGdWtpeU9vSW96aXRtWWR1?=
 =?utf-8?B?dENlb3VWNWVVOGdFYWRZc2dTRFloOVpvaUFTc0ZsVnBVN1ZNWkpZTkpTQmx4?=
 =?utf-8?B?VFRENDBrVE0rSGJMYTI5T0tLeUhXeGxzSjdCb2tkSHNkZW8xcGdRMXBOWDhP?=
 =?utf-8?B?bWRqK0RCMGVQWE1tS3p3TGw4ODA4b1pSTDV4ejJPaVpKbkhEK0JQYUFlb2lF?=
 =?utf-8?B?V1VKbVlPVmFKWmN1L0tjRmtGOHVMZXUwd2RJczVsSFVTN24yZjIrOEozS2E5?=
 =?utf-8?B?QmRvMlBLM210U2pXQ0VoS09jQ3BtNHNmOFZLeGRvMU1YWm5wZ09yY2pEeWM4?=
 =?utf-8?B?eFUwcjROc09CWjJpeDlkVHhNcHZTTEdDWVF5MjhvRU1PWHRHZ1VCV0dCSGZW?=
 =?utf-8?B?VkVqZkhPMHF5U29oZ01XUHdveHhwdUh1MHFWdmZJOHB6cDdwZmRpaWI5M1Ux?=
 =?utf-8?B?SkU2Tmp5SHRUMmU3YlZnUnY5eXlzOVhJOVhJUTRIeVNqRzVhYVpQQjFqQ1NP?=
 =?utf-8?B?bEQ2SE5nMitMNU1jOVd4bnlhQUNOdVByT2RHZVBGVzArWk1XVmhNczVpKy9x?=
 =?utf-8?B?M1dseVhYcWRIRDNPWloyM3ZlK01kWVFIb1lBSnhKd1I0SWpmTitPOWs2S3B5?=
 =?utf-8?B?Q1hXamdwVHZ4am9GZnRsYm9kNWlxbUdmS2QyYk5FWDArUFk2NkRqSXYvTk5S?=
 =?utf-8?B?NjVveFZtUTV2R0xMaHpkaXpXdExqTzRldkVnOUJINk5tQkRUTUhQVm81MDdM?=
 =?utf-8?B?czdmZzExS01IeDQzQzZKN2txMU90UWs0SDlJYy9GMDR6U0pWZkVacWVWSHVl?=
 =?utf-8?B?SGJ1ZnhqcFVFMnlIZXN1MHpJbnNYMmovUU1hYW5sNlJ4K1J6NGFrR2gvMUFr?=
 =?utf-8?B?V2lseGlFSjFGUnZPMGd3VE1YdzRyNndpbTVwcTZGbkl4cER4bzkzK2J3QmlT?=
 =?utf-8?B?dThWbS9tcDNGMG5ZRWpsTXVzVXh1aEVqb2N4cDlrT3hGZmFZajhxMjRsOGln?=
 =?utf-8?B?S1lVc213VEM2eERhN3duYVBWYXVyVU9HWWJKdDJNL2JqYkdoVHlvaDZacTFU?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e722ad4-b6d5-42b3-e970-08dd67a3ce17
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2025 11:38:59.5638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m2QbWq+ZLOAKb+LJgwzsw7+G76eNNtPDBPk5pI7eNEJwt+P6nXIFVy7G7bWlsScXPsIok4VrnBODM5lwFiiJPCpl+ZkndAeEieI+HVHTutk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5162
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742470785; x=1774006785;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5x+rV9387BhxAIORoALwUxsGVz6Sci4pmwoVLz8iHGU=;
 b=e0ZnmbHk262B3UP2GppeX0lDgYTmGqZ5r5HabQV6jwSa/2Q4AeY/IXJY
 b/9SjaPYz9bJ7v9Y22nZqhS+b/xAgzMxLyXp3n6z3CfbE+9e1CTncdtEN
 l/FqJpFwit0i+DrSPowhJ7UemuwdXmxdLPrREUVaxUHg1XChE3bqG8Gey
 NkgJUp4UgUe/X7AWJowmCAQkDWwyQgad2cZRn6TovcFb8WsCOQDzluEiU
 GWcMedQIl7ObqDjQ/ziwKRvZ96LY/2K7JwNl0cW/sRrntH7fT1GL9jVOX
 YrHLgqA+urfMdpacl2EMML/WR7WNIxa70/5Gpg9mIuzMqSRevwNFJ5Zge
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=e0ZnmbHk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v4 1/1] e1000e: change k1
 configuration on MTP and later platforms
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



On 13/03/2025 16:05, Vitaly Lifshits wrote:
> Starting from Meteor Lake, the Kumeran interface between the integrated
> MAC and the I219 PHY works at a different frequency. This causes sporadic
> MDI errors when accessing the PHY, and in rare circumstances could lead
> to packet corruption.
> 
> To overcome this, introduce minor changes to the Kumeran idle
> state (K1) parameters during device initialization. Hardware reset
> reverts this configuration, therefore it needs to be applied in a few
> places.
> 
> Fixes: cc23f4f0b6b9 ("e1000e: Add support for Meteor Lake")
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> ---
> v4: fix a typo
> v3: refactor code to avoid edge case errors
> v2: address community comments
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/defines.h |  3 +
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 80 +++++++++++++++++++--
>   drivers/net/ethernet/intel/e1000e/ich8lan.h |  4 ++
>   3 files changed, 82 insertions(+), 5 deletions(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
