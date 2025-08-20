Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7447BB2DCB2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 14:38:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 34413611F5;
	Wed, 20 Aug 2025 12:38:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L8mpErSM7SEI; Wed, 20 Aug 2025 12:38:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19CB5611F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755693505;
	bh=3miKeodiBCx3njtIvQV+lgsckVsKymJbkAAbLlkHLXk=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ak0a6Qo0cRr2keoB/ItWq6sSIcMjbAWK1e4OKt0DCBLdM8JS+lQUdk5BgHByzt7vY
	 o4dnu1W8LU9QwkVE/iofr/4DkU56adju6L/I0vvEMTOFT8Iztl8Wmmb8Wwiixw/3x/
	 lWx7EYhYc/ULiWYUyFK4DLCCKhYauiJKSHGnXKcbYjG5IH8lrz+KyjcREPt8YPsL+A
	 iu7ap+JnJrADw2pr7THRiUDpzvs2SKuVTKo+J4wwr0XqQ1uEmq1eAlPEM0WLph8ixf
	 uHCEsR27+6uJMyHUz9pD+FZD92neo9seqRfoJHxxL0Y6Hw8WLb5EPXuwv/gglxLI/X
	 EPRa7skQPwiBw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19CB5611F7;
	Wed, 20 Aug 2025 12:38:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D8029E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 12:38:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BE47382F31
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 12:38:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AHWbLPceSEgf for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 12:38:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9C34082E95
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C34082E95
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9C34082E95
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 12:38:21 +0000 (UTC)
X-CSE-ConnectionGUID: fgHX4ukCRFCJl1xX0s52Iw==
X-CSE-MsgGUID: rqldgEDjTUuDxwM9pr872g==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58023475"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="58023475"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 05:38:21 -0700
X-CSE-ConnectionGUID: Hx4CHjIITT+PKGoqEhdhZQ==
X-CSE-MsgGUID: vEDbhVwbSYWlpof0ldbxaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="172347759"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 05:38:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 05:38:20 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 05:38:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.83) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 05:38:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EJugIliwzT2+5xWNcMfUhsfDs/5jE7V0faRAO/eIyB/4x6P030ujix/g8fEiK75/Z3Qtx1+TtX8A8wwV4TDszkKBAqIOQTDrxH7bDxWy7Wi2tkvMhTSuSC9NTzU7t+QEIL8B0gH2f3VF+q8St7INce6L3GjrA2djfwOvukBSWrTatVbXk8j86OgbB3HlS80x71LToQMyku8/qU2iec+v1yHAgBNG1aVDzHmhiOOT69piceS5psFvLYHdG0EBFiXrNvyYpGRGgrRKAmqXpXYZnJkgXhvmtlsffqSO9lZFXdQwMjMiej82qOgkz20f3vqtUHLwZ06pYH0iuoGOuTxXvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3miKeodiBCx3njtIvQV+lgsckVsKymJbkAAbLlkHLXk=;
 b=RYtiprG6fUryWtjk3o5mhDLa5cibg+uznq79DVZFchngXCWuH4Jl7llKNO5Bv0Rh/m+1dOouBTHJx/pFzTBO3Le5LDbr7vpAlw4cE9TYCzpxxCGwg0KIFPl02dgUgAijO57eSDG7jE6WrGmwq6YeF/OExw0va7rhE/aAKh7W/nlXja3rX3RhTq14ED/u2nJeJCJHLF1rhXMucUpmwly+QI1IMcRKxtfIoIUv7QSbAe4Gtl7mgDgMkkbXrReVpvm0EgvwPBVaMOWfn7VHD8hTWu+hrb+vz687u6Or9AITjHjzRhaPJDRwkYQY8RgKtbu01TEshji2oI8m8PhiBQ2DsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by PH3PPF5AF05F6D9.namprd11.prod.outlook.com
 (2603:10b6:518:1::d24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Wed, 20 Aug
 2025 12:38:17 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Wed, 20 Aug 2025
 12:38:17 +0000
Message-ID: <5b4b31cd-4de4-46bf-b6e0-2ff3270b7c46@intel.com>
Date: Wed, 20 Aug 2025 15:38:12 +0300
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>
CC: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>,
 <marmarek@invisiblethingslab.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
 <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
 <20250820095708.3e3060fb@onyx.my.domain>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250820095708.3e3060fb@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL2P290CA0003.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::20) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|PH3PPF5AF05F6D9:EE_
X-MS-Office365-Filtering-Correlation-Id: 5378376b-bb77-4ab2-42c9-08dddfe66fd2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm5HcUlkVEltVEVEQ1lacWxGRjE2SGdHakxPVVVuYXV0eFU4OUlUZW14K1pV?=
 =?utf-8?B?K1JhN0NmNElXYmtrdE51RjE4aW5mVkpzTmswMjZ3ZzRGakI5aE0zdGNoSTVC?=
 =?utf-8?B?NlRoS2QzZXVhRGpNOUQ2aWZQc2o3VDZ1VEN5ZUtnRzYybndPdWk2NEVYNXRG?=
 =?utf-8?B?enA0ZjlmZ0JHNCtSNjcrUEdnMlh5UmkvL1FXOXNkRUxWU2g4NllqYTFPek1y?=
 =?utf-8?B?K3EyODdhUTFSQ3U3cEhES3hDRjkxcis2MlZESUx6L0JRZ0VhY05YMGhnZXVM?=
 =?utf-8?B?aFY0R0VqZUd6MmY4NGtvRG5GRVFESllURWIrV3Z1Q0hFVmFLSWpvNUVVK1h5?=
 =?utf-8?B?K1lYTkxPUzIzVmdXWWhrTXo5bFJZOGdJOTVITHZHS2xhSDIwalcwb0ZGVTB6?=
 =?utf-8?B?TkdvcDdXK3pwR1VlalB5VlBBVWFzbVNFYzM1Q3l3OVBjRW05ejAvb2s4NHVJ?=
 =?utf-8?B?UTU1OXIrSk9mdGFVbXBsM0NhYUtlVFVXWFhwVmVxWk51VEo4YWRUT1RhZWVJ?=
 =?utf-8?B?Ylhna1h2M0hXZnJ2T3RGTk5Nclc0blhsRXFFNVZCS1FnOTdubVNIU0ROUWNY?=
 =?utf-8?B?ekJWVk9DQjNtT1pTZm9kNnBnSXpKSDNTV0ZuaEFXZnVBRUVlWFlzdktZV1FN?=
 =?utf-8?B?TkRWMTJvUzFyd09ZbGxIc2ZDRjU4RnNPYTQzMWZXT1AwSnVCYVFwT2hnVnF1?=
 =?utf-8?B?UUlEMnFaSm5jQTdvVXZISDNLdXlMNlcxeGRqVGorbHFnUFF3ZStBNGppdEhN?=
 =?utf-8?B?K2RHMjRYeWVVRmMzVTFBd2lWcUZKdjJ1RWcyM2xHQ3FMSWpqQkhKZkxydnFz?=
 =?utf-8?B?UkNsdURSYUh5QWFob1RQQThUcGx2dHlDci9kYnhGZVE5c21SYUcxUk45Mi8y?=
 =?utf-8?B?UThtekFwbjE0RXhrelpudlI2ZnplYkRSVXFqeWltdFE0MnhEVkFhbTlyOU1T?=
 =?utf-8?B?eWZ6VjhFRGNXc1R3d2RLUWRONnlacTVKM2haaUNGZVNwT3VLV1ZZREpKYzU1?=
 =?utf-8?B?L1ArMW5MS21IV2E1SWMzdi9Yc3M0c2ppRW5Ib0RuNVFXck5TTHpRK01zNkl5?=
 =?utf-8?B?UDB4NEtjRzVrd2hpZlpobW9GaExxYWliU3BkaFBIZU1IQjVvVG0xWVk2MUFF?=
 =?utf-8?B?NFM2WVI2cnQwSjk5aE1mOE5QYTVVdWlIMDdadkMyTmxGa3BwaU1lK2sxN3VK?=
 =?utf-8?B?L2Fpc0V0WWVpMk9Rc0dZMzNkYlRaL2d0S0lCenRka0JrL29lZ3VpRTdjaGxu?=
 =?utf-8?B?aXNVR1BBZXRKU0xlUnhnOFZGM2piVHc4dFpSSkl0ZTFmZ1lXdlJ2RmVHNzhM?=
 =?utf-8?B?VHpuNkMyMisxamQ4L3VjNmpmdGNLS2Noc0c5Ui9nZWtHY0RtbkFpKzAzVjFG?=
 =?utf-8?B?aUZhd0p4V3pHcFB2MitkMnZJbWJLVGRrOUVteERVT3NJMXpPSkNpWFI5M2ht?=
 =?utf-8?B?emRCZDFycVA1azlWdzVlVVlJdDhKN3J3dlB5K0M1TTUwajc3VGhrampXWWV0?=
 =?utf-8?B?bUc3bU9NQ1FxMUlNbjdmcmcwTlhrRDhmeWhaNjJTN3drY0o0WGdBcHFycW5q?=
 =?utf-8?B?bElJRGx1Q1BWZlhxSnlSOFoxSVRiUFhsUUdzVWgzSWJqKzVreVF0azlCbkYr?=
 =?utf-8?B?VkJYak1nZUNCcmVSZlZLMTRKeTF3ZGltNGRpNjlOeFRMWEdPektmVEU0ajEy?=
 =?utf-8?B?L3FrTTdaYWRIbk43RENtS2YyeHFvcmZoS29LVWc2bDY4elNydzNwZE93MFJ0?=
 =?utf-8?B?NVRqdS85aW9iQ3VTNlp6KzRZMHdnK1RINFJGdGFMekFsOGtpa0dKZmIwZmZv?=
 =?utf-8?B?RVIvN1hqSWdDa3hnSWg5R29wSWtqdk5tazZqdXNLN3ArRnRuQm9NTVluMGhL?=
 =?utf-8?B?dzI5NWpSb0RJL0Q0ckl0L1JFN3dUa2t6cmNZOGUzRFd6RDYyTDFyRDZsT05W?=
 =?utf-8?Q?DDLSKziimqo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzlmZU1Db1d2a2dhV29IUTFNc0p0T2t1L2U3K0xkK3hhOTJpU3dhMjg3UXV4?=
 =?utf-8?B?M0hxWXpsdjlZbHpsOENkTmpuWVpBMThEcm1QdXd4WlJWTTlVaHYzRmhIUFor?=
 =?utf-8?B?azN0Z05RbDNoaitzYUs5NTJVRzdaZWg1d2VhRHJjaW9JSFBwRUVDUjh1Tk5y?=
 =?utf-8?B?ZmpUTmhEU1l1L0wxWCtPZlFlQzIxaWtwQjUzdkJpQ2ZwOE03WVhnZi9xNTJC?=
 =?utf-8?B?VG53L3VvOEVPRjFCZi9TR1oxT1MyRXRWRHRyQlQyTUczZE5nUVJBUlkzRjNF?=
 =?utf-8?B?akpjRHR3WG1YaXdZWHVNNndTWWxXVUZaMzlSQzdLTFZtbGpXR09TangzZEFo?=
 =?utf-8?B?WDdoaWFjNTlWSlBVM3dkcnFMaDNDbHB4NjBVQnkxSUhjUDFZUURMTm9NL3Nt?=
 =?utf-8?B?OU8wWFVDSEJqVFplZUdLNmFzMStNYlNyUUJLUUNMYzY4MGRhWW9LSFZOQjFU?=
 =?utf-8?B?YkNZNEF2ZlBvb1FYVkpVZHNDeGRzS1FhTjNDaDdTY1BVejd6VWMrY1NYekxR?=
 =?utf-8?B?eG1jYTFieE9yRllJVmhIL3Qzb2JabnBxV3NJUU9mWHNUNVJZdmMwVE02Rlow?=
 =?utf-8?B?aUNBajA4MDdncjJGQ2pQQWJrN29MdjJzNDBpcGdkWXNwVHJJV1pnNkZIZmI0?=
 =?utf-8?B?TTJ2Qm5vSHpUd3pTMUFWUlZuMTFvdUQ4M0tnbWhUdm1LVVZOYzFaeXJPVlcx?=
 =?utf-8?B?TEZxaENpam1XRkVJeHFZdUg1aWZBNGFXeTNpa0kwcElBU2F6UUlFRTQ2aHFi?=
 =?utf-8?B?a2libHBwVGlicVAwb3UrVTVWaGVYczFtUzJGcGF3YnFBUGQ3cHJDNGxPeDlW?=
 =?utf-8?B?RTdjcmY5M1d4RkkzTXFkb0I1a3JINDR0cW10Y09teVVZMDFrRzA5WjlhWUlu?=
 =?utf-8?B?YUpSdlIxZFdoY05MOG04Q0FMdTdPd3I3ZWdnWU0rbVpGZHJ6NnhjMDQzS240?=
 =?utf-8?B?eHI0RERIdU5Cc2RFMTY4Nlh4M3Z6RHcvbW54MG1KZEZRZTZleDVjcXpkNGVp?=
 =?utf-8?B?VnlUZXN4T2xIVlVGcGR2eVpMRFpnVWlqUXdQR1krMFhmQll5d2ovRGRLd1Nz?=
 =?utf-8?B?M1NKYmlhRVRIMndyUkxFeitCM0lqQmxISytOTERaUXdlcWVhQWdkNzgxaWU5?=
 =?utf-8?B?SHVodTdsSEVPbmI0aVczbzdaaWhoTXV6eGl5V2lTZHFaSThQWjViVkVXM1J1?=
 =?utf-8?B?c25FQ3hMVWg2NjROTUluZXpkYmxEODFxVVNXY2Z2bFBGUnZWRWF6cWUxczk5?=
 =?utf-8?B?V1B3WHMzUUFXZzQyOEtrTE4vZThmaVA3Y05mK2doMTRQbDNWZkJVQUxRMjll?=
 =?utf-8?B?dE50N0crOVJKR1JnVjhJQlp1Z0twQkdFM0JEWitXZUxlTFgxajNVVzJ2WUtq?=
 =?utf-8?B?bXYxZWJGS1MzTU0zOTQ0YkhadlptUWdNNWkxc3JGMGErODRQU1B6MG8vUVhB?=
 =?utf-8?B?M2NUTkFVQmlRTHJkbWxySnh0T3FlK21xQk1qS0FLU3pUU2pWOFlYcU9IRkkr?=
 =?utf-8?B?RS9aS0c5eGxjd2VieURlRnJ0WFRSVVVrMnZsTm55NkthMmFWOXg4RHE5Ni9K?=
 =?utf-8?B?WHNNU0lRNGZzcy9RTnJBczVWcjd0NURMSmlJaUFtQVV0OVdscmpZSUtYclBP?=
 =?utf-8?B?RUFsMXY5WTFoNGV2VXkrODhqS3BSc0U0YUN2SFlvZzBzeEpwL2dvM2dxdlpO?=
 =?utf-8?B?a0RiU1laUGRCYWVIdG4wcWlPWnZqbmxVUjBTZ2J0T2FWem9PQit6eUcranRS?=
 =?utf-8?B?MVdqeWZ3ZGh1MS9iYXdsL2FDVi9qTm1lVGtTYzlGY21SaUpkUGJOaldZOXZz?=
 =?utf-8?B?UDE1dXB6a2JTVXc4NUZnWGYycDN6WHVLTDF5b2cvY3dQTE0rTm5JV1NyVjhh?=
 =?utf-8?B?T1JydExwSGdaeTRjcG5UcnplV0ZMcDdXWEhUMERBbkpWTzA5V0tyTU0wRHhD?=
 =?utf-8?B?djYvUUZtTG9UZW1yS3MrNEdZaDZnMEswMkd5NzNCS2NqUndVTzdUVWRpUEtV?=
 =?utf-8?B?QlNrejAxcHU2QnkrQzc5WlFtN0xTZEpRQVA1bmZCT3RPUE1kSDd1UzhnMXov?=
 =?utf-8?B?YmdpQm1nVzdySHBockZSMFlPQjNuWFdkZkswWVlHOW50M1IwdWJiT0RjQkty?=
 =?utf-8?B?NEpsTW1NbzRQcENsVGM4NUhXdkJRbTA4NVdnRHdDUDlOdFFJRGdQWno2NDc3?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5378376b-bb77-4ab2-42c9-08dddfe66fd2
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 12:38:17.1022 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TXa1VE8ApH8rQQlD8mF17bdkENiFjrT+Ar+n38X7vuBSOyY9uyGORn6JLopTISDA2JiaOVzRF80JM7C4lF+eySme/C8MV3m3bzd4cLeaoW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF5AF05F6D9
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755693502; x=1787229502;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gSY0Dw93Bh+pwLrZwvlaqL0nYXhlYpcGDwdAm4KmTgQ=;
 b=lQ9C+at2d7kgJnOqrMEH+hFxaopFlU0QgD7XiNhsTeq6SMkhpU+30ziJ
 JIb8NoQ0Pclhwgrj7JCfXSqXlprJbpA/7JEFnSJsl6Iq/JyytJ4hinosu
 DGSLx0PY7MiXHdDkjd/Kw+AXOhQhj7K53u4ivleRcYT2v1kH8VeiKbg2X
 vaDtpG+G3x05u8gXumpanSMCq17+PkYT0+oWppnDYimEDhwhCswipCCrl
 JeXAB/OrFeMSfhsuPc1wDV7EcOQrCFrmaCjO1ltcQI4O9bi+BfKB56CHk
 uzlfqdH5p+FhziZ77BcOgBHatrY/xGCMOcspUjkQFQE9M6eBwyoT3OwQe
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=lQ9C+at2
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: Introduce
 private flag to disable K1
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

On 8/20/2025 9:57 AM, Timo Teras wrote:

>>>
>>> Thanks for adding this!
>>>
>>> However, as a user, I find it inconvenient if the default setting
>>> results in a subtly broken system on a device I just from a store.
>>>
>>> Since this affects devices from multiple large vendors, would it be
>>> possible to add some kind of quirk mechanism to automatically enable
>>> this on known "bad" systems. Perhaps something based on the DMI or
>>> other system specific information. Could something like this be
>>> implemented?
>>>
>>> At least in my use case I have multiple e1000e using laptops on the
>>> same link partner working, and only one broken device for which I
>>> reported this issue. So at least on my experience the issue relates
>>> to specific system primarily (perhaps also requiring a specific link
>>> partner for the issue to show up).
>>
>> Unfortunately, there is no visible configuration that allows the
>> driver to reliably identify problematic systems.
>> If in the future we find such data, then we can improve the
>> workaround and make it automatic.
>>
>> At present, the user-controlled interface is the best we have.
> 
> Could you look at:
>   - drivers/hid/i2c-hid/i2c-hid-dmi-quirks.c
>   - drivers/soundwire/dmi-quirks.c
> 
> These use dmi_first_match() to match the DMI information of the system
> and then apply quirks based on the matching per-system data.
> 
> Having similar mechanism in e1000e should be possible, right?
> 
> I am happy to provide the needed DMI information from my system if this
> works out.
> 
> Timo

Hi Timo,

At the moment, we have no clear knowledge as to which systems may be 
affected, and what common characteristics they share.
We are working with vendors to try to narrow it down.
You are most welcome to share DMI information from your system. It can 
help with further investigation.

However, maintaining a DMI quirk for every single system for which an 
issue has been reported is not feasible. Trying to deduce a pattern from 
a handful of data points can lead to it being too broad or too narrow.
Furthermore, it may set up expectations of updating the quirk every time 
another user comes and says 'your default setting does not work for me'. 
This can quickly escalate out of control, and generally seems like the 
wrong approach.

Ultimately, vendors are best positioned to manage this, as they know 
which of their systems require this parameter. If a list were to be 
maintained, I’d suggest something similar to what Mario proposed for 
Dell platforms a few years ago for a different issue:
https://patchwork.ozlabs.org/project/netdev/patch/20201202161748.128938-4-mario.limonciello@dell.com/

For now, I prefer not to delay the current patch, acknowledging that 
finding a better solution may take time.

