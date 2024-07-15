Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB66F93169B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Jul 2024 16:24:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 607F240734;
	Mon, 15 Jul 2024 14:24:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0EjfYdRABY2w; Mon, 15 Jul 2024 14:23:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ED3A84074E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721053439;
	bh=pjd2uIcpbPVVCn7FbfIK35m6DXUTX5Ll+7qixrHgWcA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k3qrR52/uR9zHK16lxIsKWLFN0pd3R1II2+UH/Hvu5Wn7V3Z7ZxFrzvH4WJHqBN2T
	 CvKHZNKhfZ48D6VktnglLVqI7cWrCvieg0juqauTrVKiSd7zZ1UXNqBALxHKpUPEGt
	 kxVZ9GxRFKFsgVjB8R5VessRony2rVWC2e65jRie5SROQbqxoCwihi8dKaLMfrB8kv
	 xr0WkcE7aTDGIW22KGxsbGqGjRJxXnlMiQEsgeZmFlyJxa8FXn0Vzx1/H5eO+ANjz0
	 5Yf7o5uthhnNJDn/znthoL/lU4QEK2P/jihUvkgG1f4gdA8Sog32lsGkbO49TInnlB
	 IgvGWiIV6Lqrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ED3A84074E;
	Mon, 15 Jul 2024 14:23:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15C1D1BF3AD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:23:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0EB7640650
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:23:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AC46mT7PwtaZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Jul 2024 14:23:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 875D340608
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 875D340608
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 875D340608
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Jul 2024 14:23:53 +0000 (UTC)
X-CSE-ConnectionGUID: 4/ZTp+NVQLC2fLum7bY6lg==
X-CSE-MsgGUID: rH2lZj/YRPWJwFu/1oGWpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11134"; a="29025514"
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="29025514"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2024 07:23:53 -0700
X-CSE-ConnectionGUID: rBDMYgu/QiOEu9OExlX/aQ==
X-CSE-MsgGUID: Cjwk7K/rSn2ig++Q26SNTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,210,1716274800"; d="scan'208";a="54816713"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jul 2024 07:23:53 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 07:23:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 15 Jul 2024 07:23:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 15 Jul 2024 07:23:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 15 Jul 2024 07:23:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Drz34mFrW67A1Cr6xaLuFCJa2z2EEGY8t48a94XHLYujSGJDbakw8WARqsfGjaWYA5j0A7nf3W/YH4ugcOmN7c2Rv8XUgvJ8xtafAUDT7vCJwOPKNgBONKhekU4AXyFGHe0h0e3SU51uZQ5FpF6eBPEV7tSgRNQDJ6dz1P4vxcbkIr63GKtrGKk6NVY9NP0iVplHEad78M7MAZmGNDBZMPd7xrWIaGnsyNbhGuSeDRSjMcoAJcsfARFTyd6YkDeBumj7lg3N368N/FC1e3ob+qu6ganilv3m+PGnqogb+vRUixSkyiR6ntgXSdxRi0lfWpgHe/TD0mUfABw6c0PkIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pjd2uIcpbPVVCn7FbfIK35m6DXUTX5Ll+7qixrHgWcA=;
 b=phcqbpbklyZS3w9jsLAMc4HZRdNpfI3aVBw3lG0Wfk6aTQGa82/CE8dRF0Xtg8xonkMUlL/bR0EKv2YcqaBANhAfFtzyq7WUuoxIBFHM8PELvlwpRXSeP2zygo5j0lhhqP/91fQSXv00voEDkiJHi0SJtxq/GxV5gZsxUQo+QYLAM0S5PsrPTs7U7nm+jqHTmmFWbwzsAZmFmcIoVuuLJLDfbs+218KpGYqBg/Ic3i5H6Og+g9IgFsJ/gnQ/4cvezNHIAyPyrVkGF7LZzZalCYkYwiPQLwtw6sDZRdrF6HgoKc5BMyUolVseOZQCiOqyVEOZ4lUMmQEqLo8HLtbNhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7420.namprd11.prod.outlook.com (2603:10b6:806:328::20)
 by PH7PR11MB6771.namprd11.prod.outlook.com (2603:10b6:510:1b5::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Mon, 15 Jul
 2024 14:23:48 +0000
Received: from SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f]) by SN7PR11MB7420.namprd11.prod.outlook.com
 ([fe80::b8ba:be35:3903:118f%5]) with mapi id 15.20.7762.027; Mon, 15 Jul 2024
 14:23:48 +0000
Message-ID: <e829371c-3e19-40a9-8a35-ea903f912294@intel.com>
Date: Mon, 15 Jul 2024 08:23:39 -0600
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>, Junfeng Guo <junfeng.guo@intel.com>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-11-ahmed.zaki@intel.com>
 <b0a70c97-2a25-4dca-9db1-aca64206a53c@molgen.mpg.de>
Content-Language: en-US
From: Ahmed Zaki <ahmed.zaki@intel.com>
In-Reply-To: <b0a70c97-2a25-4dca-9db1-aca64206a53c@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MI0P293CA0009.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::6) To SN7PR11MB7420.namprd11.prod.outlook.com
 (2603:10b6:806:328::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7420:EE_|PH7PR11MB6771:EE_
X-MS-Office365-Filtering-Correlation-Id: 4dddb48c-ea49-4975-d703-08dca4d9be46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEZzMXJyNFR1UmtaNG5KRlNNU3YzbGFrQUV1bXFSSEpTbk9HV0ZGQVB4SERQ?=
 =?utf-8?B?d0dmZGtSek9uZVhQUXROOUZ5K3N6WXFmZVh1WENmMXhsa2toVVB5cW9hSTdt?=
 =?utf-8?B?NDhpaU5pUGt1cXZIdjRBanIvSTZ3RnM5WlJiUmwzUGxDa3gzY1FVODZrbU5I?=
 =?utf-8?B?ZVp2V01PZ3FHb0I3Uy96REZBTTRTeFEvSmFkRm13Wm5BekV4aXV6WWhPWXl0?=
 =?utf-8?B?S0drQlBNcFFRUlJ2QnBKYjVVQmdFYzNGQ3kvZ1RzcGZDUEZtQlZ5SGtpTjRF?=
 =?utf-8?B?VU1JS1M5UUd5Q2pwLzUyeE1xSWNTRHlaSGJvYy9rOFJLcEhrOWFKU1dwTzhz?=
 =?utf-8?B?ZnBJYlkvamd4U0dISTFtMlNVUU1xTmZNTFo5ZlYzQXM5L2RFTklSUmx0Ym8w?=
 =?utf-8?B?amdwRHh6SWVFKzA0NytTWnNuTlB0VXhac0trRmVwOXBoQWdMZUZCRjMyM1Rz?=
 =?utf-8?B?NnVFbFZvK0dTdmZTMWY5clFTSVJ3TE9vQ1VwbTZZRTBleWZsRHNCY3k2MzB1?=
 =?utf-8?B?d0V4aWM1Mk9scmhCZVFMZmQxTzFiQUVhVXM5MngreGtkKzljSWdsdEpyaHFz?=
 =?utf-8?B?M1pQUlpVNHoxRG1IVWFUZS8xTXg4UmFQbkwvR3NjeUsyaFZSZGVrTEhYMTNB?=
 =?utf-8?B?VGdYQzNsTWZJcmF1VGJkZ1BlRFNYWWU4L05zUHpRZVNLSlRxM2luVlNsWUpT?=
 =?utf-8?B?WTZEa1B3Q2ZVMEpUb0lXYnN5aWlod3Bac2tRZmNnMWdLRVpXcUk2eFk2MS9Q?=
 =?utf-8?B?bStoUlVMbk8wa0hqbllEa3lKVnZOQnE3NWNoekVOYlpXQUVwVDFOS3d2bmdB?=
 =?utf-8?B?SU04Y3Z5VUI3bWs1YmRQdDJkSGdjNWUrVU81NHVXUmRvTU5ISGRTbmpPT0Z5?=
 =?utf-8?B?TTBtTHQxaFJ2WnBsazhVOWtRd3didWl1NVAwb1lIdldkeVdQNjFRU0owdVdD?=
 =?utf-8?B?Nzg1UnN5amFjTk5UeTFCVkVmRzkxU2dzY2hNUGpLZ3FrdHoxVzViKzY3SkR1?=
 =?utf-8?B?cmRYYlE2WlZycEZ2QXBVQVdycHlzbUl3ZnMwLyttenNwaGVGUDNVdEJmSHJw?=
 =?utf-8?B?M3QvZ2c1TVIzZUpGTmlMZzk0R2F3Q0RrbHJ5cjR3a1NIZklDejl3eXQyNXlT?=
 =?utf-8?B?eGxzNnpxWHloTm5uZU9lNFBKRzJJQnNGdmlhNWV3N2VKVE1TcFFTK3VSRXIw?=
 =?utf-8?B?dGpKWENPNW80ajV1bytaMWpTNVJERjVrWnJnemJkNmVGWk05a1gvR3FCT3Zy?=
 =?utf-8?B?ZlBrYTNJaTJmYXp2eHJwZTFKOFJpQzlENG5wcTBRclMyam1IWlVvV1B5T1JT?=
 =?utf-8?B?c1BBWVd2TmFVNmpPVjZJdDJnYUVwZFJXMHRRZ3h5L1UrZmJkMXBDRVJtRHJx?=
 =?utf-8?B?VmFzWWF1Vm5zQ0dtVnZhL0RuZGVlSmlJQ2hKcWlLRThzL2RjeE9RU2JLMHpQ?=
 =?utf-8?B?UXhKMTBkK294VG9BengzRmNpMEpPbVVkbkh3Q3Rpd3gyeEdXRGFqbWFRY3FQ?=
 =?utf-8?B?MHVxQTZwVWFIRjBpMTd3L25aMEVwbm1HNHRsMy9SVWNBakhlcUtqdUU3bnJn?=
 =?utf-8?B?NFkwbFI1RXNIdWt5NEx1aHZRTE1RTTJybDF2eEIwNmhVdTFLSVhFMk1BdWVH?=
 =?utf-8?B?ZzdFSXIwcnlGUkRPOEhDZjlqcm85TGNZbVQxazBkZ3c0N2JpUUgxbmtQaFVs?=
 =?utf-8?B?MkplVXFZRmpPZXRldFZRc0c2SmlmbFVnUE1sUk9MY1kyZnk5dU5WQittRXFO?=
 =?utf-8?B?Mk5Id2N1V2twR0s1Nm50Rk1KNUJFSWl5TjNlN3BqdkM2TzVVVVJPdm9EK05K?=
 =?utf-8?B?dlk0YUZDMzRBaWZmSDhmUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7420.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YWxvVnRwZVl4NlpnNmh2YVpxSjZCUE9pdXBEMVR1cmFMdGtzallpYTNIam80?=
 =?utf-8?B?c1dkdytMYjRVUkhiaGorOXA4eEtMZmJXaFVYcEVjR2pXOTBOanc3aGEwWWNC?=
 =?utf-8?B?TklmL1MveCttUWxxVmEzaXNFUkV3RU1IYXZMdW5EMFh0bzNGclczc0dQZXJr?=
 =?utf-8?B?Y0xyK0RxWC9ZZjZlRVcyVlhidEt1dHFaU0RDSGJRL1d6SGZ4RmxhOGRNeWth?=
 =?utf-8?B?ZUV1SmdIZ1pYS2VLRXNHT0pHMytuazJsMVl4dkE0MFYyUldHdFk0a2hzc3l1?=
 =?utf-8?B?Y0k3cGxjTm5Tcy9sV09nME5WSENnd0kxcDRHQXpYeElCOURaYnhibFYrNjl6?=
 =?utf-8?B?R1ltbXA2dis5OVdEcTVxaDZUUDdnU2dsSkFuSUthanVHaXFmMTBjOHJ0L0Zq?=
 =?utf-8?B?YWpnRzh5cDA3VWh0QXd5cG14bEVYQi9wcUtxTUthdWE4OGhEbW16WjlzbkJp?=
 =?utf-8?B?NGNHMm5kMVNPOUw3dkN3SHNXa0gwcHdqVVJQMVlqMEpFekRkYVVTaHZoUUI3?=
 =?utf-8?B?aVB2TjFGWWw2S1lIMWY0Qyt0RnhzQ1NWak5GV3l1cm5EcUlMZ3AzNC9UdHcz?=
 =?utf-8?B?bGF3elJQbWoxREJtc1pDNzdIVVB4K0xVNm5NQWVZb0xtRlF2Zi92RWV5QmdU?=
 =?utf-8?B?WGtZVklyVUFuZFNhcW8wRjZXMFBGaHc4dVFSSnJ0ZGdwWCtoUk5Da0lwVEsw?=
 =?utf-8?B?OFBrbWhqNFg2RFBHWUpFRXZJUk5rQ2FlYlVZRkQvOVRXdlJKN3NxWVMzNHJU?=
 =?utf-8?B?c0xnZVpHQTB4ZDFRbTgvSmJETDFBVHVCYXVtd3N2ZnQwNjV6c0xmR3FGMDVj?=
 =?utf-8?B?eWpXM2FpZ3o1NjBEcEs4S2RHQ0lvUC9sZk5KU0UzWEp4M0toN1FPcVBnWUxt?=
 =?utf-8?B?S0oxRk93VXRITGprOERRT2N3Z1dBcFlKUHN4SDNHV3ZrTGhXalQ4WERQdHEw?=
 =?utf-8?B?VGNoVFlTS0krQ3JZWk95elJoRVNVME4zV0FyeEczQjBjTlJ4ZUhnVTM1Rzhv?=
 =?utf-8?B?T3BIekF1YzFJemJLOG1xZG9IOFgycUJXNnhWZVAyTjVwcC9iMDBJU0tlZGUv?=
 =?utf-8?B?SnJLVTF4QktIdGhSTHFRbWRaR1FSaTRqOEp6RmxJRTJ3akh2NWRRcVJSbWZ1?=
 =?utf-8?B?TXRtZEJsZGxnTDB4N0xqUkFhUExFT1ZCWnYwRDVndUpuNitaMFlMSjQ2RWVM?=
 =?utf-8?B?YWlMTlBuS1RmcU1rT2xIYnlRblRIeFQyWTNFc0VMNndudlk2ZUtvbncydURY?=
 =?utf-8?B?aS85OGs2KzIvVXY1enJ1NmZOaXYzMXM5azJGazF5Wkp4Z21nM1Bva1lsNHBv?=
 =?utf-8?B?aDZuYi93Y255V3FaSVVKcHhuRkFsZDJxb1VIc1UwMEhuY0NqeW1mcnNValVp?=
 =?utf-8?B?RnNGYmwvRy9UbnNzN2hJeUZqSkdaRjZ2ZC94WFZTei91N0NXZHdFdzdGcE85?=
 =?utf-8?B?UUZZbVF5VG4wVFFMc2lyOWZwazc3bTdON3dkSURkeXI1bmxmTFZPMmRGeUNr?=
 =?utf-8?B?SnR2c3FCOHVHdy90MXVFOWhqQjhWTm94RUxEenFsYlNjTHB3U0FzQk9rb0Jy?=
 =?utf-8?B?UnVBdlJKV3M3U0haL0tCTU5XZjRjcWNWYVZ1Zjhjay9mS1hiWE1UQkxWRUhz?=
 =?utf-8?B?cUs2RWE1SzlZS3ZMSzVDVjI1N2RHSGtmWDZpQnB5QXRvK1BQT2g4RFdjTExy?=
 =?utf-8?B?OFpWOTNzLzUvN2srMlZEVEpkd3pxNjlaSWpjTkljS2ZhRzdhMkdnZ0hUWEVm?=
 =?utf-8?B?eGcyNFRadFM5K2J0aDB5UW5KeElQeUdYWGI2ek9pUUZScnNNOERmQjN3TG80?=
 =?utf-8?B?ZDlEbjF2RkpSRUgxdlgzb2tObFRlemg0eXlOU053WjY4NWllQWVCYTIzU3BU?=
 =?utf-8?B?YWRENzQ4U3hyT1RBdjlDYTcrakw0ckRGcEQ1bDRDbWtHQjRYV1hpQkNleFZ1?=
 =?utf-8?B?SUdzYTVvVXZySkxUWVVnQjEyOVhvdFNIcTZ1SFJablVaaWRoQ2xKdldtd2Yz?=
 =?utf-8?B?dWkzem1HVnNtWGRhNzB5N3ErNGFBVEkrSGdHK2FWVHNxVXF5TlNNdEpyZEM1?=
 =?utf-8?B?SUdNalV3Um8zWWF3NExIaitlT29uaWdYRks0MnlNR2w1dmVoTnJVRTFPMi84?=
 =?utf-8?Q?io1T/j7pXDvjT5l+Pah2e4P6f?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4dddb48c-ea49-4975-d703-08dca4d9be46
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7420.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2024 14:23:48.7781 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mqBI2L4jwi++IsjnOQR+Ia4dyMU4/2h/zKEP6gXvhvITV180p5FXK5c1cH5GW1EyybpONyMSR8vImkp3Chy8JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6771
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721053435; x=1752589435;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zt+/r4zQaGmJmtGaujgdvJ7/pT52ZSORtxXCnUJAHXA=;
 b=SPHhlLRlo+tIwsNrlcE+dpoRD/2c0M74YmgMX9hu/4vYIY11ymofn328
 NwiT2Ube0/MjqPWjItsNqcm2oeoGFATK5zm1DWpUIiJ2A1MJxO20+j3xu
 Rrnlk2mKFc03DZXAGtG3TrO7c68a9/33g2cccm70/XZeJz2q3zCIwOML7
 QnZhjh5phWRhaZNp5VTzjJ+uTfjRdFuV4z4iGJpj7elnAU6aDWc1GETw2
 JONo/porr1BvKqm5C0Lp1aNdsceUrIG+EFgovknCok8a4tzY1Wy3v5unj
 bCEkKCfaLzu/N+InKn9d0ZESGZaxEAu9dy/L6gkRpcbq2J65a3rUzvRAQ
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SPHhlLRl
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 10/13] ice: add method to
 disable FDIR SWAP option
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, Marcin
 Szycik <marcin.szycik@linux.intel.com>, intel-wired-lan@lists.osuosl.org,
 horms@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 2024-07-10 10:59 p.m., Paul Menzel wrote:
> Dear Ahmed, dear Junfeng,
> 
> 
> Thank you for the patch.
> 
> 
> Am 10.07.24 um 22:40 schrieb Ahmed Zaki:
>> From: Junfeng Guo <junfeng.guo@intel.com>
>>
>> The SWAP Flag in the FDIR Programming Descriptor doesn't work properly,
>> it is always set and cannot be unset (hardware bug).
> 
> Please document the datasheet/errata.

Unfortunately, I don't think this is in any docs or errata.

> 
>> Thus, add a method
>> to effectively disable the FDIR SWAP option by setting the FDSWAP instead
>> of FDINSET registers.
> 
> Please paste the new debug messages.

What debug messages? If you mean the ones logged by ice_debug() in this 
patch, please note fvw_num = 48 for the parser. So that's 96 lines of:

swap wr(%d, %d): 0x%x = 0x%08x
inset wr(%d, %d): 0x%x = 0x%08x

> 
>> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
>> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
>> ---
>>   .../net/ethernet/intel/ice/ice_flex_pipe.c    | 52 ++++++++++++++++++-
>>   .../net/ethernet/intel/ice/ice_flex_pipe.h    |  4 +-
>>   drivers/net/ethernet/intel/ice/ice_flow.c     |  2 +-
>>   3 files changed, 54 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c 
>> b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> index 20d5db88c99f..a750d7e1edd8 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_flex_pipe.c
>> @@ -2981,6 +2981,51 @@ ice_add_prof_attrib(struct ice_prof_map *prof, 
>> u8 ptg, u16 ptype,
>>   }
>>   /**
>> + * ice_disable_fd_swap - set register appropriately to disable FD swap
> 
> Below you write SWAP all uppercase.

Will fix.

> 
>> + * @hw: pointer to the HW struct
>> + * @prof_id: profile ID
>> + *
>> + * Return: Void.
>> + */
>> +static void
>> +ice_disable_fd_swap(struct ice_hw *hw, u8 prof_id)
>> +{
>> +    u16 swap_val, i, fvw_num;
> 
> Try to use non-fixed-width types, where possible.

Sure, will fix i and j here.


> 
>> +
>> +    swap_val = ICE_SWAP_VALID;
>> +    fvw_num = hw->blk[ICE_BLK_FD].es.fvw / ICE_FDIR_REG_SET_SIZE;
>> +
>> +    /* Since the SWAP Flag in the Programming Desc doesn't work,
>> +     * here add method to disable the SWAP Option via setting
>> +     * certain SWAP and INSET register sets.
>> +     */
>> +    for (i = 0; i < fvw_num ; i++) {
>> +        u32 raw_swap, raw_in;
>> +        u8 j;
> 
> unsigned int

Thanks.
