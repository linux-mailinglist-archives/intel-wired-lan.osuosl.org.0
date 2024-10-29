Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 569AB9B51E9
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Oct 2024 19:37:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0043B6070D;
	Tue, 29 Oct 2024 18:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DFCUPysdpEKI; Tue, 29 Oct 2024 18:37:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60844606FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730227070;
	bh=HL3m8msItEF+cvvsUx7GOQPr1ut6oU7T4QMLkKn9o3U=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=A/nFOZHj7hIPOZ+iJiPW0Fm3L7T4ZRnAMd4WhLU13FwhRMmw9sDuQlJZDvF/g9wdu
	 9KhanCyfwhpsRMmRWMDqkSJNWU5zLZE+k338uyVg3ab3+J0VP+19q8XgUf1R8fleDz
	 1sttbog9thsuSXQIT53vaTvRgTJUOKKpoHVEh6UWcwyaxzhT2Z/jlYh4WVY8v089tc
	 nrZPsoId6dXlPyF0+pIikEhoS4uvgp/2UyNoXcwRiWQ0HpSa11M84rfwaVhz/R63Oy
	 wR3aG7v0Nna09lQbHBbZ/D0QMhmHXg8wLHV/A8kG4HRazkEJwD6kdUnlVj1izK8/F4
	 5gcf7uDXs8Ihg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60844606FA;
	Tue, 29 Oct 2024 18:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DF2E494E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 18:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1A21880847
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 18:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kdrk7nJRMsbl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Oct 2024 18:37:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.11;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4D00780CC8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D00780CC8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D00780CC8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Oct 2024 18:37:45 +0000 (UTC)
X-CSE-ConnectionGUID: slfaTJT2RQOPhwIWIw8ipg==
X-CSE-MsgGUID: 0qMjXr5VTLKQj1N9XHlLUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40425944"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40425944"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 11:37:46 -0700
X-CSE-ConnectionGUID: oYai8P4oSMqvJy4Vo+Xq8A==
X-CSE-MsgGUID: qwgVXsBOSxK8CRhc2t0iKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82128085"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 11:37:45 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 11:37:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 11:37:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 11:37:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ATydgmeBb49K0xg2uBXbO+MV9s8Bjef0cMXIxUsyqBanSaONFNWcfN4LQaFOqX9brBGEN63+YUVBg0+wMq2Hp6g5CSmPKL88UW16Mrec6YMdLPhjTrtqz22WcLxp2KuY34eKKtih33nxFlxClXC4v2S9H5KVrAODFt4rVVRIZMhL8jbFPej3Kx02HoEzLrB/G9n8+z/53iAu31jLYX3IgTHvuxUlRsmVL3dPUrXPkff7GMcIMRJ7BFRDmpe65Tk/X2jB4AIP+85GHOJAu9B1rJJj040x8gjCSCxCgJH7eI6hJ9CQXZu0TnnzZ7exPRjzlNUe36vkhxIx+LBw/PPXjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HL3m8msItEF+cvvsUx7GOQPr1ut6oU7T4QMLkKn9o3U=;
 b=hBNFLiQG8Dhg6VAVcxjDcLO/E/T+kJcb54X8yf144iLljVgux3sUDIdFvxJXUJOaEs6GUeby8rd6a9EtZ2jh3pY0ZpTeX7hMAok112/u8tiILBY5gFQRMCZ+7Sv0e8178KJiNg5zvsNjAIFLHp4iWkv6b0R7crSWeCl369/URBu0fVYOndKg6mKr0cJZsuPL5Fe2QTDA6bnob9zuyXUKnXWPcnVbeYXLIpgNDqd/nQ6nuPwX9IfLgO3ACxiQc1BeDS6JvYQ3DW9Ej6DN7gOD1+oUB5pV764Jvq6ZJj1toOUBLLFskKBITYPm7sFrq7+HqtPeuhy85PBvOEKINER8aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Tue, 29 Oct
 2024 18:37:41 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8093.024; Tue, 29 Oct 2024
 18:37:41 +0000
Message-ID: <bbcc4dcc-b599-4e47-aef7-a1f462fcd377@intel.com>
Date: Tue, 29 Oct 2024 11:37:37 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241029074404.282e52b5@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20241029074404.282e52b5@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY1P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::12) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH0PR11MB4776:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ae1863e-95c6-49e8-9fae-08dcf848c56a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTJXWEpYZ2pDQkdDOSsvKzJyUWM0S09za0tUUWJQdUIvUUZKV2l2NnhZek5D?=
 =?utf-8?B?aUdtU29MV2ppbEFrZGEyMEdONnVDWktlVEN6cXlSQ0I2Q0dGUG9hYnlXUFpq?=
 =?utf-8?B?cmJ4MnpIMlR2V0RYY3Z6NVEya0wwcGUrbjhtZGczVlR1dXkwTHZkOERjUFA2?=
 =?utf-8?B?aWtJbzVYYzhONjZlcWlWZUlwR3NWT2U2ckRrZHZ2S2o5ZGdKYTF6Vm9uSkJC?=
 =?utf-8?B?emN5QVplQVZNa2QyWThRRjJwMG1yUzBvTUkyb2ZKUGFCMGVJendQMEpQaVZG?=
 =?utf-8?B?R3IwZll3bkd0SFZiUzNaQkYwazFtQlVJTXN1MEhKWEJqbHMwYlBXeHQrVFFQ?=
 =?utf-8?B?WUJ4UVJvZnJUOVVob0IvTE5vekVQQ1ZpVThzQ01nRUdDc3VHT2JuSnl3L0Vu?=
 =?utf-8?B?WlRaR3Q4S0hZZ01rNU1FNGpMeFBMd1BHK3dnNElNK1ovMllmUjJwVE5rMUMz?=
 =?utf-8?B?VDAvaCt6S0taQW5zN1h0c3VlQXVrNXRwenlteUFCWG5jNXhYMWxqK055WnFN?=
 =?utf-8?B?RE51RFFGK3NqSG01VzgzczdsQ3RHOVNzc0Y5OU5YcnlTMUQ0RXAzU3pNRHBs?=
 =?utf-8?B?R0xWYUtHVTZ3OU5jZmV2T0FoN0pJTEdJd3c2d0Y0ZjR2SjNmV3FnVUgxdkdw?=
 =?utf-8?B?K28xNHllMGtnTlkxZmxxOGU0SmwwZy9HeVJ1ZVdvblEvWTd6TXA0TTRZdVNY?=
 =?utf-8?B?OHNsQWt2QlpPTng2R1ByVnd6Ylc4Zm5RcHA4K3o0Qm9uYUFQcmxGWDE0ZHUz?=
 =?utf-8?B?aWhyTTJaT2tMcXZZT255RW94MUJudTUyMkRSL3o2NlU1UTVTQ29Fd0l6Mmts?=
 =?utf-8?B?VXdURFhWbVdlVmMzb1ozR2Jjbk5IVDBkREFxVlFZbm11RVdYcnhxT3NqN0U1?=
 =?utf-8?B?N0Z3N1lnTiswRjdLcFM3b0lkb1V5dUpmemJjbDhlbk9EWC9YR1BjTUtOR2hk?=
 =?utf-8?B?TEZ5SzlMbkVpa3E4ZytnM2ZrMDZGSEIwVEVlK0VoZHVTYmp0RzhtREhWMWxr?=
 =?utf-8?B?aDBuUUhQaU5wbjZ5TjN2ZXR3R2NySFhKYzlESDI0bTFBeDUzc3EyWlU2cHhM?=
 =?utf-8?B?V3hadFkwQWFpeGdXQU5NVlBqMG1SQkErOHQ4TVZ3ZnloalZOS3hOclRFNU54?=
 =?utf-8?B?VHowbklMQ3UyLzkxV0d2dDBrNkVLczg1a2FsVzArekxSbVRFWHpIUzl4ZjNo?=
 =?utf-8?B?SlFqblFCWDBFYUV6Ris4RXMySmZnMCs1MnJrRTIrenJ4UUd3bE5DWkNHdnpu?=
 =?utf-8?B?ZlRKUXIyRHQwK01LM3FhTmxZNk1RNXJxVWJpdFpEVkNTRTRrM1B1Nm04RU12?=
 =?utf-8?B?SVhOMFlEcHhIZVI2ZmxieXc5Q2FnOWlGek1jQXZWMG9SRjFxamtxcDdUVURi?=
 =?utf-8?B?MDZjRE9OWCtjeGRMSk5CU0pQdFFONllwc1JiWndDNlRENER0cmlWRlFoVFU2?=
 =?utf-8?B?NFUwTHFjWG9DUVFqLzA2eWkzUUZ3eHUySktXZjhLekx5eFZWM2cyUzRMM1Fn?=
 =?utf-8?B?bXBWSlRGaElFQ0xlbjByZzg5WGI4eUtmQ24xelpQYnlOaU1ZY05kMXhlbStw?=
 =?utf-8?B?bTBQcTdCanBuaEdEd2x0TnN3cy9PcmFwSDcxZzhHYnZzSnpnb3g0UVJHVFE4?=
 =?utf-8?B?V3RhUmhJL2tDaXRFeEw1aktGRTZFaEZla1F6c0pQdU1HUjRLaHJKa3c5OXdB?=
 =?utf-8?B?SjF0VE94K3BZNEV4OGQyeGRJWGJaYUZqRmNWNkZPTHJKOWx1czlMRDdRYVdl?=
 =?utf-8?Q?Jwl4HEDzG55ATYkiu8gQrChco8denMxnR67Or21?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnQxTEFqUnV1cUpTckx4Yi82bFlWbEYzYVB5YnVYTE1vblhJN2RhbWIwaVhG?=
 =?utf-8?B?cFp5R0FwUXRlcms4YnhzV0tYeEF1S1E1UUlHTXlyWXA5MExnbTgyN0ZMQVVz?=
 =?utf-8?B?NjRkV3FDRzR5SmtUdGsyUzMwZGJrQWVSQ21DMUtkK0FlQUNFekZDMmh1d2NV?=
 =?utf-8?B?bThkVzI1SHNvNTF3RmtHSTVSQmV1T05MUzU0TUNubG5XdzZiek5yK2lHc1Vn?=
 =?utf-8?B?YkJVMm8zTFUwcUlXZXYrVWpKa2ZLSkhSNG82Nmo2R3lnZkNVUVphTjZEWUlt?=
 =?utf-8?B?WTJmS1RLQXRhTU9FT2t1ZTlwU1E4ZlNtNGowaFBmU0N0MjFCaXZnbWhqUzcx?=
 =?utf-8?B?VmoreFlRWlNpaTFYNzFVc1NqY1p1VDdXNiswTVRWZmtVMUNqUHpxOHM4eTRi?=
 =?utf-8?B?aVRwSkpzMVY1ZkVpV2F5azB1QytPYmZBMlhROU5MRG9vOVpsUVkvUzRWTVNq?=
 =?utf-8?B?Y0FKZWtOc2d5VDRQMitaWUlTOWZacHVQMnVqb0s0YkQ0UkI1d2NXaDlqbDdN?=
 =?utf-8?B?bjN1WmhXenJOWExPUm9FRUZtVXdkLzdnUEp0Z1Y2THFZbVc5NlA1UExiWk1k?=
 =?utf-8?B?VnNneFUySEVvQUhYNjFCZ00xcGwwRytneTFtM0tYbWtvdWdoODA0SFRvWmRj?=
 =?utf-8?B?cmlDY1h5NHBGUTZrbjdIcktSMUtoSExmcGViU01SQjFTcmhmVzRCYjZkQnQ3?=
 =?utf-8?B?R2ZpbHN1TmF3akE2MWNPSWNWN1JsWDBKSmg4VFBUQXk0R0FuNXJyd2UzeEVT?=
 =?utf-8?B?dER2d2c0RzEzeVI4Rm1RNVgzTXR6Q3V5SzFqM00vTTBaQjdwR0RqSEp1Z1h3?=
 =?utf-8?B?RktzbUFBYU5RaU5xaVVFSnhLbisxWmwwK2w2ajMyc09LVnRsbWVZSk9DeStH?=
 =?utf-8?B?RlV1d21XOGtJRUduYkNvYUNDWGgrc0l0OHJwRDZiVFE5bmNobTFCTmpXVklD?=
 =?utf-8?B?ZGtGWXdXVDg1eDNRZ0twUklqT1JWSE5uV1RrU3V0a3c3WjJtVFMwVzZiTTVE?=
 =?utf-8?B?VzRPZnVGODdHTFRMdk84TW9ncW1EQVJFaWRPdHZpcmJIQVp4V0U2QjhxVFRu?=
 =?utf-8?B?NkpFOERma2hDb2lsOExkbU1zdzFpald2NWo3QzdmRTZvams3T1FXcEpiYmxP?=
 =?utf-8?B?ak9FVDZvWGtSM3hubzRjYmhYTUNKN1NzdDlqc1c3TWkwbjhabnQrcUFrY05m?=
 =?utf-8?B?ZDRsbUF6TkIvalo2enh4bUt4OTBadnRuQ2pBRnlaYlpQdnJ4TFc4dFliaFN6?=
 =?utf-8?B?UmRzUzVHbzRmZmRDTms3MVFZSndocE5ueks0Snc2c1VtODFvTDcwMkpLVDk1?=
 =?utf-8?B?QmR5L3lnVDdPZFMzQ1hmdytURHZkR0txZDFQc20rS3Y0aEpCRTBNcmc3cldq?=
 =?utf-8?B?MlZlV3lrblVnK2xhS2JmYlVYaVZxZytJcFFhdXNhRVg4dTZzdzdmN2FDTUlZ?=
 =?utf-8?B?bHpNUnB6U0U4N1U0emVDVjR6QTNLejByQUM3WlY5cVhmRHA0Z2VCUlQxZGpx?=
 =?utf-8?B?MnZVbW5KN1ZzVndNNVpvamVPaDJZQnNzeFJ1M2M2UHIyS2pNbUNhTUhiZ2wz?=
 =?utf-8?B?Z2c4RmJGM2pHNEVrUjJuRXR3R0hXb29aV0lIQ1RkU29FNEQwZnRjczBFTmI4?=
 =?utf-8?B?akJTZndOSHpWZkJWTDJlNjZDbEIwcVVPbzBmbE1xbFkwZHk1bkJ0OEl0aWkr?=
 =?utf-8?B?bHJScThaSzVJT0RMUDZ3eXVkYjU0RU90aXJsZ1NUa1cyZ01pWm9yRm9EbjZ0?=
 =?utf-8?B?LzkxNTFYZXczZmhoQlpjeVNlQ0NxZFQ3bDAvcC80eExvakZXZ1FOVmdQMldY?=
 =?utf-8?B?WkFMQldxNTBNRDhGUzFlZXpnTmVEZDIzcUhDVTcyUVE2aTdYTWFzdEw4Sjl4?=
 =?utf-8?B?NnhURHdsdTdPdmNGcmN2T2FFTytRWnY1VHVRMFZRL1cvdjZqSGhyV3FCeTZS?=
 =?utf-8?B?eE9vdHVMZVM4L2J4YmdPdEVGNUtRUHZxVEZJcm5oNWN3dlJFUzlNTFh5TUpR?=
 =?utf-8?B?WDRFREZKb2xHbldDUUhsU0xXQjRzZHpWVnpVd2V1dFBWTWVQUGtXWklLbTBt?=
 =?utf-8?B?YkN0bzY1MTg3WlFVcnIySzhENVFTN3BIeE9vM0dBUnZiZjBnVzF0WjYxVVFN?=
 =?utf-8?B?QWNCQ3g1Z0EzMDBHL1E5TnZDUTdSTlBLOHoyS1o3Y20rKzRDeGxMR3VjWFZ6?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ae1863e-95c6-49e8-9fae-08dcf848c56a
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2024 18:37:41.6147 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VubWwc5K0m3RkiVjgsOj/gIBgtS8LOPL69uxWGJd9eEziPzrxTJZfu9mTrp5WrXJ7fhnR6vmJbxqpG8LRuifkFYagXTIxSccjjHXQ8te81U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730227067; x=1761763067;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8u4tP+qZEl4801SgU+Zjno4TeDIrwBYXj+kuSNNKhe4=;
 b=izmlFqzFn05AT4WCJx6NbljFx59lWK1nSTkQkeFhEaT6FqZtSEoXxot1
 +yfqE3Z8Jc8bCDsZwi/1kWrgJ8z17AFSE9RQ9ppfb7HJ6qVHtjWYLDX8b
 VBGQJEVx1dNvsSWPcst3auZz/cUvFSHkiRpP1+cc+323Jmngffu7yCObO
 P59SM260L01MDqzRhdW8FZ0ab5UZ1TNXmiYJOdO6f4HkVrN2BhvWChphS
 rszc/vRo6KROTRcE5FH+JTsay3ltvMNMH2EjKnlGGx/FKLEH+nUF9p3P8
 mdGJ+cgp5+xQsTfye3WXf+QUsHERkQybYL8jSs/XAD3l0/5yMrG1RKzdw
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=izmlFqzF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 0/4] Fix passing 0 to
 ERR_PTR in intel ether drivers
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 john.fastabend@gmail.com, maciej.fijalkowski@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 Yue Haibing <yuehaibing@huawei.com>, ast@kernel.org,
 linux-kernel@vger.kernel.org, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, netdev@vger.kernel.org,
 jacob.e.keller@intel.com, bpf@vger.kernel.org, pabeni@redhat.com,
 davem@davemloft.net, vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 10/29/2024 7:44 AM, Jakub Kicinski wrote:
> On Sat, 26 Oct 2024 12:12:45 +0800 Yue Haibing wrote:
>> v4: Target to net-next
> 
> Nonetheless I'm going to assume Jake / Tony will take these.
> LMK if we should apply directly.

Yes, I'll take these through IWL.

Thanks,
Tony
