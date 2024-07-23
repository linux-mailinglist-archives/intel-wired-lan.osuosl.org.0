Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0630793A9C2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jul 2024 01:20:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8D1F405C9;
	Tue, 23 Jul 2024 23:20:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b8bem9q33wPn; Tue, 23 Jul 2024 23:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF23A40327
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721776830;
	bh=jZUlWgAPCTldQYfgsk+UuJGhu8nS90uJoE3WlIYxyCw=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zDhn7v56y6n8TH9/sYHtIYt6tqanwk43OQThcNTLyu04Isw9qdCd8LXqppIYsYL6K
	 hvwNZsgOzJ5Anlq2YjGzfFGtcCf77tElVjV2q/W9W4iK1/tKv/Id8c7SiRoHZPVtsA
	 fueCGNPy601fYXTEwMvm7nrX4uIWoN/jMNnGsyCMbNWe+mzV7mrJDIycEbJAFMlBgt
	 /5juo1PaVdtyxtGuABcfZFuCR6R6Z4lcU4I/0ed7hMWNYdIhxSj7v3PMTe+bf9Rj6y
	 iTZsVio4QineSxqzdvGmAMPJTe2K40RFZadjMpCgdZVaYpyWGen2qbK+pxLD7hZLpp
	 1IyYBXPkGQXNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF23A40327;
	Tue, 23 Jul 2024 23:20:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A81171BF27C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:20:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 94334403AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:20:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0lJ6XZl0HJ5N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2024 23:20:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9653340133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9653340133
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9653340133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2024 23:20:27 +0000 (UTC)
X-CSE-ConnectionGUID: G9FlGQKAQy+/ItoXuA/TUw==
X-CSE-MsgGUID: 64ak/OjTTkKGrxqCDZSnuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11142"; a="44852900"
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="44852900"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2024 16:20:27 -0700
X-CSE-ConnectionGUID: gDTMhO16So2G0dEUfQ2HFw==
X-CSE-MsgGUID: S2vGIK9XSLeYt3sluQ1Rlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,231,1716274800"; d="scan'208";a="56926540"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jul 2024 16:20:27 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 23 Jul 2024 16:20:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 23 Jul 2024 16:20:26 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 23 Jul 2024 16:20:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RpxD82eIFOpCqSSlnv5KUndXA5cC7sl5xIMday67wEtiCDXI5mjAd5g8F9soIei5W5IkY84nDCuxywn1HjavR8C4rJm2AFebBNwOEau0c1qe8SW7MIQz5PJ7BliDyfsp4aZuUnwndWZysFeVdYo3skRQVefnqole8JLC7Xtx7V8TPSk4PE7zTVlbvQajM+qD6OzFZKtknK4tHEMdADYeMpDN5/egDsV7vjGLYXrrfPUb+4hGsSqbhT/N3PYgPd0XnLtT8LX5sVi3UM7dvM/eessm0rwgmFTZhd4jTxSZipZBnQix2mmCURNctCaibVnm4Y7ztvEZ1a8rlsT6S5smMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jZUlWgAPCTldQYfgsk+UuJGhu8nS90uJoE3WlIYxyCw=;
 b=JWzDduWd8CMoGqaJsZck1yrqmshgEwunaI2sWQnNn21uv/0OO7RxXIYVyfEx+i8L9dudJv28GzhY4Xd15ERDIRZrEN9jj9Iszni8dupyRtpwOKnOl3Qa2G2ZIKo/s1Qc7zpxEO4Y5VQsYKEAC1p0yDQ1GI2DdxVgDEYQTbDiczScqDAUFMrdoOvPcutUdj7riULg+GXySBrv0w2KNXsL3Pj2yRyp7cON9SmUlbEb6nrneYh++QK9ZodABWgsRs1lmQ5qZSEhzz06DTsQb7hm7oGtMUJJQxYChRbjHbXT+f6NmwsfBazasqHEnt4eTUc00QCZ/3qriNYQiVwlT1ilVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB4927.namprd11.prod.outlook.com (2603:10b6:a03:2d6::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Tue, 23 Jul
 2024 23:20:24 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%2]) with mapi id 15.20.7784.017; Tue, 23 Jul 2024
 23:20:24 +0000
Message-ID: <08270b9b-58b6-4b4d-9134-372494d116e4@intel.com>
Date: Tue, 23 Jul 2024 16:20:23 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20240718105253.72997-1-sergey.temerkhanov@intel.com>
 <20240718105253.72997-6-sergey.temerkhanov@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20240718105253.72997-6-sergey.temerkhanov@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW3PR06CA0004.namprd06.prod.outlook.com
 (2603:10b6:303:2a::9) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB4927:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aa7ed8d-d6d8-47eb-0b4b-08dcab6e07d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WVlpbWtkdkpQNzVlYXE4ejYxeUhmQjhhT3BTWktvSm5mc0hrZmtGWDhtZFh4?=
 =?utf-8?B?M3hyS0dkb3BCV0V3U0VyY2xDSmpwbm0vZU9SK3hzSzEvWDZoRGtOc2hmWVg2?=
 =?utf-8?B?ZXhETzZGRTNsV3VNV2tPTDNicFdYZmI5bk9oeks0Nkk1L2hCZHo2amprbklT?=
 =?utf-8?B?UFl5U1I5QnFhcS80NzVCVExLQ1MyWUhMcUlReWprM3c5MG1RZFZjWjdhaWhk?=
 =?utf-8?B?Mm4wQzZEZldaSEkxUnk2dGVjZjRHY0ZNSkE1VG9tOVB4WC9OY1lZWm8vSTQv?=
 =?utf-8?B?OWtmeXhVSWt6UDAxRjVVY08rMHpQVm5sUm5NczlGSG9JR2J1dytRWVFoM3My?=
 =?utf-8?B?bG16dk9OdWtlbDB0NHZOOUpqVTc1ek9oY2tvRHBoMFhaQys2RmNQZGpuS216?=
 =?utf-8?B?NnFuVHdzNjBndXg2ZUFlY3N3SWRoSU5RZlloUFNtU1c2bHhzZHRtM1lRTmg3?=
 =?utf-8?B?SERKT2QwZ1BpYjBoalFCYm5odXQrTHl3RTVoYTBHcHVibVZYUVVaSDZVeW9o?=
 =?utf-8?B?czQ1SDhJOU5TREQyeE1ucmt2ZzArNlg3cHViWEdVdFg3YzdFb2QxMmVBczQw?=
 =?utf-8?B?R2gxUGdIaHJCU0EzUnpaVDlGRVV0bzRBbVVIN1o2QUsyamVzaDJQUU42TjIz?=
 =?utf-8?B?SFN1K2l1aW1MYXFjM3MySkRHb3doM25xNU5HQXJGMlZHZmdCN1UwcW5CM2oz?=
 =?utf-8?B?aGVBU1QvWkhhNkxYVHNSWFF4N2FaUHVvRW50T2NuMWo3RkIrOCszcmZTZU5N?=
 =?utf-8?B?SWxLbU5MN2c0Qmp3b1V5Kys5ZCtBK1BBWExQUk12WGdXbDBwTEhFQXEzTmNq?=
 =?utf-8?B?S0ZmcW1odlhuNERlQWVCT0xPb3J6aHg2R2VNTFM4TXo4UlRqQXlrZVhzMjlR?=
 =?utf-8?B?ME00Z2lJVmZYMEM5SldTc2plS1d3QUFhSG51UVQzVTExVmhuNlYvL282Tk05?=
 =?utf-8?B?ejZUN1Q1ZjkzcmM2akpSdzM4RTNPMGZLU0x1eFdCT0dLZUhYak83VXdTVS9W?=
 =?utf-8?B?RUM4VUcrdmZpdXF4WkhZQldkQWROU0RsNVIrVm8rWDZRMmJTdFFJRmJKdjJh?=
 =?utf-8?B?Mk5CWW5uR3Bua0dUdzV4alN0cmtQQ2ZkUzUwZ0ppMEFTdjdJdHdrc21SNnhI?=
 =?utf-8?B?SVVNVkJ0N0JYZnIzR1UwMXNoMHZjcEdlUmFuTDhWMjk4SldnS0pDci9PS1VO?=
 =?utf-8?B?U2dDMHRGUS9sTitYUllwNEYwK201TlBhcHd6NVZkSTZXMTF6dlZWdEVxZEpk?=
 =?utf-8?B?SWdrZ1phckVLbW94OXQxOC9FN2o1Mmx1b253YW9QNE9yVmQxR0pFeG8vMDlq?=
 =?utf-8?B?Q0grMWkzSjU3NVJOcG9sWkwzb1IyU1FKbEdpZnZDbUVQUEdYcFBiRUJGM3d3?=
 =?utf-8?B?V2M0S3R0T2FrMUlWeGFCcFVUY09Rb0pJOVRZUzhKSnByc24vRVNJUVAxb3Ji?=
 =?utf-8?B?RjQxK3NuRFRkN3pGSGJjTjl5d0JWSDBpZUFEV2FkVEhzZlFPNlYrWkd5aFVK?=
 =?utf-8?B?ckdUSkptN0VFWktBSC9JUnVES0VkS2JrQ2dhOVo0T3pWWlFiUjlxME44akR0?=
 =?utf-8?B?RFBMSGIyMkc1eGpIN0x4TDRFczRkb0dYdEVDc3hCczZmQkRVUWJqT2lTdkgv?=
 =?utf-8?B?b0tNRlNHNVM2OURtRDA4Y2Zrelp4bG43cTBKTHIrR0JhelZGZGQxSjcvSG85?=
 =?utf-8?B?eG12elBPYWxQNjZtVzRQUHc2ZUdoSFdmdVBNU2hQR2N0S25SdEVlSkJzS00w?=
 =?utf-8?B?ekRvQWNMWEM2RU9weGNtZFRLeWdKdlMxeUl4TzJiSlk4VmF1WW5kYVgrOU8z?=
 =?utf-8?B?WUszTXQxcmNkT20xR21OQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGRTR2V4MGwxUzNBWW51bW12SXZNM0ZBc3czVDUzaVduSWFVODlnTFk3K2Fj?=
 =?utf-8?B?aGIzZ1dhYzJGVU1wYjhXd0RENGEzK20zR0djWG1HRFY2eFphZTFteVA2bWpo?=
 =?utf-8?B?QmF2aEdVaEJySTliNko0aDRSTTlNRTlyZEUxT2t6dE9pN25vdHMwL2h2VFp5?=
 =?utf-8?B?bFdFYzdEcG5UOWJIN01YV3V0UkNBR2pPUy9PeitUZDFrTWIwb0lRQm1DTlRJ?=
 =?utf-8?B?dm1uem50bjJtS0lrK1dLM0dnQkJtbDFCTHlZc1hNalcyQlBnVnpFY3VaZ3RG?=
 =?utf-8?B?MjZ1OWpHcXphUms4UEsyUWVwK3FEMCtqb1E3bXU5MDhUbEdadHFUTU1ab3Ay?=
 =?utf-8?B?VXdoYnFkSDIwcmx6ZWhwK1F3alNWZytVL09JOEZoamFkUVMrekMrbGdJb09i?=
 =?utf-8?B?NmsvM0htN0pzdktNeDBjdTlWeFJDUlNDT2xUR1BwbjlRcXZKa3p4bERnUXlW?=
 =?utf-8?B?QVRabDN3aHdSQ0M1ekR1TFhnaVRQeHNmSEMwTG5lQ0U0cmZsTDgrNDJialpR?=
 =?utf-8?B?REl1QkpSTUJVdjF5MWlDSzR6Nm16bWpYRkVyMEgxQjBqaEcrVmRaNll0MitE?=
 =?utf-8?B?REpBRnFYV0NNeUdIRFNKMWI5M3FVWFBUOGpGR2VaV0JRaTlYNHkvWmtCOG5Y?=
 =?utf-8?B?aDdBMnFiMno0eEVkMy9NcG5wY2twKzJHaTg5dFExM2xacTdjTThwQ0t6a25F?=
 =?utf-8?B?Q3JCOWVubWtLZjZiSVY3YlVQcGk1TDAyY2FFYUc2ZCtKNkJXUy91UHRPRTlO?=
 =?utf-8?B?R1B4OUhSWHZGaEl4UjVidjV5Q3J6VmNLL0hwcURKcmdjL080WjgyTFZ2RnVV?=
 =?utf-8?B?ZnRmTkNFd1l6NGdvbm1mNmlJR1dBTnJ6Sk9ZcEdDY2dacFVDWXE2YTdiSW9J?=
 =?utf-8?B?Q0tiUUZNUnlTUjNobE55SmFJT2xFQzY0bko1STEwRk4yN1BiRzRSZWhSMlBR?=
 =?utf-8?B?NUhrMlJGZWY4a2MwaC9mMm84eTJib0UxVkNWZGFWZjV2SVV5Wll0dXVmbDlw?=
 =?utf-8?B?V2JrbGFJVkxkS0N2cjE1cnZrcFdzWU8zMDBEMGlGSWNyMjdobmREbmJTcWhU?=
 =?utf-8?B?TUF4eHdwUThBcmp6MTM5ZVdIQWV1SE5UTTdTalhqL3UxdjRPZUNmZlZaV1N4?=
 =?utf-8?B?Zk1yUDA4TC9CVHFIbjFjdlRNOXVWWEQrVVhwaXZIeXpXUDdUZmlld1NrUDBp?=
 =?utf-8?B?WTdES0VRMENEQXlLU0NudUFqRTlkamFwSmxac1dPR3dOdzhvVGxHZ0dRRGRG?=
 =?utf-8?B?aFl4M0dhalBUWWY5cmNUSS9IcWV2dms5VVpzaWdIV1c0azdmdEpIWXBuOWlF?=
 =?utf-8?B?QjhGdDRneng1YW5tSW5BaDNqREJwblVJWXNaMnBhNU9DS0dMVTkvck1LMHor?=
 =?utf-8?B?cTZldElWaXk0UGdQbGFHL2FsZFB2VjR6WkRuTGRyZktVbm9oNExjOG12dTdM?=
 =?utf-8?B?WVNVRHZwY1VnWEVPOTV4b1JMR3B0TlNydFROcGdvRis1bWpyZU9qaVpMMXBD?=
 =?utf-8?B?TmFPRGpnbTFJMFZxei95d1JrcWFyVWhpMlVWSU5CT3J3dkYzbExLM2FRRGY4?=
 =?utf-8?B?Ui9jVzZpUFdIZVpyT0orV1R3emNLdGtBS3VyYUwxYWJ5VVJwL2kzdkNuRlkx?=
 =?utf-8?B?OVloWk0zSWdJWEVHN0tPYWtaUEUxdU8vcjI4ZmlpTkozcEV0cG4wZVpxMUd3?=
 =?utf-8?B?Njl3ZytPREYrMGNwcjlxTi9JaXZzY2ttY05YQVdoTy9oL1Z5SzJrVmdHNzZJ?=
 =?utf-8?B?S3hoOUw5clB2YStZTWFQT3hWQ2hhVnZjV1ROZ3RoUzU3U2l3R2t1bFZtdnU2?=
 =?utf-8?B?bVM3NFJYZWhlMG9vMkVDTWlmeTNTd1crWmFQQXhwOSt0OW40SXc3QzJuUU9Q?=
 =?utf-8?B?eUUwMkhjYkdNNDk5VGhDdjBHdDg3QUVkREtHUGFHQm1jNGZpc3pTb0ZSODZX?=
 =?utf-8?B?cnBEU1ZKRFVVNGcvLzNOVU1uM3AvbmZVVjNtcm1xVjZROUtCWHNtN0t6VWgx?=
 =?utf-8?B?dDNQa0NCUy9KNk5pWmFOSmdXcmpYdlpFc0w2cTNTTlRjdDFidXdkcEtNWHVJ?=
 =?utf-8?B?ejcyNXNNRS96d2U2bXQ0a2Z6Q2U1cjRlNzh2KzYrZlV6VUptRHVpOUcwaW5Y?=
 =?utf-8?B?Qk5Pblo5QWxwUlNFclAxNFdzekprelJ3cHpMcWppWEtvdHgwcWMxRHpoVGZS?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aa7ed8d-d6d8-47eb-0b4b-08dcab6e07d8
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2024 23:20:24.6798 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QZ3Yz2ZA9IxlUHscRvL0vXagBDSm9lLVhqP37GHKEM3otIAy3pe5c+3uSFFcussP9STZVyWj8LIaPd6NEnz4DjzYzg+jiQetlLt6a/s+bFM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4927
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721776827; x=1753312827;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nG2E9xnnsQvW0oI0XABBp+lfYq0c10umEy/W7krvhxc=;
 b=U0RsPeVA9Kv7TqQ9zovWv0DK202+l/gX4lnP47BlUG+kx8aoW4YvTu26
 fDBIqvqRCYkNj1Ws4+iXgzDfknJocDP+BoauK/xtDP1FKl3itIs7z+6MH
 haPsYDeWkhOgktEitEQdHKYRgoXDJUTOOafTJq1rv8ZRClrQ5tttG0/VI
 rdvmoEzPTjTeH5kPkA1OHg8hSVQ/aFdnWHN4Abts3OZEc+/3c4uwnpSwd
 TigXdqMSTEMbEmgctHdxd51galYntWiOCEcB/kNWtIcNnsV/NewIEtmrj
 H/KIeLRuZk2QXWsbdKp9OvGBhCkDS8WM4ATfG29dvRB+8MELNh2JwN275
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=U0RsPeVA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/5] ice: Drop auxbus use
 for PTP to finalize ice_adapter move
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
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/18/2024 3:52 AM, Sergey Temerkhanov wrote:
> Drop unused auxbus/auxdev support from the PTP code due to
> move to the ice_adapter.
> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Simon Horman <horms@kernel.org>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 252 -----------------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h |  21 --
>  2 files changed, 273 deletions(-)
> 

This patch probably could just be squashed into the other, but I'm ok
keeping it separate.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
