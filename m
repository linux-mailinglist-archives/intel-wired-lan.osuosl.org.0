Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2AF9E8606
	for <lists+intel-wired-lan@lfdr.de>; Sun,  8 Dec 2024 16:52:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4AF014078B;
	Sun,  8 Dec 2024 15:52:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PCzwSwkQc6l9; Sun,  8 Dec 2024 15:52:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F94D40781
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733673138;
	bh=HMF7c0Aqrjd6b+wZlgkIhEbbdKJ5TGAYfib3STbLz+k=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LlGXln+S3bnOXumn0KPXpXCiTQYAgwQgwleJPvf0zakhV2etyFnIgSqux44LLQGTe
	 A/CWtzKjJnGdZIVP4e+H9cNOH3nss5E5uj8w7WLdQryqmWABo5UdrRZggsQzInupwO
	 kXXWZ+OYAQALmNaZwIlFCJHctbqBfxZ5FZcQ2aQxJUW+Pd5zJ6Xyha8LinI4BelvPT
	 SxCIAV6DgT4MXqk7OAPLlMaMk6y9edzR7vW/Jw4HRwGSiVyvNOy28TnE+b7PkyAKe4
	 KLryU7C5OSFKJw0WupeRFPtnmBI2yOBn4cfbVjsq7Pwum5r6B1xUwEaJSHpP5FWm5a
	 6yef/weA9y/Ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F94D40781;
	Sun,  8 Dec 2024 15:52:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA680979
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Dec 2024 15:52:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 98F4440A93
 for <intel-wired-lan@lists.osuosl.org>; Sun,  8 Dec 2024 15:52:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id E29-4ux0josF for <intel-wired-lan@lists.osuosl.org>;
 Sun,  8 Dec 2024 15:52:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E3D240A51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E3D240A51
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E3D240A51
 for <intel-wired-lan@osuosl.org>; Sun,  8 Dec 2024 15:52:13 +0000 (UTC)
X-CSE-ConnectionGUID: i/XjhsktTzKwwiUiekFZ3Q==
X-CSE-MsgGUID: 8P94C4A/TKSP0KG2CcemrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11280"; a="37755356"
X-IronPort-AV: E=Sophos;i="6.12,217,1728975600"; d="scan'208";a="37755356"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2024 07:52:14 -0800
X-CSE-ConnectionGUID: mvqaix1dTMOkqEV7ZVqqtA==
X-CSE-MsgGUID: bLX3VkaCQbesf52s7Fwmvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,217,1728975600"; d="scan'208";a="125698110"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2024 07:52:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 8 Dec 2024 07:52:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 8 Dec 2024 07:52:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 8 Dec 2024 07:52:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nxsDkWN+16XXg/N4zoPKAD/9lmTtU3mevIQ4cOwM7lihv6ID3okp2V0EteGegtXrvo5tGgXqAuXgbob/jwjuVmOEX80u7sES0vT5aeprlAcEh7TNZGm++iA3bxUP69nB2I6+5ky/Xgm9nu4AeD4pvWDdkm0EYYL8rB/SJjp/9+EIZaW1K9O4kVWw9BuIl3IotXCL7db6CPJT2wkBP7cuNj8XxHceydlsM5iSDGtpibcwA4WutkhjUYXPlv3LzgfK7D0AxDxJ6enwJWYvwvJc7Kd/FmLL1/GLVEP3TZTxE5L4Hz53VOcqbr0V7NUwvBqY5FHuUPIuut8mmeIuSp6kzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMF7c0Aqrjd6b+wZlgkIhEbbdKJ5TGAYfib3STbLz+k=;
 b=Cygywv8baawqBCg5/8AqVYO1lCfEyQLUJxXAfhAEuCz5CiYt+tO5XVcfipsM0ufVgpdVYLWj2LLLx80J/OWiX0Y9/YyBtyeCs90cURk/8Me4DCrF7Krd+nKnPBtqpTFtZ4s3tZ7RlHK5mjHwuh6jqyQZrozWYnlRa+YvNElUJZGFtgXSDyNnx59u6G3sYSipFPG3SY70+rY9o4Sj5tpgt8QVhrsoCIWvWUMwCRc5YDg+5Q/zoFw+LEf62apMYcpjTT8oirX/HirjyTn+/5WZNou809RHUJE/mLqC8Dxyr9/2mYnHurraBqW1Kw0RSQvcb9PBRuMVTI8xV5CLFiCQGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by SN7PR11MB7490.namprd11.prod.outlook.com (2603:10b6:806:346::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Sun, 8 Dec
 2024 15:52:10 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%5]) with mapi id 15.20.8230.010; Sun, 8 Dec 2024
 15:52:09 +0000
Message-ID: <b946ccd3-3f7e-4c8b-ac07-0283be19e952@intel.com>
Date: Sun, 8 Dec 2024 17:52:05 +0200
User-Agent: Mozilla Thunderbird
To: <intel-wired-lan@osuosl.org>
References: <cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <cb7776c8-868f-4191-8b77-8ebbdf674aaf@valdikss.org.ru>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|SN7PR11MB7490:EE_
X-MS-Office365-Filtering-Correlation-Id: a86871a1-dc30-47bb-cb89-08dd17a04617
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NE9CeWZrUEc0UGszMUlrSkJ2M1QzZUJVamkrRFZXRUFNdkdZY3BWZ0Zla3dl?=
 =?utf-8?B?VDNxSXorYzVJTmNTVWVMZE9FK3FmTTA3STB0cUZncmtNRWh1OENvZ1VENEFy?=
 =?utf-8?B?VG4rOFErSVNMajF0eGZkdHN0WDhuUi9EOVlCVi9QdmFOdUxkdHFxellZUVlZ?=
 =?utf-8?B?Z0Q3VlBBRmtXRHhMMFlEdnlMR3g5WlQxV1owZ1NIeHNWWGxyeGR2UTVnY2Vu?=
 =?utf-8?B?aVpYOFBVY1FCejVJZCtweGJySDFlWUZVd3RvWWN5cU1mSWtMQ0prdTRQWTJX?=
 =?utf-8?B?M1RhcXJpc0lZOEZkcGlTN3kxbzk0M0QySjJLVVplaEtNSi9hZGtSc2xvRzZy?=
 =?utf-8?B?aSsvNk8rVzQzUzcyeG90TmNKQ3grSWNCTDJBdGRLczNwRS9waEZYWDlvRUpI?=
 =?utf-8?B?dGpDV2V2WUtGN0x2NHFRYmhGTi85cC96NjBhNXhrUnlCbWtMQ1JpaFNybTEy?=
 =?utf-8?B?cmlSLy9oRHJ4Y3dSUWVEN2oxWnpsLzBjdVlCMkNpUXVUSU5ucVdSU2FlM0tW?=
 =?utf-8?B?L3h5OHFHZlpoeXg2VzNGaUljc2s4cG1PY3hnRUZUN0paS2hHRkNrckFudHFQ?=
 =?utf-8?B?NlZyR2JUcU55L0t6WnNoQWIyV2hjaHpLZHZWc1orQ29YUXByeFNlTzhIZElq?=
 =?utf-8?B?UmVKUjdXYmpwdGJqMVA4ZmVnKzdxTTVCT0FIbVBadU5MczFnQTNSTjJyYXlU?=
 =?utf-8?B?K3NjL0VZSm5LZTF6SXJNdWZraTIvZU1pL0k4Znczd0VDTVYzL0hLVkxST29z?=
 =?utf-8?B?RldtUFFaNFZWY3hGaENpSndaK3hJek9OTHZjTHZEME90R2xGTHIzKzNPVWxq?=
 =?utf-8?B?QVdDbEw1bkVtVjhqMS82Si82eWx3Y3ArL0RCVWNUR0VzSDhWRitoVDBwd29C?=
 =?utf-8?B?bXBFOTV0YmFXQWovMGFaVk5NYWhFVjUvbTYyMmdjSEkxbXdESy90TFY5ZTUw?=
 =?utf-8?B?UVJFczNSdGs3MmJiUml0QTJmOHAxdHNPdGJJUEdtVWdBS1pjUXhRam9ZT3hu?=
 =?utf-8?B?SHhZWjVIQllKUHNVMmtZSXhWS0hSanVsa2xYU1pFTURzY1F0S0Z5WkxsbDQ3?=
 =?utf-8?B?d0ZudElic29HMmlsSXh1c2lCSC9RMWdaSGE0Rit1ZVhKOHZhSW5Ec2hlY1BW?=
 =?utf-8?B?aFRjcUlYN25KVXcvU1VIZmwzMVpjeXBzY0Y4WktsU3hIakp4bWlCbWdEdzla?=
 =?utf-8?B?dzRoZDVFeSsvci84ME9XdjMwcFdQWWs0bGZhSy95QTlEV0ZPdzFJNDN1TTZB?=
 =?utf-8?B?MUhSK0FLU0QvMDBwTnArMi9qOFBEMkwwS3UydG5za25tZHJjc0NIUHFOeHhS?=
 =?utf-8?B?K1NnSkczNUJHSzhoMjVFS01hNmp2T0loMGNaVWo5QXFTaGthSi9vazF5bEVj?=
 =?utf-8?B?UWc4M0tWallvcWJ5Z1dXM2RKV0tTaGNlMUFQZ2NzRFF6aWh1KzdsUGVDdjVC?=
 =?utf-8?B?c2hqTTFYRG5RWlRTY0djUmszc25oNXBNWWRZeHZQSDJ3NHAwQ2FFN1Y2UCtU?=
 =?utf-8?B?ZHduY01ndldpUWNubXRueHVaUjJmK0h6WGYrbU1zY0F0OHQzellwMTNvaXVY?=
 =?utf-8?B?TDBNOFFhcnRGVEdQd3ovenFocjdPODR2aG5YakFOOW1VU2c2QTVmVkRSZlZo?=
 =?utf-8?B?M2JnbE1SNnBVZU9pbUV1U1RadjNia1YxWjM3MzhVZU5UeHh4SmNIQ3FqNVNr?=
 =?utf-8?B?YU43b05kU2pJOUxaQWE1SW9EaGEvdUFSb29Ma252T3BlVVlzMnZ6QUxjck9Y?=
 =?utf-8?B?U2ZCcC9oVW5YQ1FXQkkvNWM1UWMxMkpqVy9EVUxEbGRvNXBYTUliQ1JGTm50?=
 =?utf-8?B?amRmS3BpYTYvMnVDTElVdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXljSHdjR1hsRFZHakF5RHdUUGlmNFJJNDdDNUg0S2NQeXZwakZJZXFNZ05J?=
 =?utf-8?B?aGUra1J4VGNZWE8vYittLzlMa1RWcm5BaHJVdVJDR0dTYUZPc0NRZkliMitk?=
 =?utf-8?B?eFJOSWZYK0svbEJUaTIvYkJ1RGJqeGt3dkVid1dPRS82WkR4SU8xMXBMR0ly?=
 =?utf-8?B?RW9UQVpwV0J4TDFKUENwSWwyK2o2a0ZUVElJT21jYS9HR3hLd1M4dlVseEQz?=
 =?utf-8?B?VW4vbW5TQmFWU25yaEFJdHhBcXd5RE14Ymg5ME9maVlLR2ZPRnRVL284bjRw?=
 =?utf-8?B?WSs0MmhaY0hQUXB5RUJ0TzkyUWZ2L2lrMXBzU2RNWEV3dWtzTWVvbTBwaUdm?=
 =?utf-8?B?RFpyOWNwdEI1OG15M0ZMMDRSWUtNb3JjRjRLQ3EvZ2RaME1rcnRwQmpJU1cw?=
 =?utf-8?B?ekNiUVRtMGl4d3MwYVpzZzFKWDRkKzRjVzZiUDVVcGFWeFY2c0hYQ0h3MFlG?=
 =?utf-8?B?NmZqRXhwb2NYSTFVRlRPeDU2WURFallmaWpySkZjdU5NWlNCU3JrMThpKzRj?=
 =?utf-8?B?R0x1STdCVGxpMTMxSTUrVGJEVWNrS0NyYjVidTZ0VXo2TWVEaTRnUzJreXdY?=
 =?utf-8?B?MHk0R2lIVmJFY3hNTkxOSzFLb1JnV0UxWVhIMWRLRjlDY3E3OUJxbVBQdkVV?=
 =?utf-8?B?clc0aVR0eEozR1h0d0hsLzRFUk9hZEkydXpMODNnZ2dqVTFjVnhHYUlWdUkw?=
 =?utf-8?B?VGwzNk5NT3VXaDJ0bk5yZmpiYVhlenB0LzZFblloLzh6SHBnNG02U2Joa2Jw?=
 =?utf-8?B?Q1FYSkZxLy9Lbnc3cHBDZzR1Z2g4NjROSWwwTFA0ZEFtZjNXa2o3NVRkS01Y?=
 =?utf-8?B?N1oyUmJtS0s4YXJLMndVbnhUWkowYjM3cDVYaTUwZy9JVG9ncmJwU3BRNFlF?=
 =?utf-8?B?UWJGMmZoaG5TNnI5aUQzbjhhOUcxT2JLeUE0NU42WE1hUzFZUXhBNVBxU3JE?=
 =?utf-8?B?N2YxbTQ2R2JRWkNjT1Ixa2JLOXZjYmVPRUkxZWZVRGV5MVowTTNFWmNXeUdt?=
 =?utf-8?B?aUNXQzRCZTVyQ1NPV3JWdnBRTDV0aFIvRS84Sk45RW9ydVBKLzJrMFBZSnJU?=
 =?utf-8?B?U05QLytKVmZ4Q0ZNWjdnS21LQnpuUXpwK3lSNWVzc0pVU3hNREdGV3V1d2d3?=
 =?utf-8?B?OEFEN3ZRKzBUYXhCWHNtdU1jN2o1QVRiSXZqKy9SaE4yaWVXUFRMdDA3cEZU?=
 =?utf-8?B?eTI4R1lVRXZwMGx6dzFheWFVTE55R25mL0xJdVlGUng3dmM4RFBkZzREeGd1?=
 =?utf-8?B?QlcxNGllUFFXVFRiNGVYR1Q0WDJPTXp3MXhVV2FTbkFiQXF4dnI2M25NazUr?=
 =?utf-8?B?S0t2aXU5L0VRWGR0M0dMbmtNV0l5bHdaRnArV1dvZStndGk4N3ZYckFqalhD?=
 =?utf-8?B?dWdCbWc3RnlvS3RqaFRkZFluWmdhbW5qdXhLTk9oODF5TVNwRDJra3JCM0xV?=
 =?utf-8?B?VzFRRWVNOEt6Ky9Uc0RnZGxmRzh5M1pLclhtd1NLN2dwWkh6THdESWxEQ2ZT?=
 =?utf-8?B?bk1kV0htd2poYTlGNldQOFIxUlEzMUdFZjFJaHJDL29tRHVpQU96aUtvOVN4?=
 =?utf-8?B?dXFmUVUrQ1BMQmwwQUpkZ2FGQW5tWEhOcHBSK3NFaHA2eUM0djNBWHRHYlZH?=
 =?utf-8?B?YXZ5M2gySEhjMi82UUdiWmJMTjRmVi9rWEJSVkFzeVdwMFhpNTQzTjA2TklH?=
 =?utf-8?B?clpRTUlUNXgyQ3dhM1Jhak5YZnZIcjVCa21QYTkzZzZWSjRidDduOGh4RTdh?=
 =?utf-8?B?U1FOTXlaRnp2S2xaS05HaldIeWdyQXBHUHN5TUN4YnB4aURETFluTUZzU0I1?=
 =?utf-8?B?UnJMUUY5TUlRS1VENEhiaWNFRFpiZGdoSVFFSVdST1hORmw4ak9IeUdUaC9z?=
 =?utf-8?B?MGw3Y2k4VytnTHBUV1MxSmk0bGp2NVlYV0M0V2NrYU1XTk13cmx1Uy9nZ05S?=
 =?utf-8?B?bEpHVVl5Q01CeDFLdk1oVXM2ZUJ2TXRjZUNVUXV6TlVIakZ2amozK2M0eHBE?=
 =?utf-8?B?TkgwbUFPZit6SGV3WkxBUWJ6Qnk3Nld5bkFlN0Z5emo1bzJ3MjMyRGltTmJP?=
 =?utf-8?B?ZHlYWVJ6K3NNc0NRUzVReit0OG5DQ1RGY2JrUGNDaHVWR0FtMW9QbDJLWGlw?=
 =?utf-8?B?K3JLZ1crRDk1OUlueEFmWjFsd0RoT0MxOUpNRVpieEhJZExaWlRtaFFnck9D?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a86871a1-dc30-47bb-cb89-08dd17a04617
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2024 15:52:09.8699 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ka9LHoOs7ALnxki4gGkebcVBPh7d/nQbRSYo6JEGNguTJVtQgUnOkPRtCShJO4C/PcWtlQ5gnLkGpcWOR6Yk3pm3tcYCX3ZCDjb0Ye9W5h0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7490
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733673135; x=1765209135;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Tr3P3POzJQHzX+KPNyYN6+7407IUPYO9/AL1cNV4bBk=;
 b=K3vehLOxSMyc3cBorwMSIQpxRGUVTZFptRw1NhSlMSLIMUpI7L1b2k5l
 r4sxL/zq/q9ukBOCwGO0nATfpeV9NdEbi0pCcfuHPhRp1XqEUgjwkQhHI
 Of2crOjrFTG/wsKDkhqE26gkF2gCth2etRD5/iJs9xZIJd6YWw6xp2BN9
 thGoAbP0qbHfh/O2ToTBovS2MdCyjysN01/JC17/vnrXFoLuMffd5nXCk
 08oYwZKOd3gWXZh74vqVKdT0T636kFWzh3qtnYyTRch+yAJImWb1HvIwj
 dlVMtv7cmARNdvm0ZBQakmwijHSmcPKTx6lkEB4zb6ZkTp/jsd4EecrrQ
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K3vehLOx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] I226-V 1G limited to ~250Mbit with ASPM
 enabled
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



On 12/6/2024 6:06 PM, ValdikSS wrote:
> Hello Intel team,
> 
> I have Intel NUC13ANKI5 machine, with I226-V network card, and gigabit 
> Internet connection.
> 
> After (presumably) latest UEFI v0033 update for the NUC, my network is 
> limited to ~250 Mbit/s download unless I disable PCIE ASPM option in 
> UEFI settings.
> 
> ASUS support (which now handles support for NUC products) has confirmed 
> the issue and provided me with Windows NetAdapterCx 2.1.4.3 driver, 
> which has this issue fixed (I have not tested it on Windows).
> 
> Linux drivers are not fixed. I'm seeing the issue on Fedora 39, just 
> tested network speed with PCIE ASPM enabled on 
> 6.12.3-200.vanilla.fc39.x86_64 kernel - the issue is still here, 25 MB/s 
> download max.
> 
> Let me know if you need debug output of igc driver, I can run any tests.
> 
> 56:00.0 Ethernet controller [0200]: Intel Corporation Ethernet 
> Controller I226-V [8086:125c] (rev 04)

Hello,

I believe that the issue you are facing is related to PCIE L1.2 state 
exit latency. To confirm this please try to reproduce it after making 
the following changes in the igc code:

diff --git a/drivers/net/ethernet/intel/igc/igc_i225.c 
b/drivers/net/ethernet/intel/igc/igc_i225.c
index 0dd61719f1ed..1c0c3d665a0c 100644
--- a/drivers/net/ethernet/intel/igc/igc_i225.c
+++ b/drivers/net/ethernet/intel/igc/igc_i225.c
@@ -612,6 +612,10 @@ s32 igc_set_ltr_i225(struct igc_hw *hw, bool link)
                  */
                 ltr_min = (1000 * size) / speed;
                 ltr_max = ltr_min + tw_system;
+               if (speed == SPEED_1000) {
+                       ltr_min = ltr_max = 100 * 1000;
+               }
+
                 scale_min = (ltr_min / 1024) < 1024 ? 
IGC_LTRMINV_SCALE_1024 :
                             IGC_LTRMINV_SCALE_32768;
                 scale_max = (ltr_max / 1024) < 1024 ? 
IGC_LTRMAXV_SCALE_1024 :
