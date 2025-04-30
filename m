Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 00D87AA564D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 22:59:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E74540806;
	Wed, 30 Apr 2025 20:59:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mETSEiEVe-YH; Wed, 30 Apr 2025 20:59:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A7EC4097A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746046748;
	bh=Y7/x/QeRluuiKXeKH++TJ6VMgr1W8YCDsn/YkPMa+0k=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P13nppOcOyAqAI68YQ22Q9b0JmJmnXE+VvKu6l89q/ohl4fbZKj3luIDpgcUPIe7y
	 rcNvsHmAesViAX0EXaaWPqjxsflHU+Qwfvp1wZ9YMVY5hQKKr7kshzZU8N7eznLXGZ
	 Tq0weZH/aZk5LwM3PMuTlhY8tl9+/WmUL+OmwNBMKoPEJjbofDb26MTY3gImzeOs0G
	 5MTKSwjhOQsxgJOH+ba6u7p2s8VjJVzBXDTvv1ceq1/SzqbZLSuiTbnxMAQbOzBVh3
	 /5bd3Ycv4dVY/Q9FWnOKwYkUEwLaQSDGXFLExDbmDKOgrCUhmmvfiuOZ0rXk/6GxvP
	 rivwCRoPJ/yuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A7EC4097A;
	Wed, 30 Apr 2025 20:59:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4E8CEE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 20:59:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4114C403A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 20:59:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X3vrPhoRfe-X for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 20:59:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3F5044024C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3F5044024C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3F5044024C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 20:59:05 +0000 (UTC)
X-CSE-ConnectionGUID: DXlNX/pnQH2XfpHg1MGgMw==
X-CSE-MsgGUID: JbzReO9oT1iq63Upk6L2ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11419"; a="51389404"
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="51389404"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 13:59:05 -0700
X-CSE-ConnectionGUID: kDN5u0trQVSQyQC7D5x5tQ==
X-CSE-MsgGUID: YXDupNVzTY6/J1fGeckKzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,252,1739865600"; d="scan'208";a="138250185"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2025 13:59:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 30 Apr 2025 13:59:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 30 Apr 2025 13:59:03 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 30 Apr 2025 13:59:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Rx6zHhNFxGSxpLWZkWV6DbeyfnYLrzGxmw9PVsMd5GXtFDtJS4QP0Ryvm/R6xz8K2SAsC5U1tDGd58dh9le7AchxpDvP+3PGXEWJyb0+LjKNnkw5s0COlmNa065sQ/eJSvTc9edALZNa0pIFJOHtet2edNv7JeoB3aaSJjE2cD2LVsuywxK3rHOVyXJk4lh+sCv7snccBlOhRQc97nz3lsg2+wObaprgb4SmKsYtjHL8IZUMy/jSoveq9fsAW607UbwUbl7L0uBBLg+fEM6NUut02PAh3j/ywLn4RT814xD6R7IsyqHXYRpjLspeYJsRlBpsjr4W8YvwQ8RqxU6f6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7/x/QeRluuiKXeKH++TJ6VMgr1W8YCDsn/YkPMa+0k=;
 b=Sz2qjfhW+EpLxlfbtICFHafEcSdwYStuNVjeJTfHInq/9OLrJMq9jyD1leIz0TcHRUg4n5y3336nlo3wpeQ71gCahkabtjMY5ciiUACg9LAqJ6RPnBpCa4zs/z9QYp04XtWgJU1acJv07GFL1gW6kWa34f07q4POAKXFyxfSpkF5hwUnO1z73KU4UFLN9ujt7Rv5tdlGQ6+ChM6++JHz4lG6keb3U8LRpWi4lrEDmvi5QavqCePN2utBH+hueCEElBxx6Hl45bZQ91VAH9+/p+C61aditrUk88LAXNl2El1Xy2A1HizOdVx83MOlL1XUqeLEAbcznCwK7eKAipP2kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by DS4PPF2AD6B04BA.namprd11.prod.outlook.com (2603:10b6:f:fc02::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.21; Wed, 30 Apr
 2025 20:58:42 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.8699.019; Wed, 30 Apr 2025
 20:58:42 +0000
Message-ID: <10e3639d-0d2b-4fbf-bc16-4333be7f4485@intel.com>
Date: Wed, 30 Apr 2025 13:58:40 -0700
User-Agent: Mozilla Thunderbird
To: Brian Vazquez <brianvv@google.com>, Brian Vazquez
 <brianvv.kernel@gmail.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 <linux-kernel@vger.kernel.org>, <netdev@vger.kernel.org>,
 <emil.s.tantilov@intel.com>, Josh Hay <joshua.a.hay@intel.com>, Luigi Rizzo
 <lrizzo@google.com>
References: <20250428195532.1590892-1-brianvv@google.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250428195532.1590892-1-brianvv@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0186.namprd03.prod.outlook.com
 (2603:10b6:303:b8::11) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|DS4PPF2AD6B04BA:EE_
X-MS-Office365-Filtering-Correlation-Id: 2f4b300b-2b24-48ca-964d-08dd8829ca46
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MzVqdUJJd0gwSmxML1R4eUhmV05jOHBlNS93OUQ5NVNoQlpxQlNuSTdHdXFL?=
 =?utf-8?B?anA3L1EyS2JzWWlTRGdDR1I1VldlR0JhaCtpdzZvV1JDQjFMZnUwTHhJS09G?=
 =?utf-8?B?eXpSc3RhV1BEbFM1Y1dLbW11Qld6aXVFT1luVFNIYStWTTVjamFvdFhlbC9C?=
 =?utf-8?B?STRaMEgxbmlDNklTV2hvUkYwclpEYTJsc3NVT2NJTDM5YmpBL0pYelh1aEdu?=
 =?utf-8?B?OTZkckxUbTAySy9MWnc3enNiTzV2VndRc0xHNDNjdHZlY21yTkU4MDczZDdo?=
 =?utf-8?B?Mk1YUGk3TkRZSDZlVW1hMzNIM2ljMUltelFZQlZWUXFlcDI5R29XSSs3ZU85?=
 =?utf-8?B?V2RMaHB3SUVsVHZlRWhFZXJzclN4TzBWNUc1dFZQMm9wOTZDdkYvVVJaVS9U?=
 =?utf-8?B?cTgyV0NSckZtSkNjaHY0V205TnZrQTFmNklqL0RSY0tPdURBMjNXTlRKMUFv?=
 =?utf-8?B?elN3WXQ0WlZoR05QZTIwTnh1WWh5dzNURTlmVEx3aHdEekdVUTM3TDlJQXIw?=
 =?utf-8?B?Z0JpWGxYc0ZRL3hNd2ltamxHU0lDcC9XQjByZmFNb242VWRpTSt1UDVBNEs3?=
 =?utf-8?B?a3NxK1pNMGV4bys5THROaFBXQjFqcWVBMmJtdmxlYjF4My9PY2hLRjJaSFhM?=
 =?utf-8?B?TVh4bythaUVNWGo1RnZwSEUrakVBMzlWVUVnajVBMUlhSjRUSU12eHJxM0V1?=
 =?utf-8?B?NmN2WFlENjdocFp5MU1YOGN5bHNic1oydC9QRVFPQlNhTnJkR0VaL1lWb1Ro?=
 =?utf-8?B?ayt5Nm15REdJOHd3a3djNit6VFJUc1dGTFF5YmdldnI3SEZSYkRKVjdyTndQ?=
 =?utf-8?B?SElDR29FVW1pT0V2ODZoS0ZNOWZIV0pQTDI0Y1N2RWRDeTVVWkgydFMrUFBQ?=
 =?utf-8?B?Y05yMVArOWNjdzlFUGxuMVA4V3hNU241eTlHN1dnYzJuanUzVUpWRi9vV3Aw?=
 =?utf-8?B?MDZZaGZraktobHB6ZGxLU2cyQ0VVdGRGbEZkVkp6bTlRa2N5YitsYVJvM2VE?=
 =?utf-8?B?ZDRmb1ZIVXhIREM4WnBCdjRRTWtXMWJydk9VSm5RRFFUUGVURUcrTHVMdlZi?=
 =?utf-8?B?OVNVeFNUQ2taOHBDOHRlWkpIZk5qeGwzSXo4aDVFSmUvTGljeVlLV3REQjBW?=
 =?utf-8?B?MEdUTVk2ZStuS1V5SUduWVVCMmNTdGd5eFl1SWRQMXp3UklWb285SWdKNGNP?=
 =?utf-8?B?NnlGVis4Y3VYSlg1VXVNMmZTbTZ5WDZsSnNDc3dOM0MySXVaVTlsV2ZvNDJ3?=
 =?utf-8?B?OC9tWlRIWXAxRnFMdmZqZFZUS2ZoQm1ZRnB4RzduRTg5aWEzRm1ubVNhQVd1?=
 =?utf-8?B?ZThtd0RKc1Y3ZHdBMzRLN0QrNTh0Z2p1Y2ozY2FMRENzUzVGMko2T1IvZ1dE?=
 =?utf-8?B?NGFKaktaRWgvZ1MrZ20vRk1SaVY4bmJkRUNiSUNXYkhIMXpmcm5oM2lRWUVa?=
 =?utf-8?B?QVgrZEp5UUYwNytRc0NPWVp5L0xNNGhCUTNFTEQweE9sbFo2U2JDVHFqRXdp?=
 =?utf-8?B?SHB6US9PWU9DZ0Ewbnk5dHBUZHR3aElPSXJwYW9qZUtJNDJBOVUxUVM2N0xr?=
 =?utf-8?B?cjlEUFI1SXBjeUxDNHpyWXFzYy9OL25GTThVKys1M3oraE81MUJDTkYzWkVB?=
 =?utf-8?B?RFJLUk4rd050dHY0VmxYalB2OGF1Q0w4MmJhby9qYnFMYTRQUDFKVHAwdm9W?=
 =?utf-8?B?Y0NFWnNYZHRxMjFIZ2hjWjh2VUVYOWx3ek9oYkUzdUd5YUFnMVZyckozdUxk?=
 =?utf-8?B?ZVpRcDlMcG9CRllYZ1kyeTNGSGRZRUtRTWpzb0xZR2xHZVgvOUlUSlkwdkVY?=
 =?utf-8?B?TmtKSlp3Wi9YdTExRnRxald1V0tPZnhTRC9EbmNZQkw4MXppbFp1aTZScmdB?=
 =?utf-8?B?N0ZGaVJsZGRhaDhnYWFUL1ducmNMMmtnc0d5bkJZdDJoa1E5aEhaRnNIa1FQ?=
 =?utf-8?Q?aEWF8Z/zBho=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWNWOUF5MTN1cGtnWGQreFcxd3RQNXVnRk9Zd05UbGF3L29WeDNKMVZJSVZk?=
 =?utf-8?B?aldwK3BwQmtMNmhjQk1RbXJOTDFrcFBTb0Q3dmN2b0Rwa3dTdVMrQmZKbnZp?=
 =?utf-8?B?dWZxVVh5K283eC9Ia25tRDdhSzFwQWNEblB0R2Noa04yRlFGd3FZZUxrOWJW?=
 =?utf-8?B?RnJUdGxzM2FOR2tSWHBHeHBhNk5CZ3NWOW5GckZId001Q3U1Q2NLY29kY1VX?=
 =?utf-8?B?Yk1tOGpuQ2NOdVhSekJmWEp4cUhUWkdCMHdwd084aU5UalowOE5VVXhLUVpN?=
 =?utf-8?B?T1Y2bXM5dDJhb1lHbERWZXFxaVlEN2NTWmZCZENoSi9kdjczL0FmTEpEVDlX?=
 =?utf-8?B?TlhiWjRORDVoT3g1dWtuV0ZuNXRvU0g0M0c2THZxdDZNSkI5U3k5R0xCcVF0?=
 =?utf-8?B?bHR1bldueXVJL2t2YnQybmx1MU9iRi9uM3ZnZHpmVktROS9KSThqbll3bitM?=
 =?utf-8?B?dGtGR2JYeEQreWlIc3lzakQ1aGVaa2dqOStSRmdSS21sQnJSWDVraFl2U2tR?=
 =?utf-8?B?aFJISnl6SkVUTjFDMHN5QzFPNmN0bjJ4SVZiV2V1Q0tzWHRITTAvK1UvRHNw?=
 =?utf-8?B?T1g0UlJiYURaZWZIclhnTG9lOFVFTFRKOVhlNkFPcmNsRXJrVnkrSkRSU2ZZ?=
 =?utf-8?B?ZTJSaUhqaERTUm55d1kyc25YUUlDMjVQN0gwd0RadTQya0VGYXBPT2NGS2hl?=
 =?utf-8?B?RW1hV3RoamZxUnZDZ21mVC9OWERUbkN0T25hcUYwMVNkV3NUandpWmpJY0ox?=
 =?utf-8?B?UmpJSlJHWnFWMzZXQmNTaG5McUgxcmpwaFpDSGFKcjlEc04zdUFrZE1CY204?=
 =?utf-8?B?UkwwdnZGYmVjLzdoZTBtU3FJOEhqejk1M2dndzJHeVI3eG00U21RWUg1RXRq?=
 =?utf-8?B?eW5jQS9ReHU4V1E0UmViYlFITHJDWm10K0FpVTBkVGJPeHcrU041amlPMkpa?=
 =?utf-8?B?MjFVTHJ4aGdkdzNBWXUzMkNsc28rZjBWYUIvTVNEdWNZbnhqOHdUVysrRi9I?=
 =?utf-8?B?NzcrYmY3Q3R3SFFRRnlxNFR6VVFnVjZSNnlMNVpGd0doMWtNZkwxYWV2TG1I?=
 =?utf-8?B?VHJRMmZHblFaOXlpSW50T0xFZFp1ZUk1MjZXSzhyZC82NXV4OUQ3MHlsOWJj?=
 =?utf-8?B?MndabmJDUFlpWUk2MDgzczd0cnB3VGZTdGRmNUNTOU8yZ2V2WlZWemxGVTNG?=
 =?utf-8?B?a3V1dXJObEl4YW9yRzdrWFkwdGhoZFJKbUxNRFFEQlhCaXNBejk0SXYvajBn?=
 =?utf-8?B?dlJoUGlBc1MrMVlEVkFjdkJERVRyNU8zdFNqejdVcEF5dFpYZ1pHdEZKRm94?=
 =?utf-8?B?VWo4WUliU2JQUFQ2QTNGK3l6VTRFeUtTOWNJb01CRllkV1YzajNDdzFFZFEr?=
 =?utf-8?B?Q2xZTnBSNFhJUWE2Mk1ZRkg4TWZGSSthc2JqQ2FKYzBzeDhHVzJaL3pzUGJv?=
 =?utf-8?B?ajZlbkh0T09SaUZSZUFGRXc0OTNrZTZHc3hQbG0zOS9hT055WTdoOC8xams3?=
 =?utf-8?B?Qkp4R2w2YzZHNlVNQUV1eGNZbmc2N1JkTXY5ZnN2U0lhblJ0bFUzY2ZOK25p?=
 =?utf-8?B?S1hvT1JYenk1d1B3ZG9IQ0xCVTVEUUFaTVZoZWx1dC8zdXNkVTg5cmRhYy9o?=
 =?utf-8?B?T0ZEMVlQNzRqRXR5M094YzdzWi82U25oZDNvZUhDYm9CY1hkc0h6WVF2QVRa?=
 =?utf-8?B?TWdRWGJZRnRzTHNPVmVVS2xqZHRybDVZMnZ3V0IybmFxT0dyNStiS0Jmd0xv?=
 =?utf-8?B?TVlCYk9HRU0zb3NtbmpuZy9wZFpLM2RWMGcrSlBBc3RWM284ZUpFK1l4d1lB?=
 =?utf-8?B?RHh3S28vZFEvL2dEbmJkTGh6UmcxZUx6SENUVWJIOXQ4NkFyYlNRMkFDWUhl?=
 =?utf-8?B?aVpnbGFCNWduSXllaklDVG1sMStxTGszbytiTnUvT1ZTU25BWjdFTzFYWVVu?=
 =?utf-8?B?VnREUlBWcGNXUlhpaFp2YkVLNzhacm15R0thRnNrbDNCdVFwdktRMUQ5QVhh?=
 =?utf-8?B?SnpEdnBxRko5UmtUUjZEMTgvNVBIY3VZbzhMN1JVb0E4ZHFJM1h5M29VOWU4?=
 =?utf-8?B?Z2ltQWVKeTFSWnNwSHhsaDBKSFI5RVV2bHU2bmtGVlJmZlE4STFRM2p4M1Bj?=
 =?utf-8?B?M25LK0JVUWtVN041RktqYkRNYVB2V2Q1VDc2Q1BJWitCN2pRVkxXdml4eUxO?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f4b300b-2b24-48ca-964d-08dd8829ca46
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2025 20:58:42.6419 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MXTVsnoJB7d7032EbcHyW0Kk6cu5Vdgiym460UeDX5JNKRrIHHsIaf+aMaY0FpETpC2LKRnA/LWAP+jvsmEN87w4hEApvdgH0DyG9yE24h4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF2AD6B04BA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746046747; x=1777582747;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=27YEE7Z/GC1IB0wUl3Weth6eI4QQ9kahmXf6OIbcnUE=;
 b=POGLBYjxa9UZC8gRPQ4NGT06W4ItGvzLBuOvl/0waSf31PjDoU79As5H
 WDmHSO4G71tVGi259nxN+UQjMrU6Ux2j9SUmuu1jzH0Y5dtZQ/8bRNJ0N
 XG1VXcxblS7wCJSvofyycJKk9bNpoRgjawd6lpY2TSZSIblIsgCs7v5GR
 pYOB6zY+solilB/U94HXZA8c/k/0Dzyp7ydZ12cNAQvt4GqPpD/jFPmSw
 IXBbVj/1H/g9zlz+aaCATtY5tEPiwWj662bwH99Ri3hMBjhS2e3yMP7pn
 TL73rYkzY4BDewkVxKN44kLuOb0/d/9TYaeIraSZdG2GOSaaj0jcSbeWK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=POGLBYjx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v2] idpf: fix a race in txq
 wakeup
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



On 4/28/2025 12:55 PM, Brian Vazquez wrote:
> Add a helper function to correctly handle the lockless
> synchronization when the sender needs to block. The paradigm is
> 
>         if (no_resources()) {
>                 stop_queue();
>                 barrier();
>                 if (!no_resources())
>                         restart_queue();
>         }
> 
> netif_subqueue_maybe_stop already handles the paradigm correctly, but
> the code split the check for resources in three parts, the first one
> (descriptors) followed the protocol, but the other two (completions and
> tx_buf) were only doing the first part and so race prone.
> 
> Luckily netif_subqueue_maybe_stop macro already allows you to use a
> function to evaluate the start/stop conditions so the fix only requires
> the right helper function to evaluate all the conditions at once.
> 
> The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> and instead adjusts separately the conditions for singleq and splitq.
> 
> Note that idpf_rx_buf_hw_update doesn't need to check for resources
> since that will be covered in idpf_tx_splitq_frame.
> 
> To reproduce:
> 
> Reduce the threshold for pending completions to increase the chances of
> hitting this pause by changing your kernel:
> 
> drivers/net/ethernet/intel/idpf/idpf_txrx.h
> 
> -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
> +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)
> 
> Use pktgen to force the host to push small pkts very aggressively:
> 
> ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
>   -p 10000-10000 -t 16 -n 0 -v -x -c 64
> 
> Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> ---
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
