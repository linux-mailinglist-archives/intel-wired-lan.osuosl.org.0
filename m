Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D60849B6D8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Oct 2024 21:23:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8234B60593;
	Wed, 30 Oct 2024 20:23:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id P_kzSMZOH3RP; Wed, 30 Oct 2024 20:23:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFA3A6082A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730319819;
	bh=vUE73th7F8OPXYya0EFEiJslZ3uw3uL/Ozw6OG/ues4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=MyPq9qsSJ/mvEHqzeTZo/2UUTYVw3F2Kj+7I3eMsxOl/JvURWwmx2W38NrlJ8kDcl
	 5SWmAqclTAHsmZ6V1Vyi9B9oqSCb9MKByf0BC/s5HdOc65l9YAIn1ESj1a2QRtIWpx
	 Iyii2gm6A5uCtLH+Ut91o1DMfyoToGzo4xrvfzLq6Dq9RWm4YlPxVycY6CYeVA6zK7
	 0NBiyjJNlSBnGfF975Fm6lTzRQ/VKfMOAqIv9x/ULXjvffEFTgUubpKl7VOwLpuH7h
	 ftumbw+ewUxWokYF3h7AO4N8PmfmN/8aak7wDA/4hUPD51UTZSjQUmhGvEh21r5GPZ
	 PNg68Sns46oQg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFA3A6082A;
	Wed, 30 Oct 2024 20:23:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id C4540494E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 20:23:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A425140165
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 20:23:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QBZmKqJ2jtaR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Oct 2024 20:23:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 985B540100
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 985B540100
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 985B540100
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Oct 2024 20:23:34 +0000 (UTC)
X-CSE-ConnectionGUID: grpfsMSvSO618E/kADKDyQ==
X-CSE-MsgGUID: YdU4E5ngSoO3QJfLEsGqsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="41142242"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="41142242"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 13:23:33 -0700
X-CSE-ConnectionGUID: rRu1gNpIQKy+Z1HQuCzAGg==
X-CSE-MsgGUID: 4QXD5QD2TL+f5TQa3M/5bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="81970055"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2024 13:23:33 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 30 Oct 2024 13:23:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 30 Oct 2024 13:23:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 30 Oct 2024 13:23:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UXYGMxVocSjzBbVofQf0/E66LA7JDddloUZNo0IamwY9E8LPsOJAvUnF18G9ND3FArZoCqAmjiL1OaUuOv8Ey8Deg7Gh6XVUv1V5oj00aNOJV28T51DxqmxQ8G68SZfgGV4/0LUUggV4UEgAdIawtCotyusDqml3V+bh9lU208yqj698iYe3zmJMhFuzuYbUOFQzddOET7kBtf8QeImPFNpC7gDDSUnOcFl9DHL6ouVwKoa8MOFK3rduYo6h2U1sLNj5dmCo8foP7VN84KfQMP2QqW7yW62P+m88Chwf4PqWZm+p8y9X4td7/OJP+Pt0kgM2kSVXTjH3Cfe8cJ1XNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vUE73th7F8OPXYya0EFEiJslZ3uw3uL/Ozw6OG/ues4=;
 b=HfhF59+rPtI9R36x3N73FQiPpcM9kx7/Sbgxry2ONAx3niNCMBBUwOViYhMonEt+xZeXbro+iZNGzHQHETPAK1+yjNOW5s0G/tq8itV0CJo9d7H5E9HPzCQ4sQCtJ+nQBNk/XLJ9ZTmt8v9L+Vn/dVZZVU6o+NJmAQ53/wGIfLX3Pnw9FcHtcCvPyVoJQoUkvIF9U2vfFheigs4AGn3ujyLJ8hcIDy8l20Sc+AHT6ITfzqcVubVF7aJbDc3Cb/iFTIqXYxBXPtqv/Adggp5LmclDAWNTxzsCk3cQuL6lf86f/AlbbjrHqokCGcV80Nb2bXPwUcRuKIT/Z+WN0saXDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV3PR11MB8728.namprd11.prod.outlook.com (2603:10b6:408:218::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.24; Wed, 30 Oct
 2024 20:23:22 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 20:23:21 +0000
Message-ID: <cd6b6dd9-1d07-4951-b052-b2bc03db4d5f@intel.com>
Date: Wed, 30 Oct 2024 13:23:20 -0700
User-Agent: Mozilla Thunderbird
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <pawel.chmielewski@intel.com>,
 <sridhar.samudrala@intel.com>, <pio.raczynski@gmail.com>,
 <konrad.knitter@intel.com>, <marcin.szycik@intel.com>,
 <wojciech.drewek@intel.com>, <nex.sw.ncis.nat.hpm.dev@intel.com>,
 <przemyslaw.kitszel@intel.com>, <jiri@resnulli.us>, <horms@kernel.org>,
 <David.Laight@ACULAB.COM>
References: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20241028100341.16631-1-michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0169.namprd03.prod.outlook.com
 (2603:10b6:303:8d::24) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV3PR11MB8728:EE_
X-MS-Office365-Filtering-Correlation-Id: 4793109e-1236-4d4c-4314-08dcf920b2f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmE1dEVpdE90MlhMcTFmd211WGljSWk2RGhTeUJScHErK053TzFiUW83eVZ0?=
 =?utf-8?B?ajkvQlZweUVXZmd3WkJoZExNT1dEd0VuS3NZZGdaZStoSkUvWUhGK24rbit3?=
 =?utf-8?B?TFE3UW5iREFrakw2K2NPZnhLRjhoWHJYN2hxOHJhb2lEZFJXY2RMamNHeWY5?=
 =?utf-8?B?LzJLM01KR0xhQmYwUTZNMUgwbllIWHhRWXZ5V1pYNnUzYWtxMWxlc1BPTHNu?=
 =?utf-8?B?ODJhajIxalU2cmxQMGZKc2RPRnFKSXhCNVUyemZ1a0gxWXR2ajRvYlFlVnNP?=
 =?utf-8?B?NFRWcE1YdEpjK09DOUNCZVJsMVUzZWZCU3JpUFJSbm8wQVBaNmUwaHFodVp6?=
 =?utf-8?B?emJ5cGNldEZxOHhxdVhBejRkeVBPd3M2UXozQjdaQTdwSGRDeTBDSGxUVk43?=
 =?utf-8?B?U2NpUXF2ejd0RjVrUTBOQ0NzWWVsWm9kTHh4WXU0RGR0bmFMb3hzQThvMzJ5?=
 =?utf-8?B?c2duRmJITEFBYmRDbzNzK3U5UmV6SThWdllxMktBaEJJaWFpcXBwQSs3VTFN?=
 =?utf-8?B?YmREZXFyVlZmVWU5bFR1VWxpajJMUnNYdHNtbkZIQnh6WWpNOWpJM2VqWmRI?=
 =?utf-8?B?SVZxZ2RYSmhtNXdpdnVFSUxFTkc4a2N5M045d2c3RWtqR1VKMGhrRGF6WDRu?=
 =?utf-8?B?WDJhZEEvdlJ6YzJwdEJnYTBTRjlmQUpjV3RuaW9Ia1BLUXhKNUpVN2I1MnBZ?=
 =?utf-8?B?cGFBL2VtUTBEVUloTFFjM0ttZkJlM0lsU2haY1RCUDZUUURlWnlNbmRPelRo?=
 =?utf-8?B?V3pDQ1F3MUZRNUgvNEk3aEtGY2ZXcXZUWEtpbCtqWHhyNDI0WkdnblVMR1l3?=
 =?utf-8?B?dGovKzI3N2J4OTV6QXMyK3BvTExFUm1YN3hIL3I4TlVtM2g3SnlCTjRRR0JB?=
 =?utf-8?B?Q3FkUTZjR0Z2SktJZE5Xb2xJdHRrQ1ZWR0oxV1hmWCtiV1pSc1ZFS1Uyd2tv?=
 =?utf-8?B?c3c3UnR3dXM4Q29CUG9SVVRvbXlweE1IM0M5WngyTmJkSDEzVFhqL1k1a3dB?=
 =?utf-8?B?eHlRaUJYTWw1SUhDMkwxWGszVDU2MytsWDlLam9QMEdPdkZtcElJeUM5RlRO?=
 =?utf-8?B?WFBmQXVmaWlKWUVHYkZOOHpXekY5RGpaRTBWTEVhS29MVW8vcFdhWElmdHVQ?=
 =?utf-8?B?UlVleDFuWjRQdkdvaGFDTUF6Tmtjemlud1JaUENrYTRDZnYybXFqcjJDVmVW?=
 =?utf-8?B?RUVTb1gwTE9VK0RYYmsxcDVFVUNzYnV0N25WVVZEbkI2cnYrVklsSXdHMGFL?=
 =?utf-8?B?VFJyZ2Y3T0RPaTdGZmw1cFlUNmx4aTBzL2FPcUlBRTU0TWV5V1prSUtJenlF?=
 =?utf-8?B?WmpHOGJ1TWpFMlBlVXFreUFyNHFsc1AxKyt4dlNoWjRjaWE0alpsZ2lLaDlt?=
 =?utf-8?B?QW91NXR0MjhaMU9LQnVaVmg1SkZoaDZmRm1MMUtkTCtvN3d3alQ1VHE2SjF4?=
 =?utf-8?B?cG1XK0xqZzVTWFV4RThVOTVsdGtGVWkwLzVkVWZNZkdyTWFXY09GbGJQTXMy?=
 =?utf-8?B?Si9nTDhDRkxRd0NvR0tBMTJBbDNUbnQzZXVSdDNSNWJkdXU5M05USGM2U2hP?=
 =?utf-8?B?Y2p6bkJsVjh6SzRKK09OQUJvYU9UWFhlWHFnSUhWb2I1dU9uOXB2d0luWTEz?=
 =?utf-8?B?QUYySllNekVBdDRjVytRdktCNkZWcnNHK1QwOThFNlFKVS9JUVJOd0Z6RkVJ?=
 =?utf-8?B?OG9vMGg3dTJ3Ris5dm5VZ2lNRm9FQXBCWEY3T3RtV1VZWm90RHpMa1ZnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDEwckVvbU0xUkQvRThSYXJ5a1ZHYUh0ODBrcHM5cHZtMXBSUTJ4OVc3dG5h?=
 =?utf-8?B?ZVNDWnUrM1RmZHpXdDUzTFc4aGtFT041UU8vMnN4YUUrWUN6Mi9wY1ZCRjI4?=
 =?utf-8?B?d0RRejdwU2VVN1BwQVRqcGlZZGVHTENBM3I2Mk56am41RmZNRmcwM1g5MVI1?=
 =?utf-8?B?dXNTVGtveDY3SFdWQVR3UU85RFl5RHNUTTlPZS9jUVRHS0NKaTZPU0sva0ZF?=
 =?utf-8?B?L3phSEZYM083azBEV3dTSk54WklqQ2F6WFhQSzNkWlhGUUVrT3ZMcmp0dkNB?=
 =?utf-8?B?dDZ1eUN6NXM1citqS2VZYW1zZTUyTjJTMG9mZGFIYmt6ODcyZlNZd2lNdCtI?=
 =?utf-8?B?bXFGOWoremgvQjhRRHF4aDBlU2JRTUEyWWw4eTkvNUthNUk1RnRPanRUbEcr?=
 =?utf-8?B?dlVXaEtiNklIa1k1NExFT1l6ckw3RVI4L3N1aUhwcGlJYXhZc0lBQndQOSti?=
 =?utf-8?B?Q2s2SW5rQkVmeDE1eC92MXM2WGtTRUVtMEQ4S0xLdUU3Q01jS1gxcFp4cGFi?=
 =?utf-8?B?RE5LV3FrOC9UWDFDQ2E0S05oZnNvZFpETnNTaWw3VEFaY2s4QmRLUVhoL1pF?=
 =?utf-8?B?UkxWR2hYeElUbEVyZlI2RkQ0N1pncjhBcmtHcFhCZHQzUXhTRm5WSW9aY2Vn?=
 =?utf-8?B?UzBvMDdiSWRDdnNxdWpicm1Id0FiaU5EL1d0NVhNczlLVkpZb2VYMXJWaTY0?=
 =?utf-8?B?dEVleVlSS2VTU0dGTkhxbzlHbTRjWjViVlJzWlBsTGZTZ25lMGxRcEFhcXo0?=
 =?utf-8?B?UGJBKzZtWVNsd1RSWmlpODlLNjQzVDVxYUVLVWVzWjlZSk9DTGpDZi9nRmNR?=
 =?utf-8?B?TEhrK21XVXBNbmxvUkR5OEhPbURvZTU5S3pnYVpURytVYmxlckJFbUgySXFC?=
 =?utf-8?B?a25LMDZqWkcwem5hOHZLZ251SXJJaTh6dkN3bGJUYkJKclpBeWpVTUswTGd3?=
 =?utf-8?B?dVlLbHBnVGNMeGp4dUhuWlVoVUt1cTRGdHBTQWxOR0xUQlpzejdoOG5jV0do?=
 =?utf-8?B?YTFIcTRGdEJySUNNR2M0S3lMSklqTlJDZmFMb1BKTEFHelVNN09MdkYycFNa?=
 =?utf-8?B?STlQNWdXUldkUWhaVWxTaXcwOVVXbVZFTEFURVZxeFFOZ2RSb20zRkpoZDZs?=
 =?utf-8?B?Q1g2ZWhyaUVidWladEU5REFWQlI2UFBVT2s5M0x4UWtyWEhERGFrMDZGY0l3?=
 =?utf-8?B?T3RqM3d1VU5kTjhyL3ZIbnh4Z0hOeDJ3cW5BRjhUdUJmSC9FT05DYWY2SFMy?=
 =?utf-8?B?Nlo0WGszOEtPK3JBb0lGaXcwd0x2WndTMEVHR04zbERIMXNySmtLandwZC8r?=
 =?utf-8?B?RG5DbFJSWm91OGVzeHN0NmMzQzhVVHh2WjhuazNFaGYyRkQxZTR2SDV4dy9L?=
 =?utf-8?B?bXNxN1B1RE5tRnBybG0zNTdkNC9aMmFsc0JKM3B6YzBVZmhPTnFGY0ErUFE0?=
 =?utf-8?B?R1Q5KzIzaTJKcUlsYW83dzU1elBmWGU2WktTZ2ZVcmtBUkZrS2RseFpzbndi?=
 =?utf-8?B?WGIwTVB4RE12NW5iNzBGMk10cHJGcGFzbkNyODFFYWhJQzFOYkRXVkxNTU5E?=
 =?utf-8?B?YmUwRFpvaU5PaEpRZnQvR1ZQVm1LSGpVc1h2RGRCYnMwRFN5T0E4UEVzY2hW?=
 =?utf-8?B?U09TZ0tScldVaHBnVU5NZmlTTjAwY3FoT1pwWVcyRzh2ZTFEc1lHbjc4RWZQ?=
 =?utf-8?B?cGNiNUp6d1R1akhWUkRydktoS0lhTmJvNzZVMFJkdVc3QnJkN1NmVEplVzBP?=
 =?utf-8?B?SXNiQ3FtZFJyVjlaT2JsdGRlaTNmcW5tUy80dHVHZDdNYUdyYzNPOUpxSTFv?=
 =?utf-8?B?ZlVwOWZ4b1hlVVoyK0oyNTB5cFdyenU1MkJEajNQelo2RjlBQ2NyUzU4UjlS?=
 =?utf-8?B?N3RUcVFTbWN3NU5oMHhIbDExZ1l5T3FZUXl3V0twRFdESDU2ck03NzRLL0xL?=
 =?utf-8?B?aTRHd2s0Y1RjemNrM0dsNmlEaUZwSkZDZmRadUJaOVlNMjJWS3VpOHRmSnRw?=
 =?utf-8?B?Y2dLYTJOT1o3TGVpQTRTYVdkYXdRa2FzNHRTLzM2eHIyNERoV3RITHpHTWVD?=
 =?utf-8?B?amlHelgxRXFYNy92RGdnNTlxNW5nazVXWVFtZ3B1dnhsTWdaYkZVaXEySkNl?=
 =?utf-8?B?NTZmeUlEZEJLS3pVd2RleXdXVG84R2NQSVpHQ3RyWjVLKzhyRzg0Y0hOK0pE?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4793109e-1236-4d4c-4314-08dcf920b2f7
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 20:23:21.7885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HqV/5TM93GimVolqe+ipk+wgJq/kshtHW9lPTQBVJPRntP0SkQj6FQ/CpHc3S4Ds/yfJVzCzueRoSWFpBXoiQnaBOiQb2P87CtCbI7UhN9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8728
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730319815; x=1761855815;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1XJGR/Ijn9GKr2IrUe+kffy0F6AxSkEyaY++iGySxMY=;
 b=Yufoy24HnuFfKSqpKgfuQclt2EzXGDi0WyDHsER8kwdFurOxhAHOWLMW
 h6zI9lT5hJVGEyWfdEDCfK5q7w6i/wfcrL5gZwHjH0zpUZQGj77SErbGJ
 4LO1QV7ziPWQXdlsalKCiORT2xf7slQbr1W+O8oTVZ0Z/Sjk11ZCwIxFO
 DDHJAm2uvrzhbaAr/9NghMuY7c0dHN8xJ0YdmuX1WWHLUEdqZ2YljmN/y
 PP6Z1+AHegZTvqV+IOxqpr9TGtCEXspswZm0NhBNuuuQ7Vy6S0UpspbtU
 JpRUb99K5Y3SzE1hCZkwczoqjpqhTds19a/wZgL8j1M7qsTFUmGREoh/X
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Yufoy24H
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v6 0/9] ice: managing MSI-X in
 driver
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



On 10/28/2024 3:03 AM, Michal Swiatkowski wrote:
> Hi,
> 
> It is another try to allow user to manage amount of MSI-X used for each
> feature in ice. First was via devlink resources API, it wasn't accepted
> in upstream. Also static MSI-X allocation using devlink resources isn't
> really user friendly.
> 
> This try is using more dynamic way. "Dynamic" across whole kernel when
> platform supports it and "dynamic" across the driver when not.
> 
> To achieve that reuse global devlink parameter pf_msix_max and
> pf_msix_min. It fits how ice hardware counts MSI-X. In case of ice amount
> of MSI-X reported on PCI is a whole MSI-X for the card (with MSI-X for
> VFs also). Having pf_msix_max allow user to statically set how many
> MSI-X he wants on PF and how many should be reserved for VFs.
> 
> pf_msix_min is used to set minimum number of MSI-X with which ice driver
> should probe correctly.
> 
> Meaning of this field in case of dynamic vs static allocation:
> - on system with dynamic MSI-X allocation support
>  * alloc pf_msix_min as static, rest will be allocated dynamically
> - on system without dynamic MSI-X allocation support
>  * try alloc pf_msix_max as static, minimum acceptable result is
>  pf_msix_min
> 
> As Jesse and Piotr suggested pf_msix_max and pf_msix_min can (an
> probably should) be stored in NVM. This patchset isn't implementing
> that.
> 
> Dynamic (kernel or driver) way means that splitting MSI-X across the
> RDMA and eth in case there is a MSI-X shortage isn't correct. Can work
> when dynamic is only on driver site, but can't when dynamic is on kernel
> site.
> 
> Let's remove this code and move to MSI-X allocation feature by feature.
> If there is no more MSI-X for a feature, a feature is working with less
> MSI-X or it is turned off.
> 
> There is a regression here. With MSI-X splitting user can run RDMA and
> eth even on system with not enough MSI-X. Now only eth will work. RDMA
> can be turned on by changing number of PF queues (lowering) and reprobe
> RDMA driver.
> 
> Example:
> 72 CPU number, eth, RDMA and flow director (1 MSI-X), 1 MSI-X for OICR
> on PF, and 1 more for RDMA. Card is using 1 + 72 + 1 + 72 + 1 = 147.
> 
> We set pf_msix_min = 2, pf_msix_max = 128
> 
> OICR: 1
> eth: 72
> flow director: 1
> RDMA: 128 - 74 = 54
> 
> We can change number of queues on pf to 36 and do devlink reinit
> 
> OICR: 1
> eth: 36
> RDMA: 73
> flow director: 1
> 
> We can also (implemented in "ice: enable_rdma devlink param") turned
> RDMA off.
> 
> OICR: 1
> eth: 72
> RDMA: 0 (turned off)
> flow director: 1
> 
> After this changes we have a static base vector for SRIOV (SIOV probably
> in the feature). Last patch from this series is simplifying managing VF
> MSI-X code based on static vector.
> 
> Now changing queues using ethtool is also changing MSI-X. If there is
> enough MSI-X it is always one to one. When there is not enough there
> will be more queues than MSI-X. There is a lack of ability to set how
> many queues should be used per MSI-X. Maybe we should introduce another
> ethtool param for it? Sth like queues_per_vector?
> 
> v5 --> v6: [5]
>  * set default MSI-X max value based on needs instead of const define
>    (patch 3)
> 
> v4 --> v5: [4]
>  * count combined queues in ethtool for case the vectors aren't mapped
>    1:1 to queues (patch 1)
>  * change min_t to min where the casting isn't needed (and can hide
>    problems) (patch 4)
>  * load msix_max and msix_min value after devlink reload; it accidentally
>    wasn't added after removing loading in probe path to mitigate error
>    from devl_para_driverinit...() (patch 2)
>  * add documentation in develink/ice for new parameters (patch 2)
> 
> v3 --> v4: [3]
>  * drop unnecessary text in devlink validation comments
>  * assume that devl_param_driverinit...() shouldn't return error in
>    normal execution path
> 
> v2 --> v3: [2]
>  * move flow director init before RDMA init
>  * fix unrolling RDMA MSI-X allocation
>  * add comment in commit message about lowering control RDMA MSI-X
>    amount
> 
> v1 --> v2: [1]
>  * change permanent MSI-X cmode parameters to driverinit
>  * remove locking during devlink parameter registration (it is now
>    locked for whole init/deinit part)
> 
> [5] https://lore.kernel.org/netdev/20241024121230.5861-1-michal.swiatkowski@linux.intel.com/T/#t
> [4] https://lore.kernel.org/netdev/20240930120402.3468-1-michal.swiatkowski@linux.intel.com/
> [3] https://lore.kernel.org/netdev/20240808072016.10321-1-michal.swiatkowski@linux.intel.com/
> [2] https://lore.kernel.org/netdev/20240801093115.8553-1-michal.swiatkowski@linux.intel.com/
> [1] https://lore.kernel.org/netdev/20240213073509.77622-1-michal.swiatkowski@linux.intel.com/
> 

This version looks good to me! A lot of great simplification here too.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks,
Jake

> Michal Swiatkowski (9):
>   ice: count combined queues using Rx/Tx count
>   ice: devlink PF MSI-X max and min parameter
>   ice: remove splitting MSI-X between features
>   ice: get rid of num_lan_msix field
>   ice, irdma: move interrupts code to irdma
>   ice: treat dyn_allowed only as suggestion
>   ice: enable_rdma devlink param
>   ice: simplify VF MSI-X managing
>   ice: init flow director before RDMA
> 
>  Documentation/networking/devlink/ice.rst      |  11 +
>  drivers/infiniband/hw/irdma/hw.c              |   2 -
>  drivers/infiniband/hw/irdma/main.c            |  46 ++-
>  drivers/infiniband/hw/irdma/main.h            |   3 +
>  .../net/ethernet/intel/ice/devlink/devlink.c  | 102 ++++++-
>  drivers/net/ethernet/intel/ice/ice.h          |  21 +-
>  drivers/net/ethernet/intel/ice/ice_base.c     |  10 +-
>  drivers/net/ethernet/intel/ice/ice_ethtool.c  |   9 +-
>  drivers/net/ethernet/intel/ice/ice_idc.c      |  64 +---
>  drivers/net/ethernet/intel/ice/ice_irq.c      | 275 ++++++------------
>  drivers/net/ethernet/intel/ice/ice_irq.h      |  13 +-
>  drivers/net/ethernet/intel/ice/ice_lib.c      |  35 ++-
>  drivers/net/ethernet/intel/ice/ice_main.c     |   6 +-
>  drivers/net/ethernet/intel/ice/ice_sriov.c    | 154 +---------
>  include/linux/net/intel/iidc.h                |   2 +
>  15 files changed, 328 insertions(+), 425 deletions(-)
> 

