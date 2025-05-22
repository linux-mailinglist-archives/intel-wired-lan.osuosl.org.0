Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BFCAC15B2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 May 2025 22:54:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4B59B613E1;
	Thu, 22 May 2025 20:54:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oNf9M8s4O1OV; Thu, 22 May 2025 20:54:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF9E2613E8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747947247;
	bh=dR9kodWQ/bzQ/f3/TmGSfFpmLbp00+NfbW0U9UsnHaA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=K6AcxvbQIXCp8nsyGjlUGFFvnulJHl8JH5OZ230voWunnEblqqTxBd05ERaimbnsi
	 54LPRmFDvFTuSer16h+kqkFTLww0sVs6DqmApjfWh4rVtLoQOEWoMmDD/fFMoSQUzc
	 fko/PDLHAVLxan9w8GVeEknt0AjzvmTTwXFddczhHHkYAaZNRHVinQOtAxk+jYXE6L
	 PD+OEx4+CBFuFoJ6XaIKsXqjQkupTMmZDPbpoLSt2es+fg0pmZTCJhI88LHbmBPI9z
	 3BtLq3NXK3MjuiLUI6HK7XkvoZ9HHKZq7Pbn82JhaLCPpHAnPYPAKoksjgVLrO7GVr
	 L0Npsxg44ly6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF9E2613E8;
	Thu, 22 May 2025 20:54:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2B0BEBC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 20:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1CE2E83E4F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 20:54:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 23qp9ch0Cz1r for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 May 2025 20:54:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 68E0383E53
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 68E0383E53
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 68E0383E53
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 May 2025 20:54:05 +0000 (UTC)
X-CSE-ConnectionGUID: iohVOgAjQk+s1hBSEluXTw==
X-CSE-MsgGUID: 6/K8RKUdSxOQilw6FlCKeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="60647766"
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="60647766"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 13:54:04 -0700
X-CSE-ConnectionGUID: wuH6Zz/FR4KMaVz3cKAwBw==
X-CSE-MsgGUID: CKr9fpYcS1WxUMXj9Kfpug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,306,1739865600"; d="scan'208";a="145484747"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 13:54:03 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 22 May 2025 13:54:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 22 May 2025 13:54:03 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.61) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Thu, 22 May 2025 13:54:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ucpoOc9m4vBoNqTkuGuQsxKYqHUQKW2vZoSh2KW3HSjaojRue3HKAsYI8G0NEKuJER5jZ5wtJ+TT9c1zgd1eXS/Hn0SyQFw46HnjoROA0VCPPTzy6EUpNbEUkgA0N4oR2H2kAdXSoXmc9k4JQ+tc8ZzLKVhbVBdepyAtN7fb/rnyLSmK2C/IwsdkxqGSxHtoWHoiLK5uGS+f8gG+So2WvlqI0VBJ5P/Dyhyp4eqfvW8U3eE5AQcZhZIeUSll9G7wXR6Ys7mdFLbbuSqQ7tkWue92jqu08RCRCOy86gumwCVOQEtmETJTMeBiBjvDsTuWUvNu9xyNPf0zlJlMwJ1JgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dR9kodWQ/bzQ/f3/TmGSfFpmLbp00+NfbW0U9UsnHaA=;
 b=wQ5nx0bpBowjEzB5lWyVLq6LR5YTqtZ1GnY+tNxcM/0RLekzxJJXrV5ffG7tSt8S92sPz6WTzzZhB3gAHavAQpeQwpLc2M0BSbLYD4D0SpnVFFPU6hILaX738ldqXao/sMLjFtc1SKRbICEnFUrKeKXPgS9QsCaLPzWkpLnuz9ZnknaGnz5cFpLnNOoJDoYHi7LCVrrt2v9pZIGp0CAqSVc+suBKpJipSj4QnRAQG8GBJw2j8MATk0o+OfFtHZ6Q/zIc0iEL3ADS4TUQYrRrzRQ67UvoqM7dE6IY+olZ3NxnGaoBZ4f0/Xy1BLbdqfFlduM+vX6EAZAFMOYlKmO32w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5095.namprd11.prod.outlook.com (2603:10b6:510:3b::14)
 by PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Thu, 22 May
 2025 20:53:15 +0000
Received: from PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189]) by PH0PR11MB5095.namprd11.prod.outlook.com
 ([fe80::215b:e85e:1973:8189%2]) with mapi id 15.20.8769.019; Thu, 22 May 2025
 20:53:15 +0000
Message-ID: <1153fdf3-581e-4c35-a24a-55534e1e9a5b@intel.com>
Date: Thu, 22 May 2025 13:53:12 -0700
User-Agent: Mozilla Thunderbird
To: Alok Tiwari <alok.a.tiwari@oracle.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <andrew+netdev@lunn.ch>,
 <davem@davemloft.net>, <edumazet@google.com>, <kuba@kernel.org>,
 <pabeni@redhat.com>, <intel-wired-lan@lists.osuosl.org>
CC: <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <darren.kenny@oracle.com>
References: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0351.namprd04.prod.outlook.com
 (2603:10b6:303:8a::26) To PH0PR11MB5095.namprd11.prod.outlook.com
 (2603:10b6:510:3b::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5095:EE_|PH7PR11MB6697:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ed25fb1-2312-4141-e2c7-08dd9972ac72
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QUx3TGR3WVM4RkFwRmFoS0lVRFJBQlJrOWU4YVBWNDdRelhScFcwdjNHcGZu?=
 =?utf-8?B?bDhxY3VtTU51b3lWZ3NXQUtkZFNSRHBxaERwakJIcUFkWGhXN05LQmpHWHk1?=
 =?utf-8?B?T3I5UTl2R28zZG5XMVVXYzhhanQyL0hudXlUOWF4cmFmVzlFYmFnaStHZ1pZ?=
 =?utf-8?B?OW1jSEpMMGZTQ1ZWVEJSSDhFMVpWMTl3UFVXbFN3dktUeXRzaXZlUHdaNHFP?=
 =?utf-8?B?MFdNWHFFYWMxOHBsRzhxZG5YQ3RpMVlhSmVENG5pNmpLSi9YUnBBQlh5UWUy?=
 =?utf-8?B?cEQ4aXk2UUtidXZhYUs0WW5oalh3eUdGS3hiYW9ZVnpZTHJoYzZXRzdSSEYv?=
 =?utf-8?B?blQ3TDZnR3VHa25DNWVVOG1lQy9CK045UTl5dWpxeUxNL0lPSzZxbU13TEUw?=
 =?utf-8?B?UkRJdFd2OXVpZTdiaWtLa2R4STg2ZXZoVU9YMktkS0tGZVB6Q29DSWc0Y28y?=
 =?utf-8?B?UWE1Q1Y0OEMvcFJ4YU1wMlR3cDJDVGVZT0FuRjRUdG92TmdMaHZsNlM3Wk9I?=
 =?utf-8?B?WVRFdUlQV2ZYM3BzZDlQL3o4WTdFOHBBYzFDT0ZOUGprN3JIaE1BNmIxazhp?=
 =?utf-8?B?aEFURVVoWUpuOUpCeWJ5aC9nUENoNjY1cHk3VVkxUHRQM21jMzJGVTU0bGdi?=
 =?utf-8?B?d21vSi8rS0dycFRZekRQY0Ixb0d6QVBMYUdyZ3FnNm9USC9GZ1daUG1oUTJY?=
 =?utf-8?B?c0Z5Y243Yis1MTJTTEMvNXYyZTJSWjBJV0FHVi8yaG5ia1c5KzQrQTJoZ1pz?=
 =?utf-8?B?ckQ2RElUTEZGcTVSZExpYms3Y1lZc2tBYTlXNGhhdWF6VEVZVHlzNThjMFBo?=
 =?utf-8?B?YjZOc1NPdzMvTko2NmxCU1lPM0FMKzArTnBWUXpQZFZkeTMwY1pERWlDZUN1?=
 =?utf-8?B?VjhCYWdaWWFGUU8xdmxzcDBkdGx4eUdhM3JnTndaRGkxQ00vVXJQSTd2Vmdt?=
 =?utf-8?B?UjZhdzRUZElBZUtqOUVwa1I2UlZZQ2FWakhwbGJDMnpyV3NiaWcrR1k0QVRw?=
 =?utf-8?B?WWNTWitUaFhOWEw3bXAxMTlIQXRhei9BTFh4ZHdjTmNoU2l6bTdDRWJwVE52?=
 =?utf-8?B?bWNtUFZKbGIxQUhveGhYYXRHc0RDS0RxUHlldG9TYyt2eTVnQnRYQWkwb1dI?=
 =?utf-8?B?QThXWmN2YzFJUGYveXE1TDIyNHlZdmNIc2tqR1RrUHNoUUZ5VEdQd2VwaEF4?=
 =?utf-8?B?c2szaXNwNTVKRjlBeEl1bW9nZFBvanpnWU9VNFFjZzZhaWNiU0NoNHBtUzlz?=
 =?utf-8?B?UXVPTFBlZmdna29iZHJueDUvaHhWbVZtc0ZwNFZCc2k5NWx4cnd5N05hR1dN?=
 =?utf-8?B?eG9XbDFvRDMrd0RxSkxDWmNTN2hQM01vWEsvbTVDT2x4dWtjcXZjQ2RFMXBD?=
 =?utf-8?B?NmUrZmliSnNWMkFXVU5zMFhYZjR6cVlTMW5wYXlqamJocjNHc3dma2lLOEl6?=
 =?utf-8?B?Zk5hd0syeW9HZk1ZRElKYmxmbmhRYlUvSXlRd0ROSStibzE3bUlnQ3RYSm52?=
 =?utf-8?B?aDJnbWJjdXAxLzlJcitIeFdvRk9OQzZKMGppU0ozZkVSUEFoUHI4YXc1R0Nt?=
 =?utf-8?B?K3VrSFJHL2J0VnNNZm42TkRGdEdNRThuRGJMdGJtbG5NVUo1cWtmM2w0SWRj?=
 =?utf-8?B?dU5NenExbW9lOHRvc2Y1YzVCT3ltQVNlU2Y2QmpMcHpWZVNXY1hWQmJjMy9x?=
 =?utf-8?B?RDZJNm42NnZXb0NSdkJxTGhIYnJGWWkycXZwM2VSdElyUkh4VkFaczI3eGgw?=
 =?utf-8?B?VFU3MWVKRGwyS2dzNkE3Q3lGV3dCV1VVRFVRVFJIT1U2c0VsZXpHVThOdHJh?=
 =?utf-8?B?WWhZcG5xSDI3MmhmaFpSTUVyNXd3REo0YkpMUmhaaE5OTlhadGQ3VjBWZEFm?=
 =?utf-8?B?Y0VwNWxOV2R4YjEwbjlDL1V1dGlEMWZYZ0d6U2w1NWZJRFVFbkVjSDNVOHor?=
 =?utf-8?Q?aWcqBEfBR/Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5095.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1RaL2FMT0ZWMGNUS0dnSndTOGNVU2M5L3BldXRjR0dvNllYWjloNDJYekxY?=
 =?utf-8?B?S3JYbWJNOFdJWVJqRU42b2dSMDROSGZ4UWEwTWhDZlFmMEw4M1hsQmVvWTZN?=
 =?utf-8?B?VjFhYnAzRSt4ZW9leFVkcUpWTnZNaDZ3Wlk3OVpDcXNhNlpnY2l0aTE0U054?=
 =?utf-8?B?WityWDBDWTFoMnJwRlpkcWk3cEFRN0NYbUxnQ3NZMFdkYmwxMXVCbGlFcEJs?=
 =?utf-8?B?Uk9YT0pQaGZ3bFYyWlEzNVVWQ0RPZEd2U05SVWVzRjgwS0xuL01FWnhLMElr?=
 =?utf-8?B?S2FtNUp6bnF1cUV4UTQ0NUxGcVoxTnN6ODFsWmk3YkxpVmxOUndVZ0hyTjc2?=
 =?utf-8?B?cjFGMkhTM3RrdURTamRhdWdNSlRTL2NDZUhiOFNLbkJqVmVCc2J6UXhNZitn?=
 =?utf-8?B?QlcvN1loMGpYL2lKaWY4Q1RCTkFXMzFQVnlQZmcrRUJMYkpmaGdveFVFV3hO?=
 =?utf-8?B?L3Z5VjNaTE9iQ3dUL3BwYXJoYzl0SVdVeVlnOWhYdWZPK1JCRDZVdWQwcFB6?=
 =?utf-8?B?bnJFcVFIWnRpVks4NzlKTjhLOTRqWHZuTUdkeFJuaDI4YjRLODNUQzB4K210?=
 =?utf-8?B?UW5nY1VFK1JkdnRQMVFzdDhPUlBvQVNOUldNN3FzZG5XRTVjUzlHd2FKcUMz?=
 =?utf-8?B?Mk85OHp0VVJtaUR2WkkvTVhTbUkrOUhsY3VVQ1dPa2VJRUlTUlhVRGhwU1Nn?=
 =?utf-8?B?VVAvVUczTzc4VUZEakhyemlXRVpkWlRIQ1YyRm1iajczRFhLTzJ5ZWJKeFFh?=
 =?utf-8?B?U2NzQUtYc3pvTmhXZmlxNnZLQnFGVis2dDVOT3FVdjNOcGRaaUFtbU5PbHcx?=
 =?utf-8?B?cnMzZTJnOEZUZ2dKY3ZFYXQ2aDU0bkVLeUQ0SGJxSmlYNmZhVFBLWGVoSG5o?=
 =?utf-8?B?Qm1pUGdTeWhyakFqVU92NzhFZ2xTNUE0NldDdGFGQkZxeDNYVFNWQ1ZqWk5R?=
 =?utf-8?B?aVV0MDdBS29DdU1jYWRMSTc3b1loNHpZaWhkeHdMSHVtMCtsNUhvaGJ0Vktj?=
 =?utf-8?B?SnJvNnlyV0pzSnpKRUlUc05YVlozcUI5cm5CK1Q5Zmc5L1c5SnI2V3NPbEFN?=
 =?utf-8?B?TGU4ZGRXM3JqczBzMC9yWk5zRUZJYUdFdEhPcVBhbkFMZVZGSm5wZGYrYUtF?=
 =?utf-8?B?NmRiQk0rQXAxSGF6cEIzSmFjTzQrM1dwaHdMbEN4aVlWdGpWcGNEMHI2TEEy?=
 =?utf-8?B?aTFDVTFBazdEcmRpWDUvc3NYZmxqTHRRbWYrN21vUFBQN1dzZVV2TnR6MjNI?=
 =?utf-8?B?N2FxZU1UQTZZUzFSRDVQTG93bENvSjVBYWY1TmhXNGR1SHFPSWtaMGpyUG56?=
 =?utf-8?B?ZGx6bHlWQ1djTTBUMFNVZGp4YUt4YjBwZzNROVdNN00xUDJQSmJjSGNVMy9S?=
 =?utf-8?B?UFBoNkpGNWNwekNXcTgzNmZKVW56WDNFZ1g0SUZCN2dzZHBkWWg0OEl3cWg5?=
 =?utf-8?B?YjNaK01YQ1BVMFF6VVBwVzlNWE5wUkxrWVRQNVQxMXBKY0pQVGFNdTJGSTBY?=
 =?utf-8?B?SklsRWZ1VzZxUG5mTkRtaGpCMENEMzlCWDJSUmMycXJwU296ay9QdGtYVjNw?=
 =?utf-8?B?QjBBaU0yd3pYdnVXWUYzUng0RTU1TDJYMG5GMDZxNHFxc09SWGZyOU1NM0ZX?=
 =?utf-8?B?V1lUQ0tZNjhib296VWZFS1Z5WEg1aUJudmo2dVNJYlNzQ05YZUdjK3VZMm13?=
 =?utf-8?B?UEVPUVNBV0xBakEycjNtN3JuYitiTGlrMzVCY0c3SVpycW1qTjNTU1FLeVhT?=
 =?utf-8?B?Vk9JNVlET3hrMS9qTnZPTXNCdURlYTIrNFQwdFpxRUVWVGNJcGJzTVBOL053?=
 =?utf-8?B?WnZkQTkrY2hXMUJWMGRFUktkK1ptMzJHVUpPVHkrRmxibk9EbFVRRFNvc0Fu?=
 =?utf-8?B?NjlUdlNRdjJGaTZPVUdpUTRvVlZtYUJMOThyaFRrRWFrVXpKemlsTGY2ZnNM?=
 =?utf-8?B?ZWQwVlpwRno0Wi80NEVBenlYRHFhYktZdzJ5dXlGdjh3OUp0RjAwVUZVTDRo?=
 =?utf-8?B?NGhDUzdhaWw5TkFzcUVGTGdubXBrZ2RxbTE1VWdQWGY4NEQwR1MrMzJXYWtN?=
 =?utf-8?B?ek9COTJZdndCYS9TUkRSazZmUTdWMFdnNmkraVF6T2lLQlVLczJDUHRsVEtF?=
 =?utf-8?B?VjRJK0VVSlVrNDZPdUcrL1QzMHZJZHF4Sm9XaE1RS3UyQm1EWFhxMkc3Tlpi?=
 =?utf-8?B?bFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed25fb1-2312-4141-e2c7-08dd9972ac72
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5095.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2025 20:53:15.6868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FZmb9YVN43ZjWLjw0b0jnKoOFgMAMtjmWWZf72QOw1zi2OeNB5iI69DAO67wfuC/becw1TmEhU+pwsJJ2VtK6XHtUAvoaafV4HjPDGZ5IyQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747947245; x=1779483245;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=328P35+RVL/UtIBm9n0ms5e1FKmD3HrvjccR1gHMywE=;
 b=I1pBIXMWDVJXcIzheS/l4o3Go4l/yntIhOf31a78nN7e4thkjbFPx83R
 /31DFGEZcpV42snwbSTCKS2QvqX0JOhwdqnSeQjRWAx80wXfI/eTMZjq4
 ydz82YzDgKyxIoIB+ILH86dJXuiIT1enDaeaVV1O4FsebGwbZ7Y9cZayl
 VLp5dlSwtZ6Knfa55dqug/sIKNSv1A43bFoZDF/VCTknEe0TPvmmPaaOC
 Xr2qoP6O9o0m0PICZvY7xDBl6/bdTuBKpr2PEyEWsFSBKuStKt9f9PKud
 ztW8avE/H7N9XxKxeTDFzJE4uc3xsT2zQ2MZRcp5PfHMbXTzrSrekID87
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=I1pBIXMW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix typos and clarify comments
 in X550 driver code
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



On 5/22/2025 12:47 AM, Alok Tiwari wrote:
> Corrected spelling errors such as "simular" -> "similar",
> "excepted" -> "accepted", and "Determime" -> "Determine".
> Fixed including incorrect word usage ("to MAC" -> "two MAC")
> and improved awkward phrasing.
> 
> Aligned function header descriptions with their actual functionality
> (e.g., "Writes a value" -> "Reads a value").
> Corrected typo in error code from -ENIVAL to -EINVAL.
> Improved overall clarity and consistency in comment across various
> functions.
> 
> These changes improve maintainability and readability of the code
> without affecting functionality.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---

With or without the s/accepted/expected/ suggestion from Simon:

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
