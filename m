Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C493B231FC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 20:12:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDB9B42939;
	Tue, 12 Aug 2025 18:12:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0iz5GhIM23fP; Tue, 12 Aug 2025 18:12:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC1BD4292E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755022337;
	bh=4DXyv3ApDXwIRdQJnV25zFdA0mlXmOqqCTbh8E+Yv28=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=344HXxHlcH/DhOk782yUHPvNJzZ8o6OrmA/+ozqwzmtbasqOJ8aA0EWj52kc9fv1R
	 5qHwIPpMnXRKVAEcOqkhT4+o/CLFeDACMdwYR5LA5smDbFj84TycgotQI3ttQz/Bbr
	 4jMCEfwDo/uzLaQ/6wfVQf6kOS05cP0DpcMKpqeSqQeKFzgXGBF17XlL4SkqKF/xGD
	 +Mfr0PsbkElTIO9aGQziNOXqrBR+uOBEeNSu3q/bG989rxAZLZluXisnP30oi6z861
	 WuDk0uVng0ijKvlnjXSUqdZR2o1l8qFEUgt82KOhigy1j6rBEHrrhznDiWKjBHEscQ
	 To7PLZ2BR9hPw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC1BD4292E;
	Tue, 12 Aug 2025 18:12:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 599DF1B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 18:12:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4802E60BC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 18:12:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id meTdPXVyqtf7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 18:12:14 +0000 (UTC)
X-Greylist: delayed 427 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 12 Aug 2025 18:12:14 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6149361B65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6149361B65
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.8;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6149361B65
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 18:12:14 +0000 (UTC)
X-CSE-ConnectionGUID: D+v4qyAISeKZZ6AeszzzmQ==
X-CSE-MsgGUID: W/btUQr2RW6iaJSKHEl1Ow==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="74886800"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="74886800"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 11:05:06 -0700
X-CSE-ConnectionGUID: cwMg/vSlTOuM3iGV3/Z3NA==
X-CSE-MsgGUID: XUWzE7kmRhqP4mE4wcKPKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="197117148"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 11:05:06 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 11:05:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 11:05:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.43)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 11:05:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3pjGyC00CoJEXj6sV3yu1RT2xrQ5NWbS4PiT85vl+HjscgCx0+hs7BAlLHoYivOpJaBswFAArbI3vSBOsQmw/Ck9+29YS1QDd2lKTOD88ZYLIlU8Do/Kv5KH5slZz0JVxYs7TGYjWuVd21URsdWKNEPGrcA9+/5/JnDpY61z5ZUXXjlyCz0+BP7FLOq8ug62WPWIBK4tk5pa07Vi1iEkVr361KZOT7hXUfGx4XWpj1nNEHWfQsQQE9d6H6FIUzxOZKR5K2Jm0WTFlBn7qjNIXPEp5+bOL5cfxzPbF1+hAds9gzvMrddv+D2BM4yWKhXT3PeMNQjTxEPoKoEx19gAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4DXyv3ApDXwIRdQJnV25zFdA0mlXmOqqCTbh8E+Yv28=;
 b=EY79W4z6zRVzD/h9LCzm5NqDD9Wnt6tWzja8cHTIa26tCq5CxjzzrBygq7TBBKxxHYvDi3moj93P4AF4tHd0N9yfDVg9IJ/DsG6JaV9uD9gs0jr5rSrQKJlh0jUbnBpYVdceUyODltEdZ8pkn5ELqZzfgnHXUsRzX9mzCJCfZecoOhXm2nTN0ZMsYxfj/1OvDQfUslo+Bbjac3PmlNNI8E1JcXcquXL0B8UxatMRrLXfF6QVyOjGDjz69fZ74JICgnazu8Vlb+5lT9ujKh0rJaTbvdJvbjFYhAVxBhST7KTcwTUk4BeAwkI6lakoYPZt24dk5YBDg3o7xEX0ISAS9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by SN7PR11MB6971.namprd11.prod.outlook.com (2603:10b6:806:2ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.21; Tue, 12 Aug
 2025 18:05:02 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%6]) with mapi id 15.20.9009.017; Tue, 12 Aug 2025
 18:05:02 +0000
Message-ID: <21830693-d8a0-4bbf-ae2f-11f793436895@intel.com>
Date: Tue, 12 Aug 2025 11:04:58 -0700
User-Agent: Mozilla Thunderbird
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20250806192130.3197-1-emil.s.tantilov@intel.com>
 <DM4PR11MB6502C6FD73E1793198017E11D42BA@DM4PR11MB6502.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <DM4PR11MB6502C6FD73E1793198017E11D42BA@DM4PR11MB6502.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0124.namprd04.prod.outlook.com
 (2603:10b6:303:84::9) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|SN7PR11MB6971:EE_
X-MS-Office365-Filtering-Correlation-Id: 562423d5-34d8-4ed9-21db-08ddd9cac1e0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|10070799003|376014|7416014; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZFZERTBpd3N1YW1PTnozWkdqYUdNcUs5SzJUTDQyUS9EZExPdkkwVEEvRFZK?=
 =?utf-8?B?WXBDNVpEK2FuR0s1a1ZvUEhTMENzdW44bUlveFc5SWYrQ3BsN0NPMXRseTlr?=
 =?utf-8?B?cnZyNlo3cFltZWZ2MmI0Mk1UOEppNHVHM2VGalNidldRQVBJcG9LQnFJRTVn?=
 =?utf-8?B?SUdpaXFmc3N6akFBYjJOUm5pMFo1dTlzRkxXallXZy9pM1JGTk5kZVlOSmlh?=
 =?utf-8?B?Qm54TlB6bWlRVGZQVnZsRk1NNmlGVVNQS0sxTlFnSm9jSWlKOHBvSSszdjlF?=
 =?utf-8?B?ZDllbU5iY2hacEFLSjJlTXNUczE2Z241NlVmb2hSbUhQNm5rLzVCTlNHZGs1?=
 =?utf-8?B?Uk5yWHdibkdtWFY5R1N4SmVRc2hEOVFGTUpTZHZWQWdoTXhSNTBWdWhhRlE5?=
 =?utf-8?B?bGVURWRSbWZJUDJqRXpJeEdzd1hDTS8wWmVscERGRHMxZEpUbFdFSDE1Qnly?=
 =?utf-8?B?ZG9MNE15eGtyYWNhZTFHRDBTdmpQdkZDNzBld3pTNEFqZC9IeWFTMlVsVjI5?=
 =?utf-8?B?Z1VxQWc4MmNRTmRHYjJtdlgydFJONVlOa3F6MllkTkhhMkpoc1crdlc4dkFX?=
 =?utf-8?B?TVlrZE15cFhoZzlOM2dUUDcrOUtmMDkxYWM4UmpBMGQ3aUxCUENxNFJuUU1C?=
 =?utf-8?B?bHNjWUJ0U1dtcVdJREVCUXhpN2FHNHpFMDljZFpuVzVCNWFVZTh6L3k5RG8z?=
 =?utf-8?B?MFhiYlZvWUxpb3B5dFB5SlEzV09ZOEJLNlZMSHplRXBiK0FnWnloRDNCSkly?=
 =?utf-8?B?a3pETVdwSmNHT08zQ0FHREp6NnBZWnZ2cXN4VlRKOW9kcmVOcVE2UEMxNGp1?=
 =?utf-8?B?RDFBSkdvbjcwVGoxZlpySUFFNFg4K2xCbG56Q29kREoyeVVtaFVqVGowRGly?=
 =?utf-8?B?dGd1c2xOSWJycFVEU3k0M1ZiTDUwYld1YU4xMGw0RURaR1k2ckpSU0FZSXdK?=
 =?utf-8?B?VDVWV0tJTnVDSGE0c2JQT0VIcTQveTRNN1g5VU5pQ3dqZGZNY0pYS3pNWnZG?=
 =?utf-8?B?aXUxeW1wZnRTcjYyZmtqMklFYlhmWTlYdWs3dUJEWTlBN1ZycmRWSjZnUTNr?=
 =?utf-8?B?STFYT29Wbm9vMHY2SXpCVEp5YnFRN2NUaTlSbXNpbmdRL1Q4Zi8vSjBybm9Y?=
 =?utf-8?B?NFZSbFA3NkN5QXFqbVNBR3VzWStMSjhRdXdhUTJvd2xZRUI1SnlsVnFJU2dZ?=
 =?utf-8?B?aXlrRU91MEF0aXRyN2Q1MzRYMzdLNjlGWjd1Q2VBVngxc2FvTmtzbDMyNWlr?=
 =?utf-8?B?aUxhdms3RTEyYXR0a2xFajI2RVZVWXE0V21nWldsN1RaNmFhN2hqeWVRaHVE?=
 =?utf-8?B?OHZSSDltbnk5dThCODZVQzZuWXdSYnFaTzloOWM3Wks5OGpXYmh0ZklORGdn?=
 =?utf-8?B?RGkwRCtETjFicy92NnpiV2xtc1loUjE1MUVUZmE0VkxmOURSbWt4ZXhFU1dW?=
 =?utf-8?B?SXVJcCtvZWRNTmh1cURzckNGSU9uS0xUdHUwdDh2enlMSGxFTUR5NS9hS2xL?=
 =?utf-8?B?ZHM3alBqTHREYkhkK1Y5NUF0RFVCdTRIWXp2bEdnVWx5M1IvYXdKbk92RjNy?=
 =?utf-8?B?enFTNVZwblpOci9EOTlLaEorNEtVMFBaTkZ2bmJMTFMyWUNvbHNlWE9HZ1J3?=
 =?utf-8?B?cE1FMVIweFlJKzJzU3RkU21xUHc3eEJpU25leTlkbTlYTzQxdFB3ZGJNZ3Ny?=
 =?utf-8?B?VXZVVFRlb040Y2NFMDEyTjFyOTdZb1hFZWxzaVdaRXpkRHRQY215R1VsUTcw?=
 =?utf-8?B?MGdURzdVVCtHWkhQTHpLNFpycDEvRVE3cVk2bVNFOG45M05kb3IzOTltTEVP?=
 =?utf-8?B?b3l0VWhPTjdCdnNCQkpmZkZwWHg0SlY3ZUN1QVI0WXNzdStpWndrRmJMK0dT?=
 =?utf-8?B?OTdCUjhYUHdFMUg1SGt1Kzlic0tHd0lJN290L0dHaDZZb0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(10070799003)(376014)(7416014); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUxZRFptcW1POXhBVWlQZ1QvV1l2V2dnZnYrdlVqTENVbzN0THgvM0o3OVdp?=
 =?utf-8?B?QjVpRU0xd2hxWTNiQkhZVTRhaUQ2dVY1UHJxa1p0YThFRlUyN1BSZWwrekhK?=
 =?utf-8?B?a055Sk5RdkNNbklpL2NyOHJwN25iQTYwVlVnYVBTZG1ITTBKUkFpZFdGa21V?=
 =?utf-8?B?Mi8yWldYWjFOQlJBTEdSMEJlSlJWSC85d041VWd1ZGhwVXNnODkwVVI2cUtK?=
 =?utf-8?B?aGt0NVFUSTMyZ21wdmw1WVpjNlNERFJ2YWdadVJoQTBDT0hlYVYvUkxCNUtn?=
 =?utf-8?B?TmFOLy9uM2puYncyOWZiZU16SzBwUWRUVEVucktrd3pZTHdNWjd2c1JkZTdP?=
 =?utf-8?B?bHlhOEszTUNWR0pzNDhuUkxvSWU3dnNNaDhscHA1QWc2ajNJeDB6MHg4aytD?=
 =?utf-8?B?S1pOS0FJWU02S0VYVmtnalNEbk90VW5FR2QrY0NQb3F4WHkzTnhvN3hHWVlN?=
 =?utf-8?B?Skx6eHN2K2U2YlczT2FZbjdKLzhZaGNFNndLZTRRSTVFSkMzaU8yM0cxdTNq?=
 =?utf-8?B?dnlxbzFFM1Vwb3pRb2djTVk5TnNucGhpZXZCVThBak93dC9mSnNMaCtmeCtW?=
 =?utf-8?B?eDBBMEpodUlDTW15c1A1bXJNeXR3M0pDbmVvQU1TZnprTDczOEFUNG51NTFY?=
 =?utf-8?B?aEdISUVQOG5YeFhZc0tSMEVkNHV6TDF6TWJZZTNrNmlRMVpYUGg5dk5IQm1L?=
 =?utf-8?B?TWVubFVMLzFMVzFib0sweS9MRmxQVFVuSDEzL0RkL1VZQkZWZFpsMFRFMTZW?=
 =?utf-8?B?ekJWb09VbFpoY1cxVjJ0bE83NzU3SXJCUG04TitFQ3drbGZ0dUUraFRLeWI2?=
 =?utf-8?B?SFlGNVNka1RLMmkvOWlQSXorV1B4WE1qbWFHb2UwSjdYdzltVXNkRjU3OUl1?=
 =?utf-8?B?M2gzZ1NDU2ZSd2RHQkYySElBdXpxT29YQS9VbXlYK0dndlBaLzluVGhZQTJ6?=
 =?utf-8?B?Ny8rK0hhcnowMmVzT2E3eC9iNU1ZdTlmS3J0ckJLR3VueXdEV3VFM010SjI5?=
 =?utf-8?B?dExuUUNvS3lFYlZFc3A3aG5aN3doMVI0T3RjVHFDTExPU3h0SC9MeUZpK1hq?=
 =?utf-8?B?ZUFnOHFwUVNjbzB1YVkwbkpsNlRhSXZQOURyaXRDaTZBazFWZjAzeUVUcGsr?=
 =?utf-8?B?eXdQRXd1UjAxdkVjeWJSajdKeDVxaDdKR2RXNDBITEpZWDlBcEJsMkVQRldK?=
 =?utf-8?B?ZGJrOFc1T2lYTkZRT1ZYZEs1Z1dSZFhBc05YM1ZkR2poSHEwVHp6UHNQem9i?=
 =?utf-8?B?bU1SNUNIeGcxcGNqNkZxdEVoNSthNGprZ3lyckdUOGtOdmpRazRCZkEvVStm?=
 =?utf-8?B?MmdOWHhIVzBsZ2N4MEF2RGk5bFo4VTFxRVBhaVJEeFU5cXlFQTFkRTBQa01i?=
 =?utf-8?B?dmxKa3NUSDN6dm5IenV0YkRZbzRKN2Z5OUgvQ1IzeEhxbEw5SnRqODVRVk1E?=
 =?utf-8?B?SEJXd3BBclpEK0ZyZE82OFp5bG9rNEpoUlhiZUVQcks4MDNvWG9iaWhQbHk4?=
 =?utf-8?B?Wit0Mm5iVFFTZU5ZUTRKVmVWRFpHdmdJREdqY3BBaUYxd2l0S3lxTlpBRjI1?=
 =?utf-8?B?RmZCM1kxcDdyL1V3eUlkNUZIOFFCcmJHMHRLRHU2b1ZUMGNsK3ZOdWdOT255?=
 =?utf-8?B?SEN0K3JaWDdreHJrSTNPaTdWOWo2VEJDME4wOG4xdWdVWmFoOWU0VTgvTVFr?=
 =?utf-8?B?dFZKeXNEMVhBNkpBQXhXMmkvSzBrWVZ0RTZFemZUMkRKSWE1VTNuSkVVU0ZD?=
 =?utf-8?B?Vk9UU1VIVXpIcFJjVkNNZG95emFLREUrZTV4cURUOWRDM21aTFY1RXJTbkwz?=
 =?utf-8?B?VVhkOHFvVEdROHhFbkVHUi9YNnQwZ1NxaVBvM2tFMmhNZE4vOVJzMHZXeENJ?=
 =?utf-8?B?TEJjK2doTXpMWmxNWGQzOGloTkVoc1ZYUUZVdE50aVNsSDlKU0hqTDNBRytk?=
 =?utf-8?B?a3FYaFVpV243b3NTVTR5Y0tHYk95d25oOVVxM2Zyb0phcVF6eTdlNVZScjNH?=
 =?utf-8?B?N3ZxSGY0QWJacjlHSWNPRTVrSmJSZzJlUXhLZUJsU3NrbDdUdk0yRFNScjUw?=
 =?utf-8?B?VkpQdGFTRHFtcXk2TGRWejNjYUtxSGdIN1AwRzFUdWdwak5Rd2VxZW1qVTMy?=
 =?utf-8?B?R1M3SGt3d1NIWmxVV2gxdEhUSTF2WnpVdm92OS9XbElXYmpLOEVGN0JnQ0Vi?=
 =?utf-8?B?ZUFFejJOWTV1Z0Eya3lVbTNUSTNYOVNqSzVWelNFaFpuKzhzZURJenZxZnAw?=
 =?utf-8?B?dzJxOHk0elVENklxNm9PZ01jcWx3PT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 562423d5-34d8-4ed9-21db-08ddd9cac1e0
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 18:05:02.2050 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2iw20E2/eUbGQj3/12WAPWJq0/LiQhuqJN8ZRwPggVb/NfXi55J+qEOKm5GvKuweXARcg2Ishcfo76oMJ+66AaaK6eESEJxjhGY9Ub7x1rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6971
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755022334; x=1786558334;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YFJ2xGwrkx63gFd8QfDDhbhJk7J0wByn5vUeVuC0Ass=;
 b=gkWglqeoF3DoMY0AIyKASbLnsaOoFAOcBJKP/v/K6OcJGQGUz4ohGNFR
 n2p+So6MAeDA3dIZir/F5EoLKhNW2b6tLNfP4VXmhOfA8wbSsE6/C3qqT
 mDGRJyCRz2DV+WED/Yg8qD6kCezHzJl5T24TVjzb88p9LtCbFZVpUjKbl
 yIse8g7crOjmUUF7v97AGpz36ZkQPRLATQnuRSwUCoQi6prSeMofWEnjz
 leX7P8m1X/9M/zj1w/avC9tJ6FQ+Htodefst0oDj9Ba5qbNIrJgnWfPO2
 E3qv9cUEd43vg0rdBznCcnQ1MxFeS714Gl8E/e+SNqR/PHTJl81Njd2o6
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gkWglqeo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: set mac type when
 adding and removing MAC filters
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
Cc: "willemb@google.com" <willemb@google.com>,
 "decot@google.com" <decot@google.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Loktionov,
 Aleksandr" <aleksandr.loktionov@intel.com>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "edumazet@google.com" <edumazet@google.com>,
 "jianliu@redhat.com" <jianliu@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 8/12/2025 9:20 AM, Hay, Joshua A wrote:
>> On control planes that allow changing the MAC address of the interface,
>> the driver must provide a MAC type to avoid errors such as:
>>
>> idpf 0000:0a:00.0: Transaction failed (op 535)
>> idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
>>
>> These errors occur during driver load or when changing the MAC via:
>> ip link set <iface> address <mac>
>>
>> Add logic to set the MAC type before performing ADD/DEL operations.
>> Since only one primary MAC is supported per vport, the driver only needs
>> to perform ADD in idpf_set_mac().
>>
>> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
>> Reported-by: Jian Liu <jianliu@redhat.com>
>> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c      |  6 ++----
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
>>   2 files changed, 13 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> index 80382ff4a5fa..77d554b0944b 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> @@ -2284,17 +2284,15 @@ static int idpf_set_mac(struct net_device
>> *netdev, void *p)
>>   	if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
>>   		goto unlock_mutex;
>>
>> +	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>>   	vport_config = vport->adapter->vport_config[vport->idx];
>>   	err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
>>   	if (err) {
>>   		__idpf_del_mac_filter(vport_config, addr->sa_data);
>> +		ether_addr_copy(vport->default_mac_addr, netdev-
>>> dev_addr);
>>   		goto unlock_mutex;
>>   	}
>>
>> -	if (is_valid_ether_addr(vport->default_mac_addr))
>> -		idpf_del_mac_filter(vport, np, vport->default_mac_addr,
>> false);
> 
> We still need the call to __idpf_del_mac_filter here with the old addr to free it from the filter list.

Yeah, there is no need to send the message, but the filter list needs to 
be updated accordingly. Good catch! Will submit v2 to resolve it.

Thanks,
Emil

> 
> Thanks,
> Josh
> 
>> -
>> -	ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>>   	eth_hw_addr_set(netdev, addr->sa_data);
>>
>>   unlock_mutex:
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 24febaaa8fbb..7563289dc1e3 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -3507,6 +3507,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>>   	return le32_to_cpu(vport_msg->vport_id);
>>   }
>>
>> +static void idpf_set_mac_type(struct idpf_vport *vport,
>> +			      struct virtchnl2_mac_addr *mac_addr)
>> +{
>> +	if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
>> +		mac_addr->type = VIRTCHNL2_MAC_ADDR_PRIMARY;
>> +	else
>> +		mac_addr->type = VIRTCHNL2_MAC_ADDR_EXTRA;
>> +}
>> +
>>   /**
>>    * idpf_mac_filter_async_handler - Async callback for mac filters
>>    * @adapter: private data struct
>> @@ -3636,6 +3645,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
>> *vport,
>>   			    list) {
>>   		if (add && f->add) {
>>   			ether_addr_copy(mac_addr[i].addr, f->macaddr);
>> +			idpf_set_mac_type(vport, &mac_addr[i]);
>>   			i++;
>>   			f->add = false;
>>   			if (i == total_filters)
>> @@ -3643,6 +3653,7 @@ int idpf_add_del_mac_filters(struct idpf_vport
>> *vport,
>>   		}
>>   		if (!add && f->remove) {
>>   			ether_addr_copy(mac_addr[i].addr, f->macaddr);
>> +			idpf_set_mac_type(vport, &mac_addr[i]);
>>   			i++;
>>   			f->remove = false;
>>   			if (i == total_filters)
>> --
>> 2.37.3
>>
> 

