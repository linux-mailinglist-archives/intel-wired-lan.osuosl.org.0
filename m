Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A8EA2A97E
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 14:17:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3272402D5;
	Thu,  6 Feb 2025 13:17:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VitGuIadSYGN; Thu,  6 Feb 2025 13:17:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5404840325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738847841;
	bh=XlFyX+OiS9Cg/FpJ8NcGdJR74330SIxCqnha6pYxOMs=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TNLcliPPDq+gbv/DTvjHFdDJ5dWkdxvk9mHNtWuvqkvtqi/5NFSU959u2fkMARo21
	 X5bI3nIBrMRhsrv2pfjkhZ40trloNlnhnW7iw5yJYypEMhL4ZhUqv5hhPZ0nP+AvwW
	 DYByNpxQcXxzOvb8PBAFFdnWYcKAriufB7/TgfXin2zxyv8SlWhhS6NPVyrJPhvHda
	 27LhdWOyXY0ddwvBmh/vDferT1bJJNS0K1u3jFEPx4N4E8eQCHwknofRdzDHx0rTZr
	 AkAaktBFrcrJaFgsuMz5ATLJbc80QE/UeS5Kv1qqgpR42xfeXsiHiuybTmIQhk9QLD
	 8mmh7b/ednqTw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5404840325;
	Thu,  6 Feb 2025 13:17:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id A60EBE2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:17:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 95F0D8354D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:17:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pM_uFGa7aV38 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Feb 2025 13:17:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 67D0783495
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67D0783495
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 67D0783495
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Feb 2025 13:17:17 +0000 (UTC)
X-CSE-ConnectionGUID: kEq7HoFtRf2snMwt5zkxHw==
X-CSE-MsgGUID: NvrBISGBRxafwUJTlpKM4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="56866734"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="56866734"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 05:17:17 -0800
X-CSE-ConnectionGUID: oPTzI+KcSgKPq4lORbGWBg==
X-CSE-MsgGUID: vocc3MWWTV27HsGY3KP3hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="111405963"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 05:17:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 05:17:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 05:17:15 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 05:17:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZvnmJwlOmHFFQqMKVT+hROJx0RNQLIaK8VNQsZErMzGw5USY0gqJswmps4MaCLfqGG98SC1NvAaCiq8guxyLAS/Yiw2qmnMyNr/aFbsxo8WC+qdmMweFHpci6uGKGGLgBrNVi2ivRsWuq7mUxD2+T0vBMvmieTbMYq+eRhq42nqCtQP4jQ81mxtbOzRFUXZBWli7BtHHQl3qwEpZ2RJDbOSecMBNDKpNZtui9hOlxBZWpE0isKvUO8g0n5BA9TjM7XpbNIqMqtAoZcq58yitPAlUW4idmccoWUATbqcDiKxFPSAR789m9wC0I6fsigtb148RZDrZ/E3T6wZnwU5XEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XlFyX+OiS9Cg/FpJ8NcGdJR74330SIxCqnha6pYxOMs=;
 b=mc9vc+sl/qlT4YZbKa9p2wBlwxsrswiR/qL0Ef9opVplz/xODLp5V8GD5tBppSNtrCpHu0nza7E0RJ/wvQOlHsAWj6KFDr8+uNFMC4223l8E7ahF7yg45Qb43Z5p6Jgcp36splubg8FwXxgh306gVrl04+XQsCZEH4aNko0orjxj9x4ESyipPZl7ioOi4YlqWOFsa6rwRnhkOIVtPfdD5wmDycWqfCsG+FRymgeWnl5AsMDeFHT5kTjjn4F/W6AmeAT4iPMibfN5z8fwjEyAdkbWEY8pr0eTxyqWdBUGZgwRT8NKIKBzMgWTgRO+kfrjiZ3Hd4bu5OYRF0zvG1o99Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SJ1PR11MB6106.namprd11.prod.outlook.com (2603:10b6:a03:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.12; Thu, 6 Feb
 2025 13:17:05 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%3]) with mapi id 15.20.8398.021; Thu, 6 Feb 2025
 13:17:05 +0000
To: Stephen Hemminger <stephen@networkplumber.org>
CC: <anthony.l.nguyen@intel.com>, <jesse.brandeburg@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20250130091111.46358882@hermes.local>
 <531227ca-89fe-4398-8cba-3647be509454@intel.com>
 <20250130172115.2a116ccb@hermes.local>
 <531e3767-05c8-cb5f-6f3c-1860125ef408@intel.com>
 <20250205201327.7a4555cf@hermes.local>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <4f913b04-36d1-58fd-bc93-666eaa6cc756@intel.com>
Date: Thu, 6 Feb 2025 15:17:00 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <20250205201327.7a4555cf@hermes.local>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SJ1PR11MB6106:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bbbac70-51c8-4407-9639-08dd46b08cd9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M2M1R2U2VWxLMlo2STdaa1ZqdXhwU0tUbHNPWG1Da3NYQ2s3UWdGUVBxb3F2?=
 =?utf-8?B?TUlYMGxaZlNVZ1lCOVZNbWMwYktxRS90SnFlSGF1N3E3WnF2YVhZY0RYdW16?=
 =?utf-8?B?WVVkZXMwZjBXeXBldkgrKzdaNUxiNHY5OUVKUXBWTnNYTG13M0V2a2gzNXNW?=
 =?utf-8?B?Z2hkcTlNd2QzWC9KQnB1SmpoQk5wbkhkaTFZcDhnYmZ2MXRXSWVoN2NRQlRM?=
 =?utf-8?B?K211djM0bWpsd0o2TkxBRzI0V0pQYlN0MlFnVTJMUUtsNXZWdG5DV3E4cEZh?=
 =?utf-8?B?K3lJcHFnU2lWSlZzeWJwSVpsUXlxZWJCRWI2anI5QXpSeGVVSGIxV2JVZ25k?=
 =?utf-8?B?ZlQ5YUZSYkdWY0N6VjdhKzBrWXp1WFhGSVdEQ0VHUS9laUc3K01XWHN5WVM0?=
 =?utf-8?B?dlNXQmNUWllOdWFvUGlRK2dQNFh2d3lnQWdibUV5SkIxZ1NFRUlPWmtaK3Fx?=
 =?utf-8?B?OFNEcU1CS3RRaUs4ZGpYQnZTQ3Zjd05QZ3lLR2tDb2JibHRiR2NoU1NLbHVO?=
 =?utf-8?B?cTlwbCtnUVI0Q01qNWtVSlU1Y1BwMUFyMnJRQXNuNno5NW5zOTJpbkFGbzJF?=
 =?utf-8?B?SHhFT0F6QTdLSVlWRFlBdi93Mk9MS2E1OG1ITStJVHpPUzBJNEZWSHhLc1Rv?=
 =?utf-8?B?RUEzRmJvSXFWc0hkWlJ6WlVoWUFTRHQwWXo5bUtMRk05WjNDWFpsVE1lNXRr?=
 =?utf-8?B?Q3ZkeVY3UWtKd09sZ2dnNjVkZnJaU3ZWTy9wbVpCSUdxSUZPVXJuMy9wWmFQ?=
 =?utf-8?B?cWZYR05BR3FIVXRDb2FnbjdoOHJqZXg0TlhibXB0dHVuU0pSUVJueGtBcmxv?=
 =?utf-8?B?cHl4bmNFMGc4RHplSFRFWnZ2Z3VCeUo5dkxjNlZDTW9OL0ZSR3orR0xrNUFo?=
 =?utf-8?B?dmVFNGxUOVVValJEWEFoUGJ5OUN6NjJnZXM1ZWpaMmlGT2M2RVY3L244TElz?=
 =?utf-8?B?VFVrOVl2Z3JMOVEycTc0RG9zTlFVRXBLQWRSVE9GN0gwVVR3UzdCV29WMDJL?=
 =?utf-8?B?TUI2bG9YbDh4SnplaVFJL3dXSmlMcTc0TkFUbVlkZ2U0S0NMc1ljNm5CSWFG?=
 =?utf-8?B?d2hGVzhSTE5YOWtNOThuUFpneVBNemlvS2s4ZlkyUDU4SXd4MFAyNUlucCth?=
 =?utf-8?B?Y0ExaHFLV09EMDZkSWlnZ0RVdDhJVzBSdTRaZFAyQWM0NlVoNzNYQmtmb1l5?=
 =?utf-8?B?cFFGcmdERlRwcm9WN21saElOK1pwY0orc3lnK0VLMW9PUmdnZ1pIZGJBejhk?=
 =?utf-8?B?N1poUktaTVUvYzZ1RWNZRW5qVFM3empRaFBkNzdXRFdVd1k1MTA0MUtKSnNB?=
 =?utf-8?B?SGpVcVVJd21DcFkwbm1HbXZsdVdmSVJ6UXNwbkdPVlRJZ1ArWSs2N0d2aVZM?=
 =?utf-8?B?eWtaaUF4SFQ5R203N1V3SEh6SGZOSEl1NzlYVjdrS2ZPcjlXRERFZ3JOcXJB?=
 =?utf-8?B?QjNNcStJS2ZMazBwd0VLeXJ4ODhEdDg0ZWN2Mkxwa3NpZGhtVFk3NEhVR3dw?=
 =?utf-8?B?ZHhvYlE5TE9FUW0yeFkzVjhidkhRRTBtbHJ1WDVOdUl1NVlNUU5GS2VLNWRh?=
 =?utf-8?B?aGhWQWRtRDI4Z3B2bUE2QXl1STEvMWZhaGZNdFNWYk5JbmdxZGFnLy90WnZQ?=
 =?utf-8?B?d1ZWQ3lEV01zV2ZuS2dBN3BmVmpJSzZTaTc1K0k4WUJ3VWNMRDNHN1RsNGZ0?=
 =?utf-8?B?cE5FZU1uS1RSZ2JPU0xKMlVFRDBSblI3QWY3TmpzMHZhOXdmNFU1U2xwZUNN?=
 =?utf-8?B?WFhBUTBwNnR1UHhPYTFHa2tZbEd3YnBtZW9BQ0FRWTZZVzFLTWt4b2JlazQ2?=
 =?utf-8?B?clRsZDNJNHV1TWlKOGhrZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnNEMjZienpiZHJnWEQ4d2UvZ3dqM3B5SzZSR0lLZ3lUbEJCbjQydFI0RjV6?=
 =?utf-8?B?TC9rYXpHM2NmVVQzTnkvZUZydXRoRG5FWlUwWE91TW81VHh2SEg0cVpIa0ZV?=
 =?utf-8?B?WlVqN1BKczllSlBISmdRaWF5YlRlS1ErR0d4c294eGcrWUpTRkZFTzNLektI?=
 =?utf-8?B?OHpVZ1lzN1BPTDk2REU0OXZQWGdSdzlTcm90WHRYT2czMWxKMFZoTXBueXdu?=
 =?utf-8?B?cmZLL2tqTzI3aEVjTDY1TStaeTlBUmhBRGErN1NKYTJQWVl6V24ydWxkaGZE?=
 =?utf-8?B?RUFPRlY1RnN6a2RiUU5pcnBVc2FJMDhFVURWUUUrdGh6M2o2dHU2QmZpbUt5?=
 =?utf-8?B?dTMxTkY1eThqUmR0U1VDblZHdGhJZUdWV2tFa1laNlFuNFhNYmszT0QwS0lj?=
 =?utf-8?B?d29hTktiRnRoYklXblNXODBFcDdIZGV0Y0ZBaGtRT3NUamlJTTU2OXc4QUZS?=
 =?utf-8?B?UlVYZ3o5dHBUWkdVQ0U2UzdPV3ZzY3M2c2xoM1JLcnpZVEpLenVXanU3a0JR?=
 =?utf-8?B?SS9IRDVQN2tNa1AvQ0pvNGdNOTRHWGdOQ1JKdSs2Z3o3VmRpQnhnbXhpdUkv?=
 =?utf-8?B?dHcxOHJ5d2R0VDNxREY1K1Q4d08wbzlRUUxFSzdVZCt3VXZqWXhPMVd0UGU1?=
 =?utf-8?B?ak50U04zZmcrODlHQnI4NFhtL3RWNktlTllpSnBZaytWek92WmJZckF2Tkhi?=
 =?utf-8?B?UExCdGpkT0Y3NnpjQkJPVk5maVJ2TTh2SlIzWStUVUVCRG5TMllLYzhKcjU3?=
 =?utf-8?B?WnNpTFlzYU9DMjJTTjRrSURUeGtCMUJXZjZFTnJEQkVmRUlrUjRJb0I3d3Zv?=
 =?utf-8?B?ejlTU3J4cVhKNXNkWkg5V2RZL0kyd2ZMSmtsVUc2NnBkSXpMYnEzcm9DWThQ?=
 =?utf-8?B?M091UGVWcFZpS25CSGpZZC9DRlhZRWU3d0FuL0RQYXE3aHN4R1ZxVVJwQURi?=
 =?utf-8?B?QnYvY01iQkQwQ3V2T2FhRlo1emU0d2FYMDc5dUVyNWQ1bG9iREJ3azlqUElo?=
 =?utf-8?B?YkdrZk9MeGU2L0ZQR242d2RnZjJVaVgyMUFLc2Q1dHAyYlFEaGlMUDFZWHBj?=
 =?utf-8?B?OGlLVE0wRjViTjRHWXUydkV6T2dNODZPY0JFNUdMVVJyVEx0dXNsT2dpandN?=
 =?utf-8?B?R1lxVHRIOVRVaElVSHRlMnpJMTZ4OTJVOFRtS09mU2Z2TU9hSGFLWWJ2em5t?=
 =?utf-8?B?cDdnMlNPTm5vTXFSS1lncjgzWHh3SmFCYTBpQlg5MVBSZjlnajQ3clZyLzJq?=
 =?utf-8?B?L2ZXYW45QW0wOEdCYnVmUUJTMzBsTE5zMFhHMnIzZEZya2oxQkRTMjFDWTZO?=
 =?utf-8?B?UGxaWThGNFFma3RqaHc2eWcweHhkRzV1Y2VYMEdMNnRWaHZFQWpIR0VGLzdJ?=
 =?utf-8?B?NlU3eDlwNGpxQlEzUmZ0eSt4Z1phRnlPQ21rNHQ4VDJxRUJVK3N0YW1KT3Ix?=
 =?utf-8?B?by9Qc29qd2RXOTgzR1dodlhZTGV5RVRoeWVWNUM5aFp5RkQ3d3habUJQN1JW?=
 =?utf-8?B?OElQZDhxSS8rQjRUVEExanVUVDRXbjMrSXU1eGhicWhEUnc1c2tpNThsa2J3?=
 =?utf-8?B?YzEzelhkTjVOL3FaSHN1WVdNaStiNXhsMkdzdTVDU1RBeE1OZ2lkSUdiYVR6?=
 =?utf-8?B?NzA4bitaUGFkK1dPTXRjeWxBNFFlMnp5QW9UOWVTcm5LL2Q1MkxvUFZibTNi?=
 =?utf-8?B?VER6K2I4NWJja2F2NnhpWTdyaThteWtxdWRVNkVqbVlaMnJUUVhtY1J6bmlL?=
 =?utf-8?B?eXVjek9QTDl5QnFjaHdMbXdoTzlpQ0ZTbFhvczkyRllCeU5UQjBCMU1HQ3Z3?=
 =?utf-8?B?ZFQzc1M2Qlh0a3hZYXRuNlI4bm5ZYitSN2FhRDg5UTJpbmRjOGtycTc2TFZs?=
 =?utf-8?B?VERLYm0vOXlxU1FmeEYyY0RNaFZqbVlIaFB6aTJKTEI2czF1ZEJWY1QvOWta?=
 =?utf-8?B?VGladUhubUtyV1V2dFlYTjhpWmt0THF0RUl6OFpJTmY5R1lsMEFrbUJWNjk5?=
 =?utf-8?B?NlJDK01ucEk2b2tmWlAyR1V4Z2lnOGgvWjlHeGp1N1Q0c0JLZmFYTzBTUjgr?=
 =?utf-8?B?N2NkaG9LZTNMNEdVTVk1QWxxYWJxUEU3TkJaRDBsdVRzaEJVbHBNaTd4KzJz?=
 =?utf-8?B?RktSU3VHenQrdDFyM3c0RmdkTmsyR05yNW8rejVUb245M1NSdkprYkNZcng3?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bbbac70-51c8-4407-9639-08dd46b08cd9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 13:17:05.0848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y/V1Rce868op5UCKi7qrttClO1WfnBUI86y2yls77zsG4j8rtZIywR+PES5Jq2aouCgnxDbkKh2v0CNKxJ7BEOmmJaogYb52NJpVvV7w7+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6106
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738847838; x=1770383838;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kpoDLzSU5Rs+XE5+/UTchIC80rxEh7KxR7epvv55RSs=;
 b=baL3q0p2xKw0pIg0R59iQBBnYf3XEZFzIWtXYYR7n7JPN8LtbMmUPyC0
 T46K66zuf9nleVoTeqmyXeXVkL9snxmTjrnAwR+vorTs93N55swvoytxH
 FU9j4FbFmNqush3P+vnosBiTs2OSna/hsjuUjpP0U7T47UTgC2qXw2Hj4
 aCMVDO6/th1qF0YAFUVbLLkcXfO0FA+ejtvSFbVKpn2nN843nPuYU2Jy/
 awF0Ob5YS4hO2jMyBy3RAOS4R7zxmcVvklt17OfODUBWmJPUcWYCaSsgx
 P0vXP+GB/Pwkd3XZjgMtu1GnRcz3cGNsLjTe85wPNehSdQoJuTozjPkeN
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=baL3q0p2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] suspend/resume broken of igc driver broken on
 6.12
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



On 2/6/2025 6:13 AM, Stephen Hemminger wrote:
> On Wed, 5 Feb 2025 12:36:31 +0200
> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
> 
>> On 1/31/2025 3:21 AM, Stephen Hemminger wrote:
>>> On Thu, 30 Jan 2025 21:17:30 +0200
>>> "Lifshits, Vitaly" <vitaly.lifshits@intel.com> wrote:
>>>    
>>>> On 1/30/2025 7:11 PM, Stephen Hemminger wrote:
>>>>> I am using:
>>>>>
>>>>> 5a:00.0 Ethernet controller: Intel Corporation Ethernet Controller I226-LM (rev 04)
>>>>> 	Subsystem: Intel Corporation Device 0000
>>>>> 	Flags: bus master, fast devsel, latency 0, IRQ 19, IOMMU group 20
>>>>> 	Memory at 6c500000 (32-bit, non-prefetchable) [size=1M]
>>>>> 	Memory at 6c600000 (32-bit, non-prefetchable) [size=16K]
>>>>> 	Capabilities: [40] Power Management version 3
>>>>> 	Capabilities: [50] MSI: Enable- Count=1/1 Maskable+ 64bit+
>>>>> 	Capabilities: [70] MSI-X: Enable+ Count=5 Masked-
>>>>> 	Capabilities: [a0] Express Endpoint, IntMsgNum 0
>>>>> 	Capabilities: [100] Advanced Error Reporting
>>>>> 	Capabilities: [140] Device Serial Number 58-47-ca-ff-ff-7a-98-3d
>>>>> 	Capabilities: [1c0] Latency Tolerance Reporting
>>>>> 	Capabilities: [1f0] Precision Time Measurement
>>>>> 	Capabilities: [1e0] L1 PM Substates
>>>>> 	Kernel driver in use: igc
>>>>> 	Kernel modules: igc
>>>>>
>>>>>
>>>>> Using both Debian testing and my own kernel built from 6.12, the igc
>>>>> driver appears broken after resume.
>>>>
>>>>    From which system state are you resuming?
>>>>   
>>>>>
>>>>> After resuming the device is down and no address present.
>>>>> Attempts to set link up manually fail.
>>>>
>>>> Did you get any errors in the dmesg log?
>>>> What is the firmware version on your device (you can get it by running
>>>> ethtool -i)?
>>>>   
>>>>> If I do rmmod/modprobe of igc it comes back.
>>>>>
>>>>> Doing a bit of bisectting but it is slow going.
>>>>
>>>> Meanwhile, we'll also try to reproduce this issue in our lab.  Could you
>>>> share more details about your system so we can create a similar setup?
>>>
>>> Given that error reported is -ENODEV, might be a generic netdev problem not
>>> just for igc device.
>>>    
>>
>> We weren't able to reproduce this issue on our systems, even though we
>> tried several suspend-resume cycles on different kernels and different
>> systems.
>>
>> However, a few days ago we received a comment in a BZ about an issue
>> similar to yours. In there adding a short delay in igc_resume function
>> https://bugzilla.kernel.org/show_bug.cgi?id=219143
>> https://bugzilla.kernel.org/show_bug.cgi?id=219143#c123
>>
>>
>>
>> Can you try to see if it fixes your issue as well?
> 
> I tried the proposed delay and it had no impact.
> Any idea of other things to instrument?
> 


Has the adapter worked with a different kernel? Can you try to reproduce 
the issue over kernel 6.9?

Is the LAN cable connected to the igc adapter? Does it maintain link 
during suspend?

Also, I saw that on your board you have three more adapters, I assume 
that enp2s0f0np0 and enp2s0f0np1 are i40e adapters. Does this issue also 
happen to enp87s0?
