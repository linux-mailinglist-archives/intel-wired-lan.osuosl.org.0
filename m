Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D8787A8177D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 23:17:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96B8F41216;
	Tue,  8 Apr 2025 21:17:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XvYwM4ju9J_P; Tue,  8 Apr 2025 21:17:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 124A641209
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744147063;
	bh=MNN9a5YQqON3/BtNZ2lBAIfZzARW2vQiwlkcmCGnmL4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=67/BBTT74sqIYqCkjE4ITNN9XM9+UnWhNHYatQAiKyTvjkDkqQEbdU2jfrTh3chCt
	 w0nMhUYHjSZdEd8IKZQtKnPrhkuoCyEVqwA+PGrUb44JYPrAXe0u9aAVuNYjlMa27n
	 RA8k8axGMFWMEVNlBdQW03+wQ+5aUhKBJqK8J4sqemzLge+1bKWLOBHK+ANAIh0eeG
	 zOlMTSBQMDz8B1V+xKSigzZE9Fp5pT02cPTxNMCkZWOd9fGkH1gxNSO7s7TpuXOBVG
	 jkxIL0URxRR1Gi7XSIstD+an9xvmQYaRP+5CQOJ6mZtupc7ai9lHMnLmTV1JY1r2oY
	 Q0gvIcjaQNjlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 124A641209;
	Tue,  8 Apr 2025 21:17:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id D5261D6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C60D882F9E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rtS2_STEPBPU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 21:17:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E759D810F1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E759D810F1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E759D810F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 21:17:40 +0000 (UTC)
X-CSE-ConnectionGUID: e5yyyERrSkmv9zV+cjqYzg==
X-CSE-MsgGUID: 1ZB1Ae5tSpqBU6WQt6BQfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="33206483"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="33206483"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:17:40 -0700
X-CSE-ConnectionGUID: G/bo0aB6QnSlFLA6X2/wUQ==
X-CSE-MsgGUID: raU4vEuzRUaAToKIcCMLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128295153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Apr 2025 14:17:40 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 8 Apr 2025 14:17:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:17:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:17:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TA4n57NFhJdd35eSg6wg0glASXfCrWM1/Mu1zj8GiAlmtBjaTu4rKPIwx79/pdL3x/j7aqA15e6fwUr8wD2/G0yCDdwTye0GiJc3P1+VUFhtWkByyIO18Jy3hwNqnvzhoiEPr5wmuhCwHEvyw0WebN59abjarLwBefUtroLEWHRQA2mu+hyxs+wvDVX/STbrMBCY9zD889Jd/8lnJtnOhEHzM3cEmIbkeNjC4izd5a37m0tMSX852hKa224Jeio1q3BVSvY6aw/Rlj+IZasCmsv9HPsEXit8T8T4zYX8mzyBK8e+aKW9U7Q5eJEBwA1TJMxLHm++C6hlBaywCCwS4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MNN9a5YQqON3/BtNZ2lBAIfZzARW2vQiwlkcmCGnmL4=;
 b=g7PdW0EubXtrd4Ox4B8CjFiBuAC8Dy1XE/j1W8d17fyH7yKsmJcgWrr5O/sJRaFwPGAhoXuT73/c2m4r5iEAnbhxjPPJMS04vMKdw1E9OAVUJGOF5pJs7+D8UVDPXosWlNWAwDD007ZmUfGRPDPGqfZr8j5RduHTaDSL811piG1KYha4RFAwNPVMAJD0qlBuutK16Sd2e+EBzMn6S5r+4LxZI6fKpsNiFIpzr+LF8UrH+VRyQ+7AVKkWC2OEvtDG6UEEf7LwBbws1rWVDP/KdqS1zIsjmslo4RkHUtZ36J2IAW878ROuezSO17QHtZOpi8UJYq5/A5wMDBwWTIV6mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SA2PR11MB5132.namprd11.prod.outlook.com (2603:10b6:806:11a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Tue, 8 Apr
 2025 21:17:37 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 21:17:37 +0000
Message-ID: <dca033b3-bb86-435f-b8f3-c3fd42fb5cbc@intel.com>
Date: Tue, 8 Apr 2025 14:17:36 -0700
User-Agent: Mozilla Thunderbird
To: Milena Olech <milena.olech@intel.com>, <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, Alexander Lobakin
 <aleksander.lobakin@intel.com>, Willem de Bruijn <willemb@google.com>,
 "Samuel Salin" <Samuel.salin@intel.com>
References: <20250408103240.30287-2-milena.olech@intel.com>
 <20250408103240.30287-15-milena.olech@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20250408103240.30287-15-milena.olech@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0305.namprd04.prod.outlook.com
 (2603:10b6:303:82::10) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SA2PR11MB5132:EE_
X-MS-Office365-Filtering-Correlation-Id: 55a59f47-c2ff-4dcd-5797-08dd76e2c9ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Vm5BUWlPaElNdGVuTUpmUjMvY1ZvbmhHTno3bXlmQ1c3SjhiSFpyMHdNSlh3?=
 =?utf-8?B?TTRYeDZBRkZBK3J6VGlpSzZObzQ0VjNGUm9qU1RnaTlaTmQvRnd3RjBkc3pY?=
 =?utf-8?B?dElkTzc3RXVueDJDZWdCTUpEcEJZS2FVODV3QmVUVnVwRGMxeFQ0Qk9wUnlW?=
 =?utf-8?B?SVVoS2p3ZWVMYTFrNmNvSHkyckpLekhEWFZ6YUtKemZZMFR5bDROMHdiUzU3?=
 =?utf-8?B?c0R6YzJjMy95enNUOWhnOVhXdkFOc2ZOVjFTNytJczViVXNNNWlsNy9FZFlE?=
 =?utf-8?B?b2xsSjRpWm1NdWZqS05lN0lmVGtEbnlCZG1BSnVLZWxEdWJGR1FIVXVKaE4z?=
 =?utf-8?B?eXFiRXBjOU8vZ09qUWFoOXZVUExvSnBsWmRkN1BUNTF0bkJiZUc4RmE1K0Mr?=
 =?utf-8?B?OUV4ZkNGMEZzVmxZZGRkWWFQaFd2aFJkN1Q5YVYxN29KZzVncHZKZXJUUHpH?=
 =?utf-8?B?MFVsTzFCdkc2dldUN05GU2tmQ3NjbDNDUlVWMzlWb285NzUyWjFGcllEYmtp?=
 =?utf-8?B?WG9vWmkxb2ZLYnJ4YUJHRTNHMjJDMnpFeTlSc011NUcrRGVMbi9YcHpvVE43?=
 =?utf-8?B?NnBCNWk1WlIwU3NmNXJIV3FvVG9ZQng3c2dsZlYybzFjWjYwR2FoN2JuMHRz?=
 =?utf-8?B?dkV6T1NRQ1pSZmltQUpYUmluam9oZG5KRlJwRUJZZGdaLzJmbGlDUHp1UjRN?=
 =?utf-8?B?b2o2Y3hibCsxOE4ydFc2WVpnOFUrR2F2MWF2ak8zM0xUOFAyWERiY1RjaXph?=
 =?utf-8?B?UGNZenZTOXlrcENaQldLbDNQZWpqTEJCVEVPL1UzMGk2OFM5NW55c1QzSzhE?=
 =?utf-8?B?d0VyUGRNbmgzRURLTWx5OUs5a0VHVFdtQ09uc0FyaUQ0QTNrQ0VvOGQ1RWlQ?=
 =?utf-8?B?Tk4xS1d0K1hnbnpnZW41eTNudkJPV3ZnOG5yYi9YVEN2dDVPalY5cDdIREN2?=
 =?utf-8?B?d0R2VGJSb0s4WDd0bWlFWDN0RFVCMXRSeWJadXd4T1NNdEZhNUpEUnpyRzcv?=
 =?utf-8?B?b0NsQ1puNGNxaVVvTVJ2YzI5YTJpNWVzcFRMVGVjV2NJa1ZxckxsZFNuUGUr?=
 =?utf-8?B?QmF6VTNMZktxWHBSQU1iSnlaSFp6OGFxZVdnWGRUWU5BaDJ2VXFWVDlnR0xj?=
 =?utf-8?B?MmRBK0ovTGZ6dHJrM21odG1OZ1ZVZFhuN0toYzlnK2MvNWdXcWlRVEozZ25W?=
 =?utf-8?B?TzZ6ZXdzYmxsOHhmaHo3ZHlJNGFhelowckVuUlBNQ2hMSXA5ZVFjK3RPOUto?=
 =?utf-8?B?S2Z1b0JoRHdXYXowM0V3YkhudytJK2tiWGRjQjFVazBlaEFraFF5Z2FjdTJr?=
 =?utf-8?B?Y3hOeE95dEo1R2R2cklCOHBvN2E4MytWdkVHanZkbGFidmRkUElrNWF4Wnhs?=
 =?utf-8?B?NzdvNWN2YTNDUmcyR3ZkVEFGc1Jwamk2YlFkQWllMlc5cWhucGFaVk5xK0xa?=
 =?utf-8?B?SmFMOE5lNTRLMHhDSmJHbHorM01VOEZzdjVPNDM2dXBNU1NuTXpBeVNpMnQr?=
 =?utf-8?B?a2tJUklSaC9zQzcxaVRNS3FLUUNtR0pDMmZ6MWEyaXA1MWVCR1dIU21YMi9M?=
 =?utf-8?B?Q2NIMGVYajBEY1dhMWVaMzFNK1JPeXZ3eFZVTHg1d3BQZEQwb3J3b0IyRGdh?=
 =?utf-8?B?S2Y4TmxwR0ptbm5jV2R3Z3pBU3pWY0ZJa2FDL0NKYlNrRlNsdWZtUVVtTEY4?=
 =?utf-8?B?cDduNCs1dTNmUlFYUW9pRUttYWJhOFhmS1hkMEQweVkxU3Y3QlJmUEVVNXdE?=
 =?utf-8?B?K3pvWElTZkpWR3NkODVtRnF1ZmVYZmptV3E2Y2VZSUhsU3FhT1lVa21ZT2Qr?=
 =?utf-8?B?RzluWllYVktJUis4b25NbFNXcXVxUDRVQW52U3kzNGg1bEpLc1grSEx6NXFK?=
 =?utf-8?B?RXNqVFRIZlY3MjcvYXVMUTY3eHlDbktzR2k0WC81Z1pDbmc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWY1TGt1TXc4U01neFA0QXdoUlM4U2c4UXh1bG5XcW5HWThhVHBIQ05GcW52?=
 =?utf-8?B?aHhIaXc4dzBscVdVYnJJenRtVHZxNDN5bzRGRDJleDd3MXEzTUJFRXlGTS9Y?=
 =?utf-8?B?ZnZpQWhzRGI5S2NMRUc2NWdQNGZMQjRXa1FvRjBQSVlGZWluSWhGQXBzVlds?=
 =?utf-8?B?dm5BZjFGZERacUR5cW53b1NERWU0dWdwWkFqS203aEhOVEtVVUJHbWJUM3Np?=
 =?utf-8?B?NkVzam5QdWZhRmFTdXIwRE1FM2tCMkMwVGt2WE4zaEdXZnVhSXU4T2Q2K1VI?=
 =?utf-8?B?eUplQithQUF1UGt6b1QxMVJNa29TMFJYQ0phU2lDTDk3K0JLZWhhMlc2dzF1?=
 =?utf-8?B?S0FJeEUwYXRFcUp1YjUyYnlRM1JncitqMDZhSG01d1dRcCtUUkNkQ2grRXY5?=
 =?utf-8?B?K0ducHYrc2FaRVJjVlF0RDhHQzR2QWdvdlNwbVR0RzhQK2FkMlVsUXIzbWhQ?=
 =?utf-8?B?SVBRcGNkdnRvN3Ryb3dFQXl6TW1HZEh2eDVZV2ZaL1JSOU5weGZNd29OaXBS?=
 =?utf-8?B?T0FiSWdzNmgxWFV2bmlMcTJqMTlBVE80NnZGSDJ1Z0RLM045ZFBKZVNKRERn?=
 =?utf-8?B?cnl4MVFQc2hiMDI0WURZaUhVdTY3Y25obkRYRzlBckZYd2JoY25pbXBUT2pu?=
 =?utf-8?B?MHp5N1RHSlByU3JhTkdJMEtqQUpyUlpYRUd2RmFXVEtFaS93MXJzQm12ODcy?=
 =?utf-8?B?Y29iQUlmWXgreDFOQmNYcHJ0cFB2VXkwd0g3WFNkQUFEUkNjeHhaWXowdWZM?=
 =?utf-8?B?RHBHRnJSZWZLMGorYnpKVGIzZnVTdkF6N1ZYMDZHWE5ydjNxMG8rVVhRQjhr?=
 =?utf-8?B?WUlPNDVtTERQemZqNnVURG9ReVcyYTUzRWRoQi9PRUM0VlJ0Z3Z6V29nRzFx?=
 =?utf-8?B?Zk9wK0xpR1ZhdHFIT1A2OFJFbzlsaFlLQ2x0OW1wYnlXVVIvWk1YUTNyaG5F?=
 =?utf-8?B?UFBPY1RLZjl0YlZqSFd5RGNZRjg1dTcvSnpHVTk0Rzh6by94U1RSMk1NcU5K?=
 =?utf-8?B?YkJqOXpoaklrdUZLWVcrYzZVUVFENGJ1R0V4OXdLRmlxd1ZGc2o0amRSZUdn?=
 =?utf-8?B?VEtzMzJLc1M2aGwxa1lVU3IxRG5GK2dWVElHNHR3eEN1M3pnQU42dHppV1Jz?=
 =?utf-8?B?KzNrK2tQSWxTNXIvQjIzVHRQeDFreWZrM3dZSnlJNzJscnMwZHEyL3p6MEdK?=
 =?utf-8?B?MmhSTEFQb1QrMDRnUi9CaGVQKzlsZForV2h0dkhjdEFDWGJGdGtEcTBGbjRL?=
 =?utf-8?B?L1htb0F5NlVFd05xOE9SdDVSZ1hNRnExcVBrOG81TVJjNEJQbC9xa25EQkQ1?=
 =?utf-8?B?LzZKd1htS2t4ekRGbFRJbDZwcXNWQVZrOU1td2h4eENldkxFT2pIa1hRTFZw?=
 =?utf-8?B?ZFd3TW4yQnhaZ2NadFp2UXVQWjVQVXpsSjgyZGhtZHBiNW9wQTBuQWRsY0Rj?=
 =?utf-8?B?bzRqZnRMa1U3MWN4YU82cExjTFN5MjFyS1RnRjAvaGhTQlRCbTZMR0FhV01v?=
 =?utf-8?B?SUVTZjFZdzBwS0kzWmluQkcvR0FvVTBnRkEyNzhiVXdwMGUyNkpEQTFMVHVY?=
 =?utf-8?B?K2w3N2FMVmQ0SEhVZllkYWpSLzVUZmNLR2p1Q1FVNDRPU1NjWSt2QnNKeDQz?=
 =?utf-8?B?azlYOWdFc2FlT21hcEtqbGlVdXgvWHFvUjdwK2JrTDQ2TE55SERXWlJzSjhq?=
 =?utf-8?B?K2RNdmFJb2lYbldQVDg1eEhyek9hU2poUjZsR0p6UTlubFBLNVgwU3AzcG03?=
 =?utf-8?B?SS9qNDYyNXJnMGlscVl4NWdjZWtET0F3ZEFHQlhXYWlTQUpLNlp3RjlTVzF0?=
 =?utf-8?B?NDU2ZTN1bWZYZ295dGx4Z3FqeFVMSXRLQnVHbzJiM0FBaUl0dFpuNjJ4Rkdm?=
 =?utf-8?B?bjRVRFdzeUxqT0pZY3JHVXlVbkVEL0U1Mkd2RnFJTFQzS1lJTUxhK0xEbkNE?=
 =?utf-8?B?THdDcDlGYnIzMUNSejdQdXhRQ2IzVUIzUkJIM2Q0dGpxc0RDQkFZRUdRcCsz?=
 =?utf-8?B?OFRDWXZ6ZC81MzYwb25WSVJyaTFLaFd4YTVKR1hBY2xBUU00aCswaHZQVThK?=
 =?utf-8?B?SUJxRUtwVGNONkwzSGw3aHZXck9ZcDExT0Z0dFludzl1YXhiS1ZCeW1qaXFJ?=
 =?utf-8?B?WVRIRldxYVFSdFF4d0hCdEx3REc1Q3pQVXBaYnJTRkt5VmtwWis3Und3VWdv?=
 =?utf-8?B?S0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55a59f47-c2ff-4dcd-5797-08dd76e2c9ab
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:17:37.5845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /BTkmSLLebzIE2YAUPWeMXoufkAKgDTHpOIVFX6sGUtpMfi0aUK+9SJlCdbph+uLjFCXImETV21j0jrfd6o0lnta0DYPPZY7qC/bZuHdu2k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5132
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744147061; x=1775683061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fVWGF5GGRxOog5upaC/0c9jQ8zOBWmgxmPN6Zkw4ADM=;
 b=J11EpSyFS2CR5UFC+Gn253rwWQA0sYjIWHuO3pKCGa2fDSeRlmkWx/N3
 jHKhdYcX2qC21ytLqc0MkLifH9PwrGtt32qdzzH4j902xW0ht7XXQgQmD
 7hwwTQYt4yaiKsB5HlYQI5qmGnPjVOVYGubciOnXgR/LdzHn91RpyQmh2
 foi79z7PSxm/FMcj+qV4YAsbS06hOFiPO9pkKb9PEKC3iM1a0Og7H6Gtf
 DQuhbRSqJ8RFOXcLp9LWho2A5W1grmUuHHq2SSwNOJWKb5U6Gx8Nm+cft
 tBYNd9ywakCx8X3huLPp0kkoY4KOApbGd9GHrWjwPw/vEwSc6JOSrLUg6
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=J11EpSyF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v10 iwl-next 06/11] idpf: add mailbox
 access to read PTP clock time
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



On 4/8/2025 3:30 AM, Milena Olech wrote:
> When the access to read PTP clock is specified as mailbox, the driver
> needs to send virtchnl message to perform PTP actions. Message is sent
> using idpf_mbq_opc_send_msg_to_peer_drv mailbox opcode, with the parameters
> received during PTP capabilities negotiation.
> 
> Add functions to recognize PTP messages, move them to dedicated secondary
> mailbox, read the PTP clock time and cross timestamp using mailbox
> messages.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Willem de Bruijn <willemb@google.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Tested-by: Samuel Salin <Samuel.salin@intel.com>
> ---
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
