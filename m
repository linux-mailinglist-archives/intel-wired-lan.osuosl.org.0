Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AD3AC6CDA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 May 2025 17:34:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09E6B40B2D;
	Wed, 28 May 2025 15:34:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60ojMvJ88W6s; Wed, 28 May 2025 15:34:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01F7D40ABF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748446459;
	bh=LWDLcJkpsmn6Ai17siGGMVuZcoE4DI9Mqo1+Ij3HSWs=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=muuy08dqeeD2U3X8CkH2CK5SAYoOEaHHcOO3F5VFIPIgU/f/MybsG5e1l9HQgxoHr
	 60bPQveSX8Ffj7AXJpoy7yzoYtrTJNU3dVoDUm3x3Ti5clSZQKkmfn6PGIsRPIhSDI
	 1EDkkcaeI4kiq3A8UPUCPMZFP+tM2DmJzhMMg3JJmkpJehJaJN/JZ19ygwM3d5FTXZ
	 /6QynFoJSB6Frvx5A6RRlpXl8au5Mn1/z0L6EgyAUArS8o2KHsLdc4GWwFscxSL564
	 predtOJxK//ExZwc9EavHhE4Pdg51KAK6B295292l9+1r4NmGgNzLTcMts/510U7cr
	 JWlV0HMfuTrNw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01F7D40ABF;
	Wed, 28 May 2025 15:34:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A5A96B66
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 15:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 96DBB407D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 15:34:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JQenNQWJKndL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 May 2025 15:34:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 5F6BC4052C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5F6BC4052C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5F6BC4052C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 May 2025 15:34:15 +0000 (UTC)
X-CSE-ConnectionGUID: MN0Bk3xsReKc45IXopxJLw==
X-CSE-MsgGUID: sMT5uIZuTZ+sq8j5DMl//A==
X-IronPort-AV: E=McAfee;i="6700,10204,11447"; a="54285193"
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="54285193"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 08:34:12 -0700
X-CSE-ConnectionGUID: 8HpoZSjmR9CBKRK1HMMNXQ==
X-CSE-MsgGUID: YR3O5u4+QAqvq8lr8KXeVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,321,1739865600"; d="scan'208";a="143719628"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2025 08:33:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 28 May 2025 08:33:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 28 May 2025 08:33:42 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.84) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 28 May 2025 08:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R8/hCVXrcsS6dRQjW+TdGYqL5VEY7XM2ofoOFVtxK3jOeuEmSuD2jqTlR81/uu9beSiKydJ4wFx8NPAnSPmA7lh0ochG6mVS6CG9tnmLz2V+51lILgJSMPvf5bOugJLocoJempy/1nZBdAeBilx+6ImNygzgjGRFcXDhBmRohwO/gPLAaFEMt7JX45S0jq30EWgKihWiDnG8/LvmdJ1ff6qS/waE72yTkgqDk+QO5Csx2fapd2zA2lpvzZpEaNnSv/aCHlOXiLorrz5MOjWaiR1r9CR9tZNEBrcw2QdGqO92melcpyFOmAvWdwBrtzv42I8uNFKUWJ/NsjDh8gtX4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LWDLcJkpsmn6Ai17siGGMVuZcoE4DI9Mqo1+Ij3HSWs=;
 b=ygiLYLH4HJ7Oipnyo52mFaw5r+Ha+VpwDR3r/Y3hPqrtFYNc1B/Rpiuwz3PgHMIIp42uX8fHk5/RU0zS0s5wvxyYnxFX111FHsTXc9T0Z5IWP2oJlvIiLeHyOctlu0dCV1m+g3o3Bt+0YBAz+rDnC1askIDO+5Ypkc/OFoNUgWaymcKxlM30lgZOK2zBVPhK2s/8MuejYWlvsQdfimW54/yZb/tWT54OrEdAWFplqoFiZZfY7yNJTj1IFMhykxwkpiJl/IrIPPzOWtZ3Skxbsh95D5LjZoHtyXwLYPL2fL1aupJ9GZnnwIEfRcYFAlFQ5ck9iF3YOkIV3L/9iQDyZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH7PR11MB5941.namprd11.prod.outlook.com (2603:10b6:510:13d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 28 May
 2025 15:33:39 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%3]) with mapi id 15.20.8769.025; Wed, 28 May 2025
 15:33:39 +0000
Message-ID: <cc70d2d6-df72-4032-8d9b-fb96f4ef3ed0@intel.com>
Date: Wed, 28 May 2025 08:33:36 -0700
User-Agent: Mozilla Thunderbird
To: Mikael Wessel <post@mikaelkw.online>, <netdev@vger.kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <torvalds@linuxfoundation.org>,
 <przemyslaw.kitszel@intel.com>, <andrew@lunn.ch>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <security@kernel.org>, <stable@vger.kernel.org>,
 <davem@davemloft.net>, <edumazet@google.com>, <linux-kernel@vger.kernel.org>
References: <20250527211332.50455-1-post@mikaelkw.online>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20250527211332.50455-1-post@mikaelkw.online>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH7PR11MB5941:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b0cc765-06d5-41f8-0d32-08dd9dfd051e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bng4bWh2R2tOcmxpSTdMcnhjcndOa0QvTXpERnRYOWVDelA5UmxYakYxSGpI?=
 =?utf-8?B?Z21tU3ZtOXQrYU1McFN2bGtjNVJxcWtUREZrOXAyL1RmcnJ3RUd3NCtKMThN?=
 =?utf-8?B?Mmx4TTExaHhFemptUDYvRnpVRUlaKzR5ZzcvdjZzMW93U1crbkIwdXdGUjRi?=
 =?utf-8?B?bW5DdTQrUi9EZUN3NjlaVVp0cWNsaWN5UThJUjFzZU9qdWYrUld3cG02RStH?=
 =?utf-8?B?amFFNWVpdkRheWZPazVUSlBHSWpDbFdTVm53TlhvdDRGYm96YktjOXErQlIz?=
 =?utf-8?B?eXNHR2M2d3VpS2ViSVZqWVd6eFZ5RnZqT3RoWlJGK0JkZUlYWlpNemdaQ2JH?=
 =?utf-8?B?eCtlYnk3b1I3eXNmY2xUdzEvZ0lXSm5WSjI5cVFDUk5ReFNEQVp6RXdtS1By?=
 =?utf-8?B?MjJuVXVlR3F4dktsWGZUWDl0dkxDQU8zc0o3NVpkVmFmeEg3R2U4NmZZMWdY?=
 =?utf-8?B?RENMak41WFEvRXlxNS9yS2lDQnlTM0JCc2NscTcvbHB6S3E1d25MNER0bkpY?=
 =?utf-8?B?UFhDbDZVMzhYcVVaOHNDUHYrcVNKbGVLMzJGODc3TmdaVThUdzV1TnpaTHg2?=
 =?utf-8?B?NFUzaHdydzRNVThucXl0ckx1MUlrQVVYbTdIZnZZNzh3MWNuS2JzZ3NMNE5w?=
 =?utf-8?B?cWlIemJLc0ljVnZHcWdmbHQ4MHZFOHZScHlEcllMendvYlFGai9nYnhmM2Jh?=
 =?utf-8?B?ZE1PYzZjczM3Y1pCaFVmZ1FDamhxZnJSRTBSc255dGo2TVNzMHJSSm5kaHJz?=
 =?utf-8?B?eGprdGovRHcyQzZ6N0hkMG90R2RkbVVyeXZ2eDdTTFlQSHdLVHYzNEQySnp3?=
 =?utf-8?B?ZzBpMzROcHN6d2djSWR3YThhQVFLZlpEMll5dUhFdXZidmZVVndwWndKZWdI?=
 =?utf-8?B?Z1BjNUtqSW0zZ1VLMVI0WFpQRUtic1dsQXVGQzJFV05UVUQrTGEyUEJWV1Vw?=
 =?utf-8?B?SmhXbUFQTjRaVDU2bFY5ODJLMGpJZjQzTU9zWmVKRDQ1T2ltZ096M2dBN3c5?=
 =?utf-8?B?UGw5QlJPYnR1eFJTM01NUThRQ090ODUrc25KYXdqWUxwS01FY1lzSDM4dEJj?=
 =?utf-8?B?dXRvamxYZUM4Z0RoeXJ4OXU4Z0V0VXgrQjlsK0JzbVYvQm5BR1dOd0JQWUpK?=
 =?utf-8?B?bFZRMVJRNWx0VHExOFJpeGpNelluaXdHa01lVEF2bVZzYkIzOFVVYjFNVEtx?=
 =?utf-8?B?VUp5SXJRQ2orMlhoRDNyNW45SDdYWldDNDI1MGg5WFBCbU1LdExzU2lGaTRR?=
 =?utf-8?B?SWlKQlo1b2hrcFFDcFpFZXZ5TjNlak5jQXVOVGxRZFlMc1BaczdlV2pXQkNa?=
 =?utf-8?B?Y3J3dDA0SXdaalhMcFFGblVtMFE4L1VVYjZUTDc5NkVvb0RPd0FHNmJqUXJt?=
 =?utf-8?B?Z3p1N1NMQzhGdkplNXI2Zk0rZTVsVlhHUEtRb3kvRDE1YlJMVk1LbHZWRlYx?=
 =?utf-8?B?VDhhTE42UHFLbU1HNlNLR2hMK3dxZk1NNVZaaEwvZHptbVA0MW45Myt5N1Rp?=
 =?utf-8?B?c0J3b3F6MGhqRUMvcHFHUlFRTk5DLzFYOHlmV25XWVBwUG00NWVvRDhkUmZr?=
 =?utf-8?B?ZzNCemFMYzVuUUdHdlVPMmRXckpCaUVhelVENDNiK3pIWHhoMFVIQitLa1Fo?=
 =?utf-8?B?cldaV2Qyb2lKZWw3ckx5ajBZMzFBQW93UDFuV2dxMzFERnIwZ2EzTmFoT3pl?=
 =?utf-8?B?bDlFOE84cFpDZ2locXJHbjB0ektHYnlFM2dpQzd5UUtqcWY0UTJnUzYvUjBy?=
 =?utf-8?B?Y3VzS3hTVUN0cE1TcU14OUZyenpvaTYwWTllRFNtSjdHMlFlc0VKSEpMWklL?=
 =?utf-8?B?Q0I1RURjWGVQalRpWHQyUi96T0FPbFVaL2k1ZHZ0M0dCWTlWK3Y0ZEVPSnJw?=
 =?utf-8?B?Wk9BQUw3ZWpjV0JxVHVzLzZBMklZNkd4QUVpcWlOOCs5aUxIUVNublZsb3Ey?=
 =?utf-8?Q?yaLd/fX/5cs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RUZ2T2tSUUNrdFlnT1I2aE8rMHdid3AwZWdZNkpZQnRsczQwYmRqWFNPK1FR?=
 =?utf-8?B?V25pSnlCcnFSQ1ZYNmJmalFpQTdsVjdUMmsxYWJiR0RGb2lHcFhDdGtBbFpo?=
 =?utf-8?B?azEzZ1hRdU5uTG5EUVBzc2xEQ1VuUlU5R1ZhcDQrUTJlaGtIcHI0d3M5UGpJ?=
 =?utf-8?B?ajlsd3dYam5abGd0WXVqTSs2QjJDWlNXb1BwSlRPK0pkWFZ6RXVwNXVOTUJI?=
 =?utf-8?B?a1RjaFQ0NVlWVmptT2N0QnN2UUJhRFB2eHNSTzRpNDVtTGwzTUFVV0NaUEo2?=
 =?utf-8?B?czAvYmN0eDJpR2ZPWTh5azBJdkx6OVZWV0NxZ1lmeDRyRCt4VU9ydUtJNjQ1?=
 =?utf-8?B?SStiWnpxRHdIalQvWGkwVmV6Tk5ESGdpVFdqamwxYXNnQmJ3RWpuTm9TcTJM?=
 =?utf-8?B?T2VNV2k3WTBUUVIrQUxlRGd2SUtvbGluVFhJZnVjUGVZZjdPeEloSjN4VDM5?=
 =?utf-8?B?QTA2Unk3U1djNWUydE5YZ0pNSnNLRzNURjJtbDFld25ocnF6dGg4RTZuV2tv?=
 =?utf-8?B?ZlVNQTJiamt6WjFGQkUvQmFnYTlBaTlkZDFnMFVZVzloaGYyTG5vZmRjNi9H?=
 =?utf-8?B?dVB6bnBIQzdReUhMMEpEWXc0dGV4TDFFQUxkbVE4cUYzRXl6cWN3Q2NpcExz?=
 =?utf-8?B?R1prdXhYVzBYZVVKaWZteEpnMTlQdkxJVzF1RW9DYndLWDdNenQ4Z2wvdFpx?=
 =?utf-8?B?NFQ4RmxBTytFb0FqbTh4MGpUeFNmYmxRRS8wZ2pxTEIxaWNpUmxHQkwrRmRv?=
 =?utf-8?B?ZmQwVDROa2pnOG51d0h2T1NobkUvaGdlZTROcXFCRWt2Q09vcXhkUHYrNGor?=
 =?utf-8?B?OVVLV3MyMmllQmI1L2NVdzFVMk56bUlhTGNMeEdramlCQmg0NzJUalQ3MnA0?=
 =?utf-8?B?Wk5jWHZ3KzBlYXNMZ1huMHRIaCs2YnpGMVEwMHdwbmhrMk9MWHpUc21lWm1J?=
 =?utf-8?B?dVFTOXRlVTFMVGNjY0J4VU1aemZoWkppQ015V2t5VnZaakFvSjRoYTVncTZU?=
 =?utf-8?B?UzQzeWdkcjNkcVVBejR2MUdPU20xSlpFbkxBUHpXcUZ4K1JHQlBsc3BaWXZ6?=
 =?utf-8?B?M3dUbzFZRy9HZTY4OUxhRXg2Sk5OSFVQcFJZcHdrVzg1bzFXcjRQL1piUXgy?=
 =?utf-8?B?UFdCU1RMYlRxSzRnRkhDSStKMWJqMWVFanVKOTFqdFV0SnlsMVVpWnBkM2VX?=
 =?utf-8?B?T0FnZkoyNWZTZzhoRXBpWlduRC90bUwwU2pRb0NSLzExcW1DTEJxWTQyR0dk?=
 =?utf-8?B?YThJa05QaVF1RmtYdW1mS21OZlVLck0vdGRjQ0xmYmlKV3hjK2VXb0g2RkVi?=
 =?utf-8?B?SnVXbElOcFc2b00zYVJEengyeUh6QWlLTEhZK3RSbWU5OHNmVGlCWEpzVFdU?=
 =?utf-8?B?c2x1NXA3cVdrMjEwT0dvcDlDU2RuU0dxazlPL2Q2RElTQVgybmNlbjNmYmZq?=
 =?utf-8?B?NzRBaCtCK01DVTBrYUt5ZGxlTjNmSTN5bXhEZFJLVmpQSXExVElZby9ncDZn?=
 =?utf-8?B?bGY2NllWbzlTZDAydkx2TkdQYjdpbGVqRk9FQjV5SXFDR0p5d0lhNVlPTnZM?=
 =?utf-8?B?c0ZwR21kVmJhNElYVTBiMHdlN042TGN0dzMzWmZjV1NvdXRBYjhUdE5vaEJE?=
 =?utf-8?B?clNOTjcwWFd4UkxjM3ZFbXpQQ2JOT3M3dWQzNm5KUG8yNDVaWjRmTjdpNURI?=
 =?utf-8?B?RmN4TmI3WkRMSlhFeU5NZEl0ZGQya09JdlNUZDIrSGhqVTBkSFpqVkQ0aUNn?=
 =?utf-8?B?LzM4OXZhVDNvY3VPcGJrWUdNK25LbFVNaTEyRG9vamg2ck9jb0l1azhtYVpt?=
 =?utf-8?B?SHVOMU9ZMVpUMnhpa0w1cTBwVGpjUXhhNWtNMyttOXhJdDhBa2g3TlA0WEt6?=
 =?utf-8?B?LytCSGl0eEJRSGhlUU9id3ZRYzNzUGdreng1RXg1WWlqTkVVeVBGZXc5YW1G?=
 =?utf-8?B?UktueWhUWE1FMktvMTJ3dzdFZHhlRVdFaVJqQ2pUelE1c25DWUZPOC9BQzE1?=
 =?utf-8?B?UHI4c0NZSlNxKzNpeWYxQVk4MVY4NGJZMFR2WTIzZHJHNEpEakUrVEVJWHFz?=
 =?utf-8?B?MGZtOWF0ZUJRV25OTWk0aEhocXJsMjlLVk1zSkFjWm51bkRvamZSR3JycElh?=
 =?utf-8?B?a1BlRnZ2QWZiVGhFZkdabHNRVndVdTM2RVlRdGlNS1ZFS1BoeFlTWUNYcWlV?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b0cc765-06d5-41f8-0d32-08dd9dfd051e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2025 15:33:39.7474 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JKln6LPcyRfRiOF19hVHROyoL/xVOOou1fa/WCl8a2E8bmUOqA5fJpY8lQ48uGW45QI4D1oTHnFooldvfO2psMc5haJ1/S+o26FFft+Aw9M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5941
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748446456; x=1779982456;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1hPqwcU9eRqR43f/3ZUS+hkPY9GwdehhsVqFVma0gvk=;
 b=HBfZsntBf84W+N9TW060SskALzQIHsQ+C51KD0kJ54bdIzG5Ixu3sfjQ
 PvlKSwpaA4RUuafLShgHRh0D7dZVoCiVbJk3ESOG6iiREQTA7boR3Ekb3
 +irW86K0yGzk54ktlS1RZ2Yh2tzvQ90mxle/teoGU5wDXZftDbEiFU9fq
 yXoC8+eMTABwQyFC8L+0vdqWXPMRs/y6+maHRAYweLJYMPAQDwXZSvnKq
 Nb3RGrZUthxXjtt/BTFJdKYmRBSR2UsoC6iEFR1iMwt0TQ48PmION9Vyw
 ZThqXHN1GX3oK4iBgSxbvUpJB5ijk8zv+bVlsYOt+sG6lOeh4sv3CCxMF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=HBfZsntB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: fix heap overflow in
 e1000_set_eeprom()
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



On 5/27/2025 2:13 PM, Mikael Wessel wrote:
> The ETHTOOL_SETEEPROM ioctl copies user data into a kmalloc'ed buffer
> without validating eeprom->len and eeprom->offset. A CAP_NET_ADMIN
> user can overflow the heap and crash the kernel or gain code execution.
> 
> Validate length and offset before kmalloc() to avoid leaking eeprom_buff.
> 
> Fixes: bc7f75fa9788 ("[E1000E]: New pci-express e1000 driver (currently for ICH9 devices only)")
> Reported-by: Mikael Wessel <post@mikaelkw.online>
> Signed-off-by: Mikael Wessel <post@mikaelkw.online>
> Cc: stable@vger.kernel.org
> ---
>   drivers/net/ethernet/intel/e1000e/ethtool.c | 9 +++++----
>   1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ethtool.c b/drivers/net/ethernet/intel/e1000e/ethtool.c
> index 98e541e39730..d04e59528619 100644
> --- a/drivers/net/ethernet/intel/e1000e/ethtool.c
> +++ b/drivers/net/ethernet/intel/e1000e/ethtool.c
> @@ -561,7 +561,7 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   		return -EOPNOTSUPP;
>   
>   	if (eeprom->magic !=
> -	    (adapter->pdev->vendor | (adapter->pdev->device << 16)))
> +		(adapter->pdev->vendor | (adapter->pdev->device << 16)))

As Andrew already pointed out, please omit.

>   		return -EFAULT;
>   
>   	if (adapter->flags & FLAG_READ_ONLY_NVM)
> @@ -569,6 +569,10 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   
>   	max_len = hw->nvm.word_size * 2;
>   
> +	/* bounds check: offset + len must not exceed EEPROM size */
> +	if (eeprom->offset + eeprom->len > max_len)
> +		return -EINVAL;
> +
>   	first_word = eeprom->offset >> 1;
>   	last_word = (eeprom->offset + eeprom->len - 1) >> 1;
>   	eeprom_buff = kmalloc(max_len, GFP_KERNEL);
> @@ -596,9 +600,6 @@ static int e1000_set_eeprom(struct net_device *netdev,
>   	for (i = 0; i < last_word - first_word + 1; i++)
>   		le16_to_cpus(&eeprom_buff[i]);
>   
> -        if (eeprom->len > max_len ||
> -            eeprom->offset > max_len - eeprom->len)
> -                return -EINVAL;

Seems like this patch is based on top of your previous version?
https://lore.kernel.org/all/20250527085612.11354-2-post@mikaelkw.online/

Please a provide a patch that can apply without need for previous versions.

Thanks,
Tony

