Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A0525A88117
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 15:05:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D0F396F666;
	Mon, 14 Apr 2025 13:05:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w0_6plsrqS0H; Mon, 14 Apr 2025 13:05:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F3D561072
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744635908;
	bh=nlT5mtFuhC+6+0LTKMt4hhfvi6UFf0ICXbh2TwayMcc=;
	h=To:CC:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=S/nNO7e9INBzsKrQhsSFKHeIwszaLEhO23gAGZcJgMYri90ER+AbM6W10gXk2iEO+
	 xGXzZRJVeMWowkZKiXhIcCryLUsXS81uIUnjKjCVuJgMGZz9xSLdtlR0C81oqzOQFd
	 Wlr6D13TMop5LtvSexA+npkygNrsWK92X5hpVgOvvxjHL60aI6GAda0TOBXv0Bm2Wh
	 RxwJH5V7Ip/qr2WJ8cCyJHVnXUGFrzZpLH3w3i/y5u3AAnVsq7+n3bRq9/V5bpWwYF
	 Kj0aFhQTF+LANhoBxUHizfPnfn2y6OKutpN6+eww59JggN83iDuokuz0eyqQX5GQsw
	 B1K8d+2RsZ9bQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F3D561072;
	Mon, 14 Apr 2025 13:05:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CB3ECDE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:05:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B10E5610BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:05:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GLTFH4xhnkg6 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 13:05:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CD0D2610C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD0D2610C9
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD0D2610C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 13:05:04 +0000 (UTC)
X-CSE-ConnectionGUID: 2NOISRX7RHmDamt5FU9ecg==
X-CSE-MsgGUID: KJrVe3JHR2menTHZGXxmKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="45239953"
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="45239953"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:05:04 -0700
X-CSE-ConnectionGUID: ENvS4Vq7SPWUC0EkiIMr5Q==
X-CSE-MsgGUID: Shpc332nQ6iWRe4K1iS6jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,212,1739865600"; d="scan'208";a="134968353"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2025 06:05:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 14 Apr 2025 06:05:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 14 Apr 2025 06:05:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 14 Apr 2025 06:05:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vwSitTLn1vem9uRQ4zbPNfmADSh7xEeFjxk7eGycvrh2j2lBDlNldXTc81qpMDuMPvORHe5FlLpiKba1jusGXEIHCGyzCz7yLCW08yff0CkoNCU6TOPpgoEpVqB4+lc4nt/bgKEYFEioFUT/xNYK0lGt5uDxaeMHnztlxteCpzsLPqVANHgT58cniGo+GelhXpjyORaLjtpRYQH6F/5tpFxIcqBS+jV1YCgb4ekyJNPRgAwcGE/zQRK0GxAwdR74hnBRgTlExrfOZXOhZxKORb8tHzpvw/iafMX4lXXDRqpRMTrK5u4Xs9R0CRbwydUS+pXJ4rsLa3b/0QA365cDQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nlT5mtFuhC+6+0LTKMt4hhfvi6UFf0ICXbh2TwayMcc=;
 b=GnMi4rw9oybD538qOs/bDaoS7HT70nxFoYQUAKO/VjaH3ppIfMJKS8AwdVmAnrHijuMSC1yIcOQp2UnMNMtC0yDRO4+wgGmRs9whzpewqOzxnakXw3IRd37aLa4QnNieXk7Hq3yxjVG4mYq3+UmrqFon5coM/Basw6WD265M5E83RRL9y0HQ+h0gPhxQEdytjB5zO9rSv+u6nukoTN+fQNtenzINRXewo5gHOluZrh553vMQ5VZcVywRG95Bg1qys3QplS97S1q17tTB3GQbmy9258ktIlcCMSImKyRqhZIp9ZeErxYVI45E/QDbP6wnMSxLKqbYlsdvDiQu76vL8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5934.namprd11.prod.outlook.com (2603:10b6:303:189::7)
 by SJ0PR11MB4782.namprd11.prod.outlook.com (2603:10b6:a03:2df::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Mon, 14 Apr
 2025 13:04:57 +0000
Received: from MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408]) by MW4PR11MB5934.namprd11.prod.outlook.com
 ([fe80::96ae:ce0:2a38:7408%5]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 13:04:57 +0000
To: =?UTF-8?Q?Marek_Marczykowski-G=c3=b3recki?=
 <marmarek@invisiblethingslab.com>
CC: Jesse Brandeburg <jesse.brandeburg@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <netdev@vger.kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <regressions@lists.linux.dev>,
 <stable@vger.kernel.org>, Sasha Levin <sashal@kernel.org>
References: <Z_z9EjcKtwHCQcZR@mail-itl>
 <b1f5e997-033c-33ed-5e3b-6fe2632bf718@intel.com> <Z_0GYR8jR-5NWZ9K@mail-itl>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <50da66d0-fe66-0563-4d34-7bd2e25695a4@intel.com>
Date: Mon, 14 Apr 2025 16:04:51 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <Z_0GYR8jR-5NWZ9K@mail-itl>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::18) To MW4PR11MB5934.namprd11.prod.outlook.com
 (2603:10b6:303:189::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB5934:EE_|SJ0PR11MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: 89881ee5-fb8a-48d3-20ca-08dd7b54f4d8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YW04WU13Y0dXMEc4NlM5bzZmTTFKWCtlQjlPQ0l2RWpXZkFiYXlSdDhDNkg4?=
 =?utf-8?B?ZENjaG5Hc2VkckhhNHVrMmxPU0MrZEV1L3g2YmEvZzF3TVJSemNPbFYxOTAx?=
 =?utf-8?B?c0gwSkxOa2tLR0FDUEFuYjdONHVsb2ZOTmZYUDNQdVNRV1RRQ2YvbFZOcG14?=
 =?utf-8?B?MVUzOWN4elB1eGVLeEpzdFNZM3hPZEFSOTM4QU5TMFU1Z1ZsQm5Zbm55dlpL?=
 =?utf-8?B?dmsyNDJNRDN5cENSUUJDWGVoYUFwb0REUXhkdERSWFk0bUJmSG1SVUN3V2Ni?=
 =?utf-8?B?Q2JVYkFJOFQzd2xiZ2k5YWNqY1c4d0daSU9rS3d6c0dWRXBTYUVKcTcwamF3?=
 =?utf-8?B?NUlLcjFkd0FaaWtpSHNYYnYyckRybW5Ga204ejlqQmVGY0NpZGFBR1JsU1R3?=
 =?utf-8?B?RVJKY3RxZkt4eXNaNGRFallKeTJ2TXd5TG1KR2E4NDNmZGo5Q2cvZk51YWpL?=
 =?utf-8?B?MHBidFBSYXFpeWtXMXEycUhxOGpWdnhnTFg1bWx1OFRLRjZHSzJqUnBXbWt0?=
 =?utf-8?B?UVliN0c3dTl5bUhkdUU2NDNEdnZBVVREdVVXbDRJUElkaFJUVDVFT1QzZ3Bw?=
 =?utf-8?B?cVlVOHhzcHdkUDVKY3Z4SUtCdU4yT3B4STZvTXE4L3hBWjhEdXZiWUJFZ2xY?=
 =?utf-8?B?cHdlVmxaWkFncVMzdStoa2JqSVAvMjh4QjlqNzlZR1ZWSmpFZ0VIaGl0L1dS?=
 =?utf-8?B?YW5xTFF5cHEyUEk1MVlpWG5OOExkTnZCYUpLZDNuUk1wL3RzRDgvbkQwb2dL?=
 =?utf-8?B?a05XREs4OWdaMXhESHF2VnBmd2NrNE0xYnFBemZsbFdBSytEbTZNdUZ0Nkl3?=
 =?utf-8?B?bUNXcWcvaTdJbUUxWmZHYldZeUJqWFBXOVVCNkRaV1pHNnh5T0l0MVlLVDNK?=
 =?utf-8?B?L0JIUGZhMXoxV1ljQVg4T0FLa3QyOWlROEdhbkthZVVuZEZzK2ZVelNJWTdB?=
 =?utf-8?B?QThCSjJVazY1YjVFL3phTTAyT1JDQzUzK0wzbTBZOWplTzBuNVB0M2V6YTE4?=
 =?utf-8?B?RWFEZlhGWk9TMDV3K3RsSHI5QVlCbU5HZTFnYkNuYXR3U0xOTlQvdTR3ZmJv?=
 =?utf-8?B?eDVVa0tHc1NYSSt6bkJWVGsybHh4eXpEaVd5VzNSZDZ5bE53K21LNEVWYjZF?=
 =?utf-8?B?OWhoUzVMYWtwajBobE01SHljcXczQnhrNFZuSWJycnp2R2J1cm1TTjlOOGQz?=
 =?utf-8?B?SW41TjhUWG9EbkxsNkJnOFhnbkplN3BPWE9pT2p3cDlURHJuQ0kyUXVLVU16?=
 =?utf-8?B?bmwyOUs3TUVGY0Y1R1BQUDdXc1M5cEUzU2dvNUZPY0NUV3BuQWsyc1hTbHE2?=
 =?utf-8?B?cGlnQzNaZWUrWlN6ekRtdzdqTnhXQ2o5UW5xeWdyOVo2NzE0TGxkOGtzY0l6?=
 =?utf-8?B?NXQ4dG12NjFydWYxaHZweXlXS3JaOGxxYTUyVkNYZTh5UGpwSGp2TXZMR3Fu?=
 =?utf-8?B?OUNEMnF2eXloRE1pbWFFcUdQSExiaWZ0Ynh4WitmM3Y1YXUwNWcxKzBlY1Zj?=
 =?utf-8?B?SllYakdZTEUxclpMbkZ2MC82MTkxNGZsKzA0OHd1V1JMRE11TFNFeDBnd0NR?=
 =?utf-8?B?YVdMcWhlNCtaZHVVRk5xWENUMVFZSHhGYVptYTcxMitMTzdMSkNiL3g4aE5U?=
 =?utf-8?B?WjlKQXBza3BrVUxqWktBMEZ6bjZxQ0p5eWkzeG1sYzBGNzlJdWluck1oL255?=
 =?utf-8?B?anU3SEZEQjhETnRDc2ptWk9KWjRVQTIySngxaERNeVdOODQxNXFTdnh5Ky9z?=
 =?utf-8?B?RmZ2MDhhT0JUOG5tQnducWljN2xBN3VqaTQvQkV5TThnNE9aenFWcWtCcmUx?=
 =?utf-8?B?V0dGc09EeWZ1OGNkTlJXUWt5dGN5Q3RNTHBjb3p6cEl2NmNxZjdjNGxua2Z1?=
 =?utf-8?B?Z01IWWRnQzkrKzh0Q0xsMXdyekxGcmwrUTVJMXF3YkEwSnhKMWxaSzM4NFA5?=
 =?utf-8?Q?vWbSS0/q6/8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5934.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2dHRXlRcmd3aXBldFQ1bldZWEZ0S1ZWd1IyWjcxZUUyOWJNNWNzZ1loMVl0?=
 =?utf-8?B?TUUwNEo5UkxieGFmcTNldVViVzMycUFHeG5kTDhpZk13cXVWR2c1Y093SXlx?=
 =?utf-8?B?L1RxUE5LTUZ1ajF3UzV0QUFiZmxhWkhrcGhVam9JZG5CM1BWZ0FQcnRYbVN1?=
 =?utf-8?B?YlJRamN6TWZqcThmb0Ruc0ZrUDVHVHg1eHM1VndxYWIzUGd1STY3ZXBRNVB6?=
 =?utf-8?B?OW5aUUh4TVFreWFlSnk0bDZMSzFranRvazJSLzFTbGhMa215aDRYbGxsTHR3?=
 =?utf-8?B?eGx4LzZnSDBoMEZwaWdoV1hKem9CMGlQT3hRblNIUHhPTFpkS293VlVqWGVo?=
 =?utf-8?B?OG8vTDhwbkZxNHFicVJmd2JhTi95STA2eGtWeEwwN29ScGExd3ZiZCtJdDU0?=
 =?utf-8?B?OERjdjNoSlZ4QTQ0azBtaEpLdGY2RHJqVzcxYWQ1UlRhOUk4MlVZc0dRdFc0?=
 =?utf-8?B?Tk5LSjdMVE1uL2xFUnZOdlZ2YXlUYTZ3c0l3SmRoTjFnNDh5L0krMkowUzdU?=
 =?utf-8?B?MFU0NW1PZCtlNHQ2cVh5YTA2NHcvL01EYURvUmZXeWdST3RMUUV5d3p2ZDdv?=
 =?utf-8?B?TTdpMjRxV2F0NXBKRXBIeGYyWGIyK0ZHOEExTnJLcEJWZXVQZWN2dGo4eU1G?=
 =?utf-8?B?cjB3SlU2WGpRN3hYS3FNUjc5U2xJRUFrMlArZjNDUlpUWVRWM3BJditwZ0wv?=
 =?utf-8?B?MHdFcmpKMXNkZXFJQVcvV250aE1wSFZsRnpRa2liTHlmS2ovWjhRLytNakRY?=
 =?utf-8?B?RzVNdzF5RjN4VlVqRFgxTnBPMFV3Y09ZV05kZC9FUWduajkrOWthVUxHNi9J?=
 =?utf-8?B?cFVRd2FqNDVhalZBb2xjMG1jVTdhZjVCQ2NyeGR0Zlk1dnQ4cXdSa0VoTTYy?=
 =?utf-8?B?RGlURWQ4Y0pXQng2OFZiYndQMzN1djBJWkdIeUQzUS82ZEFXM09PKzJsTEVn?=
 =?utf-8?B?NkJrdysxN3EzbXJBS3pHWnhjb3RsLzJ3Qlpib1I4aHdYYUpVR1h2OVMwNVB4?=
 =?utf-8?B?MkMreXZqUmsxMGtSdUFHYWVHMElnTDY0QUU4OURhb09KR1RxdG5JM3BWK3FL?=
 =?utf-8?B?N3UzeEJKZmxZc3ZqL3Q5QkI5ZE51UGhsRXhySmlZU21jVHIraCs5R1g4N3Z5?=
 =?utf-8?B?eGJLbVpXa1lleFl2NlhHRGQwYXVHOEY1ZUFBd1I3a0QwZFFXWXo5akl2WEdQ?=
 =?utf-8?B?Zi9KbUt0c3YyZVFhZ2JORFZzU3M0cnlPOXRZZDh6RzNRWW5XS1NiOUZQUUZs?=
 =?utf-8?B?L0RpZWxlSi9iQ2J2VTJ0aVJEazFhcHJJUkRjYSt1cDVVY096dWR1eHFSZHls?=
 =?utf-8?B?THRIdlhJa1BFK1UxbkpTRkxWRmx1TDY1YmkxdDdhQk9vTTgveTRQTHhqMzlJ?=
 =?utf-8?B?cmhxSk1JOXRLd0RqZzhPYUxFa0JoOXQxcEw5cjRodUZmeER6LzZ3c0hjN3BY?=
 =?utf-8?B?RS9MM3p3VmEvRG96SU5HRzFzc05HcHM1WUlDeXcwbDJSTWtEdUM1YmE5dS8y?=
 =?utf-8?B?UGFHRy9HSnBjZE5RcTVncEZLTkFmV2pidjV1R29TZDdlQnBqV0ZmcThPbVpC?=
 =?utf-8?B?bFBWaFMxRUdLcFJnNUxSc1YxV0tqZ0VPQVlRM1AzK1FUdHpCM1NYR3JGOW8z?=
 =?utf-8?B?TlJMMlVMZFdPVTIrSGZUbUUxL3hBRVRPcTB0VTl0Q0hQRnN0UWk5WSswUmdG?=
 =?utf-8?B?MCtpcGRqNXVqMWRDcW5DMnd4Vit5dFVBelNwS2lEdGJNU0prVm0rcFZmbTZv?=
 =?utf-8?B?QWVFdGhGdTFxNURiYlJvRXpEajJBaGsvS1JsbjB4MzkvcVJvWTdORWF1eDNi?=
 =?utf-8?B?d0szYTQweDAweSt2TThZL2VISUc5cytPMmw5N2V1QUlVM21HRWtOU0NGWnNT?=
 =?utf-8?B?L1lvRUtuYnB0eFF0Q0tzYVNpd2J0aGdUSjJNUWxFUnJNTEU4Qk56TUFpdUht?=
 =?utf-8?B?KzJFSSszU25oS0s0SEN6RkREMktjWHpCVkhaTXFnakliMm9QMTVsNEtSSkpL?=
 =?utf-8?B?Z0FPTXg4NUFOdVUzOVRWSFRCVkZHaGhSTXBBQVN4N1preG5MOEk4S0FxZUVs?=
 =?utf-8?B?ZnF3ZnkyMlJIbEt5UFhubnY3aUZ3T1dzbTVWRHBIT1FxWS9OMjFXTUJzOEdw?=
 =?utf-8?B?RUpuK2lvUTVsTjJSTTBhSzM0blJqZGdEZnFGZDRjNXpUckxrNXhYSjVrRUdn?=
 =?utf-8?B?d2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89881ee5-fb8a-48d3-20ca-08dd7b54f4d8
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5934.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2025 13:04:57.4565 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0jlJZVUhFVLuOz9YUi4VKcV9Q+xuTt16VQFLU3EOWpfNQ7WAbicaxQAfEa7T2eg7SQ9aoLN+d+quAmgk++0rxl4WSzfQN7S3x9OT4m9SuRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4782
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744635905; x=1776171905;
 h=subject:to:cc:references:from:message-id:date:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hYi+UylaL2usAQnzCV2LfFBbXi0HNPl4Hq6/MjxA688=;
 b=JSLgjMkGQuRPD5N4kXUy1mvTImHQ0anqfV5mGc6dLNwLIKhi1JBTYJ33
 PjRVPCZwXDcebVvPnExljXOzFS4eGCGzlS8PYdGliiUY5HxeImWdh7TVH
 S79uCCggE/eGJnN6OK8Ou+ECbzX10TsWD39DfRJoTYrYGF/c8Vm/idSzT
 yuHO9K+CYct6dmbOTGUqHXDIU+UW2zEF1EXV7Ky5r0602dkTakwd0faue
 TXCymTj/HBgkzpdwOseQaWheW+nq8ehwKKshT7ZboLxyh1dyk6pRSO415
 zPl6FonopPqexkhgh7bi1UO8d7CvrkgBVzzEK9Jxt/vqlEJsUxDlsjwf4
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JSLgjMkG
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [REGRESSION] e1000e heavy packet loss on
 Meteor Lake - 6.14.2
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



On 4/14/2025 3:58 PM, Marek Marczykowski-Górecki wrote:
> On Mon, Apr 14, 2025 at 03:38:39PM +0300, Lifshits, Vitaly wrote:
>> Do you see the high packet loss without the virtualization?
> 
> I can't check that easily right now, will try later.
> 
>> Can you please share the lspci output?
> 
> Sure:
> 
> 00:07.0 Ethernet controller [0200]: Intel Corporation Device [8086:550a] (rev 20)
> 	Subsystem: CLEVO/KAPOK Computer Device [1558:a743]
> 	Physical Slot: 7
> 	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx+
> 	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
> 	Latency: 64
> 	Interrupt: pin D routed to IRQ 69
> 	Region 0: Memory at f2000000 (32-bit, non-prefetchable) [size=128K]
> 	Capabilities: [c8] Power Management version 3
> 		Flags: PMEClk- DSI+ D1- D2- AuxCurrent=0mA PME(D0-,D1-,D2-,D3hot-,D3cold-)
> 		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=1 PME-
> 	Capabilities: [d0] MSI: Enable+ Count=1/1 Maskable- 64bit+
> 		Address: 00000000fee00000  Data: 0000
> 	Kernel driver in use: e1000e
> 	Kernel modules: e1000e
> 


Do you have mei modules running? Can you try if disabling them make 
things better?

> 
> 
>> Does your switch/link partner support flow control? if it is configurable
>> can you try to enable it?
> 
> It does support it. Enabling it makes things much worse...
> 
>> Do you see any errors in dmesg related to the e1000e driver?
> 
> Not really.
> dmesg | grep 'e1000e\|ens7':
> 
> [    3.088489] e1000e: Intel(R) PRO/1000 Network Driver
> [    3.088512] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    3.093256] e1000e 0000:00:07.0: Interrupt Throttling Rate (ints/sec) set to dynamic conservative mode
> [    3.343378] e1000e 0000:00:07.0 0000:00:07.0 (uninitialized): registered PHC clock
> [    3.718946] e1000e 0000:00:07.0 eth0: (PCI Express:2.5GT/s:Width x1) d4:93:90:3e:0d:bb
> [    3.718966] e1000e 0000:00:07.0 eth0: Intel(R) PRO/1000 Network Connection
> [    3.719101] e1000e 0000:00:07.0 eth0: MAC: 16, PHY: 12, PBA No: FFFFFF-0FF
> [    3.759444] e1000e 0000:00:07.0 ens7: renamed from eth0
> [    8.632317] e1000e 0000:00:07.0 ens7: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: None
> [  239.458205] e1000e 0000:00:07.0 ens7: NIC Link is Down
> [  242.485869] e1000e 0000:00:07.0 ens7: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> (you can also see a test with flow control above)
> 
> 
> And also ethtool output if useful:
> Settings for ens7:
> 	Supported ports: [ TP ]
> 	Supported link modes:   10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full
> 	Supported pause frame use: Symmetric Receive-only
> 	Supports auto-negotiation: Yes
> 	Supported FEC modes: Not reported
> 	Advertised link modes:  10baseT/Half 10baseT/Full
> 	                        100baseT/Half 100baseT/Full
> 	                        1000baseT/Full
> 	Advertised pause frame use: Symmetric Receive-only
> 	Advertised auto-negotiation: Yes
> 	Advertised FEC modes: Not reported
> 	Link partner advertised link modes:  10baseT/Half 10baseT/Full
> 	                                     100baseT/Half 100baseT/Full
> 	                                     1000baseT/Full
> 	Link partner advertised pause frame use: No
> 	Link partner advertised auto-negotiation: Yes
> 	Link partner advertised FEC modes: Not reported
> 	Speed: 1000Mb/s
> 	Duplex: Full
> 	Auto-negotiation: on
> 	Port: Twisted Pair
> 	PHYAD: 1
> 	Transceiver: internal
> 	MDI-X: on (auto)
> 	Supports Wake-on: d
> 	Wake-on: d
>          Current message level: 0x00000007 (7)
>                                 drv probe link
> 	Link detected: yes
> 
> 
