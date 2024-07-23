Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4EC939BC8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2024 09:33:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0DB9881225;
	Tue, 23 Jul 2024 07:33:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EUIci_CK_ryO; Tue, 23 Jul 2024 07:33:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2BA7A811FC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721720013;
	bh=0WLhlUHF8oRpAS/s73nKSwIKwPvPIlKpn6CHHjJdzHE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z3qoOj+dv0eHYLFPPGHG7NrMgzRVxEvbcxHVd6jNSFu5fiCk7uObmAyT2QrrcOtR4
	 1jSZ47RoTpqXY1qjPU46HoprHRmqx9J8Yf+9NKwo+zIKQNIBJOQebpbDCvTxfnBo8o
	 pXqCOyUvlSoO6w+KJhmSPSOp0zpx+WQGFl2c0oAw+ikW21Lq8YQ70VDBXw2RtVkQZM
	 w3pAT/2Hgvz3o3SEOxpWzEsLRCuzVv0WtD+KuOUsxKWAW1gsOZTH7r7a87ySuH7EFi
	 ZqO/EOeppRHa+fbSCdb6qPEKyp9E6HMz0W+dJK5gU0vunnx+MzW2+WMdEsaA+23UEe
	 xb3uxtudVc1aw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2BA7A811FC;
	Tue, 23 Jul 2024 07:33:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D4C781BF296
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BFE9581206
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3lb5oNk-JvF8 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 07:33:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E8D40811FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E8D40811FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E8D40811FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 07:33:30 +0000 (UTC)
X-CSE-ConnectionGUID: n87rAp+0T1K78DfWuCv/jg==
X-CSE-MsgGUID: +Li2MEouS+W114r5LMcZkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11141"; a="19028798"
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="19028798"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 00:33:30 -0700
X-CSE-ConnectionGUID: t/BCmM3cR7OAnFI7QLEdTg==
X-CSE-MsgGUID: OfdAANTiReKWC/KAh8mLqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,230,1716274800"; d="scan'208";a="52890995"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 00:33:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:33:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 00:33:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 00:33:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 00:33:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R4ZfdgSrXbZiZG7Qu7+gy3/HwTDp99wlJOr1JZE5UecMegbp/v1KOvo3Uxdhk/kKWmhEoUkhYUoHadRk4hoeVjwz2K1wAyA5OVtgMQeOdtPU/TRLFJ4OeSXG1VFrz5HFEk4vq71pgPqmFbny4cx4Zd+n0ymnBx+D40xqle8aHgoloH+DP4xlxE56sUw57mgfywSWuyyZTOD6ai+puZSBL6U2dn802HxCjME29/pagd1u1DL5FQgMaeZCH5Gqv8ALV31cBA56bT+ssn3sYNmoaxlLtoBHVMw60SkeWtUxxV3gCmN2Z1gkUvrebFADEI/p1ODUO1PvjM5icOZLXXNCiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0WLhlUHF8oRpAS/s73nKSwIKwPvPIlKpn6CHHjJdzHE=;
 b=ryjxGwmKU9YD81M5GdpKuz4aqt+DJCBS5x4hJ9MjGSNn6ZmwTGEtBcfLBM+dqpyAuhxRKzftQ/gE3dog2gyY1Y/NbQtk2iO03SOuVHgSFmzcxsrTATg7MAaOc2tQt1kJG+LyBkGxGWhIHpKzfKGRR6bMiGuB9Ja3rTO5fOp/iqc4oPIDykfzkneNSoRmtnfxx/iTkulTgoQNNB8VmTc8Rmqd40kEjMj6zRtGTLYTZ4bBzeHji2zCg0xs7Pbep5iunZrDKthQi7fuYF0U8Vzi4XakFh58jCDywadbQr1yJYsueSRuA4IOrkQp426O/ZFV3h/tlI7XaqAvUx2MuqK13g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8)
 by SA2PR11MB5113.namprd11.prod.outlook.com (2603:10b6:806:113::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.20; Tue, 23 Jul
 2024 07:33:26 +0000
Received: from SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a]) by SA1PR11MB5803.namprd11.prod.outlook.com
 ([fe80::e976:5d63:d66e:7f9a%4]) with mapi id 15.20.7762.027; Tue, 23 Jul 2024
 07:33:26 +0000
Message-ID: <c979896c-f281-4d05-bda1-4d172597b69f@intel.com>
Date: Tue, 23 Jul 2024 10:33:19 +0300
User-Agent: Mozilla Thunderbird
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>, "David S . Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Jesse Brandeburg
 <jesse.brandeburg@intel.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>
References: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20240625082656.2702440-1-faizal.abdul.rahim@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0010.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::8)
 To SA1PR11MB5803.namprd11.prod.outlook.com
 (2603:10b6:806:23e::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB5803:EE_|SA2PR11MB5113:EE_
X-MS-Office365-Filtering-Correlation-Id: 041df91d-cfa0-40b1-89e9-08dcaae9bd61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2ltcDY5MXVlWXVOT1hDZ0pmV2EySit6dW5RWVlTS1FoMkdKSnlmSUhsY3ZB?=
 =?utf-8?B?YmZpSG1HMGJQMFRCZHIyeGhKdFI3WUVyTkpGZFB1b1hCVkw1QkVRR3p2WTFJ?=
 =?utf-8?B?eTI2YXhiZFJMdlhycWdKYkYzaURYL0RWZU9KcEZyRlM0TDFKWnhyMzZsaW0z?=
 =?utf-8?B?M1c5c0sxVmh1YWM4NzdyZ2g2ZmpwRHBlNXE2eElKc0pKVDZOT3JjTk9JV3RG?=
 =?utf-8?B?NVJTbDhwd21nbkp0SElNVDBWTjRMNE9RS0FWZU1UOW9ueVVoVmV3NktEdGJy?=
 =?utf-8?B?dVJ6WjFZUmgrSGZpUUZsU1hGdGJzdk1xUHNjbC9VSzV5T01NVVY2Qk9CR0ZV?=
 =?utf-8?B?eEt3VGtnSkkwT0hZeDY0QkphbTNvWi80dElyenFmM1NTM1JnRS9taDV6VWQ5?=
 =?utf-8?B?ZXFSYTlYMWp3WHpuM2hyRlNLZ3c3RGpMeFNrM0x0SXJueUh1RlJJdnpxY3JF?=
 =?utf-8?B?SzNxN0drYWM5d3FOYWZRSTRzamZMYlM0RnlnNnFKN2xmWFozMEVXNWp5VitH?=
 =?utf-8?B?bEVkdXFTa3pXQUdUcGFoNEd0MERHZVhMcTBwU0ErRUlSV2FYdzgwdk1ZNHFK?=
 =?utf-8?B?Q1pJUFZEc1BGdEhQVFNneHNjeU90SmwzcXByaXViNDBvYTNCZ2U3OWhFYU5l?=
 =?utf-8?B?QVBMb2FYR203QllGK0h2dWtKSG9tNlNLM3pYNURWaGk3WlA4OXNHb1ZCaUhI?=
 =?utf-8?B?V1FrdXRGalN2cmJsVWhRN2E2ZmE2cFJKS3Z0YjNLak9SWFh5UjA0N3lKVkYr?=
 =?utf-8?B?OFZ4VDhNRE9hRFFTK3pHSk53a3M0WWh1NWJkZllXU2o4ZFRzSEJJZlhaY1dE?=
 =?utf-8?B?Sm8rOGc2TjU0cGU1MG91OG0vTnZPM01kY1dvQWVvOUV6eDkrUjZlTUo4dEoy?=
 =?utf-8?B?d0dRdmRuU25tVXViTkdoY1FQMUQrZ3hwV1BrZkw3clR6akF4eGlsaEFpWit1?=
 =?utf-8?B?WE0yRVQxQm1ZWG5iUkVKN2hSaUd2T0F1VEM0ZTd5Q0h3N25jTjd1bEJkeERP?=
 =?utf-8?B?akxBVWFJTThlcERjbmVQWnZMYVAxM05nTEFVZ3IzODY1NGxGSE1DU3lsaUpz?=
 =?utf-8?B?TEphY2pZeHRBUXpKdGdRY0VwOFF1NEdTMXE0QVlpYk1IL1ZmSklXN1FVejNR?=
 =?utf-8?B?dEtMQWI3R3d3MG5DS3Z6RHhzQ216RlM4WFB0TndURHV3UThad2RRU2NqdUFZ?=
 =?utf-8?B?cktldy9teXRodkpwOUpLODIzSlNQZ1RDNUx3WWhyQkZIM2NneGFHSUhQTzlz?=
 =?utf-8?B?dG8rNzVRUFNJOHJHcHBNQWhPZHg3aTZtMVdsWHhMRm50K2cxd3VuclRpQWdV?=
 =?utf-8?B?R0FkSDRNMmpPaGhqMEVHUGJZOE56TzdqMVhtb3R5Y1gvYTV2VWMvZ1Q4WjVk?=
 =?utf-8?B?SVJBRmNKc3dwbWtlb2xOUkQ4TXdibUo1dVNnaDBmenNzQ0g4dEhYOFlLTWtK?=
 =?utf-8?B?Rm9pUzBlWEFLVTNRMm9uSVBWKzh6NWNpZ0R0MkwyVmFpekdUVVhKMkl4bnNX?=
 =?utf-8?B?TGZORUhOOEdYZ0xMUnNaUERiNmJOOG5qZU1rTzdyRXFLSW54R3ZiTENCK2Zt?=
 =?utf-8?B?WUpnbyt4cm1PRDdLZkRNU3MrckhyNDhBMTJ2TlMrTGl2TmxNUXI3VG1qR3FQ?=
 =?utf-8?B?bHdaRFZ5YzZvQ3NLaVYzOWdWQUUwclBGdHN1dEVVVHRrekVBMUZYSTZsd09H?=
 =?utf-8?B?NXhzakc4c21GaERqYTVUZndsWC9BSHhiMDllVFhvNlUwdm1wSFBVdXJkWHFC?=
 =?utf-8?B?S0V0UEJiQnM5YjEzT1lpYzc4U2NERWdtck9ubVh1ZVJUNWZtdjF0clpJUDlM?=
 =?utf-8?B?RjVPclMxVEtYTXZITDhjUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB5803.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnVIRzdsbkNuYTlTUlVoRTVzMEphbzk4SGE2a3QwVGhUbFdvRm9pUUF4WUtv?=
 =?utf-8?B?bEF0YXFwaUpNVjJVa2JZR2I0akw2YTVPTHFSNGZlUkZndGZBdEk4aXpMVTlr?=
 =?utf-8?B?QjBqaGRBN2pmQWRQZHJQWG5WQVY1Z1VyYjNDVFlxaGFzOVY4ZlRaaURrWVU5?=
 =?utf-8?B?YkQ4Qk1wTTZ6VEZVNlZvU1RXckl0cHU4SkxJdjcxNllESVpGejJjekp3ZGkw?=
 =?utf-8?B?UG9QZi91QXgxdjhxdDNxNHMrMmZEeStiQTl2RzV2SnNaVFhHaVo4ZGFOY3d0?=
 =?utf-8?B?cnEvSEVCVEpsaHcwbVBVQkhhMU1hTWppM2Nvc1Z4WktQMkY3T1FZWTRCTGY5?=
 =?utf-8?B?emtQTWZRdm1XYXo1VUR2UW5hK1QwM0NCeTMzTW9hMktzVWpzL096a29abFkw?=
 =?utf-8?B?c2R1VWZNV1VhZVZFOGxDdnNHMVVpN2VWSVl0WFBKV005RDltYXhEWjR6QjU3?=
 =?utf-8?B?UEM4Q0VMWWx1YlJpYVFCNndvZEtyZjhGTkNUQThEK0RweDRheXRZQ29JVitN?=
 =?utf-8?B?QW1DMk4vUzRsK2djZitmS3ExYnk0SkZxVkUwVnA3YjZqOHlNTlhvSmNXQm9p?=
 =?utf-8?B?cWMvbHVvYkk4SlRBM3p5L1RhdUtyRXRWSytBdDI1YzRMUkRtMUxsb1hRTEhS?=
 =?utf-8?B?UENNbzgzR3l3RjdNN3UxZ1I2Rmo5RHRrUnhNMVY5SEJhdG9mWUU0dmxVVVcx?=
 =?utf-8?B?OFZ6Z3BKOWFsdFJvV3FWUGJORmVhUkRNNmpqTmYzajdXeDZlNWh3NExOT24x?=
 =?utf-8?B?ZmVhQWpOcG5NK0hSbktjRWVkY2lDMStLK1hlVm8ycVA5ZGFTeGtpMm5uRzhp?=
 =?utf-8?B?bWh0UVBHYmxUVDkzREVIbW42K0pldmQzOFEwdDJxOXNWOTRVbFN6WGNJL1Fj?=
 =?utf-8?B?OC91RjVSb2ZrYlNibmMrOW1rMXJKemJaRnBXQ2xrb3REdGpwKzY3czMyWDRC?=
 =?utf-8?B?S0I0cURuamlnMGtmMS9kMm9SL2Z1WGtHbWdGRmxvK3VzMWcvSko5cjBWMjhj?=
 =?utf-8?B?YndiQmhlS1dJWGwwSWRmQmNMNWFWc1BCTVNLdDNhL20xT3J3d2ZCUHRWTUpK?=
 =?utf-8?B?czhtRWhmTWQ2aTQwc00vRlZkZUVLTU1UcDVjT0pSb2hlenQ3SElsalpXRURt?=
 =?utf-8?B?cXJGTkpuMFE0U01yTmNFbVhDSUtYeExZcW5SZVlycm5mVHJNNmlMQ2RhekVZ?=
 =?utf-8?B?enJ6cWpGbTYvZTFnVVN4NXB6MG82UklCYmxsdVFiVDRaUGtobncrZUdndFBM?=
 =?utf-8?B?UEl0YkdwTjdIdXZ4dUJPYjMzV2toV3FPTXMrdXAwdjZCM2dsUnFEc1RFR1VS?=
 =?utf-8?B?ZDNwK05mczA5WmdBNVN4QWZZdzZDazd6bW5MZ3JreGdiV2RtbExscTRHeW1R?=
 =?utf-8?B?WjZreXk2OGphejFlTDQycjlia2RIdnNSVmUzb1JUcE0rWXFtMFU3Y2Q2N0Yz?=
 =?utf-8?B?bTQ0NFI2bHQ3THZVMG5tcVFIZVlFMzBVSE1TbW9qamczT1BWK0ZvSGpiQlha?=
 =?utf-8?B?bTVOYVBzUVdIZHYwelpnN2FJemNtdElwcmdxRUxsVHVidnZZTklBRUNzcitl?=
 =?utf-8?B?VExNYk1wa05KaW1GVW1BS2J1Z1RjRDBiQnA2MTJld0Q3NnljeGhBUERwYi9N?=
 =?utf-8?B?Vk9rUGZJZlBtZm04bGlDQ25KYi9zVHhlVm1lVkI3ZDROOVRMczF3Y2RmdTV5?=
 =?utf-8?B?cFJSejNvekNlUndmRDFvQnFjRnVwYms0Wis1K0UzaUp2Z1l1b1Q4Yk5HRXJ2?=
 =?utf-8?B?bm0ybnZrWTltekFxTGIvakRQaXA1YjR4dlAzVUl1VmRnNFBJYXZINWw1bjRz?=
 =?utf-8?B?UWloNGorVU5nMjZ5a3hsT2lQUk93bFYzM1JEeFBvN2J6ZnhPWklGYXErUWI1?=
 =?utf-8?B?alNaNFVNaEVJSmRsR1RFa3U1OUZYd29tYzJMelllYkk4Qm9aRHZybVBJUjhC?=
 =?utf-8?B?QU5JWFFkQVNDSUUwVWgzZ1B6R09tUmpsY3FSbHk4NlFJQWlTbVhsUE5uZjls?=
 =?utf-8?B?OUFoWGgyUWd4ZGYyalBBdGY0aFI5alQwbXpWUU9Bb2ZaUTc5and5MjlGeDJ3?=
 =?utf-8?B?WUNVU0ZNdDN1akd3ejJyN1d1OFFXNFdnZHNndWFWN1JxcWFqRHlZR3JVamlL?=
 =?utf-8?B?cUt3cTJkQkptZjk3SHViZk5WbFRxbHBuS3JKTEZBZlN1L0ZMVVQyMDd1bVd5?=
 =?utf-8?B?R3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 041df91d-cfa0-40b1-89e9-08dcaae9bd61
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB5803.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 07:33:26.3570 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RJ7Hj/r92F8beZRJ/BW1dVXV9R7rVivx6u9VufGFTCOjqDLyx5FUexfZACnKaAsaPPCA2IPqjoKfwGZLbvSw2AVIVpmenLco6iuu4qB/1cg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5113
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721720011; x=1753256011;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Hex9szuY7HnoHC0gM3CW5z/Mznvd3mtNbI6eQUUOKdI=;
 b=Jq9uZ26D4CA4R7A5dMfvRlFnnmW/fZvoEiB+3nR9N44ALV0cOXEZGl3E
 6UtS20z6u9SMT50XaIP9mGrK6CMYge8A6lUrcLmhrc8tQuscWM38iDWfJ
 9q4ZhL+OGpjrynzjXdnaCWpZJ02Sv8pNL1dn+gsDbfmG/PLNwoxVUIxaT
 5L6YtzuzXQXJEbeRNcqPuUs84gR8dRWF2dTa57QDmykpMOowsNX0hwrDB
 yIWyMmWWc6oTkzzwt46cwMF03+CeobGa7QpNzl98TN+9CHTnM3ChPaoOI
 brw2c4XDelhIpnwgYOBC9XV0NC2aDrXk+n55/QOraUL67+DhZkFnD6XYZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Jq9uZ26D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/1] igc: Fix double reset adapter
 triggered from a single taprio cmd
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 25/06/2024 11:26, Faizal Rahim wrote:
> Following the implementation of "igc: Add TransmissionOverrun counter"
> patch, when a taprio command is triggered by user, igc processes two
> commands: TAPRIO_CMD_REPLACE followed by TAPRIO_CMD_STATS. However, both
> commands unconditionally pass through igc_tsn_offload_apply() which
> evaluates and triggers reset adapter. The double reset causes issues in
> the calculation of adapter->qbv_count in igc.
> 
> TAPRIO_CMD_REPLACE command is expected to reset the adapter since it
> activates qbv. It's unexpected for TAPRIO_CMD_STATS to do the same
> because it doesn't configure any driver-specific TSN settings. So, the
> evaluation in igc_tsn_offload_apply() isn't needed for TAPRIO_CMD_STATS.
> 
> To address this, commands parsing are relocated to
> igc_tsn_enable_qbv_scheduling(). Commands that don't require an adapter
> reset will exit after processing, thus avoiding igc_tsn_offload_apply().
> 
> Fixes: d3750076d464 ("igc: Add TransmissionOverrun counter")
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
> Reviewed-by: Vladimir Oltean <vladimir.oltean@nxp.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_main.c | 33 ++++++++++++-----------
>   1 file changed, 17 insertions(+), 16 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
