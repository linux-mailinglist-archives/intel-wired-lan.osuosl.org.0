Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA098CC7AA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 22:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7BBC440AF7;
	Wed, 22 May 2024 20:24:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K4jAhQ_g90ei; Wed, 22 May 2024 20:24:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C1A9405E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716409472;
	bh=AR3jX4GI1MDpBHPMK5LV7FPXM1H15rlv6UenshKZTWs=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=VylSRyT1kqpzsxsYtLNuCcRXmLPtHR1ngN/T8lcRSBwhNjBEyp68IN3WX0ffMCA6D
	 xnci4aR9LUtRUJzPf5bHoz1NoET+oVrcPZP9fWev1pyBaGodstuF67YvHBjjagkLbw
	 QcQ7DsH+AaHeGYzESxg8D1H2qTd1m8gMjM0ieWObjmdQaHKDUCCrpbHHWZ6nh/HDcO
	 +tu+Xr1CD9Q8SkludgD4fXjSgDqOSuSQk07Alf3KLuh/KisRMeSlJuxrN6GYNlgpnl
	 7HbzvfJXzqqah37BkgliKju+ba42OMxWc5N4dJ/V+CT089IkVSHo13ygNOMa9GLRSW
	 8R8hlK/Kc0zbQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C1A9405E8;
	Wed, 22 May 2024 20:24:32 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AFFF81C53CC
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 20:24:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 988DC80EE3
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 20:24:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jwODzPE-9G2O for <intel-wired-lan@osuosl.org>;
 Wed, 22 May 2024 20:24:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 64CA480ED6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64CA480ED6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 64CA480ED6
 for <intel-wired-lan@osuosl.org>; Wed, 22 May 2024 20:24:29 +0000 (UTC)
X-CSE-ConnectionGUID: wY8ndJfBSvCPedwHfPfZNQ==
X-CSE-MsgGUID: wdYvIo3ZSyuV7WVgQErhSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="12541375"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="12541375"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 13:24:28 -0700
X-CSE-ConnectionGUID: eqkbMeAKRYGnooBzwQUVbA==
X-CSE-MsgGUID: /O/eyIWRQTeUyFWaZZ1M7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="33952532"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 13:24:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 13:24:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 13:24:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 13:24:27 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 13:24:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Je+IJBN3SNERXM0pL90m1001O+pOiuTGeuQvank40A0NnVPQY9Aua+hJdXDS5w0CYcTD/LGYtmhAUKMQ2cTklDlXExTEphaHFUt/36SVC0FtZ0VDxe6uE05k/uzTSNlHGiZZDiyG+PM22giD7cQ/9WPE/LyPXcb23QS1PxsbT95EK9UUWBNU/k7VIuTRT4sqsd5DlrfNIIbYQAO6GWXGcdf/Tu61hn7ukBHaezDET5CKdME+K0ojkqxTrbtc6alE7nILipVOTCLI0BqsBh3zosC8aDfE9gLNcc5YmfBfRq95I8hXiAc+VGE9Xl63oXBODAuDu3FSnSOhJVrG9s7i5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AR3jX4GI1MDpBHPMK5LV7FPXM1H15rlv6UenshKZTWs=;
 b=UjDv60O+QfPWWxT4IQHB1Yir7iKO26BL7PppTaEOMERIN/FowfC8+gdb3U0EvKUOzS+htEPmTQSergz0xChhsju837HrDDKuzkhYc2iW4QXjKWlDy1ojaTT+s4jTLHglje2ZM/eUJAG/6nIL4LLeY06EjZUE8en0YO/218NLi7STGxojbxj6yYClyXf8PEVSLJawqlJuDWlSszEaSxAKZ8ovxMYGOimGDhoKGhd9p3b30tSEyclcpbtaLvtiB2mKArXIRYccqQJHjDlIgWrU+cVo35NB12NV8FsxmThrj3hUMKIQVAwAHbKvE9rEBZ8oEwYLHG3bnLmLkaYkPyhLsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DM4PR11MB6407.namprd11.prod.outlook.com (2603:10b6:8:b4::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.19; Wed, 22 May
 2024 20:24:25 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 20:24:24 +0000
Message-ID: <3a2ea6f8-e1e5-4caa-8860-e0a635508ddd@intel.com>
Date: Wed, 22 May 2024 13:24:23 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@osuosl.org>
References: <20240520222011.2852799-1-david.m.ertman@intel.com>
 <2fb592d2-2153-4d48-97e0-4b0515afc4c0@intel.com>
 <96b62469-8fc7-43b2-b31e-75ca72591e14@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <96b62469-8fc7-43b2-b31e-75ca72591e14@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0103.namprd04.prod.outlook.com
 (2603:10b6:303:83::18) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DM4PR11MB6407:EE_
X-MS-Office365-Filtering-Correlation-Id: 53694706-f135-4fbe-b422-08dc7a9d2c15
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjZ3UEVEM2l6bXN2aTRvT1M5TTBxMjg4ajEzL2FvY0UxYWovRjlURVJMVGdQ?=
 =?utf-8?B?OWJsSUphdmN5b0hQRlN0YVlvdDJLU1V4blRZT3hYaGtnbFJXam5BMS9JV3FY?=
 =?utf-8?B?cmJZbkZyQWdJb1Zod0NNVTgzWUJOMFllNWdZZWRqOHRPV0JpV3JOQWtzaGtq?=
 =?utf-8?B?ZlYzbXJDMVpaSitXcExwNXVBZ3F5WEtJOTNVbHJpcDVnWXRGejhVUHNzQUNk?=
 =?utf-8?B?NWZ6WlNSbDVRR1pBVFNMZlVwVGJkYUtBSG1VZk5RZlNoRGUrL2RiVnFBcXFy?=
 =?utf-8?B?QlZiNndiaHAzTElpcUpzdmNxVFROY1crY1JaS0hPeWl3NGVCK3FMZVFvSU9C?=
 =?utf-8?B?MW80bDhsaElQK0g3U3BEY1NURGt4T2lxc25oZGcrUTZaV2lMRXp1YUNsMFRH?=
 =?utf-8?B?bFdaOS8rZzN3MW1aRWlaQUs2dkFlWWYzcUkrb1NGQWZwQytiYTRKbWRudnhV?=
 =?utf-8?B?ZTJUYmRGT1Q1QklMMmhBeFRyNlFKSGd6UDUwWVY1dkFZWEMyYWt5cW5nQThC?=
 =?utf-8?B?NVR3bkVPaUJBZlJzbjROdFpQUHQ4ZEpyNmYwSEJYMjJYQjY1RlJXNXRHNVIy?=
 =?utf-8?B?Ymd3ZTl4emlYSjl6NmFXZXM3NWg5V1VpYmhYdHMxWThKTkVONmlQY1NWYzRB?=
 =?utf-8?B?MEFMM2RDZlRiQzVKUW16MXhpdHNoZWtYUSsrVHVzOXZmMEdCTCtNOVVUV1Bk?=
 =?utf-8?B?WG0vVTFDZnpLYkh0Y21hZHVRMTNDMm1ZSUJNMHFpUDlRV0oxMDVGU1JPRGVY?=
 =?utf-8?B?UFI2VnA5RFVaMzB6MlJVclhGaEpkUkY3bFVabmRFc2RxMDNIbU5GSnZjay9B?=
 =?utf-8?B?cUFVWmpBN2liVytYZUg5UFMvYXdkbEFWZ3ExVjhYMWpMeWcxa2VpMS9jY0h0?=
 =?utf-8?B?QXArRjZoTUU5L0x6WFJ5MFhoWkU2SDBsQUo4Nk13emowdjF5emlCK0poZERk?=
 =?utf-8?B?Q1grVkFOeDFMQzJKUGxNbGNTdDlHQm93QzlJUFkzSXlLSW5vNjBsWjNSY1BV?=
 =?utf-8?B?L3BqeDBzeUlmWTRGdVExWlhrWVZqY3lVMEdUNk1LZm45cTF2ZzdoVUk1ci80?=
 =?utf-8?B?aUd4dWNkNFhUVXNsbE5FWWxIRldwdmFoejlacm91OEZwZHVCTm9jSkZVRzk0?=
 =?utf-8?B?ZmZybU4zTnJXMzBEQ1BDNEJlSjVBbitjb05BOVVidXpVQTMyWE51dFZodjlu?=
 =?utf-8?B?VWVlMER2RGRKYlVQdCtUMTczRHJuVVZ2WTlGUTJuUE1CK0U2WFJqVEZMUlNt?=
 =?utf-8?B?UUhBQndHV3F0S0hBS2Q5eTlRMFhtMkxEdVVvUXNGamxKZURFQU1pQjhndUlM?=
 =?utf-8?B?V2UvWXhXSXFrRmR0cHpQa28yT2ovU0lYRlp1dGJZb3VFTWtMdGJFcC9ibSta?=
 =?utf-8?B?VGNCbmJqMnZiaDVwZFlqSmxYQ09WM1dBazl6dVZRMzdFaXREbEh4dFVWeFVU?=
 =?utf-8?B?SWtWTTFPRHJaV2JvOVhaQkV6T01SVStROWlJdmRXaUUwRDNkMWNhWHFFQThw?=
 =?utf-8?B?RVhYTDM4SlJqRGhxdVRtaFlMcGwwTWY4eEdYVnprN3UyTFZYU0E3RVlUSExp?=
 =?utf-8?B?UVFiZFgwb2JLQVovaXQwSXYvTzlpdS9FOGNrOFB3S1hkaVd1UG5hdzVWcnhY?=
 =?utf-8?B?dFNWemlQUm1pdmx4T0pJQjVQeXBacG5tNXJPUjRlVWl0a2ExNkdJV1doOGJ2?=
 =?utf-8?B?b2diekVMMmt2WFNTaHVEeTFPMkRCaUhGYUJKZjNwV2c2ZHlkdElTMVNRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVkrNWo1Z0U5ODhLanFjanJpTDVoZW5hdkl1cEpUUlN0djRoWXA4Tm52YUtX?=
 =?utf-8?B?aUNVUmJKWENQWUJuUkt6VDZKMmJ0YzhTV3BzNjByMGgxMVJUUjgrTHVYOW9q?=
 =?utf-8?B?ZDcvc0hNNEIrdS9jcWZkZkh5QW5URUNpK1B3cElIdStGTy9NNGZQUm91c21w?=
 =?utf-8?B?K2paRWRNZUdlSlU4dnVwR2Mwc2NlS3ZtQ3Q0ZlFJTlJwU1cwcEtad3p0NlhL?=
 =?utf-8?B?T2F1QVZlOTBucWFUOTF4MEMrbXVKQTVpdzNOU3NLanI5ZFRKNlhHMUo0Y1A3?=
 =?utf-8?B?eDhuMldTUk04blUxdnNNUzUxN011bkh5T2xZaEdmeWtFQkd0aWI0TWVWejRx?=
 =?utf-8?B?VWQ3L0JETW5BT0UxbTdsVnRjSW96am1vTVhVdjJkTFRWdnFUN0cza2JkUWZZ?=
 =?utf-8?B?a1IrTUdaUVIyMFRoTEF3dnFYNnFBSUpyMFJvblRhYXZjRDdSdkRCSWdKWUg4?=
 =?utf-8?B?TmRod3ZPL0crT2FpdHI5OHUyYkxPd0tMOWJ4N1p0SURaYU5ld2REWENWcndm?=
 =?utf-8?B?OStGQlpVREx2a2RadHY1MUNLRGtTdWIxckhYTjZ5L0lqT0k3UmdGVGp1dHFC?=
 =?utf-8?B?cXJBR2ZCWm1PQURsb0hUYUh0V1Y5QWpkNGxpank5UUdPbjFpSzFsbkJ3NG1R?=
 =?utf-8?B?SkNOUHhQaG81amZRb04rNCtOOGw5dWZxenQ3ZU5QKys2VGo3eHFVS3Q1ZjZ3?=
 =?utf-8?B?ZXdRdEl5K0g3NEpxQTFOTUNpbUdoYkpmUk5PUy92dmJwMkUvR3NRS01QRW5J?=
 =?utf-8?B?NUhSN3lQZkZvR3RWYW9tbDRua1VYa0t0bDhqT21URjFRcHoyelR1VngwZVZG?=
 =?utf-8?B?dk1YWGZqTFRNVnhjdFJpSllyazdHY3JrWVFPcTIrODZ0RG5aTDdrR1lSeG9h?=
 =?utf-8?B?U29MUWt1N0hKQlJRYjhGRldDbGpFTlRDUDJCNmV3RGJadllIcnJOaURQYnhz?=
 =?utf-8?B?YTFGSW56MlNSN25xTjhHdUh2K0RmY2YrRy82T2pGelhHY1ZCZTZOb25tS3B3?=
 =?utf-8?B?YkR6L1IySUZSaHZjazM1VVVvY01udVN1VmRsRFJWVVhzVHkrT1AyTVR5THN2?=
 =?utf-8?B?cDh1WFNJTnBqSUtMa3c3NTd3OEFRVTVzcWZLbHVMRG93QTZPT2xWOVFNNzBq?=
 =?utf-8?B?Qm0yQ3VyaDhuR3ZNODFpSkk3aEpuZ0NodnpTUC9KdzR6WnF5TUoyM01LbENn?=
 =?utf-8?B?b3lSOW85UU81QWlaL1FHVW90L2NzNHYzdUdwRFg2OGZsNzg2OUZOUU1nTFBU?=
 =?utf-8?B?TGRlcmlqaDJuMEdWNXJnWHg1MThzU0Nzc0JVb1haa2pVVERiVWZKUzVYQkVj?=
 =?utf-8?B?eFRWNVFPay9ZeHdOZStJUHRRYzlyc0JLQWRiRXhWMUdBWldZdjEyS2hpaE5z?=
 =?utf-8?B?T2piLzk0cXpNSG0zMGJ0OTh1aFp5bHY3KzJWUmhiL3NXTlFSQlJwL3JmcjQ2?=
 =?utf-8?B?VXY2NU00anNFR1FEYnhwVDBiK212eUlUOTdYZ2RIRmZ5NkNYdUh4VE5Jb01G?=
 =?utf-8?B?MU9IRVh3THhVaHEraWt4dG9ZcFZsMXNDYjRNQ3B2MUJ6dTlqVUw0clFHendr?=
 =?utf-8?B?RUFLWXIyRnJYeFJhZVVJc0I2RzNyNTBGZXhCbGlpaHZFWWlVNlJHM0I3bXJU?=
 =?utf-8?B?UktpWnZqcVp1OU1HVFdNd3RHTUFkdG1SaFRoRklxMnRaK2d5TURqVDBDTXBH?=
 =?utf-8?B?T0ZUdmNRZUtFU0diMzl3TFBvZzN5aThtckZ1Ri9xSFMzNFFUNCs3S3dVcW1w?=
 =?utf-8?B?ekhzR3BnRTdVbmxVTVllV0phZW51T3FXbXhOR3Njc1ZoTm9sZENhOVBCY085?=
 =?utf-8?B?ZGlEMENPSHdlcXFHNFYzV2hNZ2NBdGpJdzh2UjN1WlRSMDdkUzBlT213bmhO?=
 =?utf-8?B?WjR4TGdzWld1cjdVQkNjSVdwYkZBbldraTRiN25YSjNFUDh4eGNBNmcxZUQ1?=
 =?utf-8?B?ckExQk1RQkJPRkd5cG5DbmhGR3poZ29NM2JNbzN2QW40KzV1SFlCOTgzNDNo?=
 =?utf-8?B?Z0ZUL2ZsQk8xdk1VODZtbVAyRDU5NnVUbzdxMGdIam90Z3h3aGtKRGl2SEJI?=
 =?utf-8?B?YndDcVQ2OVdRemZ3OVdybUEzeThlN0RGdkdFeWZOQ2hvNGpGQ3YvbkFCbHR6?=
 =?utf-8?B?S242VTlnN2lHWmlXVzZyVksyZGF2WmlNUWZObENMdGQxOGRubHc4K015VnZE?=
 =?utf-8?B?VEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53694706-f135-4fbe-b422-08dc7a9d2c15
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 20:24:24.8991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lMXI9Ql0yG0VPdb9p62IKdzS1G4GVKHOcup62ze//HcSoB7dfEXwUM+PHPU86qe5UWcY4yRoEkrLoU8QFbOgDKPZfhK6KXIughwySxZIfAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6407
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716409469; x=1747945469;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i5cy4BFezntumdFcyVLQ3souKsGT+dY7rYRbxX5xmqU=;
 b=nxh9aL5OH3P1eyZBT56WhBcQD4KuAqEjaPnJz7EFlKaUXZNgeVnP0Rw6
 TPOQ1MROZlGAGBAeZtkTZInyMlJqWr41eJ+1zhhli30uZDDzgn/PZcjdP
 7WsYzXkyZGDVGkyOKw6tqsgL35xe0zsABxlCFg4EooI9wRvNCshRP3+3r
 cniY6ZM7pJTtfnZZxDRw4EXja4D4Rjw72V1SecE1E5u9xqdllXBE2GKdr
 FqYc7HX4aPuL8yRbjd2qRVuYdQsf0TuqsmCxv1HRn9JH/UsQ9GAb6v5cY
 Ks4dM/454yBh0IQ5Navb9PidlFPkd+G/8JMr4cDleMrJQM3bQG++A47o6
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nxh9aL5O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: check for unregistering
 correct number of devlink params
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
Cc: Dave Ertman <david.m.ertman@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/22/2024 3:38 AM, Przemek Kitszel wrote:
> On 5/21/24 23:26, Jacob Keller wrote:
>>
>>
>> On 5/20/2024 3:20 PM, Dave Ertman wrote:
>>> On module load, the ice driver checks for the lack of a specific PF
>>> capabilty to determine if it should reduce the number of devlink params
>>> to register.  One situation when this test returns true is when the
>>> driver loads in safe mode.  The same check is not present on the unload
>>> path when devlink params are unregistered.  This results in the driver
>>> triggering a WARN_ON in the kernel devlink code.
>>>
>>> Add a symmetrical check in the unload path so that the correct value is
>>> sent to the devlink unregister params call.
>>>
>>> Fixes: 109eb2917284 ("ice: Add tx_scheduling_layers devlink param")
>>> CC: Lukasz Czapnik <lukasz.czapnik@intel.com>
>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
>>> ---
>>>   drivers/net/ethernet/intel/ice/devlink/devlink.c | 8 +++++++-
>>>   1 file changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> index c4b69655cdf5..94ad78d2d11e 100644
>>> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
>>> @@ -1477,8 +1477,14 @@ int ice_devlink_register_params(struct ice_pf *pf)
>>>   
>>>   void ice_devlink_unregister_params(struct ice_pf *pf)
>>>   {
>>> +	size_t params_size = ARRAY_SIZE(ice_devlink_params);
>>> +	struct ice_hw *hw = &pf->hw;
>>> +
>>> +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en)
>>> +		params_size--;
>>> +
>>>   	devl_params_unregister(priv_to_devlink(pf), ice_devlink_params,
>>> -			       ARRAY_SIZE(ice_devlink_params));
>>> +			       params_size);
>>>   }
>>>   
>>>   #define ICE_DEVLINK_READ_BLK_SIZE (1024 * 1024)
>>
>> What? This makes no sense. Just separate the Tx sched parameter from the
>> list and register it separately based on whether the flag is set. Then
>> only unregister it when the flag is set.
>>
>> Messing with the parameter size list is brittle and requires us to be
>> extra careful that the Tx sched parameter is last.
>>
> 
> for current situation your proposed solution would be indeed more
> elegant
> 
>> NACK. Please fix both the registration and unregistration to avoid this.
>>
>> Thanks,
>> Jake
> 
> please note that for general case (multiple conditional params), with
> possibility of the need of a rollback (when we fail in the middle of
> params register) current API is not optimal
> 
> I have already suggested @Mateusz to extend struct devlink_param by an
> additional field, so the skipping will be performed by devlink code,
> with drivers only setting the field. It's still not that convenient as
> we have typically a global array of params without easy index<->feature
> mapping. But other drivers will benefit too

This would be more useful. Alternatively, we could just ignore or warn
about errors on adding parameters and continue loading rather than
trying to unroll.
