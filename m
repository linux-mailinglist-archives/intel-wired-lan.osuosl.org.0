Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 351F7A7DF10
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Apr 2025 15:26:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7C17C61020;
	Mon,  7 Apr 2025 13:26:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nhthoUX1KBXx; Mon,  7 Apr 2025 13:26:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCB46608AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744032410;
	bh=4WzwFmHV2lGqK/ZN62ZS4Z9NVcto/+6Y9eYJ5D2lQqI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IgbhfBWxT/4TJfULPZH+f0FERCaTu2WW9IhT4QzG11x3rE3qmCg9kbMLxWQp3yKM1
	 QqhM1NEsnz1h3M3uhAZ80uoSrqONWbAm1K0z9omyqeyFPBJUDaWjYcuKHU9UPRalgw
	 ihAnaqJh5WK9zUrrYv2SQu8IqgP5OHX/mDXjdZxS0FAMO12UiP85/Y1wzuKV8vBn+o
	 GFAlhiEsl6SC0eNPF9Xvud+h2kO6pkPX/v0BqQ60L0DT2An7A/BT7j4zGNR3U2mKE8
	 +Oyk8l+x3t7VKC9RDzIuyGQd5+0kXOIO0LT33AhCYCYDOXoQtPBaDaAYSVHeFthCn6
	 jdl2WCk/rlk3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCB46608AC;
	Mon,  7 Apr 2025 13:26:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 243FE1DE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:26:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09F0C80CAD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:26:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hijz9lMTUkDs for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Apr 2025 13:26:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4E91A80AA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E91A80AA7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E91A80AA7
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Apr 2025 13:26:48 +0000 (UTC)
X-CSE-ConnectionGUID: tC21twTiQpe0MqUeBKyafQ==
X-CSE-MsgGUID: nQmfyZxtR2yPvA4piC45Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45308080"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="45308080"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 06:26:47 -0700
X-CSE-ConnectionGUID: QfTTGaznQySzX4jgE6ulOQ==
X-CSE-MsgGUID: 0pWpQV+JQLi6UwiXY5HzNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="127709932"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 06:26:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 06:26:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 06:26:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 06:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pLSuEEe9KzdtXStIvpgGjtO9wpBu6L0ekJzApsaJ8bWfVV7QcbFHogV0jj+1fR8yjEVFyK+H2yuR915UYYmyBk46rM/fSsfa3/9o4yU25BMq0sdM1vjLfSw3Ktgj4FQmmd3bA1oPlcw09pNIMKrNh/V7lUp8/oFyM6FgJ2ZaSmBuPZu2hlUJen/DTgNnbpMvxRff1ABTbeQXlbaiWPbR9TEBm7oEgjw/Jh/YYXClSUecFKAI7u0URIKg9Ekbo5lBHK7M/9sHzzhanTElUCov7Yd40+BvnSgmWV6baWbip4rhlG8gzf+aBGgtPmmu2fGivKkAETw0nTwXngLnClveHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4WzwFmHV2lGqK/ZN62ZS4Z9NVcto/+6Y9eYJ5D2lQqI=;
 b=HpaA8G55Z103mB3cgbxnzXFE7KYFTtToSf7hu6SjdinIEUsjNbflxUQcxNeZu9Am6Ta0+K8/AXno99TGDw+w9ARbhHhO8Wd6RevwHviQ67nao/ZBepH7Rgb92nb2euTZiHR9nRP2t+KaVE4Z+ssVaHYgQj4Pj0Az7YchPhCoW4q31FsHYnZrPVS/kWFeVdXrc/pWrnnZOC2i2Rim+34riObfqbt4E6/QSK8YeKCdS92di+WYhopn4EUy1NFjTENAe4ImrtmyJCzZzgBQB/VPcvnX/1cet/B94JIW2T0/ElblTElCC46K709Isg+0UuEmahmH89oUIphYpL3U+avYWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7269.namprd11.prod.outlook.com (2603:10b6:208:42b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.29; Mon, 7 Apr
 2025 13:26:43 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%5]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 13:26:43 +0000
Message-ID: <34b177b1-4be4-4888-a1d5-8b2b6f5f66f5@intel.com>
Date: Mon, 7 Apr 2025 15:26:38 +0200
User-Agent: Mozilla Thunderbird
To: Jiri Pirko <jiri@resnulli.us>
References: <20250407112005.85468-1-przemyslaw.kitszel@intel.com>
 <umik2eecoutyaf666hy3h2g2bbbchvfb7veqwrcqkb6aevntxz@yhslcltafqxy>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <umik2eecoutyaf666hy3h2g2bbbchvfb7veqwrcqkb6aevntxz@yhslcltafqxy>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR07CA0147.eurprd07.prod.outlook.com
 (2603:10a6:802:16::34) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7269:EE_
X-MS-Office365-Filtering-Correlation-Id: 44815130-6e42-415d-8cd8-08dd75d7d657
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UGdpdEw1bHJWdmp0cUVRTGdtbTFOL2I0K3UwM2NmTjJPaGlKMDh5dkFvdE9J?=
 =?utf-8?B?c0pSWVJoSWNXdm1qTXVtdTJHemNpYkJvaTNreERaUXpra0RCdGhZWDh1VXFk?=
 =?utf-8?B?RWVrSlkxVzdlNXU2a0cvSGZOeU90dUJodUVaRisvVjhoZjVMdXdVZEE0bExC?=
 =?utf-8?B?THhiT0NyYWZhR0ZXaFlyNGpHZVZKM2NvNkpCWFp5VS9UM21UVlI4RzlMTGhN?=
 =?utf-8?B?bEtzRE44Sk1qajc2QUVNakJEZjFZbUMzeU9XUDNZc0ZJQ0gyVlRDOTNBSnYr?=
 =?utf-8?B?K0R0TERUMThZSFEzV2FHdVJvUVNMWlplN1ZkaUR4aFB1YkFhZk5mVmZPdXVy?=
 =?utf-8?B?ZWdwekc0NUtpWm1mb2JLM3N3YkFzSXFodlZFbUEzTlhPaDltdXRQVEV6cHBF?=
 =?utf-8?B?VWFkenZTZFBqeGorT0ZnOTg3OU9NOUZiWGkzOXNHRHg1WG8wZE1LcmlhWEd3?=
 =?utf-8?B?M3F6VU10MUE5RHNvY3prSitwMmdacHJwaGVsWTJ2b0srTmJEZkcvTGNBeDV5?=
 =?utf-8?B?WGdHQU9EOFRzalB2YkxLN1lpR1pkbjJKWHJZaW1mbmRNWWlDaE9GZlpDV0ZX?=
 =?utf-8?B?Vjl5ZFpVLzRvaWxmc3RPb21XV0lzQXF2clZZcGgwUmhlZTdoYU44VGduTENR?=
 =?utf-8?B?QU5NM3J4WEpINlJSNHZldjV0STZiZ0I3WEcyazV5VGdLU0I0RFZUZEx6Y25K?=
 =?utf-8?B?V1NiVUdUY2lXWEJzY01pdm5FQWkxdnhYWUtFY0lrV05ESVpQS0VTL3hWOWpK?=
 =?utf-8?B?WDJzOGMva2FMd1FBeE1qckFkdVE3OXBJRFpHRGhOc0twTk9rRGV2MVFzVStR?=
 =?utf-8?B?MmpCYUhQc2p1RWpLR2lPbUtGZlp0cTNNWWNZcGhYKzJEQmFSNHZXc2xPZnhC?=
 =?utf-8?B?QlN3NWxoQmhydVdGKytyZ3k5Y0ZCUldGRWQ2U0NZdXJHYmpTdWN5Yk5ieXlP?=
 =?utf-8?B?UUl5WmlhRjQvRWlPQVRYSXRPNjR0dUZ5VllhdFVqdXRhUVlVZEdGZVZGbDY5?=
 =?utf-8?B?S0J1bkZHUmJQVGlKaXZ6cVVXbkdjelYzTTdKTzhobDZ5L3F0azM1T25pNm93?=
 =?utf-8?B?ME9abk4zYktteFNjbWRGSE0wMUxpSmhmSVp6bWJhbm1BZU1xaHhMbDlRQzlk?=
 =?utf-8?B?OXRua1ZnbVN3Y1IxY3BCSW8yWTI5a2JpZ0o5WjEydzFDSHdDcG5sUVlIclc0?=
 =?utf-8?B?c3lSU2o1REVtOXpCVEVZaC9BUjBuTVA4U05XT2R6VUFhSXpLOGdXRVY3UWRO?=
 =?utf-8?B?ZTkzZEtMa0dsN2d5cm0xVy9PemNpUHRlVWMrdmNaQnpZY2tmSFdKTlpleTdJ?=
 =?utf-8?B?aFQ0RlJhaTU5UEVqbWhDUzFHd0Nsb1JscVJxakdFa3E1RHF1akNuMmM5Nmt1?=
 =?utf-8?B?Y0ZId0pQUkM1YVoyWkxGUU9kdTNwdW94SmVBR2tPaXVUeDFPK1BDZnhQWHc4?=
 =?utf-8?B?Z25MRVFON0pIOW5sa3NFQmN3MWNoa0RQS3NwN3Q3SmI1TWR2Y0ZwdThZQisw?=
 =?utf-8?B?VExrS2dYSmVxZzU3RGxleTFpL1Bad3RrMFJ6YlRtazl1Wmo4dG5kQUFMRXlQ?=
 =?utf-8?B?N1N3aW91VW03eFlydlJIQ091U1o1ZTU2bnBia2RKUWtzL3A1Qno4ZDRwRkpj?=
 =?utf-8?B?Q2Jpay9ZT3Q2ait1YXJQUjI1cmh3ay9wUGZiMzh3S2FTRTNHQzBDTDJNVXZ5?=
 =?utf-8?B?RS9GSUdwRzBoN1NzZDRIbzVYQjZVU3ZKU01PbkpYMnZhSXZiN1hHV2FlSUda?=
 =?utf-8?B?MVFjTVgzZU1EY0ZRaXlZLzJvcy9lYldmekdqeXkwdU5XaEtLSlBVY0hyNklo?=
 =?utf-8?B?NU9nU3RPN2hSdHhBWC9sWUdhWVVHdmMyejdqbnBLZWFXdkxwbW9zK0lSWWla?=
 =?utf-8?Q?g5s2cQ56SbJ3d?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dVdsWjBXMkpValRrK0MxSFNEQ1NqN2M0ejRZUFVzVVoxRlI0R0tnODVNME9S?=
 =?utf-8?B?eFFTcjBLUHhVVk9pYjMzenhNT0NKc25lNUQ0eDJBNVJLQVA0R0svY1NiU1NE?=
 =?utf-8?B?Q1lxMjF3aU9Tdld2U0hvUlVTTThTaEtPNDZFRDBaQnFiTk9yVHlmbXFYZk5z?=
 =?utf-8?B?ci9IU0xDOG1vMzZFb0pvSjhCZGJNY0M1N3FnODlTc0g3L01sckJXMGc1Q0FT?=
 =?utf-8?B?L0VOS1lLM0ZPb29kYm1CRXFDbzBhK3VwZ0VZNmRHOUhRSFFteTN6SjZValVa?=
 =?utf-8?B?bitTUW51dEdsbnl6OXVYditjR2wwTHR3alhNVDZZZlJjUGhObGpxV3hwUDNM?=
 =?utf-8?B?dzBCTHFjQ04xVEdVMmZDQllNUG9RWXdzNGQyd2pqVWFZRFVCVHJFV2VyNEIz?=
 =?utf-8?B?OVZVUG85dzdUemx2dFdvcG9KK2k0alJmTkVJZW9wVUdJYnhYL0ZYMHd0enlq?=
 =?utf-8?B?UVFDN21YTXBqdTJKSzlUWXNuWVhYTm5WRFVMK2R6ck9rdkcrVTEycEpJOGlZ?=
 =?utf-8?B?SGQ4cnpXNGtzUGJtOFZZZGhya1VLTXh0QlVrRDc2YzlLZFdKNWVsWENJTjVJ?=
 =?utf-8?B?dGNqb3lhdWxGQWpvaUNKVUZ5VFhmTFJYdWxyRDNhTll4dC9RaWpOeUk5dWNU?=
 =?utf-8?B?MGtUT28ya2lPWFh2ekRBVnduQWpUKzExOTJ3SGRialoyNnNTSlZnQkNvN2NG?=
 =?utf-8?B?VHJWWDF1TDQxS2Q2MG13bDQ0bHBTSjdjOGtHSHZUN3J4S2lSeXZHWEQ5RHN0?=
 =?utf-8?B?a1RNWm1FS0xSdm0yejBaSFdSblhTSmdhVm5UOFRURlZaSVBQbThYeThYUzJy?=
 =?utf-8?B?UGtHSS8zZ1RKNXVvUWpoYWVlbG9sVTJNNDE5T3pNZmRpVDRCMmhUeUQzZk1G?=
 =?utf-8?B?QUswcFdaRFNFN3g0Qm94Q0I4QnJkMjVIalFjUjBLSXdrZXBZYkxDK200Z0Jo?=
 =?utf-8?B?WGZZQ1hLb3REcWhkUy9lTnl0dkR3VENXTU1McjQ2Q3pCbW9QR2NJSllLRUxh?=
 =?utf-8?B?RjI1ckZNZkhGN1huRUZpTkJxVDJ1UXRkamFPSlR5WVp5WEhPUXRGY2ZoVTF5?=
 =?utf-8?B?ME8wY3FSN3RVUjkyd214b2FUaHFSbjBrVzhmblVianBBOGZId1JCVTN0VEtt?=
 =?utf-8?B?ekNhdmYrNHBzN3lQcmY2ZmhrVUxuM0RBWTlLTGVZMTVTSWpWQU9LbEYrVmY5?=
 =?utf-8?B?YW9WNU1aRVczODMwWFlkdGd4MjBsc1MxcnBtbEFWdnZIa0wxQ1dJT09MeGt6?=
 =?utf-8?B?SXVrQzkyVUpCQ0g4VUg5ZFZJY0luS2Q4dzV6Ymw1L3ZBNkNSY001RVRNRTBM?=
 =?utf-8?B?bWNyL0d2a0lIZ1RWZm5FWUY4b1VuMVppMkcrcE1DZHh6dkZWc29heWdzcHNs?=
 =?utf-8?B?U1pLcEhDTVYrejhrenNWN3lnaUsvU1JjMndWM2h5dTNka0l5VWgzajdzUDBE?=
 =?utf-8?B?QWxZcXNWVURMMmVHaDRRTkdDYUxiQlAzS2N1SFRlWWNhaURGMUhBYUwyUzEr?=
 =?utf-8?B?dXFndTFkMi9YYXhkd2t5UGoxNXl0aWhJT1dGOVhDL0c3eEFta0dzWDE4UDRG?=
 =?utf-8?B?d1pqV2N2YjRlczU2NGRyV3pDUVVVYUF2Q3FUd0U5NGJhR0k4ZVpnVi9HczdB?=
 =?utf-8?B?UllYdEJLZVMrRzJyd2lSQndwSnlZcWpUTE12b2lsc0FxMmtNclhVVTNhRC9r?=
 =?utf-8?B?YW5mQjBoeEdkMVR4cmx3QWZVOFp6RDNLVkFNUmpheFVUcFhGUFlZaXA1NHpF?=
 =?utf-8?B?TTR5d1dWTk1Fd1N4cEJjRTZOdzlYQ3ZhV3JEbnVsd0JneVVkSTJicExoTlhF?=
 =?utf-8?B?cU5OUnJPZks4TlRpaVF6L0NmR1p1aFM5Q0lTd0NaZTN4ZWRKYmpWOHdWa3FR?=
 =?utf-8?B?SVVCV2dabHhZa0FyOGx0QzArR0pRazAyUHYwM2dPeVJEd0dsa2g3T1JHaVRq?=
 =?utf-8?B?ZkRDUEg0LzZsWXErSzFtclltWG5jeGEwMFZyMjRzN1pvUWtIQUFpaEVKZy9F?=
 =?utf-8?B?akZZaVdFczg0VWZ5WGF3N2RVYXd2MTJ6VnhDRWpHRnhtcCtOb0FyR1Jidnp6?=
 =?utf-8?B?VlNNcitKK3M4cmdST0R4emJDRCsyemd1em1vRDJ0dk5jamVmTkhzVmtYaDZT?=
 =?utf-8?B?T1NmeTlzU3lLUXpvWHYyTVN5c3E3MGRBWStxb0VyRnNCdm9ja3VEMzhaZ3lM?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44815130-6e42-415d-8cd8-08dd75d7d657
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Apr 2025 13:26:43.3765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: doClAjW+3QP/xnKqRnV/H9BXnOvEqe7/g6VIOKdCYcXgXr9SvcZc+neTuntbZ9tley4LIeM0bzP/1mtXkO//eqCGtxyxULxHLanJDnPwAn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7269
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744032408; x=1775568408;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VplvSiihV6s3mjDMVX6dw2xA0/p3WgT6xOc+SZffOyc=;
 b=QBXSJ/wrDqUVXc/DdFCf6CiFGCDUAU+SU8wGnzddabkHcccDDRqIuj7e
 Zl/vR8biO58J+A57tgf9vWdVzwJ2Khhn/DdL+4V6Ng8Mu+SrcU36VCJmt
 qIOxKCjF2JG8cZljdgU3O0ikOD+bD4WeBQpy3KNxuBzpqrQNSXOryX2MY
 t0AAZckwdAb8BgrYhlDN24zk2NX4coMbyMtehxHCCbJJtl3RXYXtQb5lA
 370YNvsJSr/8bdDZ0NcVBgAy5gnwksV5QJW1A/Xe1ngeSr+Wn7tHHfrPy
 x3bCPyvIn4X2RUZJJEYBVr4Nm5PExdeG4SSey8TvuiCaZxjyYcSGf5JOd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QBXSJ/wr
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: use DSN instead of
 PCI BDF for ice_adapter index
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


>> struct ice_adapter {
>> 	refcount_t refcount;
>> 	/* For access to the GLTSYN_TIME register */
>> 	spinlock_t ptp_gltsyn_time_lock;
>>
>> 	struct ice_pf *ctrl_pf;
>> 	struct ice_port_list ports;
>> +	u64 device_serial_number;
>> };
>>


>> +	index = ice_adapter_index(dsn);
>> 	scoped_guard(mutex, &ice_adapters_mutex) {
>> 		err = xa_insert(&ice_adapters, index, NULL, GFP_KERNEL);
>> 		if (err == -EBUSY) {
>> 			adapter = xa_load(&ice_adapters, index);
>> 			refcount_inc(&adapter->refcount);
>> +			WARN_ON_ONCE(adapter->device_serial_number != dsn);
> 
> Warn and done? How unlikely is this? I mean, can this happen in real
> world? If yes, that's a bug.

Very unlikely, one would have to have weird NVM *and* also running
32bit mode, I don't like complicating the normal flow to be able to
run fine on misconfigured setups. One redundant field in the struct
and an unlikely() branch on the init path already is almost too much
for my liking, but human will get to know immediately.

