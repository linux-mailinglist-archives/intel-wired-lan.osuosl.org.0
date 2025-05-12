Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B57AB45E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 23:01:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3C53880F72;
	Mon, 12 May 2025 21:01:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b0ahGPf_1YUM; Mon, 12 May 2025 21:01:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 93DD78101B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747083713;
	bh=pa4gp0TIDZrIjudayEmPr6sMG9WqLag92hsT5nrenSw=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GIkorh6RigaeTpWHIUhEEPciQpx0KSzl0KEkiswvBro3UWlI+42eKiaPmuSDnnpNA
	 OmwEjCcPKOTdcsCJwviILi8iss7eDcdHOXS72XreNYDzJ0r2yCiwFE3s+NsgnVsnPt
	 R4JTepTYhJURMT5tP8hFxFDsvQDuAMH7OZYvfvaErSmoAE+TtOtTmMQKIJZpk94I6u
	 +itHEH5B//Hg5h9cDoc6upONWe6fJXPlEvhqTN8vrPDt71SL9PtSzvg8hfYNBNWE0z
	 4rsWtGOFu36P9Rk3VhmVOHQ8qyIBqoGIoAD/3jx46FWdWBk4FtLm5PTZgJorCxbH1V
	 5FiLs3P7ialvw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93DD78101B;
	Mon, 12 May 2025 21:01:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E243150
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 21:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F3B0F80F0E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 21:01:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OT3-gnkmjhox for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 21:01:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6C0A580EDB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C0A580EDB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6C0A580EDB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 21:01:51 +0000 (UTC)
X-CSE-ConnectionGUID: kd/QDKdTScGjk8qlJEtrxg==
X-CSE-MsgGUID: vO+CdBfdQHS1KfWlWMWkkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="74301193"
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="74301193"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 14:01:51 -0700
X-CSE-ConnectionGUID: cQR8TZMtSfqKILgVR0HGkw==
X-CSE-MsgGUID: g9sKBknkT2GG2KrAr9DQpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,283,1739865600"; d="scan'208";a="137897596"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 14:01:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 14:01:50 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 14:01:50 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 14:01:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I9i/WcSUpugYOeAFp298GgWc5E8IVzVvOPrzV1A1qvWRiE+GeHwWk/Je0uvoOupu4s91/cKFxSNN4pPTTDfnI2De+6Xr9sznUYhO8XV0IBKzvCT8Ac4cID+i5UmP3+VEH4EcVOsAR3aL34/XsbM1wNKenA2A5CW0qAvaK6gGA3jnM6DtqXr4FT9cTyyYSWhTfjlLSBdLom8WJ+w+j7wuENeqHazEZDUmSytv5Ksi3QMKVGz54BIVwvVIU231x/vLZqqytL1iiE6Q1UdH9l1xUK3PsHE8G68Dve73NqN4jqKn5H+8zPjpb3S5UxeEOx9FCJf6i3LFuNMFVOgDqofquQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pa4gp0TIDZrIjudayEmPr6sMG9WqLag92hsT5nrenSw=;
 b=tXszCsRTJtHb3JdBo6KS1h2m1crRMBA/IIGlo03Bvx+gB3FcaiSftBMFGzxqjN+a7QYswgAb0s7K340EsABlxcHlJNUaHugt6W32C9XxW2oZ961/X9/CVI2CH3Zmvf7WE1XDlXbJYOMrz/SjSndcXGWoi1XOJfnqDJI/gzx2IaFO+xC3GuRVHcVs0v27vDzjHkpdWPmnGTGFF+v2QpspE3dPWWfSWWSQWt1tFgb5mUrWHwGvehdOFvLIi+npmwp7uzLloUE/PMzZn2SKOkl6qYmfNGZBGGIOUHUtqxYLGGHlzoLhKwo1jS7EE93X5/81+ZsqKdb3i2Ggy2BRpfD2oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by CY8PR11MB7746.namprd11.prod.outlook.com (2603:10b6:930:86::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.24; Mon, 12 May
 2025 21:01:31 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 21:01:31 +0000
Message-ID: <6fdd97cb-dad0-41a0-a9b7-ce5f91dbe823@intel.com>
Date: Mon, 12 May 2025 14:01:29 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Anton Nadezhdin
 <anton.nadezhdin@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <richardcochran@gmail.com>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20250512074721.4118376-1-anton.nadezhdin@intel.com>
 <4fdd9b80-ae0e-4445-9a15-3ff0be3569d2@molgen.mpg.de>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <4fdd9b80-ae0e-4445-9a15-3ff0be3569d2@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0228.namprd03.prod.outlook.com
 (2603:10b6:303:b9::23) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|CY8PR11MB7746:EE_
X-MS-Office365-Filtering-Correlation-Id: 70c065d4-db64-488a-7df7-08dd91982b76
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RGlYazFkYm9wcGYvM1l0cWlkd3hUZzhTWTBBV05RRi83MlFVOWFRczRDcncw?=
 =?utf-8?B?VUllbDU1aU54K290c3VsMWNFc2xPOWR3ZXdyVE1OVXFjVHJ5ZjY4NVFkVGdw?=
 =?utf-8?B?VjZMMjRLTHlxT0plcWR4MHRsblJ1cVJPRWR5UkpNSzVSTjZGZXVOTG1kWWxZ?=
 =?utf-8?B?d1V2eXJTMGNjTU5iaVRtZmNuaEZ4Rm9NMk1XTUduaTZ3WG1KY2pxU2dkaW1S?=
 =?utf-8?B?WW0yTVpiaGk2RGVqK2k4M291bGVvdFFBM2lpQ2lYRWNNL3p3VkhnVUs3eG1B?=
 =?utf-8?B?Z2ZvQ0JSZEtzdzVCWWl5OUt0aGVPZHZ0NUNpTGRiczVHVzZEb3VPSXZhUzJK?=
 =?utf-8?B?WGZHN2FicU5VUkNncXcxK1FSQjNmdVdTOFFFamc5TExSMmZVb2Q4amp0eXVv?=
 =?utf-8?B?OWN3MmYxbmxHV0ttbVF3RmZnOE1DbHVJUkkyQlBZTTB6ZnQ3YmQxVitEWnJt?=
 =?utf-8?B?OGJGbWc3cDdBcTNNK2k0SzVXNHh1WXoyM05zTm9FMEY2UXdrb2tnbThQZzJN?=
 =?utf-8?B?enhMNXJEenN5MEpYa2NxSGdoT0Y4dy9ldUZ1SC9vOW1BYi94MTFCck5uSHZ1?=
 =?utf-8?B?Q3R6dlVxcTZ1ZlpvUmYwWmpmYjZvU3lmdVdTRXFsODFiMk1TakhhZlZIWVNy?=
 =?utf-8?B?bHNNUWpGc3h3RjExallWbGJzeHdGL0x6dUcwRHlRYmZTMWhueTZLbDdEbStJ?=
 =?utf-8?B?bllweEt6R0FraU9GQldQNzBpanYvZ2NxVElSNzBGcWk3d2QzYkxpWm5rZGxG?=
 =?utf-8?B?Nk5aMnlXK2F4VUp1MzJpT1JVZGE4UU1LZ2c4VnBrVXVCSG1rR08rT0ZSckcv?=
 =?utf-8?B?M3VrTG9oWmRRM1BQZ1dETjJ1aE1ILzVnZHdoNG5pNk5DNTFMTVVnYmZMTXM0?=
 =?utf-8?B?T2k4QlZzRmJuUkZzTFpFTGZkQkpZb0FUN1BhdTNwTy9OdEhSVk8wVHF6Ymo4?=
 =?utf-8?B?SEpUekkwejlzYktUQkM0aGhrYy90azk4bWR1U0EyVzVPRGFEZWFwaG1VbnFP?=
 =?utf-8?B?RXJnSEZFRE1MdHJvU0pGYVRnelNpcWd6L21hMkt2b3hqNEg2ZUlQcEhpbDFo?=
 =?utf-8?B?NFc5ZHpGa2pYL25jaVhNOFY3STJLL2tRTFNPYlJSQ2FFUnNKbWlvWm9zMlg1?=
 =?utf-8?B?ZVZMMzNqbVV4OWhEcXpIZW9kYi9RaVNvZExmSGd3MGZoeW4vWDBob28xSEFG?=
 =?utf-8?B?c3hnZUlMclRTejEwRlF2a2hkSU54SmFlSGN4ZlZzWG9jUVpvSHRzSkVPQ012?=
 =?utf-8?B?MTF0Y3dpbWJFdmQyVUhSMzlya2NkQWFBQ0MrSHEzakpIWEd4UFJwRmE0WWVT?=
 =?utf-8?B?Y2poZHIwdm0xVnN4YUJrTzFuU1NrZ2dBQ3VlSEk2SGlVVWthelRSU085YkZH?=
 =?utf-8?B?dzd3Rk8xZ2YxbEMrR0M1YS9OenI5L2Jheng0akxCdTJ5cXFlUVdnV2NjWFEv?=
 =?utf-8?B?Rno4bUJTRk1MNUFGUHNsdjZQTzlsbW9Dc2ZlbkZKbW11MGdaaHlERFZpRm4v?=
 =?utf-8?B?WEZKV1ZFZE5nZXVNRkI1alA4dWpVSFlQTjJQOW9tQWMrOHlGRkNnZ2VqOXJs?=
 =?utf-8?B?dDdiTjZHWXVUM1EraHpGaGxzQUtzZUxzMW8vV25ieTJJQXh1dGhSTVJoV1h4?=
 =?utf-8?B?S3lnRFIxWGhSWFRZeWIrNUxrdmhGQjdkSmQwejU1K3RmakRaSHJGanBwZDF1?=
 =?utf-8?B?dk1uUkVOTEN5RzdaUmplRUM2MzY5UlpxcXJiRmxQR3F4ajk1em5McFllUlRS?=
 =?utf-8?B?bDVPSmpXTjgzTE1SZTJHZUVkTVRwelZDWitRYWo0T20vbjRsRS9jMUYrWSt1?=
 =?utf-8?B?d0c4YVhWd3RaRGl4cDRpU3NoU0ZQUW9MRjlIOWxlMGhKZWExa0FJZ0dva2xG?=
 =?utf-8?B?OGJoUzU0K3NGOEZHRTJqU2xLbnBxb3drQzBER1MyY3JDVmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eXlDYWk2ckZsVTJNemdrOFM1N1h4bXM5UnFyRmd3ekcxNGJoVjV2Y2RZanlm?=
 =?utf-8?B?bDVBOTdQMVlibVhqTXg4c0JKS1RKcUNGNkxSa3Nxd2I5SWN6V3NmNUNKVG1n?=
 =?utf-8?B?WlhLaHcxYUU3T1ZxR05qaHhSN1RmcXRrS2tWbmdsb3RWVHRvRFBzNVhZSEdH?=
 =?utf-8?B?Z3Z0Qkl2NXROamJEZm1PUzNCWDBpY0ZIRkFWaHM0d0d6UGw1djczOVFwQW5k?=
 =?utf-8?B?UXMrVU9aeGhUYm5CN1RIN1VSWVlBWEVuS1hBUDF4ckdzRmNwL3hKcERkSFVB?=
 =?utf-8?B?NmxLNHF4MFgvbXhERmxoZjZyUDVmV2kxRkJiK1EvdlZOTzhkc01teUhabXFh?=
 =?utf-8?B?WVV0MVhTZ2NtMWNtRzczd3dVTlZJL3Y5bUdsTWdFcTVEUUFucFA4NmtzUEsx?=
 =?utf-8?B?N29VL2JnQXR6bTVkZFhkTUMzNFZBbFBrUGphc1Rsdzd3V281RmxBbFZ3NEcx?=
 =?utf-8?B?L3FKZW1JS1dCMkhzSUVBQTVCcTFyREdVMGI5UEN0a1YwVTZKanBzcmJJR0ZC?=
 =?utf-8?B?N05lSlNTWTY3bGV4ODBnOXlMZ3ZkVUQyQ3dxQmk1ZDRwSS9lVmFxQ0JHSkxW?=
 =?utf-8?B?dUZEOXVTelZ1OG40RFA3NmhUbytiREhSWWRZZVJCbVhjT2JjQldoV3hWUFQ4?=
 =?utf-8?B?czF5aW5jbDM2Q3lTaWR6Ui9jRlF3b0lTbi9HaU9ocUdCVkE1M0lrMFFzUW9j?=
 =?utf-8?B?eHdWcENoZHdLc3p0V0E1MjNMaUhkdkk5V0NWMkg0N3JEMnJGYVdCMU45UWpJ?=
 =?utf-8?B?VXVOWW44RGR1WTJPdVZBUDY2ZmR2TFF0TjdSZVY2eDBvb1BxcStaRm8vRk8r?=
 =?utf-8?B?WERpdEV4c0tOUnVBS0lsbGRXTndicDVzTGtvK3pady9EVnZRY3F5N3RRTHB5?=
 =?utf-8?B?TE9TWVV0NWgrcitNYmFULzVTMHgxY0I4aUxVTlFzRkhueDVMdUpwc0NkMjJN?=
 =?utf-8?B?cXBDVE5Mb01qN2t6ZGwzSEdVUkFIam9lQjM5S3BSeVhSWjhxUllsTVFlWnRw?=
 =?utf-8?B?ckRSVGVOZW92MmlwMXpWdHBMb3VhamZWY0ZyYU9TeiswK3lEdXhiZVlHZmh1?=
 =?utf-8?B?a3Z5aW9BN0RWQ0QxUkMvUmRFNGFxQzhhbEJCWi82OUNqZGErSE5RRE5hZ2FJ?=
 =?utf-8?B?Y2V1YkZqdGhkWTIwc1RxcXRIRWtjbVZnOEsrdDAvaGVDckhicHZUTEROTC92?=
 =?utf-8?B?cklvNVFqS3Q3YUpjeEk2VmlTUXhncG5sQmNmbnpLM0M0RFdlMVd4MWcwZGVT?=
 =?utf-8?B?NFNET0oyVjNHSTluQlhCUzA0c2VrV3lNbTNONnEzRGp2Si90bmRtaENWMHhH?=
 =?utf-8?B?eUw1Wk1LaVZtbmpRNVMyY05TajVZK0FHNFZmWEdUOHlOSVNTVFVFQWJkUE9Y?=
 =?utf-8?B?RkJxejVkanhXZFBPcHBKNFlsZm51VzMrbGdrSG0yUEVQajJRMzZPQlRUbXdS?=
 =?utf-8?B?UzFkNFN3YjIzNk9zWkFmRGt5ZkM2K2F6ZHRrSWpoeFF6UWdMSDhobFYwcjY3?=
 =?utf-8?B?L0xLUU9nTmkwK2tzeUFJcXRNcktiQ3VhTjBmNWFSZlhSbEpCQkJkT0FKSEJv?=
 =?utf-8?B?SzB0UVlhcDBuamJuZDFDak5YS0pLWEZqNEpkSzlOelZXbE9BNERrNFYyS3Zl?=
 =?utf-8?B?WTRBUWl6N2kwdkFyczN4QWZXRFFQcUE5Sm9NNHRoNzVkNXZPSGtQcElyU1ZM?=
 =?utf-8?B?NEk5VlRKUU1mOEdEbFVvelh2RzlEWndZT0k3aVhFT2JxVEQvL1ZKeGxrclZt?=
 =?utf-8?B?ZGFxcmR4ZVg1L1BBOGdWamUvQWhOVHJGa1Vjbks4SkZ2Z2tVcnNJU2ZXa2pZ?=
 =?utf-8?B?OTJWQ2RzeUR0YkZXNDlkWDJsRnp3ZUdjOG0vMXh0aGt2RkUzUmlndUZ2OVEr?=
 =?utf-8?B?UG5JRlAzU3JUbFVDdkI2Wkt2S3NnaHFxdlBwS3BEcmJoTGgvbHNpRDl1Ullj?=
 =?utf-8?B?ODR2b29ZbUk5QlZ6KzYxdkQ0UXVhcGMvdTNkUDlnVk55K3RzT2JWMEJQVHpF?=
 =?utf-8?B?TTlBb1daOVFTdTZ4L2VobXAwUWlJamFOMEVuMFd3TUlXMFphRkl6Mm1lUVJm?=
 =?utf-8?B?YnExR3hkZkNIamFHQWxiMjh3RG9Eb094WlBwYUFqMzFWYTdPZm16dlpDV0Zh?=
 =?utf-8?B?TkI3ZU42bXprTU9HOEJ2MWN6cWw5WWVaQUQreXVtVWtlaVY5V3FYMXN1eklw?=
 =?utf-8?B?eHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70c065d4-db64-488a-7df7-08dd91982b76
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2025 21:01:31.1972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zZcECB55rDgE7zeQk7OivGnnRpGYfB2YX3vE+cBMMbw3QHSinRWMse+rKhTcmVohIvPClERgCWK6Q7XSqIzX2iwMcqAjEHmfpgediqqimh8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7746
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747083711; x=1778619711;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OamHfcljavIQIQyRFH6JUTd6GbTyeKEkvj44CKjyfdI=;
 b=a7agkJ03fXrPMfWE55SAlmLw04QlrEPXKXqS1RQH/4BGGqO0L4gwVfp8
 yXXECxRVHGk+21XEFSUZIDF0zCYL4aM3sM0oMTWM2f/fnVkxi1oO4Rqxx
 JaZyJRqbx9wPPPpIi9XU7g2BlbmfGuQG9+6kzFF1wXg5a+V/88AB1W0kz
 JjahuDdzUFvRYJk3FmbhEBdXFvcy/ZcXgnjGapHEdrQCNwuwSrQ+H4ZwL
 JP+Xq8taZ9tK3D3f71BpqSnaaX6Vk3vQ31kCeDt1DNwjplvTPzH2jFcVo
 EgWVKEC5T3J7U+GbD1NapDiGETQ8vFUUL1LECMcHDGdMhieBmV7hYJrMU
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a7agkJ03
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice/ptp: Fix reporting of
 crosstimestamp
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



On 5/12/2025 1:10 AM, Paul Menzel wrote:
> [Cc: +Thomas]
> 
> Dear Anton,
> 
> 
> Thank you for your patch. For the summary, I’d suggest something like:
> 
> ice/ptp: Report crosstimestamp in ns
> 
> 

IMHO this should still be "fix ...". This is only a bug because of the
refactor to remove convert_art_to_tsc(). It was always intended to
report the cross timestamp in nanoseconds, so a title of "report
crosstimestamp in ns" gives the wrong impression. This is fixing a bug,
not changing an intended behavior.
