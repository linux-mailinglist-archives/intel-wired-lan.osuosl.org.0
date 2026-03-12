Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAy+JSbnsmktQwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 17:17:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E564B2756AE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Mar 2026 17:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 259FA41674;
	Thu, 12 Mar 2026 16:17:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7PGSV9f59E8N; Thu, 12 Mar 2026 16:17:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4A8414175F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773332259;
	bh=fQDvlWCsZhm47gpxqircFtDqp/WqR2Rtog1F779eaj4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Y8tWjg/bMMDE9dbH+UZm5AW82rlpoPvsy0iJZxl0VRafPdebSG6fRWGYGDwY+qN+c
	 rrFIbi29FouRuG92FR5ToKkI7zEhNbf7P9u8GyFLf4N2Bdnuf4h67QbrxECNma2k6w
	 /Q894coBdMET0b5Zg0UvW1cdTTuXLqKtLBwojWay4YRcN2NmeJv2JiYiX1m/beR1YJ
	 Cn5fywwxSbdJZ8YLO6m7NaaF+ywQZ4GCpYH3iZ58LzUFmadp474J/H6Ow0ZcVm/psD
	 WcebPR39gL/ZIgzNrakgp4Ov9k7exGZiLSmN3VZ5yB0ye66EzioRbjc8sQ1K3hhB/L
	 wGGONH2wzQv4g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4A8414175F;
	Thu, 12 Mar 2026 16:17:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 236FA282
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:17:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08D3C61CE1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:17:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qgg4rG_Ipvvr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Mar 2026 16:17:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 452E160FE4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 452E160FE4
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 452E160FE4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Mar 2026 16:17:37 +0000 (UTC)
X-CSE-ConnectionGUID: b8VNWCrxRf+lIMRwR/EKig==
X-CSE-MsgGUID: fmI+X/poSLKgk0l5WCEwSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="73618837"
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="73618837"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 09:17:37 -0700
X-CSE-ConnectionGUID: o2zFzfd7RuCbfVxciyrmvQ==
X-CSE-MsgGUID: zyT3oummSaudbVsh/PvYhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,116,1770624000"; d="scan'208";a="220131881"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 09:17:36 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 09:17:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 09:17:35 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 09:17:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JcxSgX35QzNCR2i8f8QTe+9IDHRfkRP6ffTznZ5oSfhyqapxHS9k6QtL3KiQPzXd6wBWXdwSavAzWjOPJtrYNKwr0QO5fesoifMtqiUbFpVGtNiByx91lKE3FPNq4DSggCxgyQVURHP2F4nkYdiMEHprQKmb0l9reHwfKBj689dd3zGjyzgZBbLQonQULhuvxOIy2TKsTJ/dTFsSDw+T3Cblslr5UCAABy13QJa1THN++RWHajpHFESwUR5/Fv4jzsfZKCqdr86QNQk073Z4nLveQC8rrRYQOEkbkX2dPhDTy1ntxc3eF1Jrdc77xZO5NB66IjpmmiiwcLh3ibEYAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQDvlWCsZhm47gpxqircFtDqp/WqR2Rtog1F779eaj4=;
 b=R+6SjnE+AQRb/RSBpHEqorBnV/C8LA+7q1byMiwRRenhWkuJGSW73XWmkbip6Up1/dtbclB1Z50gym+gZCSGjuunH1JPmCTNk3dDFa5wbhpNonKZPjMsjKkxsjeDNjhqUhSbX8pix+rp/u5s0OmztXL5kCNqQejinegI95N0rdePm011Cvm1Be/kRGSSkI4RxhJ/+uHDcKTH0flnqd9ZGeyxBiXd3TSKDCDnL5cbgq3AMqR/mLnM3SsidjZ2B9F+TU/t7eU7FrWfSvDRpjQcHTgYX5UXwDRLLNQbrmYKo8930LQC52IPX8wUXx0qATnqXRYydDfY4Wc4DcW+1VizlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by SA0PR11MB4670.namprd11.prod.outlook.com (2603:10b6:806:9a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Thu, 12 Mar
 2026 16:17:26 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::8d98:e538:8d7:6311%5]) with mapi id 15.20.9723.000; Thu, 12 Mar 2026
 16:17:25 +0000
Message-ID: <9df36abb-705f-44bf-a609-76e3ff827c56@intel.com>
Date: Thu, 12 Mar 2026 17:17:18 +0100
User-Agent: Mozilla Thunderbird
To: Chris Friesen <chris.friesen@windriver.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <04025549-91a4-47a8-b874-eaeb35a429bd@windriver.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <04025549-91a4-47a8-b874-eaeb35a429bd@windriver.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2P250CA0012.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:10:231::17) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|SA0PR11MB4670:EE_
X-MS-Office365-Filtering-Correlation-Id: d37de5d0-f7ea-4992-8b0a-08de8052d797
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: GSXUDCupzr+xgPDSsVXABYZzDrLEvjb/ei8DsJcQQwSS5cGqaXJTkqeOWRiirs5CTCozIXajqHw+l+VpFGAeMy3yOBUvPkCDUQYuHDaNNZzBt7PvriqX2YWGJSOeJLmZ6SC0Ndn1uQzmL4gyhPvg+fnsFM63oml5PLspB4GpJrDjIBnnfwoxQeBBoOdnr4t54PQ7QaaJNbXHXRJtzvqMfNqDuwg/AuMoVJ+IzypmebBeyQyBKLVXDTyaKIMuxYfrB+IW6hCgAnqsNEVNk8NJCLbMy7cYcdZVNTGL6QaHqvH2jhdAGe2K2gKXzwUDXdDFu5Mn6UzZ0pq0cT09bCqpRKT+fxgatoqKbf1bvHMx71vTcPr8ZfG+auPfhIx1uwQDizx5GzcTjauLX8/o8yEXAGEJM8Ke2KLXGj+pbxOqeKBTQCJjglyGE0lGkvnDyr9NQlIZ+cUp82OIbI/yCYTY3vb7k+lR2Z6+e0keg8EpmwImEsd+QL+VAHb2a7+vty8AviUihOzlnxTLT+ku3TcJV1DcILfN+do+8sdbZrzfC9jxADmqKritUYDLzJVGmYOAW44Y8F+SSiKPIVQCutsAVxkVorOEfDZbgo4B9fNlpgkOVfA9tqLPiYJMASnC0fPbGcwmdIczf9llTwkgyFHU5AqvRZ0/bAEdVq33WZ+LCXuF5M0a62h/y8rHguYhsQSHZZp4EreRRD/J5HLhg6rdLyUZI9DYwsI9BhbDZoy7v58=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RER5dDdVLzhmRDNySnZEZDFRbFJkZlZ0Y3NZWmdpbUY5RjNqalNUWnp6ZzFu?=
 =?utf-8?B?ZEJLdjNCZ09aam9mbGhGdWtFT29oM0tTNUM2d0kzbzBydXErdDB0SFZ1WFZi?=
 =?utf-8?B?dWZ0QzdaVHZ1QWVCR2RiY0huUmQ1a0trWkNFQ2xTTzY1SXJidDJJYmNSNkJR?=
 =?utf-8?B?Vk1USDRaNU1hdWVzc1c3a2h5VGluWlNMTzl4dmwyMkxPckxsUGErZ0ZPakFy?=
 =?utf-8?B?S001WDhKS3IrVWxNWmJKa0FKdVA4cE1TWS9lcXdaVHRSaG5sR1dsdkdkOHhK?=
 =?utf-8?B?M2MwOFJDU1BuSmd1ckFhbzNvS01DZ2pxWCthdW5hWDE5aEpXSUpEZUR4bWUz?=
 =?utf-8?B?Vy9IODNXZ2t1Tks5ZjZzeWtiTFJvSVI1SjhkYllvSjF4RTFmOGZub2d1Wk5O?=
 =?utf-8?B?cFJzR1d5cGx3cEYyaG9GaFhzMW1Pc3BRMEZ0MEYrUDFrb25UV0lNczNYYllE?=
 =?utf-8?B?NzFGTks3KzJjbWlPbGZDekxBV0NDQzRBT3FRZEhLemJ3WlVMTGF2eWpKZS9j?=
 =?utf-8?B?VlI1WlMweE1kOGsrV1dWVTZkdmFoOGlxNjBQbEovVG1XajBtajF6U05rUStQ?=
 =?utf-8?B?VnlGSzRTRmRVMllBMFo3UVhobXVpVWtDbXdQdm5TRUtNT2NSbW5nb1BMMlVz?=
 =?utf-8?B?d3lqSXA4OUFtMTV4eHdvWmRUd3BXNXRnTVMrZVVEMmN2V3RXbWNrSGEyMzJy?=
 =?utf-8?B?N25ZRnJ3UFJHcXJtSXIyemJwRFJQLzc0YWZnQ1ZvOCtsS2RIV2xJTzRiNlBU?=
 =?utf-8?B?N21YTG84dkZFa0xXc2w1eXlFaE9QL3hHUEl3VjE1L01GRS9BamdtbHNROStL?=
 =?utf-8?B?NjR6Q29qRGwzOStMbmFucUlOdm9MNWFNdEZ3NkxPOTRKdkUwM3dHbnNpU2dJ?=
 =?utf-8?B?dVI0Vk1IdCtRa2JGQnRLUXBUclhzdDc1QUQ4NjNNNGdrYlNTVklhejM1a2lT?=
 =?utf-8?B?L2VqSllYRVFJNlZTK0FTcjFIUktNNlFiTDZHejlwR3ZwRFZxWHVUbUVDTTE3?=
 =?utf-8?B?VlRIQlJDYURvUDhyR05nS0JycGpUZnpPOGhxQ1lvTVhJNnZhZ1pVQjlna3Fu?=
 =?utf-8?B?c0d3SWFvc1RiU0xFK0F3Qm5tMmlLWldGU2lDYzJsVHUxcGsxa29yWGIzUTlk?=
 =?utf-8?B?aGNzVDFtcWRuRG95UVdUR2dJRm9ZZ2NhcHIwcDF4OUdvRXFHdUFtRXBsL3RY?=
 =?utf-8?B?UGNZQ01RdVhPTHdzNmx4bE5SR0dMOFpoRlg1RkxRTFd1clhoQU12aHVWUXEr?=
 =?utf-8?B?bTZ5YmRlSGFidzB6NWM3MVloRUZrNUdqaXljNWQzWjJaQVlwTTdBL1A2bmx0?=
 =?utf-8?B?RnhJRjZmOHpISUMvdVJvVG1YUUJ1MjN6YXB5UmxvYSs5L2h0MklybW9pcVk2?=
 =?utf-8?B?TUxlOGQ5KzgzVnFVcVBxZEN4NjVCVlZlV2lQVHg4VzAxMFI0SkpRQTFZUnF5?=
 =?utf-8?B?RzlubzZhenJzQjRBeFBlL3djb3BqVHVFekZjQzYwN1pmZFFOVlFTZFNvMWl2?=
 =?utf-8?B?R0hzcnZXTEZWZFVBWWdZWWorSTRBa29LUHgzRlFhMWFaSUJSR1pRNHNBcEZh?=
 =?utf-8?B?T3RvY3JzK3Avd1htejh2T0RtdndFTDZzb1RVT1ZPTGJpUDloMEM2Wi96c21N?=
 =?utf-8?B?NDZRdE55ZUFKZjVzbDdacE8yL3Z3VitlNFVSV3I0OXp1SytyN0EybjBSKzdD?=
 =?utf-8?B?MDJGQUpvdGRhcm5raklhbjNETVRqVWE3eVJYV1VaZmR6bThGYjhhcWk3R1pY?=
 =?utf-8?B?T0htVjgrR2luNnN6dHBJMS9SU054Q0Q2ZzJTeGRxNitzY0oxTmdYRWZEY3Y1?=
 =?utf-8?B?RnpWSExwTC9ORHpxdkQrcVN5V3VQUXA4UTA3cXBZLzhDWG41dy8xbGlQRXZO?=
 =?utf-8?B?RHo0ZGZHOHdva0xnaHNIaTNlNFFJeVEzelE2WEdaSm1UL0FGTTdjZXo0WTlQ?=
 =?utf-8?B?eTRSTGlwYzNITFM1aTFISHd5K2NJM2NPK0ZBR1NocFhhQlVhZ2NMWWEyMVhw?=
 =?utf-8?B?SFhsa0p6ekZsN1RVUG9sUUZFOWk4L2UrR3FWajR1RklxZ056WFpUOFhMNTl4?=
 =?utf-8?B?YzJqOXU5eG5iUmgzaVlQR2V2bmRIblZTQjdWUGhmZzVWdHVOMXlsN1FWdFkv?=
 =?utf-8?B?UVFmYW15WDVCKzh1VUZnSVQzb1hhbVpDdWYvOUJiWjZTdG5DdlFxNzdVSmxM?=
 =?utf-8?B?NzBrNzArSXV3MGhXOEg0MVo1eUZsanhhdk5iRFpTN1Nia1dTakJLdFI5NUJI?=
 =?utf-8?B?RVh0clo2N0xhdXlpOWkvc1VYL2pGUFlIcmxHQWdDdXV3bGhVZU1yMFJuMWps?=
 =?utf-8?B?U2J4R1dUNnJsMjhDYTNlWEtjbytTUUoyb0VRdXNHZVRsNXVYL0VpZ2pYdnpO?=
 =?utf-8?Q?ho83Jc9PQStm45d4=3D?=
X-Exchange-RoutingPolicyChecked: f4xdUgtJ4l/pMfBQM4WFgUJi5r/JmDXzHV/2BN3jVaREv5h+vWh6F4InHvmfMVSPcdaP1T3cFI7CBnjPf6/i+zowcCNEtGCk63BzH+5csFuFQ+GHGaQVFjh1rnqFHNopnYt/iIFObOqravucTffNGtoyKi606aZryDVTEnx7VWjwomMPH4I73eIijDAH0Y7WYTA405ZrKlmtwi5kh/cNMOPivctt+kELXEHIk1FErW9mOzdpYgFrTRgJObsXT2rDBw2LsBFUTHQAiRmCRD9GassNp3hGkYA9QBW3sg73nXPqsbvP8xNCFZLmV1OLcyHeaSccjbWf1clUNQXlwXcPbg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d37de5d0-f7ea-4992-8b0a-08de8052d797
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2026 16:17:23.5178 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TavxMyItxUiMINc0wtSIbV+BStGH/6GuntzkhWBtXmFhY/pEOWkHrB12hlGYs5hB2gOvavH5JxdiLQ9hnIUAkgLbMdjNJGP2rgu6GIh2Sek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4670
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773332257; x=1804868257;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=01+2P34j7nLRJKbCn/a11Czm/NG/wZ0vSoj211xD2cc=;
 b=jZLjhJp56+a7rWH2Bd9uqp0a0pqceXnniDOo08Qx9qh0UKqhbwv3hIHx
 UcLffQKt8f08c0ariOpljjwlpFlDnb6x/iK5MLHZ4I0ArNvZSvAef2TDY
 7fj9Ds7ANbfb3yIXHKOvs0lq4hnAFpGIJEwtkd5HBCdnB4IZQ7wpjdMIw
 uqg2vBpu2c7lH6jcCJDHHQRRRasNVpdXfjTtGFE7GikTisejV6joV4+2E
 Dh41/n1xpOUZDi2rQNeY49DrI67eDU/E6mRLAUE5WOJJWe4eULX+tOBER
 wiPlhV9Otlw2K4g8Qp1qC6vVqitW3MELSzc1ifc3Kvaz3CKBHddarBQao
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jZLjhJp5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] is there a way other than PCI IDs to
 distinguish E810 from E825/E830?
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUBJECT_ENDS_QUESTION(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:chris.friesen@windriver.com,m:anthony.l.nguyen@intel.com,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: E564B2756AE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/9/26 19:37, Chris Friesen wrote:
> Hi,
> 
> I've got an odd issue.  We've got a request to use the in-tree ice 
> driver for the "legacy" NICs like the E810, and the out-of-tree ice 
> driver for the newer NICs associated with the Granite Rapids-D (E825/E830).
> 
> Is there any way to distinguish between these other than the PCI device 
> IDs?  I'd rather not need to maintain a list of devices and need to 
> update them every time a new NIC variant comes out.
> 
> Thanks,
> 
> Chris
> 

you are asking this question on the public mailing list about in-tree
drivers, here recommendation is to use in-tree driver, always

as "also OOT" developer, I would say it it sometime warranted to use
OOT, but then don't mix and either stick to all OOT or all upstream
