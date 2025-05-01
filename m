Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 853FEAA6198
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 May 2025 18:53:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 05E0161167;
	Thu,  1 May 2025 16:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SxBhMWwOM5fX; Thu,  1 May 2025 16:53:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C49C606F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746118409;
	bh=0FGu0qZ3uQXJSyPwuaR8wuNzH4vHVWfmZrQA6B9u3/A=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=kwXK4ZgeiGh0bI4Grqv50oR4X10mKMIYo/DzssKXGzE0NMfhkMw8ToNqO/IhUBvkv
	 VpmCJW6fqd3Ns7mvZXeg4zy+Po4cn5+UkCf0tc63SvTnkJUexb15ucO1BAwz1J35+r
	 T3QOtYEJhkWJDCDsh2wyf3zKAOnhsOsZiSCRhq15sPhN57iNuSRi0VAZSNSKfv8KJH
	 t/4vlx4jTErndpmb2y5B75gmqGLh3em6QQCvtR2dU40uXP57Mhgj0hjFMHI8drNFm3
	 k5Q85OD3IJ7eSnce1EUSV1LnfqxWTohMXEJxTQUTQtXR5k/0Uh4BIRCJj/TJv4/MIZ
	 S5by4ppq1jnMA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C49C606F1;
	Thu,  1 May 2025 16:53:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FA1F113
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:53:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E9838417B1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jv9_Avit0Fxo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 May 2025 16:53:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 29AA1423CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29AA1423CC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29AA1423CC
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 May 2025 16:53:26 +0000 (UTC)
X-CSE-ConnectionGUID: ugniKd45TgmPgno27jeAGQ==
X-CSE-MsgGUID: hhEbFxI3S2+RrSP/OhG63g==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58004625"
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="58004625"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 09:53:26 -0700
X-CSE-ConnectionGUID: /x+83/srRAO0QwubNXzhRw==
X-CSE-MsgGUID: jwdQ1vIgRWSC9Y993H64jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,254,1739865600"; d="scan'208";a="134168458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 09:53:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 09:53:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 09:53:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 09:53:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PE9vMQ2LMPYgpvpN1tIxJc8DL+DklTZUjmG/TzOviOOR58a7kydee1fRO9R2ZaykAasYyrtEQ/10E2cd1YT2SxlXdPOWOy+QcF7Mdi1P+yknpo1jkyO03uwQaootGdQEgKpysa+tFn8hflJLjXyr41OssCuUwCTp4TboKIO08hN4SVq7sIOHQf3ls5kWpdZpPkITw/YoHgzalswT+lSHR0vT5w4UiZLlJnFrNUIcRAD8g8Z+3iXxddHnKr+8/i1Bx5XsEHUtoZCdq3LKwxPt4XU/xSu7jqLMqY0z/R8KeOtPCpBPVkhupVC06Kn6BK57JoqQ1PnyD184Vf+0/LMDDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FGu0qZ3uQXJSyPwuaR8wuNzH4vHVWfmZrQA6B9u3/A=;
 b=twPAbdNstK1nf7t6lR5W9yuPp+H1x9D3i1YfT4uVec0X/nw3OW86yj/We5+aCUVFrdmp/u0uVN5UGIxSDAKCr09Ov8RwNEYj8xARYTxGdgWU6qJxmQMF3Z9vRM2NE6MdKwcAp5/Q0j9NxQVg6QjwNsh2JJvW40SXfgFVu0Y/Q29cI9XuHgQYLaXOu2HLw+ObljdnJxKDAuhZoGIqyf8sNNOJ2XMS25EaBfUVbyEbkYsAVUbNnP4CF0Wd0JFPZKa3HtMHqLKUFpf/Y9sRq/GCpS50RvLLLAAPB+Ey3C5kTwZ9Wso0WBTm1kSzsI05DBp+1nlwrJmhg3mufp2mxAUkzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS0PR11MB8184.namprd11.prod.outlook.com (2603:10b6:8:160::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Thu, 1 May
 2025 16:52:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8699.019; Thu, 1 May 2025
 16:52:55 +0000
Message-ID: <d64a6c7e-d5f8-4c7b-b896-4ecb7df4e89b@intel.com>
Date: Thu, 1 May 2025 09:52:53 -0700
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: netdev <netdev@vger.kernel.org>, Anthony Nguyen
 <anthony.l.nguyen@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>
References: <20250430-jk-hash-ena-refactor-v1-0-8310a4785472@intel.com>
 <20250430-jk-hash-ena-refactor-v1-2-8310a4785472@intel.com>
 <20250501135101.GY3339421@horms.kernel.org>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250501135101.GY3339421@horms.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:303:8e::19) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS0PR11MB8184:EE_
X-MS-Office365-Filtering-Correlation-Id: eb436ce4-fae3-499a-705b-08dd88d09e4f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QkRLRS91bVhuZGVab0M4QzJaOVdicjlLRWFWT0F1MEVDSlZ5cGFxV3Q4Tk04?=
 =?utf-8?B?ZUpHMU5IaFo2Mm5Yd1htRUJlN1U4TU5pN3ZiNzJxRVp0bFIzemtjQmdacmNx?=
 =?utf-8?B?LzB2SmowcG5aV0Y3WHg2MFJlYTBhYjdhOXNEOHM3cnMzbE5nTjFybXRKMDNG?=
 =?utf-8?B?MWM3VVZCZU9xWTJsMWo3SXlUY1ZuYmFyaWs0TjUrTnU2V3FUalkrNThuMlRa?=
 =?utf-8?B?d3RwRWtlcVJ0SGJWcUlUcFY2aTl4THB3cWd6aFhnRmoyZWtJb3kzamk5ZHpN?=
 =?utf-8?B?MVdiL1YwdThlajN5eUhXWGwxYXIwdTVPSm9JdUlhbDYyT244RjQveWZCRG5F?=
 =?utf-8?B?Y0hGSnFqNGg4OGZPVlZnWTI3UnJ3MWRXQTlFL20yWG95VEpJNjI4T0hpaExX?=
 =?utf-8?B?Y3o3MTFyeDZtNjduQUtTa1pkbWdlZWZCdi9GVHNJbzE4bXNCdVpLVTdnWFlG?=
 =?utf-8?B?a2UrU0xDNVhaREp2Ly9weU93RExwYkRqVGpFSzdQQXZhYmd1QVo2YXI1ODY4?=
 =?utf-8?B?SnIwMkJTZ1F6cGpHT21xS1IxT3d3Qm9mODJyS25xWm5QMmtTRnpqSTVESVZL?=
 =?utf-8?B?dGtzQUY2SWdZY0NTWXdZcmZaU2w5UVgwN0svdzhRUElSYnFiUFRZdEJvYUFX?=
 =?utf-8?B?UEhHd1BzdXVQMmJZc0pPV3BkdHNTMEpuckZDWjl6Vmx3ZkRjUURYd3ZyTVFK?=
 =?utf-8?B?REVpQ0hRZTVjUm53eTBLVnFVZ0tPMFRISkVSckdpVGhpcFNVblZQZnJJSG5G?=
 =?utf-8?B?bERDbDQxSEZua1VjNnJQLzYzK3J3TVdHeS9uSFdjVWw4OXlIa0cwdXNNS2FF?=
 =?utf-8?B?YXdiRytxMm5uRHhTZTFZQno3ODlWZnNncWdCMldZRFFUa28yM2M3cU40QUEv?=
 =?utf-8?B?QWNkdVMya2x4RVJ4VUVELzg1cFFLSkVHK3Y2TDk5Ui9KYW1lZ1kvTGdncHVL?=
 =?utf-8?B?N0djejlFWU90V05GbWdjS1hiYjcvaXB6RE9SQzNjSHkrVFNKdkpBM2tyYTIx?=
 =?utf-8?B?aENKOC9RQnpnbzh0ZGZZeGI3M213QVdwUEp2bnZjc1hjZGZWdHZmK1Q3cnVK?=
 =?utf-8?B?SkIyLzF3NnVaMkM1ZkFFTU9YbzVvSkY1MnlYcTUxaUhFaHozQ3BpYnJmbENp?=
 =?utf-8?B?aGJIYmtMTUxBUTZVbDB1YkJ3NUNRNm9yQVcwczIrTmFrSjQ3UFo2N2lIZldM?=
 =?utf-8?B?T0JIeFpTclJDUGVmWkhyQkF1SlR3V2o5YVZlTnU4MW52bGlURURFaEpvaUlI?=
 =?utf-8?B?R0hNY3pxbDlQVWdJYnV4dTBteGNEOEtSOHVwM3M4ck83ZU5RRWpZT2VLeksy?=
 =?utf-8?B?OEV0cko2ZW1QSDdzajJQSms3Y3V1YkNvRWxYWkNSWGlmakJFdW9Td2dXL2Nn?=
 =?utf-8?B?U1RBdkRwRkVFTzBYY3hsNzVOS21EZTVKenB0R0M0bk9OL2VwbUNJTStzRmxU?=
 =?utf-8?B?N0NFcjFGMXlBTHdmMkJsSXhNRjlWcTF1SEg4MDRCTjFMQkduQnEvc25XRWt6?=
 =?utf-8?B?eGNnczN5SzMwMTUzUmVsb2NnUDFpemYyTnQxYUg3Q2gzRWVlVEhCMU5pUXhD?=
 =?utf-8?B?ak5odnI5MVl5TG1IZFhsVlJZclMrWDlzUXBxSlZ5am96UGZxZzRQZE92THl3?=
 =?utf-8?B?M3RrUXJQOEtLOVVWQVdTamVVT0YzNEU2c3c3ZVFrOUhYdlRyRnJ4YWVNa3FN?=
 =?utf-8?B?N0hjRG1tcXpuMU9wUjN2SjVJLy9HUGo0Q1RkeHM0R2sxeDd4cDlzTzdTdVNZ?=
 =?utf-8?B?RUtIRWRrcHgwMHB0dUxzbnhramZCNEVkWFZwbmJWcGIrdTdmNUFaV3RxcnUy?=
 =?utf-8?B?V2JuNXY0WHZMbkRscGpJcWs2MWpsNTRSdUxLUVMxVmN6dmJwWXVMcXNtdkRt?=
 =?utf-8?B?eDE0dnBneTFYU2NveUUrUEpHMVFZanY0eWt1cUtxNy9hMlF2SDVvMUxzQjRs?=
 =?utf-8?Q?eHG1yBSFpdY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1dCMHdEUEtidFlxYjdZWTJDZllsNTIzS05mM1oydk9XeStwL0cwTWxrNXlC?=
 =?utf-8?B?Y013WFhhM0xmSUlqa29sSFNEL3NCbXQwOXNld0tzaW1NRVNjQ2tkbHUyaG1U?=
 =?utf-8?B?UmFhUlpvUndwQlhlVTBOOEhoNy9GTmp5V0xua2l4cDlaMW9QSkM2b2RrVW1J?=
 =?utf-8?B?T3lkd1B1WndHTmxVa2dkRmtTU2NyZ2VrK1hxenhxM09HTkJkbVRYVW84TzEw?=
 =?utf-8?B?cjgzQ0JGcUg3MWhnNU8ram5ZUXc0ZXU3OENnY0hUOGhidDNXTk9wSm1UNFFN?=
 =?utf-8?B?ZFpEOE5uS1IwRmU0a2pVWmdJYWxxY1cwOXlGNFh4N1AzckRPQWZnOFdVOWY3?=
 =?utf-8?B?VjByVytWRWVycnJPMitIdzI1ZmhhM3JJeGdScnpKeE50bDM2NndpbVMyR3BF?=
 =?utf-8?B?ZXowelBnaDRwZkRWbmJ4L2NaS0hNby9iVXJGbjFMdFd0ZGhoalpWeTd1U0NJ?=
 =?utf-8?B?WEh2RlNSVGJJK1A0RE5nNmtRaHJBVFNOZHlIT2FrSmpwazY4WE9GK2FYOHpY?=
 =?utf-8?B?Y0drWkJSWDVGc3RZaUZvZTVRb3hzQ3NOUmorYjFObEo0T3hkak9JYWpqUDJw?=
 =?utf-8?B?WWVWdW54LzNjYWswcmUvNlNkZXVYZFRwTkgzOGRtczg2UXNva1RwS0dBdk9B?=
 =?utf-8?B?eTFGMkYwY3VVSkFKUndqamJpckEyZjNvNkN0RERpdjczMTFCUjlKUGt3ZXdP?=
 =?utf-8?B?YmNBNUc2MXlWWFkrYjlETVBlZjU1Q0VYRHZZaTdtK0pOblRVWjY3TFdXSDF6?=
 =?utf-8?B?OTFxcDUxSHlHbEkrV2UzN2ZFTkhyWjZ3U0RURmZyT0tjSWI4ZUlzR0pJbGFv?=
 =?utf-8?B?YllQbittYjhIU0srM1JvN0JzdUQ0QnRwbVc4ZlhhSFNqRWdIQjBiVHZyRVlq?=
 =?utf-8?B?OXdBUjlEMGxWVzZKMUd2SE1hVUdLb1VpeHVsYURpT3lMZEFZTGU4OGhvZ3kz?=
 =?utf-8?B?Y3lWZ0xtTlF3TUFDVGVPUmdTWXdiMDBleEd5VXNhU0dBR0F3NUhxUkdhTDNB?=
 =?utf-8?B?NldKTHVuaXJJOG85SjJpYmFWT3dHM0tDd0Q4b1pMTE9wSlhFalpsUEFrTk1R?=
 =?utf-8?B?cXF4TnhYTThMTndiWmd4UXpyTjYxTG4rTmlER0VyYXhFS2RhOG82M0ZQRmFE?=
 =?utf-8?B?aElzRXIrNTh6dUx0ZkV1bHhTYTl6SUlMRnkvejhjcjZ3dVgxUnY4a0VIR1N4?=
 =?utf-8?B?K2VyNWVLVE1GWWk4ZSszQU5rZjZ1UTdKbG9sVTMzK3Y4aG1BZ21DOFFCM21p?=
 =?utf-8?B?bTQ4UHV5bm4yZlR0dEtlOUlTZnY5NTI4MjZZa3UvL3BSUDZ6VHpBZENDY3hv?=
 =?utf-8?B?TVRvaXlyUk81eW5EZ2dRVFFmN1AxT1VqbFR6b3MyVmZ1L2RjK2pJaUFFOUYx?=
 =?utf-8?B?NlZFb2tkVUhaWlFOR01ObHVRUnB0bnRKQTJrZVF0czRjY05SNUVIcG5pZ0F4?=
 =?utf-8?B?K2NHcUhxSWFyWGhmek9TVEsvKzYyVDl3UEVRMXFic2tnNTFCK2QrMVY0MDdK?=
 =?utf-8?B?bVU1U3AwSXVkZnJVOFk1ZDF3cm5nbzJ0NkZ0WUJTVlRTZk9mamt5Q0o4OFFR?=
 =?utf-8?B?d2ZOYUovMVc3SWswcndMSldMdTYzRmdUTnp2MHNVUkFpaE50bE05YTN6MnNZ?=
 =?utf-8?B?cGVqZ2M4NVdqbzgveVh6S3JoRUpoeGNCTkJNRzFHQ0x4bCtCMTVFcDNETVNE?=
 =?utf-8?B?cVc5aG12Y05QQ0h5U3dxdExRaXhYZXZyMHpSN2wxNVVmMDhmdm5mSytWbGlH?=
 =?utf-8?B?bWNzOW9zbm5vY2haSno2Wi9KRFNuZmhDYW1adnpTL3MxMStvakVxcTg3NGdX?=
 =?utf-8?B?RUg4ekJBQjZrRDFWaG9FUnJsdFNuSjBTY08wVjFIcnJKaTJ5cVhGUTJBcVNm?=
 =?utf-8?B?TjByVlB1QzdPOVlCaTZzZm5ZdldyM1B6a3JNcXk3RG02QTBTbE45UVJMWTQ1?=
 =?utf-8?B?RnBERFQxdjVEMFlFLzBzK01ETkFYOHBESXVoNk05ZitOVHVFM2lpWVdYZkZS?=
 =?utf-8?B?YzFGTXZuaitGQzZBbUFqWW5BbWhPb2ZnNVhPVFYwTjkrMVZ1bVU5WVZtL0ly?=
 =?utf-8?B?Zm0xL2RvTWRZN2V1NVlRc21SbHUyUHByRDZSZHBQZXVEM2h5V2FUZHN2d25i?=
 =?utf-8?B?S0lKNTgyMk55RERlc3U5MFdRaXpXeWFLUEZFUkdsRVVLWktodHUxa2lCUnNF?=
 =?utf-8?B?MUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb436ce4-fae3-499a-705b-08dd88d09e4f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2025 16:52:54.9552 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n6jpYrtQ8N8/TsUvutVZdirhID44Bnruv+a5QamxlhIkRR4qDwOR/UiwbNYaWltFf8RhPgvqFgVxiwlM4M5J37RLFHGszNmgUnAvdU+a08c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8184
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746118407; x=1777654407;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HARn18mD8/aS8Kp5lDHWpUuGJ3++82119oQnhNnlc5Q=;
 b=iKIA9TPs6xMTy6goyt1ZdaFtY1waDUbpuL1UNVgMW/9sy6A3YYeTiUtY
 CCBTqyNHqlhADVYkEWUL7efEm7KCFaDO9jhYmh3XhH5ohQaDmOfPv0gku
 i3Y8Jx5kHsCRp+vAj4gn67U0hF3bjGmUpAPtFQBNh0MBgWsRIVKhyH+l3
 xW5YIdT8yzqYDWQ3jWSlQeLCWuN9D+oilmWb6RmoKkiWbJE0s1KJbLKHQ
 wP6K8koy3kQDl+4cVq99Y34CNuo+zfH2oQ8gSv2ifLcFXEN60t6epquAW
 65iMbu6WziQjk2NTzFhplnOE9YmaMCGLWUPO9P33lxD2QvjwSGzIM5YBR
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iKIA9TPs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 2/2] net: intel: move RSS
 packet classifier types to libie
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



On 5/1/2025 6:51 AM, Simon Horman wrote:
> On Wed, Apr 30, 2025 at 10:11:53AM -0700, Jacob Keller wrote:
>> diff --git a/include/linux/net/intel/libie/pctype.h b/include/linux/net/intel/libie/pctype.h
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..78723c8a33a084fb1120743427273af4b982c835
>> --- /dev/null
>> +++ b/include/linux/net/intel/libie/pctype.h
>> @@ -0,0 +1,44 @@
>> +/* SPDX-License-Identifier: GPL-2.0-only */
>> +/* Copyright (C) 2025 Intel Corporation */
>> +
>> +#ifndef __LIBIE_PCTYPE_H
>> +#define __LIBIE_PCTYPE_H
>> +
>> +/**
>> + * enum libie_filter_pctype - Packet Classifier Types for filters
>> + *
>> + * Packet Classifier Type indexes, used to set the xxQF_HENA registers. Also
>> + * communicated over the virtchnl API as part of struct virtchnl_rss_hashena.
>> + */
> 
> As there is a Kernel doc for this enum,
> ./tools/kernel-doc -none would like each value documented too.
> 

Hmm.. This might be a case where it makes more sense to drop the kernel
doc comment.. I feel like any thing I write here for each enum value
would just be noisy and repetitive without added value...

>> +enum libie_filter_pctype {
>> +	/* Note: Values 0-28 are reserved for future use.
>> +	 * Value 29, 30, 32 are not supported on XL710 and X710.
>> +	 */
>> +	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV4_UDP	= 29,
>> +	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV4_UDP	= 30,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_UDP		= 31,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP_SYN_NO_ACK	= 32,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_TCP		= 33,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_SCTP		= 34,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV4_OTHER		= 35,
>> +	LIBIE_FILTER_PCTYPE_FRAG_IPV4			= 36,
>> +	/* Note: Values 37-38 are reserved for future use.
>> +	 * Value 39, 40, 42 are not supported on XL710 and X710.
>> +	 */
>> +	LIBIE_FILTER_PCTYPE_NONF_UNICAST_IPV6_UDP	= 39,
>> +	LIBIE_FILTER_PCTYPE_NONF_MULTICAST_IPV6_UDP	= 40,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_UDP		= 41,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP_SYN_NO_ACK	= 42,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_TCP		= 43,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_SCTP		= 44,
>> +	LIBIE_FILTER_PCTYPE_NONF_IPV6_OTHER		= 45,
>> +	LIBIE_FILTER_PCTYPE_FRAG_IPV6			= 46,
>> +	/* Note: Value 47 is reserved for future use */
>> +	LIBIE_FILTER_PCTYPE_FCOE_OX			= 48,
>> +	LIBIE_FILTER_PCTYPE_FCOE_RX			= 49,
>> +	LIBIE_FILTER_PCTYPE_FCOE_OTHER			= 50,
>> +	/* Note: Values 51-62 are reserved for future use */
>> +	LIBIE_FILTER_PCTYPE_L2_PAYLOAD			= 63
>> +};
>> +
>> +#endif /* __LIBIE_PCTYPE_H */
> 
> ...

