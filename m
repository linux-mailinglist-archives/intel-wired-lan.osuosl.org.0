Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1589BB52C
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:57:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 956BE403D9;
	Mon,  4 Nov 2024 12:57:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWcVBWswyAZk; Mon,  4 Nov 2024 12:57:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A5EE9403FE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730725048;
	bh=G2FAYz4OXPf4FvB2D2sdLd6OjNUTN5UNI8i17+jkaAQ=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VxkyKREbnUXakY7n/I4UzzfYw87V+X04oYHen7mDo1GxavX0arLqmE6RwMVnS0uOv
	 x9P67FM/kR2zzUdmdPObC5SdzbwkRuCfhk8DYBpKljmbruI0eO+xr+kV45+Vu0QBOR
	 zi3/1NOyFUEn1zYiP2yIzjhkScrtfPoDBj5pmdlqM4EJhqfPe0a3rtbQcekB0+aHJ4
	 7uYFUP+xrOS3pVMXbqcH0DaJY0Ur+RNeqnMbGoVFOS2cLgX2dTAdImjkeAsATH2RLW
	 nnYjE8IgCkBHboLo52LPe55W3eKmvMxC6aTDQHKyk00cCFNyW4EBoov8THwMZDJVt5
	 eJtrJS6Q6Yabg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5EE9403FE;
	Mon,  4 Nov 2024 12:57:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1584BB8
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:57:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 10C4580E14
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:57:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D3Nsu25QeewG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:57:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3FB0280D8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3FB0280D8C
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3FB0280D8C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:57:24 +0000 (UTC)
X-CSE-ConnectionGUID: eXLmSPV+Sa+tfmt5p07Z9Q==
X-CSE-MsgGUID: 1FWwqmZvQ5eJVm7Uc2a61w==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="55818961"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="55818961"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:56:28 -0800
X-CSE-ConnectionGUID: +a1o+rVOQ1KQ1fMuzryj2A==
X-CSE-MsgGUID: sR+Q0NMCTVatdTIQeOGRtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="88472949"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 04:56:28 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 04:56:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 04:56:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 04:56:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VN9kyzYAzCUOLagib/e6mERiXDBWfbJbdjYe2QOnUnRzo/dGxpCmggk+Cnu/SNDRZFRz9QRuqsajn2hk60M5+OdXTWsAzF7iKZ1Oi64pb1X2bKwvB3+2JBPpk7t0kS6ogjSavZjCP10gmWQADrykEjzEqvW52NzXpAUXd0Y6ybtwjok3TAxKGYihb9R4VhkcIhVzvQzw5l32h3XuOOu0MhLkX42UcZKHLmFV/HURRjXf95g58BNF+X2+hlL4tTtOq6Dac0H4c+BNNcX0de6WldctnERwCUo7Tlz6D96fxlkEPYMQvGT8xJgkgLMyt28od72f51mHFgtaTISPk6ONpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2FAYz4OXPf4FvB2D2sdLd6OjNUTN5UNI8i17+jkaAQ=;
 b=nlse18hlsHuMlMbjqz3xIxVgPmfqLFDeJJakyu83zfLIqlfWNmjrvS+5UCYyC4t0iJVyjEfsPTPSjewbduPIfNlN1+71PiTHZX2lihnAYJlPyiEvetxhMImwIFLXX1rogRDy7C9PIlm0ReUi1KFiSiMaZ2golOicqql+Ird31SsNjO6knQXeTwxbvkJjhe9J8JBbv4VLOWDJvoFHoCF7oTRj7LBqxq3Fv2CxPOca8dgppuY1pysPYcxqnVaWC+ezQWR8HPpqTozsUYzCZt5GVdO/vuCi9qVhkdq6b9Ngq8nfeDWrFgmIMSYdzsFFEiCgFMr2lpXcqV2OZjCCQ48Dhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by DM3PR11MB8714.namprd11.prod.outlook.com (2603:10b6:0:b::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8114.30; Mon, 4 Nov 2024 12:56:24 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.8114.031; Mon, 4 Nov 2024
 12:56:24 +0000
Message-ID: <748c0685-cd16-4f7e-b359-91b095fc3d26@intel.com>
Date: Mon, 4 Nov 2024 13:56:20 +0100
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
CC: <intel-wired-lan@lists.osuosl.org>, <david.m.ertman@intel.com>,
 <netdev@vger.kernel.org>, Przemek Kitszel <przemyslaw.kitszel@intel.com>
References: <20241028165922.7188-1-mateusz.polchlopek@intel.com>
 <20241102143818.GM1838431@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20241102143818.GM1838431@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0014.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::20) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|DM3PR11MB8714:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e130e12-02b0-49f1-0598-08dcfcd016c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STI0ZXV2NGFxNko5bzJ4d2wxTlNKOGZuM0Z0S2MxUmdOQ1lnY2NNTlhEeW1G?=
 =?utf-8?B?dFdhbmJCZWo2VDlkanBJU0pWSFozdjZwRWRaY3huenl5VlY2SStEZXIwOHk0?=
 =?utf-8?B?aEtBYXUzTjhsNW5HWkE2WFdyWWlUUkpnYlpHbEpuS3l1eDVjeGxLd0xhMy94?=
 =?utf-8?B?bFZENWVaTWdIc0VjdFQ0NDBXc0ExVUlQYUdadnZzMXlPU2ZKcERxTTdJUHpm?=
 =?utf-8?B?QkZlRmJXdEZ6Y2JQOUlTRkt3Y2ptUzVadlovY3NMRi9DWW9JdXhVTXorRlNq?=
 =?utf-8?B?VGZiUlZ4anZDOUxweW9HcVFZMUFTb1MrcFN3UUhqMCtuSDdJUGFiYmF3VGF5?=
 =?utf-8?B?MGZoUFVUSEJPMWxzQUJ1c3A1aDZqcmhLNFN4RERFV0tuaTRpVzBDTUpIRGJL?=
 =?utf-8?B?VnAvcndOTHNZVEhvczRLTmFmQVNvY3BiTWxBSEgzSkZhVyswYk10Wjh1UWky?=
 =?utf-8?B?eng3K1BzTlBhcjM3OHFDbVo3OEpyTG5aTVdIRFc1R0tUWHlwRVhwdHhuMUxx?=
 =?utf-8?B?QTlwL0NKY3lWZEJjeSszRWNDekVTQmNpd3U4dWNVajBrNmZrK1daT2gxbHR5?=
 =?utf-8?B?elJ4L0tWUVdibkp5YXlWRllEcjhxNVZTVFhyazBKdnYvM2dlaDI4TVJXSGFR?=
 =?utf-8?B?YVl1YVkwUnp3NWg3Qi9ITVIwRXlUbWNhVEgwSjAzOTNqdzNmNnFYbEYvQlI0?=
 =?utf-8?B?WENVQVZpcjRqODJINGNKUnV6MEQ5YkJOd1FUckd2RlgveHVmSnVEaG1xdlJ2?=
 =?utf-8?B?WWlaQTRGQ08rUS9JUzFyWm96RDZMd0V6azNFeUVTYWtCWHpYU1AzVGd2d1hE?=
 =?utf-8?B?NmZsck9hcmE4Uy90OVY4aGVwSmp4VmFleXk3QkdZS3p1dkpwUFpaMWJ3a1RR?=
 =?utf-8?B?TE82UFlTL3UvNnAyS28zODVLWUV5MnkxbDNhS0JmRUJISDNRTUg0TEVmRHJQ?=
 =?utf-8?B?SXhXU2w2U2pqMFBvbGZQOWNSL0JHRGlkQzJNdDlIMXRMZW9renZQTVlyOE5D?=
 =?utf-8?B?L1ExbU1YTUpNRG5GTEltRnIxWmw5MmNIdzJlYXJ2Vi9jaUJaRWZ4YXp5dmtU?=
 =?utf-8?B?WklnczRjdW83SU1BeG5NdHNHS3JoYTRXZE81bEVYNVRIYU5kb2pFSjlDWXI0?=
 =?utf-8?B?MVk4eFFQRCtDNFJpRWkwNkxnaWJXdzBic2FaNWpHdEZPRjA2dmJXTXlHeVF2?=
 =?utf-8?B?Tzh6SjZrdWh5U09zS1VWaUNhVHF1SURIeWlxbi9mMHp5amwxTFA4Mi91NTFp?=
 =?utf-8?B?MXRCVTYzaGMyTk5YQUx3Vm1QejVaVlNRQVhndmJOREoxdnV1azkyYU5hSXBL?=
 =?utf-8?B?ZlptVWVzSURUS2JwdGFhdGFYaXJudXFRWTVtTHNtb2tnNXhuU3YvMWphZlVk?=
 =?utf-8?B?QWdkamg0UjVGOVVldytQT3hnbnpzQndnc3dFelM3V3Z1WmhuRTZxNEVIU2hq?=
 =?utf-8?B?SHVuTkk3djNsS2pGOGZhQXZ1WnY2b0JwcCt5c3l5Mm1EOUJvOG45ZENLSmNx?=
 =?utf-8?B?cEdVdnE0Nzl2SmVGR1dSUDNUR0s2a0l6RWFlMmhiOStCd2Z0MEVKYUYvR3Q5?=
 =?utf-8?B?SFB5ak9IRDdTWjgrdWFFQjRhSVg3bElqUDlSU1hkT21SYmNjMHJObVZrclRR?=
 =?utf-8?B?QW9qZzdTMjR4SWtjakFBNlV2eGdYU3dmbDRzNUo1M2JGMU1GclkyVE9vMVg5?=
 =?utf-8?B?Y1k2bzhoOFNTOU11UFVkbm1UVzJLcGZuR0RCYjBrOW9xTENETEZlSkUxREhn?=
 =?utf-8?Q?+qLtQr0fu04b8SUgRw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eURxc2VxLzdqUnZvOERnNEZ4endDMUpNLzlDVk5zamNCVWQvWUlwQmxaUlRW?=
 =?utf-8?B?U0lIbnBvM0xLb3dsTmxSd25INFU4OUpyc21CaWJ3TC94WStjZ0R1NFk3Sndy?=
 =?utf-8?B?bmxBNTRSb0J6QlV2dlVuczRGZmVVKzVKRnYram1pQmdWTFFTdnJ2WEJJdklR?=
 =?utf-8?B?TDRvTjNMcDlYQmRqRnIwV2VVYkdKQjlYTUVFZitGUDlvbUhhdmc3aHJzNVFB?=
 =?utf-8?B?ajRlU3IzMHJVWE91SFhKTDRoamNPS05QTnBPMk4zd1BRMm1KMHRMVzNhWVFn?=
 =?utf-8?B?T0NuM1llR045WHR3TndTcTBPUzVlUVBmR2ZPNXF2TXBQZWE3MkdjeG9jSUhs?=
 =?utf-8?B?S080b2RxSXVIeEUwQWpkSG1sWS82OStEekRpaWZPRUVDVzd0VXJLaFJnaGFX?=
 =?utf-8?B?eXpUSFlNeEVnNG9pWTVTOE02Tzkvek85VU5tbkphb2U1K3dJNzlJUHVnblhl?=
 =?utf-8?B?Y1lCd1VPYk8zc0ROWDdia1BkaCswNW5SVS9WcXhFcnFBM21qWThTRndMWVZi?=
 =?utf-8?B?UUcvYVhIVlJQQXdXSjY2dGREaENiT2hrOGo1K0VTZTZGL2ZQOUNDd052NU9u?=
 =?utf-8?B?SFE4STN4V2o0NlR2RW8rU0pXb0o1MXFnWUZzcURKaVZEakhzeVZ5Z3lNK1NH?=
 =?utf-8?B?Tk8rckdGVXBmdWFoT3FyNncvQUtUQkNEQnBVMWw0UWd4UXpFVHdIenJhbHlt?=
 =?utf-8?B?NnAyQmFiaENiTmF6Z3RpY2lkZnU5elhlUnkwOG56ZlNlRU96SnVKZjh5UXBW?=
 =?utf-8?B?QjdKS1JwdkpWTHlaaHB1SEhUSWxMS1RTVTQyUzVqNXF5dnBDSENZQlAyMUt4?=
 =?utf-8?B?R2hUNG45Tmt3NGw4aHpIeS81eW91eit3Si9qU2RnNW9NQ00xanNXUzVwc1gv?=
 =?utf-8?B?QkcxNGZUbXdlOTFnbURPU3pRVWVxSGc4L1dSWlorcE1GZ3RWSFd6S0F1a1RD?=
 =?utf-8?B?UjhPUGtpNDZVSzBUSTFod0pPZ2VwakY5UmJ4NjFQZjBWOTcwWm9uaUovWmow?=
 =?utf-8?B?dUYyTDZpWlVyQ2I2amlTVXVPMTZHaWg1YnNTaVc2TzRjZndCSEhQNmIrNkc5?=
 =?utf-8?B?UjEzdXJVVytrOXlMNlBwRHhlRFRmTUl6cUdndDdOZnh3cjc1VVFmMStCNWo2?=
 =?utf-8?B?Q0g2L3QzRkFnVHU4TWdEU0pqNmg3R3FwVS82M28vbmtxOU51dWs5U2k1eG13?=
 =?utf-8?B?aTd5M0J4UFpTYkVndFBrWGRtVTJXMitSTXRqd3FSdmFqeTdKS3o4UDM0UU9B?=
 =?utf-8?B?eUR1QmZET0RXU1FUeXdQcVFReENSUS9NZ1FnQW9DT2c2UWUrV0Y0bXhSK0ND?=
 =?utf-8?B?SnYvMExZczRjYUcyQzMzdk5hWHBBa3hDWGVLeFBCUkhiOU9yNExUTlNESDdH?=
 =?utf-8?B?TnRYdmNmRDYzaUtBSWZDS2t0SHRnNE9qMWpuZEg5SWZucE10K0dHQzk3Vjht?=
 =?utf-8?B?azZWL3NReExHL0JHeFpXWWhTOE9waDNxQjFsUm1Lc0tnWEZQdk4xZm1PaXRw?=
 =?utf-8?B?b3FaNGlxbkpzaXV2VjhDeUErQVNPVFhDQW9VSVNvUis3Y0lCNnBQdDUzTEhZ?=
 =?utf-8?B?WFlzNUdVZHFnaXZIaWFvWE52ZWdWSmp3T25rK3k2N0d3NlVQZUpnNGs2b0JI?=
 =?utf-8?B?U0s4d01qdk1WdTJiRU1HVUc5L2YxS0Nrb3JJd1lLc0crYkdUbzNNbVA2QTB0?=
 =?utf-8?B?UXd1dmsybyt4dzFTTlM0TWhNQUJXaE50ejlSK29xcmVrOUorMm5kY0ZhaHND?=
 =?utf-8?B?em56Wk50QWl1c002RGlFUTNDSlkyUXFxb3dPOVJQT3V4K2JUMkNmSmNwNFoy?=
 =?utf-8?B?R0hiVDdnUHNVQjZUMlV4R2dCcnVVT1grZ1FobjFNN2lkdDZPZjB6emw0c20r?=
 =?utf-8?B?QlFkeGp3bW1kUy9DNHhNTS9wZGNBcmdZcnBFMGQ0SVRIOUNjaDRpeU1UbFdM?=
 =?utf-8?B?eEZBcDBSZUJaSjZ2cFNoc05mRjZvMVNnbGhaRVB6RC9SYmcyMzBuNG9NdXBH?=
 =?utf-8?B?MHRtQWtndWcyY2VDbFhUbWs4K1N6ZFJDUldxcTU2eERVVjVUSHdvaHByb2RI?=
 =?utf-8?B?QUhNMVJyQk94cTZLZk5TaFpwaVJ1WTRHTGE0NDJqMG92STlRaU9OLzZjSFYw?=
 =?utf-8?B?THNLVVptUGxMa1o0OW85L0FsSEZqbElYYW9nTzUwTFdEVEVtQms1TXZ5SjFI?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e130e12-02b0-49f1-0598-08dcfcd016c9
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 12:56:24.8422 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Wx3UgoQUrnyKvQvgWESCWF0ZQblTcXXaLRLpLgllemCiaPNQ+wsivNOFlBumsLjqyV8iZa1Fx+KejICZKNcKaO+S5CvyOYkYNyhiONax3no=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8714
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730725045; x=1762261045;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lcGlefsSbplyDdZ8YwxKSHUQuvQlAUoZFfzCoGWdSTI=;
 b=ja2W+wcsVSsg4u8JczJjVdd9PvZL36/R3ij7Z3QjJEg6Dl09P02K7AOm
 uyhQ4+uHOGLh4JUIEEtGRHhdq1uW6lSmRtpnozzeR+k9fneTiiqXRQIoS
 zKxUdYlq1mTQa6XdOof9yvZCyWtdJoX3S8CmZSX7YV97fqMVkrwDY/Tie
 BQ3DetLzgM2Blh3w/m+/OK9ny9IRcWIbug/a0mYJCLZj5G9k0OKE7Eiz6
 Su6SNqT0WLdwHLFCrvyzOfdtl2WsckeljZHQ36UJju+CjSHWrdWWNk3sa
 FM5VSD4mVIq+Y8zkXZmPr06GbAEX4TQUbYtNn08hqf+HA9bSbyl7vLtlM
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ja2W+wcs
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: change q_index variable
 type to s16 to store -1 value
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



On 11/2/2024 3:38 PM, Simon Horman wrote:
> On Mon, Oct 28, 2024 at 12:59:22PM -0400, Mateusz Polchlopek wrote:
>> Fix Flow Director not allowing to re-map traffic to 0th queue when action
>> is configured to drop (and vice versa).
>>
>> The current implementation of ethtool callback in the ice driver forbids
>> change Flow Director action from 0 to -1 and from -1 to 0 with an error,
>> e.g:
>>
>>   # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action 0
>>   # ethtool -U eth2 flow-type tcp4 src-ip 1.1.1.1 loc 1 action -1
>>   rmgr: Cannot insert RX class rule: Invalid argument
>>
>> We set the value of `u16 q_index = 0` at the beginning of the function
>> ice_set_fdir_input_set(). In case of "drop traffic" action (which is
>> equal to -1 in ethtool) we store the 0 value. Later, when want to change
>> traffic rule to redirect to queue with index 0 it returns an error
>> caused by duplicate found.
>>
>> Fix this behaviour by change of the type of field `q_index` from u16 to s16
>> in `struct ice_fdir_fltr`. This allows to store -1 in the field in case
>> of "drop traffic" action. What is more, change the variable type in the
>> function ice_set_fdir_input_set() and assign at the beginning the new
>> `#define ICE_FDIR_NO_QUEUE_IDX` which is -1. Later, if the action is set
>> to another value (point specific queue index) the variable value is
>> overwritten in the function.
>>
>> Fixes: cac2a27cd9ab ("ice: Support IPv4 Flow Director filters")
>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> This looks good, although I am interested to know what the maximum value
> for q_index is. And, considering unsigned values are used elsewhere, if
> using 0xffff within this driver was considered instead of -1.
> 
> That notwithstanding,
> 
> Reviewed-by: Simon Horman <horms@kernel.org>

Hi Simon!

Thanks for Your review.
What is about q_index: it stores queue index which can be theoretically
up to few thousands. So in this case s16 should be enough and will be
able to hold all indexes. I didn't consider 0xffff as this may be
misleading, I decided to stay with -1.

Mateusz
