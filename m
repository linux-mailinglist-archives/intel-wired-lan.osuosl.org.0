Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC30A8A9F3
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Apr 2025 23:15:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22FF561290;
	Tue, 15 Apr 2025 21:15:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHbH61q6Ozfo; Tue, 15 Apr 2025 21:15:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E2726178F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744751748;
	bh=DenZjW29pdv7gN7Xzdr/MOAhnQAX58pi8M3XKHXnrkU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hZ3DXuFPbuuLOmG8upVLwVDyaI54qvLR2zPw2Sj6aabT1uIRcWaBpXcL/0edKJDbs
	 QtJPrME1iwZuKGiyGz7+5CAKDM4DXApexByn9MFQ59avNMH54d6FS0D+WoY/IgbjWn
	 SqCphQnHTMY/dwGizc6u8T1fxFrtXisynzHQId/pg3X6ZrdL41I39xvv2q1oX2+UbD
	 W0DhvjU6I37zrq1UW30Xq64SlVsSuES19OWdO1W1pbl2I6xKI9ydiLHHTXy6K/lipd
	 70NTfYK7UIzxqweSUiootXOTW5kcVRTpiSiDptVS7hvkW32wHT9ZvKQWYvntT+HfW0
	 fi06vLw4toU4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E2726178F;
	Tue, 15 Apr 2025 21:15:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 85728109
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:15:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7628D80C91
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:15:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GvsQI0r2ZNVT for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Apr 2025 21:15:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AE56180F8D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE56180F8D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE56180F8D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Apr 2025 21:15:46 +0000 (UTC)
X-CSE-ConnectionGUID: nNl3lhU1QRS3mK8USTV0gQ==
X-CSE-MsgGUID: g/7I+u2XTz2j7HPVEmn30A==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46161531"
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="46161531"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 14:15:46 -0700
X-CSE-ConnectionGUID: yjJH+kxKQtm33JaNXuurUg==
X-CSE-MsgGUID: CpGRBwbBSZqejWiV4UMlUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,214,1739865600"; d="scan'208";a="135025578"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 14:15:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 15 Apr 2025 14:15:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 15 Apr 2025 14:15:45 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 15 Apr 2025 14:15:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mthODitTIM1oKR+VTaRo0+SixQygixCdEK4s6x3hshYYftP0NXo8qUH4pUMAEAg22muuuH1OPAbsqnX+WAjywqq3dNTdACIdKbsSfmUgzpkXGMm8ig9khbYRin6wazA1fkhi0klsGWkLRziQE/+5MLneUEvPbEpwimhmnjU4svE68UKfG84REoBn1GRcR3+WNDGreVOyU4BaB7GKIj/vboisv+6sZ/wDDSUKOjC2DDSA4bJ6XtqbNTimmr17aQkeyykp8kj7XdwNKNXPzsY4KzuMZV65wvn6ONTVJvaRL/8P/OFbNbpki6ztEFQGEGOLWfMG0Fp1KXB4BlTMszlJZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DenZjW29pdv7gN7Xzdr/MOAhnQAX58pi8M3XKHXnrkU=;
 b=RqWK4MoNBaoCYX9Qge3GNed1YWUwHkp6gMdKQ7iYD7jSXK0A3gyse6wIiR5sqC3Vs0Xc9e1ymh1Dj1QNykpUbKy48a/jqxKsGPuxx4wjecxyUoqvVa6FxivbIn2s1t1GGu6SjvKNWhQLmBJ2XWsLsgWXQ2nRaYIDIO7HYrqoJY3yWK7yePayKMU1R6NsilDPvTXNf5+M/Fbt5eHnjgnVUkw+J/1DYBhl1erIic/8118UkWQoUVqDfd47853HG8SKBlA382kAFoh9G6IIbaz1PRAVoy7TDlC05wFx58DlSrHpdokl9Q8b8M71+bfz/bHiTUgDt2CDtaqUpmahavISeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.31; Tue, 15 Apr
 2025 21:15:43 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.025; Tue, 15 Apr 2025
 21:15:43 +0000
Message-ID: <7733b9e1-e7ea-4ca6-9b28-76acb492a876@intel.com>
Date: Tue, 15 Apr 2025 14:15:41 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Josh Hay <joshua.a.hay@intel.com>
References: <20250414104658.14706-1-milena.olech@intel.com>
 <20250414104658.14706-24-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250414104658.14706-24-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0162.namprd04.prod.outlook.com
 (2603:10b6:303:85::17) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ1PR11MB6297:EE_
X-MS-Office365-Filtering-Correlation-Id: 27ecb8fa-ed2b-4cb1-81d4-08dd7c62ae61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmN2Vk8wdUdmMlZrTm9MWDNvelRIUUhmUEFMVlFqQkQvMTlhYXZQc0ZWWUJY?=
 =?utf-8?B?TVo4SitGK25lVlBUazQyaWVQV1RoL0VmS1NuRzN2eUVFVUpwMkdJeDkzaU10?=
 =?utf-8?B?RW5Kd3VFeFpOS3lveXFaR1JEa01wN3BzRHIzcXE1R0NKL2lGVitIcllNN2VG?=
 =?utf-8?B?dXFFb21FS1hob1ZGczRxYmtKT3B5ZG1wSG0wVUdTOENheDAxRldHRVhncTdx?=
 =?utf-8?B?c2lTbTdvSnhkS2RybGVySHRVOFZZeGpHVExiRkNUUm1ZdWlRUml5UXlWQW9B?=
 =?utf-8?B?dVl2VFN5bHI1RFVLRzM0RG52WUlZOEtTR3p4Vm1qalhTMnBTZUxKSzY5TzlZ?=
 =?utf-8?B?NzRUR2gxOHppZEV2cDBsbFZKdjBXT25XTkRPMmg0MEd0Zmx1V2MrZUQ4bSsv?=
 =?utf-8?B?SFVmNHpTby83VUk0TWdaajZJdGZJVVc2ejFIUnhVQXdtZGxXUTM3amw0cm5l?=
 =?utf-8?B?bTJrSUhUZkVCUHdVMjFpMW1HM3RvNU5RU3lNRUxZRTV6L3BUS3d4Ukg2bFlU?=
 =?utf-8?B?WXBqaWRGVnJZMUxqQ2pFMXdMbVNEZDlGM28xYU8zQk1ZTW9BbGR6ZG15U1N6?=
 =?utf-8?B?cTZ6WjBEK1IvUm1CaHR5aml1eEFFd0w1MGpFeERTa2xWUmhCMWJpRXBFczZs?=
 =?utf-8?B?YWVCamVkT2lLM2lPVXgvRDJvK3VrQ01aMlRYbkI3ejdNYnFaMWxZTXZvUS9H?=
 =?utf-8?B?amJoN2k0eEVaQUczY3V5TDhTRGNvbXJlU3J6TEt2WHE2M0VJZW4wcHFKVDB5?=
 =?utf-8?B?dlZPUVA3UVBHY2t2eE5lVFlmM0dwRmd1R3dMNWVpTThQMkg0N3UxNWxGVjd0?=
 =?utf-8?B?R0QzdkRtS0l0TlgwSXBZdVppS1hoam55Rmp2amR3WkVGVk55MUZML2N6OXpu?=
 =?utf-8?B?RkFEKzZCN3pqR2ZpcGZBNEJIaGMyd1FrejIwRytaL3czanFVVkd0U2R1QVp2?=
 =?utf-8?B?WE5OSTBBRVZlVkx4cE1XV0FPM0JTOHpIMG9rVUpsVmR4WUpXMXJHNnlYeEds?=
 =?utf-8?B?WUtWek1UQWI4cXdUS1AvWFVVSEFSbi9ySjhmbUsySDN5UVJMZCt0SkpsL0lh?=
 =?utf-8?B?d2w0TTljdnB6MXVJNmZ3d0RTZWJQMFZpQ1NoMmMyUHNaOXJjRUtISWNLR2NS?=
 =?utf-8?B?amh5VGN0T29HVEdHVFlycHZsYXkwZE1EK3h1emtQaVdQUzZaOGY3YW1rblQ5?=
 =?utf-8?B?MzBPT0p6OFZDdnlvNThlemZ2UHVEcTNBbVJQZU1haEtOQVBmam9YYXFZL1NJ?=
 =?utf-8?B?QzdYa3grWm44RUVaRUhnUWdOcDVQZzhjSmZkRUVEdlRLQWgxTFFuWFRLRmgr?=
 =?utf-8?B?UmxkSzZqWkx2UFdrV0RhVENKd24rM21kRlQ2a0M2TEkzWEpmNU5iUnZYajgv?=
 =?utf-8?B?WWpoWnNuNnJjOTNDbUZMRS9US0pCMXl6YnRPVWlLWnFmV1k1VlBBZVFNYW5C?=
 =?utf-8?B?WW5uVDFuek01Wk5LYUQ5QzdEYUZORi9HSXBONU5iOUFVRmJjakNKQmFpb1B5?=
 =?utf-8?B?dWRMT3p3WmRlTkRkUTJTWmtMN2RVVWdjTTVwMFJTNjFLUVh2bUhVb3M4TXJV?=
 =?utf-8?B?RVRnZ01vSWlEOS9ybXk3ZUdCZ3QvSW1MamVabyt3ZUZrOG5kejBQT05GbnVq?=
 =?utf-8?B?ZzIyc1hpa000MFhxd2J4Sk5PNkRCN2Y5OXc1dGRxOXlHS21Ia21Wa0NVMDBP?=
 =?utf-8?B?bU9qWGhURWdLazJ0SFRibytPVXJxWnBxVkEvbHlORjhicVhOd2x0NUhQcTVw?=
 =?utf-8?B?OTArYW9qU1RSL0gvdWpkazl6aytzc3ppT2swVktKZUpTVnB6bmp5SXFMS3pk?=
 =?utf-8?B?RGF2SXNKOC9HUlo0NTBDSFhUN05ibWcxbDFHOVY1L2NwZFBERmtKNDlINTNh?=
 =?utf-8?B?Q2Job2lKQWhRcFlZU2JRREIyN2REdXBHRkNERjdrbUpkRXdWOEU3eGtaL1Fk?=
 =?utf-8?Q?Ki3wr6CX2Z4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmQ3VklMcllaMHk2LzNqdTVzdjh2MTgxaHkwWS9jMFBzNTJGSGFTY0FFTzlZ?=
 =?utf-8?B?V1d6R3ZmMW5QN01jRHpycllYa3FBT2ZWS1VJTDR0eHhCTHh5ek5keW5XZ3Rh?=
 =?utf-8?B?dE82WEtXY1pyZ1pCQk5TMGRrYXZ5Y09lZElOUEkxNWpCV3QvU0NrTE5IeWJq?=
 =?utf-8?B?V21RcEErTTNwalAzZ044eEREUUtUa04zWWpSZUY0cHQzUFc3UWl6V004RFVO?=
 =?utf-8?B?SllMRG1aYUFBRVo2VzlhZmE4K01PSUM3RWRPNXVTUGFJaUduWHExdVRCUGF4?=
 =?utf-8?B?QXVRUlcvTUN0M0hDK3RxY05DTXdBS1RJczh0NU0xeS9nTVdUbFlGWm9xYnA4?=
 =?utf-8?B?UXB3QlJmb2pTMmkvZ09mZTZQOEE2NGtLNElBNW5YTGxnTllSSi9pZ1oxeUVr?=
 =?utf-8?B?WDliT3JEREJvM3FoUFJ3OGloYy9neHpQcnZPcTBVTEN1REJyZ2cxQ3FxbU43?=
 =?utf-8?B?eGs3S3RZQ0JteHJuNWZneldKalRxVWtnNzVuT0s5L1Y5MEorZHIyWW5YU1NR?=
 =?utf-8?B?TlQ0NXFVTjg2dWZNU1RXMlBsMW5pZTBXMXhEdUZNNWcvZEp1dEU1WHRJME1x?=
 =?utf-8?B?dFlnbGpVa29rbXlqcmNzQUZiY0pmK0ZIdXdKc0hyeUh2Q2tqQ1pMUXk5NEd3?=
 =?utf-8?B?RzZ1ZUExM3dRRlNUNHg2Z0hDaE9jYTRKRXp1SmYyd3pkd3NaSzNzZVhtNVVB?=
 =?utf-8?B?aTVtc0xZbGNIV3lLTkt4bm42QUR2UEdSc2R1YTQxSTZlTnNwcFBQTi9xRFZ1?=
 =?utf-8?B?c1gySXBxK3BWazkybmxkUGhLTGVvMDBXV3c3eWZub0o0RkxzYzVucmwyKzZK?=
 =?utf-8?B?ZEY5aUtYbDQ3aExZVXRSOVhwQkZXVEZ3M0lQNkppL1NzZFVPRDZwZFBsZTBD?=
 =?utf-8?B?TFIyNEVkUHB2S1UvZ0RZVXErYlpqRnhXdGM5WEQvZ1hkRzhOWllvY2VhYWNl?=
 =?utf-8?B?L3EraDlJKzJSYU9WRWRwY0JhazdmdUVaSWlWRFRROGUwYWt2a29qL2o2N3ZG?=
 =?utf-8?B?NXR1Y04yWG9vSWt5YUp2YVlPTVdBVlFXcC9jNUVkTWNLN3FqdkVjVVRYcWxW?=
 =?utf-8?B?U3N0aXRvcUNXakNxRVBDMzMxM29MYVhnZE9MT1hQSGhyZm1ac1NMRTNJT0pq?=
 =?utf-8?B?QzlEOTlINHJRblBYQTlsUE5qWnJtVUlabHBENWdaT2lkcjRTQ3M1KzA2aGt3?=
 =?utf-8?B?MlROU1NnYWhZTDY5Mldyc1kwekdSMEg1UUJyZkpLQ09XYVF5TlpWWjhlb3NT?=
 =?utf-8?B?WE9hRUZIUDF5RS9tWUFydWVqLzJPU2JQOXVUeVlyeXEzYWtLdkVwcDF0bWp6?=
 =?utf-8?B?VUJNR1pQRTdtaVYvU1AyU3djTzZQZU1xVk45SnlJSUtrMGpHNDNRK2ZwbHdU?=
 =?utf-8?B?NUdhdVNiZTY3eUtvS2NCbm5sWkRWN0VPVnVWQXNFM00yaVo2SUdIenlsSWZE?=
 =?utf-8?B?bHhxSTI4L1FaVmtTS1dudjZkUThYd0k1Y1ZVK3kzWUViSGdaTlBDU2N2OUdH?=
 =?utf-8?B?WjJJdFFaVFFRRjZnYnNXVy91REtFTlhCRFB4Sy9lTTVhbFQxSDFETDF5NERF?=
 =?utf-8?B?Q1YrVDM2UWJvZVp6eWFNb2FLK3BtZmpHa0JEOGZhWVUxOHN6ZW84aHdSbkt1?=
 =?utf-8?B?OTk3T1RLMFhNSnZaUENJaFB4bXNrMEFSL09memo5OWpjbk9wbXZhWCtLTEY3?=
 =?utf-8?B?NzM3dklscVFBVkprN01vVUlEN3R2T0VKTVBEbGMwck13cURzeGVMY29aMkVs?=
 =?utf-8?B?QXk4aHZMM1JoNWhZeTdxMFQxRDZ1TUJwL2haL0hVb3pMcy9vdVcwSzFXeUpL?=
 =?utf-8?B?RWRuZ0ttQ2hwVWRlaER3NVhOaHo2ZlFrZnNoSDdhVFpscWJZbXhCYkV3T09D?=
 =?utf-8?B?cmtpbW1NTzMxTUxUSXRobG1oUGtRT29xcjRCUGlYQVpTSU4rb1NrazhnUDJH?=
 =?utf-8?B?TzEwYm0zeXJRSXp6dk1vczhMd29Wdmk3ZUJKZFRpL1o3eWxnRVZvbXVtVU1l?=
 =?utf-8?B?S1FZek1GcUpTcDJPb0c4WmVYaGRyTmJCT3B1WTNZREhINitweEYyZWFoNW9B?=
 =?utf-8?B?Q3k2MWNCWnBjSUk1S3BocVhpRDZ1dzlhN2c4ZHVIWmpSNXQ1RjkxZFRBOEZY?=
 =?utf-8?B?MTd3YnBGSnJzZTRMVTdjRU9TWnVLYWk4OGZPYzY1Z3VaWWlnUHkvdjFjVzU2?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27ecb8fa-ed2b-4cb1-81d4-08dd7c62ae61
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2025 21:15:43.1892 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fZlo0SWqmLbKWUaz+y5fhoKCRS9bNZpZBW8lbz1MneTp0bg/P6gIyK9ciqlhpY65A0cNP/VQaCwRmZg5YvoHwgycZkN0lfmtmGtL1TZFa5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6297
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744751746; x=1776287746;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lA7ZakfoZ/Fu4ppxjOiAMXwaNPAlYhZ1FJsAz8ue46g=;
 b=JqVf0kTMdeqF6rEXpf7IB6ftsotc5dpxocJxFY9WglmA/dvW8jdHrDd9
 vtfVy4uRA91Tbqrh6WzzZEfawpAM/MyshX28ObUbOYrkG6MJ5NdSsEqiM
 x6xrr3SgjzLZVBxE5NpyxsdQizCSeLiQSYm5IySAjZUVMEAMK1XvxCZWS
 BK+SzliRjSrhcLydA/2mPNUyzdVKh0n3gCRxhKO85boeXi3YACXwgvvWc
 fcR/nFIr3rlx4tffjqKA84BNfiix77vZIPceUvp+Xt1m+U15xA5Rosaa3
 dn8IXtRE6l3nOeCXkmi3jfAGSU1NB7FOHiVCkEVW5w5FpRJFzUuB0iL7q
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JqVf0kTM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v11 iwl-next 10/11] idpf: add Tx
 timestamp flows
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



On 4/14/2025 3:45 AM, Milena Olech wrote:
> Add functions to request Tx timestamp for the PTP packets, read the Tx
> timestamp when the completion tag for that packet is being received,
> extend the Tx timestamp value and set the supported timestamping modes.
> 
> Tx timestamp is requested for the PTP packets by setting a TSYN bit and
> index value in the Tx context descriptor. The driver assumption is that
> the Tx timestamp value is ready to be read when the completion tag is
> received. Then the driver schedules delayed work and the Tx timestamp
> value read is requested through virtchnl message. At the end, the Tx
> timestamp value is extended to 64-bit and provided back to the skb.
> 
> Co-developed-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
> v10 -> v11: change timestamp extension algorithm
> v8 -> v9: update kernel_hwtstamp_config when timestamp mode is set,
> check link status in timestamp callbacks idpf_hwtstamp_get/set
> v7 -> v8: change the type of delta calculated when the timestamp is
> extended to 64 bit based on the device clock value
> v6 -> v7: change the method for preparing flow desciptor to set
> tstamp fields to 0 indirectly
> v5 -> v6: change locking mechanism in get_ts_info, clean timestamp
> fields when preparing flow descriptor to prevent collisions with
> PHY timestamping
> v4 -> v5: fix the spin_unlock_bh when the Tx timestamp is requested
> and the list of free latches is empty
> v3 -> v4: change Tx timestamp filters based on the PTP capabilities,
> use list_for_each_entry_safe when deleting list items, rewrite
> function that extends Tx timestamp value to 64 bits, minor fixes
> v2 -> v3: change get_timestamp_filter function name, split stats
> into vport-based and tx queue-based
> v1 -> v2: add timestamping stats, use ndo_hwtamp_get/ndo_hwstamp_set
> 
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
