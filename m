Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBBB98CC660
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 May 2024 20:34:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B182408E2;
	Wed, 22 May 2024 18:34:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5oCxEiMln8i; Wed, 22 May 2024 18:34:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C30C403C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716402844;
	bh=j6bkqnWC7/dlKG54GvxYXkfhoTjCEPvxbDAlfjcSjv4=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Oo5YOUW3kSOgv/kzHvAYW49xj/9/mXciX3L1iAnlLAef5qMbeitNS49gjNJyvo8Va
	 6Mkn41ep0iCBNblVv8lKFz7kTrYx0bWEojuOD6G8Xf69+pkOlFutPBkOAepqNYhWBP
	 4EheNxUAqHOqAm+i0Fiz3hGklGNeBMJPITKo3F7U2rontb2KczoZ5gHxsGOXeKfSvd
	 CYRZK2Z/szlUtB2n72R/tJHzJP8IeGIky7lGbbCHTB1xjduUVztZcmGw3WzHEpJjkN
	 XwD3/CSbw9IVSrDH5M1YEiyvjYDfXqKar51caMLq3emd51kdSxn5yJrgwwxb3cQOzy
	 8VKRZyN7z7krA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C30C403C8;
	Wed, 22 May 2024 18:34:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6EA51C5E4D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 18:34:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BFA7C60679
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 18:34:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xn2cA2d8wBRJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 May 2024 18:34:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3C78460594
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3C78460594
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3C78460594
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 May 2024 18:33:59 +0000 (UTC)
X-CSE-ConnectionGUID: ZMD3kJ7TSfSS3eOB9MErIQ==
X-CSE-MsgGUID: lFqEuTcUQceNJCltz4R3dQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11080"; a="35189793"
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="35189793"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 11:34:00 -0700
X-CSE-ConnectionGUID: uwG6zQk/TOCGjjXRT/CbTQ==
X-CSE-MsgGUID: QC6uCIYPTBGAhI8sbfzztA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,181,1712646000"; d="scan'208";a="56624962"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 May 2024 11:33:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:33:58 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 22 May 2024 11:33:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 22 May 2024 11:33:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 22 May 2024 11:33:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ef4bWwgmGSbnY/DZunN5PVeoHsXg7XfxpnIKtbXvOnGXSy+ypSmBhf9bR+rnp10+cS/tqa95Aqwrt+NnjVxcLGOzFqEKyfC/fV/nD/6XFQMpSIpN5apoK/S2ANY3aD9RURXYrIGLyVF99zyEV4rzahPhqWJtBgu43S5Q2B6JIo4hAj1ZAhsMolUw00sBkdArx+f/OBGXf7rB43YCPOnzsMKlEDjFvg/yfxvJtBGKxk7VtiOwVLuX407Nm4jK7xreSf2Pjnua4NPyyNMHdoxD4lVnuIh2SVCGphGThgjJCd+NrNw70+ApzhkpLsUXopJKG+w+nPsqmfSM5gmgjlS5Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j6bkqnWC7/dlKG54GvxYXkfhoTjCEPvxbDAlfjcSjv4=;
 b=nD1VsU1cqmpl7nPTzfir8iD3J5GhfHWlA3zvT1ndH7iArm7muL5oyOmc1/xgiz+5Q7hDhIppuMvz7Jlj4kBrx13ICDctqTS2pVcs17IETFvf7NrUcJf++pY2AHBqVgYEjFydiR+QCv3y17VrLmPqz6AqKzTH7NeCfJ4cRUf+Ym43e9q+FDgkICZfuhU+TH61zBuDbORwinEAoCqtgSe0Pl6bHz70LoBqwGMbbOtYYMcfs+iVBbwd9MVaF55RuRxcn9gQjRlXZlBctDnBEdYGuSWL9kvpqcAl/JqscWhO00rtq8a1YPhUBtUGtspRF5P+KwoWaz2m/sMz7FWdRGz0HA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by SJ0PR11MB5072.namprd11.prod.outlook.com (2603:10b6:a03:2db::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.21; Wed, 22 May
 2024 18:33:55 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%5]) with mapi id 15.20.7587.035; Wed, 22 May 2024
 18:33:55 +0000
Message-ID: <0cb9aa33-768e-4623-bf73-8c9bd713aea6@intel.com>
Date: Wed, 22 May 2024 11:33:53 -0700
User-Agent: Mozilla Thunderbird
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
References: <20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v3-1-f46c53cfb67f@intel.com>
 <2da2aa2d-5d65-4250-b39f-6b09eb07239d@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <2da2aa2d-5d65-4250-b39f-6b09eb07239d@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR02CA0007.namprd02.prod.outlook.com
 (2603:10b6:303:16d::33) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|SJ0PR11MB5072:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b81c39d-7a8e-4354-1147-08dc7a8dbca0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STNzVjZkdUxER2UvKzZOYXZXQU9wMnlHVEJRbnl3dGUzS3k1Sm10VzhYekxm?=
 =?utf-8?B?SHExMzI5Vlh5b01RWWp1MHptN1dYcjBBSXNML1M3WmNqTVV4V2FFbVdNY1Rk?=
 =?utf-8?B?dUd5KzNMck43UzI3V3JBZXRQRUl4WjhBQ1h0N1dsNGdNSEtNYmJoVlhZUVpw?=
 =?utf-8?B?Vldrc0JBTTJiUSs3b1FJUzlLOHdIUDh5MjBJNVcvMHMxZEF4K3lFY2t3ampr?=
 =?utf-8?B?ZUNGZzZkQjNsSkRxdGprbERhVW42KzNlWUR4S2loaC9MTEVLUk05N1RxTm5y?=
 =?utf-8?B?OVJCaTM1Z29PVk1BRzhERzhORkIxSGkzbU1GeDNONU5RRHIxK3ZERy9ZVFZY?=
 =?utf-8?B?MngvVWZVWUlxckV5TkZ4UEEyZlVhamkybmh1Uy9VMGQvWVdjZ09RdFNDNmlJ?=
 =?utf-8?B?aVB4cHF3MTdrOXM2UGk0bmp6Z09Gek14VzFORFRGWjM0UnpOVEtJT3F0VkNO?=
 =?utf-8?B?TTlCQ0pRcC9ISXlWQVRFRVB1V3ZRVkpRU3NCa09KYngyUnBlRmRzcTVJZElU?=
 =?utf-8?B?dEl3a000Yllyc2g0dkRSQ1JqeStSNjNoT1hMVTYzSnplL0JOMkpRZVZaS2tp?=
 =?utf-8?B?QVpqM3dxaXErb1p1cVRSaEdWVWxLb2d2YzRDZUtzekJUaWNLVi9BUkRJRllu?=
 =?utf-8?B?blRDWGxZc3o2bytHNzJPQWsrZWQrdjZnRVdKZHBNZVhOaGtFa09iTjAwTVJ2?=
 =?utf-8?B?ZHZQVDRyNkZ4YUYrRFNEaHV1b1cyR0d1bzZ4QXA4Yy96Zi9mQUNWSlhIbk5Q?=
 =?utf-8?B?NVlydWZWNmQwaGpJQUt3VTNKamdoZWJiMFpwcjZFclNDRXJjcS9PY2ttSHpQ?=
 =?utf-8?B?K29zNC9hTm9aeXg0Y01ydGNHNWd2UUxCTVRkUmxNVGFxSVhwRHk4d3RIOHdr?=
 =?utf-8?B?aVVoTFhVbkFLTUtwRElPV3pxVURiVVk1dFYzRnVtWE1IcW9KRTdEWDd0enph?=
 =?utf-8?B?d0NXTjJOK2pWM0lCT2FTZVRjdHRhR3p5cmVnMmZubWpNSS8rTlVVcW93eSti?=
 =?utf-8?B?T1BLN2IwWWlGTXErOW5FNUZ6eU1mUjhrbjg1ZGtaTm1IU3d3TC94VHVzSXVm?=
 =?utf-8?B?SmwzcnVmZWxDWEptWjl2ZmVKdjFyRmVZUE1KSnVUVFRBWGlEeER3R2g1UVIr?=
 =?utf-8?B?ZjYrRE9Cd3Npem14eVBFTGZ4NE9Ya3FFWmI0ZW5aS0lrR3IrTXY4OWFXUEZm?=
 =?utf-8?B?MHlVRzQ3ZnVjUjI1bzVMOFJrTU9raVViOVlERVcrVHYzNGNTTE5lRnJCdnBZ?=
 =?utf-8?B?eElwNGxtV01kdmpDVlhwbHFWa2trVTFKdWozTHE3d3JPTUNvSWZDYkJZc0lP?=
 =?utf-8?B?THh6OExoOFI5c2tzL3RPQUtWSEU2MlJWSEhoTFR2aXZNcUdlQ3Y2NXJrUGsz?=
 =?utf-8?B?cTlQcXUxeVZ6RS9uVjg0b2tDaXZlZkxESEFZaWxVbUNYL3krYjl2STBTZUJq?=
 =?utf-8?B?WFhmeHhMK2lYdzF3VjlPeHo2cmpzejhHZXZ4TERUQ1ozd0ZPZkIzYXZnVWU2?=
 =?utf-8?B?ZE1JeHlacS9LQ0ZFcXNMQmJKcUVGMDN5MStxdDhjcFZiNktBeUtWaGFlTVZ1?=
 =?utf-8?B?RlJ0alZwL0k2V0RDQXdOTTJlK3Y3RDRYMytrUEJqWXNrbEVETkhFOHJjNGN4?=
 =?utf-8?Q?+PfF1wVOsrnYuimyaEwwRWG4r5gegAE15HzYkfr2AEmU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZUJJZWYwZllndW0zN1RnanU0UHpkczNoMFZWZzFxMTFNL013TlM2UnJyOGoy?=
 =?utf-8?B?dDd2WStkbWF3ZDE0YXc0VHpXcFhQYVZUV1J0a1BiUVVVWEZ2VFlSS0JDRTlG?=
 =?utf-8?B?SWJSNnVXYlA4NzI1azNhODFTL29paERzcVRDcEM3R2pzV2k5RWRmU2RJMnpu?=
 =?utf-8?B?RjJSUVQvYkU3d3dzcFUrYlBhYjlXRWlJOFd1WFRYLzZveVVWeU1zMUZaUnhx?=
 =?utf-8?B?TUZYTTQ2OXhCYWM5VVBzalVWWGRyNFIveHhiVGFXaWc1VFozR3RKT1ljR0ZS?=
 =?utf-8?B?QTdhTFNuOTJmN0phY0QzMXdseE56M0lDOTNJTUdtZGpBK1VxQnhBRnhxOG9Y?=
 =?utf-8?B?cGIwQ3Yvay9lRVVDcGVReFBQb21pNW5HZGJGblpkNTNNaGJhcjY1NFE2Tm9B?=
 =?utf-8?B?YXBhYkNnWDJmeUxzenhWV2YvY3o4U3VadE5OTlBFdUxJM05iV2phc09UdEIz?=
 =?utf-8?B?Z00yVENYdUFmWU1MMkJjR1Q2SDE2Q3lwQmFOY3VMeWFSOVNHZjRNMnQxalJj?=
 =?utf-8?B?Z21OcklRby9scWoyVjZhSW1wSE5GZ3lINFZYc1o5U3hwT3hDaGt5eG1XZGxY?=
 =?utf-8?B?cy9uRXJ3ZDNqdlU4TjFTR1hXOE9YTWRLVGRnRm8wZkJnSUR6S2pxZmF3bE8w?=
 =?utf-8?B?enlJdTlYSkFyaFB4VnUxMFk1WFNFWG5GYmtuNk10a1kvMmcxdDRtOTM0Snhv?=
 =?utf-8?B?ejhiRmlHd3RzUlIvVHJSaUFkelRIMlVCbk1jdC9vekUvVy80TnhsSDc5Z3Bl?=
 =?utf-8?B?M1d3ZTRncHlCZ09uUllLOS91RTV1aWovZStzaU1FczhLczlER2FBdjNUVUVt?=
 =?utf-8?B?aWtuZkZINDBhNkE1YzFkN3ovZW1wcE9mMTZoTTFzdDNJMGdrMmdJdU43U2Rp?=
 =?utf-8?B?UmJ4dkhodHZia2h5NU54VmVjS3pMbVpkNUtVVkhGcnc4ZUFVV3RMOVltQnox?=
 =?utf-8?B?WE9QblM3T2c3ZlFFVXpOWUpWbXpZSW41MHo5ZDNodEhWOTVUdVM4Kyt6YzNX?=
 =?utf-8?B?QW5VMXJwVDFnYWI4UFp0N3lSdUFTcVhNa04wNTFQS0YvWWlmZ3ZzVGRJcGs4?=
 =?utf-8?B?eHBqOVZVdGhhUDdyaDhlUlRrNlh0eEpEMWp1YmwvNTg2VS9qQnU1bVBDQnds?=
 =?utf-8?B?QnJBUlNsK3VTbEloZzFwbFhZdWc3NVRXR1A2dlJCdkNqR25NQmxJTkN0VWNt?=
 =?utf-8?B?MkVuZ0JpTmY1QU9RZjI3eU5HN0RwdFA2L0RINnJQaWVocEViRnRrZUFtZ05W?=
 =?utf-8?B?cVh5Wkw1MXBFaFZnL1NPcXc4em83cXA5UDQya0FMdEdCQ1hIK2k3VDNXOWd4?=
 =?utf-8?B?NEVNUkZiUkN3VlN5RDMyRXpqZVRQem0zODc0bTg5cVdIK1JLU2xjTDM3Vncw?=
 =?utf-8?B?dzMzS1dybnhvMGlsbWVscXZYYllhUGVBMzRQWkl0U3ZEa0lmaG9PS1R5K3dS?=
 =?utf-8?B?ZnhjdUhMYUVaV01kcm1KUWtpaTlLK0lKOUNidWs2RWNTUlpVdkl2QUhxMmli?=
 =?utf-8?B?WjNpR3E1MEJWV1RXcysyWTFqRUYva0xZWmd6QTJjdW5EREFsSkJKZXZTRUpS?=
 =?utf-8?B?V0J4THhvRG5iczgvekFKc3BlV1gvRE1xOTJVS2xyc2ZJOTRaT2tUOGhNZGtE?=
 =?utf-8?B?dDBXeGl3N0kwQ3VsM21sSGxvMVFjSWZjTW5ZUkJYMGpvYnJleTBDbm10NTN1?=
 =?utf-8?B?NmVlZmJZSVhOaEJ3WEU3MWJ5dUZtRzNiZG5qNVJxei9vQUVZcEgyVTVmK3JU?=
 =?utf-8?B?aDJWSzlVWElZQlNJYTkvSDg2ZkVpK1NaYVFvMGZMbmF1TDlEaG9yTjNjSS9L?=
 =?utf-8?B?WFViM0VHa1d2N3NFVWR2Ujc5MXFyWkZHMllkd21DMUpUQUNEM2Nmbm8rUEJW?=
 =?utf-8?B?OFNwTEQ1ZHV3M05UYzdVdy95VWFLbE1zKzQxYUx5QitnbEZEN1dTQkxpa24z?=
 =?utf-8?B?YjVoblJES2F5aHdOQXYyOU5rc0lNa1kvQWRyRkY4dThDN2pqL0pmZHpSNUFp?=
 =?utf-8?B?TGhFdjh4MXd6QXZHdGhvOVJoWHRvb3BoYU9lTTQrTEtQV2FiNjVEUnFSTHA2?=
 =?utf-8?B?ZHZuU0RBQ0tPRmJvaXVpWVVBdS9vL29taTU4MXhFTGRQNHJ2YmUvQnlRS1Ro?=
 =?utf-8?B?WE1rMlhlRjBhcUpFMGd5bVFtWWlQZDQ5SjNRNWRyL00rcjBndk5tSzVTQm11?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b81c39d-7a8e-4354-1147-08dc7a8dbca0
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 May 2024 18:33:55.4510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4LEWd+ULJED572tJ93Z8McWJYVe3fEFczk4iSqahzgZZrWlAyWKRPJJA9NYI9Yv/E6FmX74Lxm0/0fdmsQBNZAVdceUSQcR9WXblOqlPqbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5072
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716402841; x=1747938841;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ExHGA4KBtaOmjkIKX40vZvcMicb03WQgNws7VIa8Ros=;
 b=KafuGru+OOieCo21pV0oQKJVY5p/hh/k9Z6Wdh52LTJfOJ7uVo9gz0+o
 UYmS5akyj5PYToStwud34kxUvAqJti3cmXfVKFiJn4dCEOdfG8nWgEwwZ
 ExS0iIiMLPp6s8kdbqMX02AGTZLOE66JRKGpR7XUjGg1E+CTAqo961DeC
 YWFf4/OYtFfh2H5ZIB1KaFVMtYxT7prg2VzxzkAwIiN0IMq+60M3SYfNO
 wcYeSgsvq/5A8pSeunAr7ckFJrdhI8Hy0GiXxc7hfWc58p2VKcIPQ2KyG
 GPHkfzc6sGwyiNqawA5CE6zHUDW3slah9P4NlEw5MqfeVhnGTlCpLWEze
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KafuGru+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: avoid infinite loop
 if NVM has invalid TLV length
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
Cc: Paul Greenwalt <paul.greenwalt@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 5/20/2024 1:33 AM, Przemek Kitszel wrote:
> On 5/18/24 01:22, Jacob Keller wrote:
>> The ice_get_pfa_module_tlv() function iterates over the TLVs in the
>> Preserved Fields Area (PFA) of the NVM. This is used to access data such as
>> the Part Board Assembly identifier.
>>
>> Some NVMs in the wild have been found with incorrect TLV lengths including
>> at least one which reports a TLV length of 0xFFFF. When trying to read the
>> PBA from such an NVM, the driver will compute a new offset for the next_tlv
>> which is lower, due to overflowing the 16-bit next_tlv variable.
>>
>> In the best case, the driver will incorrectly interpret values until it
>> finds one which has an offset greater than the PFA area without
>> overflowing. In the worst case, the values in the NVM result in an infinite
>> loop as the misinterpreted lengths result in checking offsets which are
>> valid within the PFA, and which ultimately point in an infinite loop.
>>
>> Fix this by using check_add_overflow when calculating the NVM offsets, and
>> bailing if we ever overflow. Additionally, use check_add_overflow when
>> calculating the initial maximum PFA size.
>>
>> This ensures that we bail immediately on encountering any TLV who's length
>> would have caused the naive addition to overflow, rather than entering an
>> infinite loop or otherwise misinterpreting NVM values.
>>
>> Fixes: e961b679fb0b ("ice: add board identifier info to devlink .info_get")
>> Co-developed-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> ---
>> Changes in v3:
>> - Fix missing {
>> - Fix missing pfa_ptr variable to dev_warn()
>> - Add Fixes tag
>> - Link to v2: https://lore.kernel.org/r/20240517-iwl-net-2024-05-16-fix-nvm-tlv-issue-v2-1-fdee184ece86@intel.com
>>
>> Changes in v2:
>> - Use check_add_overflow instead of increasing the variables to u32
>> - Upgrade log messages to dev_warn()
>> - Link to v1: https://lore.kernel.org/r/20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-v1-1-ecbb6a75961e@intel.com
>> ---
>>   drivers/net/ethernet/intel/ice/ice_nvm.c | 19 +++++++++++++++----
>>   1 file changed, 15 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> index 84eab92dc03c..be731b83d667 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> @@ -440,8 +440,7 @@ int
>>   ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>   		       u16 module_type)
>>   {
>> -	u16 pfa_len, pfa_ptr;
>> -	u16 next_tlv;
>> +	u16 pfa_len, pfa_ptr, next_tlv, max_pfa;
>>   	int status;
>>   
>>   	status = ice_read_sr_word(hw, ICE_SR_PFA_PTR, &pfa_ptr);
>> @@ -454,11 +453,18 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>   		ice_debug(hw, ICE_DBG_INIT, "Failed to read PFA length.\n");
>>   		return status;
>>   	}
>> +
>> +	if (check_add_overflow(pfa_ptr, pfa_len, &max_pfa)) {
>> +		dev_warn(ice_hw_to_dev(hw), "PFA starts at offset %u. PFA length of %u causes 16-bit arithmetic overflow.\n",
>> +			 pfa_ptr, pfa_len);
>> +		return -EINVAL;
>> +	}
>> +
>>   	/* Starting with first TLV after PFA length, iterate through the list
>>   	 * of TLVs to find the requested one.
>>   	 */
>>   	next_tlv = pfa_ptr + 1;
>> -	while (next_tlv < pfa_ptr + pfa_len) {
>> +	while (next_tlv < max_pfa) {
>>   		u16 tlv_sub_module_type;
>>   		u16 tlv_len;
>>   
>> @@ -485,7 +491,12 @@ ice_get_pfa_module_tlv(struct ice_hw *hw, u16 *module_tlv, u16 *module_tlv_len,
>>   		/* Check next TLV, i.e. current TLV pointer + length + 2 words
>>   		 * (for current TLV's type and length)
>>   		 */
>> -		next_tlv = next_tlv + tlv_len + 2;
>> +		if (check_add_overflow(next_tlv, 2, &next_tlv) ||
>> +		    check_add_overflow(next_tlv, tlv_len, &next_tlv)) {
>> +			dev_warn(ice_hw_to_dev(hw), "Failed to locate PFA TLV module of type %u due to arithmetic overflow. The PFA length is %u. The last TLV has length of %u\n",
>> +				 module_type, pfa_len, tlv_len);
>> +			return -EINVAL;
>> +		}
>>   	}
>>   	/* Module does not exist */
>>   	return -ENOENT;
>>
>> ---
>> base-commit: 83e93942796db58652288f0391ac00072401816f
>> change-id: 20240516-iwl-net-2024-05-16-fix-nvm-tlv-issue-99ebb2c55c52
>>
>> Best regards,
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

It turns out after digging, that this appears to be caused by
erroneously reading from the NVM past the PFA TLVs:

I added additional logging and I see:

> Failed to locate PFA TLV module of type 22 due to arithmetic overflow. The PFA length is 0x00002f00. The last TLV was 0x00002fff. The PFA area ends at 0x00003000. The last TLV has length of 0x0000e7c1

We're trying to read a TLV starting at offset 0x2FFF, but the PFA is
supposed to end at 0x3000. I think this is actually just a case if an
off-by-one error when calculating the maximum offset of the PFA, that
the next_tlv < max_pfa value check doesn't trigger.

This results in the final loop trying to interpret whatever comes after
the PFA in the NVM as a TLV, which gets the incorrect length value and
causes the overflow.

I need to do a bit more investigation, but I believe the error comes
from the fact that the PFA length value includes the initial length word
as well.

I'm unsure if we would still need the check_add_overflow in that case.
It might be safe in the case of an actual bad NVM.
