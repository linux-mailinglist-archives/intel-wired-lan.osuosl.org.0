Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA409B3ABB4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 22:34:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 014E861145;
	Thu, 28 Aug 2025 20:34:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cQSEju4b5EuX; Thu, 28 Aug 2025 20:34:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C427A61147
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756413261;
	bh=0Bo/cJsBT2GiUBp2AcCX2/dUMtEpRDfQtItxSR57NFM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mHjN/Cq7tpM7IJd0Sqx0Y9ucwBH3NGo33P5JUcMolW2dS35NB136ix01jEEyL6jre
	 8zeE2AIuqlH2/RypRR34IKXKpxcdwUf748lSl9TcxRbPupR0tSlUNC86T8ZTj3H7PN
	 64GTTsEE88r/UxerJiIc2AMw0/a+6ovNMa1VzB+KGAuJSoBz3bpvHPAtYLjXGpJZ4Y
	 n9iX0pD45ploi7l84o7UhLkHZqjeLYxv67WUY/GsJPATZz7Q0xq4bsCqng1t4u1LBZ
	 fHDMMSdehvPFwwp9K4NSp5mAgd1Z1SUaEORqC0RT+H9dK6R1JXdG2LUQkDUfiOEW47
	 69mq1T/MYvFPQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C427A61147;
	Thu, 28 Aug 2025 20:34:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3AD14928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 20:34:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37C4240AD5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 20:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kxHnxbW3teVW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 20:34:19 +0000 (UTC)
X-Greylist: delayed 428 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Aug 2025 20:34:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 215F640AA6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 215F640AA6
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 215F640AA6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 20:34:19 +0000 (UTC)
X-CSE-ConnectionGUID: FcePB4ioTL+nuLTskIr2WA==
X-CSE-MsgGUID: qnyehfFDSribDhRX4PJxJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="69790994"
X-IronPort-AV: E=Sophos;i="6.18,221,1751266800"; d="scan'208";a="69790994"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 13:27:11 -0700
X-CSE-ConnectionGUID: UVIE2oTSRk69LyNXuTOiPA==
X-CSE-MsgGUID: tvgsaHLiSBWXlDVUA0e69A==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 13:27:10 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 13:27:09 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 13:27:09 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 13:27:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y06+wNEUJQQ+1sAUPM2dRTh73tw8uOSUc+ZEw9OfVFoebSM6yGpsNcvJ4qTt7Xyo8uNkCq4KDxusi8lpx96dEqgEnAZNLvQJfY+TJvQNyjMNf2sVvUaLNtGlItD3nzfspRUjxz5/UqxaU24rp0zwdfbGoBYmSccY3mTutU497QGK1En2qq5AFwO/qdJTOh6NQObHoMyu6EzuDCya4EUT7A+Z3Sl1hFjRJdd3CZ4DTDID5sq0aQOuniXQZiBT2Rx3UX9F9tw50XJwl8Qj2+emJwOgfDLjIRO8r4hUm74hBqW5xhfY5zo5h/3/zXiDJ0nxrQpSEqBiXZGiN/1ZxhI/mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0Bo/cJsBT2GiUBp2AcCX2/dUMtEpRDfQtItxSR57NFM=;
 b=FC5V/jOmvRTn8BTxuepz1wf5G4z0AXWiecGDVCjpkd5A2PXyEzynjYKCWbAbu9D8bwMf9pP4+FDsMIfy2R6moGt5BZudbP7DpObtHRhYVGOPmd3w9mEcti6zF6QmpViTZAwya2+QPjOwCcYB4W53EP1Be56MI5OL7r/QY9UdWP81+XK4BpKKjnFCt24Z/hQEwEvXDWGA6NVHvrlEZkg8kKuwo55u9RZUQqPV5iMu7jS9g+Pg7POKtSiHTINkS5zZnZToocGhOxsEx+YgjrHOpZfVU7wjT47s/MF/2aAlau0pNHO2FRNLgdHdlOhF0jFGOVm+UhY2/bDTVapzaMONrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by DS0PR11MB7334.namprd11.prod.outlook.com (2603:10b6:8:11d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.20; Thu, 28 Aug
 2025 20:27:03 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062%4]) with mapi id 15.20.9073.017; Thu, 28 Aug 2025
 20:27:03 +0000
Message-ID: <1ced3c08-5b96-431d-8542-7e7b746156d3@intel.com>
Date: Thu, 28 Aug 2025 13:27:01 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, "Linga, Pavan Kumar"
 <Pavan.Kumar.Linga@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Samudrala, Sridhar"
 <sridhar.samudrala@intel.com>
References: <20250826172845.265142-1-pavan.kumar.linga@intel.com>
 <20250828104036.GA10519@horms.kernel.org>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <20250828104036.GA10519@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0011.namprd06.prod.outlook.com
 (2603:10b6:303:2a::16) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|DS0PR11MB7334:EE_
X-MS-Office365-Filtering-Correlation-Id: 606ff4cd-e213-48cc-d951-08dde6713fe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEdNMG84SmJvazlwYUQwR09ydnkwLzBCOS9xY2RCUUZodm5xamg2RXh2bG1o?=
 =?utf-8?B?R0tSTnRJZnZWdFhTdVBvTkdoTDkycWk2eUVtMm52emlVLytURFloaGNKbXRq?=
 =?utf-8?B?WE9LYjk3b1huS2xYTklEb3JuTHMzMHNiMFNjQXByNlpSZkFNak5nY3djK09F?=
 =?utf-8?B?dU40STE4cjJQaDZyZ2pSMlhLMjRhWEw5UFFLOCtiR2FMUzAwUW92T3cxTkpl?=
 =?utf-8?B?OHBucW1qQVQxd0JwOWVudWpmZlllM1hLZFZIYzdlQ05nRHRyWWVDb3NtNGF6?=
 =?utf-8?B?WDJiRFRjVG1DZWxHVVd2N2lkQS9haHJOTmMxcE00SUYvSjIvYUNIYUE0aEJi?=
 =?utf-8?B?c1JqWWVqVkc5NjVPQW1Sd3QzMjg5cW1hTDZFaHRVdFN2U2ZTdHRNMDA0dDRK?=
 =?utf-8?B?NGJCS1JLRkN5UENqZmRuYVV6bW43d2svTTBHa2xRVVI4TENkVWxrQUcveXFp?=
 =?utf-8?B?N05XK1pUNEtoeThkTFI0cjBkRnB4NkNaT1YxYUZhelVXWHV3TTUwNGRIbm40?=
 =?utf-8?B?aEVYS1hpK0prR3BESVRiY21qazdvN3RHdjNOT09kSTZCNUFsT0hVdlFTZjlO?=
 =?utf-8?B?ak5RTzRDL0JFMmNvYTFzSlRQeUlUeEVKejRzK3Z2VlQ0UjErSTJjekxDbGNj?=
 =?utf-8?B?WHpIaHhrOWtxUUZiM1pKS0FDRHJ4dHVBMVBVZmwyMmJCdldRZ0xNSWh5b2Zl?=
 =?utf-8?B?YnN4eE04TTNOeU9rSkQvTFVSdW8waG1WRUw4ZW9SUGExRDU5RnZBZElldW5P?=
 =?utf-8?B?T01Zc0dMUXo0eFUzYU4zUU4vUEt3bEtCV20zbkduOG5tRVg4bnI3S05SWGhx?=
 =?utf-8?B?RTZFK0ZDNjhvMS9BY01GZ0VkZjZQUnZOcnNBdnFJNmt2KzBaYXZ0Uy8yM3M5?=
 =?utf-8?B?RlpXTnkxWFNZZmxSYjkrMnYyYlZXSkdjK3IzeFk0V3dOblBnTnJWTmVWS3gw?=
 =?utf-8?B?VFVJWXB2eHZMN0tnV0NLQ05aOEsxS3lVOG03elVoMHRJWnZMT0I3TUtQSEdD?=
 =?utf-8?B?emFrbUcyejNoN3FFbklzeHVPT0lhbVRJYldjR0FqTjFtNlB3Uk9DdXlScS8x?=
 =?utf-8?B?WlYwNXVFend3d1ZNaVNWcStjcldpNUljYlFCdGZlaTZxOUFtd3g0M01qQ0sy?=
 =?utf-8?B?UVc2YUdrKy92WjRrb0JLcGprcjZVNWVYbGEvSXNhOThpK0YzRWZFakIwZWky?=
 =?utf-8?B?Z3FnWFlUckVFWFFxZ1N2TGtxNlg0ZFpyUTdpM25nY1ZQOVR3aWRMWi95Rkly?=
 =?utf-8?B?YkpOUElWL3BvSlFyVU9FRllESnZBelBQM2JFR2FGVEdTVUZORklWQm5rdldv?=
 =?utf-8?B?cHgxN2J3QnhYNSs3ckhRTVNJSEZtZ3Z0Q3pZdkFmUXhjdnpzNitjaVBqd2hz?=
 =?utf-8?B?UE84NHUrcTdBT3pBOFNzMVNuVkw1ZEV5c0hWdmtyVzNJVmtHRTdNTGQ2UkpS?=
 =?utf-8?B?ZkkxS294ZlhsNWhWMVhMeUVJWkVFTjk2VXNDNU5RZ01nUVgwVjNxTlpPa2RT?=
 =?utf-8?B?ckZ6bzlTSWppV2lwTkJ5a09YYjk3MHVwMms0KzlNTUxvbEVud2Q2V0JrM3Np?=
 =?utf-8?B?cDU4TjQ3a0RQc1E3R0cwek1pRTVSZHczM1hiQXB4UjJ4YU9XcXZYK1pEeDBv?=
 =?utf-8?B?MFJkYUhBaTRnQVEyTHVLWEJrR1lnRkdnS2ZMa2sxWUgybHREK3VlL2d2UlYx?=
 =?utf-8?B?bm83Q0JHeGhDQWhhZW5OdTRRVHY2dmtkQW1teUlYZWVRSmxnWXQwLzFwNE0x?=
 =?utf-8?B?ZUVNR3YvYXN3Nzc5UW50VmtBdlpGcWticzY3ZExJRnNhaVc5Q0UzMlYra2xu?=
 =?utf-8?Q?Rv6b03cCvwSIlU70iMVM6RbqML6sTG9wrzduk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmV0d0xCTUxvNkxBcXJ6VjlWZi9OaDh5a0drRk90eFhyM1o2NW9VZ3B4NGNm?=
 =?utf-8?B?R2FFSkVLQnE2dnFlazBFckxqekVySGxvSkM4ZnEzMHB6c2llVGR6ME0rWUVR?=
 =?utf-8?B?dmczSFJSY2plNTFWNGc4WnZ0dCtycHZDUGNaSng5ZXNEOWxVVmRiem1ZaStS?=
 =?utf-8?B?Y01POFBxTllrSzZOZGUzNzRnTXVwM2FjUFlBc2xGd3U5TVBQZUswWFRuUjZG?=
 =?utf-8?B?NXhKcVhkN2t3R3VTOGZPZlpSMWlHblVhY0xaWXVtVHhGVWZSR0M4Nlg5WmVn?=
 =?utf-8?B?U21KZy81b05hMTBESTl0UG1vSEVrejVIc2hwQWxtdTRzL3FGNnUrTkN3ZFVJ?=
 =?utf-8?B?UHFZOUtZMVc2WlFqYjBWQnFMOUpjbmoyczIrOXVrOXM4Z2l0a2JENGhSdmtM?=
 =?utf-8?B?UDZrYmc3V3BrMDQrYnByellDb1FycmVvWGNZWGxoRGczNW1qTHk5QXNOUjFu?=
 =?utf-8?B?YkJqNjBHWXdWdDlMUmw3dGZ3UEdRbjJySjlHMzZySit6OUEyMFdwbk5qeHFr?=
 =?utf-8?B?SFk2S21JNERHZHovOUs4RmRsZjhya2dIQVBRVHB6VU5mRzZVd3BqcVpIcUhN?=
 =?utf-8?B?K3RhcnFaRVJJR0MrSGxjM3hjQi9OaUVYN3FUNEVGSEhlSHFlbzJDMVZvQW9K?=
 =?utf-8?B?Sy9ieFdNTEt1WGRsZFI3dUMreGc4UEJkemRpNEV6c1F4MmVBdVBORjZWcVgy?=
 =?utf-8?B?OFdJYzN3Rkd2THdOTHJBalBuYURNd1NuWnRKblZNMkxlZG1pSkd3QXFsVlJW?=
 =?utf-8?B?N2VqUmNTMGI3TVpJUm4vZ2hKN2pMUEoxZGF3UHVDek1qQ1NBYVBGMEpYS3Bv?=
 =?utf-8?B?M2VtUzZTNStlMk9JSVlIeHJNN3FQWVRiTTBjVUZaV0FVUTcrcFIvT3YwMlhp?=
 =?utf-8?B?QlB1YXUvMEJlbm15RDhjcG9TTTFWTG1EYzU2M0cvb3NZaWpUVSszTktsMTZh?=
 =?utf-8?B?blRYZUhJU21kSS9Oa29DU2owSDJiV1llQXEwTlNuMVVBb0JqYnFEVXAxOTdS?=
 =?utf-8?B?SDNPbmZXN2J3SDl2cGczcklTU0hITTZlZ3JNY0NTWkttdEJtNFdEOWdvdjQr?=
 =?utf-8?B?dk1pN2RFbElSUzhYdVlYajhZT2dBa1U3SGlZRjAyMER1bHlSTGRWdWY4M05r?=
 =?utf-8?B?bVViMEZydlBaWUJnVU42MzRTTEM3NGpZTXZwQUNzOWJ3RUFoaEZES2xsM1hZ?=
 =?utf-8?B?akVUajR3Mjg2bDVrekcrSnRkV3FCVWo0WE1BRkVUa0J5bnRocHR5NW5rKzFB?=
 =?utf-8?B?TFVNWFBuQXVqSmxrYTBaVVl3M3E1T1p1REJaUHlIVVN5cTFPc3haVTd3Wjlh?=
 =?utf-8?B?anAreHlnWGlzQnYxUC9PbGxmczNxMWlUQ24vSGhzN0MzZE43aXdYRGpWWmhq?=
 =?utf-8?B?NzNXTnNxQi9yN011clFkMlZsN3RMV1NXR2RoRkVzYlNLR2ZkNGpwQ3EvWTFu?=
 =?utf-8?B?dW9OdVJXQUZoaHVCdFhnaUVsekFHbFFnSTF4N2RHUFJTSi9udjZWZ0xOejNT?=
 =?utf-8?B?SHk0UzZodFZmK3dBcDY4M3RQRFpyelRYQTUxTGpwVXkzbW1xRkxHK2p5cmhI?=
 =?utf-8?B?aGZFTVUrSU9GWWcvc0tuOHhTVHQ1YnI1YTVuQ1YxWG81R29ScGlmbDFoOHBQ?=
 =?utf-8?B?cU1oSkpzTEpUTkY0M3VvMzVvdGpJd000TzVOeEFWd0dTaENDM09waTNkdWJO?=
 =?utf-8?B?M2g4ZUlvb0JiYm0rUkNJSllHV2NuUXNNYlJubmJkeEFLNEFZU1NHVVEzaVlC?=
 =?utf-8?B?cys3OWNLc0pNbEVSL1hVNWVrRm9vblV0MXR5NkRSWXVRV3dScENlcVFhNFYv?=
 =?utf-8?B?TnR4d0RUSjg5L1JSSEIxMjc2UXZocHlNdzVSMmRaZmJpTmtVeUo4dGR6cHo0?=
 =?utf-8?B?blpId0FBNkdraTNlTTBiNHJEaWN2TU5TVWdRYXk5TDZmRkk2cit1d291T3k4?=
 =?utf-8?B?TjM5YjVLRWVIbHozSm11N3VsaWYwcG1XWFJPT3g3S1NhVzNwcEZ0TXNiTHhG?=
 =?utf-8?B?TW9CcFBXa3NObTFBbG9SYWl2bWh6V2tCNmIzMDgyb25MQmxXWmtXN2hiQlNa?=
 =?utf-8?B?a2FlYVhhQUQ2SGo4U3gwNlVtR1Z3NlF5bGtNYUE2TUk4VHA5K0JpWk1yY0VW?=
 =?utf-8?B?V2VxcHY5bXNTakk1NkJjRlhOVnEyRExLWmRyS3o4cU9WVmU3bWVWVEJPVVBS?=
 =?utf-8?B?M1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 606ff4cd-e213-48cc-d951-08dde6713fe9
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 20:27:03.5802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zgkgDKZM40yVJjG0wF+w4nFnRK2ln+IBW95p/BYLVpJV7Eu3qa/YI+A3ivsk/hxnr8kmG1HJjGUboKQI4GNi9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7334
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756413260; x=1787949260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=abLYiXdGL+vGjc1HmbqaWNqkhWYVuQyaAidHbplzVe0=;
 b=F6sFvxy6DU0I2H+nUJ3oP5cdz1Aos8p4ZAlB3Gog9EQBfYTlP3T0lWVb
 i3koOj5k3/kCiD3aFZi6WAG/ug7WfSolGx7pf6VSd7knmwFef5/QeXt3H
 l4omL28RGhrIJht80pHiBqcM0iiM+dP+Lg5sMxbvo0J6Q5Ak9FFFJtqr+
 Iny/elp3iSO/oDmx0KA7i+Ibd/MXWW+mgbS2VKuf61XCShI7fLTSNQiZZ
 AbcElgJqBkeu6FfqMG0BQBoE2PMwoRkk5PXYBXWw5eYbX5+Owj80X5Nw+
 EypbP4GZmDfD177hAmApMA8HP3uJKIje9Xp/a5d7cBB/kJ3nE5WhV46/i
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=F6sFvxy6
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] idpf: add support for
 IDPF PCI programming interface
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



On 8/28/2025 3:40 AM, Simon Horman wrote:
> On Tue, Aug 26, 2025 at 10:28:45AM -0700, Pavan Kumar Linga wrote:
>> At present IDPF supports only 0x1452 and 0x145C as PF and VF device IDs
>> on our current generation hardware. Future hardware exposes a new set of
>> device IDs for each generation. To avoid adding a new device ID for each
>> generation and to make the driver forward and backward compatible,
>> make use of the IDPF PCI programming interface to load the driver.
>>
>> Write and read the VF_ARQBAL mailbox register to find if the current
>> device is a PF or a VF.
>>
>> PCI SIG allocated a new programming interface for the IDPF compliant
>> ethernet network controller devices. It can be found at:
>> https://members.pcisig.com/wg/PCI-SIG/document/20113
>> with the document titled as 'PCI Code and ID Assignment Revision 1.16'
>> or any latest revisions.
>>
>> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_main.c b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> index 8c46481d2e1f..b161715e1168 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_main.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_main.c
>> @@ -7,11 +7,57 @@
>>   
>>   #define DRV_SUMMARY	"Intel(R) Infrastructure Data Path Function Linux Driver"
>>   
>> +#define IDPF_NETWORK_ETHERNET_PROGIF				0x01
>> +#define IDPF_CLASS_NETWORK_ETHERNET_PROGIF			\
>> +	(PCI_CLASS_NETWORK_ETHERNET << 8 | IDPF_NETWORK_ETHERNET_PROGIF)
>> +
>>   MODULE_DESCRIPTION(DRV_SUMMARY);
>>   MODULE_IMPORT_NS("LIBETH");
>>   MODULE_IMPORT_NS("LIBETH_XDP");
>>   MODULE_LICENSE("GPL");
>>   
>> +/**
>> + * idpf_dev_init - Initialize device specific parameters
>> + * @adapter: adapter to initialize
>> + * @ent: entry in idpf_pci_tbl
>> + *
>> + * Return: %0 on success, -%errno on failure.
>> + */
>> +static int idpf_dev_init(struct idpf_adapter *adapter,
>> +			 const struct pci_device_id *ent)
>> +{
>> +	u8 is_vf = 0;
>> +	int err;
>> +
>> +	switch (ent->device) {
>> +	case IDPF_DEV_ID_PF:
>> +		goto dev_ops_init;
>> +	case IDPF_DEV_ID_VF:
>> +		is_vf = 1;
>> +		goto dev_ops_init;
>> +	default:
>> +		if (ent->class == IDPF_CLASS_NETWORK_ETHERNET_PROGIF)
>> +			goto check_vf;
>> +
>> +		return -ENODEV;
>> +	}
>> +
>> +check_vf:
>> +	err = idpf_is_vf_device(adapter->pdev, &is_vf);
>> +	if (err)
>> +		return err;
>> +
>> +dev_ops_init:
>> +	if (is_vf) {
>> +		idpf_vf_dev_ops_init(adapter);
>> +		adapter->crc_enable = true;
>> +	} else {
>> +		idpf_dev_ops_init(adapter);
>> +	}
>> +
>> +	return 0;
>> +}
> 
> Hi Pavan,
> 
> I think that in Kernel Networking code the usual use cases
> of goto labels are: for error handling; and, optimisation,
> f.e. in the datapath.
> 
> I don't think this code falls into either category.
> So I suggest implementing it without gotos.
> 
> Thanks!
> 
Pavan is on Vacation, will fix it in v3. Thank you> ...

