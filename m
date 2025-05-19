Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 192D8ABB7D2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 10:50:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C45640BF4;
	Mon, 19 May 2025 08:50:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MwJlyHcbBzXP; Mon, 19 May 2025 08:50:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C208C408A3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747644613;
	bh=4WDg3L9NcTMsNr/4HPmzWttPIy36FhpSZ3OZxiuY1XA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mYdwSEC/RGqAs8GeKnw3Uq8GiugLIqIKulXNZHXtl1ZGA5CRyAjz0OCoHjD84T3RT
	 A68w//0DLmqoJOqSuvtE4m8l8Gl4928xfNvfC26pW+M/zD+fOBdexs1WMCqXuiqUwJ
	 JvyC+XTInXTTt8L0fIxb5pgS0OzIobKG4mdQTTPB0mAufD/RRC4lzrnevgWkSW0HD2
	 abhmtX1HRfRzVvQETtjJ5j4hlYRte5ejbqRIed+O34tlv5pdzfT5af0SSoZ+n0j20L
	 U80AoRTqwb2kYqDEZ/cZr44dZbNpEr/7zrQAzYEUqCqiiaFDoWa6NnsgkFT+p00Qr5
	 xnrBl7T3Y/NfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C208C408A3;
	Mon, 19 May 2025 08:50:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 4B845D4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 08:50:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 31F0860EAE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 08:50:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZmUGlBCEtwMt for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 08:50:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=anton.nadezhdin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 538CB60BE6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 538CB60BE6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 538CB60BE6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 08:50:11 +0000 (UTC)
X-CSE-ConnectionGUID: fIlLAAPaSNmzQgpqaBIJCQ==
X-CSE-MsgGUID: U9KyOIF1ToqcTnHVcDgWqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="48646753"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="48646753"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 01:50:10 -0700
X-CSE-ConnectionGUID: Sgwhbnt4S0aIySIY83Sj6g==
X-CSE-MsgGUID: uXSeL0l/SPWazsjoCzB+6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139149804"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 01:50:11 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 01:50:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 01:50:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 01:50:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WI33tJMS1czeIsxEYkF1aBWmMTSi6vKMYwpS6FCR6d+cDG6/hOw8yfQj+Y7f8DfMsFEQszatq0TUGSQmaqbAzy3Xj9EgOyZPazCUmGSJaCbSU2ikH55DJMvxnltwynDLm8dqgah2+ao77AG9icowfEqQGqHRnQctlptIj5V8dEmtqS6gruE+7w52oa9tetefYUVY71j1VwKkWtkHsS2qO0aICtQv/XnKaTn+4+mevPIrhhEz6luc3UrrKnePYP/hCuiMA1/63EAwEvjKb/ym/6CByIdw1XpiBLVHXM6YoYNxdv6gwhkB6Vy08kFicVfLydXAjC7npflNKdhgJaiuQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4WDg3L9NcTMsNr/4HPmzWttPIy36FhpSZ3OZxiuY1XA=;
 b=iHzlZF5KUlRYbu1p+Z+cEsl9ulNA9H8V4RXP1Erx4HZW1z8LUJyBYR+ev6Rju7Jy+sy+ah0KWq3dTDqL9s72BHtftVL/YVCnlsFHT8cCs9DxhfLPiqKmMGD25HZJlK2EmhEd2h2sVvR7yfnk4YLX+eqbYF4d9cOSbCfHRuDr52gs/d8YvExmMleqAokvlnLqe+k28SzUrpphAG9aSshDih8ntV+KJmeEiQh/+XyCOqC+9Q6djeQ3mfmqjCfKL3Phh+VguW3cF/Ae5LmAHpbE8FJMiRYsLXSPap1xt5/EurNJlDKic9lSOhj2qsVozaa+5myILAUWt9f7tSifTOz4Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB8152.namprd11.prod.outlook.com (2603:10b6:208:446::8)
 by SN7PR11MB7707.namprd11.prod.outlook.com (2603:10b6:806:322::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 08:50:07 +0000
Received: from IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784]) by IA1PR11MB8152.namprd11.prod.outlook.com
 ([fe80::c08b:cd53:5bd7:7784%6]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 08:50:07 +0000
Message-ID: <fd79126c-e823-4f1f-a747-a3688f79dc0c@intel.com>
Date: Mon, 19 May 2025 10:50:03 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <richardcochran@gmail.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>
References: <20250515123236.232338-1-anton.nadezhdin@intel.com>
 <20250516185827.GG3339421@horms.kernel.org>
Content-Language: en-US
From: "Nadezhdin, Anton" <anton.nadezhdin@intel.com>
In-Reply-To: <20250516185827.GG3339421@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR09CA0144.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::28) To IA1PR11MB8152.namprd11.prod.outlook.com
 (2603:10b6:208:446::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8152:EE_|SN7PR11MB7707:EE_
X-MS-Office365-Filtering-Correlation-Id: cb136c62-10db-4e9f-58fa-08dd96b227b8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzAyYkFjZk1lV2xaRWl2dXFINjZiQXMvV2YvcTdYLzVCc2hQR2lyUjVNNFMw?=
 =?utf-8?B?TEhFS0lUa0ZqUHVWbXZ4TVpaZnBhbGk1UGpSUitQWVVQMTluWWNCbzFwZUZY?=
 =?utf-8?B?UnBUWHk5ZStZcW9VL2NYTGhNZktYR2ZDTTJoemt2UW4yWldmNVJXeFVDY2ov?=
 =?utf-8?B?TGh0Z3oyS01CNHloTGJNSWRBSUhnd29nWmJpTVZmQmpBTVY5aHBqVVJ6QmYz?=
 =?utf-8?B?bFFnMDlVV3NHbGJGS2diV2FUeVlzNHRDTVZUd3VJQWlnZjI0RUpGQmhxMmhs?=
 =?utf-8?B?ZnFYbjZzajRoakZFc1I2c2thb2RhZDNEUVJxNmFmNWZyNFNSd0RpQTRVejN3?=
 =?utf-8?B?M210bHlldEpPbEZnMjN4c3Y2OWtoQWE2ZHBNejk2NTZrUXFRSXRtL3plbkJq?=
 =?utf-8?B?cksrbnVVaWVHSmdQNGU5V1R4NUJHRndtd1phcURRSjBhVlVIaElDN2k2WThG?=
 =?utf-8?B?dG8vSzQ5czh3Q3pEcXhZdmRpNzdsMjNUTUpWSDJmRlIyUzZjVXo3Zm56NjNI?=
 =?utf-8?B?NXhuUU54Nk9GTTRoN1lOZ3R5VkFNY0tLdWc3MEhvblhkQ1o5U3poeFRWQnds?=
 =?utf-8?B?VlFOb1NyTGdXSWFhbTgyRStNdHMxOXUxaCtCY1VxY2RMaGJmV3NCQjR3TDFT?=
 =?utf-8?B?emg4blA5azAvbEZseVh5WitqeWtwdDFIK1ZoYlczR1lmY3MxVjJWNkZZa3k3?=
 =?utf-8?B?bWptaVN1R2dTb2lxM3A2YS9BeC9iaWVLTlc4REZGa0ZRUmxQM0dZRlV3Mm5K?=
 =?utf-8?B?ZWIzVW12ZWd5SFkwWmhqbndhcVdrNkJwbmRlbk1XZ2V5bUZmSEFGTjh1aFBC?=
 =?utf-8?B?UmJXbTJuMks2UE9ENWlzYjU0N21kc0dMM0ZGN1FnSEkwRmdoK0srUTdXK3Vy?=
 =?utf-8?B?RFg0N3lqYlJMbE9zejk3cGMweXNSWFhKUWZ3UUhGSVF3SkRnVjBidGpSL0tw?=
 =?utf-8?B?VmN3OTd2UzljQkowbUxtVFRzNTJad3d3V3oyZEZwWEo1ZDBvTzhpSytjeFpX?=
 =?utf-8?B?Q3JGbVMreXU3V0xNWjRPKzF0TGVTUTNXTnBUQWJaTzduTjZpVFBZaEw1YUlP?=
 =?utf-8?B?OW1yQVhZL1hZZlUwVWdlQ29HK2IwTjRhL2tJTmRiWFZ6ZFR1V2NibXVOcFkw?=
 =?utf-8?B?QzBKcGNXbUtNbnljb0R6VEdKYW4xeC9JNDlPS3FUU2VKWlorRkRwT2crQ0tX?=
 =?utf-8?B?bDVFRUNNRHBPY3U2S2pscnp1Z2JoZ2psZXBqeFIzTFVPbGJYcnN5MVN4bXVY?=
 =?utf-8?B?YTBKK3UxTVJMaHpiNEc2Ulk4RWlYMk45YmdzcnZnZXVpK1lIa3k1RlpiVlU0?=
 =?utf-8?B?bzltUWdYQ2MzblhMMDVpaVdwbVh1Y3F1UU5yazdSVllqdkx4R2RVQzY3Q3RC?=
 =?utf-8?B?WUMrbDF5OUxwS2Jxd2R4ZXRQQzlQOUYwR3pibUxkbENSbmdKYmVFOW9TN2l6?=
 =?utf-8?B?U0Q1Mm14aGE0WmF2c2FDRzFVNXBkZGVwNjRNZ0VxWEdKQzhKcDdpbTArZllz?=
 =?utf-8?B?c3ZDRVdDUDdJb2FkTGxPOW5DeWF4Z2ZSWWFRNkdVZkxqaVUzMmZFMzRNczhX?=
 =?utf-8?B?U28reTR1b2RMQWx2TWpRb1o0K0tMQnlHVEo3ZEJWUkgyUUxRWUthZkdDaW5M?=
 =?utf-8?B?K2JFYUEvNWJoSVNtNiswYlFDMUxpMXg5UTdxMkg2bFhxYXc3TXRlSTZ6eE5N?=
 =?utf-8?B?eW84M3VGaHg2alc1K1hkV3hlZVdRK0Y5NmdPd0FNVVFyNFcrTkdtdDF4VWJa?=
 =?utf-8?B?OEdlbGI5eWNtaTBDZ283b2FtdVVJMS9VeVpmaHVwL0NZQmVUQmhhSktWTnVx?=
 =?utf-8?B?bU55SG1rblluQ2EwWjV2dXZ0WVFsNDRzOGN2cVZRWGVHZnpmbng2SmZXcTZl?=
 =?utf-8?B?cHBncWYxazJjY3ZNMEV6enJ1T1N4UWVzNkRQNVl2NHVzTUFnYnBaVXBFN1BH?=
 =?utf-8?Q?A44ztApJn+0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8152.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1d2SzloMlFBb2RFL3FMbDFIL1J6VE9oRmJsR2ZqQ3Z6am5xajI0c09XSDRG?=
 =?utf-8?B?cGhoNmpvZnZxYWZacXU2b0dpdkduNnJtbE4weVhtT2RCNUswTnRmUUxEWkRx?=
 =?utf-8?B?OGJzMVpMNXdrWkcwYnI0d1FYMXZpOE5kcDFyNUgva3FZSHJrNWxRa3RxeU5X?=
 =?utf-8?B?ZGtTZ1kxY0NTVU82YTZIRDRyeVBCYkgrbS9QbklYWTk3RlRibnlpQ3JPdEFY?=
 =?utf-8?B?VFNtNktJRVowdkZmUzhaRW9DQnJqWkZXbW1CN3lnWUFGYTB1TmU2a1FWeXJt?=
 =?utf-8?B?L2l1NjhNNk5lbXJiRGlCdjU5UzFNREk5ZGNSVGxSaG5McFdLVktLMjBZQno0?=
 =?utf-8?B?U1l6d2cxMTVqTmJkZDNwaXhJOEdFZG9kc3pjTjArWm5icmtrWm55aXRwRTB1?=
 =?utf-8?B?Wm1vb1VST3FUT1V0M1RWQ1lMYndXNVN5VkRidjE5R3FsbTZudVBPMEhRV2s5?=
 =?utf-8?B?MjF3YVdCTzRtZG1oRkxTQnZCOGVqaUxwdUltZVB4MWppMkR4QzdhdUZoWHRD?=
 =?utf-8?B?Y0hEbnBVTDJnYW91dHJYRFdDYy9rcElRaFpyeFRZdWVKYmZ2WTZNZVVKbHhu?=
 =?utf-8?B?RGRPR21MbnVkTWFRaGtibzlsUWtqMmQ5QWFwTFVFNXJKQzgrajlVUXpOazk0?=
 =?utf-8?B?ckpPSlN2eS9WMURHK2I0a1BQMmR0ZENJTXNaclhBbkZleGNDUHZQY1RuVVI2?=
 =?utf-8?B?T0x6OVZld3lwZmtOa3IwcHErZHlTUFFDZVBtQ0h2eXZxUlZ2OStTUG5BS0I4?=
 =?utf-8?B?Q3ZGdHhkVDdmS1BxR2k0RHpESnVOQVNLRlNWaW84d0JiSjFoaEwzWTVxL0Y0?=
 =?utf-8?B?QUdGcTdmSk9FS0NKTVlBTUFpV2Z2eG1tcGxhd1FFaE5xUjNvNXNrRWpDMXNY?=
 =?utf-8?B?bURaWHd3UURPVXhidnU4S0NKaWYvWUFlNWlnczdPZE0weVovVkZ5bllKQ1Yv?=
 =?utf-8?B?aWJ0bFZDUTN0UkhCaWFHbXNnTlF3ck56RTAzRm5OV3pVaWd0WU1PRDBUTUpn?=
 =?utf-8?B?WTZJWmxGbWF3ZkVnaXRBT05CTFhwWmovM3RjRFJIREo3dnRCOTNFRytoOWJT?=
 =?utf-8?B?TnlPYUljTnExNkpHbWtJVXg4WXptMml5MDg4MW93TnlBWitIckZ2dDkyTlpS?=
 =?utf-8?B?MW9weVAvTU9CM3UrNk5nN29uc09MdTREV3d3Vk1CVGlaWUVOWkFBMUZTenlU?=
 =?utf-8?B?U0RtQU5MMGJMLzhHY2JIdmhhL1BlZE5Nb3h2ZXlGZFpJb1dxNTZrSm5zN2Qv?=
 =?utf-8?B?bHo4L0U4R2hPcEFLbWdENjBNcCs1cXozQmpLL2g5ODhZdE5YSjhUaTNFV2ZU?=
 =?utf-8?B?MjlTcG9OU0VPa3I3YldHNDhYeHZqVzZtV1ptZU05VlJyS3J2ZFJaM0dORzVn?=
 =?utf-8?B?ZFZ2bUFteEU0QWRpM21JRmVaMDNsMWNjOS9iNFcwV09NN3pNUGliYTBjUERC?=
 =?utf-8?B?dGlZUFVIb05KWnQwVnFBM0VmdDh3TmZ3NFFJOXN4RkQ4MUlUQlNyRnBmelYz?=
 =?utf-8?B?cUNKYm9RSEQybDJWU1VpU1RuQ0k4OWVYak8yWlMyOTBZbjJzMDg1L095cXdN?=
 =?utf-8?B?TzEza2R6WkZRcGVCcVJzWG51dDIveHhwS1M0TEc0MkhIRWUybDRYYVZrUmFy?=
 =?utf-8?B?cm04Sm5aQVV4Y04renFDUkUyMDY2aDZMNmVGN0JaMlJ6K0FOaGljMlowbTdX?=
 =?utf-8?B?N2l5MmlZOTRVRFhDdUZZMW5QTG9PTkJSbXEzeERNTy9ZZ2hXSEdKMWY2d1ZL?=
 =?utf-8?B?NW9NZW5wNXpxNUtuQlI2R2xFZGpqSkhjUm9hNkVHaXNQQStCcThHQVhIRldL?=
 =?utf-8?B?UGoveXRRN0xBbmEzUDdYL0JVRlJNbU9wNG5WYlNtTXcrTXljSEdKSmlvRWc5?=
 =?utf-8?B?aUcxQ0pGMDdidWI3aTdxd1FlbnVkc1R2bzhyZU9GTmhvLy9ydm1tYWloVUJH?=
 =?utf-8?B?RjhhZy9JUDhwSWVhY0xxVEdEUk1lQlVPc1U1RzZaSVpWK3QrTVBybDVVeW5a?=
 =?utf-8?B?dGE4NzNIaUhQMzRQc21wOVV5akNLalJDL0l2OEl2NkNvbVZyMUh5cXFuMHdv?=
 =?utf-8?B?ak1kSzFIbmtaVTZ1UloxRUdUaEJJTitxMmVuamZXK2xqSVRZZG8weEF3REJO?=
 =?utf-8?B?YzhyZ0ROVnFiWThQaXJadUlNeW9ZbnI1c1poa1ZHdCtja295OXFUbGQxYzFa?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb136c62-10db-4e9f-58fa-08dd96b227b8
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8152.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 08:50:07.3516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lTFJz5JrHuuqgfbuzEPFQ9KfIx9hT5O3H8MWQuI8Q1LjUnKc5QpOjj21GrNQIBuOsZN/yvTkKE4hopzBrxAZldEcDreIrusTCpzBJfjkz6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7707
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747644611; x=1779180611;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W6dVKpSq8OmTLPDFQwIX2wpxLDTE8oJbzMm4HjKeUb4=;
 b=IAxWJy+DgdHxEEgdfa3gF7P0uBCrLFSBeDDEupPdq+snGi1LTKGK7OlI
 IA/pEDtcbrcLYNQUk314UUa1ylC0D2G6dVFUlYS2gj80gZIk/Qb2OxurU
 z9JpFyFsaX0JoGs21NQDayBE7GUHMoopx8TwjKO2+K6g4x0pHfbVByMnz
 D3xmH+WgOfa6Nv/BaZUVPltVna6f9kGXotwM3QLXAxB2kAJNxOqqfCzGW
 TcFadh0+BQiS8NxFfeATQA+7OizXr1d/yQClJs1RZ/kUaWoo0HrBzicHB
 rY2gjHErpTES0PvuOGhq2JjrgMm8Nk5W4bg81AH3XKcnf0TnY27WU39Gd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IAxWJy+D
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice/ptp: fix
 crosstimestamp reporting
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

On 5/16/2025 8:58 PM, Simon Horman wrote:
> On Thu, May 15, 2025 at 02:32:36PM +0200, Anton Nadezhdin wrote:
>> Set use_nsecs=true as timestamp is reported in ns. Lack of this result
>> in smaller timestamp error window which cause error during phc2sys
>> execution on E825 NICs:
>> phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument
>>
>> Before commit "Provide infrastructure for converting to/from a base clock"
> 
> Hi Anton,
> 
> Thanks for your patch.
> 
> I have some feedback on the form of the commit message, I hope it is useful.

Hi Simon,

Thank you for the feedback. I will go with such description in the next
version:
ice/ptp: fix crosstimestamp reporting

Set use_nsecs=true as timestamp is reported in ns. Lack of this result
in smaller timestamp error window which cause error during phc2sys
execution on E825 NICs:
phc2sys[1768.256]: ioctl PTP_SYS_OFFSET_PRECISE: Invalid argument

This problem was introduced in the cited commit which omitted setting
use_nsecs to true when converting the ice driver to use
convert_base_to_cs().

Testing hints (ethX is PF netdev):
phc2sys -s ethX -c CLOCK_REALTIME  -O 37 -m
phc2sys[1769.256]: CLOCK_REALTIME phc offset -5 s0 freq      -0 delay   0

> 
> ...

