Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB6BA9A6DD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 10:52:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 13A704055A;
	Thu, 24 Apr 2025 08:52:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BctPM3lV7ycz; Thu, 24 Apr 2025 08:52:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 729624054E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745484730;
	bh=9KuXm7HlbbcfkgkHh6Olms5TQILczDmT9juhgdZsbjI=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oYuaVvt6oz7fHsWCfqV8Emfv3mBENSSnK0yg2CoxSXv62eCsttEfYktzgzs31usJ2
	 b5oRxBHWQZVQxMN/8siaNtq3H2a613Mj/oya/oE3NuCPKZcrPGqBM8DLCZPCjf8++/
	 bwLgaZA/l3qzKYF6R9pnSjm9Q6Uxu3dXDywgPr2eg1qVsXzgDFrqH/OCtxhcqz72r/
	 a+67wuIVjj5m1u7WpPyyJDGM/SUcIvdbRtVWsdJSrjVq+7B1uYtLBGpIEUZnpdFQlm
	 CV6+gjLb8zEggxyEo5fxih/J7UBmT3N1DU8D/JzSHXW5uRklyPuPQtvz3x6oKNxd9e
	 AzlmqJBJ/j5sA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 729624054E;
	Thu, 24 Apr 2025 08:52:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C5B5FEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:52:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA8CF405BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:52:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HHivs09YwjW for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 08:52:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=morx.bar.gabay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CF4704012A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF4704012A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF4704012A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 08:52:07 +0000 (UTC)
X-CSE-ConnectionGUID: S73C9S8MRzulFqfV2E9ybQ==
X-CSE-MsgGUID: raz3HLs9SHO3LVmVfg77yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11412"; a="47240628"
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="47240628"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 01:52:07 -0700
X-CSE-ConnectionGUID: T3gjvg0kTNe04l4MfLVoXw==
X-CSE-MsgGUID: /1zq9Z5XRRif6JTl+2blAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,235,1739865600"; d="scan'208";a="133086151"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 01:52:07 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 24 Apr 2025 01:52:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 24 Apr 2025 01:52:06 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 24 Apr 2025 01:52:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=liKzW1Kl517Wx5w14Zlgt45xLHRzpOWY+7/A0EqYiSsa+GJeg4he8GL1J3H/GKN7fD2H9M8ZUudsTPEAPmMVvxc9i/IaxRUcCejigRJSlKwVIJRHdmAlQXwPeBj+dfLxxi7B/KjThuwMDODAV8yRQhPw9XlkCol2NlqsMZq6Vzgc2B/WXnNsMBXRlM70dH7vOGi5SYuid11/o2xMku9OGtM42qg/Ks/+y971l+2GQF6xoXyYDt2HMLkSV7lziHBrUqWx2r9qDoByLUQkRskdY4cZd6LP6554UKa5SkNvczz26Sx1o7kHG1VNQta92S5nYKztXMd+JUP817lQeqJPcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9KuXm7HlbbcfkgkHh6Olms5TQILczDmT9juhgdZsbjI=;
 b=tMhpBQdEucZy4esFPDptUI222lDdaX8A8Gn2PAHlqIDmYpmb5qq+jTW5UpC2bzQMMVryWzl5IlaZZdVO/Ce5PZRN9ca394Xk6rrv2Cgayw8t/k8oVY+82TG5xbcphF2brUlHf8OMZjcRqFzpCkNXLREWoOgDllhe7T7sjkvxdFdy3swP/dhyaeAFupTcDvrH8s9CNvnrpEOpKYaEYMyAqlQgzMW+ENjWB2Hnya6nE1t9y6gkyqDyLkRhLCHtydDQOq2TW6VBxR2M/s5IszcLknwTvMXHQYddQE+/WkPXK7/0rqwPpNHb9sJeha0NalYNFrJvfnoKic8HwW0GXPWDdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6310.namprd11.prod.outlook.com (2603:10b6:8:a7::12) by
 DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8655.35; Thu, 24 Apr 2025 08:51:57 +0000
Received: from DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018]) by DM4PR11MB6310.namprd11.prod.outlook.com
 ([fe80::c07c:bc6f:3a1c:b018%3]) with mapi id 15.20.8678.021; Thu, 24 Apr 2025
 08:51:56 +0000
Message-ID: <9d400f8e-e9c6-4c93-97ed-c891dc511825@intel.com>
Date: Thu, 24 Apr 2025 11:51:50 +0300
User-Agent: Mozilla Thunderbird
To: Kurt Kanzenbach <kurt@linutronix.de>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Sebastian Andrzej Siewior
 <bigeasy@linutronix.de>, Simon Horman <horms@kernel.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20250321-igc_mqprio_tx_mode-v4-0-4571abb6714e@linutronix.de>
 <20250321-igc_mqprio_tx_mode-v4-2-4571abb6714e@linutronix.de>
Content-Language: en-US
From: Mor Bar-Gabay <morx.bar.gabay@intel.com>
In-Reply-To: <20250321-igc_mqprio_tx_mode-v4-2-4571abb6714e@linutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To DM4PR11MB6310.namprd11.prod.outlook.com
 (2603:10b6:8:a7::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6310:EE_|DS7PR11MB6077:EE_
X-MS-Office365-Filtering-Correlation-Id: 63781b64-9f09-4f31-1f58-08dd830d447d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7416014|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UDdiZi9wTGZmVHA3bFJxeXdtV3V2bnZpQnZOWFp5cDFUTXBrNlZweGpHUHRr?=
 =?utf-8?B?cVYwTitOWlE2QldMWDlsWFB0SzdjYzd6d2NSbk9RbVE3bVhxRXhRYkdmY29l?=
 =?utf-8?B?SDJuQjZibTUxZ2dIZDJRRktWeGFXSm9qbHpWZlA5T2ZrWFdRcVlXY0xrdEx3?=
 =?utf-8?B?MDdtSnpHT2krbHprT3FTYW96TG8yQ1FJVFo5ZFFmeFcvdElFdTZuMjV0VWUw?=
 =?utf-8?B?YXZxY1VNbDhvQlZmWWZkaE4zNTNveFlOVTl3eTlNcWNWUTV6V3VsTGg5RjFh?=
 =?utf-8?B?djh3WmtxcldMRVNJSENzam53aG1tK1o1YVovZDVGbmYreElNbnRIQUpHSjZQ?=
 =?utf-8?B?ZG1ocFhrRTcrU2NmWXprbEY4LzFWRXpCdzJLRU1NNFZrNzk0TWxYWW9ZOFdM?=
 =?utf-8?B?aXdKVGMyZXpGTTh0bjRjb2tJVDZBVFNuQzl2YnBQUjdGa3Q0V3VsbGpteUJB?=
 =?utf-8?B?ZjJsb1BucytUNEIrNC9SeUtqZmZmTjlaZUUwdHRtWFVKdW9GRTFocThwUTBa?=
 =?utf-8?B?b3VKNVhlaldKQ2NTK3ozS2Q5Ujdkang1Q3VYV1Jta0x4RGxoMXQzR0dYeGN5?=
 =?utf-8?B?SFZRT1JXTHJmZHRGWlpWdjZKdnZkM3phY0dHcjd0K1JWM05UL243RUkvOVJ6?=
 =?utf-8?B?RDZ3blVYZjdUOGhSMHhHM0FlbDhoNE5rVy9vTXBJdktDcmdBZkM5MXhPUG9q?=
 =?utf-8?B?ZE5oL1llbkZIZHNwekpudklEajVaUFpQUGdJK3JjelJTV3pZWHhIUXlJWEh4?=
 =?utf-8?B?V3FZWGNJdDZTTnJVbGwxbjhtSkJtRk1pcXRna0RBS2N6Qnorc05HbS9XT2RI?=
 =?utf-8?B?dDR2MVAvS0ZSTVYzVC9ubG9KTkxES3dLazBHTWJpZkNXc2Y5dWVESE9DOUVz?=
 =?utf-8?B?SHp5bkZRT3pkdlUxUnRrc3lwcFVFMi9KSWoxcVJLTUNUOGY1UW9GdzRoZ3Aw?=
 =?utf-8?B?d1BaZy9odlR4M25aNDRtTlcrbjhWclVhN0RoK2RrMVMvUFVhRkQ2MXNlUkNj?=
 =?utf-8?B?QmVzcVVYMnZ4NXFhcmtydHR2QUVPUmN4NUFxU0FicGgzSUtOVHJvVHZkZ2RD?=
 =?utf-8?B?M0x6SWtwUy9kRnR0bEtuVGRvakJOdmt3T21JN1B0azBFYkdvNzB2UmRGNXI5?=
 =?utf-8?B?RGtwcTFwUjV2OThhQXdHSzFTZGxudUFXZ05TSTYxdk4rK3BUclBwN1FKbTZ1?=
 =?utf-8?B?VDZKMkQxU0cwQ2NnN00xTHcrbHpnSmxZS2ZjUXM4T3FRMEJ4NHZhSDNxenB3?=
 =?utf-8?B?N3o3ZVpPczFVaW1VelJpbG56dEdsYWsxTHJSbXN0UGdtd1lLWi95aTFObDhR?=
 =?utf-8?B?YzduSmZHaGVvZGZyZjgyR1VRZ1RRanBvMmd1VktxWFpNU2ZIQWVZb1ZicnIx?=
 =?utf-8?B?UjJ0TDRtYUU2QnppcmcwRGNIOEQvSm9LNXlFaWhpd2lLZExrT1J1UmdPejE3?=
 =?utf-8?B?T1lzMzA5cWE4LytjOUtHbVlYRDNlT3Jub0ZnenpFeG1oN1doa1hoUHFtay9G?=
 =?utf-8?B?MXVWcnhxQit4akNtYSszMzRKVXVlMDROcStLdHJzSTZjQStLZmhVbDFqNDVn?=
 =?utf-8?B?MEVGNzZxbnRkYkNKaEl2bjJMWi91dTcwMEttOTl1TUZlbGZtcmNQNURqY3N1?=
 =?utf-8?B?S0VrTnZvYzJuODAyUU1ORmJ3SnBwVHdLUFpqQkNZcC8rd0tkSzNPbHRSbGdv?=
 =?utf-8?B?Q3E0dVFDQks1cUtSbnNTT2lleVdQdXZjMGV6Rk1JWUFkdGZGTWhhUFZhZHor?=
 =?utf-8?B?RXRvTGszakw3VjhBeTg1a2dUQzdOUmJKeVBzTjMrUmx4NnZSNFVVT29BYXRF?=
 =?utf-8?B?eTkyZkdocDF0cjNZRHBkQmNoS05NVDRpeUUzUDYyUWZmNmlaMHpKSmFRbkox?=
 =?utf-8?B?NDl6RjFodG1IRkNWeklDdk5tSnlkOUZZNG02eGsrVTF5dW9NMk92L0NrNFJY?=
 =?utf-8?Q?vaj7GxwzeJ8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6310.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7416014)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkQwMUcyZ1NGcGtURGlrZzdmODYzTElBTmNZY0pPTnBpbDQ2QkI1bWwramxF?=
 =?utf-8?B?a0dpY2paaGt5Q2M2enhwRWk0bWhkdk1ZYnc1Sk5zdC9VdGF1emhMamNoNmlx?=
 =?utf-8?B?UzczcE1NQk5md0t6NlpuZlQ1cHZCdk94MjNxU1Y0R0hFeW9nSE1zUkNJcDJo?=
 =?utf-8?B?YUJqWTlvbFVldDcraExETWtNdFVpSWFML2dHUzVLN0wwQWpoMVgwNEhyTlNX?=
 =?utf-8?B?cW5QUENoNmVTaEJja0pDOXE3SU01clc3RzNrWUlmV0RVVmxncFVLM3ZwZDZH?=
 =?utf-8?B?Z1ZJTlZYYzkrSWJIMDhkQlhHeGtWOHlMVFl2MXl0eGdLU0dmd292WXRtSXhG?=
 =?utf-8?B?NEZrMjlSbFFDSDFsVVI1T2w0YVJTVEhRRUZRRUdvRVh2Ky85NW1jN2w5blpG?=
 =?utf-8?B?QnZBelFBVU04RG5hSnNjK2E5b2J6Ry95ZFpIanpGQ1kzYUJPZlJJMFU5L0ho?=
 =?utf-8?B?MmRrdlZYbklZV1BIeVhNNVl1cEhaMUdRUHh6RktsWVVTUktlTTRSZjg5OFhG?=
 =?utf-8?B?eXlWSW1wRWJxbFZUdUFHZWxNeEp1NVZyZkVzM25YUDhOSjlFZzhjeGQzYytm?=
 =?utf-8?B?SDlWcnV3TUpaUlpxVlVuOXQyODMzdXNGbXB6WTlPWENxK0xSWjlyY0gya0RE?=
 =?utf-8?B?K0JjV3lXWjBTell2SEZLVldZc3ExMlRWWWV6YzZGa0hhMWQvcjVnZnR6QXZ0?=
 =?utf-8?B?S2M2RWtOblpXa1JpMjExdHYvdk9FOW5XcE5nZEx0SExlWDJpbmQyZVp3WXZC?=
 =?utf-8?B?MHdYTUtVUFJ5czJJbU16SnowY0UwNUw3b3BSWWFUdmNpREp5elpiTWYrM0dn?=
 =?utf-8?B?ZndnZHdSMUwwekV0TW11OGsrd1c0b3B2aEhEWmdOMUx0RFpVUnp6aktlU1RM?=
 =?utf-8?B?ZXllZG9SZEdSU1gycXA1QU9hWDF0WjRZVVByWGNJN0tUbmduQkZyd2Z1NUE4?=
 =?utf-8?B?ckdXcEhOaVhVVW9aOXlEOGN6UVFBNXQ0dGcwR2NuVXd3TXRDdndOWGZXSWZR?=
 =?utf-8?B?SUkvSlN4cmF5VjY0MnA5UVczaCtyU1UwOFcyRGdkbGY1bTBwWXVuNGFmU04y?=
 =?utf-8?B?OStQV1RKdGIyM0lKUG92djM5UVRLRmdCdnRiVWJFbmZvd3E1ZzRnRHFLVVg2?=
 =?utf-8?B?YllCVGt0VnVYNkZUWHAzY2FtN1hjRDFlTzZMUjZ4cmZnYnQrSnFPN3BoVC81?=
 =?utf-8?B?UHpEL0htMWlIMWlQVkxyOXNENjBQajRlRGlPbXEzSHMrblM5Q1FWTUVkM1Zp?=
 =?utf-8?B?ZGZ3K1B5QjZuek1uV2lrQTRyTnp1Ukh0cWdHVXB5K29YMU1iZ0hrOW5Dd283?=
 =?utf-8?B?VjhKTWhuMG1ZSVBBM1ZQa2tNUVoyNkhFOWFzbGpZTm1rSVBiRkwrQTdPR0xE?=
 =?utf-8?B?S2V4RUlZOHZYQzFTM1FENm85SnlOOW1aYmg0RFBOZTUwdUhycm1OY3RrVXA0?=
 =?utf-8?B?OWtKT3hMaVp0S2dWbUhLUWgwRWs5Nlhtd0JPaXZqNC9Ic3oyblQvRkJTYXZ4?=
 =?utf-8?B?QUxON0FJRHY3dVlkWkRtZEJ6WTdDMGJiZ3RoTnhWa2ROTkpxNFdpV0lXVk8y?=
 =?utf-8?B?ZWg1M3JIQkNXTUoxWENuODlYNjhDSjFzTGNxbmNvQ0dwc0pBdHcvcUk3MEc3?=
 =?utf-8?B?dUxLSHVDb2NReFhINUhrYTNaT1dUa0ZCbnorc28xTFIxRXA2QUt5d0JvSis2?=
 =?utf-8?B?ZVY4Y3pIL2ZNNVV4Tk1TdUU0aTBicmpNOUVxdFhIazk2b1JBYklJbWJxVFFJ?=
 =?utf-8?B?M1YwNENxbmZNbUc2K0VJRTd1VWtCU3Z6b25helI1clMyOXYvZ2o4TzZhRGcw?=
 =?utf-8?B?QmlEdnhGQWk1RkJLMTRab1g4alhXTExQTkk1ZDhCY01BSFUrdnpXOXNiL0xi?=
 =?utf-8?B?ZU5NWmlmTGxOYmxCeXJTZGtlRmt3QkhReEJoVGp5L0kwNlRObU1DWDRBMjV1?=
 =?utf-8?B?R0dGTDFqeEZod05LSERYSW1zTm83R3RVODNxYTBqeGpMYVNoV21DZm91bHM5?=
 =?utf-8?B?S3BGNHh6akhEWkxBOCtxRHF6K2tGRVNEQS9qRGkxNTdoV0J0UTIwcjY5UFpD?=
 =?utf-8?B?cis1ZXpSSEJSZEVZR3RMTmIzRGcydEllemNJdUthTU9ua2dXRmFhU1FhcENy?=
 =?utf-8?B?UWtMbmQ2eThPc2hDdmhHTGNMV3dHQTJkc29CZmd6QjhFdjZEbmtNYkZ0MEtw?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 63781b64-9f09-4f31-1f58-08dd830d447d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6310.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2025 08:51:56.6058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ax158dVX7l4VJKJX+DFd0MKvrBPNJIi05cZdMl/wGoioNeLH0ISBMwcC2YgbTtpM2MJjeiD4p91Q/KgYqH7WTbnoUdYskK7W+NjmQoZ1mcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745484728; x=1777020728;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CRasNfRi9Oj/c+53Om0ck2cpNRBd6ZYp1lWXql9+/jc=;
 b=II7brK2p/qcESdNfVnAPLgb4DUHK3FD0trAo40aEjtTHZC5l80FjwPAW
 7ZnE2WbF0G+83b1LwuOrHx36ktrJATgx5JMMPTT1YGuRCSVW/z/Jmk9vG
 XMwA4gEPtm/oHBosz10YOVDvONolOvChplRPphnwUj35BmMNiqFNITnMM
 bJPX2urE1ggDEo+hRyg+9zuTi9FRDYrYxCtEUAZ2AH2hT4W+mV/vfdez4
 heLhPL3ukh1uDFb/pDJrZeH60sseeknhw6hJDijcl/9JRVOmy4Y8XxT62
 8VUp6IF0BCd+MUOgabw17uAWuWOKgRdUvaRl6HwK+w3m+HqDhAiviT8IF
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=II7brK2p
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 2/2] igc: Change Tx mode
 for MQPRIO offloading
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

On 21/03/2025 15:52, Kurt Kanzenbach wrote:
> The current MQPRIO offload implementation uses the legacy TSN Tx mode. In
> this mode the hardware uses four packet buffers and considers queue
> priorities.
> 
> In order to harmonize the TAPRIO implementation with MQPRIO, switch to the
> regular TSN Tx mode. This mode also uses four packet buffers and considers
> queue priorities. In addition to the legacy mode, transmission is always
> coupled to Qbv. The driver already has mechanisms to use a dummy schedule
> of 1 second with all gates open for ETF. Simply use this for MQPRIO too.
> 
> This reduces code and makes it easier to add support for frame preemption
> later.
> 
> Tested on i225 with real time application using high priority queue, iperf3
> using low priority queue and network TAP device.
> 
> Acked-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>   drivers/net/ethernet/intel/igc/igc.h     |  4 +---
>   drivers/net/ethernet/intel/igc/igc_tsn.c | 20 ++------------------
>   2 files changed, 3 insertions(+), 21 deletions(-)
> 
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
