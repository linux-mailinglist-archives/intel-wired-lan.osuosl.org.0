Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17994AEBE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Aug 2024 19:20:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 53CB2808AD;
	Wed,  7 Aug 2024 17:19:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eSuyLWmksL1j; Wed,  7 Aug 2024 17:19:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88197809F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1723051198;
	bh=ICA6YtGlvip91UobSi5Y3dnip0/Y6bZk1sym1Bs4498=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GpHyIMRSnwPuIX6T/AoGf1EQtzex1mvXQJMgERZ/JPIgBBQiVe+K9/AztoIAmsz9Z
	 0Dz/vLZeqZr9F2LwXw0LI42FlJ1rBgrljootBfWS/CazB3XXpFezzxUuV7jGbSD158
	 k8EoZGpTqmL15bwV+asrfv2mSJFeFwlhbIgquUXB0y9dyXHjE6AeJmCUj7DJOVSY1u
	 /7ZDYSDfoNVYbFOzz6a6p8t6sa0E+GQuI51eiR2fCmTyyb8NIRLliRn/JTuBb9oayq
	 2oXO9V/87LuUftj1UMLSmBu/UiqI+snilHbaX0gZcDK0ik4DAVL1DiFfvg9W4XX1f9
	 Z2iApn07td4IQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88197809F6;
	Wed,  7 Aug 2024 17:19:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 26C841BF30E
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:19:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 138BC606EE
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:19:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bVw3pQmupBHY for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Aug 2024 17:19:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F0B2605CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F0B2605CF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F0B2605CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Aug 2024 17:19:54 +0000 (UTC)
X-CSE-ConnectionGUID: ta+Q7us0SfeaZxpJYDtThA==
X-CSE-MsgGUID: qkrEXCNSSM2zAMCdBEYWhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="31770213"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="31770213"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 10:13:51 -0700
X-CSE-ConnectionGUID: LtgXf0txTQq5+MqNqZhOiQ==
X-CSE-MsgGUID: l3QJyRuGSM6RSdk2b5jgHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="61752808"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Aug 2024 10:13:51 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 10:13:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 7 Aug 2024 10:13:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 7 Aug 2024 10:13:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 7 Aug 2024 10:13:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SelU4c/zRTWPRpyb7Wz78NR5wVVlPFMsvTQCSj7ZZ9TVeV5EW0CpIeexremLYzxPgNGoCElu7cEYeqrKQTxx2hnVd+ir4lZXV/hyP1TRQs2QwGIqOY6Afl/6oZHEgMZSECKSyVu1ZokIKMvf/+oKlrVrA3D+Ljswf+Nnw8+NebHUHw7VkuvATT52rgnt8drryrfi6levsHzLi2+pUAFDmcw6l/v2WCEsluAHbA/hc9a0UpUZ22rnmCOxmkEhqUNAUf+Wzpwhj/eX2r5xmXtK8sKp2v1ePnkH3fCDxl97876PHcUKAzW1rSLtq/+nQSug1dPuiS0qLWRuxBeLlkG4wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ICA6YtGlvip91UobSi5Y3dnip0/Y6bZk1sym1Bs4498=;
 b=AmxEwY45n5PhcvmGx9d1hiQLA39ES53lgBPlJmwouOxVluH+lwacI4S3FEsuJ+MzOCXJ9b+yanT2SaT7oO/NawFEhzdW9RFhedQlyZFkaoKvdZ13cB+Yv343xWpmckZn+uel2DZbtuRTP+k94xBhGpvj1L0SuKsWM04kLFApEs6Wxd9hSvYlp/5ITnoLgFRE4cvFTNfoI5IXPk1yAxB50rG1+jDFu0vHR7v4c3gEyWiFqdaBE/SvWNOiHLqGY5E3ZtHooF5Igpdnr5zuesSkWgtBAq68ilX0mxKEqHgKjo9xk1RCz84yO0bmU1/WRu1EzTse/3LXSvGJvLjoWGF4GQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5140.namprd11.prod.outlook.com (2603:10b6:303:9e::21)
 by DM4PR11MB6382.namprd11.prod.outlook.com (2603:10b6:8:be::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.26; Wed, 7 Aug
 2024 17:13:47 +0000
Received: from CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0]) by CO1PR11MB5140.namprd11.prod.outlook.com
 ([fe80::6a5:f5cc:b864:a4c0%7]) with mapi id 15.20.7828.021; Wed, 7 Aug 2024
 17:13:47 +0000
Message-ID: <dcbc7968-4c58-f129-cce0-776fee275390@intel.com>
Date: Wed, 7 Aug 2024 10:13:45 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Alexander Lobakin <aleksander.lobakin@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240801015829.4011051-1-paul.greenwalt@intel.com>
 <c11103ac-5180-4225-90d6-650beb8b8014@intel.com>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <c11103ac-5180-4225-90d6-650beb8b8014@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR03CA0026.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::39) To CO1PR11MB5140.namprd11.prod.outlook.com
 (2603:10b6:303:9e::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5140:EE_|DM4PR11MB6382:EE_
X-MS-Office365-Filtering-Correlation-Id: ee165cd9-3c95-4dce-f062-08dcb7044c6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bENUQ1ZFTzV1Z1Y4SlRNQWZzdkhuL2ZJNUN1eC9rSHZhbTZRdk1vcnM3VGpN?=
 =?utf-8?B?V1FRUGk1VzZ2Vms0ZFpMTThjMjVNZmxraHhSczNmb2NOVnN5ajBJb3N2R3E3?=
 =?utf-8?B?Z25aMy9GeDB1cE5XVEF4OGpPclhIdTF1ZlU4NHJJbis3b2VnbVQ2Wk16Z1JX?=
 =?utf-8?B?TW9ZY3Y3OXd4K1Y2S25SM2xYTEE2OEhlbDNBZStUM3NGK090MkRsenNOamdm?=
 =?utf-8?B?bVhyOHR0bDRQQktLMVlLTlEya3QyTVJYN0YrYlpVNjdqT3pSRXZFNzdpRDNh?=
 =?utf-8?B?QlhOZ2daa0dIamthbWU2TVYvSjBOVG0xUDVCeG1xMFNXWVNkeHhRbkhHdGpJ?=
 =?utf-8?B?Ti9adG9zRWxscnlHbmh1Z0F0aGQ1b1lrRjFWZXFvdDBNRkY1VnQrcWlaakU1?=
 =?utf-8?B?OFRrNUR4S3d1M2FSa1FoOW5wMHk4SWtUR2cxWEkxdVNmRnFUV1ZxeFlidU5u?=
 =?utf-8?B?aVdJV3hRdDAra0dPcEVWMVBWdEpUSFowaTFTNHlaZlNYOWFnWFQrRFV6M04z?=
 =?utf-8?B?ZHRKbEpFOEpOSEpLZmFmM1ZYeStYK2duOS8xT0tLcGl2MUN1ZklRV3VBUWZZ?=
 =?utf-8?B?VVFDV2JkbjJYaU9abUdFUmszVzNQWHVLUE9SQUtTOXdYcW9QNVp5bmNrcUFw?=
 =?utf-8?B?bkxsWS82K3MxcjcvTnRKMjBkdFQvUXQ2S0ZqUG9KWmtMSVpyWmdrNHBPMVpS?=
 =?utf-8?B?V1VWMnZ0cnVhNUhONmYrTXRtNkVIMjZ6RGZJK3E1OWlKNG9NcUhsSmlLQUgr?=
 =?utf-8?B?bWF4b1pvZzRSSnJmbUpJbXdzQkJxVDNlb2NDOGZsOGxsRGhZemZDRGJ5NHFE?=
 =?utf-8?B?YXkrSzlNUmIvNExTODgxZHBpaXFpMHJzKzBWRFNLYXBtRFhzdy9mcG4yenB6?=
 =?utf-8?B?cldnWS9XeWpONnl4cVFodFdJWkJxTDh2QVBlVnVGanhpZ3hLWDlsNzNyd1ZP?=
 =?utf-8?B?TUpOdHh1STRleUx5Y2Fnb3FLZkc0cWRpZEorU20rbU1pemI3TDRnTkxORHRw?=
 =?utf-8?B?eUR6SVhuRjl2T05mT1JCWXhGSXBjaG9LNGlER1lQN3oyd1lKVkZqaklhMG5D?=
 =?utf-8?B?bGdjTlo2QmR1ci84d2hvaWo3QVlpQzBmTm43RXVEeG82Y0JIbUxmclVCNG1k?=
 =?utf-8?B?UnErd0dPRE9DTUtYOGRzL0VMUmZqOGJmTnRGbEpLMmFiR21ZRkoxTE5MTERB?=
 =?utf-8?B?QSsyQUw3YmFrOFM5cGh5WHpaVmx6SHYzdjZjU2plbEE1c2hvTSszcHhFSGFW?=
 =?utf-8?B?MlpEVXMwc3ZMZFhRSEhZZHQrL1VmdGxxUDJQSE5FOWFxT0Rja0xPYmpqbXRx?=
 =?utf-8?B?MmROZENkOWM4Y1pidjVEZzBFcHhueUdrbE5nRE1jT3FxZU5WQXA4UFRFVWFV?=
 =?utf-8?B?NFpiYWpRUE1ZVG1sSmU0Vjc4cm0wMnNQSjdSTUdHZm1hYzVCRFJqOVQvZkg1?=
 =?utf-8?B?ZGxaUVR2cGhyalBaVDV3TURuUCs2QVlGSklGRUs2MjM2UlhFbE42K1Q4T0w1?=
 =?utf-8?B?dEx5S3I1WkpQbFJZTkhvbUU4bzdHR21mYXZ1ZUQ4SU9kSjNudEQyeXN5dWwx?=
 =?utf-8?B?R3ZNYUpCcFdwNk1pckpNY1BWRElZMldvZS9ZV1Qxb3IyaWVuVU9xZlNjNGJ0?=
 =?utf-8?B?U1pSbUg4MkdlOHo2WjBoWkQzbjBNVUJvRkFnLzdTS3k4MGFPM0ZqVTQ0cU8z?=
 =?utf-8?B?WkdYOUE1ZTcyT3pEOEhZclRVRlNyQUtZQjBoZ1dOSjIrckRLS3NMajkxTmxI?=
 =?utf-8?B?d0srV0ZNcFpreFBnT0p0cEJoQmV0a092TG5kSUdUQlgzYXVIaUNMTGNXNFY5?=
 =?utf-8?B?ZWd1UFJJdGxwRFUwSnk0Zz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5140.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1FhUG44bFExQ2h3R1ZNZzRyZzVacEJKWWM4b2VIWDF6Q0dXR3RFeUUvekln?=
 =?utf-8?B?RXowRzNrNldSbWNkenltVmx6d3lsd09DczRUdmNVRXAxb2xUb1hKOXphVmhj?=
 =?utf-8?B?WnRpVUplV0JIc0lFWU1KUkJ6UUFOTXRTb2tqOVlXaEhmUlZ4U1Q3d0preEVx?=
 =?utf-8?B?MjAxTk8waWttYVpGeW9nbEZJREJPRzFGWjRXRDM3aUZ0N0VQc1lXNUZ5MFc1?=
 =?utf-8?B?OGR0OHpIM1hiYkJUa1dsaUVFVXQvMWF3SDRHRlVxdzV1b1BNMzVVSGducVFB?=
 =?utf-8?B?ZWQrK1JuaVl6a0srZ1NhYisvSWFRMFpqdTI5OEd1UlgvK3NnOUcwQ3U0UU11?=
 =?utf-8?B?dFFVVTZWUG9zQlhhd1luQzVFVHAyVW44VkVZZjJEb000djR3QVNHRFMvTHJa?=
 =?utf-8?B?bW14WWtGcHZLeUxxalB5MlMxaWRGYUVaQ3NTN2J3WHd6SXVhbHZ0dFRiajFj?=
 =?utf-8?B?clI2OVVhR3V2RUROa3Bzdnh1Tml2UWhnZmVQcjBoN2NuWnVBVDBkemRCZDlI?=
 =?utf-8?B?VnloQmZ6enFXRGdrK21ZTHZzMmJxOFhpYTFuZURmMlA1aHl1SW9NcDg1d3E0?=
 =?utf-8?B?S2E3Ym85a01welYyKzh5UVV1VzVBRXdpaUZlMmgxRVVqbERBSHAzMlNCR2dU?=
 =?utf-8?B?M2kzYXRiQVJEWm9ZRnF0OTB1RE5FeGhTeTdibjhaUGorWHE4dXRLcjZTRjRv?=
 =?utf-8?B?aFhQeTlsa3dETGt5UVF0WU1Wb21FdXFyZ043Yml6cXdsL1NNdWo0VjJyeXg1?=
 =?utf-8?B?aUFOaXl4UWFJcklRSm5rcFJmcWdEbi9VSHdYUExKTlVKcHRqNGsvek9yVHky?=
 =?utf-8?B?NTlYbDJjRXNYTTl6bWpSVng2bEppYkdNWFIrcThyRG91eWgvZ2dxSWxFUGxr?=
 =?utf-8?B?ZFpLZjBWdG41cW9mQlp1Z2dFY2hDUE5XNXptSVpYMmZqK1RJZUs3emNFYURH?=
 =?utf-8?B?SW5aV2taWDVIcU90NUZPWEJKZFpOSGFsY2dPTlNRRFc5cHdOTFpmRTZWVkZO?=
 =?utf-8?B?NnVwVW5pTURDSzJPbm9FVWFZbSs0bmt5SlQzb0NrWEtlZG10aWNOY0Q2ZGJt?=
 =?utf-8?B?TkxnNERsaWJQWEFQRTZ3UHBtL1VJUVRuUzJGc3ZxdXV2NDQrZWhlVWtyZVhO?=
 =?utf-8?B?cWwwRmlKejFKdnNoYnFWWWE4d1JPVTVwa3lsZkdJZnhvZXFuMUo1TURkZzJO?=
 =?utf-8?B?TmFRUjAvVzFZdUd1S1g4VmhIZ2w5c2Ura0tPWjdXZkM0V0V5WE00RmlRZlNJ?=
 =?utf-8?B?cUc2U0RpYlZieU1hMEhjTll5ZUxPR1p0MEJISnkzVXNWKzVWbUdpdHRwckdh?=
 =?utf-8?B?eFVoajRQbHZObDJhdjBTZ1VDaDdncHpRblVoT3ZrVGtsNytuVnl5UlVHTHY1?=
 =?utf-8?B?SVRLMXdwWGtjNFB5OTloQmgvaHAxalVUVENka1J2d2RJdURlWldxaTgyOHlP?=
 =?utf-8?B?Uk1URFF4NTRNUThZNnRqYytuZGgyRVdTMnBTQWZ4OEhIdDQ5U0hKVmI2K3VP?=
 =?utf-8?B?REtzNThJbkxmTzlSR1BsRHdoVFNzOUJTM29NL1FlSWZoMVBRMHB3NjQxK0wz?=
 =?utf-8?B?Uit0dHI2bDNjN2xWQ2EwL2lpK0lPTmNQaEp2SXZJV3h6bFU1azBRTkNVZTk5?=
 =?utf-8?B?UGxlYURPV0FhaTBheTZVbTV0MGVBNjVNdXB0bmhjbGFFZkM2R284YVl3NWV0?=
 =?utf-8?B?MnNXTmM5bGE1dGxyRyt1V3FZZXRlZ2xpOWhzWHJyQ1U1bjVKUnlkb3ppMDlD?=
 =?utf-8?B?RjBrazhLNzExaVdodUJ5WS8yaHlMdXRwMFg0a3dHamhydE0wTHF0YzJFOU5v?=
 =?utf-8?B?dUVjNHBJOG5IZW5mQUM1WGhmZTlpSENPOHYxZUxMcGZIaTUrWHVUQVZVMnoz?=
 =?utf-8?B?MGc5a1Rjd3ZmN2w2NnQvWHNUTHkveWlyanBZOTFHRVBjN1Y0RE9PUHpWdDNL?=
 =?utf-8?B?SnhzRGNZdmx4NDhFUTlIaEZUWFRSNmlBZTNQY05Sa2NuU3BxV1k4ZXU4R0M0?=
 =?utf-8?B?S0U1bTg0ZVpaVDEza2JLc0t2THBIU1E4Tk4xdC8xUEFFQjFnVG9EUVlscWRz?=
 =?utf-8?B?QTE2bE5kZlNOa0xmVmVBQ1p4QTd3WWxaNXEzY0lSQ2NoOXZlZUg2Nzk0RVV3?=
 =?utf-8?B?UjFPM0tyYXR4bDdkRmNBM2F5Ky8yZThXellpM2xRNTNGTHlNL3NXdVdXODU5?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ee165cd9-3c95-4dce-f062-08dcb7044c6c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5140.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2024 17:13:47.1716 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zXTa3OTvvjizexaj9WFgO84IockqYPqX/x5iTE+C3Ii9Rt24O8l4HfQx1hmYlxSZDOemrXxRV1Zc9PtG1qpQtOcLhj6dC9hM+Zx7fD+G/Nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6382
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723051195; x=1754587195;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=JzIalZnREbPWK72VsdNTEaKCMJVp5ikot4g0ZoEJhNE=;
 b=jR1HOXdJzCj0nQslGy5Wqyw1aL/UQpvvmnOaTwkEDhjT2wTUenurjDOm
 7Iq+f/PrK4vB4q7EUL4F73pMsIiTFNOS9zkN8j2jn/NX7uUg+1OhP8td2
 pZ1MISpszDky2aPfBuHDfQ5emxrVWydInP2DC4SAxo2ESSgp9n0Q0IWo1
 qovjZPHLnpJJ0OnBsiK6yK+40e7EBGBzjIhK5Be8CwDVAvG0tAalPyxdF
 /tkKmR5/zGePRijvaDP4rYZPnGiHw2UiVutZb4HDYSdZZhS0KEpWw6P3P
 F47cLXp21MUKD6C6UVO25taMkIS32GOMixeww3F7L+GF/VJDnaoVwnaHV
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jR1HOXdJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: add E830 HW VF
 mailbox message limit support
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/1/2024 8:56 AM, Alexander Lobakin wrote:
> From: Paul Greenwalt <paul.greenwalt@intel.com>
> Date: Wed, 31 Jul 2024 21:58:29 -0400
> 
>> E830 adds hardware support to prevent the VF from overflowing the PF
>> mailbox with VIRTCHNL messages. E830 will use the hardware feature
>> (ICE_F_MBX_LIMIT) instead of the software solution ice_is_malicious_vf().
>>
>> To prevent a VF from overflowing the PF, the PF sets the number of
>> messages per VF that can be in the PF's mailbox queue
>> (ICE_MBX_OVERFLOW_WATERMARK). When the PF process a message from a VF,
>> the PF decrements the per VF message count using the E830_MBX_VF_DEC_TRIG
>> register.
> 
> Sorry seems like I didn't add netdev/IWL to my review, could you please
> read and address it?
> 

Sorry Olek, but I don't seem to have your feedback. I will read and
address any feedback you have. Thanks

>>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
> 
> Thanks,
> Olek
