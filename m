Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6414CAD7CB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Jun 2025 22:56:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A62460DF0;
	Thu, 12 Jun 2025 20:56:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9FAbUau0qoeP; Thu, 12 Jun 2025 20:56:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B309460E00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749761812;
	bh=+cJfAgcT1g9ynzyCaizPwyEQduLng9aF9Au2xz/wqk8=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tBxuYU8qhBTO5Kbtkim20SYgNVBOgpH5pgSVmKxPOIYSh7wVt+yMCd8OzGCbiYqf7
	 vk+KSAqhfb6z4SLpF1yGxJt5muQbMp6itNqBpKewUETBDaIbmPbE7d2NgrEkqVHzSk
	 hWzV2N1tvUDEG8K3gScc+gvsa5Eegc4OeTT/5OQmxc4IQl/y/baKMQNGRhEn2nCieh
	 rRJfCSewiGUWoazD7krys3UqKAx5alCffjCdiryNrQsAw18ggCO6mCAq9SrNrKPbOZ
	 sjGGk/8BBxdcj6YvJVqMU1Ph6NMHmPdQM7thFmBhvshmJKX8Xy9MCP2wdr3Z3wUEXo
	 cqcpsGTszNxrg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B309460E00;
	Thu, 12 Jun 2025 20:56:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 45CCD1BD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 20:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2426F60DF0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 20:56:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lQ7vU54-ahFr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Jun 2025 20:56:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 60CF86063F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60CF86063F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60CF86063F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Jun 2025 20:56:48 +0000 (UTC)
X-CSE-ConnectionGUID: KdirlHquQF6PTd7AmiJ7wA==
X-CSE-MsgGUID: 8MdNKCHLTvG6P5Ehab9sjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="52100997"
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="52100997"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:56:48 -0700
X-CSE-ConnectionGUID: x0ywmh3VRUKF8xsmYTn+Vw==
X-CSE-MsgGUID: QFzv4jljRbiQxjsoFPQ+bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,231,1744095600"; d="scan'208";a="147616327"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2025 13:56:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:56:47 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 12 Jun 2025 13:56:47 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 12 Jun 2025 13:56:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j3/l4gqR3h+G6Eh8gURfEaY99gosaOpIznAtDwUIbdFoNmJ+HF0l2KYKuxbJWMQRpcuN7Qu6FTD1euMnKVVp9hjzW6s30UOhpNh7oj6MpfeqI/jaWc888n32dk6bVi40wJbW8o0y2qS7GIOv/xMCeqv5RPcq8Wx1CgxEn/PwuPSbGbznDy2N4qHEbPc+d0nP9wjVRK8zqo3X28/C0iX3Nh4EaETfLHZ8hhEV4acF6iVjWDQz5rN1HN3Lv/MS9Dzhp6QZOVSCI1pcdzx6u8t/NAwQsc+M6tL/DEXmde88CB0OCJxNxVroQBYdli0KJcNl66ER9d/5nN3VbUPrFmlSHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cJfAgcT1g9ynzyCaizPwyEQduLng9aF9Au2xz/wqk8=;
 b=U2qY8Ji5+CPiUuQsRBp9deLwqeIIb4gLkv+UvYAu+uP4uAFjqmu7ZeBcI3T5PiOmiumWCtJRJ4da9ihMtWCyZHPiyiHYRYcxaebp0oLjsNLYAsUjNR56iNu1t7V0y0JyFdnVjwuZGOk9uq2CM5SLTEAebCRfUP5TwjVyloT9yQ2GYb64pL1GSoGG7groCylNg43cUXX4L1w2nqpqz8gtELZi9HHi7nIvsYoaMMBFXJS6rnOEcON1L4Iad5AA4SjoDaI4vXSrVGB+LgudlGIW4OniyjeI4pucI8lvt33eP+IsP3zX1YrMo+J5HMdDyJkAW8ri5usO9vlvbhyhLKjNtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5142.namprd11.prod.outlook.com (2603:10b6:510:39::20)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.19; Thu, 12 Jun
 2025 20:56:44 +0000
Received: from PH0PR11MB5142.namprd11.prod.outlook.com
 ([fe80::55fc:5f77:7f15:8ff0]) by PH0PR11MB5142.namprd11.prod.outlook.com
 ([fe80::55fc:5f77:7f15:8ff0%4]) with mapi id 15.20.8835.019; Thu, 12 Jun 2025
 20:56:44 +0000
Message-ID: <edf8c701-fb5c-4af3-ac3a-073c6545bdbe@intel.com>
Date: Thu, 12 Jun 2025 13:56:41 -0700
User-Agent: Mozilla Thunderbird
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Aleksandr
 Loktionov" <aleksandr.loktionov@intel.com>
References: <20250313134606.116338-1-paul.greenwalt@intel.com>
 <aD7E5SdLXvhDGlFI@boxer> <e2b9adb8-c53d-465e-b351-746fb232248c@intel.com>
 <aD9CzG+w8AMtHRoD@boxer> <4702c755-c306-4780-aae1-3a940635f224@intel.com>
 <e32ef1e3-c737-46e9-9a0f-f80026182183@intel.com> <aEmEvEzYphOGqgfZ@boxer>
Content-Language: en-US
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
In-Reply-To: <aEmEvEzYphOGqgfZ@boxer>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0339.namprd04.prod.outlook.com
 (2603:10b6:303:8a::14) To PH0PR11MB5142.namprd11.prod.outlook.com
 (2603:10b6:510:39::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5142:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: 13f9a2fd-4a38-451e-f445-08dda9f3a2ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3lFMWdmZ3VjblY4TVkzMmloS0YrWTNrSDNBVzZLNFdaWGdSVE5EU1diM2po?=
 =?utf-8?B?ZVMwbFJ6bHo4VTNxdXZZeTVGRVFQRlZocWZIdVhNQUZYUkdvYUJ5WkkwdDlK?=
 =?utf-8?B?YU9Tdk1PVk1rbWNIdDBqZkhtZTBxa1FSSUFmczRSakNvZU0yUG00c1pKZUpW?=
 =?utf-8?B?OGNDNHlPM2ppYytGdW5MWFB5YWxsYW1SbTB6R3ZYMU5RQXYySi8zVGhmcGYz?=
 =?utf-8?B?OFQyZkdRSmlJeU5Fdi9qdFNUaXBQSnZnak9iY2xsNU1URUY3V3Q1ZmUyb1RW?=
 =?utf-8?B?UzVqRWpwQ2ZTVnlxaW5vdXpJekhxc2dkelFCMDdxNC82a29uUklhS2tMVjNT?=
 =?utf-8?B?cHIxbXk1TXFia01aZmNtOGFTZ3JIZlBRSkh5alBDSHZTdmhWeUxMdHd4cEQ1?=
 =?utf-8?B?bmppVVBZd2VoU0EyL2htS08rOHU5b0g0bzlkNXVRbUpxNjg2UWtNS0JKbE9a?=
 =?utf-8?B?SWx1bjZTUnQvRDd1ekZsaURsSTJSNHc3SytFaVJrd3Z0ZWR0YmorMTEyblBU?=
 =?utf-8?B?cWRoRzBJc01sZTRwa29SM2pNKzVNK1ZPaWE1dVJUZnZpd1NUa3QreklIZFNE?=
 =?utf-8?B?djVGOGhPaFNtNXhZUDN3M1pqU2xkOGJKMm9mS0xxNE9NYnYyZlFZUnNSVmh5?=
 =?utf-8?B?RjUzd1d1SnZpcmtYbWRreFQzUE5WSWVXa0VDaitnZXJxY0JBRzM0cWViaW40?=
 =?utf-8?B?RWtlWlpIWWltT0V1aHB0N2xMQ3lCN3JxUmlKQVJqZzJuZG51ZlVLQk83ZGNu?=
 =?utf-8?B?Ni8rUWZDNUdUY252elFwMnhud0s2Zk12bGJGbjJKZVBEZEdlY2pTU2NXNklC?=
 =?utf-8?B?RXlCOTdzTm5jMnhpd0dld2F1UktNWFFaZEoxTC91bDRETkdOMkZjeU84eElJ?=
 =?utf-8?B?dGN6aDcwbWl2MUpTVWRuaDB2UDZ0SVUxSGJ1ZzlzR2JzSkJaaTFqZEpOcnBW?=
 =?utf-8?B?RHoyd2llWk5wRFJIclA5c05mTWdzQzVjbVlKQWF2MzhvSlRxNU5RUmQ5TW1w?=
 =?utf-8?B?eGdrQ01rZ2VFSjl3c2x2MFU2Z3hIWUFOM1M3UEVQSkJmTXJqZWZQM3IrclNM?=
 =?utf-8?B?dkRvT1J2MmJ1czg2MzJYQ3cvRG16S2Q2Nkd5dUZNZkVtQnpLRjA2YW8rZTVh?=
 =?utf-8?B?bHZFdjB5ajVwZjA1Z21CVWxDcW85U1loNEN4YkcvdGJXSXlBNGNIbzRBUjdW?=
 =?utf-8?B?Q3RHekV5T2habUZzOXhCSHd5aUFMVFhITmNqNFZHMWw3TWczQ00xelI1N2Jo?=
 =?utf-8?B?VHVkczgrQWMxRHI4TjE1U1JjbFF0a1BXZTA0SkMzTHJpSUJGb0lrcjAyK2Ji?=
 =?utf-8?B?Y3dPV2NWcThPb3U2ZFl6dVZHeGlFSnJiV3c1MVFkcjU3TEJVcHUzOWN1TnZ0?=
 =?utf-8?B?cjJBZktRekd0NGYxcWFXMTRaYkNxeE52R0hQL1dhNFpaS094YU1WMGM5NEJV?=
 =?utf-8?B?Q2ZEQlZDa0NrTHhLN05MbEc5OHFrelJrTW9ReFk1SnZPcXhERTcxYzR4bDZz?=
 =?utf-8?B?eHNtendQeUx6Ukl3alc0SHdaeHFoMDFVZXhsck56bUtZSDlFUHJOV0dHVkov?=
 =?utf-8?B?YVhIcDZFa2pjaGlLSk4ySTRZRit5a0k4cCtzSUt3anMrMUQwQ2hqNktqS01a?=
 =?utf-8?B?ZG5WZ3FHVUQvdnROekwvR3d1Smwyd0NnOVVYYnFlZmNTR1YrRFVKLy95STJ0?=
 =?utf-8?B?aXNzZUJkR2Q4ODRGVjFSemd5d3QyWFluTTdZUlRNWVY3dXo5N0dNSklLM2dF?=
 =?utf-8?B?ODJ6dm5yUTM0ZEtjTUw4cnBadnR3eTc2cjlEZytqeVBQRDZHaGQxMU9xNS9w?=
 =?utf-8?B?N0ZCZkhGUHd3SzlTNC9OQkhzTkVpTWlYNW5neTJMSWtYb3F1L2pRZWRoQmdS?=
 =?utf-8?B?RTQwVnhRREhoTGpkV1h3WTB3ZzYxdkRlblBRUTZwWnhaTmQzckQ0OFF0Nzlm?=
 =?utf-8?Q?uE6PGDAH7BA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5142.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDQ3WlM3WUdQMS9CSEZlVDFPRnhaTHBHOE16RzZVSmwyR01CRnd2NkpRRG9j?=
 =?utf-8?B?WkVJTUF6dUFTVmRma1A4UzdVcGlwOWJRaktLVmpNNmRlQkRrS2gxclVyNXhM?=
 =?utf-8?B?RGduelliOW9SNVFraWl5dC9ONmV5aU5rZkZvN2Z4Q1JOUmcrWitjanV2ZVRk?=
 =?utf-8?B?SXhnc1BFd2FRaUxrdnIrNUM1UzZIb1FBWDRTc3dJRC9ETFFEdjU3NFdPNlpr?=
 =?utf-8?B?eTZLNm9lMXlNRlluU3RINHdnZzZ5SmtXR2pvd0xUSjM2UVM5ZGJXVDJ6Tm9V?=
 =?utf-8?B?bkN2M2dGMHBvZTB1VXkwamlhT2s1eUxGTWRVclJRVmwybG0wSkVmUDZTMkdG?=
 =?utf-8?B?dGhYelN5Ynl2bVluRzdKVHFUVUk2dERUVXZ5TFdRSzluTFh2VFI5YTV2Y25M?=
 =?utf-8?B?Y1gzV0dmTnlBQmlwblN2bHFsdzZoNlh6S0RsaWpCNHJyZEJWYmo3RW1vdUpV?=
 =?utf-8?B?VTR2L1NmcUVld0ZUa0lHYklZLzNnZXhwcXV0L2FTeHRHRWZ2TlJkWkhSQmFy?=
 =?utf-8?B?bGVFV2FJaVJLT3NYdjVXMmYrYU1uclhySTJIUldYQTh0UEp4TlptSjgveDhl?=
 =?utf-8?B?UFNySzhMRk9NUkJ3OGF3bDZWQXFiTmorWjVrTjlBVlhVazlvaGpMaXJ0T0hz?=
 =?utf-8?B?ZEt5QlZYMkR3WWxSTVhSUTJKT3lYMWxPWS9kV0wvUHc4VFNxU1REMUJzOUR5?=
 =?utf-8?B?R3hubSszS3F0YjltbERNODZ1MmdPQXlOL2FzblI4dmhHTmJVOVJqNTBkNXhI?=
 =?utf-8?B?blVPQzUwT1Fnbmd0Mk5GbmJMUEU4b2p0eWVjR2FWaHM5NkRKVDBYa1NUU2FP?=
 =?utf-8?B?dWpwSi9LYkM2Q1ZLNS9YNllZZSt2UHJxWEhSOGtxaWZRQ2p1VGZGNFpxK2Z6?=
 =?utf-8?B?Y2JBeWY2MmlJblNSYlBzczVnSmxHQi9FS0tRUDBpNytHcjlhbVcyN2RFa3BL?=
 =?utf-8?B?dkltclAwL2lHR29qalN5NXZNSUYvOEY4Mi9KV0pNOThidVByRWNoa1c0L0Y0?=
 =?utf-8?B?aTBUbkIvNTMySjl5Tlh6V3kvUWJXNlEzdlUzc1Z5NHpmSUo0bk5Md3YyRXND?=
 =?utf-8?B?TkorQ05kNGFLTnAxWGpPRWdobXRuUlZoQ1ZzOW8zVTN2dDRsYUgxYzdpakdp?=
 =?utf-8?B?ZGNYYVN0ZkdVQzhYZVNLcnVjdHprVzZoOHQ1ajZLazhUd0k3STlvMkhodDlP?=
 =?utf-8?B?MGRhdXBrQ0lKQ01SYjIzWVZjdDBiVEFPbU9RUk5OdlN1cGxZTzhrZnlqWWFn?=
 =?utf-8?B?ME43TVNqMFhzL2E2VzV6aU5HeUxLSWNRcDFhTUtZcHhNWDdJRmJQOTZhUnRa?=
 =?utf-8?B?d0U3ZnA0RkE1OEo2dEFQOVZjOFdldnYzWVJzdWx3N0w0VGQyM1I5Ym12cDVp?=
 =?utf-8?B?c3VOR0RBai9VQzRCSVB2ZG5pMUs4QmdZVTl2U09RNjRrZjVBTXVwbVdYU0Z3?=
 =?utf-8?B?bEthZndpUCtaS3o3aHBqNXRoekh3b0p4aVpnRXM2dis2ejhSSm9LOXo2TDdB?=
 =?utf-8?B?NW9XdzVzNTc4UGg1bjQ3UmRtVTFFeER3QXZFa1kzMTliY2x4eGQxbmhtZ1JW?=
 =?utf-8?B?cU05dCtnaTlOVDBESjZrZVdiMWgyam5HWENwMG5jajdhN0tNdm1EUUZqZHgz?=
 =?utf-8?B?WHo2amtON25la2JRbzVKM1ZPR2Jzd0c0MjUrVlFMVkVuNUcvd3lhVzUrNWF3?=
 =?utf-8?B?amtJa1ZOR1UwTWo1Ny9HVENtQ2Mwck5FbFBOYUNPK05HaEZaRFEwaVowZ0ln?=
 =?utf-8?B?MzRZVnJLR1c4VnhRaDVBZXpxNWVuUGhROGZHcHpUU2tkUWtTdjJYbFJaWVVJ?=
 =?utf-8?B?Q2NOeXdwVFNYSGxpa2FxRzJaWDUxeHdranoyMlIzMU95L04yYWFQclZKbEpt?=
 =?utf-8?B?VU9EaGJpWCtsUUo3bk50dXk2ZG5YeUNZZWxaSXlLeTVxcC9NbWJKOWxKWmFN?=
 =?utf-8?B?bzR0aGk3bzdJMmh3NWw1R2h4Nm9UR1lBWHhPZmdjeVZwTmhuRWgzZEZuNjZk?=
 =?utf-8?B?MlJYNFRrdjBLVDFRaEh3QytnMWpDWTBLT211Y0FCdURMQTdvMEJvLzNGZnVk?=
 =?utf-8?B?ZWI5TU1YelcxUlgwdEtVWm1qY015MW1UbVJQaVI4d0JYclk1SHk5aHY0UmRk?=
 =?utf-8?B?UUoyeGFXWGhZM0RTbzZoK2srY3k1cklHOHJONk90ZFpLK3RCZUpwZ1E5eUZX?=
 =?utf-8?B?R0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13f9a2fd-4a38-451e-f445-08dda9f3a2ca
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5142.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2025 20:56:43.9597 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E0ikJVge6LOSNggbVLxGDmr1+w553qDkbXUFBgnygAFMI0ntgs8lCgePI3P5e4IQsi2CP5ALpJ7ZYld7tNiCYTSFu7LMBhA+Q/UN3z0DIXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749761809; x=1781297809;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A8I97XibzPYH6Kh9AOZHMJWfy9z9ARSfRh62+RqYua8=;
 b=Xgz/gf4fx2V5Io3I1fzb0l4l/6ni0jsOsHMUgJ/V0R2+JA0gZGZQVegy
 Iir0keYwH6m106xNDaNCN0t/nez7MSXtXaInUkoAsOOuWxTKweia3Mt6f
 PNBm9T+Q1AkPG8l47a70+tofZwOF43GDjcRunJ5Y6K34/1esRsL9pRVsh
 cNeebq6ecy8jkKpLj8o+BlQS6dNLv4Xqammc5qel9lsCRlx6gkgiVfQG6
 lULYQS2nyeebl+YL9pb8Z3Z0pzZM3B1S3jVVafy9V0Z212hIuKQJXpqk+
 JOILcJw6MC+siTRq9P1HhYqcFXLd5miZCk6fEW+6GIhRTp7m8rUIfNJnc
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Xgz/gf4f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: add E830 Earliest
 TxTime First Offload support
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



On 6/11/2025 6:29 AM, Maciej Fijalkowski wrote:
> 2k per device or pf? if per device then what if you have 4 port device on
> system with 384 cores and you load xdp progs on each pf. and then try your
> feature which needs hw tx queues.
> 

Yes, the 2k Tx queues are per device and shared equally by each PF, so a
4-port device will have 512 Tx queues per PF. ETF is enabled on the
queue/classid specified by the user via the ETF Qdisc, so the user
decides which Tx queues have ETF enabled.

> what i was trying to say is that you don't ever call __ice_vsi_get_qs().
> this has an impact on XDP or any other feature that needs hw txqs.
> 

As you mentioned, I don't think it makes sense to enable ETF Qdisc on an
XDP queue. Would you suggest that the driver not support (i.e. block the
users request, XDP and ETF mutual exclusivity)?

>>>
>>
>> Hi Maciej,
>>
>> Thanks for the feedback. The reason for using a separate array for
>> tstamp rings is a hardware limitation: the tstamp ring must always have
>> more descriptors than the corresponding Tx ring, so there isn’t a strict
>> 1:1 mapping. This is due to the hardware’s fetch profile and MDD
>> prevention requirements (mentioned in the commit message).
>>
>> Because of this, it’s not possible to simply add a `tstamp` pointer to
>> each `ice_tx_ring`—the relationship isn’t direct, and the tstamp ring
>> may be shared or sized differently.
> 
> ok - up to you generally.
> 

I'll do some work and testing on your initial suggestion.

>>
>> Regarding the interface, I agree that passing an additional array can be
>> confusing. If you have a suggestion for a cleaner way to handle this
>> (e.g., a new structure or abstraction), I’m open to it.
> 
> keep existing interfaces that work on entire array and have a separate
> call for tstamp ring array as mentioned in initial comment.
> 

Thanks,
Paul


