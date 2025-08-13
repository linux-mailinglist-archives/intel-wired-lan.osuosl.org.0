Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C893B24E28
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Aug 2025 17:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B358660ACE;
	Wed, 13 Aug 2025 15:52:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s0AWdKgHjv2g; Wed, 13 Aug 2025 15:52:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6985860ABC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755100322;
	bh=1cvZhgTXxcBRqhicW4hAu7oHpOMiilGwHau52yIRHX4=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=60sQzn/ry1V5bfDbpsjmbU526wqJJTU5jSSccYQef9iT4LcxwxnmMqmjyoH/z/E7G
	 qCIoV+EJWHqpTQigzbyDGCTpw5n539L/QhQIDeCohtwWJm40c0dJl2xZf8bzUFgvCQ
	 3u1OMtPoP8/DXAhGg/Jm79PQyA8QMzCaViJDCXHla/anT7iA1WOXk1pUtD2jmnsZMC
	 56ELe4YwWOr8n89P4yQfu3WSdpewBaF0ms/hlkdcJDVufpeYhwdcqxa6kDL9gz8sHn
	 wcq0bZrgunh3MPYYISnCLB8cvbtguYn3T5i33lqRSmKqIoJ4CHX3pZVJu8FiH32+P+
	 yKYYCO8jtK9hg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6985860ABC;
	Wed, 13 Aug 2025 15:52:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id CE4191C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:52:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF98B822CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:52:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WKiBqIIVCoqB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Aug 2025 15:51:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=emil.s.tantilov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AC45E822B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC45E822B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC45E822B7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Aug 2025 15:51:59 +0000 (UTC)
X-CSE-ConnectionGUID: reFg5VGrQMaddZsv4xPDfQ==
X-CSE-MsgGUID: bhETTSIhQJ67Nac93belKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="60022536"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="60022536"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 08:51:59 -0700
X-CSE-ConnectionGUID: DlWeNsosQR+BH4BGYYDGDA==
X-CSE-MsgGUID: Ppc6fcyTQLCV/cREw9ycQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="170715857"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 08:51:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 08:51:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 08:51:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 13 Aug 2025 08:51:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uWJzDQNuOpKHFJCgIxQ6yaO+M48fdeG6zkXq5xQuzYI/Sl3x6o36GA0HIebZ2Sz+yQytUA9sikPaSzEfZS3yOIhFy/klX1SsFXZOUgIVILeqSKJT7Ww/x+cxGLzqV0/tTnKTCIXzi3D9iuBlOpn1mzeIDSb21iOH+2r9bmk0AUB831dnuP0WOYfRL5ya9MAeqXeBea0fxLjMiiB/c2FdNJ28cI11KORFQKqg/sP8TbJHiNO9aIZ23K3GZ78E1UMxekCCQsn7hr+TqxKvD1wXj+A6Hez035RdRGrQoATo8jHEsrmfzHm9c+H5zjoesLp/Im63Tg2PcesNaxtxahgSIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1cvZhgTXxcBRqhicW4hAu7oHpOMiilGwHau52yIRHX4=;
 b=OygYX3xQO+XAE+YbyM/Dw9wg5GMdrPQzZpEuX+Vs5290Xa+wGmb3zBmnBQ1nJty4r3NGCUM5ObxsOVYX70GiThoNuhDayEK+4Bx3czrSuFEN81vx/ZUGTQd+MOwVHQLrZB7hYCovSSDBp4YoK8G1HeCblcFfdYRt+tshhvzzPyMb81oLQteAN2s0fcCj3cW5YRAhCZkK2ZAhYFbEqHqMf6lLI9T1SXHqxKN99hbbzxguH5yoVSxGdffYzvbK6CZey7VkSomlJ5yHaDkpTtoz7uIbMOGFeI8OlHLaYxadVr0jZVks9Kmp7WL34Gv/miEpLiM1Yo0kPwYR/eTpRlXQuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4538.namprd11.prod.outlook.com (2603:10b6:303:57::12)
 by PH7PR11MB6031.namprd11.prod.outlook.com (2603:10b6:510:1d2::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.16; Wed, 13 Aug
 2025 15:51:55 +0000
Received: from MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067]) by MW3PR11MB4538.namprd11.prod.outlook.com
 ([fe80::e117:2595:337:e067%6]) with mapi id 15.20.9031.012; Wed, 13 Aug 2025
 15:51:55 +0000
Message-ID: <e9877f67-70c5-4c14-9fd6-539a58ab5262@intel.com>
Date: Wed, 13 Aug 2025 08:51:53 -0700
User-Agent: Mozilla Thunderbird
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: <intel-wired-lan@lists.osuosl.org>, <willemb@google.com>,
 <decot@google.com>, <netdev@vger.kernel.org>, <joshua.a.hay@intel.com>,
 <Aleksandr.Loktionov@intel.com>, <andrew+netdev@lunn.ch>,
 <edumazet@google.com>, <jianliu@redhat.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>, <kuba@kernel.org>, <pabeni@redhat.com>,
 <davem@davemloft.net>
References: <20250813024202.10740-1-emil.s.tantilov@intel.com>
 <a154eb9b-809e-4b8c-8b77-89c80d6658e1@molgen.mpg.de>
Content-Language: en-US
From: "Tantilov, Emil S" <emil.s.tantilov@intel.com>
In-Reply-To: <a154eb9b-809e-4b8c-8b77-89c80d6658e1@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0307.namprd04.prod.outlook.com
 (2603:10b6:303:82::12) To MW3PR11MB4538.namprd11.prod.outlook.com
 (2603:10b6:303:57::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW3PR11MB4538:EE_|PH7PR11MB6031:EE_
X-MS-Office365-Filtering-Correlation-Id: fcb62ae1-7b2d-415f-e38d-08ddda815431
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cDNyZno0bXpSSFhaVGZMNVFiT0pFUmQxVUxrZ05HRHFnN0NCN1gzelpSVDR5?=
 =?utf-8?B?RERoejJTbndubXd1ZWN5TlB6UUg0TXZiTEFXQThmVFFSb0tPTDd0Mk9ZV0Vp?=
 =?utf-8?B?ckY4aHdaTmlhYmJPNVZqVlVZdE5NRjN0b1huNW42RnZyV1BWM2JiUGdVMWJ1?=
 =?utf-8?B?YzYwcTBaVDJnME85UVhlTVpxb0JGSWpuUDFSbTVPUExZL0J1UG5sb2hrYVVU?=
 =?utf-8?B?cURVYTQzRUMrUjFNQTd4Z0FYNXhPc24vZTBjbTJpQjZNeURRVWovVWRqR08v?=
 =?utf-8?B?YWtLZ2FDQ2NNWWhpNG9oKzZhZUM2NWl6ZWl4b0w2YThuMnh6NWhwTytDWUNN?=
 =?utf-8?B?Y1UwNlM2RGxldEpZd2hpYTd3anVxVkcwM0ZwUE8rSVlHb3dsaHF5VURiL2U3?=
 =?utf-8?B?UkhLZWpWdURYdXhQOUlKclRrOVpmV1MrSTZZTFJ4VXRpMFZsU0djWHJrY3JC?=
 =?utf-8?B?bHpLU0kxL0FPTmhkeEFsbHhwODF6NEhldHRKYkxleHJaT2djQ0ZrcnFYYlU5?=
 =?utf-8?B?b3RtQWttQnJKWWg2VzhyNlZqVHUvWkZ2SDhGaHFlTktUMk8yVXEvWHhMd1Zw?=
 =?utf-8?B?bnd3aHR5d09YeWM1bVhtMWJoUnpocXczVWEzTTAxRTlHVjAyc09iM2t6U0ZN?=
 =?utf-8?B?cDFsZFdRdDFvMGtiT0lvd1dwVS9mbTRmbnZ5SjJGb1FKSlQ5bDhQZDYrbjYv?=
 =?utf-8?B?UmdWVmRnV0hVR21aSGFkbDBwVTdFVFVWSHNiQytRSlRqZG9rVFJzM2RNR3hY?=
 =?utf-8?B?bUxLU092VWxVQ1gxOEpmQVdYTzdFTVFDZnE1UWpIckhTMzFlUmYrcEpJUVRh?=
 =?utf-8?B?MGZjWVJKc1Y5Y3F2eDd6M0pYOFVtQVpyUG5KWEI5S1ovQU9LN2V0VytlaG5F?=
 =?utf-8?B?ZGVvd1hvOENaM0U4ZlZBYlMxR3hHUFR5ZEdnQVFVQk5BdWxtK3VjZjhkMCtt?=
 =?utf-8?B?clYxcmxWVWNPVExXaHNwQ1BLbHBkNzVRbmtZb0VaRkw4NEIyemh6UVZnVDR4?=
 =?utf-8?B?dDlPUFJoU0x4dlBsUmo5eHZXZi9FWGRkTnNwYkpDaXJjVE03aWpsaCtScFhM?=
 =?utf-8?B?R3Nwd3k5U2FqbVcrc1EybVEwZXdpdFhPRmFoQ2dDWFRCNFMxNFNCdm9tc3h4?=
 =?utf-8?B?L0VJODFWUmdyU3BtVnpldUd2Q2x4OGVsKzl5VUhSeTJ0WStwcVd2R0ZlZG0x?=
 =?utf-8?B?R3dDd3ZQSUNYL3V1NkMrL2JSRi80dkQyTDVlZlUrSWc2RStFNGZaa0djczNP?=
 =?utf-8?B?c1hBSTI0cjR6a1BCbjBiSm83SGcxVmVZek5TdDFJN1duaGR3STdOelUrTVhP?=
 =?utf-8?B?N2Y1S3ovNnEvaWJsREd5NDJBTmJkOFUxOHB6VzlMZ21hQzdhMDJtaGlZbmho?=
 =?utf-8?B?V1RXQTFtNEF4WEpGVlRmK2w3cHJZRTJodFIrenpwRUVEeTBMZWxLa0hZczM5?=
 =?utf-8?B?M1c3cW50K3djK1BMc2xKWEtseTlDeW43VmRUVXp6K2I2QnFXQkdwckowaXgy?=
 =?utf-8?B?QVRpN2wwOGNsT1o4VWxFSk9Ucm0rQ251RHVWdjVkYkUzamFCMHkxOXI3OXZJ?=
 =?utf-8?B?QzlXQTV2MUo4TS9uUXk2QjhVVWxweEFwVUtRajQ1Uk9PTkZjeldOdlliMU9V?=
 =?utf-8?B?VTBxL3plS3QrSGpsVXVZZzlrd3c5OEV1cExxVXVqK0JrRDkyN1REcFg2ZDJB?=
 =?utf-8?B?QU52SCtNTjllcytPRUF5WmFYN3VHdjV0dStBdW02amRxQzlMc3ZsYzNJbUVw?=
 =?utf-8?B?UnVxaElHVGF6b2x4VU5ESWg5S2lFMmlSOXhOZzFTaU14VTVpVjBVSHRSU2hM?=
 =?utf-8?B?dklkZFpyL2czbXNvK1VRZnBkTTRkRHdYRVJncnBFZHMwejh1c3VsWnRJMFNO?=
 =?utf-8?B?R1pvOENUU3VoZ29yOXRaZ2ltWm5tSVh5Mk9VN05Ha0xYbmZvVlM1WXVWVFQv?=
 =?utf-8?Q?tcuQ+5mSZ7E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4538.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(7416014)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REJlUlB1UlBiNkVUeEY4djhCbmJkS0tjZTNMYTRRVkVldDd4cU1pUFlhbXN2?=
 =?utf-8?B?OGd0VmNTWDdIOWFLNmJ6MFgrdXVic0dUZVRXQTVSLzNJYzIrSW43amYvMEph?=
 =?utf-8?B?TnQxUUhxazgra3l0M0ZBYUJiUm00aVR0ZFJRZ0k4UkxCYUZXLzkxTmE4c3Bv?=
 =?utf-8?B?M2tDckl6RitHNzBFK3lheXRvUHhOSDM2OVhMcXp5Z0czTkZ1b2VaNFhBcmEz?=
 =?utf-8?B?ZjdCYkV5b1hXNlE5RENWY2VNRVNvRm1TeDBjN1c5UG1pRDhMRnV0SXduaVVW?=
 =?utf-8?B?TnpIc1dZelcxNFg2eGFMNjJNajFJcHlqaHR1Nm02WlhUVWtFS2s0NGxTNHNa?=
 =?utf-8?B?S3NCT0JyL1krTU5mNDQ3dXlZUjlGVmgwblNoV3lRaVh2d2FBdXBwUGRic1Rs?=
 =?utf-8?B?WnlRRm9pT2w1YnpCQTRmT3JyNm1VaUpQd2I1NXQrSnEzcmcwdHEwT3JCdThX?=
 =?utf-8?B?cm51YncrT1lQVU9jRlJaeTNCck5WQnpxM3VJRW1IM09SdVQ4ZHQvdjl3MkJl?=
 =?utf-8?B?YVBSWDFHaFdNTm43WUdQU1BKZGdYLzhRenBkVEdDTkgrSGpEZUdQQXd5Yk8x?=
 =?utf-8?B?dlRFc1pOUE5KQkR2TGVJMER3Si9Fekx3MHA1MytodjczL1ZlcHpxMFpIanA0?=
 =?utf-8?B?aTRwSjdiaXVjSmFKOWJOZERxYVZZVVhNSmxadHFEWEMraTl3em80cHd5RXE5?=
 =?utf-8?B?Wi9tQzNiYml5QkhtRTR6eXJDWUhOdTRCK1N1U1g4SjdoTnVNTUd1Q05IMVZK?=
 =?utf-8?B?YkIwd2UrWElmWElpNDk0b2N6WjFXVUtadWRRNE10NStPRzBNWllJRTZHeFNZ?=
 =?utf-8?B?NU9HeDBxTUxFR1JqdjJQSklIenhqamgzcndaMVVaMHE4Tkl5Q1lScUI5L1Nw?=
 =?utf-8?B?YW4rYUttMWpCRWRXbjFnR3JadTNnTzVzUDdibkFGV2NCV29rNGxSWGc1aksy?=
 =?utf-8?B?N3NEaHRMK3BFdk9CQ25XUWo5aFMxQWs3ZDRUeHpDMGkzbThaYXY5TFVyaGpw?=
 =?utf-8?B?bFlJMytZK1o5bXRNKzkyR1VyZmJTblFScllwc2RmUlVab2d6QnE2UmdBRmpI?=
 =?utf-8?B?eExlbmRLYm5rYndaK3V5OUJ5N1ZKZ0sza01TNnhRZ3FvTkNLTVBsR1dHVEl3?=
 =?utf-8?B?MnRBeDRsNkVUK3JYeFRhZHJvbFdwY1E3d3ovMjVUdUZZY1Q0R29KMDJrcmZQ?=
 =?utf-8?B?MnRzcEplRG5lWVJ4bmJKeUlLSTRKcFg2VkZVQjBZNXlMRnp5ZkovRWpKN25w?=
 =?utf-8?B?VWdyTERNRXEzYUZuTXNMY2hCb2djTUEyZVJvMFJvdTVJNTZVTjJValF1NUI1?=
 =?utf-8?B?ckpxek1kSVdRMitzRGFEMnI4RGJJeG1VWURqcnFKRFhhRTd1Nlg5RG13NHMz?=
 =?utf-8?B?NGVMU1dKNmZ2cEQxMjQxbFYvWWpvdUpRVk9BcVRYNGcrUmRjUGpqRDFsVUZ5?=
 =?utf-8?B?Slp0K2V0cEM4YnRBY0Y2d1pwaEQ4d1p4b0RXcmZhcENYazN0ZkxSL0hZTkJr?=
 =?utf-8?B?TGlBTjJuVXVRV2VoTE1tSis1UkxKYTR0TmJTWW03dEhuaEkyelZBUEs1ZmhP?=
 =?utf-8?B?UzhRQlRDWFdjNzFmTW9HZXBUekNDRmRpd3AyZi9xR1plOXVjajdUVGFqcXJW?=
 =?utf-8?B?R1RScFdOVHVCYjlpUGUzNThzYVRkYW5RcVBJcjRaZnQ3Ri9aNm43YVpYa1hF?=
 =?utf-8?B?Z2lzdkhvVjBNd3YvcjYwdVNFZ21ZYUQvYmtjamllaFBqMmFLcjB1NnpSNlYr?=
 =?utf-8?B?SHFhTmVpZUpEWkE0VGNrbnE4b0JEQXZVdnoxS01jN2FuZzZsWTBwVy9WTVFo?=
 =?utf-8?B?V0tvSCtFVTI5UEE2K1R3THpBVCsxVWJsOVQzYittc0xTcGs0d0ozTDk2bVl0?=
 =?utf-8?B?dXdwcjhOSHlveDd2NGUvTGY4cEUweC85amJxTUNpcHVmcU1ERVlNQWdhQzdT?=
 =?utf-8?B?a0RtUjJNNUxTMVAzNkQxWGk1S0NWNzFuZXhnK1A5eEhoai9EZnJJTXFIc0M1?=
 =?utf-8?B?VzFCbVhFd3JTTjY1YUY3V1UrT0VnOW1LUW9vN0NUaDlnMWNCNzhqeGdQaC83?=
 =?utf-8?B?a2pSc3N6eHJvTVpnY2N4ZVA4NFBTL1l4WldydmNQS1EzVUNCTU5UM3N1M2hZ?=
 =?utf-8?B?TERnZFN6bzhoaXBCcnJZaXVudFROZVh5NXBwMUVaaFNpbGJoYXE2cmRFMnR2?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fcb62ae1-7b2d-415f-e38d-08ddda815431
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4538.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 15:51:55.6302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJZzuFEd2p5XDCkKE6gOxGGh39EP8O5viRAnJdaU3zTY7SR7ETNVa1csXkYNm7je/a6qecXmYV8H2CFpIcp0/Runj0SElkEoovtA/FJsQHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6031
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755100319; x=1786636319;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oDd3lm21EFC9hJfb/t7uWfc7v0TICQPEQdDFmehgQt8=;
 b=SsYQHBP5V5GGgaLo+sakeJISjTGNGvEKb8hhJ/dsHwbyrJJqxnHu9wBh
 nNNtsHS5JeLtDjEGeQS5boVcUGMcNYbtqy4PiQTxX8VpwwmLgrmaqAX6Q
 g/HLeI1NSNunLUVdiungfU2GgPe9pVxaze27BOg3aLqKeBe+qzAkhec5H
 qnJoxJp+0rH+hWRa3Bm2ZCSazipxxeDQ3kIFx+QIf2sql18WQf3ArQO5o
 1CNCHqJ6F0DCS7trb8CyKOzsqtXEUmZVKZ6otSEXA7WjFYvnk+tJfAWJ5
 g54KJmGibIZJrWs3j1hD6akjttLZbxZnPH7g4kLO9cRGKEaJQEw7Ak82G
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SsYQHBP5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] idpf: set mac type when
 adding and removing MAC filters
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



On 8/12/2025 9:55 PM, Paul Menzel wrote:
> Dear Emil,
> 
> 
> Thank you for the patch.
> 
> Am 13.08.25 um 04:42 schrieb Emil Tantilov:
>> On control planes that allow changing the MAC address of the interface,
>> the driver must provide a MAC type to avoid errors such as:
>>
>> idpf 0000:0a:00.0: Transaction failed (op 535)
>> idpf 0000:0a:00.0: Received invalid MAC filter payload (op 535) (len 0)
>> idpf 0000:0a:00.0: Transaction failed (op 536)
>>
>> These errors occur during driver load or when changing the MAC via:
>> ip link set <iface> address <mac>
>>
>> Add logic to set the MAC type when sending ADD/DEL (opcodes 535/536) to
>> the control plane. Since only one primary MAC is supported per vport, the
>> driver only needs to send an ADD opcode when setting it. Remove the old
>> address by calling __idpf_del_mac_filter(), which skips the message and
>> just clears the entry from the internal list.
> 
> Could this be split into two patches?
> 
> 1.  Set the type
> 2.  Improve logic

Both changes fix the errors. In the second change DEL/536 opcode
following ADD/535 will also result in "Transaction failed (op 536)" as
it attempt to remove an address which was already cleared by the
preceding ADD/535 opcode. I will update the description to make it clear
the change is more than improvement.
> 
>> Fixes: ce1b75d0635c ("idpf: add ptypes and MAC filter support")
>> Reported-by: Jian Liu <jianliu@redhat.com>
>> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
>> ---
>> Changelog:
>> v2:
>> - Make sure to clear the primary MAC from the internal list, following
>>    successful change.
>> - Update the description to include the error on 536 opcode and
>>    mention the removal of the old address.
>>
>> v1:
>> https://lore.kernel.org/intel-wired-lan/20250806192130.3197-1- 
>> emil.s.tantilov@intel.com/
>> ---
>>   drivers/net/ethernet/intel/idpf/idpf_lib.c      |  9 ++++++---
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 11 +++++++++++
>>   2 files changed, 17 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ 
>> ethernet/intel/idpf/idpf_lib.c
>> index 2c2a3e85d693..26edd2cda70b 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
>> @@ -2345,6 +2345,7 @@ static int idpf_set_mac(struct net_device 
>> *netdev, void *p)
>>       struct idpf_vport_config *vport_config;
>>       struct sockaddr *addr = p;
>>       struct idpf_vport *vport;
>> +    u8 old_addr[ETH_ALEN];
> 
> old_mac_addr?

Sure.

> 
>>       int err = 0;
>>       idpf_vport_ctrl_lock(netdev);
>> @@ -2367,17 +2368,19 @@ static int idpf_set_mac(struct net_device 
>> *netdev, void *p)
>>       if (ether_addr_equal(netdev->dev_addr, addr->sa_data))
>>           goto unlock_mutex;
>> +    ether_addr_copy(old_addr, vport->default_mac_addr);
>> +    ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>>       vport_config = vport->adapter->vport_config[vport->idx];
>>       err = idpf_add_mac_filter(vport, np, addr->sa_data, false);
>>       if (err) {
>>           __idpf_del_mac_filter(vport_config, addr->sa_data);
>> +        ether_addr_copy(vport->default_mac_addr, netdev->dev_addr);
>>           goto unlock_mutex;
>>       }
>> -    if (is_valid_ether_addr(vport->default_mac_addr))
>> -        idpf_del_mac_filter(vport, np, vport->default_mac_addr, false);
>> +    if (is_valid_ether_addr(old_addr))
>> +        __idpf_del_mac_filter(vport_config, old_addr);
>> -    ether_addr_copy(vport->default_mac_addr, addr->sa_data);
>>       eth_hw_addr_set(netdev, addr->sa_data);
>>   unlock_mutex:
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/ 
>> drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index a028c69f7fdc..e60438633cc4 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -3765,6 +3765,15 @@ u32 idpf_get_vport_id(struct idpf_vport *vport)
>>       return le32_to_cpu(vport_msg->vport_id);
>>   }
>> +static void idpf_set_mac_type(struct idpf_vport *vport,
>> +                  struct virtchnl2_mac_addr *mac_addr)
>> +{
>> +    if (ether_addr_equal(vport->default_mac_addr, mac_addr->addr))
>> +        mac_addr->type = VIRTCHNL2_MAC_ADDR_PRIMARY;
>> +    else
>> +        mac_addr->type = VIRTCHNL2_MAC_ADDR_EXTRA;
> 
> I’d use the ternary operator. That way, it’s clear the same variable is 
> assigned a value in each branch.

The assignment is fairly isolated in just this function, but if this is
the preferred style I will change it in v3 along with the old_addr
rename.

> 
>> +}
>> +
>>   /**
>>    * idpf_mac_filter_async_handler - Async callback for mac filters
>>    * @adapter: private data struct
>> @@ -3894,6 +3903,7 @@ int idpf_add_del_mac_filters(struct idpf_vport 
>> *vport,
>>                   list) {
>>           if (add && f->add) {
>>               ether_addr_copy(mac_addr[i].addr, f->macaddr);
>> +            idpf_set_mac_type(vport, &mac_addr[i]);
>>               i++;
>>               f->add = false;
>>               if (i == total_filters)
>> @@ -3901,6 +3911,7 @@ int idpf_add_del_mac_filters(struct idpf_vport 
>> *vport,
>>           }
>>           if (!add && f->remove) {
>>               ether_addr_copy(mac_addr[i].addr, f->macaddr);
>> +            idpf_set_mac_type(vport, &mac_addr[i]);
>>               i++;
>>               f->remove = false;
>>               if (i == total_filters)
> 
> The overall diff looks good. Feel free to add:
> 
> Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>

Thank you,
Emil

> 
> 
> Kind regards,
> 
> Paul

