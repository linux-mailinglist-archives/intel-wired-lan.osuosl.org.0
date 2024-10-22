Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FBC9AB84B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 23:15:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5758E60834;
	Tue, 22 Oct 2024 21:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5-OTc5MD_VPT; Tue, 22 Oct 2024 21:15:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 04CA160835
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729631742;
	bh=AHHExUSoToiEw/7oTADSnE/UQES2LJU035sAHxBvSIE=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2GRU1yO/G74FyFFU+WEDYStaXNi9sxbe/OceYawQx3Ocztf+pIg4YZyNHt9s+pPbx
	 XfjcawkQLdzVGzmFduX4N3ZcuSHnYHRoLF5Gh3YKCFDZx+jpMcHoz7/4af8tiRck6G
	 cGs+soww7VgcpgweCvMJY3812ciqr1UnfZcYF18Qz7446zmzz0y/umTb5zRjCA7ois
	 LIb13gcXTXGH5zEueufNO9dYP3pcgheF/3OX/1816NJdv3MzsSRuGCiUejDbjPfUyw
	 1/uSiX2yjBWdoOs1dW88PLWS9TA1ifNbsLudoXa3s1pwEUXN6zSU6xmIxuSinxKFq8
	 zjiHHlIz9FkRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 04CA160835;
	Tue, 22 Oct 2024 21:15:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C6B02072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:15:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4ADED810DD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:15:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iBinKCUB4BFf for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 21:15:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5B5D8810D9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B5D8810D9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5B5D8810D9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 21:15:38 +0000 (UTC)
X-CSE-ConnectionGUID: N6ae75s5RaeX31Z/n1pFwg==
X-CSE-MsgGUID: XPFIjLpaTa2czf0uxgZn4Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="29295177"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="29295177"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 14:15:37 -0700
X-CSE-ConnectionGUID: iMni0fe6ToycsjOuqiTL9Q==
X-CSE-MsgGUID: bKB+xy6gQGW9odeD9Cujbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="80325961"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 14:15:37 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 14:15:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 14:15:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 14:15:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DD2IXs3OvmV+Iw0v6s+xsKmcN2sZa1LxmJ68QsyUzsNwCaQm83NaIGo+PaYylTJZbgaJctbgNSKtPw+VyHfpNKoAm9izOeddJOSpNjnTMu1S6vgl9MyPl0LgoNvf2pcdLTSDBTrgWgg7EFSq3SJ/wweED2NHKYLsjz1NGAzzWLvRcn3sX8rkkWyiU8XW/bqAhD26FDAkPHJJt78swDhcxg8H/gm6/V8+2NThVWJhc/5Qj7IsFcLJVuh5G9QF9Wu72D12bKO8lb2hP17w7BSKPOaT73mksnvVMZSnt4//s41zcJ4fEPSILV8+LrOtl/vGvOV1jmEEFyeMd4SoEu/jzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AHHExUSoToiEw/7oTADSnE/UQES2LJU035sAHxBvSIE=;
 b=rFkmy2UC+//eyqaGhJA1k/ccF62VT6k2qmMIePC04MRESFpNx0wBymGcnHXzG8E36vbjcTnxuuGKXgFmRmZfY8uHFuM97jKq1JMBZzqIGwyBi89E3IUTOmMfqGTPjsZa5PD0XwPnn8Ppa/mDNL45sNvtDh6liomb/b6VSAzj1+cUBn0ltX2DkqSg20Ag78rTJalD6ncUN0gpP4n6ERrqmNZQPlUN5HZT/C2XDxN5f1BO6d64JPHjv7AmnruXvLxSKrzR7SL6rm4dc4X7aycKpd7RD30ExpVo9KzmVI/IiHwkBb6RMsHKWxijyrpmFwF9XdMAp8hJ9Fzf+MIfJOaaCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by LV1PR11MB8852.namprd11.prod.outlook.com (2603:10b6:408:2b5::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 21:15:32 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::7de8:e1b1:a3b:b8a8%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 21:15:29 +0000
Message-ID: <270a914d-3b50-4eee-b564-1b8cff82facc@intel.com>
Date: Tue, 22 Oct 2024 14:15:27 -0700
User-Agent: Mozilla Thunderbird
To: Joe Damato <jdamato@fastly.com>, <netdev@vger.kernel.org>,
 <dmantipov@yandex.ru>, Tony Nguyen <anthony.l.nguyen@intel.com>, "Przemek
 Kitszel" <przemyslaw.kitszel@intel.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, "Simon
 Horman" <horms@kernel.org>, "moderated list:INTEL ETHERNET DRIVERS"
 <intel-wired-lan@lists.osuosl.org>, open list <linux-kernel@vger.kernel.org>
References: <20241022172153.217890-1-jdamato@fastly.com>
 <ZxgEb0N0cJt1BRte@LQ3V64L9R2> <ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <ZxgVRX7Ne-lTjwiJ@LQ3V64L9R2>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR05CA0105.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::46) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|LV1PR11MB8852:EE_
X-MS-Office365-Filtering-Correlation-Id: 69adfbe6-923b-4120-1377-08dcf2dea815
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|7416014|1800799024|921020; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzhwOGVFUGRwc1hSWWpnM0d4Y1puWmdkWFZ0ekxPaWU5bWhnalI5SDJqQXVa?=
 =?utf-8?B?T0pVZExUd0J2WVR2RWVqNVZHUGJCSVdReXhuZmRFdjczUjBzSWVNTCtiT0s3?=
 =?utf-8?B?SG9ERFlyaXh2TytGZU9jOWdFd3NjN1NDNnlLa2pCS2FVMERIT0VvUm5QMzJK?=
 =?utf-8?B?K2FUaW1OcGpzZWhCMzZYZmgrMHBzRlU2TE1RTXNQTXNWNEdOMGhZZmh0Y0Iz?=
 =?utf-8?B?LzM0V3JtczhMYnI0OUpnTHFad1dES0w4cEsrWE9TQ1dGSllRYjh2Z0lVcVFv?=
 =?utf-8?B?SjRLdXVNRDd2T0tVd0YyZjdHakI5dDV0ZmdZYll4SXBicFFMZTJ1V2pNSWQy?=
 =?utf-8?B?cGl5bkhYSko2YlVaYXNMQWszOFl2bTZLdVBEZWtMYjh0b2N3UzZZVXZXbVlr?=
 =?utf-8?B?ejhXWWMzcHZTTDNwREFGZXdya2hUQzArd0lUaWVUb0NGRmEyd2hoUm45eGMw?=
 =?utf-8?B?R3JnU3IvT0NQWVZNQ25XRzU3aWZzTjZxaTYvUHJKV1VYMjdxOWpRUWNRM2ZQ?=
 =?utf-8?B?Q0tLdVNRTlloUEZRZm9wOGNIeGNZMWRSbWV3S1NXN3RLMmNWSjZ5Ym9VWndR?=
 =?utf-8?B?VlRNV1pHTkhza0VhRWQ0Q3ZqSGMybnc0TjgxQVRwOUJZNTU0ekpmZHVUZWw1?=
 =?utf-8?B?MnZJODRTSWl3aEE4cHlVUTU5UXIvZVhFdk5OeFVjN2twZlRJRzVUSGNEUmVx?=
 =?utf-8?B?azlFN0JEQ0pKb0N3SHJtM20zYUs2ZnNpano2ZHBZdUlXL3FPK1FuNWt6K3hX?=
 =?utf-8?B?clNjRTVXSThXN0ZTVnJWa1hFbzQvRE1iRVZYUTkzQ1VyNjJscU0rY2hEL3pL?=
 =?utf-8?B?K3Vvc1hnTE43R2FKUEpOK2QycU40Z2t4ZzZUMjkrMHovUy9nUStyTytxUGU0?=
 =?utf-8?B?cmo0d2hWSTZvNURSUGVsR2dtOEpndnBpOTJhUmpWdWRUTE1HMVQvVCtpdTlI?=
 =?utf-8?B?VFMybmk3UnE5YjFaTVhWSW85Y3RLdjc2Q3lqYVI3K2x3NEhBR1BrUUsycm9t?=
 =?utf-8?B?ZThlUERkSHQ1Y3BYVTdZemFTaytMSVRJSU5jRzhvZ1BXNmJueFpYSkxYYUdB?=
 =?utf-8?B?OWpVekxWa1ZsYkVnNS82ODFIeUtyeVRWclE2WGRzMUtFbFFQY000RENJaU5o?=
 =?utf-8?B?Z21rNHBjdlhWY3hCQytRTWVQRS9LQUhFb1N1NTczYlVqZ2N2cmZFMG1uaDJi?=
 =?utf-8?B?MWlZRGxyMHZJUWx6NWJoRXk5ZjNoZEM2Uk5FaXIwcDZhV2hlTTJEQW9EbSsx?=
 =?utf-8?B?a2FWc2dOVVdNK1M2ckJ6UUdOSWYwd3NWMGVENXpwcFpaQ25GcmljMWgxTEVl?=
 =?utf-8?B?eGdxOTIvalgrQ2gvU2JQa1pDMTNFSkN0UjFuQ2dScHBIV1VzVHdwM1JTQWxq?=
 =?utf-8?B?Zzk1SDJvM1J4ZGNVVXRiMjRLTlBjU09Fa1h5ZlJTd1Z0ai9jaWFzdmJyMlRz?=
 =?utf-8?B?SHN3Q2hKa01IQ3JQZlBVN1FOeHhma1Qra1dVdXRJVUJ2Y1NramNZZk90d3U2?=
 =?utf-8?B?aGhtTG9yQ2pGcDU5cDVuTzdmb3VmRDltNDRSWVBiZHNDL0NOVkFTYWowVTdK?=
 =?utf-8?B?UmZKcmdLdjYzeWtpd01NdlJsZUkxMnZwdG8wQUxpVHgzL2VqY25JY01UdWlI?=
 =?utf-8?B?R2ZPcEJvS2x0T1hEUUk2d0xKa2FPalRQNkgvZnFlQTF3azQyK005eTVhSmF6?=
 =?utf-8?B?NWc5OE80ZUlSRzBZSTQxNW1TTFMrQjFYcUNYOEdsUE5uNGV1Z0tLVDZtM2JP?=
 =?utf-8?B?WTUvZlZ5T3FkdWhoQXBraTJUeDFnNVNpNEVVeW9TeGt1eGhjYTVyL2pGV0Ns?=
 =?utf-8?Q?fZe/XPKa41VB0MlG9DDP0Vl8/j8L4uW2O3774=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(7416014)(1800799024)(921020); DIR:OUT; SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RU9ZYWhCNFZsNzlJL05nL2NRTERWSWd5c1pKaWp3OTVHVFNHL0pGYUladjJ3?=
 =?utf-8?B?eDNIb0lzbFpKeUlsU2V4c2JTa2k3OXNyVTFrQ3UwR2trcksyQ3NYQXk1TGN4?=
 =?utf-8?B?TDhEVlZEWUg1WmJWNFhtZU5pRnJUYWFQMTFsdjZkejNlSi9aMktEaTVNaktR?=
 =?utf-8?B?Yi9QWmROVDJua1BCcUgrcERCT1VHZXVjVWdrQzZjYXRjSEFoQVp6WEVMZFBR?=
 =?utf-8?B?Z2s5REJLeDZRVENQZVZZcG9xaE9ZR2JsaXZyZkhaczNXUi9lTlkvVTNSTG9K?=
 =?utf-8?B?WU1WSWpPTGEvdE4zSmtYL0J6WWpsOGNkQ1dEa3ZMNmpFVzh2bUZMQllQSjcz?=
 =?utf-8?B?UllWS3ZmT1lJVnN6cjZsaE9oTFNjMUJ2UXZUL3BkMmFmM3cwYWlnRS9oVHdh?=
 =?utf-8?B?RzYwaytjTFZ4L3FnN3RNb283STZPZVJCRzNna3prNVc4eHNsRTdqbmoxbGw0?=
 =?utf-8?B?NXN5cjRIVTc3TVdHdDE5RnhvZmJhY1pBRFUvbGh3MHc0ajlRaWFEV0o3S1pq?=
 =?utf-8?B?bHNTNk54QTlGTTQ4Q1I2RVU1QnAwMmN3NCtLWU1nMXNqSENwUXNEc2Vvczl3?=
 =?utf-8?B?cHdwcEZtdDd0cnBCcXAyK2xzL0pCaDFQWEFISDZ5MUh6bUpMVjBsUy9YRE5q?=
 =?utf-8?B?MFJkQnZPS3k4YUY5WDkzT2QrKzBOYmhFTkgvQnpuZlVaZjJCbFd2RUNMRkdK?=
 =?utf-8?B?MksxMVNzVVRHOWtHTWp6TFFoWVEwUUJJV0NubmxPcWNmUGE1cDhOM1hnNXJr?=
 =?utf-8?B?ZXpjcHlrNUZjWnNWemU0N3pqQ0FtTlBXQmJRbWZybm0xdTltR2pDT3hKTVVE?=
 =?utf-8?B?MDhZc1l0dVlGODAzY0kwTjJyMXdiV28yREpoQTZrcUF4RlNpd3o5cW1MNWV5?=
 =?utf-8?B?S2RkL2tBMXJtTCtoakR1MmdVdFgxR3VlVFdrOFpJOUxMdFBBTG1ISnNHVUtY?=
 =?utf-8?B?Y09KVC8vSmRGRVl3M1dJakxxRGZidnIyTWNSL2R5UlllVEhNNjlRZ3BFMHh2?=
 =?utf-8?B?M0VWZE8yMjBRaVNtUlp6bVpFdFBHNE9OUVZvZ3phSnA2R0gxMHF3eUIwTEox?=
 =?utf-8?B?UzBkcHpaK3EwSjYyK2VuVzdreWcreXFvVk1MRU1HZFBPVWdOOWZlM2lybnpi?=
 =?utf-8?B?VGw3aEI1NENhOTJBL0k2YzBhN0ZkZzRrVHpHbW40UDdUTDhVZ1FsQS9SY3h6?=
 =?utf-8?B?QTRwMnRnRnMwZE1ETDVKcEQrb0Vid3c2OXZUZ256S0IxWXNITjR5ZW53VEJZ?=
 =?utf-8?B?VENCdDlJU2IrWVozT21HN2VkellBVExuanJudzFMa01peGtobjJnd2xkNm15?=
 =?utf-8?B?SWt0T3doOWxLSmRhbjk0cU90VUI1dFpJR043blpKcDZkb2gwMDFNWEJlei9w?=
 =?utf-8?B?UnNoYm1KSTV4ZWluRlZOdU15MFVLNUtVUEZsbjdqTHVyamw3UE4yNjBwZEZ3?=
 =?utf-8?B?bWxTSXVOY3RvWHRudmo3elMrL21KVkJhUEZZVzJpdkhCYjJSaVpFZXBqblRS?=
 =?utf-8?B?NS8rZERCcmx6cGZvdTBDVVVkMXh3b2JVNVFNSXdQN2RiNUxmWi9NNEZQVDdx?=
 =?utf-8?B?Wm92LzZWbGlKR0RvdWx4bFlZdjgzMEFYOEcwTUZpbHlIenlHQWx0cHlpOTg1?=
 =?utf-8?B?Um5KUEhqS2tzUjRITnpHMWlHUjVxTlY5M2FhUE8xeHFHSXhlaDNRV0k5VS9O?=
 =?utf-8?B?VUlFUnBiWHcyTnRKSVFmcCt6eU9nU2Z2MEUxL2lyTWtTZlRJVWxoRDNxOVpx?=
 =?utf-8?B?VGVlWEVCdDBwdXJWeHY2d3Y1WGRxVmxYOE5WVEhhWldvcXRadlc0aGwvZG9z?=
 =?utf-8?B?S2VBYmV4ek10dHlTSW1aZE9ML0RieEhOdytDMzZYbGFoc1RFbGhIZnd5ZUVV?=
 =?utf-8?B?ZkdGb0RBUi91NFV0TGZoMUQwWmFEeDFZYjI5RHVOL3FXZjNFSnpMd2VaRjJq?=
 =?utf-8?B?ak9YaDZLOFpOVDczYi9HWmhwODdHdExPdUEyOERUQkd3NWt5N3l1V2lLVy9L?=
 =?utf-8?B?WTJCNWw1cWJDSE9tYmkyWktXK0JNVTdEOVlWMjluTjdOYVJ6UVpoYXUzdTJ0?=
 =?utf-8?B?VjhPd1VBbHlIVDJjdCtMdHVCaFJwTlErSHFLS0ZoVUN6cFphV0c2N1lBSzF0?=
 =?utf-8?B?WUc5b05qSjZVMFJCV1VKSlAzem1zYWFCZUFKZDVsYVJmMDZNQ0RGOERNQU1n?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69adfbe6-923b-4120-1377-08dcf2dea815
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 21:15:29.7608 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5mDCeMgqaD6Sf9QbdIl89S+R0VhllDYcIXnQW9EMWj6EtDxqOW2vd0W8161CmE5k4NVdUIFxBKIl91zHe711N1GLGHtg/1TQXC8VwpiAgwQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV1PR11MB8852
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729631738; x=1761167738;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=mfl/dQB9DLRfB1y1X6noO//WSr3J8xLiqjTCWU3NU7M=;
 b=nl0Su0dpknW+goFmL79dAxcrmX1YZAUzcHu6YOBwZ6fb8lUgjh2arF7K
 1CygCza973anqcpVFOtvw6SuAyMrSrr2nWojeaE7kyey3AbQQ29oCZ96a
 5qk/VAEOco5xtrClZhez0bohOkvj5P9rQNN/JNOe64C6/zv7tWPGMzgpw
 DIFSM4nT/zz2F1emS4AB5Z046F/RRmWWmc4z5yrdMGv9WsFblb5nWhLMu
 nrim6+mKEP+LzHLas+oiQ1skXzpp/43rUpqYmEbTGKrWxn5Yn6eCpdMND
 XfcV/sw1FYNjrz8zUmf9zmHAA34Zpvko5qKBRjtbcnR0F7s0sXoXeXxsk
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nl0Su0dp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [RFC iwl-net] e1000: Hold RTNL when
 e1000_down can be called
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



On 10/22/2024 2:12 PM, Joe Damato wrote:
> On Tue, Oct 22, 2024 at 01:00:47PM -0700, Joe Damato wrote:
>> On Tue, Oct 22, 2024 at 05:21:53PM +0000, Joe Damato wrote:
>>> e1000_down calls netif_queue_set_napi, which assumes that RTNL is held.
>>>
>>> There are a few paths for e1000_down to be called in e1000 where RTNL is
>>> not currently being held:
>>>   - e1000_shutdown (pci shutdown)
>>>   - e1000_suspend (power management)
>>>   - e1000_reinit_locked (via e1000_reset_task delayed work)
>>>
>>> Hold RTNL in two places to fix this issue:
>>>   - e1000_reset_task
>>>   - __e1000_shutdown (which is called from both e1000_shutdown and
>>>     e1000_suspend).
>>
>> It looks like there's one other spot I missed:
>>
>> e1000_io_error_detected (pci error handler) which should also hold
>> rtnl_lock:
>>
>> +       if (netif_running(netdev)) {
>> +               rtnl_lock();
>>                 e1000_down(adapter);
>> +               rtnl_unlock();
>> +       }
>>
>> I can send that update in the v2, but I'll wait to see if Intel has suggestions
>> on the below.
>>  
>>> The other paths which call e1000_down seemingly hold RTNL and are OK:
>>>   - e1000_close (ndo_stop)
>>>   - e1000_change_mtu (ndo_change_mtu)
>>>
>>> I'm submitting this is as an RFC because:
>>>   - the e1000_reinit_locked issue appears very similar to commit
>>>     21f857f0321d ("e1000e: add rtnl_lock() to e1000_reset_task"), which
>>>     fixes a similar issue in e1000e
>>>
>>> however
>>>
>>>   - adding rtnl to e1000_reinit_locked seemingly conflicts with an
>>>     earlier e1000 commit b2f963bfaeba ("e1000: fix lockdep warning in
>>>     e1000_reset_task").
>>>
>>> Hopefully Intel can weigh in and shed some light on the correct way to
>>> go.
> 
> Regarding the above locations where rtnl_lock may need to be held,
> comparing to other intel drivers:
> 
>   - e1000_reset_task: it appears that igc, igb, and e100e all hold
>     rtnl_lock in their reset_task functions, so I think adding an
>     rtnl_lock / rtnl_unlock to e1000_reset_task should be OK,
>     despite the existence of commit b2f963bfaeba ("e1000: fix
>     lockdep warning in e1000_reset_task").
> 
>   - e1000_io_error_detected:
>       - e1000e temporarily obtains and drops rtnl in
>         e1000e_pm_freeze
>       - ixgbe holds rtnl in the same path (toward the bottom of
>         ixgbe_io_error_detected)
>       - igb does NOT hold rtnl in this path (as far as I can tell)
>       - it was suggested in another thread to hold rtnl in this path
>         for igc [1].
>        
>      Given that it will be added to igc and is held in this same
>      path in e1000e and ixgbe, I think it is safe to add it for
>      e1000, as well.
> 
>  - e1000_shutdown: 
>    - igb holds rtnl in the same path,
>    - e1000e temporarily holds it in this path (via
>      e1000e_pm_freeze)
>    - ixgbe holds rtnl in the same path
> 
> So based on the recommendation for igc [1], and the precedent set in
> the other Intel drivers in most cases (except igb and the io_error
> path), I think adding rtnl to all 3 locations described above is
> correct.
> 
> Please let me know if you all agree. Thanks for reviewing this.
> 
> 
[1]:
https://lore.kernel.org/netdev/40242f59-139a-4b45-8949-1210039f881b@intel.com/

I agree with this assessment.
