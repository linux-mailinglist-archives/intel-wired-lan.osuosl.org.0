Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E49A3CC2D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 23:19:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7252611AA;
	Wed, 19 Feb 2025 22:19:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EBiwgH52WeTd; Wed, 19 Feb 2025 22:19:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4313611AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740003564;
	bh=HiZhV5vdqCU6KI/1MzvU3pMnToidfqtbww02nPHuG0c=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7xSHESIHjiseCa1avQ47YZwWOCYJ7mKzp7FG8k2ZaGe56WFu+qRy6KchCzDO4ZfHJ
	 7eH+zx7lyg9GBd9rdoRe2kZMzlKCsw67g8+EPmPs4iyIuQKdSyrUhIHubrN9Kb7ynN
	 PHsRf9cd3wSXTyGl3V7gIJkIIQQ1tM0PTg9TzLCW6QcgyI8UvPcjequTB77wh4suE7
	 OX6IRTBXu3HcfKRiBq/YDKKxkuI5xzV1mL8CCFDXKj+zrFCYhLUS21idcLQVOzULqz
	 x9TI/LDQ9h7O0Zh+hn7K89YftzumVjpvspB0G2uQ2D2gIoi52VqAe2cSDpjAM9MhYs
	 di36V2cWR+BaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D4313611AD;
	Wed, 19 Feb 2025 22:19:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 830BAE0C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:19:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6545140E05
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:19:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KDyXKaDsddCq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 22:19:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4857B40E12
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4857B40E12
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4857B40E12
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 22:19:20 +0000 (UTC)
X-CSE-ConnectionGUID: QTFFos/lTJC+GKYXn81dMg==
X-CSE-MsgGUID: IYUuaCPASJaFUK5k4OnUXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44409485"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44409485"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 14:19:17 -0800
X-CSE-ConnectionGUID: nd9yJcSFQtma/TQV16Ovog==
X-CSE-MsgGUID: P8hI1mi/SaeuwHS58DfXlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="115386603"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 14:11:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 14:11:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 14:11:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 14:11:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JTXQ2Z2hP2rKhYbMIM0Msfdby4My/6GtOWftFkNm6ZdSU00nUuQ6H9P0xJAl5yWGUTJlfWWfKF1KdS1Uo/4n2CSYSi6IQc4yVfPWPW3hLyXQOw027dtRGfkiDBXXYxSYL1ejlNr7tVBFu40cOJq26Y4y8JotqTz5wMJ+O1f2WU5dP/hfJ46IA7GXJEwpP+pSI1IpvyA/hfxmQR4AQuirteEpr1M6FP3lUiNVQkOHHByq+3xGYcUsxt+9W4auYtMRiqD+TagJkEX9G62+hMhefj2U0xKpUTXe96oXl6CI9D6gBOxp10NdNUSRm5iHUK55QNIPqjfQ6VYqAFGtkdtf9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HiZhV5vdqCU6KI/1MzvU3pMnToidfqtbww02nPHuG0c=;
 b=pO7Z5U4uFfdTpK8nFB/nItYM3urbhi3512ihuDq5D15L3PtDK2pFcdHX9Kyfg5OCAmsNPNJ3sUtM1DeYQrzP/wE4t1E1mWUKSZcroiTqNSPT6K7hZYBPibHUDzWHVi4pYZ/dTMR3aJ+iFTRiGmQqJTXUo5Sj0e8QYiejqTbPZ1aBY3omm7AZA78hzjvc7fjvlLu5WzLLLw0EfbIucvskIxZaoGKq56mIQS5CmIlzKNkcgFmCz710pD8wE4IpYsWSPDXDAIfPyE4RaJgQVLY6j4GG2E8Ce5sKE42aDWzaFJDAg+/ARdx9MiSVF5aWO2iDGELlxITKREQYzU60BojLnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by MN2PR11MB4757.namprd11.prod.outlook.com (2603:10b6:208:26b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Wed, 19 Feb
 2025 22:11:07 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%3]) with mapi id 15.20.8445.017; Wed, 19 Feb 2025
 22:11:07 +0000
Message-ID: <057b2809-0185-45db-a533-48a4dc4d06ce@intel.com>
Date: Wed, 19 Feb 2025 14:11:05 -0800
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>, Cosmin Ratiu
 <cratiu@nvidia.com>, Tariq Toukan <tariqt@nvidia.com>
CC: <netdev@vger.kernel.org>, Konrad Knitter <konrad.knitter@intel.com>,
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 <linux-kernel@vger.kernel.org>, ITP Upstream
 <nxne.cnse.osdt.itp.upstreaming@intel.com>, Carolina Jubran
 <cjubran@nvidia.com>
References: <20250219164410.35665-1-przemyslaw.kitszel@intel.com>
 <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250219164410.35665-2-przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0323.namprd03.prod.outlook.com
 (2603:10b6:303:dd::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|MN2PR11MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: 757ebf8c-adec-43e4-7085-08dd51324ef5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c3hZdWtMbzk2T0pUTXlVM2k1eVB6Q0Z5T1FWcnpVUktQaGpTa1VTT3pkbmdp?=
 =?utf-8?B?TVQ4aG1veUJhU3dkanJwMUlpa09vYXVpOHMrQ0NDSGhHT2UxYmRCWkNZSVk2?=
 =?utf-8?B?OGllR28wZUl4eFI5enJXcEhIcTh6MERob0hVeUlkVVdZbXJxVmw4Qit1MEhm?=
 =?utf-8?B?REtLRXZpSnpOVG9XRGx6VEd4SUpqa014UEpwMmt6dW9PbFljcFIwMFBaZzNn?=
 =?utf-8?B?UnNzcDhiR095T1M2UWpVenVQK2p5NjFJb3d4Y2ZacGY5ZTd0eW9IL1lpdCtl?=
 =?utf-8?B?d3JkRlFhaXJXeFpRTXpYVzBscXJYbksrYlMvUFNPUmpVeWNMUjZVY3l0bU9h?=
 =?utf-8?B?TVJNQkFHNUhVY3ZGSkZLMUxzc0wwdGhDR1hldy82enBvU1VlSk9DYlZKYkdw?=
 =?utf-8?B?OFBNWEpjMzM4cjB2UGtMdVBPem03RENvKzdyZ0hFZzhhSGdyczFLaklmSWJh?=
 =?utf-8?B?SGM1WWVkcFFtTFUyeXpDbkRHbGZzclVhZXV3WnJieXV2WFRZLzMwZk5pVnVj?=
 =?utf-8?B?WTJKRjVZakFiWkFBYjNsK1BTcFdXN3Njdy9vRVZ4UkdIY0h0RStLUkN6ZGsr?=
 =?utf-8?B?VjdZZUNuOSt6ME40SGZxbjdZb2NaVnpOYUhvYlkzNlE1c1Z5NFVPS1UvTHhs?=
 =?utf-8?B?Q29WaXdZYmZrcHV0bis3UzhQQTlrNXlNUlNOaEN4VHV3c3dtalpBaWF5MkNC?=
 =?utf-8?B?Mnp0OUN4UUxKU2QwaDJTWHhPeHRZblduS0ZHUXBiOXBPbC9WUmZtMWQwbWsy?=
 =?utf-8?B?VjJBUElDckNwY2xZOG5XWk5aaG9tOUczeXorRjlhVitCa3JkWVhURVo4NUJh?=
 =?utf-8?B?enVHYlU3ZldKbmt3ZFlQN096ekVUcFRLdjJkQU8zZ2s3bUxERVNDb1NZWE04?=
 =?utf-8?B?RUNFejQ5YVhNTUpwTTdUQk9vS3JCOUFzcWE0UHNYQUxQL3Q2VTRseGJadG1Z?=
 =?utf-8?B?cW0rN1dqSUM5cmNVMWUwc0RsU3dsb2tPU09DczNOYkhMUEcybnNKRDhlYWZ3?=
 =?utf-8?B?eWl1Wnh4bWI5dWxLYUNCRTBWOW1EaDVFNlY2ZnJTNVd2SWMrUUx4Uml2cDU3?=
 =?utf-8?B?a2ppb09mTkpFWUZuVklCU1p4d2RySjRYcitYYjFRKzFXeS9pV0lWbWlwdlBv?=
 =?utf-8?B?VEtnYkZlNHBzcFFZUWtPeWlmWGpHSWpnZllJNlV0bER4Rlo4Tzd0SFJTM0ZG?=
 =?utf-8?B?OTl3WVNOT3NSWkJ2VEg5Ky9Pa2JoYVJKWGhqODlxaXdQR2RKSjc1c2RzTWhs?=
 =?utf-8?B?SlhEeUZZU2d3WFMwVDV3cVd3U2UyYm13V1ZOTDBSNmdUWWdWVjAvQXZnN0lU?=
 =?utf-8?B?R0p1dExFa05FQTRQdlFFeWlhTmFaUWtRcnppYVBJTzRpaWxyb2ErNHBtd01E?=
 =?utf-8?B?c1BRYVBNY3BIdjByV2o1RGVDdTdMekhNWjB6ei9JNzdFT05YdDEzOERnVU9m?=
 =?utf-8?B?VktPemNYYXlYVXM0SnhuQjBQbkpmWXBZQ2Z3WFlLY1hGemxGbHZiMGVMM1hs?=
 =?utf-8?B?bGgyRmtHZjdGYmdNNnlvdDJpczlraTBjeTBaMHEyMXJ0bWNFN1VLMUxvVnFF?=
 =?utf-8?B?S1RpVzBVK1VtNzVWV1JXR3lPZ1FvM2tncTBnYzFpS01uRDFsSXZOa1RQY01o?=
 =?utf-8?B?cThIRTA5Wm91b0F2SkM5VjVxZVB1TDNrZkRWaVRuR3M0VXdqYTBIbG56dTZU?=
 =?utf-8?B?MTByVERVVmJEWEIrT25CRWpEUzI3eXVYZUdwY0tPUjVUbkYzcXRIaDB3ZHBr?=
 =?utf-8?B?YjF3SUZvT2ZwRFI5VFc2eWtUM3JsSUlFNjg1UG1vKzU5Y0trWEJJQ29QOG9N?=
 =?utf-8?B?WnVtL0g0ZTgzRGRpUVJRbFNVUlptbTZuSm5WdmNNV0xFUXVzcnBNQ2ppcTE2?=
 =?utf-8?Q?FK68c8L9so5Co?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SU1ENFc3aXdDVjBsTkNvYVRwSURDU3lLZXNJam5lWWRmRWNDUTlyUHVuWUgz?=
 =?utf-8?B?eUZRcEFUNm9vZDhudTd5ZDhlc2JsZWIxaEFjL3U1MllHYzRXNjY4YnowZHBF?=
 =?utf-8?B?UjN2UnMwcHlsanpqMVpRZjB4NVV1LzlieFl5QWxmMmJ1bi91TlIzeVRkSE15?=
 =?utf-8?B?K3V4U0oxRzRoU00wOTc4akVMa3VwQ1lMVUk2Q2tiZk1aS0R1ZlJQcVpMNUZZ?=
 =?utf-8?B?QlFaNDltaG5lcXFjdW52L1kxcU4vTHlzL054Ym5IL0NReHpzaHRQcWpDeG5G?=
 =?utf-8?B?aUlUVGE2TWtIVWtObzNZUVBLUDVWRXJDQ1VTdXpXeWZjTkFDWjl0VlZtNVVr?=
 =?utf-8?B?eVNoSmFPV2s4OGo2R2JoT3c1Y0VMNjFvdmR2ZnV4dTE1L0RCT0ZSU1FHSmtm?=
 =?utf-8?B?UnNxK25BTzU4dW5wS0phRVJTVXk3L3FpMmdzMEdVYXdPSFlhdjd1eEQzVnJ0?=
 =?utf-8?B?STVVZFBDdDNjcnFIeGh3WjYrdi9idEhEYk4yeStvSE55Wkc5RUVKZzVBL0Zp?=
 =?utf-8?B?bzF3S3JxNFYrUkc4cFBYTXFKZ3ZnY1hNRW5Sb0I0ZmpoVzd3SmdoUzVsNHRF?=
 =?utf-8?B?azZkNjFMeDNuQ1ZybU1TT1lzZmNRbFFSNDlnaXNzNFhmeGEwUDRxcDlRRTFW?=
 =?utf-8?B?NkMxQmF4S1AwakprVWxvWXpsYms3OVgxRGt3dzMwUFRFZTR2cXVycjlrOXBR?=
 =?utf-8?B?aDJIbEJsQmQxVEhkUEFtSHdCcWJSc3FnRWNlQ1VmZG5MZ2ViZGJXN1h1YU9o?=
 =?utf-8?B?S3ByMGZPUmRjTjFHbnFuTzQ2dnJZVVNJRGpNYUxyR21HcTBJNkJkNkt5SkVJ?=
 =?utf-8?B?MmhrR1JpSFpGYVZGT0JwcS9OSkpIMW5MYWZSemovbExvWDRlZmthVG9vSmVP?=
 =?utf-8?B?NnZKRk1kL1FxcGVQS090R3dZR1JCdXRwUnFVdW9rc2VQRW1xZGJEMjdXeVVI?=
 =?utf-8?B?eUhubmFtOENBUVo1Z2tPUHIzZjYvQWg0bjRiV0hpWUp2Nk9LK2ZPVjlKa1VR?=
 =?utf-8?B?MDU1WHJVeHd4TjlCL2RrZ0FvYUp6NzhIN1RVV3JtdE9zcWczV0FuTEtoSkxM?=
 =?utf-8?B?ZTNIcUt3Qm9KN3M4NURiT0E2eTMvQlI0bHRicUZ4TnhwQWg1QXBHaHVMMGtP?=
 =?utf-8?B?U3NST0Q2aW9jZGt1Y0k0YllITzFwdWhSWThXTmt5dHhJWlJSOTg4VE9NNWFm?=
 =?utf-8?B?T3I1WUhlaUprUHA0dTI4RFgxd05lajRLZDhDY1AzbWtOWnh3VTRsVlJJOEFU?=
 =?utf-8?B?bjFLZGlBeXgvRXBnb0VKT0tRTTFFN0lEWDFXY2hkaHVaOVV1UTA1dDFidFU5?=
 =?utf-8?B?WGpmTElOZnk1d2lXR2FYZ0hwUUFBaEI2R2hRai9MbWlJcFFWZVIweHdCTFFI?=
 =?utf-8?B?dHNQaE00QWljQWlVbnBNMnRUS1hNK2VvRmxYN09pSTl2OWtGa0d6RmVHZmky?=
 =?utf-8?B?TGg1VDdLQmJnRTk5TnhTZCt0YzZzc1NjT2x2OVBkeTZONmlnWkVpTmkzL01o?=
 =?utf-8?B?dG5LYzVuTFhFL1A5OTZDOGlYTExMWUJmajVzRG5pUHFLQ1JBVlBhZHplWTJW?=
 =?utf-8?B?KzFmS21HY0pxVE42VlVMVlI2R3haY0ZKVkJTNGs4ZFhSaCtoT3paQkJzSHJy?=
 =?utf-8?B?OXIxWGl0cXpCUzMzM0FiSmlNZndLalJ3aEFudW8rMGdHRm1ldVNkbmQrWkEr?=
 =?utf-8?B?aXhmbnhsRkVLSTUxYVNmMVBWYTZPTTFHUis0enZFS0JBeTduT1pNUkN1bDls?=
 =?utf-8?B?R3UrQUlnVHRtR2VISWVPWVk0WHJ3YnNyLzdnZ2pNTlFDa05lNmE1elNjOWxS?=
 =?utf-8?B?TURxMXJGYkRVNWFtRjkrd2o4WFBmWVNyakl1MWxQaEFnZlZSci9wQXM2Sm5M?=
 =?utf-8?B?eHovVkhXYnIzUXEwVWRiSTdOY2pHUWZzci8xekc4ajRsdVRhSU9uUlovSmhp?=
 =?utf-8?B?dmJEazBkMlpjQ2svOU51eUNtQzczOXdUaFBWQUQ0VG1DSmthSTZtbmdQWFlV?=
 =?utf-8?B?NllRaTdvdXRMeDFPUVMrK0JzQkZvRkFKRTcra2lvdUR6WEtDdWpwdFh4cUpz?=
 =?utf-8?B?c1hqd1RqcXM3ZVluNy9EQ3hob2hrNjcvclZCN29ib1VCZVhyenppV2xtN014?=
 =?utf-8?B?NFBCeExBbnAvc0hneThlTHVzVHZnbHJPUVdmSFlVcHBER2FlR29LTkhlMFJp?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 757ebf8c-adec-43e4-7085-08dd51324ef5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 22:11:07.7776 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BK8b69BfTASQvvkFDDnO0/3kPii2WUmYmRDpEE7J1AAFp2ShBfLS28rbWEyCAmj43NHCQ5p2hXU/WmhjwkLZgvvhTBdTBydB9AqYMPgQ+sI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740003561; x=1771539561;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wn5DaYIde3pNfphWW1JPqmX5rqp4hJS+7MCybX1cTkw=;
 b=b5UT6ggmkPI1xeMlD+VQ5pSqzzeiiKcXBuBo1TqoF4RS5g0l0K1OCFMR
 zMaHJfMJOsCtFjsO3QCEwz6reQX3PhuDjqwWWGVRLKMbeoHtBDt18SE7j
 h2b50BovtaHHajdrOduX/HrlpGGvjMoyZ1+SgX6UxNh26LGh3hzqIA42p
 iNDrc5BDpRGTocVqh6Oel4xCwAwuuvh3XleN96k42rANdI+MMePHtDPXV
 wEaPw8obPMPqvE64EDGj54gXu8DW57Eg6QOlXaGEC6FPrZIo/QrjEDXt0
 UkHwGTOj0s834STfWnhsM64x/lIJq4oFfSDAZaw02AGjZT1rGETWP1wdr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=b5UT6ggm
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC net-next v2 1/2] devlink: add whole
 device devlink instance
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



On 2/19/2025 8:32 AM, Przemek Kitszel wrote:
> Add a support for whole device devlink instance. Intented as a entity
> over all PF devices on given physical device.
> 
> In case of ice driver we have multiple PF devices (with their devlink
> dev representation), that have separate drivers loaded. However those
> still do share lots of resources due to being the on same HW. Examples
> include PTP clock and RSS LUT. Historically such stuff was assigned to
> PF0, but that was both not clear and not working well. Now such stuff
> is moved to be covered into struct ice_adapter, there is just one instance
> of such per HW.
> 
> This patch adds a devlink instance that corresponds to that ice_adapter,
> to allow arbitrage over resources (as RSS LUT) via it (further in the
> series (RFC NOTE: stripped out so far)).
> 
> Thanks to Wojciech Drewek for very nice naming of the devlink instance:
> PF0:		pci/0000:00:18.0
> whole-dev:	pci/0000:00:18
> But I made this a param for now (driver is free to pass just "whole-dev").
> 
> $ devlink dev # (Interesting part of output only)
> pci/0000:af:00:
>   nested_devlink:
>     pci/0000:af:00.0
>     pci/0000:af:00.1
>     pci/0000:af:00.2
>     pci/0000:af:00.3
>     pci/0000:af:00.4
>     pci/0000:af:00.5
>     pci/0000:af:00.6
>     pci/0000:af:00.7
> 

This adds an additional devlink interface instead of replacing the
existing scheme? Seems reasonable to avoid compatibility issues with
older driver versions. I had wanted to use a single instance pretty much
from my initial attempts at flash update, but ended up giving up at the
time.

I do like that we can see the nesting so its clear which ones are connected.

One downside to this approach is in dealing with something like direct
assignment with virtualization. In practice, I think that already exists
because of HW limitations, and I would expect most such setups want to
assign the entire device rather than just one of its functions.
