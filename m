Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 468E3C875F0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Nov 2025 23:43:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB99283E86;
	Tue, 25 Nov 2025 22:43:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4GwN1Zl3I8QE; Tue, 25 Nov 2025 22:43:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A50A83E83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764110597;
	bh=+Nr/AMeWa8RaN1H7ixOMzpWHKc58L8IO1mjHpaoeoaQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V42Atjntu4SPwMmzCs0aq+MmSHvfS/BMkbtTbOuNmGBRTFU/tSEvcz8Dnk5ebI6oU
	 2/77rn8QzMCyetgL8IjXSeWf2Ej0PE6cNDfrgpdiAU5Zug4jBGRfPcDS4slQ1VdYU6
	 KC5XsOUVogl8kG0QvohBlMHJiaFme0I6H71gaDwHhmGgaF1A4GoNpXCAzZJi/JmtVq
	 7pz9obfQbfdZSMPDxkkbEiyUz6/ldoV/dGlsu+EHyggXTsyvYTwFMQnuPqiuA+fD33
	 gU39zlnSxOHDjL7RNYDXRNGfY9ySO8axNzOXMfUOnMD2osFzHRCKgwd/0xrmY71VlN
	 7ug4emOCGAQOA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6A50A83E83;
	Tue, 25 Nov 2025 22:43:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 330721A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:43:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1CDA540567
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:43:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9l-76ar1Ssjm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Nov 2025 22:43:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4537140546
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4537140546
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4537140546
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Nov 2025 22:43:14 +0000 (UTC)
X-CSE-ConnectionGUID: ucrU9kz/RHmzQDt2Y/scCg==
X-CSE-MsgGUID: 2WwWzZdwR6uU9WXU91T4KQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66299873"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="66299873"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:43:15 -0800
X-CSE-ConnectionGUID: AXIhRAdyTf62w/e9bP7RBg==
X-CSE-MsgGUID: TS+tlneIR52Xh45/FYMmpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="192026635"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:43:14 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:43:13 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 14:43:13 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.37) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:43:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bDN4Kxu24nOD0kI/PRJ9JpOZ+U7qnhqh4Vw3N4wLZi9d/8hEwCkwelOeeih+epwjLImEklKpQuu44sJqcqpPUztA9wOql1XzYYEvbBb6KUBgCdj/NFFaQXm8sekvjRgsbEmDslsPnX43FJLJI+1BOBVgD0Ghg0o36/nABQyUHpEQk66vtfDlbQKhpQSjsCYgwrLsfX+Bhku4l1YioGM8dHSBx3Ct+KixZCHQJWTP9aKvxKB8p3eJiAyLYzuFNaCYs1CkBiA5WJxeyiwqVVIR8XiWrcNqjUeIkz1wJxtJGu2BefKGUYRMsj5YRyT3hKe0bffA5bva94q+pwG83Il8FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Nr/AMeWa8RaN1H7ixOMzpWHKc58L8IO1mjHpaoeoaQ=;
 b=kKLbYJ3rweUnyurd019A5xnuorzCTbOxCp2FmYCSoiRiXQXgx9Rrhre8mcDNKbL0iHdtQCNWtZuQ1dBn6tyDpRqeMjdHgj/9mFdEAK28cytWRZqI/jVBFypbvrBhsm6mbAhxfXhbhV4qezXRSjR+/2UnlCHKZkrRJLcNFEzC3sSXqqN+lO7Rj6oyqfRrjgv/khGHjuicnSXZggBBDgtdG9B5CsqBi2e2aKxBNFBBZVXg2MvLeDjPjMP5y0dWRpigLI4JEalPzXqIvmgdJoGSA1V8y+Y6qgf4XF+d+aQyuFmczsfQKIy1+zxl9GVpUkswmYSBA/nLYojty0bBMY73Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by IA1PR11MB6418.namprd11.prod.outlook.com (2603:10b6:208:3aa::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Tue, 25 Nov
 2025 22:43:07 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::24ab:bc69:995b:e21%6]) with mapi id 15.20.9366.009; Tue, 25 Nov 2025
 22:43:06 +0000
Message-ID: <90bdad3c-0363-4f0f-b7df-f533e0db7e0d@intel.com>
Date: Tue, 25 Nov 2025 14:43:03 -0800
User-Agent: Mozilla Thunderbird
To: Guangshuo Li <lgs201920130244@gmail.com>
CC: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>, Florian Westphal <fw@strlen.de>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <stable@vger.kernel.org>
References: <20251104082801.994195-1-lgs201920130244@gmail.com>
 <b53c3a7e-6833-4e87-ae24-c344f2c3c5a1@intel.com>
 <CANUHTR8QDRPZE1b8msLC2WXkdjSjn_+6co0RzsLy7BPENUxjYQ@mail.gmail.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <CANUHTR8QDRPZE1b8msLC2WXkdjSjn_+6co0RzsLy7BPENUxjYQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0358.namprd03.prod.outlook.com
 (2603:10b6:303:dc::33) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|IA1PR11MB6418:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d8898a0-da4c-4435-effa-08de2c740017
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2N6enZyVkh0M29kUXoybnBCZnBEdnlqc2JqSVI0Q0NiWUpSUTI0QmVEQUtT?=
 =?utf-8?B?SDlYTDBhTm5xZG5qdXVtVkQ1cnVrZlNISE50bytaUkowNERrL3FDMk93aDF5?=
 =?utf-8?B?L2c0U3Fuc0szTDF6TE1YZmZrRTFnMEZ2ZXJzQjVTR0I2c0g0TUcwVkFUR3No?=
 =?utf-8?B?YzhPRTk3UDJjd0tJSmpNY3hrSFRWRE5nS0dycloveUZsdVJSSVp4LzlrUG1T?=
 =?utf-8?B?Q3IzUTJCVmNlTU02T0pyN1U5emVHbWM4UmdqWXprdkh2dC9RaGFCVklyenN3?=
 =?utf-8?B?VURKNWErNkRlNDBhRkdZNllpSjVMcXhMR3VKYzRxTUlRSFRWVDN0SWphclQ1?=
 =?utf-8?B?S3Fpa2V4NjFxYmx0SkdqNysyYk5wV1dxbWVIeURWQ3JiSmg4Sld5RzA4MHRx?=
 =?utf-8?B?MTQ2WHJzdDZ5UjRjbnBBNmdVQUV3cEZoWGdxUHJvaFNMeXZIMzZHTWFFeTR2?=
 =?utf-8?B?QVdLZCtZVVFiSHNOWER6Z3JpYlZhV1pheWJhKzhBTGZFajZMblluRVZLcW9i?=
 =?utf-8?B?TEZzZnJOalFnMWdQRGtPdGxXT05tQVpseXVWL2RGVXZoUmhwM25zaStOR2U5?=
 =?utf-8?B?ZktOdHZVR3RBYlA2cVBmOS9QUkl5SHNiM1VvVWtadTNYWmpLTUVJZWVGNmh5?=
 =?utf-8?B?dkJKQ1c1K0g1K2xzZVdwZTlDRTNGTlhYM3pia2JoSy9pQTRMZWZzS2VxTEY3?=
 =?utf-8?B?aHh3TnQ3TEF2cE00bDlmODdQRWdCczJmU2NHdjRDa2ZMbmMwTm5RSDFwT016?=
 =?utf-8?B?QnB4bnhtenBFczRqU25mVi82RFd1VGpRb0czQmFOQ2RsL3RiWTFuMG9kWVlK?=
 =?utf-8?B?cE56QTdTVnRTWXpkNmZHMDM0WjFqQ3hqV0hvcEVUelFqZ1VGMVdYbEYvdjlI?=
 =?utf-8?B?WUFhRCtqMjMxNEI3ZFNTZ1c3aTM1MVlHamQ4RFd2cEI5VlhBNG9XaUpwc2Nr?=
 =?utf-8?B?STY5ckVZN1lZc2w1akJvWGpJV3h0emVaY3RWbSs2b3dqSlROQmlIenhXU2ZP?=
 =?utf-8?B?Q2YzSndYNVJVNG9SbWlJckM4VHQyWkh6cWp6MEw1eHRXRGtsRk9na0s3bC9K?=
 =?utf-8?B?NFQyZGhrV2FTNVZXUlE2cU1WQXRaMHhSME9SZll1NTJhcTBYVWFsM1ZCcjBC?=
 =?utf-8?B?dnNVclU5Q3ZpS2lheDc5RmI4UElpcE5FZDVxQkRtK1JjRFNjVUlmTG5tajBM?=
 =?utf-8?B?dkpxenpVVHhzdlg2SEZCUnFlbDFlRUZ5SWVYMjcraDltVkRDWjFjQzgyY0gy?=
 =?utf-8?B?TUV2c3hRVVQ4WnlBWXRuMlFaZDNiSDJNejRPVlNJL25BNm9kY2c4eEhyckJl?=
 =?utf-8?B?QVAvK0JQWXdQY2FuUW9vMlNkcnVJS2VPTGF1bGlWTEZwSmJPbzJqMVZCWWNI?=
 =?utf-8?B?ZjBNZmhaZmtzcU1GcHNmSFQ3cDJvbXRoWkxZTnBRaFdzRkloeEw0cEdJK1Jz?=
 =?utf-8?B?OWFwU0xkMllUTmQyZDE1VG45Q3lMeE1aeHM3SGVNZkZvNVJZN3h5Q2dtd1J4?=
 =?utf-8?B?VFhnVEpTSTR4Q05FWCtiZDRtOUdtUXZJY1hCZEsxdktCUzJoWWdneXJQaUpU?=
 =?utf-8?B?Ni9TVTBYQ0Q4WUNycHB1TTdPdHFrZGoxY0lqRFJnbzhwQjUrR0lpREYrOXRh?=
 =?utf-8?B?MCtzWnVyKzFZTGNoeXNnYmhjMlJ2UVhGTEVnUFZwTUUzTC9IY20zWWxXTnZh?=
 =?utf-8?B?UkxsblduNXlnUnN0anRsakdIM0YzRXJhYkR6bnRGZzFURGc3cTFpZ0ljb3V0?=
 =?utf-8?B?WGp3RDdTNENJazc0VnltdHpMVHVoV1NzY0g1ZWc4aWxyRExxaXh5T1UvSXNj?=
 =?utf-8?B?OGtncnlic2tFU3R4V25GVTdpS2xhVlNRbXZoM0pFSUxLNlJ6TFFGaHJsQmdX?=
 =?utf-8?B?VElUSzBlR3MvSVFyUmVoUUlTMmx3VklHdnlXVHdpa0dUS3lrVWd6bDJOeTZ1?=
 =?utf-8?Q?jqi/RLkKJinL1IExiYp4gu/ZHFHZ4Uvk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THNXcm5ZenVjTStFdzdNcGtNeFZ5UmZZUVZlRUpCZHdITEo3Q2VtMHFibDNC?=
 =?utf-8?B?VjhUUFM4YnlWckhRMDE1QklKWGYxQ1ZGTGZCc2M5K2tCd1cvSjNoK0YxQ0NF?=
 =?utf-8?B?VUhqL00zK3dHU2hqcHZWVSt1MnFUVGFoblYxQTBGald4N2VLKzBGUGJQN1po?=
 =?utf-8?B?Z2hETTREMDdXdnF0eHZVUzJpcTlyd3R6QlZuWFdzSHd3STMyTzRZckplaXQr?=
 =?utf-8?B?ZGlBdllMc24xSGM2V1k2bTZRZkNpNzl2ZUpXaGFIR1pWMTZ6TTg1M1dEMXlI?=
 =?utf-8?B?Ni94Z29NNW1UZkxvWVd1ODFDYkZYTXdxUEJuTGo2bWVVZm13UlVldU9naHpr?=
 =?utf-8?B?Q2x1a2orMHB0SG1ZRXVpZUdlOVY1OXRNRUV2NlhYRmNXUFpiYWNuQmhjSU5L?=
 =?utf-8?B?UURGbDkwSUg3SlprOG9LYkNYZ1Q1OWNLbWdZbm53NFd4djlJd0NKQU5YZVJX?=
 =?utf-8?B?T09KMHNUTDRtQno0OHM0OHQ2TXR4OW5uTTRSaGpITkYzWjJLNEF4aDQvdDJt?=
 =?utf-8?B?RG41V1ZXekhzUEN3WXhOUElaZXVGaGY3SVRubUx3dGNzSm1lSDNBeER3TzUz?=
 =?utf-8?B?VGIrdG1FL1BSM1p6bitmS1pNYm9ESCtSR2pERDlCeEFXaTEreTdUTVlvUXpz?=
 =?utf-8?B?NlBSR3NpUWRBV1I2Sit1SUd1NDZJOFN0dTNFWm1RRjZRanF4UmtCSFBzakNG?=
 =?utf-8?B?WktsdndZaUpuaVI3cDI1UGRzVW9iTHZHMFpCWERIRmlHMW9WWmt0UDZSajF3?=
 =?utf-8?B?dlRhTGpwSFIyeUVrbzM3Rnhld24rb0ZocFUrdU9pS0tpODQrMWZWT3ZsUm1X?=
 =?utf-8?B?SEY5Y28ybTNkSFIxVDIvcm8zVklGMzA3dGwzT1hWSW91UHpMdUR0bE01TGEw?=
 =?utf-8?B?VER1Yk14NzdoWUhEakFGSC9IM2x0MHRkWHcwbS9WcExrcWxoQ3k2SVBjWDI0?=
 =?utf-8?B?bmg0c0RDSVFzL0QxRGtOU2Z4TVd2eUhSSW1wc204OUVFaExLSHNkZUxtTmpo?=
 =?utf-8?B?TE5wTHZnZ1NZNm9CSHdFRm9QUnRsM1ZMdi9QM3h3UTE4eFNSeU93dVE5dVda?=
 =?utf-8?B?RStKY3d3Wm56dU8wYnZESGZnUmZrOWovY3pZSWhSSHMrUWg3M3dRZzh2bXJu?=
 =?utf-8?B?OElpVEpiOGNBdVZLb1kzSmZLZ0hLYVBhZnExUDFsSG9jUDE3dTlOaktDVFRz?=
 =?utf-8?B?Z0QwdkNPakZVSDR3R3pLZWVQaDY5VldleFlrSm9oWXhkRmo0LzhvblZ2dTNm?=
 =?utf-8?B?cTJCOE9FanQ1UlZ1L2VNTFYxdmRBUlQ5eGRMbGgxalF5QzJBQktXRUo0QXRF?=
 =?utf-8?B?dzZZM21mTVViMTExekplNkI5TUVyL29ET0VlV3JDL2hiU0I5MGVZSFM3d01k?=
 =?utf-8?B?Zjg2V3FJdS8xdnZDbm56NHNjejdWQ1BYR3dyakIvclk0UEs0RmdKVVV5TjdP?=
 =?utf-8?B?ODRGaUtlVzF6NUh3TzI1NDI1TFM4MWVYZnFraTlHL3pSSFFlNVJvODJGK3dB?=
 =?utf-8?B?dHkwWDBtcElHR1NVQXZBRVJ3MFZOaUx3ZGpHb0JWZTRnOXBqdHBpb2IzaHV4?=
 =?utf-8?B?UjQrZktTclFiVTRlWEZqclNIMmJVV05NKzB4YVQxeG52c2VlNGFpb0pZSm9B?=
 =?utf-8?B?VjNuRzQrL05jNllOS2dLSzkvVlM2MU85aCt0ajhEWDZiNVlvTkd4dUZlOXc3?=
 =?utf-8?B?SDg3clp5c3NuVS9LaUJwLzk2OStWZ0dueTg0Z1ZCdnNNVEQ3N20vR1hOMzB1?=
 =?utf-8?B?cHNvR2MwaFc4bE9JOEtuQ1Nwc1owYWpaUWpUVzdLQUZPSlMvYWhiUXpxVXRz?=
 =?utf-8?B?ZkVnQkMvUXByMzR0dUJ5M1JIK1BXZjJKZ1VTeXJvbit0STZXVzJPTWVpZkxn?=
 =?utf-8?B?MWJIMThWSDNROWRLMHF4Nm1wRnNCb0JOTnMyRzY1aHBmMkx6M3lNT3NtVStL?=
 =?utf-8?B?cjEvZU93dk8xeHVOOFduQXRaOUhrdC9OL2txRkduQk5jYWcyQ2pCblV6VDEx?=
 =?utf-8?B?Y04yRkl0S3VtdGZERk1qVDNxbUJ5WGpjVERRWEg2L1pkK25GWTZKVGFVWmRV?=
 =?utf-8?B?ZnhUTlRHM05VNG42bVJDL1R5eU54OFJFRjFOOUl5WndRM2toMkJNbjQxbzFP?=
 =?utf-8?B?ejdDbDRleENUdWxQYUJidnMvZEh6UnU2bit6K0YrNUhsbWFZN01PcEJxcWJL?=
 =?utf-8?B?VFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d8898a0-da4c-4435-effa-08de2c740017
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 22:43:06.6994 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9CY8WusZrT6IRlUZBbkEPVqFei6JUn1ySKuHfs91nec5CM3IOaFpKT0Rxogne2PPCL+IocyDmmBKcoGfRoPNKjbOkh13meOCCSRfVPh+ZUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6418
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764110596; x=1795646596;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IphHxLD1VKCpccLRoIb5MS/+3rTf+B7QHDFf42QvM4Y=;
 b=mRltKgv/+WxJBRjATwfV/KbChllC9CmKIqhmiBSzwoWbNQVxRCPCqpGU
 SMzK05p8+Ep1wKOSy530Xh9CNJZOLlVq83yjAxaWuYKz9j3uFYwQIa8UE
 aAopDtuPLCKOCKCEW36H/c2C72F/41lpK6N3HEWnBab8jJIRqxd1kw+ts
 abPKJRTDc9p2f8jOWqsHgG1TDu7h8FyakOg/5Tf+lJMj4BvYmbrHM7n87
 ritK8dUFaPdA0z/0BwoN6fZMbz8NSKrANDhwttElgYrYFys2d7zCmhtMe
 dmGJQ/O9nET6+x2zHTvbN6eQvS5I/PnrB+x+emOMQlD8JIn3kbec2TQwA
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mRltKgv/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] e1000: fix OOB in
 e1000_tbi_should_accept()
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



On 11/23/2025 7:45 PM, Guangshuo Li wrote:
> Hi Tony, all,
> 
> Thanks for the review. As suggested by Tony, I’ll keep the declarations 
> at the top and place the bounds checks before assigning last_byte. I’ll 
> send a v2 with the following change:
> 
> static bool e1000_tbi_should_accept(struct e1000_adapter *adapter,
>                                      u8 status, u8 errors,
>                                      u32 length, const u8 *data)
> {
>      struct e1000_hw *hw = &adapter->hw;
>      u8 last_byte;
> 
>      /* Guard against OOB on data[length - 1] */
>      if (unlikely(!length))
>          return false;
> 
>      /* Upper bound: length must not exceed rx_buffer_len */
>      if (unlikely(length > adapter->rx_buffer_len))
>          return false;
> 
>      last_byte = data[length - 1];
> 
>      /* existing logic follows ... */
> }
> Please let me know if further adjustments are preferred.

This looks along the lines of what I was expecting.

Thanks,
Tony

> Best regards,
> Guangshuo Li


