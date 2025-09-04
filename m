Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA969B444FE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Sep 2025 20:05:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DA1B4056E;
	Thu,  4 Sep 2025 18:05:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 91gyHxsOrA9b; Thu,  4 Sep 2025 18:05:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 084D240595
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757009146;
	bh=b0WyQJiIlsblLKGI7irH3Wb9AWSA9a2hEc8m9pcOxPg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MgDviKWiG1OsoHUnzzhe53OX8/Hm++bYUtFRS4TImDySzYxAh72ozsXhaBqLperua
	 HN0oOHm+BsfC/ap5THamqMksHZp3MbKZSM/Ld4d7su6q1P3GXhjz9XCUl23nDP992F
	 6Kcp7COnKvJFUVn9VwXFNM/Cf7Vgp2kSrS8hAE5KSrB84OriFEIuoFlARrUkkDaBIx
	 qcuOzdwAOZKWVOGUmJIYmrskbz7ayEeU+6be03OClwtpHQThbmzDbIflmZOi1Y2vt6
	 PVhDnQ3W0OgILegYIxiBFwEKl8ee58TAQ+gJ/XidlgkTlpMyyqtr+AlGRwcbwYYusq
	 275znsw9/grbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 084D240595;
	Thu,  4 Sep 2025 18:05:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 7B2F2106
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 18:05:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 60ED640097
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 18:05:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9u7BslIbkHO3 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Sep 2025 18:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7432840085
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7432840085
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7432840085
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Sep 2025 18:05:42 +0000 (UTC)
X-CSE-ConnectionGUID: F6M3YQhsRQezJZaIu30b/A==
X-CSE-MsgGUID: 8kQXzY00Qpu9xOSoPNsFKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58395322"
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="58395322"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 11:05:40 -0700
X-CSE-ConnectionGUID: wNJPRrvKSA+OFf8qYgLLcg==
X-CSE-MsgGUID: EpFyqrNoSsiU8aLQscK9HQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,239,1751266800"; d="scan'208";a="176298766"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 11:05:40 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 11:05:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 11:05:39 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.82)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 11:05:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fsxEEvKtUraR7Fuj7x8EnjcuS4YUulv+Uzgw4XYksn3BxWkS+q7sA1nquTLuCf0V+02PTUlOhjLWiUxas1nMQTLW9mxSnMJM+Ai5pR5YoXI3W91BZD8hDvzgJP+gY9rSKlWl9laSozIYKrndg6Z9JevPnF3lrtKH3osDFTapgJy2ab4fEhCU6FLaukrWo0K7U9Ys9y8hz/xgkxPT4nSvTNKeiRcmuZY0+htFHfOlJl6hceC0GoPKcd9TYO/22EuUX+bs7/q5lNWdVoVAcqRgglEh4Ui3tjXrHBKvVOAt6yJP7KHrdYsaJCi8LuJrFOrWDvUTfT60G+Da1irXNhC8qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b0WyQJiIlsblLKGI7irH3Wb9AWSA9a2hEc8m9pcOxPg=;
 b=DpuLcM4QR6O2/L+C7FnKuLbOSGKxzDYDLIJghTbhDwNHDxLFKSFaAJ6Ai3AIpZSRLMIOS0ala7Y+JwUdbG8/2nAydtIXPVEd8/73DCoyZR/RETvV1kaXUNlpb8oSxrzQEaUk6A5lOD2Wbz0E/Zc3FnPRC75/9LXMUQocucaBJeCsdVGAAcnGi1xtY/rb1iSL7Krdb8G7XjohrSfne2YHa0G31jOlD++sjxuzB3+9e6OFeTrafo27FJaRmW6EwF3FSqfsUxrtNijhw9IuscJO1D43+4VgoWtNOzoGVV6iN1IXU0kd5bhHki/CkC/H+JG87P+Hau07Lzxu/PkU2d27bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by DM6PR11MB4595.namprd11.prod.outlook.com (2603:10b6:5:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 18:05:26 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%4]) with mapi id 15.20.9094.016; Thu, 4 Sep 2025
 18:05:26 +0000
Message-ID: <2aec7267-32de-4984-a628-e9f8286cdfa3@intel.com>
Date: Thu, 4 Sep 2025 11:05:24 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <madhu.chittim@intel.com>,
 <netdev@vger.kernel.org>, Sridhar Samudrala <sridhar.samudrala@intel.com>
References: <20250903035853.23095-1-pavan.kumar.linga@intel.com>
 <20250903125116.GC361157@horms.kernel.org>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <20250903125116.GC361157@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0366.namprd04.prod.outlook.com
 (2603:10b6:303:81::11) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|DM6PR11MB4595:EE_
X-MS-Office365-Filtering-Correlation-Id: a317df56-85c1-4bc8-2f8b-08ddebdda01d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SzFXdjdISXZneUR6TEpudVBGYUV3bWJPUk9SZjRtYTZwSGdWWVF6Yks0ZnlJ?=
 =?utf-8?B?ME5LcStlMm0xc1JDeTV5WHM4enVmSHlwYmJQZHBIZ1g2NXdSa1k3NVg0QkY2?=
 =?utf-8?B?Z2tZZG11TWtqSEdndTJoanJ6ZGNTVGlHZHBub3YxV3Z5eTJuSk1PenhudWpk?=
 =?utf-8?B?MHFmMFhLcUhZWi9PUzhLRGNPRitueDc4bTQyKzN1Y2pmanJOMi9KeEJ0T2Fr?=
 =?utf-8?B?Z3hhL3YvdThzVm1MbUtpd2FwUndwcVh0eW0vMkpxVUE3QXE5cFZMeFA3cmQx?=
 =?utf-8?B?SkFQVGdJYkJMUjU1SHB3STdIY0lGdVZZQ0FIRkdIUUtFU09LQTYwUU5lbjB2?=
 =?utf-8?B?N2VLdlNVVFp3ajFvU2F0cWFmVkdNQUpkTnZmVWpyV09TRGp3VVVrYWN6a2Zo?=
 =?utf-8?B?THNFUGg0MnVhTzdGQ0Y0SnBXM0t5SmdZMkEzUEN0aE90QkNzY2pSTEdjM0JL?=
 =?utf-8?B?N25nK1ZsWTFvcFluVWZtZXRDa0ErS2poc0JsZUptT1hYdmFDSWRhYWdMMlVO?=
 =?utf-8?B?SmpNcmQzUGtWNGxaVXVBLzJFdWduNEVpRGpYenUzVXI1cEUxZVhmWmlpOE4v?=
 =?utf-8?B?dUtlbnFTb3ZVY21tM3lEMHhDTVN3RjMwd3JaVVNObU9qWVdRNFQ4UnliZXpk?=
 =?utf-8?B?WEZMOWZacGtxZE4zUGhPMWlvMjlrYTRnU1JUUXYveVlIaVdqRmNqZWxyU1I0?=
 =?utf-8?B?WWpFLzd6NTdYVXRhTWc0U002bnkrSWIzMGpiMWhVbTY5cHIxdi85d1ZiWWU3?=
 =?utf-8?B?bEdmcEZhbUR4QW9pUWF0MEltbmwyTUNqcUlDY21YSXh5aGp3b1BxaUlqeDFz?=
 =?utf-8?B?dzJFa1V3VDgwdTFQNG1Xd3hXb093bU9uWkpjQ1VmZUIxeUtNOEZoUGxOUTB0?=
 =?utf-8?B?Ny9LdnpPYldncHMwQXFNOGVaUWZJTGMxNXVXWGpkcHo0UUZncEtRT1JQUnoy?=
 =?utf-8?B?b1QxaS9aek9MajJKVjVEem96NzNveU14WlZKYnBaWXVGS013cEZWeDU5MlJk?=
 =?utf-8?B?WW1IQWhpY1R6cWI2WjFDZFEwemhPSDkxZy91cDY4di9DUTJSR3haU1FEQVpO?=
 =?utf-8?B?S2ZwYldEMm5hTmhNVkJQelBwVjRhVnNVY1RVZy9KWDVrTlArQ1pyNm90NXBV?=
 =?utf-8?B?QjZKYnNRRTJ1bHovVVFkWk5RUi9DNjl0Q3FmUk5wcmM1ZStYb3l0L29uZmdO?=
 =?utf-8?B?RWoxUFRqc3QyTkZMMEhwdUVVaHFiZUw3b3pjNXFybEtKNGFKZzBLVXRRTnNW?=
 =?utf-8?B?c0cyL3p1SUNIWlA3ekhONWRwT2ZJNkV6QUpRakl0T3RFZVk5YStsSzd4L2Zj?=
 =?utf-8?B?QU1mSjFpSGRacjN0S2lhZkF6ODh3Znl0TjJQWDRWQk1hTjNxNjNCbitwWVdC?=
 =?utf-8?B?cSs0Y0U5SlorMWhtMUg4aGlHT0FncDJuZFR2UjdCNWRSUWYyajhKSmJWaXN2?=
 =?utf-8?B?RkpMSGcrVytvQTNVbFRqa09ya0V0bjlXVEpnVTlPaE1yUFBZM1ZOWUsweFFU?=
 =?utf-8?B?WEYvWU9IbFdndzJ4OU5HMy9rZmp2WGNUNHNOcE1iZ1ZNQjlzUzdTUVJsYU9Q?=
 =?utf-8?B?VGpySko1Qm9iY1owSGpkd05BRnY2c3ZzSGEySXl0dDRNd1JUTUdwVWtLUDdF?=
 =?utf-8?B?d2k3VEQyOFlyblBKM3k1RnhkU0E2NDBWQVByU21pSEVFYWtKYmtUbzRYMlFv?=
 =?utf-8?B?UUh1RGxaZWVXSnZ0TXE2Y2huaUVON1psQ1VhOUdwRGpnWm9zRHNXYmZkR0ht?=
 =?utf-8?B?aU5tQlhMV0xSazh1eTFkVmcwOFRRQk9FK2tMdnNuNHFPbnZnMlFmNGNNeExt?=
 =?utf-8?B?WGsySmkwT3RjZDZjcmJZNWtROVpVeExRRC9YajUzU0ZnZ0cwcGd1YVVlbjFI?=
 =?utf-8?B?c0tTc3ltU2RqQmowdGpBTk9UVk1RcXlyRVdjYk92OFpwU29ubVROSE1YaUVa?=
 =?utf-8?Q?iWk45g2rSgk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RE14Z1F1QnJFajIyNyt0Z1VxVU5sSE5ZRXU4cWt6dWNqZDFXdXRFcGxOS1dh?=
 =?utf-8?B?ak5CdFRRdXBvMDR4WG5KUlZvUW8rKy9yQnBicVJGejlGdDVNckpqNk1GR0da?=
 =?utf-8?B?L0xudW1OUkFLTzZjRS9VRDlCeFFjOHZUUUpXWkFxUDhuamo2WEk2cXNuK1BB?=
 =?utf-8?B?SDF1aGY3MHQ1RlFNR2ZlZ3YrSHMzN0twL0UyTzdQU2h4Z24vOVI3WTYvYlla?=
 =?utf-8?B?d29Ibk0zZjFWVVY5bkk2aklFVnlmZGdDL0FIMTNQYjB1VzU3TlNLUmdXbXR3?=
 =?utf-8?B?NHhSTkV4SWJVakpReU9hTndPelVZOHQ3clhQbE9US0xJRkZqbEU3QnhxbFJs?=
 =?utf-8?B?RDZyK1NKMWtLZ1VtTSt1NDFZYnFZeXliUm9iN2FkZUZHR2huWjdSOFFmeDJj?=
 =?utf-8?B?NWRjcXZ6c1VjcXpIdWdGczNiekZLNHJueGNEZVRqc2RybnVtSURzUnRyT3dq?=
 =?utf-8?B?VWNjUE1pdXBZWUh0S3hpTXBqWHpORjZ5U1BkVUFBSTJPUEdZZHVCVzU4a0Iw?=
 =?utf-8?B?WHArMnVsNzB5T3U2UmdFcWxLUldST1BvV1Z3d2tuQThnZG1CWVgyZWF3UlI5?=
 =?utf-8?B?VFVIaWNFVGxsMUJ6ZG5vZ2V0YzhvZzh5OEkyV0R6Y1VUV2Yvczd5T28ySmpR?=
 =?utf-8?B?K1E2dlNNUnFGMTNoTk93UWNtQTRTeWNhNlZ0OU4rRDhDUkFmY3phRnBRZnBM?=
 =?utf-8?B?WHhCSVFLWXppSHR5TmFhOUFKNUt5NHBPcFBXQTNUaG12YWFRYXlUUlNwMVFP?=
 =?utf-8?B?bTdjampwdGhpVEJqZVdGMVhrZWtnYkFMSnFCeWRZd1pSdFZLbjROd2tHL2da?=
 =?utf-8?B?cEUxYzRkRzVDL2diZUJYWTFhTFRFa1lUMkFZM0d1ekJBUnV4ODIzaVpHbGJC?=
 =?utf-8?B?eFdVOWFlL3hJS1JVb2RCdnpXNWpsbTZqdDd0OG9HbFBqY1FCR1pKandIVFZk?=
 =?utf-8?B?eTV5RzkxQm9vaVRqZ0VvdWNoYTBHVVRsTisvTGwxa2EyTlMvQjY2Q05LKzRV?=
 =?utf-8?B?VWszK3JMTzRSTko1d3h5V01MVjRySkh5bXFRMFJkWFJlT1p2TE9lS20zWGxE?=
 =?utf-8?B?UHErL3dtRU9acGZCWXpLYWY4dlNQSHNvZm16bHBRY3BybHFtZE1mNHdRR1ds?=
 =?utf-8?B?enJUYVlkY1h2bGFqS1I1dGxTakNsVVluTVFLVXNXNEdjT29XL1V3WWtyeXZS?=
 =?utf-8?B?THVGT3g3OGlzN2Z2UnoxMmdjMlI1YWk1Z0c1eU0vQnZqQnJaM1Ywa0hxNExa?=
 =?utf-8?B?U1dTSVQ2RUNEZzhwS0E4TjRISjVXcURRZm1qZG9LN3RuMndCY3NtdUJCemhn?=
 =?utf-8?B?enA0VWZtcllvODJqZmRpL3dkQ1JYaHdxbTZIZmdwdWpadzZ1K3ZMMUJCRU1G?=
 =?utf-8?B?eVl5M1huTU85N1FKM3NCWloyMEh1bHNwZUMwWXhaZlBIeVRBdnB3dWFKMDRr?=
 =?utf-8?B?S2g0eVoxZ2lmdGtMUk5RRnRyMDZhSjg1d1FpeFFoMEtFQzVQcTlaRk40cEZU?=
 =?utf-8?B?OG9FN1N6THgxeXljblhoYVFwNmltUjJDN3NpcEJhZjhCN2dEZHpwWXZBVEQz?=
 =?utf-8?B?N3JVYndBOW9CeUNWMVpKV1o4TmdEdXVSQkxFS05VZVU5OHd2dHYzK3JnSDFD?=
 =?utf-8?B?Ylpad096cEhkOHBhQjNCK3hsWGVTN01uV1QrUk1FTVRLQXBHeG1VbmRKTlRJ?=
 =?utf-8?B?Ym81cUpkQTNxUDdZR1l1OEhjRjZxTW10eEtkS2EvQ3hjdTRUZEVmTTdXUEhG?=
 =?utf-8?B?ZVZTVkJxV25XbUgzYVBOV2Nxc0VwZ08zQVAyL0hDZnk5TVptUDBkTmxkdVFU?=
 =?utf-8?B?NHBrNjErNHVyUGtXd2VQQy8yVzd2SkdKUjljeTJ3OTc1TTZiQ3pOQ3IvV0Rz?=
 =?utf-8?B?Um1UY2R1SGFiUFZWY1ZRb013YkN5a0FBblpjejlYWnA5L204eXd6T2JRUGNX?=
 =?utf-8?B?Vnk2NzFHZ0VpdE5sS214QTE2ZkViYmVlaFhFd2czSWdDeDQ1ZUNVTDVUOWsz?=
 =?utf-8?B?U2gwWkRJQU5ZTG9UdHYyRksyRnA4Mnlxc0R6Qm0va0RsZHcvQ2RNbG9MQnZa?=
 =?utf-8?B?UGVGUjRvV09xTzF1L3NUdk9MTVBQNTlqeXNMUElERS8weDQ1RGduazgyYWV4?=
 =?utf-8?B?UTdSVTdMK0Y2dGV0U1VFNkZVRjJyRDZHR21HS01wcUVreHBhKzBhMGxEQmZR?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a317df56-85c1-4bc8-2f8b-08ddebdda01d
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 18:05:26.4762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DjKlpnJF83UfTZwNCXNWyMffif5z9UyDZk5h6asGK7Y9HkYXbvcVSqBEOkjmg0y0TetKjs/biIBPf1BpKj2sjv4beZOb2GYC8cdOmhB2ak8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4595
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757009143; x=1788545143;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XzXBmLVAQb1Q7xPhznZFKVZCI0jnSHZzMOD0ViLg4QU=;
 b=PXAslejQpqLprIahJMvQ/qXF6JVOffS3ha5NLZtmrBvrGKB7D2V3y8p8
 BONV28IcAsbg0xjwg6UJ6naWy8u4dGpREWXkXWO6HXru7wCJ0a5oVXGXI
 xECnvqXVfbcP+u9N6YOjICzQKEfiFuMCYEYMVN8s0qleFpjqlXRyz4QDR
 a8W57LFpZ9JAg6CADYys1ZvVRlupVK9YhJUkoAbpyf66RMOn9OTeY/RXn
 CxSx0D502FeChXztLFkD3nC+vcJm4s7qw06wwN+9zKeE/FqqjDEzAqqd6
 DPAFq+d+fDJpwM4jICs/HspFCzx08/AteNEN9u4q+8rk5LKlTolJiy3F7
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PXAslejQ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4] idpf: add support for
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



On 9/3/2025 5:51 AM, Simon Horman wrote:
> On Tue, Sep 02, 2025 at 08:58:52PM -0700, Pavan Kumar Linga wrote:
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
>> Tested this patch by doing a simple driver load/unload on Intel IPU E2000
>> hardware which supports 0x1452 and 0x145C device IDs and new hardware
>> which supports the IDPF PCI programming interface.
>>
>> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
>> Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
>> Reviewed-by: Simon Horman <horms@kernel.org>
>> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Hi Pavan,
> 
> Should this be targeted at iwl, where it applies cleanly,
> rather than net-next, where it does not.
> 
> If the later, I think that a rebase and repost is appropriate.
> 
> ...

My bad. It is targeted for iwl-next, but I marked it as net-next.

Please let me know if you want me to correct the target and send a new 
revision.

Thanks,
Pavan

