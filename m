Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29847AF9972
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Jul 2025 19:05:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D47B26163B;
	Fri,  4 Jul 2025 17:05:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Oim7smY86g2r; Fri,  4 Jul 2025 17:05:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 509596163D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751648745;
	bh=iJqgJdrnaw80Fdg3wAc8z3qrGXyY421QrFfvUKzxgus=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VEd0OYT9isYPPrqFX1l30wq6Mu2cLD6uqQ+MLjgT4tXIYJGrQ/DUb/z3JSakV28HA
	 hGz16MjJW+7D2mDZB7hLI4zEm5jjM6rlNjjLLcS7QSByJXQ4WzOYBmnN410vSOU6Ij
	 pMLEj8F2Zxhjgto7v4WJu1lCY1+YDj9Cg0OGD6a08Q29viEuoTtoa4iykfW+uzGe7d
	 bAg/dpttsNPnEHi2wrsTscMJ1FzGYpt9xlCQo2+q4FIDyjThyQ8Bdo9mbdoP2cWNGa
	 bm0T528fMl2wBWvG+P6hMSdmSNimYs/BE0ALfq4w/S81v+o/auXpLE8ERXCMkGwsE9
	 k+lSEm/CcFqiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 509596163D;
	Fri,  4 Jul 2025 17:05:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD6CD7AB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 17:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B310240B1B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 17:05:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 457GmUSiYna3 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Jul 2025 17:05:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.kubiak@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org F1B1B40ADB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1B1B40ADB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F1B1B40ADB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Jul 2025 17:05:42 +0000 (UTC)
X-CSE-ConnectionGUID: F18pMN7tRPaIgNyF13b+0g==
X-CSE-MsgGUID: a2+z6G6TS+S4FtImn5OleQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11484"; a="65041144"
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="65041144"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 10:05:42 -0700
X-CSE-ConnectionGUID: 8mp5p4bXRtOZRAg85MCnyQ==
X-CSE-MsgGUID: oN3v3xLFRnKCNO6LL+T33A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,287,1744095600"; d="scan'208";a="178348265"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jul 2025 10:05:41 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 10:05:41 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 4 Jul 2025 10:05:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 4 Jul 2025 10:05:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N4WFS/s1TJBs4in+ypzIATG/QjjzyARSGPpkT/14paIj6tg8m+dW/FsKvKzkOy9YMNM9paPlCs1ZTZkICc3FLAHN2vxaEnFg2txp/3WomqiZWyOJ1RxxRtDQ8fpUpcBfZIeG74DGi3ZHDqM2PzHf7ionO8TdqLAwYs+An6rF6zOUzvZ1vCbiy1xHcfEoeOCqRSPFzUOo34A6fnq3tmy2hkl0aRNcAI2IyTUKAYDXh57zfhjhqmfr+StnmTpRquUrKNaWXHwvzrO1rBMyc0AOvfkA/cgH484B1SaXY+85e5cAswndCG6uQ5tqPVuOfTNrV9cichUL4nO2bA9L+FjKNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iJqgJdrnaw80Fdg3wAc8z3qrGXyY421QrFfvUKzxgus=;
 b=onstC8AuWtGNKxI9q63LziSzk+H1oEuMVcatZ7UEf3+rvzwmtYNzpHaw4Uw/wzdQV0x+66j1mBdot2TT8szzFWcHgDucMiQndxQjP/3w0G56ijyaRQy5+N8swh/vIY+uJ+QdmzKYSk9m4MGMOWA4MBPXD4gWa/kWMh1HjfYdnb611lpQdfMMOEuedZsau1krCxwO9zL4PyUOPCw9I5phT1Ten3dVVeZvP5+3RklazllNS3flTzxLRb9UJFfrBdt7RFON8mVGXXe6UHWNy7VLdUZP1x+orxIOtsyles0aHKKdwclBJBtJ97VsKsHCYj8Vdpytv/j+uJysnr7TWLHsig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8665.namprd11.prod.outlook.com (2603:10b6:8:1b8::6) by
 LV3PR11MB8553.namprd11.prod.outlook.com (2603:10b6:408:1b8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Fri, 4 Jul
 2025 17:05:39 +0000
Received: from DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955]) by DS0PR11MB8665.namprd11.prod.outlook.com
 ([fe80::8e7e:4f8:f7e4:3955%5]) with mapi id 15.20.8835.018; Fri, 4 Jul 2025
 17:05:39 +0000
Date: Fri, 4 Jul 2025 19:05:33 +0200
From: Michal Kubiak <michal.kubiak@intel.com>
To: <intel-wired-lan@lists.osuosl.org>
CC: <maciej.fijalkowski@intel.com>, <aleksander.lobakin@intel.com>,
 <larysa.zaremba@intel.com>, <netdev@vger.kernel.org>,
 <przemyslaw.kitszel@intel.com>, <anthony.l.nguyen@intel.com>
Message-ID: <aGgJ3alb4BJEilRX@localhost.localdomain>
References: <20250704161859.871152-1-michal.kubiak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250704161859.871152-1-michal.kubiak@intel.com>
X-ClientProxiedBy: WA2P291CA0037.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::17) To DS0PR11MB8665.namprd11.prod.outlook.com
 (2603:10b6:8:1b8::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8665:EE_|LV3PR11MB8553:EE_
X-MS-Office365-Filtering-Correlation-Id: 52c250ac-fe71-4126-a178-08ddbb1d0038
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RHUxSFZ3bVcrUlpwUGVnRVhISmRqbXZmTkduYVF4aE13NnR0aHVFZ044Ym1u?=
 =?utf-8?B?a3o0Rjd5VWQ5eWE5TG9oRzNYQ0lObEYvRC8vSUlnSG9HRUNTQXhPb2VjUmQ1?=
 =?utf-8?B?djRJVXpwNnJlbVBpWnR3U1F4MTNSVVBTL2pSK29uSzNsQnJiZklpRlB0eUpa?=
 =?utf-8?B?RG51ZHBkd01pVjlXMWxvQkxBYWg0M2E4MHFDbHNjdzc3UVJkNFZneVBVRUpt?=
 =?utf-8?B?MWZsWTZybStlQ2NOcUZxWENoa2hiaFczdFFsOTZtUU1VN2VXN01jbEp0OUIx?=
 =?utf-8?B?TXFjVTRRY2hNRGFNRWdqRWlsVUxHUHEvQURCMVZJaEkzVzV6NDJSMUp3MkYz?=
 =?utf-8?B?SmZCQzdFZTdxMHBWaWpycEJYU1lIdDFJVkdHN3RDNUY2WnBpeStGcXJ0YWV4?=
 =?utf-8?B?NUg3ZVQzSGlLS3VJN3R3bnpuRDJGZy91RU1uNGNXUjVEQlpYR2UzQUtBbmRm?=
 =?utf-8?B?bGs2REZTNjJxamFFWWZTQ01kVzRXeFQxaUROaUZscVRZMTk2ejR3ellkbVlE?=
 =?utf-8?B?TmlyS0QzSXp3d0xEZ3dRZVhmWGV0NWlIRFRVaTlNdHFPRHhETStSMzIxRmkx?=
 =?utf-8?B?MTNnUzFidUdQdkdQNHNCUVFnSStFYUVvQ0FZaDZxcHpSS0F0RWxnOFozbjVO?=
 =?utf-8?B?cUc4YzJhaHNIT0NSSDg4amtZOFFCYVVVSmk3Vk9FLzA1Y3AwT3ZPVHlMbTFl?=
 =?utf-8?B?OUVrVnVBQzJsdVpkU3RWdit4aTRtaE9OelhOb3JaRGhtV2huQTNscTJSTDZw?=
 =?utf-8?B?c1J6TnNGZXdpVS9LWHh6NU1hSnJEd0o1TkZteUZ2aGlka3IyN0FlRFJ1aWNS?=
 =?utf-8?B?L1VpdTdaSWpValQycFhHczlraEUydzlKNVJiSlVTUU5DYXIwZFdxZFJMRFgy?=
 =?utf-8?B?T0x2NFBXM0l4QldVU1loQ2ordHVOanpBMlFybHpRTHQxblFpbjRMSHV6SVVs?=
 =?utf-8?B?MHVtUWVuTElQWThWRFA1VXdNSGlWV1ZkSzhsYnRXQ3RYa1VGT0lIcmcvZ1ZG?=
 =?utf-8?B?MTNMWSt5bUR1SjNKcTZ3Y2FXZzRxTVNIc3BSa3VLemxjeStjT2V2RlRJZHVL?=
 =?utf-8?B?eXRGcW5DU3BOMllYQTdyTkVNc2Z4ZUJ1c0g3Tm14TXZXdlJjWVpWY3FqZGIr?=
 =?utf-8?B?NUNwWlc3NkNzNEI4T0ZxOFVneFp3dDBsNlNHVCsrSUdVZnN0Vkp5SHJRU0VZ?=
 =?utf-8?B?ZlV4ZGlFQ2JVMHhyR05kcmYwbXAxNTc1OHNGcHVuMTFpbDNUVGI3Y05ZK3cr?=
 =?utf-8?B?NG9NQ3huVDJ4NEJ0SEdEQnVoS1RDSHN4ZkszeFNCbDFMZ1oxWGVHbytDT1dU?=
 =?utf-8?B?RCtVMy9mR21JMHNSbno2OXV1MWdSYTJTMFlEMjFBbnVzZXdXY2dtdGk5Rllx?=
 =?utf-8?B?RTEzQmJwcWdkdk51S1ZBMnFNdCs5SU1DelJZMkVHMFd2ZW5KMTJzNlZ6Y1Rq?=
 =?utf-8?B?enR0MEgvZGZrMEJnNHFqVFhWWTVnWGxMSVcxMmhzUFBCYmRJcVVrZGE5bzFZ?=
 =?utf-8?B?K0NNNUg3Skt5eHlQdXloMFEwY2VXUUlrNEV0TEY3eEE0U2NmZmxrR3dCdVlB?=
 =?utf-8?B?VXlkamVvdXRwYnZmcklvenpLMmZJbXFZOEtzQzI0VmIvYWUyU1hvbWZzRmc3?=
 =?utf-8?B?M3lKM2NBSnhoRkhFUTgzQ1dJM0E1YVE3aXFmNzFTcHlYQUNlbnBXL2ZsZTRu?=
 =?utf-8?B?NVhSZ3BmTzhuYkhKVm1vdEc0cHRMcmRrTCtqM3JDVURlTExvNzQ4aGp6THVW?=
 =?utf-8?B?b1JhYmVrTEtxQ2RqUTFEdVRHV21jbmVSdG5vb01MOElHQkdnZWlMYlVUOHl1?=
 =?utf-8?B?ZVorMmRzSmtOSmZwTjB3UmxSNzhjYjNTc3g1cHg3STVwVXkwL2VzL1Y4dVZo?=
 =?utf-8?B?OGhzeWxqMEJLU2JpL04xTHBBcEVXV1dpZnBNTVd4dTRDYkgxM09FY1llemtW?=
 =?utf-8?Q?lSb/5DdMZYw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8665.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGNiU2NkeDdlZnBuT0krZXI0L2xBWGowazdaN3Z3dmhUQmxvU3BRbjFIM3Vz?=
 =?utf-8?B?dExoK2ovQkc0SU1MQ2huakJoTzhNOHlyTDlreGs1SUw4V09QNnNVaTlmTFRy?=
 =?utf-8?B?d2I2MzJ5ZEhEOVFjT05QZFlSdWJkL01sVW84eFNTRmpuZENCdUppZVpRSDFt?=
 =?utf-8?B?cisrLzlXNGdqVjNWb0pUQVU5Q2xFZm0wamVtT2JuRW1mUmpQYnl0V3IyMzlm?=
 =?utf-8?B?dkpCVlFzNWROU1RFUWFHamVQMnRzdk12S3JKNzE2VGhOK3FNZmQ5RWlvVWsy?=
 =?utf-8?B?VjVZTC9SdWY4YW14bWtkZ2lkVy9KMEpINHdUSkxtb3JNK010V0ZwRDdkOW85?=
 =?utf-8?B?dEdhOEdwVUhHZWJ3WVA2SmNPZkNobENtNEZ3VUg2em0ybWFBWnVsRVBXdUNa?=
 =?utf-8?B?ZGV5c2R4WGxySU1Edk1KVUM5RUFIMzNMN29Wc0lTYUNmeCtORVpWQ2hPZGND?=
 =?utf-8?B?UFEwSmg0QW5RSERodWNzRXRjSTAwUHR4ZmZMY1pPWThvbFREWktuVTRuSEx6?=
 =?utf-8?B?Z1hBbnNFQUcxNFVxRE81TGdnK1FweGlINXlLNnlzekZPS1kxbGFvT0xXSG4x?=
 =?utf-8?B?RXVnSXdYTFNjaE5wU1RPcEZoVFp5VlE2UGZudWdzdklEVFJrUVVjZGJKUW4w?=
 =?utf-8?B?TjRsMG82ekhnQUhwRzhObUxnaHRNUU9yb2xHdElwQnhaNDhzQXRTdzQwS0Vy?=
 =?utf-8?B?TkFYdVlNTlVqSFU2TkJlandJdUJsY1gvMnVmM29vVnpLQkluSlRvSjlaNHJa?=
 =?utf-8?B?cTZSRUhlMmw5L2FucVpDUTJJVlJHd2JHTTZDaHU3M2VyT0sySlFlMlNVKzlX?=
 =?utf-8?B?MlBtdHk2YzZFMlVwRU4vUmRBWFNqZ1lwNWtuN2NSQ2p5cDBlWjZxQnY5YnZs?=
 =?utf-8?B?SnhTQ1QrbTBmem5Ld202cFVWb1ZxUzA4ZDBGR2lsQjd1dTBPV1U1emtXL2pn?=
 =?utf-8?B?WHpUdGlwdG5MNzRRblE1OEZHT0VLUHVZaWdSc1NpbTRLNnc2RjNIcVNPczdH?=
 =?utf-8?B?NURvR3NOaWhsRnJPY05uZHRzZTcrZ0VEUnF5N0tsWkE4QmNtOWpUWjgvUFkx?=
 =?utf-8?B?M2tsaFN4WWdQeU42SmpnMnRjYS8zNlBtN0ZlRlUzbzdsU1g1MFVEUlRpdHFw?=
 =?utf-8?B?ZnlzVE9XTnpiVmcvc2NjOVBaT2RJZGQza01kVUMvTDNwQ0lZNURod3QxZlpB?=
 =?utf-8?B?cjJJV2VYRm1td1pYU09XU1hNVmNkQTRJc0QzRUYxZEtzNGYxeTZOZzNhdjZ1?=
 =?utf-8?B?MU9QaXFBZ2dvcnQzV3FyNzFpT0piT1Z6STlmNUl3MTdtOVJvdzRnNkUyUEc1?=
 =?utf-8?B?c1BTbXY5aUxvcWY0WWZFbTJuYTlNZEZWMTBwT3c0cGZIaldwamNlMjc2dVR2?=
 =?utf-8?B?OVJMQ0NUUW9FWmIrOHdPMmlSMlZER2lEWXA5MFBIbG5uL1Qvb1R4SjBsa205?=
 =?utf-8?B?UzNSUnFoS2dWRGJ0R1NQUmdGbUZVcEhMNmxMSHpCYm83aWRIMmlUWjNBMTh1?=
 =?utf-8?B?Y3p5MWFhQjRTMGlMeTU1eDZwdnRabllleG5ZSHZRUHBVa2VyaTdQZi9Cd3hi?=
 =?utf-8?B?LzFaRFFEeldEajB2ZGg2WXdyU1huVmNOZFoycEFsWXBSa0VkTWNBcHJsZzQy?=
 =?utf-8?B?c2xUY2hTU3Y5MG9XUFkxdFFlYnBCRVJvbGtrVTZqeVNvTDdadFBMak5YMERJ?=
 =?utf-8?B?YmJRWkphVmhCQWg4ZmcrU0Zud3AxS2h4Nmtmb1d0UjdPTmpyYmY2UTZ1WUVs?=
 =?utf-8?B?RmFoUTA1YU55VVFENjhqZG9qWkljMXpXZmphSW83K2RUcUlFRVpIdFYwVUJU?=
 =?utf-8?B?MUV5M2Erc2tXRUkzb0JYa1dRMWlYOTA2eVRrYzFtNktrSzkzUlU3eVJGMEtN?=
 =?utf-8?B?S0t0dmp1STFFYVJBYkRjU25zdDJQc0dSWk1mRXRvNVBoZk81L2M5LzM1Qk5k?=
 =?utf-8?B?Q0Eza3pTZGoybkR6OTVrZU9Zdmx0OXBVTjM5eWc5SnUwUWZCTENycFZpU2ZR?=
 =?utf-8?B?czdmMnU3dVlkdTFJL2t5U3FLcHArZXdsaVM0VnVuQTdLN3VGQXcwSS9XUmhD?=
 =?utf-8?B?QkkwWTExaER3VnpwanYyclk1ZmZCZ0Zqdy9oTkVSVDlVWmhveDg0V2VTMUVF?=
 =?utf-8?B?Y0lxcUNaV2RjeGZjME5vcUl0UlMxYkowV1l0QnZSQUc1Tk1MdVUyeFNkeGlX?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c250ac-fe71-4126-a178-08ddbb1d0038
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8665.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2025 17:05:38.9560 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1+JFBhs5WzKtJDoTKBK58LLhngpmIqk3nCvQBHz2RbwRuhdVpubBpXM4njo8s5FRRCDGQsMPIlzzoMn3DFF1kQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8553
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751648743; x=1783184743;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=iJqgJdrnaw80Fdg3wAc8z3qrGXyY421QrFfvUKzxgus=;
 b=PEuLVm1qxAmSSYu5EeSMh8o4tHB+8OcoBsRCV0L0YDR8hBHy+5XTVcio
 DoHr7OhEDP17lH5AWEQxOiKgZc18sLv3JcyXOKhD4EElki/xTdpUzoRE8
 KinL8NMCvr5XOAG7kHPS0ABLAjhAcY7bWJuhLMo/tpZxMGlErHxWhsakS
 UR+PQGWcf4VrnHH9A8JF4RUEvgAK9hWqWLVctMJ/DZVTsQu+eut/LKhrq
 LqpoXkFXcK54rxUCI4qA719M/p0MflWtkaDYLpO4c9qwSrZJUlkVW6pFM
 gh2m7MU6Iax6ZxFkb+dqK7Ji0qQCnF0BQjM+CUcydf7+8DWXyZWT1s/ke
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PEuLVm1q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/3] ice: convert Rx path to
 Page Pool
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

Hi all,

Just a quick heads-up that I’ll be on vacation for the next three
weeks and won’t be able to actively respond to comments on my
patch series during that time.

For any urgent issues, Olek Lobakin has kindly agreed to cover
for me.

Thanks for your understanding!
Michal

