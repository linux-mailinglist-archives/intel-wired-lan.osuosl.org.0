Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE124A047FE
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Jan 2025 18:17:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7430B6076B;
	Tue,  7 Jan 2025 17:17:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Mt-GUkmlbd6j; Tue,  7 Jan 2025 17:17:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 911D060767
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736270233;
	bh=JVBc3tW2WTs42oAKcJkZWfx51mKEiHxQ66hTzVcfHDM=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AwD5DoxlDFChSB20mzRNB+KrVsdhCAelcX/HdltKVSok+93kK0nVk+OFKCVXCZ2ZX
	 HbwY3JTwUcnw5sQDn0vtPuGM9oy8R/BeZTzVTfKehONCCP139Ok523s5CO2K9LOayh
	 8WWnPzfSrXikcMOeuChUOxNj0JniH1Wb6AW+m9/ZGN5E5V0POSn/FlLtSnUeBPBkXS
	 qgdheYeLbT36E6OW2pVKAieTbBDTw8pQW1XPTGNbG1NmKXuejTebiCTb+ylUqeafAW
	 O6zKq5CjzmoPu0P1ahrgUHt3TfvMFxw8NhHcj0n0JTF86zG7tztISTAfmp3HuJN2W2
	 BkC3yvzUppxLg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 911D060767;
	Tue,  7 Jan 2025 17:17:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id D2A3E6B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:17:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BEEAF403E7
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:17:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QnsT42ec0D6u for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Jan 2025 17:17:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 562B3400EC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 562B3400EC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 562B3400EC
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Jan 2025 17:17:06 +0000 (UTC)
X-CSE-ConnectionGUID: o16J930MQIy06fV5ZoXnAA==
X-CSE-MsgGUID: e5J62gmmQr6U7+2hMPWVGg==
X-IronPort-AV: E=McAfee;i="6700,10204,11308"; a="53883190"
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="53883190"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 09:17:07 -0800
X-CSE-ConnectionGUID: bP5hSoXmTDOEfpJNPRJLiQ==
X-CSE-MsgGUID: ERlelYu8Tn2+vjNrmRcW7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,296,1728975600"; d="scan'208";a="133676610"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 09:17:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 09:17:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 09:17:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 09:17:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PWknWFzh56szgsIByWCdy0Sfc8LS3i4YusYcMr4NueCcvYdkExp/FrRV24zUIg8KHbtZFtS7sqWFdGzGvBPI/SAgeglLmfmT9SRAVMhy/uS1qpRBU7ZqefPprs5YZwsKnKnvPBtUn7eNeRvsfVFThVuGeYsGhUGkgImC++5xYKWgbe5h4KHlhYFuZez37xVXIXSGHQXpA0+I6DpGLITgiDajSCbkrUZvLZZ7eo+msS/AuM6C8fvTSYupBMfNrOZGTWnfM6D3tUJWs38kJWG5FSGyRYinKc5BYFwkxLGHjTuWi5LcyC7OmWlXqQuBXeNZQ+uhaUrwcBrKa91CMS5Slg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JVBc3tW2WTs42oAKcJkZWfx51mKEiHxQ66hTzVcfHDM=;
 b=nY5T0VEwoN/juw3YQPE08JbwTLyMf1b6e9kZuMreEorbOr6ulu5iG34y8Z1xCInYHKFgVwhy9AZavd2kM7scGwXAE9V2nIyefRv1929kQuh3pJrkF5rY4bQPHykuDJ1zGIVvp8mb3pHozyxUsoA5SU7qtLACByR7Jp2Ab8+hydoIgFtFsw6X158EJNYybmovc8TXufGaIat3NAdUrstwahHqtMdZfGG4oRTZnbaieEvT1JoOcvkMb9gSL5d88myoYPh9NjLti5K6lwVv+EsVSKWPKcb7ajGP66E9gIUntRXAcjejrocU4tLNXiSBFATAbHeZl/7UKYDtHERLx206eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL3PR11MB6435.namprd11.prod.outlook.com (2603:10b6:208:3bb::9)
 by PH8PR11MB6564.namprd11.prod.outlook.com (2603:10b6:510:1c3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.12; Tue, 7 Jan
 2025 17:16:59 +0000
Received: from BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab]) by BL3PR11MB6435.namprd11.prod.outlook.com
 ([fe80::23a7:1661:19d4:c1ab%7]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 17:16:59 +0000
Message-ID: <32775382-9079-4652-9cd5-ff0aa6b5fd9e@intel.com>
Date: Tue, 7 Jan 2025 09:16:56 -0800
User-Agent: Mozilla Thunderbird
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: Haifeng Xu <haifeng.xu@shopee.com>, Edward Cree <ecree.xilinx@gmail.com>, 
 Eric Dumazet <edumazet@google.com>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>, "Kwapulinski, Piotr"
 <piotr.kwapulinski@intel.com>
CC: Przemek Kitszel <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, <linux-kernel@vger.kernel.org>,
 <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
 <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
 <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
Content-Language: en-US
In-Reply-To: <0d98fed8-38e3-4118-82c9-26cefeb5ee7a@shopee.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0033.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::46) To BL3PR11MB6435.namprd11.prod.outlook.com
 (2603:10b6:208:3bb::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6435:EE_|PH8PR11MB6564:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f300808-d8f2-403f-06ff-08dd2f3f1836
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RFFPcnVib1FXek9ieGQrTWgxbklkS056Q2tESzNsUXBIRGhGWEhyeVVDM3I4?=
 =?utf-8?B?VEoxU2p6N05VbGdCVW9qR3R2OE9OUWxadXpzZWo0OGpUYzF6bDJUdThtbjdy?=
 =?utf-8?B?UzlrT0V6WGowTHVVQll0VDdKQmlFeVExZGoyVXJRK3RoQ1p5SUl1TUplZTV6?=
 =?utf-8?B?NDcwOWtPSE5zeTAzLzJmZCtlVDdkREdja0xrYzRRcjRZbFIyVjUwRW43S3NG?=
 =?utf-8?B?YkdZU3BTUTVITEtTQUU2aXRLZG5RcGRTS1R2WTBIOVZRTzVJelpGdVVMYnI5?=
 =?utf-8?B?eXRwbWNzL1ZUbXFoN3c2SHJyS0VWcVp3ckFrci9FcU0zVFhxYUpnanZueERJ?=
 =?utf-8?B?dUIrNU5WdTV6YnJYQlN0ekVBbElmS2hPbmNPNnNqVzR2V0dqblNYclJLdkFa?=
 =?utf-8?B?TVQyZzViM2FnTzJPWmtIeUsxM3l4czU3SXZLRTZSS0YxWGpTM2dHSzZRQkNI?=
 =?utf-8?B?MUNLYVdNamFkamRlckI3OURvWTNtMk5QK2RnTmVVcVA0cE82SmJaVm9XZVov?=
 =?utf-8?B?NUZ0aE9tMkVxempUK3Z3djQ3YndKVDVQTVIzZWRWclhyMGgyTUFVbTV6WHU3?=
 =?utf-8?B?QTdBbkhzZzNjU3NRLzB0M1pLZDN5N2FWVGJTamZnd3FDR05KOHNVbVlMcVZh?=
 =?utf-8?B?eTc0U2dacmtoM1FDelhGVEZPc0tSUktFSFN4RkpSTmVQRitWVE9tR0Y3TkN0?=
 =?utf-8?B?dnJONVVRdVVzOE54a0ErZ1VneWZSK0JYT0VDVFNpVkFnZzJHRnU1L05XalVJ?=
 =?utf-8?B?dDMzUHk4WGQvQ2Z2MTF4cjRSUGFsY25IM1I2blRpMm5scFZKMlE0MGJob3hI?=
 =?utf-8?B?OHNOd3FIZHJLbER6Vk5JbzJaNmV4TVBPSE5RNWZtQUdkTXQrTy92V2FtVlVz?=
 =?utf-8?B?UlpBRWV2M1RkQjUrQnZwTythaUt5c0tvRkYvcjl3bXRKeCtqR1lCcWY1ZXM4?=
 =?utf-8?B?Y0M4RXBNSmZWZFVVYW45Tmp5Mm9kSko5bVZmU3FOODNQc0g2UFhzc1ZxdlA0?=
 =?utf-8?B?ZjJQeE1KUGxwTTY4UW5qY0ZDOWIvUW0xZUcxM2dQcGEvdTdTL2xZVmhSdVVY?=
 =?utf-8?B?a1EwK0U3dy9SZGovQ1FYbWdya1RFQ2crY3pSa0kreDlYeUhsK3dVN29CMWNu?=
 =?utf-8?B?VjdhT0VZZ1hZdExhb0k5RjdWSG82Zkk4Ly82WnNORXZqT2x1NTJtYmFyL1hw?=
 =?utf-8?B?Y2VZSEdkMmxmR080RlZlTEZOT3U0NWFJR2psSFFXQ0l4ZFg3Y1RtMkd5RVRy?=
 =?utf-8?B?bDhYQmU5V25vS0hab2N2aGQwTldqdHBOZWM1QmxXY29vbXovWkZxdHF6SWQ3?=
 =?utf-8?B?Um8xbW9kU3FpVW5mTkhZZU84cTRFU0FEbzQ4eDB3eStkRDJiYzFIeTVqNWtT?=
 =?utf-8?B?SkxJR1M2RTVmcTlBMllpRC9GbE9MZGcvUG1GYzU3elpReDkxK2tZYnJyODdD?=
 =?utf-8?B?ZWJnYjRNd0Fld2lnaUNNQldpOEMrR2czTHZubE5EcTgvcEZya3VtMkt0UjFz?=
 =?utf-8?B?MFBzV2JrSGc1TGo4TGt2TE1iMkhrNkQ3aE9sa2VCcUZDSXA2TncyZ1Ryc0pT?=
 =?utf-8?B?Z0FTQTZldWdqQmgxbVdFR2R3cTh4bEpVaENrSzdWcmozVmtYd0g2VVZsUjF6?=
 =?utf-8?B?K0hUZFV5anNHZG9oeHRiQVA5NjFSWkZNVnlydUppY09VdHNFS1FqcFhZV1lp?=
 =?utf-8?B?S2U5NVBDVnR2bFg3VnEyd0pwN3E1bDZiUXcybWJ2TWVYZTl5RWtFSVI5YTk5?=
 =?utf-8?B?YmxLKzMwRnQya2ExTGR1cklEcXp1YTlta2xKNUJ5NlFFZlZ3RGpGeGp0ZkRq?=
 =?utf-8?B?cmFrcXE2VVM1VFJQTHUzeHpJWDZlZ01peFRlR20vaFpNeUR5L3N4eGl5T0dP?=
 =?utf-8?Q?PCqJXLUTF+pB5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6435.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXhVODdMN0JOd0F6SGZReHFCUlRDdGdzU2psUHlHMGQrU1NyOUFtS1ZwbnZI?=
 =?utf-8?B?Q3JvUnNhZ3FVYUZFOTJNcXp4RmFZMHJicndXemgrZGNYZUJJQVFDaWYydktx?=
 =?utf-8?B?OHBOQTZaN293amdKOWZ0OUxRSDd0c3NqUVJlUVFvanNTOUJJOHBXaUhaYnoy?=
 =?utf-8?B?TmZpWjZhU3daRFNGd0hkMHZIcjY3OGRPMXlreitlU0FqQmordncvcFhXaDUr?=
 =?utf-8?B?SFE0VCtSQ29UaGxwVGV3ZFNjZjFMMGFwTFhZMjRQb0NFWjhPZ3BNSW4ybkI1?=
 =?utf-8?B?R0lYK2phalRMR0dSUzQ0MW12VDVPSUIyK1NPNzV1NTIyd2N4UVMyeXl4aWdo?=
 =?utf-8?B?amM4eWkvNDBZeFZkSTBuSE9YSWJsSEF2bjQyMzVsendWVnRmUWtxNFhFRVov?=
 =?utf-8?B?V25namphUjBnclB0OGlvYloyOWxUaHVTOGZqNENwby9IZUw2YTY3cjdzMnZn?=
 =?utf-8?B?WXc3OWducXloWTZnTFdqTnlCeVRoLzVocG5kRWFtMmNvRkhvaTlrWXg2aFRM?=
 =?utf-8?B?eFBXWW5iSzZzdzIyMTdaOWJUam1VTVp4a094V2xoUG9jcjRYdHRhUGpIQ0hl?=
 =?utf-8?B?SC9jb0NndlBRVTZnLzVIUTlYZmFYdDJYeWtMKzgwbi9BMUI4SHRJUmdIN0Vn?=
 =?utf-8?B?NXhlZC9ZR2tUYkREYnk5Z2tCWXRkeWRDMHV1dndiNW4vbVNRMWxuVlAvcE0y?=
 =?utf-8?B?THhCYlFIZWNXOVRZclF5ZG9JMEhYNW45d25wcm9yRERHQVVIQXgvWjl1bDlx?=
 =?utf-8?B?SjJKK2llOXQzNEV0cFJ6aFB1b0FUbmpZc08xK28rYldORjFNSm1GSzQ2SVo2?=
 =?utf-8?B?MkxKR1c5UUM1NDFWZ1FwRjE1dFB2b3FFalQzOStpQkRmcEVrRUFRdWJyQnBt?=
 =?utf-8?B?ZEtMcUhmRVBWUWpJc0FwdmtYaTRsMGo3SGZYRkRweXA4bUlyR3dnUzU1bHhO?=
 =?utf-8?B?cmRWZXJtMFpYWHQrUmtYbmtJV2w3OVlyeTJ0cmc2WVpmZ0NUTjhacFBlaE8z?=
 =?utf-8?B?OS9KbW9LWkZVSUpEVFdwTG9HYXNKMVdrd2xKRFpjb2RaMExsTFBJc3dQNHRM?=
 =?utf-8?B?ZUNkcHZIUnNsM1pwMjNLV084ODFhSFlMN0tDYkdBbGxvQk1uNy9jSEE1UU9B?=
 =?utf-8?B?d01zNnRGY0tXd3JRclluRENiRVVUY3hMSTA2RUdHSVVhdnRhQStSTmVLQlBG?=
 =?utf-8?B?UlBwMUFOZmZqOHVFamZwci9EZlBuWjVaTjJHWXRxdkR2MTVxeG1PSE93UmVF?=
 =?utf-8?B?dDRyQ1NHZm94R0J3MjVxVVhkNFhxNE00U1Q2VjBuQXNLNmVIbUdxNHJqR1lC?=
 =?utf-8?B?V2dRYXlIWElYMS9lUjR3SDNsZnRxNVJIaEsyME12dktzdjZOUTJadVNRY2lX?=
 =?utf-8?B?bFQ1YS9aclV6OWVtZVl1dTNuSklVOGN1ZUl2RUdIVHZXcWVPTDJNS0FUbGFm?=
 =?utf-8?B?YytCZnUvK0VxeXdwMHJJVWJkdDdJYmpHNlMzQ1JmNXFtdFZGalFFaTEzZk16?=
 =?utf-8?B?TFhscXFFNGd5VjQ5MjNhMEk1ZnVvR09XaTNBQzBuem4vdDFjVjZOdWsvOHVX?=
 =?utf-8?B?QmE0eGo4SG1TMkdtaHJocjFvMUdDMmhzWXdYTHRONENPN3FnQkdZQnAvNTVF?=
 =?utf-8?B?ZTd4TzdaTmREVVYvdXhwckZXZUEvbGV0Q05MNWZjdjRtazdzVUQybmZWcmZR?=
 =?utf-8?B?UWxLVE1TamhJSWNielcrSWxBUjJTaDd0Z1JyNjZ0b2FUZGNjZ3Q5NU5jbmRC?=
 =?utf-8?B?SExubmhJSk1PYVUxZlMvRGdsN2xCRldtYTZtdmlMSzJReWRFQTB1Q24xTFhx?=
 =?utf-8?B?T2tXR2Z4cVBnMkhLR1l0VUM1a0p3ZnI3d0V4VXZWMG4rUFVFWkhqNzVzS29C?=
 =?utf-8?B?eTluNDZGU1phUjF3ZFB4UkgwdXAzWjQ5ZGE2THFpQnhjUmJoODBxaU1ZNW5a?=
 =?utf-8?B?ZTZFek5VREh0VEc1dDJGdlNuNWhBU1RpQnR1OUd3c1g1TEI1Qmk4bis4bmo2?=
 =?utf-8?B?Z2ovd0R6WC8vdUhCMXZpcDRrUTZ1clRMTmFzL1NnY200Q1JIY0I4WmZXN0Vl?=
 =?utf-8?B?N1VuY1Z0T08wTFMrZWtYZUpCMitPY3BoMjliMmZXUDdRRXQyMDArWlRTVnV4?=
 =?utf-8?B?K09VQU9qMi9qU0M0UjZWK2luK2ptald5ZHNNbnhVcnJXQlJMRmxlUllsMEJO?=
 =?utf-8?B?ZEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f300808-d8f2-403f-06ff-08dd2f3f1836
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6435.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 17:16:59.3845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5zHkfHj+yZdvHs3b+tjoBRe31ozBScgJiTK533L9svm6KgxwmZl1oLNVI1lZGuF2bsbKe4NW5G9l9wsSILw20rxLz5lC4+cM9NxLSCKElo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6564
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736270228; x=1767806228;
 h=message-id:date:from:subject:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3AFMrmO/L4qtpWZZqjI0c4mOeAVfxRm1qhUPrOQeCl4=;
 b=QAHsOusnDZV4hQ55BWGYbjl7SbQ7h3tS91K4GSwnKPfzXHaNyxqUPfrp
 wJe5IFgpI9SuGTVabAtfPB/7Sir3olpO4qehgs/fQ134WlFVTrm2+OdiJ
 Qzgia7YR/Fn4tTUInWTDeiSv7LlOwyBOdppwJtnR8sqAEjIA3O5ctbeSQ
 DSugXtLJF00N1dIJ5S7lLB+cYYkKX3QIdd4wYlh7rIQMFTwvO/QBYIeep
 /XOmXt62St4bFyY9GmAmGIkR/7MKNKLOTHoNyIjCsjAwMmWansgVs5z20
 P/XagD7Sy5xdBRuKUR//xZK6Rb9wf1r7gZ45fpoyv4GGk4fFk1L/Qr3Wb
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QAHsOusn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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



On 1/2/2025 7:05 PM, Haifeng Xu wrote:
> 
> 
> On 2025/1/3 00:01, Edward Cree wrote:
>> On 02/01/2025 11:23, Haifeng Xu wrote:
>>> We want to make full use of cpu resources to receive packets. So
>>> we enable 63 rx queues. But we found the rate of interrupt growth
>>> on cpu 0~15 is faster than other cpus(almost twice).
>> ...
>>> I am confused that why ixgbe NIC can dispatch the packets
>>> to the rx queues that not specified in RSS configuration.
>>
>> Hypothesis: it isn't doing so, RX is only happening on cpus (and
>>   queues) 0-15, but the other CPUs are still sending traffic and
>>   thus getting TX completion interrupts from their TX queues.
>> `ethtool -S` output has per-queue traffic stats which should
>>   confirm this.
>>
> 
> I use ethtool -S to check the rx_queus stats and here is the result.
> 
> According to the below stats, all cpus have new packets received.

+ Alex and Piotr

What's your ntuple filter setting? If it's off, I suspect it may be the 
Flow Director ATR (Application Targeting Routing) feature which will 
utilize all queues. I believe if you turn on ntuple filters this will 
turn that feature off.

Thanks,
Tony

> 
> cpu     t1(bytes)       t2(bytes)       delta(bytes)
> 
> 0	154155550267550	154156433828875	883561325
> 1	148748566285840	148749509346247	943060407
> 2	148874911191685	148875798038140	886846455
> 3	152483460327704	152484251468998	791141294
> 4	147790981836915	147791775847804	794010889
> 5	146047892285722	146048778285682	885999960
> 6	142880516825921	142881213804363	696978442
> 7	152016735168735	152017707542774	972374039
> 8	146019936404393	146020739070311	802665918
> 9	147448522715540	147449258018186	735302646
> 10	145865736299432	145866601503106	865203674
> 11	149548527982122	149549289026453	761044331
> 12	146848384328236	146849303547769	919219533
> 13	152942139118542	152942769029253	629910711
> 14	150884661854828	150885556866976	895012148
> 15	149222733506734	149223510491115	776984381
> 16	34150226069524	34150375855113	149785589
> 17	34115700500819	34115914271025	213770206
> 18	33906215129998	33906448044501	232914503
> 19	33983812095357	33983986258546	174163189
> 20	34156349675011	34156565159083	215484072
> 21	33574293379024	33574490695725	197316701
> 22	33438129453422	33438297911151	168457729
> 23	32967454521585	32967612494711	157973126
> 24	33507443427266	33507604828468	161401202
> 25	33413275870121	33413433901940	158031819
> 26	33852322542796	33852527061150	204518354
> 27	33131162685385	33131330621474	167936089
> 28	33407661780251	33407823112381	161332130
> 29	34256799173845	34256944837757	145663912
> 30	33814458585183	33814623673528	165088345
> 31	33848638714862	33848775218038	136503176
> 32	18683932398308	18684069540891	137142583
> 33	19454524281229	19454647908293	123627064
> 34	19717744365436	19717900618222	156252786
> 35	20295086765202	20295245869666	159104464
> 36	20501853066588	20502000738936	147672348
> 37	20954631043374	20954797204375	166161001
> 38	21102911073326	21103062510369	151437043
> 39	21376404644179	21376515307288	110663109
> 40	20935812784743	20935983891491	171106748
> 41	20721278456831	20721435955715	157498884
> 42	21268291801465	21268425244578	133443113
> 43	21661413672829	21661629019091	215346262
> 44	21696437732484	21696568800049	131067565
> 45	21027869000890	21028020401214	151400324
> 46	21707137252644	21707293761990	156509346
> 47	20655623913790	20655740452889	116539099
> 48	32692002128477	32692138244468	136115991
> 49	33548445851486	33548569927672	124076186
> 50	33197264968787	33197448645817	183677030
> 51	33379544010500	33379746565576	202555076
> 52	33503579011721	33503722596159	143584438
> 53	33145734550468	33145892305819	157755351
> 54	33422692741858	33422844156764	151414906
> 55	32750945531107	32751131302251	185771144
> 56	33404955373530	33405157766253	202392723
> 57	33701185654471	33701313174725	127520254
> 58	33014531699810	33014700058409	168358599
> 59	32948906758429	32949151147605	244389176
> 60	33470813725985	33470993164755	179438770
> 61	33803771479735	33803971758441	200278706
> 62	33509751180818	33509926649969	175469151
> 
> Thanks!
> 
>> (But Eric is right that if you _want_ RX to use every CPU you
>>   should just change the indirection table.)
> 

