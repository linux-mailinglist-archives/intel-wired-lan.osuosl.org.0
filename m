Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED7D93B4AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 18:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 742F540DCF;
	Wed, 24 Jul 2024 16:14:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fpKjHI0Le54S; Wed, 24 Jul 2024 16:14:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1977C40DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721837694;
	bh=VscnZOomMz+cv7Lu9xEE2ydyJNfo6nGkvcRfG6vbA3E=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8CzcjqCfku8zqIjtwUVxd6qngTEhGT22FlaqZUeZrvFkJZfKQWDuhfYNRA8SItW2K
	 rCHxAC41eqNFEF+WzaIF113U1AhwYwKCF3BSRPOkgpdVAH44Gplick4Zj5nBWxsnuv
	 XeoG1vC5BY5fvlN9dIMjttU8sE84reNZM2yCdAg0q94oVpepeFli9XVEFaYuFura5N
	 HmdoYYT5dWgQqlyUqEHig+W+aufRVxoLjZCe4FUYFM3pbDZr29obpH2vDgPPUvgEwm
	 fUXSi7Id3b7/BrLS3Crkc+5oG0EsRgcQTi+hNGkgw6fBaz0zspvY7iZcwmo7bcmNSK
	 73egad+IltdTw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1977C40DD0;
	Wed, 24 Jul 2024 16:14:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 825C91BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:14:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6EC24606B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:14:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hvq5ZASK8sjl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jul 2024 16:14:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6F75760622
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F75760622
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F75760622
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jul 2024 16:14:50 +0000 (UTC)
X-CSE-ConnectionGUID: euG4mrOlTYuiS3X70TIIdA==
X-CSE-MsgGUID: V/cghBIVRFie9dHtKR5ehw==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30149452"
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="30149452"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 09:14:37 -0700
X-CSE-ConnectionGUID: cyJbLmDNSDGYh2buiHYvbA==
X-CSE-MsgGUID: OEEOwc7ETRWmujNTBsSwTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,233,1716274800"; d="scan'208";a="52505486"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 09:14:35 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 09:14:34 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 09:14:34 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 09:14:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZAWEOLDefXQYEGTeKHuJDYiQtH4KfQLtZBtFPJNN8WOoQGpRDKBfLm/miXkDmSefq1V67Z9iF5cHDMkCD3MxvYAM2rAKcU/JMe7CfWsATBH299cU0wxCqAWykl24k7tGCTdc5n+4beCdyBWhmUFGsusbRCfHMrWXbZD71VGWneclTQoBSN0Wb1MB49AY7TNxo5HWhWGm2H705WA6/JLmZfySTiuZWDEIMl3gaxVLqzk2rjgxe6pqVTf+OuraQoYTZIdWkKbNYtfymA/8++3lq+syMfNijWs3+FcSl2R2oqxEqIrtTxxiVatlW/YaWbWUQg5gi865pbefoTFZABYkVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VscnZOomMz+cv7Lu9xEE2ydyJNfo6nGkvcRfG6vbA3E=;
 b=e2psKN/E8MkvDDKwcv7+3tR0T97B5RoN5zMKYIzk1VQo4SfWy/7VnAROGBOm8FEVp7QEq1AV/V6yra3sdOYi6TxG+3ZMSxEt/vEWHaGdyHpNhgkzbSTfDgYWnFWRv89FZT6X+RNI1WI1TdCEsyGJh5u6s+/U1Js6TmMjjVmQHA+jWHkbAcvGJVrqoC7ptGSnu5lZZ6JqptlVu5OLmp+hsy1qLY+V7oSTF5qpuHbupVvRVi6M+N7sBJ7e8uzzMYhxII+x2sH/VyeF2L0aqiHXj7wagwwBfiZLJYj2r8rC3LqfTCrJOV76j76dNjVici9+6SyCztJEZH+ipANOHd/gsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by IA0PR11MB7840.namprd11.prod.outlook.com (2603:10b6:208:403::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Wed, 24 Jul
 2024 16:14:28 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Wed, 24 Jul 2024
 16:14:28 +0000
Message-ID: <4691e62b-0597-4184-8e85-0e74d8cdab85@intel.com>
Date: Wed, 24 Jul 2024 10:14:19 -0600
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-13-ahmed.zaki@intel.com>
 <20240722150431.GK715661@kernel.org>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <20240722150431.GK715661@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BE1P281CA0172.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:66::10) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|IA0PR11MB7840:EE_
X-MS-Office365-Filtering-Correlation-Id: f2ebed35-91bf-424d-1bc6-08dcabfbb1c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V1Y4L3F5TlhXb1pyTEhEcWR3SlZuL2JkQ0NicXR2eUxUVFhOZzRyK0IwUmFC?=
 =?utf-8?B?RmpzQVYrT1JNckxaZVZrQ3ZJeWNOdW9ma0MwWjBjYjJRMUxjRXNSSnFLNTJQ?=
 =?utf-8?B?amFQUHVBei8xLzcyVjQrUm9TU3lVY050OGNKMXViRlhkZHpqZzU4SU5yOWdV?=
 =?utf-8?B?N2FyZVkzMEcrRVhpR0tPME1CL1kwTjhqZVlheGRzb21tQy8zMm9GUHZVSVJo?=
 =?utf-8?B?M3JMTzF3T0NTSEg5VFZOaHc2UUs3bmtnWmRCR0QyR3JrVXlwMm5MM3k5V3dD?=
 =?utf-8?B?M2dBT2tNUEo4N0ZpNmI5UWpWR0VhMXl2RjZYWXR0VXVwcm9JN1dHbTRDamhw?=
 =?utf-8?B?S0hLeEFZWHJCMGxtTGh2eHdFazFkdWFiL0xKZmpzWlhldThRcmwydEUva0Rt?=
 =?utf-8?B?R1hDblFGaSs4SkczMjFLS2lhNmJEMU9Cc0ZRU1VsUnRSd0pzT1JzaG8zZHYz?=
 =?utf-8?B?bFNhVkliZHBWTjA2d2hTUkF4RGxxaUxjblJ5YVVZSEtBSGRLMzdzbE1Zb1g0?=
 =?utf-8?B?Skd4a2RaSGorSzJTcjdKTUJuY0E4akg0eXdxUjdURkxET3JDaHVqenRmMERZ?=
 =?utf-8?B?YmtNeHpTakJ2UEZ5NmExTkEvOG1vWlZwMmNpT2xzbDUzN3luWGVhYWdpNzRE?=
 =?utf-8?B?dG1ScURKWDBKTmRXSVJBWTgwMHNWOTI3bE1WSit6dlN5NU5mTXNzcmY1RlBY?=
 =?utf-8?B?N3RHRnF2OE1mQlEycXhiYmd4emtHd1JKamgzSXIrdW1iUnRtK1Z6SWlIR3FW?=
 =?utf-8?B?UGFXVDZ1VTZFTGNqM3JpYWhlNG1pd3kvaVRhcjlNQlZiQXE0TVBuVXlXaEE2?=
 =?utf-8?B?Q0RaLzI5NUtjNnpDS3h5QUw0RHdXL1B2QStTN0tkdVdEL0FrN2RpYWtQSVJN?=
 =?utf-8?B?WUZuRHNhR3lqSmVmL3VVUDF1dnNZNlplM0pvaTF0T2lmV0paZEFZSE9wdGlL?=
 =?utf-8?B?MFVDRmRZUVJrQzR0azdsdGNmU1FDSitNQ2JxK3VhZ1FrR1VySEpBZ2RlZ1NB?=
 =?utf-8?B?NzFSZC9DUTlEMlBkdnJrL3kzanJvajdYbXBLTDFucHQrQlVZaVg0MGhzUS9K?=
 =?utf-8?B?Ym1WYXkwT2hTaUZHdEJGZE5xUndoeU1jdVdtNHRYWUJzR1ZIYVhNTmhScEVU?=
 =?utf-8?B?ZXllSk1oYk1lWnNWMFAxbVZtajlZQ29ObHVhbEhGcmUzbUo2aGw3VmQvOHpQ?=
 =?utf-8?B?L1pZM2RSZ3Y0WFNJNjJ5cjRiektodVdmN0JjZ01lYTVsMHJuMFBLNnNwWHEv?=
 =?utf-8?B?N3pmS3BoUEFOR2NkTnc1MDZPUGVSdUtLR2EyQ1d0QzBTRkJaRmZ1L0g0WUVN?=
 =?utf-8?B?cXRmcG9JeFN2K0Joa3EwUXMrQmdKdXdZVS9LdkY3WTJXNVh6WmtqcTlpa2lv?=
 =?utf-8?B?VHhJNVp1ckZuQU1iTktlZFFIV28wTWVRUWZLR0xNSmhKSDR3eGp2R0NSZm41?=
 =?utf-8?B?bnJXcWVGWncwSU9oYzdVOHB4ZnhUcnRjNXcyemM5VWhxRThrU1krOGRmOW50?=
 =?utf-8?B?NmhkZ0N6SGJVVktjNUdNZXdVNWlJcENYRkwrNlVYR1hlVm9KbUx6dFFheWdY?=
 =?utf-8?B?ZE93ajVyNUpIUDMwczNTTjIzZVVuZlNpTGNVVldyaDYvS3VIT0lvcjJYaVlT?=
 =?utf-8?B?SWFXQU1DT05LQ0FzaTNGVmwvc2l1YkNaM012UXViTzNaQnYxSDFEQmRxM3Zo?=
 =?utf-8?B?ekNFdmpkV2tpNWpwQUx0OUkrVGEzWDJ6aEF0MkVKdmpsN0pEdHhLeUtZSW9D?=
 =?utf-8?B?NWJrZUdTM1lma3NKSW0vY0tpZlcvWXNVMTNFRXBPaFdCbDVVMnN1ZkNKTGZi?=
 =?utf-8?B?b2JMUGNDd2FPdk9Wc1Bxdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2tPS2ZlM25CaDVEeXBJdktaTTA4R00yL2VESFM2eUx6Z0RkWks5cUw3OTBK?=
 =?utf-8?B?RFZCdFg4UDZTV0N1V3NUQkluWkZKcUxUSGltUjFvQ0t2NTY5RGNJSk56MWx4?=
 =?utf-8?B?TTNmZHoyY1FtYndpbjNHT2NQcC9EaWpXTkl3RnRjUHpXb0d5dnZ6NTF4Ully?=
 =?utf-8?B?MzFITVA0aXhpNWkrWElTZ0gzZ0M1K2t0aHVIN05BTUIrWktUbU1ORkJIOWR5?=
 =?utf-8?B?UjZabTJOUzFDVWJoYWlZL1F0eHlPdkY1RHBNbnQwQnRYVkMyNzBtUlBCMGRN?=
 =?utf-8?B?U2t2b2l6dStuaU83bHFWejhIRlpqYlhldGxscjhxTGt5c1pPM01uUHlWemZJ?=
 =?utf-8?B?S3RLRUlndEx3Y1BteHBnZGw2RmlVdDU3cEZrUktwVXRSeEhHMG5EVnVYTUF2?=
 =?utf-8?B?Z21uTWtFa2dXOWZwekU1cU9KVDk2aWtlRDdsTWRJVmhneEFNNzI3Mjc5clBH?=
 =?utf-8?B?N1g1U2lYWlZ6T0w1ZVFNaGR6aHkyZnExK2lGNWliUXdob3ZTeC9PNHBsQUZj?=
 =?utf-8?B?b3NOaUtFbnlPUlV6UGR4SWxWcXZpd3FsaVAraEJ0dENMdFBLQ1dsVnJyU29E?=
 =?utf-8?B?elJqMC9Jc2FmRGxzMWtlMmxUYmdZTW1sbFlldWwyVFFTZ2hROUJDOS9BeXd2?=
 =?utf-8?B?K1R0aCt1R3BseGRWUGJ5QmRxd3RHd3ZEVlQrTDl0ek1XMkZZTEVGQkRBL1Iw?=
 =?utf-8?B?U1grVkg3UDRxUklxZ05NbVJNWjhNQVluS0FzTExhS2tYa0NCQ3c5MVM1SUwz?=
 =?utf-8?B?dHV3TERTcS8wVEdVaWw1NjFXNzBjYTh2Tnlnb2NGY0IxL1hPYjFPM3VCcUVw?=
 =?utf-8?B?cmFNSnFMQWdRRWlWVFJCZ0RVSVVqQUw2YmdHOVY3ZTNnOVprak5jR3NRMGFm?=
 =?utf-8?B?a0VoSGZVazBPL2NsNDlKbmkxb0lSZXpWV0RCMmN1eC94ZXhhTFRFc2dNWjBu?=
 =?utf-8?B?elRUWGZMa1ZxWDFaZEJETHY0QVAvK0FobWlJc2Mwa1phRTVtZ0ZUZXNtYm81?=
 =?utf-8?B?amo2cVZIb3BKZm1UWVdkUnBkVTVsMVNJNnBsVmNqc1V2ejVDeFd4NkZReGNO?=
 =?utf-8?B?T0dib0ZLUnFVQWNINGE1R040ZmlTY3dOaVh3MU5kUzI1SXUrUGtMWG1takdB?=
 =?utf-8?B?MU1MYjVIVlZmWDMxTEtJR3AwWFNQbEJrL0d2b1RBWXBlY0psdlBhMXRqdUhG?=
 =?utf-8?B?aC8rYW1UbTNSUGhCT2xxcUJiS3hybVRodWxUeHlIRXJYQXFsczg2b3FDOG52?=
 =?utf-8?B?TEtTV1ZZVUkwbmt5d1BsNUZGTVArelJ1eGNISjdaOXpMSFIvWHVMcnhEa1h6?=
 =?utf-8?B?ZzJkVXp2M3hncmdhTlZPakhHWEtnUU5LMnphaXlpaUNUZmFiYWk4UW9XTlpl?=
 =?utf-8?B?UE5hTXNObEFJWDMwVS9NbnhJalpvU0RGbUpma1orbkxIYXU2TzN5c0pQQWwv?=
 =?utf-8?B?MmQxYkdXdlVHTDhvbXlSalkwdUd6SVFpb05nay8rN2pKelRzdktxK2hadjlx?=
 =?utf-8?B?c2J2MmsyWVNFSHJ1aWF4Z0daM296aThISjVjdmpISkhyU1JBYUxGTmdhWkZ5?=
 =?utf-8?B?eWNMazhXZVFjMEZSNm55Z3RQN2J2YnpIWHlyYitETzBMeExWaTR1VWg2dG1Z?=
 =?utf-8?B?R3UxV1RuM2tTZlV6TStCcjNoYW5VU3FJNlBhbVBhRWRjNE4xODMxZStMV3RK?=
 =?utf-8?B?R3A0R3czbjFvbkhyVUpNMko3Y3VTT25EN000MkVNOXZST3Q2T25wYTB5RTZt?=
 =?utf-8?B?MDlMaGFRdmFnMUZNWGVIM0IyNFBrTCtnUDIxaitYS2JqS2VuZ29XTGs1SWRX?=
 =?utf-8?B?R2ptcXdvYnR6alhKOTVFQmg3K1BYcE56a1I3SFU3VFMrMHpWRWs1QjFmN0hQ?=
 =?utf-8?B?U0x0UDh5MEpKd0lCOXl0eUk1MGJWMjl0MFZzZFluSTBQN1k5TmVNSnB6Ykoy?=
 =?utf-8?B?V2w4NTVrcVdPWFMrR0NaaXV4K3pEakRBNUFWeERPQjVtNnM3K0hVL2pOMjhR?=
 =?utf-8?B?a2ZqWldTMmx3RlpLNnhNMDdKWmUwVy9oZGVSUGNxMDNEOGxudVB0eGVrbkNK?=
 =?utf-8?B?VCtEY1ZsbHQxMWw3TDcvN3RwNGxMVzgwU09PTHBlcGNnTGFUUFBUVC8yWHBq?=
 =?utf-8?Q?41o9/20ujKzJiG1UWE2Mh3XDG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2ebed35-91bf-424d-1bc6-08dcabfbb1c8
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jul 2024 16:14:28.8564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Vz9dCtzGrtdoeiPojKxpZUnSbjskIbRv7I/zL6zwiG5tKKJvHJrZl5UelyEUTJjUjT59ib1eTbZk6yu4oV1eA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7840
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721837690; x=1753373690;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1vSsYLC5pJZrTYcBjZFufpL9bWHm9RjtS9efuDsl4pc=;
 b=YFRrwTLGTLR9xtEoi52NeE6hguu0KB0IMAyGx3JTRrl9Jn20eElAqZJ6
 PhDF9VLxMygJ1KuAonNk+2l4HkQCbWSq0mgHu2E6fyOfYKtzhgVjAi77U
 3T+qn9MjgB22dK0OuDTE1FNzXjf3voF5tVwl/D1mTv0ayWahNIqknllVF
 Iszr6Elnn4rCFTFBEsm+Mw4jBkEs9YsM4qBTG11eQjuij9VyHcP34qzA8
 Wno/d3puDrM1y9NFBYWAQFL7hlXVD6Z72nnQqPZWEtgTaIC8X7vPlZh77
 G4rf4KM8qjkl3gr5goAwQCV4wrNxpIA7jF8xEHwYTCAlzpsAdmecyLoyN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YFRrwTLG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 12/13] iavf: refactor
 add/del FDIR filters
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-22 9:04 a.m., Simon Horman wrote:
> On Wed, Jul 10, 2024 at 02:40:14PM -0600, Ahmed Zaki wrote:
>> In preparation for a second type of FDIR filters that can be added by
>> tc-u32, move the add/del of the FDIR logic to be entirely contained in
>> iavf_fdir.c.
>>
>> The iavf_find_fdir_fltr_by_loc() is renamed to iavf_find_fdir_fltr()
>> to be more agnostic to the filter ID parameter (for now @loc, which is
>> relevant only to current FDIR filters added via ethtool).
>>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   drivers/net/ethernet/intel/iavf/iavf.h        |  5 ++
>>   .../net/ethernet/intel/iavf/iavf_ethtool.c    | 56 ++-------------
>>   drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 72 +++++++++++++++++--
>>   drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  7 +-
>>   4 files changed, 83 insertions(+), 57 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
>> index 23a6557fc3db..85bd6a85cf2d 100644
>> --- a/drivers/net/ethernet/intel/iavf/iavf.h
>> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
>> @@ -444,6 +444,11 @@ struct iavf_adapter {
>>   	spinlock_t adv_rss_lock;	/* protect the RSS management list */
>>   };
>>   
>> +/* Must be called with fdir_fltr_lock lock held */
>> +static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
>> +{
>> +	return (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS);
> 
> nit: these parentheses seem unnecessary.
> 
>> +}
>>   
>>   /* Ethtool Private Flags */
>>   
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
> 
> ...
> 
>> +/**
>> + * iavf_fdir_del_fltr - delete a flow director filter from the list
>> + * @adapter: pointer to the VF adapter structure
>> + * @loc: location to delete.
>> + *
>> + * Return: 0 on success or negative errno on failure.
>> + */
>> +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
>> +{
>> +	struct iavf_fdir_fltr *fltr = NULL;
>> +	int err = 0;
>> +
>> +	spin_lock_bh(&adapter->fdir_fltr_lock);
>> +	fltr = iavf_find_fdir_fltr(adapter, loc);
>> +
>> +	if (fltr) {
>> +		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
>> +			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
>> +		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
>> +			list_del(&fltr->list);
>> +			kfree(fltr);
>> +			adapter->fdir_active_fltr--;
>> +			fltr = NULL;
>> +		} else {
>> +			err = -EBUSY;
>> +		}
>> +	} else if (adapter->fdir_active_fltr) {
>> +		err = -EINVAL;
>> +	}
>> +
>> +	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
>> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);
> 
> It seems that prior to this change the condition and call to
> iavf_schedule_aq_request were not protected by fdir_fltr_lock, and now they
> are. If so, is this change intentional.
> 

yes it is, fltr is member of the list that should be protected by the 
spinlock.

All other nits and changes will be part of v4.

Thanks for the review.
Ahmed
