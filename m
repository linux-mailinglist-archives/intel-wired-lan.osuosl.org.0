Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BEEA2F0DA
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 16:06:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 603CB60B38;
	Mon, 10 Feb 2025 15:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ogiEovKECIaP; Mon, 10 Feb 2025 15:06:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A004260B2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739199990;
	bh=fvduATIxtWTOn0hPOOnke2qGE0MoVmPz8/3M3yX522E=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=f6EDppvM6VRPRXnt/q7a10wjOJQHNfO0vD+m1zfpcdd6bmkyYEfIsY8BUtjBk1zNo
	 5jWpWABvi6PKwkwpLknlGVSHkY6IRsPKM6zQ3LqaZKBRtpiUYEzE2Vdfy5UAZtfBMt
	 E4DB25tiwhP7lHfxgHi5GPBsbKAmzjiwYKFww34Ms5iIaBn9aGBQ5eXhPlG13jIbVJ
	 wGA1gNU1z8a21dB+NhtmyLKldy3KiUvz5ivMmqNRaGkTWWM15ciEOrSGG39SKg4ZWz
	 4fk3CYdlncTBPbOvRdMcTTtu7mtG3tFr7hPMa6zb/uzaL95ou1dEk0SskjOKIpeZ21
	 yWlWaA06r1LPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A004260B2E;
	Mon, 10 Feb 2025 15:06:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0AB326C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:06:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 03D48411CC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:06:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8mjqswze2TWT for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 15:06:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org EC58541218
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC58541218
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC58541218
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 15:06:27 +0000 (UTC)
X-CSE-ConnectionGUID: VbMA62N3QDiDA2ZlNkFBaQ==
X-CSE-MsgGUID: NmOdTuYzTmK+oFc1o9Qyzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43548541"
X-IronPort-AV: E=Sophos;i="6.13,274,1732608000"; d="scan'208";a="43548541"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 07:06:27 -0800
X-CSE-ConnectionGUID: tL93Yy1wSbqmPicxvDW/4w==
X-CSE-MsgGUID: /YhEJTmjRwKYNqY+GyaAhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="149408305"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 07:06:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 07:06:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 07:06:20 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 07:06:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cFOELU4nYkUhbCfccGdaiCww6zhm51YVhmR82CL99kQy2oRgp4i8/V0ZoclvyNacM0eP6wPc67JBr3KcSzGKsVqfYQqYFGMMYduy7f+elCarF5kJbltNqI9dIY3NeMUS3h3f8AU0y1+v/HoS3H1e1RUCgeJfhdJJ26/hfKW1xYfVuTWQmHRuIl4dVLc4zagus04hGpaPj9xscCaXpyLfA4w19m8ah4KBjpZdPH04zK2hZL1ZTPIWSa3XKivToDxBSA31wIQ/eWjEp6PRdTHIzvHdf1BdDW8R/W+vUSC8DHVkP9FGawD/kCMWyZlH18GrwKPAxbmeGxAmdUWRFuNXIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fvduATIxtWTOn0hPOOnke2qGE0MoVmPz8/3M3yX522E=;
 b=DidiOxfffJjw2wQRJPb5Cihfa8syohF0p0mjT8z7Bb+Sp+nFWzl0ViZq/4+DHHeF3Kz6uTfyeFIxekf/R8wjCOdaGITY5Ma+XhE7oqn4NH5+3KESs+z2XxxBvFkV+X8JxEEWNcOo6HyVTQrQT8PZoDC4R/t+O7nzUupPEHHa11bwjXpqBHbLO+tIGodSir2wv6uYYbrZoLBWAOLLWndfBDWIzgSalvqO0Df62MR6p5Lf3f6vPuVw+HSZ4xBcr6Eh+OcBywkTPBxfnridsKbH94PAsXM6iNNlF91GtjC46CHfGKNvYmBmRrOJg8liOQQveMgheCqoz9KLZjQTnMvLVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by CO1PR11MB4915.namprd11.prod.outlook.com (2603:10b6:303:93::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Mon, 10 Feb
 2025 15:05:32 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 15:05:32 +0000
Message-ID: <4c522f0f-ffda-4b0d-8b83-96d652c4abe0@intel.com>
Date: Mon, 10 Feb 2025 16:01:40 +0100
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <sridhar.samudrala@intel.com>, "Madhu
 Chittim" <madhu.chittim@intel.com>
References: <20250205020811.2839702-1-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250205020811.2839702-1-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0307.eurprd07.prod.outlook.com
 (2603:10a6:800:130::35) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|CO1PR11MB4915:EE_
X-MS-Office365-Filtering-Correlation-Id: 18197b84-dce3-43e8-dc03-08dd49e45d4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z2NDOWxyWEVUcXNTMmlUTUpkNGJtd0d3YklEalJQNVgzVEVPcjcyempFUUNw?=
 =?utf-8?B?djZHUDNURTcrTit2aGtrd1FTYUE4N3c2UWsxL09NNWx1T3JIU1Rhb3QzanRS?=
 =?utf-8?B?UVVhdGZEemNXYTcra1dhTWdtMEtzMDBhb01sa2lUbXZLdFRJaUNXQkVCc1pr?=
 =?utf-8?B?MitnK0E0eXVaeU1tbURVcTYvYlh3TDVJa09tNm13eWlXaWc4NGx3T3VyTUtC?=
 =?utf-8?B?SkpqeU5BYjBOQUxUM3dlRWR0Vnc5bXV3ZTRrY3g3eWxLQTZMalNOZFcyTGw4?=
 =?utf-8?B?OWRHNFpCV1ZQWU55WU92OHdlbERxTTdYODA4NFdDay9yZnhQMWgxc0JCN3pw?=
 =?utf-8?B?QnNwTlhFcUZCRVFXSnFDR1pnUGhIUC93aHpUQURlRGpyLzJQVVZXR1NpRmdH?=
 =?utf-8?B?K2dQMjV3aUVrNmxqanh5UGRsaytHWkVGbkZPNUp3ci9XK2JvbnByTkF0aXE0?=
 =?utf-8?B?ejNNZEF5TjgvbzhIcm93VVFYZlZ3K2ZYOGhJcjFlMzB2TmU1dTZrYWh4c3Rs?=
 =?utf-8?B?STJVL1NJODNXRnl4dTR5OHRDd2VDWEhuYmx3USt0YUxIWVFwb2hCODFLMmg2?=
 =?utf-8?B?QTduN3hzcnRIeDYvVXhKV3RYYkVCdTZlTVdGU1BBL3I5b3RnVlVSdXFWM0JG?=
 =?utf-8?B?dE9qeGJwT1RwMUdQWWZRdThCcUgwU21GUWZlN0lzS0VtYWc4eUtDUTBMVmpN?=
 =?utf-8?B?RzdMRlMzTWZBeHJXcEFQbElMNXdsU0xPb3Y0WEl4SHVQQWpIUG5sSDlkTEQ2?=
 =?utf-8?B?VU9jY3lDTTFLRDhFN09KaFBUM3hsNkNmVmFWLzhrdzZtTnc5eEY3a3J4ZHZn?=
 =?utf-8?B?RFVqVGhZSTFROVc2TGRFZldzNDVHYnlLN3ZaUzNYNFRzM2ZpVWROVWtvQjRy?=
 =?utf-8?B?ODRuNzlHNmIzQ1pPWUNpOWhER2ZhQ0VvOU92czRlL2p0dUxZbHFWMnNzVjlJ?=
 =?utf-8?B?akRHSGUxcnhOOGJFVlZmNndST0VtYzZHcXVTUHpWVW8vN1UwMkZQbjJZL29I?=
 =?utf-8?B?Qm1DT1BuQ01hWFhUMmFJOGlKdU9FK0o5MWlWVkZzTkJlSngxM0NjU3F6TzE5?=
 =?utf-8?B?eVRmci92UkdpVGtpOFVVdU1nVUZMazR5U0F4d1d1QUJEazBFYVlFTkN0a3lR?=
 =?utf-8?B?WjFOZ3ZGSHhua2xyV2d4aXVJUnhYS1djV21yaThtNy9FYk5Nd2lORkk5S1A5?=
 =?utf-8?B?K3hXNlUzQzJqMitudlUzSms2Q2lYNzZRL2oxZEptTW1zZEhiTWNBKzhMM3pR?=
 =?utf-8?B?K040TSsyb2x6SzI1dHR1NFc3WWFKU1V6aTNhT3VPWEhaNS9oOHRDcE5Hdksz?=
 =?utf-8?B?ZHIxZzJmUVVGRFFDNXVyV2lYeTQvdG05MXFsbmZGM2EwVStlQnlEZVlENUpV?=
 =?utf-8?B?NUxxZklHVFdMUEJaQktRVzJQRzAvVUNJZmJkL0Z5UmNJNE8yRW95Q09lQzhz?=
 =?utf-8?B?R0RYUHVxZWI0K2YraFV3bTNGTVhYdmhkRnc5cEVyR1R5VnNKVUwzNnhvNllm?=
 =?utf-8?B?NU8vNXFCMDlDL3dJenRJTEZZd1BUZit6WkxrUjJSSGZIT2NWZURzK1ZicDQz?=
 =?utf-8?B?eExUbTRYaTY1c2lpdGd0ZU1HUHR6TFRYalRnbTEwc1ZaVFptNTFTZVVxWkRI?=
 =?utf-8?B?YWdYYjJpc2I1M2MzamlEWU55dlJUMUw3MkJQbmVnMWQ5bHMvdHYyNjZSbWtP?=
 =?utf-8?B?RnJGejcvcFdkREZZNFNCRUlKSlBVN3IyclhDc2VjZE9hUVpxSnFuSzBwSzJv?=
 =?utf-8?B?MnhOQTdKTVlrV0N3N0FOUEFvaWZRVzJQNVBxa3RJQ1l5b2NYQTdtQy9yeThE?=
 =?utf-8?B?aUw3U1hidFB6QVIwWUxnb3c2bVhEL0VLYkZKK2oxVGtiOU1oTVVUMERPT1I4?=
 =?utf-8?Q?OkqeFXk9vn9UX?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnhBZFh2YldtNUVpc2RFNFJxdUZ0WVVhQWRIelBKRmZDajNlZnFjeEtVcy9X?=
 =?utf-8?B?dDJwaWNmS2RTK0tJRFZGNjU2RnF5S1crT1VKRDl4NkkySVZIZkxGVk5PNDFO?=
 =?utf-8?B?YlZlTGR3NzdCNW1Za3R4QVEzWkFJb2V5czloQjVZVmZUQ3NxL0tmbUZKYUJN?=
 =?utf-8?B?aFg4bkwxN3lML1RxcTBCMUpEWVgySVl4cWFxZnVRQnZZcjZ2VVE1Q04wUjhV?=
 =?utf-8?B?STdnVTIyTmoyRDR0OW13NTZsUjVDYTg2dzZRdDRIUzIwVmZlZ25HMWVmOTZ5?=
 =?utf-8?B?WW55YUxiZWc2dFExeXA4WEtmdUtrR2VBd1YwaHdyNGZDamRPMUxKeVY3Z2ky?=
 =?utf-8?B?N1l5S3ZRaVV3WFgvSHpRRVc4RTczbGtmMHhGZHg1M0lzSW9YR2wyNmVxaFFt?=
 =?utf-8?B?anZiU3VMNyt1Q3F3WjZTTWdoZXV6YWp3cjlYa1RTWW52aXUvMDVMVHNwSXJS?=
 =?utf-8?B?emd1anNoSTZDbE1mbTlLclNnQnJiYnZ5MlV0SlowN3pxbTRTeTBOelEyR2pO?=
 =?utf-8?B?TEVmNmozdmNiM0IvRmIyTjdZbWtlakZiVWtYeWFXSndPbDVtKzNNczlzaTdH?=
 =?utf-8?B?dUN0TG9aOFdkWkxubHdTWnhqRVVoZ08xdkw1QXQxeFFadVdsV05QaVM2cXpE?=
 =?utf-8?B?MVdjUWdtWTR1NFlEYzd4RURqVVF4TnFkWjZ6dFBJRXFZR21hcjRhNzZMa3hv?=
 =?utf-8?B?Smdwa0JoandoKzZmQ3B4aVZrMklpeWwxbzh2dGNZdnBxL2J1SFFNTzlmazNE?=
 =?utf-8?B?WVZtMHpEWU9FMC9UZUFXa0RZUUtXa1hJekVoeDRlaFgrYlhzNTJ1VXRBajVu?=
 =?utf-8?B?NEczNjhydm5Jb0JvcUlzM25KS2FoUjQ0dERiSWt1OUwzSG53bHA4S0h3bHpX?=
 =?utf-8?B?VkN4Ym5WZjloV0RvTXFDY1VsYzY2Um5IdzZmSDNMRi9xYi91eDRBQ1B3UUhw?=
 =?utf-8?B?UEYrbDdjSDZZREVER0t5dzAzU1YrMURWbk5WQ0RVQndXdmRUMzdibXprVG92?=
 =?utf-8?B?WE9jRmtoNHRONzF0U2xWT0gwbEtySWlFdC83NVlJQnIzOXdTN1haN1pEYXMy?=
 =?utf-8?B?Q0l0S1RJSnRrRUtFWjVGakhGdFZ1cnNIRGhvSllKNlYvL294SktJRzhSaVRE?=
 =?utf-8?B?RFZ1VGQzUkZMdkFpRWNwdTdoc28rZDRMam9sTVpUaEI0Q25Gb2ZyT21abkZQ?=
 =?utf-8?B?SVhhQmpuU0FCcTFsVUxlWjN4ZWR3L2xXODgrUlhzKzQ2NDU0Q1NhbUZqeE1h?=
 =?utf-8?B?eGE4SjdKeXBmdStCNHMvKzZhUFNBQjJ0Q0ZyTCtsNDhzLy9WK25BdGY4Tnh6?=
 =?utf-8?B?NkdHaWxLRnUzY2ZpaWV2eDBtcXJhNnZpcm40bEdhbGUvWHl2TmdUc2lONFly?=
 =?utf-8?B?M1BhcFgwUHhuRWVKME53TTN3V3RTcjZieUM1ZkpxRGFwRGFoRm1rNnc2anU4?=
 =?utf-8?B?WEdZYWJ6L0tLMVEzQm8rRWpwSUFCT295ZkF4SXgvK3ZkZ3RteGdwSTEyeDNG?=
 =?utf-8?B?bEJDRENPNkxPV2RlZThRdW9WME1PeERneWkxQlVUc0E3d1FmSEd2Z1Y3a2Ji?=
 =?utf-8?B?TS9IYVorOXVQbjBISE5wcUo3SE5CcXdVQnpRR3pkV3BtdFB2VmIzbkV5dkhu?=
 =?utf-8?B?V3FjaHVtOGljcGQxNktXTmNZNnVyeGtSWE9wTy9KYVJkZjAxbEh4TFpGTGhx?=
 =?utf-8?B?NXZXQWJNY0Rsc3oyUHpoVTNJeDZaS2RFcUJjVjlZdTBLOTNqS255K0ZPaDRW?=
 =?utf-8?B?cldvVGV1S0hsY2FLQWpRcVg0elpVWVBZQVRjckxJdnF3ZVRoajByQ0QvNlhu?=
 =?utf-8?B?Y0NtQXdaNEh0azhuUmZkc1lpWFloNzVJMzJ3WldFQlFZZForUWVEZ3laZW9Z?=
 =?utf-8?B?ZmE1Q0NjVGJCYXZISVp6cVRlVWZOaVlQeUhSU2l5SVUvdDJqRnRuMTFoTEpI?=
 =?utf-8?B?bjBnWSttNGhCZ2MzNmlWc2V6bVhwR2ZBK0JEOTdqTENvZjJHQ0RieENRa3V3?=
 =?utf-8?B?eHphQmU4T1BrdWJNZEVQUlZoMjU1dzczbElVUW5XbFcxRlZjRkZMTng3RDRq?=
 =?utf-8?B?eTZjTWFIMFhJVThGRm9ZYW13QW9laDJvOXFoRktsTGl2eW5VRm0rL2YxU3pZ?=
 =?utf-8?B?Y1lZU0FWdHBYZGtqZzBuUUc1eXdON09yQi92dXpLcXVXbHJKRnR6U3pMVzht?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18197b84-dce3-43e8-dc03-08dd49e45d4b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Feb 2025 15:05:32.6204 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3C6yuCV9L3R0yKDlrvOCT5VZ1weKJz53dQQTAFkDqDvhiyKfe1gEWbBTXCeW1pENKGXJrSxNYgJL5QcQ1cSWIhI7uuhZdKRrvfEnTm+rCCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4915
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739199988; x=1770735988;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TZy8JXUM240XfSpmlmssVOE/ev7VKtH7hYYsmXjD+OU=;
 b=EQ+ATDgDOTKHdusAkynth+AQgezrYQCrSszXr5NmdPVwOoyxndgjxJol
 m2RLM5ymgkN494x3o76s9liZ6Ml7XsZw2kHMlcb5VqlNUHRX9eTMYrtyY
 uFsL00y/2HFRUPtkds2KVdA5jUyV4pvtFiOwILu0JUyGtsv9rSrEFGeE8
 HYfV5jyCnzx/7RB7bY9czUS+G/eXpws2G7yY9jL31MlE9DWBy4MSkAP6K
 LqQKAZkvVo/0nj72VvnQsvy0kkePrYjicCMsFytuVDvX/RxlX1CRQrCSh
 S0ANoBazrrrRq6m1ioB4J+5ahRYTXhhVdLChDg3R8Imzz8Dl+2VYHqdYf
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EQ+ATDgD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: call
 set_real_num_queues in idpf_open
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

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Tue,  4 Feb 2025 18:08:11 -0800

> On initial driver load, alloc_etherdev_mqs is called with whatever max
> queue values are provided by the control plane. However, if the driver
> is loaded on a system where num_online_cpus() returns less than the max
> queues, the netdev will think there are more queues than are actually
> available. Only num_online_cpus() will be allocated, but
> skb_get_queue_mapping(skb) could possibly return an index beyond the
> range of allocated queues. Consequently, the packet is silently dropped
> and it appears as if TX is broken.
> 
> Set the real number of queues during open so the netdev knows how many
> queues will be allocated.
> 
> v2:
> - call set_real_num_queues in idpf_open. Previous change called
>   set_real_num_queues function in idpf_up_complete, but it is possible
>   for up_complete to be called without holding the RTNL lock. If user
>   brings up interface, then issues a reset, the init_task will call
>   idpf_vport_open->idpf_up_complete. Since this is initiated by the
>   driver, the RTNL lock is not taken.
> - adjust title to reflect new changes.
> 
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/idpf_lib.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 6df7f125ebde..9dc806411002 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -2159,8 +2159,13 @@ static int idpf_open(struct net_device *netdev)
>  	idpf_vport_ctrl_lock(netdev);
>  	vport = idpf_netdev_to_vport(netdev);
>  
> +	err = idpf_set_real_num_queues(vport);
> +	if (err)
> +		goto unlock;

Why wasn't it removed from the soft reset flow now, although you did
that in v1?

> +
>  	err = idpf_vport_open(vport);
>  
> +unlock:
>  	idpf_vport_ctrl_unlock(netdev);
>  
>  	return err;

Thanks,
Olek
