Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A2ED5B2D42D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 Aug 2025 08:44:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 54E448276E;
	Wed, 20 Aug 2025 06:44:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IsCcYYb3wsXc; Wed, 20 Aug 2025 06:44:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B6A5582798
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755672248;
	bh=oXTl5Ooxg0iT+EFusyX47ySDNvLOZvDQSJnJRYQ1Ycc=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=u1ResXAVYBmp2nCntGgQUj4pMPVcAvVvv0qH8qt8ejyypoiZ1KuW/WfFnxIYWWuTN
	 P77lfnzP6peEd4RenkXs4s2zqzYyNS1h+4pN7ycMcV9kXsCEMjwQHIAbZylmsC+T2e
	 0HKQYgm2NO8Vz+tyCE5HONRbq4EzzLa667+5tIJghuaAGT43Uvbq+VN7IdlAS2BmmQ
	 5/6GsKfJ7HI6W5Z44XLXiHZOvJsaQPnrU64HUeuUs4jPFn33R5T7GUFh2v9bTbR7P5
	 IaDnv2ML2xlOVUD9bLxydcrAT9gcHuU0wBM5iIkgpgCPAkNcmJf0M8erS4rRHvQZXu
	 OrF0izvLoos5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B6A5582798;
	Wed, 20 Aug 2025 06:44:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 53526E0A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4517961119
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 Aug 2025 06:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E7bk1gg11irn for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 Aug 2025 06:44:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9CCBD61113
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9CCBD61113
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9CCBD61113
 for <intel-wired-lan@osuosl.org>; Wed, 20 Aug 2025 06:44:06 +0000 (UTC)
X-CSE-ConnectionGUID: D2bXJhx5R32EhfCkYaIfkw==
X-CSE-MsgGUID: e3/CeaiuRAKbYI6xXUEjOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58000395"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="58000395"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 23:43:51 -0700
X-CSE-ConnectionGUID: omptPGNcS62nbG+zBe8edg==
X-CSE-MsgGUID: kNrUXhBpRPOXe+MkTq+TbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="167550730"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 23:43:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 23:43:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 23:43:51 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.50)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 23:43:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HjhbLwO6ZFW9uF2FWY1BogAZ2F9QwqMwLN/aKJbj2M1LVTUELXkbjYBiYUJWAWerN8OFFs6nku9esF6c/2SkU6cefHSE/PXb7WGXBaYFxAKobGqmB//XHzhh0b8ErFqU1unNwjH/dnUR/phyatMy37einb2GVFQdJQao2flLVdL2RZCPr5DJQihHKuRYogjBKq2cxrv84ke7MG/PtGC6VNTA6xMX9DViAnDbqoshTaCXqc2zhqao0nsEoH2UE39KEr2a99RuyEkbnJcRNglIiTfOQ/Bt/wAe2pt118BCIi+i3nHLWQM2GlHyAn8FEI6de26XYeN76uPHM3UXGGfYXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXTl5Ooxg0iT+EFusyX47ySDNvLOZvDQSJnJRYQ1Ycc=;
 b=Df/JE+anp8OlGE1m9D5BR5XaW0zdN1gEwKrwJ5yuSRtINOT4hhHw5WE5eu1hJ1ZQIrXQyJKaNAXlP8Jkr2GZHtFHrV0fhftNMe3Gf040Avfz08YyS88eoXHHEEeXM+R8tQPWXnXEhHs6t8oRl7tzIYLB0goYE+qtYPyiL8ksGUd1nWD8MLR6TJsictdc4CL9hUnVP/ZhIgWKOCey3yVJJLAkvN/Lzr3f0eLremrfwrQ/l9m0/vq9mWESPkAHEa7aXbAnrgDYFZcLwJqZvm/fGMDBnBYZVeLfzs2BpB62i2/gMdFhVsIcghsh6nEA4M3EvhjK7hYbhk0xxeZB9xKOuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36) by LV8PR11MB8509.namprd11.prod.outlook.com
 (2603:10b6:408:1e6::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Wed, 20 Aug
 2025 06:43:43 +0000
Received: from DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e]) by DS4PPF814058951.namprd11.prod.outlook.com
 ([fe80::eeb0:881:72ca:a73e%5]) with mapi id 15.20.8989.017; Wed, 20 Aug 2025
 06:43:43 +0000
Message-ID: <876ce7de-dc6e-4e98-9cc6-593cfe8ab73d@intel.com>
Date: Wed, 20 Aug 2025 09:43:38 +0300
User-Agent: Mozilla Thunderbird
To: Timo Teras <timo.teras@iki.fi>
CC: <intel-wired-lan@osuosl.org>, <en-wei.wu@canonical.com>,
 <marmarek@invisiblethingslab.com>
References: <20250819124326.3346021-1-vitaly.lifshits@intel.com>
 <20250819201032.3873c62b@onyx.my.domain>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <20250819201032.3873c62b@onyx.my.domain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::15) To DS4PPF814058951.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::36)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS4PPF814058951:EE_|LV8PR11MB8509:EE_
X-MS-Office365-Filtering-Correlation-Id: 847eb1a4-ba0a-4490-ff9f-08dddfb4e785
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UHBSQ2d4RTN5SjZrOXBCRmUwWll2dklwVWdLS0JzbitDbHg1eXF3ZytEY05W?=
 =?utf-8?B?Vy9xbGs2bWlOQXhiOWRkYzR4ajV3L3JjRDlYdFBPYnl2aUpyTHRsNUFoRU9H?=
 =?utf-8?B?NktzMUllV3ZSNWdvRU8zNnlRMVhpajJzamJVcCttemw0Q0QvelBOelhaVWdk?=
 =?utf-8?B?ZWNKZFlkY3N1TEpyZm9HTUdLRXBmaDg0NU1kR25xNHVXQzVtcXVMcjhZaGRp?=
 =?utf-8?B?b3RncWYvRktERUtrUXU2NTNwdnVsSU1lTnQzUXAzOWkzeGtBWlZrdVpBbFhr?=
 =?utf-8?B?K3IzS3orUXRSbEZob1JIVVdHK004cTZ2OGlBSmlhMW1OL1QveithU2hFWVpH?=
 =?utf-8?B?K09SZmNUVm5iOCt0NnlrT3N2enJvOGVxRzlodkV1SXpiaW1vRDB1eWJhOGMz?=
 =?utf-8?B?Y0djOGlQOXluVmFYSEs5bTdDbmtYd3JEeWxPNzhYdnY1TWx3WnNFTG56OC9t?=
 =?utf-8?B?U2Z5ZEpqM2YzK1lVOHB1NUNXNEJsd3J5YnJobmpjK0Nya3kvQ3NkVmx1SVFr?=
 =?utf-8?B?OWdaeXZQamdTZ1JhM2JoNWZjYTJkbjU0WnlvSVlqbGpOWGdEbWVvbTEzZHNr?=
 =?utf-8?B?UW0wcEdRTUY2VnEvY3h0Tjc3VFJCck9yYmtnWDMwbndsa1hqQ1p6Ync1WVVo?=
 =?utf-8?B?U1g3akVrVlFIVUduMDRiK2wvNjhKeHNCVjlHR2pFTXBtMU43cFBoM09hQ2h2?=
 =?utf-8?B?YzB0enFKUnFyV0JHTnJzdmNTSjdaN1MrRGhtdTBhdUZIR3F3VHRFQVBjb0JX?=
 =?utf-8?B?bFdPb1had0l0alhZV2NueGNzSFVnRExRNGRNU0tKU1Zmc0pLOHBKT21ubmpy?=
 =?utf-8?B?MVVXVUdnT3Z5V2haMHo5ck1Rc3F1elNQRUhlbkRoSGcydGloUHRBOUp3M2Nk?=
 =?utf-8?B?aUpRZ2thZkYxaCsyelBQVkQ4VWJIUktiUjVEdGRQRVVnZGgzbVlCVFJIdkRj?=
 =?utf-8?B?QnFXUXpLOFc3Zm12bElTWUM2dU1pTUtDNXRZd1JtWmUwMW9naUFtT0R2M2Qw?=
 =?utf-8?B?QmNmUTBQVHphditXR1ZzeGx3dXpsMGhEb0phNmxVVXk1cXhjZjc4L2FIMmkz?=
 =?utf-8?B?NDFrY3ZmM1dLM3FDSDM5aDVLT0owOGF2NHRtdnRWaFR5aHllRTM5TldCTWdD?=
 =?utf-8?B?LzZVeXJiYkVjTitXWTVhNDkzRnc4Ni8xcUZtNWt1OCtTbjVtNzFSOGNnVmdP?=
 =?utf-8?B?eWczY0ovaXFkSG0xOUd5M3BlWjliS0ExSWpYUTE1L2M3Sjd4SlJXcEFKQ0ZK?=
 =?utf-8?B?TTZFVHEyR01LZCt2Wm95bWkwanBXeXUrMUFWNjR1NlVORGlwZEJqU2xwWHlm?=
 =?utf-8?B?NG1lTStPVHJZQi9PZ3ZmUzBVZE1uMWcvTHI3anZvN0JvYWxmald2NHJLZFcx?=
 =?utf-8?B?MHBpQVpENDdMNURiaVpIU1ZFeTIxbk5hR3lsWERqNWVKM2hPdWoydExaL3BO?=
 =?utf-8?B?L3FNNitrcHpFYUsvN0tRb29pcEszc09HMTRoN1ZlUkdua3c3Y0Jja1lQK2xq?=
 =?utf-8?B?NGhyWGRpRHVGVmM0eE5RQUxTWUZDOEtpSTJCaVRGeWt1L242NWhnYkZRbTJZ?=
 =?utf-8?B?dDlYdmsrYS9rUnpudVZWNXZvS2U1aG9Rcitab05qMU1RcnVlTmlkUHJGcTdp?=
 =?utf-8?B?bnRQNVV2aUIyQ3NHQVE5N2pGWjRLWmZSR2tIZUlya3NXRkRuT1ZHSzMyUmN0?=
 =?utf-8?B?RndZUWlEamFnbklrY3NYcUtDUWR4M1NmYTRuS1dHTmRGVW1QV2J5NTBXckVv?=
 =?utf-8?B?TmZSaGlLdzJYaHpFU3JmcnRtM01jak5uOVdiZzlFOU9adDNTdFVTVVpUUDRJ?=
 =?utf-8?B?UWNLK2lDcVM0K1RpSWpEZnNHcmZUdk9RTDVuWTFBY2NmeU9XZy9hVDByR3Z3?=
 =?utf-8?B?bUwrdHlpMzdzZTVEME9sZVVlT0hEMFhzUlJCSGw1WGZ2WC8rOWl2aktqeGhH?=
 =?utf-8?Q?+1OeMTNv6z4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF814058951.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVhJWDErM1Y1YnNOM1BLbkl6dDl2TTd5amhESXJoT3Q1WEptMVZQS0NPQlk0?=
 =?utf-8?B?aGM3REJEZ3VZa0o5QU95Mm9WaS82alN1YkpRS2RlNmZiM3pxaGlrNzJqcXRy?=
 =?utf-8?B?ZmI4NnU2V2VSM1QwU2NLbWR0SkNhT3NrOTZ3dllIalRhaEVGOHU4cmZVYTZG?=
 =?utf-8?B?Vzh6YVlkcHRxRmJLbVF4aWl1ZkJsQXg1OE9DOHVvUkRHa09HMGFabjNlQVlv?=
 =?utf-8?B?Y3Z1dmZVTUFkZWtwOHdKamxWaUJURFNjYStMQzY2bXRvNnROOWd2MlhxRjRm?=
 =?utf-8?B?ajNpOXFiQTgrbUJ1WmMvM3RhNllkYTZNbWhxeHVYOExJMEpwWkNBMFQ2WVdK?=
 =?utf-8?B?cm9MYW5RYXE1QmxUdEhCWE5CeWJNUlZSR0k0dHBBYitzaWdsRG1mWGJKeHZU?=
 =?utf-8?B?N3VleG1aUzR6Sk1BMWpEWThjWVhjbjJuNVlFc2MzK0tsUUFuUWdHcFdmbG5k?=
 =?utf-8?B?dXNZSXExNG9XU3FuQ1N5SVU4Uks3aTY5UWFMOUs1bDB3c3dFUUFUWWhSYXh4?=
 =?utf-8?B?MFlCTWF5Mkt3VFBaUU1UZVAwUVlIWnRhaVJJc0NvY2daR3dNNUVkY1IrQjZr?=
 =?utf-8?B?VjA4Z2dOUktyNWppaGw2Vjl3TUFyK24wekZUSldNelVsUjFpQzJINC91Y1I5?=
 =?utf-8?B?dWppbmw5MktTek9XNzFVNnpvVjVnTDQvNEQzekN5NXVxdFI3bUlLRjlGdW1z?=
 =?utf-8?B?M2dvLzZEQUhGS3VtcGVJMEkrTDZuUmNYd1kzbGFPTktBd2N6WVRhdWZNOSto?=
 =?utf-8?B?aFMza0pHbVJFR2EwWFRNOHBxQ082NWlNbmNmSEo5ZEZvdnEzdXJuL2xJS0JU?=
 =?utf-8?B?VTZ6dnZTUEV5ZG1aVjBrOStoVHVrYkVTSU42ajNFOWZmbXlybFJPWWluQTJj?=
 =?utf-8?B?LzZ6RU1jeE44ZnRGMUZmcDVscDE0b3JTOHJmcUdqK2dYSEpyTVFHZmlKNUJr?=
 =?utf-8?B?Wmw1eUNPblJyNzdDYm1EZ1BndStFUnBzMDFlV0xuZDlTZDV5ODJocUlvRk9a?=
 =?utf-8?B?STBCTm5ibjBIUU50VmtBaXZqeE0xZ0R5STZPOWhlNDZEVC9CTnhPS25nY2VV?=
 =?utf-8?B?dVVuM0d5LzZCSmcyQVU2c3lkZ0gvdzRxZUovL2RESW1RUEc4dFI5ay9ydllL?=
 =?utf-8?B?TVJiQmpEWTdIbkpTRm9rR1ZvTTE1TlhINzdDcGwyd2IxZitENENkSGlBQUZw?=
 =?utf-8?B?WnB0R3pra29YajJ5QnB1bjJvMUZNWEFuQ2VjbmlsNHJFY2NGdnd5ZzVlWU4y?=
 =?utf-8?B?M3FsVjJwa0kvL3J2M3Q0Q01MQWFKbGZCSUJBR21YRXNTYlFMWDdZYmpkMy9K?=
 =?utf-8?B?N2FZcmI1ZlhjeW5sNEFzcUVCc1oxUFkzcC9RYldoT05XNkhxMzNCWGVxcTNF?=
 =?utf-8?B?Rk1CQTVuOWdodi91aVQ2b01PUXZoRVRqZm16QUxPT04zSUpiVEJNWTF0dGo3?=
 =?utf-8?B?UUpqRXNJbXFERmpvSkFKVjVMNHE2VGVmazM4MUlmTWllOVMrVXEyUHBvOTFh?=
 =?utf-8?B?MDROSndNRllGckoyT29oVENWM3pzN2hFZzBNUzRDc0JHTWdtcXNVNmExZUdh?=
 =?utf-8?B?cjRBWlJTN1Z2SWtleTViQ1pib2NpYzcwbHo1aEhwZXAzWSt2RVBPSU9RWkJE?=
 =?utf-8?B?dUU4Nkwzd3YwdHlpQjNuT3ZING9HZk1qNWszbUZISEtpcFhVSHprdDJNTnZR?=
 =?utf-8?B?ZEt2QkQ0SFdlaU1rUFErZEVocTJKY3NzYkpxTW10N1N5cHYvNEw1RXVrTWVE?=
 =?utf-8?B?ZGxYdXZhWTFUVjF0dUFHNUhDTlJBTlAyWlBhT3pkNGVYeGFKc1pXZFYyZ3ps?=
 =?utf-8?B?d0JmR0ViMVM3ZHRhQW0yN3kyZCs5R1VKOU90WXhHKzRRK1ZWWEZCV25hSkNE?=
 =?utf-8?B?VlV3RzNXWk9VUWhQdVo4TTEzb3laWVN3RzE1d21xQ2krdVZDR0VpWmx5Ykoz?=
 =?utf-8?B?RkNYWWF5b1RzUEFheUxBNVhzM0hleFNyMnF2UVd6OWFoQ1Ryd28rcGFNQ1ov?=
 =?utf-8?B?d09RT2E2Mmp3Z3BQS2dQeEhNRUh3RmFFOGtCVFZGOFZKQjBudENPYW9TaHdL?=
 =?utf-8?B?VGNmOXdDeGc4LzIreGc1OE1BelVqRDV2RnNYaTNET09zdmRwV2dPQ1BrdGgx?=
 =?utf-8?B?dGZkR3BsNVQzUmN5M2RaOFJiMHlNc1djSTZndzdadEd2YVBGUTBJN0l6MUZx?=
 =?utf-8?B?WFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 847eb1a4-ba0a-4490-ff9f-08dddfb4e785
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF814058951.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2025 06:43:43.0924 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kevV1pWodGFv0agNbuehh7BPw+bczr/jekJD0+zOutOS1RyViKzX3yrcBRDEZRnIBiS5lDIXoq5iPikhmp2RbS+1oSiDbWD4FG46VKMj8CA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8509
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755672246; x=1787208246;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Etwahogb4yWBOsuLjsBwZgVCjd1o08qoJ73G3COzSi4=;
 b=CcZwrFKX+1E/1269V6JyO1MwPUnzwoFMnp+g9xJ2DWBysPMBqFr/UGzV
 szIDgDzT2aYx2DU/w8XlFjpKKrhdLFy3vi8uDkuYhvDgWHsjjNu8sG3qe
 eTNO5h9rGuJ/IO6+m/hODbysoUiqJI2zUe6NlFCz47SZTk4guPZ/9ANG7
 No5JTvAAhbqPlFWPbII9vO+wNU1/VGWEzyKXxJZZOseL0ATic4PUhLMuG
 0GeWRr2vkGZavCI9JM7zrAk2mKTKvSV6blOlQxF3CgkNseUw49z0Eixmz
 2eIpwjgiXtP90u9OFh/jq4W/vGpVSLvhhtm6XXQA8reUVwJABMoGmSPxD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CcZwrFKX
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

On 8/19/2025 8:10 PM, Timo Teras wrote:
> On Tue, 19 Aug 2025 15:43:26 +0300
> Vitaly Lifshits <vitaly.lifshits@intel.com> wrote:
> 
>> The K1 state reduces power consumption on ICH family network
>> controllers during idle periods, similarly to L1 state on PCI Express
>> NICs. Therefore, it is recommended and enabled by default.
>> However, on some systems it has been observed to have adverse side
>> effects, such as packet loss. It has been established through debug
>> that the problem may be due to firmware misconfiguration of specific
>> systems, interoperability with certain link partners, or marginal
>> electrical conditions of specific units.
>>
>> These problems typically cannot be fixed in the field, and generic
>> workarounds to resolve the side effects on all systems, while keeping
>> K1 enabled, were found infeasible.
>> Therefore, add the option for users to globally disable K1 idle state
>> on the adapter.
> 
> Thanks for adding this!
> 
> However, as a user, I find it inconvenient if the default setting
> results in a subtly broken system on a device I just from a store.
> 
> Since this affects devices from multiple large vendors, would it be
> possible to add some kind of quirk mechanism to automatically enable
> this on known "bad" systems. Perhaps something based on the DMI or other
> system specific information. Could something like this be implemented?
> 
> At least in my use case I have multiple e1000e using laptops on the
> same link partner working, and only one broken device for which I
> reported this issue. So at least on my experience the issue relates to
> specific system primarily (perhaps also requiring a specific link
> partner for the issue to show up).
> 
> Thanks!

Hi Timo,

Unfortunately, there is no visible configuration that allows the driver 
to reliably identify problematic systems.
If in the future we find such data, then we can improve the workaround 
and make it automatic.

At present, the user-controlled interface is the best we have.
