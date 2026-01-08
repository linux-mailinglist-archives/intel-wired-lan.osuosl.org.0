Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9B3D02299
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 11:40:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1AD6B828A5;
	Thu,  8 Jan 2026 10:40:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4Tqky-pkGSrP; Thu,  8 Jan 2026 10:40:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7161F82893
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767868839;
	bh=/sMJ/M9KM9Eb4wfNZYIsaQEj1dbWH+Jp18/+Tcfewx8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yplHZqm5/Ax1s5fBUHmvXP81bgBHAoR76jw1sCrCPTZpoDeeHA0ghpJolBOI7eaji
	 lwro9zvAVVw40jjocooti7xPC1KZUFbeOdz6umeRZ8/hWceodnhH4iZrrt4bOVqwB7
	 6RdgJtfPwqSekuX6oxEUwAT2sRho4jfgUlUFWuSXeklPj4vVrdyLreACd2v6INyxcT
	 dJAmq3UC3Ur0cDZJ/vLT4W9t3qgBwvu3MuKhVWuy5tfgSSMF+WXTj+9GcDY3mEljbB
	 TqT2KBjTl8FC4z6TiauSRfg5FvCQsyiHvomSrgTxmRPVe5AuLquwMD8tffq7H0imMM
	 niP1L+eTn9GyA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7161F82893;
	Thu,  8 Jan 2026 10:40:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 79128237
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 10:40:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 579F782846
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 10:40:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yEuhle3l_ATM for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 10:40:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org F045882733
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F045882733
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F045882733
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 10:40:35 +0000 (UTC)
X-CSE-ConnectionGUID: Wj2Q21IIRLWPC1sjGwEv+A==
X-CSE-MsgGUID: jeeAJDa9TdOp8Ie5xEQwnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="79885054"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="79885054"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 02:40:35 -0800
X-CSE-ConnectionGUID: z7qHhrtwTqyCZY7i7YwMkw==
X-CSE-MsgGUID: iQHRsPVSRpCrzXUzqnkkEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="203088118"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 02:40:35 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 02:40:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 02:40:34 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 02:40:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t0PBBT/0X3i+LR4N83oXIZdYFJezUyFXfYPYcLjGurmorZ+paOa+PV3B9CrOiOqh/Fif79hCTWD5Q7/pcjKtaHPdhdbPOavGh5ElQFm/tZBnNpUCgpji/agQ9gjZzCaitE4DYqDPxHJpG8ALTB7NnB+SxqMnNZKzt8YcdhBWkKV815lAluo3pAYHjWMCU9SNdFi6cq9mXpD/eDFc0zQ0xvCtmgh1jEeSn1fjyOHFSUZWoz/MWdFOy8kUIqZa2sCw+VCti8/tvmxoYa4m0q7rcyYE932Vhyyia+3FcI4IKz0Kmp5/3QqOhqV7bP8V79as+Ofb9ILts0YfIFOdUfyAGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/sMJ/M9KM9Eb4wfNZYIsaQEj1dbWH+Jp18/+Tcfewx8=;
 b=eB7I+YkJe7NxJVirRsFbZUDuhEEiDKPcfhFFo/EjOJ5hx3bSBT8EotPAIP4I69SkK/hRMlYSPaqkFBz7YjOmEl9IwjVeua2DztdsOG4gixsa8oVpj2UyXw6UxV0rSLxFHa13ust9BbdX7xa3c4brv5s7XMoF+h3X0CakU90B7waGqcJnr0wvzjO0IgF2UN4/gOqRLU7LusC9/Nbx8fVLXFj8kc43rzq3r9yXWIkVAE2tJ15WrqBemtVAMxy5ZdN89uoLol0VEXXOH9qz4XLMP51sl8kHBKbDZKhjRDqMW1cbViGBCO9Vm48kRQ8yPBgCcMvPftLPERsWJKU9CBfgDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SN7PR11MB7602.namprd11.prod.outlook.com (2603:10b6:806:348::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 10:40:32 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9456.013; Thu, 8 Jan 2026
 10:40:32 +0000
Message-ID: <57b8e706-dcf4-48e4-961d-b72bbba83820@intel.com>
Date: Thu, 8 Jan 2026 12:40:28 +0200
User-Agent: Mozilla Thunderbird
To: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
References: <20260106100331.1576758-1-vitaly.lifshits@intel.com>
 <PH7PR11MB5983F49754AB057DCF618094F384A@PH7PR11MB5983.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <PH7PR11MB5983F49754AB057DCF618094F384A@PH7PR11MB5983.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0004.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::15) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SN7PR11MB7602:EE_
X-MS-Office365-Filtering-Correlation-Id: f400af6f-da2d-46a0-3ae6-08de4ea25932
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1E1UWh2Y0tseGFLL0NaWWRSeEVtY0FjNzJ2RDY4dFpmMjZ3RnhocDVjZ3BS?=
 =?utf-8?B?QmkxdkdlMXZNdUtiY1J5Nzd5UVdWeGRaNDVKbjdXZ3NaaVdoK2loWmRhanVa?=
 =?utf-8?B?QkM2bGhVenpETzZOeGFVZFNYakZnNjVuM2xvWXdUNWduM3gvekdpZ25aNUd3?=
 =?utf-8?B?WnFHbzlMVXliV0d5NU8yTUpQY09KaUJ5SG41UDlnQVZ5aXZpTFpWai9oWlB6?=
 =?utf-8?B?dFFMZGdHN3VhbGVYcGRUWlREOHlCMUpTdGtSNjByNGEzMjJVdEN1RmpNeC9u?=
 =?utf-8?B?NGFSSHI2bHlVMjR2N3FOWFB2ZFlYclBJTk5mam94VlpwYSsrb1gyVGpTM2JX?=
 =?utf-8?B?NG80OG1haVVEWWsrL3BLL1R1bDh3VFJXZk1WdGQ4K3VSeGtsaVVqZ0JpV29R?=
 =?utf-8?B?eW9kOVZtY3pIRzZ5RUsyU1Y2TkRQSVN2RmJKVnB4Wm11N081RDVGYXpDZjJr?=
 =?utf-8?B?bEpHdUFKRlI5bWNtM1RRUDdmMkZ5TUhLeUM1TWMwc0dsN2tvbUlUem1BM0gx?=
 =?utf-8?B?S1UxckFOaXVCbmJOMWt4bWdzaFVsb0w4WnpwbGhpYXh5eUN2VzJkOE9PZjM4?=
 =?utf-8?B?QTlzZW81cjJOZ2d4VHhobG5KbUF4S2llR2NoQnNidWM5dkZzb2E4VFBpUnNV?=
 =?utf-8?B?bkpMTzRGaEVobjVySXZxOEtvRkJNREN4b2xRTkxTQnJyV0ttbHVtRUtrWHgz?=
 =?utf-8?B?RW1OWU05UGl4TEY5Zk9wNUxsdTJPQTN4NzNjRWtOOGQzazA5cmd3WUlpNFFJ?=
 =?utf-8?B?Rnp0T2hsS1lZOHRjM0pyclpMVHovdk9rc05ySUJmb0tDaHlFWlBwQmprK2pZ?=
 =?utf-8?B?dWN5WHV0dEs2TFQ3Mm9wenhkUjh5M2VXbTJ3YW1wMy9QVjNHekI0MzZsVUVs?=
 =?utf-8?B?akowamFiK1h5V2hxSDY3UFpZWjRwTFd5M2VhUmp5dk40Ti90Y1d0NEs1MjBM?=
 =?utf-8?B?NUhmVW9FekhBbG9VcHlOMFhnRVBLL1lGM01rL3FyazRRRVFwZ2ZZWHNGcGFZ?=
 =?utf-8?B?SnA0NC95OXJjSEdZN2F0ajZuZDdPWHZnUDZxWnl3ZERlT1QrTk9QTUNzSW5T?=
 =?utf-8?B?bFhDQTZ5UFh2dEd5VVVESitBNDlOSEtlQU9rcldBOVdZQ1ZqY2VQWk9laG5S?=
 =?utf-8?B?V0xZTUZwUzZXRFE4TDFCOHdaVzRTVkhHMlBuRjQwaWVSUGh2bS9vWEFYbXBU?=
 =?utf-8?B?OWdrTzg2Ti82RTlHS0pjOW9obXhRcER1Y2V0RVhySVpXZmkzLzE3c3R6TThP?=
 =?utf-8?B?UHNHSTl4WVhjbzFJSnM3K0NoRFZwTnNOVUNiRGtKV1JqV0JmY3pyNEMrRDlt?=
 =?utf-8?B?VExvdW1MNGg5MkR0dVUwanQ0YmE0UCs4Q2hsWURsdUszRHNGU1RWdDlDL1BY?=
 =?utf-8?B?ZUlKVzVaMEFhU0NKSUtkV1RFTjA2L0c1aTV2by9ranlWRFh4SGwrdUNyN0FJ?=
 =?utf-8?B?MHdMTm5hV3BSeE5LNGdKbFAyWkY3MFdibGdRLzQ1b3JPQ0Q4a3ZaMGZPRnJx?=
 =?utf-8?B?eEFTY2RkWlJHMXhNdVpYb3I1MndGZUxEcW8wdVNzM05RaTlWWlZJMkQ3dHFa?=
 =?utf-8?B?dVJxSS93aW9maVJyRlVnNy9SU2svN3YyWDR2L1pFWjh5Y1J6YVoxVlVGTXlE?=
 =?utf-8?B?M1RPc1htS1l2TFRPV0FMVXNmSFZIVytvQ0xxdWg3WUFNd1k2V01ja0w1QWl2?=
 =?utf-8?B?RmlBNmFCekd3VEJlbzl1UnliSDZzV2FZSnhqQ3NMOGdWaDBTRGo1bDdQSThu?=
 =?utf-8?B?WjJnRlRtc1N2aXZNaXhyWGNUYnd3OTJsTlA3WnJUNVNsNHcwWHdwVFkvT1F2?=
 =?utf-8?B?OVdYRVpMSnpiZEE2R0pXa0p1TE4ybXN5S3pBMVdEdWM5M2dXY01EMnd4K1pU?=
 =?utf-8?B?dUhsb0FVZXVPRTg4MXBhUm45MmQxT1BXK0dzWHJFMlRHUE4weWZXWFNDTFJx?=
 =?utf-8?Q?5Vn5vhQQ62hZwRHOV2CCnoKVE3re3d+S?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0xFeG82M2MxNEYvYWsrK2pqWnYwbWR1MDZ3TFk5VTBvS0UwcVZrYURVaG9q?=
 =?utf-8?B?Y2VycUdXSThrcDBmN3ZWR2R5VzZYeXI5Qkh1VWM4K2tOUU1waCtnWHBYdUE5?=
 =?utf-8?B?MkRsRzhBeEZDVmsyVlNEaG1hQUY1eEJxZUNNRUtCOFloc3Btakw2b0tFTC9T?=
 =?utf-8?B?eDFxOUxkc1gzSDZLTStwTUk0dkZMZllpeGNsL0NZNk1qY3pWYnc2T3J5RWp2?=
 =?utf-8?B?ZkhnV29JcFkyQUM0MW0rblZYT0swY0svSFZPbS9PRGpBbVVhNjlsSGF0Ky82?=
 =?utf-8?B?L0pUVytES0x5S2ROTXgxN3VoQ3FLYlJRdFZGRjRCOEphQUMzYVkxbnRQMXdM?=
 =?utf-8?B?OUhKRE9Zand0VzdsMmtla0RueTViY291dFJtZ3hDY1Jtdy9MQWszMHV5TWxx?=
 =?utf-8?B?ejUrQThscGFlbUVEL0lQTVBhSWJZeDkzbGRmSlZraDhDdStwNkIrWTV6dkVQ?=
 =?utf-8?B?QmdqS1JFUGxIZ1Q2SnAyRXhnN2JGM1ZkaDNUWk51a0hMbFRwZUQ2Y0ZCUkJW?=
 =?utf-8?B?MTF6UUtpdklIbm5NMkNPdStEYmpQMFJWUkdmdzhwSXBtUzdQL0cvVTd0L3Vv?=
 =?utf-8?B?Q3NDVkJrakQ2b0ZRdWVpQ2pqb2hYMlNxWUF1elRvVDVaOHljZGVhZnVSTlE2?=
 =?utf-8?B?THdwMXo1NlNnNHdBbkFaWFdCQlpuNjlMMEY1MFpmZ0RLNWxmQytoZjVuZHJP?=
 =?utf-8?B?MGVlTWpzRjgrclJsdTVqUkFQbFJrN1phUUFQbFJmRWVycW5yN1FSRFN1RTJa?=
 =?utf-8?B?a01RVjFXQUZVZTh0ZE5XV0RDTFNFR0YwcCtncS9maWN6QnFOamlsYkJLMjVs?=
 =?utf-8?B?RHZrYkJLenJWMi8xYjBta1RxSHZxelRHTHpBR3BwY0hjbUFlQTl3QnkzbUZu?=
 =?utf-8?B?cTAzUDZQVTBEb1FnSFpodFFybzVLOHlhVUZaakRodklYRzhPRFMyRTdPWEg3?=
 =?utf-8?B?RlZzbjA3ME4xTXErNnNHVlNOUkVWSjNTVU13c25VdXdEaXhWNDFBTDczK1JO?=
 =?utf-8?B?TnZVYmV5OXFvTUZMMzRwK01zT3hwaWxnV3pzbWd5Sks4QnpaaFFDL2dCTVhV?=
 =?utf-8?B?TGpBZkVOTjVmK2RCdWtXMkF3alZXZjdUU1pLbTg5VjZkWmtNOU1NdzB1aFVN?=
 =?utf-8?B?N0VhYVZCWVppQzZnUVFUZ2N1TjVYdUloaWRvbmZmL3FGbU9vTTVGZXFmV2Vp?=
 =?utf-8?B?aUpwTnd2SmlUVXkwMzZKZEJQWWVvVDlPb1g0dnJsaXdxSkx6QU11clFRZlMv?=
 =?utf-8?B?eU9tbW1EbGUzMHM1QzZ4bi8rcjgxVTlwZWNBcnJUTlViT1BuODc4MXRWMDNs?=
 =?utf-8?B?UXdxWVVRcWowSU9jem9PMzBSNk1ZbDVCMmJScjFsdE1zRllyN1VZekl2M1BW?=
 =?utf-8?B?S0tVTWhWbzRFNG1OblQyTXdjZm1SNnZtejBXMXlQMjAyUjVCRGMyQmdTWkRR?=
 =?utf-8?B?UzB2RUpuUm9Xckc0bjFKS2g0a1pTclRlZjNxQkc2QUcxRVNINHZwUTQrUG5I?=
 =?utf-8?B?VDYxSnBnMWplYUQ2WWNqMjhjcjFFVWhNcWFSd0FNZWkrQk5vNTBpM25qb3pN?=
 =?utf-8?B?SlZCRzZFMkYxZDR3ejBQQUlQaDhyeEJtaktXbnlmUVJoNXFRMGM1SnVzNGU3?=
 =?utf-8?B?NDdsNFZFYll1MkQ0ZkFuSzBGbElyNFpHQlFiUVNZWTJvMHFabk9kcEFTZHU5?=
 =?utf-8?B?cjJhb2YrakpjUFFxNnZjdlpBWi9ZamQ1dG1OMTRiZkxtU3JVbmpud1hvcXpD?=
 =?utf-8?B?YmRoKzB2NnNLSjQyTU5FUEx3Nko0aEtualNXdWlsU29NVDlCYkNjYnFvUlpN?=
 =?utf-8?B?UzZETkM2L1VkcGpSNnYzMVUyUk5TL0RGbE5EVEdRNFpwcXgxK0ZuTVVvdlpN?=
 =?utf-8?B?UUJCZitTcUJxZHJrRkNvbG9tYlVmOFRPYTR1UDI4anJmWmx4VkUrWGNlQkJI?=
 =?utf-8?B?VVpseXg1NTVHcDNVRU1vTG03TmdNbnNZS1dmQnlvaWVvdTVYbEZjSjh5MmJh?=
 =?utf-8?B?TTk5ejVPZDlaZS9iL1lwRDNxcjFsNmU3YThlTXVuY2tQNi9wL3FmUEFGeG0y?=
 =?utf-8?B?RE1lVTd0K0JZbEhkbkZEUlFSRDJrZ09JZ3VsQjJWOVlFSndUR1RmdW95M29j?=
 =?utf-8?B?aEt2MkdWMk91TUwyMVM3S21BV0dIWklZQzZQSW44Yk84TFZiT1l5dFlVQWNq?=
 =?utf-8?B?K3BQTVQ3N05KSHp4NEtCZ0ZiY3FkcUJ6bWdtdUNNTE9nc1RaMWFveWlxdmdx?=
 =?utf-8?B?eFlsM3hCVVlGanFWaExIUisrb0tuWCtIZTVNMWQzaXo2a2pOUlJ6aCszMEh4?=
 =?utf-8?B?NzFyOXBSNUJLVWpLSWpCc2xKVStTMWlSSWpOT09VNnlXK0R0RCtQYlk3blhu?=
 =?utf-8?Q?GPEsYb/KSIITFEAI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f400af6f-da2d-46a0-3ae6-08de4ea25932
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 10:40:32.3745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AitdesmwSzDF48ZG/Nv7qd9tEFsq2l+E2KTpMQYqLhAD7E9l9/qJde/1Uj2n0LsrskCVLeliC2LJ+Dx/ZnfGVMLraj76NrZv/1IFDylbXeI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7602
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767868836; x=1799404836;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mA1fEcUSFVcMHCmjmOmUIZvW9n1nc/nJodtslBf7zLE=;
 b=T3M0hJUSkwz5/RFIcLoJJtOxAfGNn9HTp66psdBjwLA6D/YvPKHuGfsi
 R+8btYclPMKV5eKwmegUYZAPsJ+E3TBrwmkBcZMWzEI2q7i9qw4JSBZb9
 iB0RcQ6ZxOzkUCYSqaR+Ugv0br/uWGgE9zHomO7/Rc2BUWt1/oDzxeqPV
 W0LCWhh02qUpZvWKTJUtLKvfVjycSS3HokiGFnrYZsTOjbmF4cIuzplgL
 K0I4HIZPmMr5aggSKT20JvFwJqz/e9KlbLJaoxw+WogWORu4jqWFAp3NB
 ijSoSiR2aefYU8R9NhO7Mjz1Fm314yY2pejekxfK5HRtOxWtYdo+Qqh9r
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=T3M0hJUS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct
 TIMINCA on ADP/TGP systems with wrong XTAL frequency
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

On 1/7/2026 4:19 PM, Kwapulinski, Piotr wrote:
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Vitaly Lifshits
>> Sent: Tuesday, January 6, 2026 11:04 AM
>> To: intel-wired-lan@lists.osuosl.org
>> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/1] e1000e: correct TIMINCA on ADP/TGP systems with wrong XTAL frequency
>>
>> On some Tiger Lake (TGP) and Alder Lake (ADP) platforms, the hardware XTAL clock is incorrectly interpreted as 24 MHz instead of the actual
>> 38.4 MHz. This causes the PHC to run significantly faster than system time, breaking PTP synchronization.
>>
>> To mitigate this at runtime, measure PHC vs system time over ~1 ms using cross-timestamps. If the PHC increment differs from system time beyond the expected tolerance (currently >100 uSecs), reprogram TIMINCA for the
>> 38.4 MHz profile and reinitialize the timecounter.
>>
>> Tested on an affected system using phc_ctl:
>> Without fix:
>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 16.000541250 (expected ~10s)
>>
>> With fix:
>> sudo phc_ctl enp0s31f6 set 0.0 wait 10 get clock time: 9.984407212 (expected ~10s)
>>
>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>> v2: avoid resetting the systim and rephrase commit message
>> v1: initial version
>> ---
>> drivers/net/ethernet/intel/e1000e/netdev.c | 80 ++++++++++++++++++++++
>> 1 file changed, 80 insertions(+)
>>
>> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
>> index 116f3c92b5bc..edb72054d0d9 100644
>> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
>> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
>> @@ -3904,6 +3904,83 @@ static void e1000_flush_desc_rings(struct e1000_adapter *adapter)
>> 		e1000_flush_rx_ring(adapter);
>> }
>>
>> +/**
>> + * e1000e_xtal_tgp_workaround - Adjust XTAL clock based on PHC and
>> +system
>> + * clock delta.
>> + *
>> + * Measures the time difference between the PHC (Precision Hardware
>> +Clock)
>> + * and the system clock over a 1 millisecond interval. If the delta
>> + * exceeds 100 microseconds, reconfigure the XTAL clock to 38.4 MHz.
>> + *
>> + * @adapter: Pointer to the private adapter structure  **/ static void
>> +e1000e_xtal_tgp_workaround(struct e1000_adapter *adapter) {
>> +	s64 phc_delta, sys_delta, sys_start_ns, sys_end_ns, delta_ns;
>> +	struct ptp_system_timestamp sys_start = {}, sys_end = {};
>> +	struct ptp_clock_info *info = &adapter->ptp_clock_info;
>> +	struct timespec64 phc_start, phc_end;
>> +	struct e1000_hw *hw = &adapter->hw;
>> +	struct netlink_ext_ack extack = {};
>> +	unsigned long flags;
>> +	u32 timinca;
>> +	s32 ret_val;
>> +
>> +	/* Capture start */
>> +	if (info->gettimex64(info, &phc_start, &sys_start)) {
>> +		e_dbg("PHC gettimex(start) failed\n");
>> +		return;
>> +	}
>> +
>> +	/* Small interval to measure increment */
>> +	usleep_range(1000, 1100);
>> +
>> +	/* Capture end */
>> +	if (info->gettimex64(info, &phc_end, &sys_end)) {
>> +		e_dbg("PHC gettimex(end) failed\n");
>> +		return;
>> +	}
>> +
>> +	/* Compute deltas */
>> +	phc_delta = timespec64_to_ns(&phc_end) -
>> +		    timespec64_to_ns(&phc_start);
>> +
>> +	sys_start_ns = (timespec64_to_ns(&sys_start.pre_ts) +
>> +			timespec64_to_ns(&sys_start.post_ts)) >> 1;
>> +
>> +	sys_end_ns = (timespec64_to_ns(&sys_end.pre_ts) +
>> +		      timespec64_to_ns(&sys_end.post_ts)) >> 1;
>> +
>> +	sys_delta = sys_end_ns - sys_start_ns;
>> +
>> +	delta_ns = phc_delta - sys_delta;
>> +	if (delta_ns > 100000) {
>> +		e_dbg("Corrected PHC frequency: TIMINCA set for 38.4 MHz\n");
>> +		/* Program TIMINCA for 38.4 MHz */
>> +		timinca = (INCPERIOD_38400KHZ <<
>> +			   E1000_TIMINCA_INCPERIOD_SHIFT) |
>> +			  (((INCVALUE_38400KHZ <<
>> +			     adapter->cc.shift) &
>> +			   E1000_TIMINCA_INCVALUE_MASK));
>> +		ew32(TIMINCA, timinca);
>> +
>> +		/* reset the systim ns time counter */
>> +		spin_lock_irqsave(&adapter->systim_lock, flags);
>> +		timecounter_init(&adapter->tc, &adapter->cc,
>> +				 ktime_to_ns(ktime_get_real()));
>> +		spin_unlock_irqrestore(&adapter->systim_lock, flags);
>> +
>> +		/* restore the previous hwtstamp configuration settings */
>> +		ret_val = e1000e_config_hwtstamp(adapter,
>> +						 &adapter->hwtstamp_config,
>> +						 &extack);
>> +		if (ret_val) {
>> +			if (extack._msg)
>> +				e_err("%s\n", extack._msg);
>> +		}
> Please use "if (cond1 && cond2)" instead.
> Piotr

As I mentioned previously when answering to Paul, this code was taken 
from the function e1000e_systim_reset that calls the new one I 
introduced in this patch. This is why I prefer keeping the code as is 
for consistency.

