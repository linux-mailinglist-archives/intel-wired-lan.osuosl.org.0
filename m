Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ACC901F18
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 12:18:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E820340289;
	Mon, 10 Jun 2024 10:18:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3GP3ofSv9yDm; Mon, 10 Jun 2024 10:18:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B497B40613
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718014729;
	bh=39OykcJnJsiXkoiiM2Sve0C8EtGFIrrCWKNJaNNMLpQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jLpx3sPvfTdrTTB5kKL2kviPcsrpNxbxszwU6omlJaudSp5x96BkNl7wVg8gWGjQX
	 axB1Nx4S6yAND5p9eUMK9oqzgrx+85LnSMq8a4V1BI1lAivyOzohodKqNKJ91MBv1u
	 u+paJPQ1PFr4f/CPGO2G8lZX8pLFnk9YWh+quUd7qngIjyYEgOvy2igOzrjR43uVlH
	 SdGIyiT+WcvdoA/nRNdTw/J3GL0hdYXCoIcbL/lDfKfiKMKXCSRly09AFbdInImNm6
	 85lKyk+P/wPKZQg0YJAnq28wYnUTNv3W/vh5JAZo9bvLu958zRNSIyTF4nFFH1xQ01
	 TAOM/KfPsUGJA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B497B40613;
	Mon, 10 Jun 2024 10:18:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6B9D1BF3C8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B3AD460667
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:18:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B7rJV5rqqk3n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 10:18:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=mateusz.polchlopek@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C241D60618
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C241D60618
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C241D60618
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 10:18:45 +0000 (UTC)
X-CSE-ConnectionGUID: Nyb5bDZRSeq7T0IAGHj+JA==
X-CSE-MsgGUID: 9a5IkxFVRXalAif6U+E5hw==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14462088"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14462088"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 03:18:45 -0700
X-CSE-ConnectionGUID: i3wymDzbQzm6ootq1Pq4ng==
X-CSE-MsgGUID: APsW0iLuRd6wU7XNQ5YUbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="38945732"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jun 2024 03:18:45 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 10 Jun 2024 03:18:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 10 Jun 2024 03:18:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 10 Jun 2024 03:18:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FVqZRP+uqishyu+ti1gqCE3ERjajbTD2kVkr9TEh+boCF52JSgyDLGxn3XCiONO+5oAe1TlQCmv9vLAqK3ujukkEuchm/LUNSvLOvW1DzgwVfxuA9IGLWAObnQlawQPVsbxPB9g1EXHgAo0yz06XXIv+S11YNif7ELvN2lSAtcuhN+b9MVeSVNtiFXz34gOgvBFF5M4PJbjBLzU2ijk1M0xjjRjc03RKxwnYpB5nHhAKBpkHmthiHZeubRNra0fBbSUS705PxMnNtkKQoYx3ZqYJBPK22qkc+kBLvjfw3GGgxGZxFIdd88lBmCcxOMfNGPLZ8FkRvnhA8JmQoCE54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=39OykcJnJsiXkoiiM2Sve0C8EtGFIrrCWKNJaNNMLpQ=;
 b=dsq/RzCSdsd0e0K9peIUwWpjkto5qvbE4xIVkOLQK2qyBGzoaq6ZtvUK8rOyURGrhj0ABkey7heascwoQmg8rR0pgFENhPFeljA41+esCITZTnCgvXVO6eUWARnY0WchtH+8zJ6k+9qKhfNL4CQbWT/s9T2tMdb9QwnS1axgC2z5kK6P9dHLkIeiHJKMXh8NU8wFKv41g5LLOCX9K+RmMM4JJ4Rw/mzpuOO9p6KxjDwerrmf1NouATuzEpf5fNANfbfXTqc47kqAA9fwXJckU4U2lvuc/88zHrzp6VmvFlUX7I/8dxCl/URuaMhHbEzpZTMQbUY7KO+MF/HyUHhreg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 by PH7PR11MB6954.namprd11.prod.outlook.com (2603:10b6:510:205::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Mon, 10 Jun
 2024 10:18:31 +0000
Received: from BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc]) by BL1PR11MB5399.namprd11.prod.outlook.com
 ([fe80::b8f1:4502:e77d:e2dc%5]) with mapi id 15.20.7633.036; Mon, 10 Jun 2024
 10:18:31 +0000
Message-ID: <222f6e70-b54d-4fe4-8376-1940989b5d03@intel.com>
Date: Mon, 10 Jun 2024 12:18:26 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>
References: <20240604131400.13655-1-mateusz.polchlopek@intel.com>
 <20240604131400.13655-2-mateusz.polchlopek@intel.com>
 <20240608125530.GS27689@kernel.org>
Content-Language: pl
From: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Organization: Intel
In-Reply-To: <20240608125530.GS27689@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0166.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::13) To BL1PR11MB5399.namprd11.prod.outlook.com
 (2603:10b6:208:318::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL1PR11MB5399:EE_|PH7PR11MB6954:EE_
X-MS-Office365-Filtering-Correlation-Id: 7bac53f7-2001-47f0-b1ea-08dc8936ad9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjhNdUNack1LMWd5ZSsrUUI2NTYrR2UrZzJLbkdMKzIzUVAyejNiOHdnbnY3?=
 =?utf-8?B?Z1FxVTFTNkNwb3IrbzYwazh5RnRQSC9oTk5JdWxOQnczZDM1K0ZqQ0NmSG1a?=
 =?utf-8?B?WUlHSkZOdm43VVB5Um1YWlNUOHFJQWJML0pkc2lSSWpYaUV0MDJmQTAzNFhZ?=
 =?utf-8?B?MlNxRWlETTBZdUJvSkxIWWVyYVRLeDV4V0tJclVwb2pxVHF2bDBuQk5EYzRG?=
 =?utf-8?B?RkIyVG5maGNNcHFMakFkSXgvN2lxU0czM0FaRXdzNlBVZng5enF4ZkJXNWZu?=
 =?utf-8?B?SjhzRDBiSmwyWW5xTU42bFFzUXlEMVNoOHlLZ3BiNE9JWStjOHR1b0xDTFNB?=
 =?utf-8?B?dGNLKzlDNlFhUTFVRCsvcVV6YTlzUHJNYUpVV1VpZm1jUEV5cGxqYVBtOTNM?=
 =?utf-8?B?UTNSVGJ4OGxnekc0NnY3VSszM3J4WHVtSVpDVmdub0krdHoxd0trd1VYdHlk?=
 =?utf-8?B?MWh2UEZUZWhXZkdEcUtYWGVjbTNjeUdpRy9nT3hkVDdQL0ZodG5LSG5MdElq?=
 =?utf-8?B?ZFFnRFNjNFJwZ0htWjc1Tkp1Ymc1SzZ4WlJSR2RBNkdNek9CUzkxZEhtSTdZ?=
 =?utf-8?B?Q2xQejVselpaVndaK2JqTHNRSklTSHMwbnVuUnlCY25Kd08rU3V1c3BucUhK?=
 =?utf-8?B?azFGczNzbkVLSHZLRVlGRzhyUHh2SkJhcytBZm9JUXNnYkJOSzRmOFg2NVBx?=
 =?utf-8?B?RVFxZHM5Q0tkZU5aL25EMFR6RTUvMldCNXpFSjUxZ2ptU1VHV3hWcUV2UDh3?=
 =?utf-8?B?citZZll1SUF5Z2VXYWJQNk1ON0owNmk5c0dTREE5UE90TXNyQVg0dzNVVUpw?=
 =?utf-8?B?QU5TUStMTzhuR3d4QW5EVXRxci91NXdPMjZrWjRzTXFQVDUzeHhaRXN0UGIw?=
 =?utf-8?B?QnFuT3R3a2RCMVNWMXVjWk9jOUZxNWlsZ3I4d1cwb0wxRW45MW5MQmorUjVq?=
 =?utf-8?B?ODl4UjBRdG9XMlVkVURvb1JXM1EvVW85cDkzLzd2K2xMaE1vWEh5bUl3TDZ6?=
 =?utf-8?B?Y0NISjJTUHRDazE1QzB3ZGpaT2ZBYkkwZnlzWEw5WEpURWNUWktsMXNjdGh5?=
 =?utf-8?B?MUk2MzlJNlV1ZUc3L1RjTTg3dHIzVU41U0ZJeGlIMHRJS2RRdmJoK0NLZUtI?=
 =?utf-8?B?THdVL2ViM3BUOEhsZW1OekNHUmZLcWpWdTh4Sk9DdWcxZWZLdjJqYWl5di9G?=
 =?utf-8?B?bnpONlZ4WHdHV0FHejVudE9qaFl2MW00NWYyWU9GZHE0bHJXbUkwalJXZnU3?=
 =?utf-8?B?MGJxekcyQUZqYWNGd29UT1VDVXNVOVNhS1QrNXdzRTNOT0FRRVdIMHB4N0pp?=
 =?utf-8?B?Rk5vYWdGSHB3MzlWSTBWUnhaS1BOeGhCeVJYNVJjdUx1d3AwZktSS2VUZ3dE?=
 =?utf-8?B?N2h6SkgzR2hPN3REY2M5OGFleHIrK29sVWc0a1BHbWt2bm1YbVNqSjJIZ3BG?=
 =?utf-8?B?UmdqTjBuWkFxd1F5cGhyb2Z1ajFzL0dpeDNyVzc0RFN0dHR3WGJJOU96VXJB?=
 =?utf-8?B?ZzlHUW5HL3ZDYkRYZG52emJpU3NOV3FIREJxbjZkNlJkOXZuaVVqSHFlejFF?=
 =?utf-8?B?RnhLV0ZsQ0ZNWk9ScWhTL09ZYzdsdlkxWmlPaHZtVmYwNW96djVyZFhsODFk?=
 =?utf-8?B?VGJ2L1FDY0Z1RGdxcDIxWDJwSnJmNEg0QzRYbzNUcFcwbnlIMmh5NmRCc0tU?=
 =?utf-8?B?MWlNallUeDJheW96c25md1Rhdk1OVDhML3k5SEJ1dzNZOUFCeXJmQnZTWTRz?=
 =?utf-8?Q?0O9rdC5A0FWdXgSk4k+kQtSMLfzvQJpcUJwR/NH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5399.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm1NWUl5aFA5K0Q4amU5amhSSVNqS3hCODZDY2pTNkdWTmJ2dkpYb1FKQ1hV?=
 =?utf-8?B?NW1xK2FuYUYvQ2NhalZWMUpXdFVaWmR5Y0hqczRuNk1hbXdWa3ZQK1hCTXBP?=
 =?utf-8?B?dXdmb200R2dkajVJeFhuNzlKeUFhbjNmcWtzUE15ekxHTjVOUFlxTFNhNXhz?=
 =?utf-8?B?aUJuWHZWK0ptdVNaRkpFUEppbFZxU3pLcWdoTlVVN20vaUVoYW11UUNIOS9w?=
 =?utf-8?B?UUpHYjdSbnBxYjhyT0Q2RGNjZUVoZ29GMU5KY1JtQmVycVZXRlRXamQ4elhO?=
 =?utf-8?B?cHFtN3hwUjNtU3huU3R2czBJbVd0bmtuUlBVOExNeGs5VWRDSE1SOHlJdzZz?=
 =?utf-8?B?UHhKazFxTkUxNjVxWE5ZQzBoanN5VlQwck1YYTd4YUx6VndNbjhVNkx0c1hq?=
 =?utf-8?B?b2pzTGpXMTgySmpDek4wVXJxcmR4dnJzSnk0c213cTRvT05jSERlci9rRHNh?=
 =?utf-8?B?YXhSN21HZUtLREYyeVVRbG95bzdFQy9QMnNMRHBrREs2WjZkYzRaalUvREI0?=
 =?utf-8?B?aUJXM0RmaG03K3lMRXE4VkFhUFF4TDhXems4SzFRdUpMMG5hZVV3R1JpaWJj?=
 =?utf-8?B?bVREaGJHNlYySTEzKzFvQlgwUXd3bHNkeWVPbVBuR1BaKzlEaWVYM3U0YjRC?=
 =?utf-8?B?c1Y4M0tDY05wQTZ6aWsza3hHWEduaUVhUU5SYWNqYWErQy9XTWRSQlE4MEJa?=
 =?utf-8?B?MnRzbWw5VWlHYkh1c0dMV2FqNDBRTDQzdi8zOHJHS0VXT2s0OFZqRSs4QVcz?=
 =?utf-8?B?ZGFhZWl1eGxNT1pkQkFuKzVLSmV4UHB3dXVDSXZMNURWV3BsdXN5ZlVxaEh5?=
 =?utf-8?B?WFYvSUdGWHdmWHBLOWlNdGE2WFhxbjJxWm43eUljZVJUN0RSVzZuUzk0Yi93?=
 =?utf-8?B?b0Vqb1BsMTBTVHJObW0yQk9vNkxCT2ZLVUJQaG5yaVU1N3Brc2xyNDBOd0V5?=
 =?utf-8?B?ejNKRENZaTQ2Wnl6T3FJS0ROYnFPSEZhQklGL2hMQnY1bHIwTUZ2Yk9qN1lR?=
 =?utf-8?B?Tm42VWIvSUJoL3F4MmFyL0gzWVpFYnlxRE82cDdCK0JmVXlMNklJTDR5Tkh2?=
 =?utf-8?B?OEwycW8wMEIvRHN0VzNYYVY4UVRtMnZNU1FDS2UzY1hsLzJhb09RTE1MV2th?=
 =?utf-8?B?bUVrTVhMbUczY25HVUp4MzN3UFlGc2JuSE42bThqbFJicVphT3BFaTZoeSt1?=
 =?utf-8?B?aVE2RXo4QUQ4K1ZaeVk4RWJDenNSV1hzUE9DQStIRTFOVUY1ZXNBZHFaMGZk?=
 =?utf-8?B?YmgwS2V2bk5oQkRGYWUrQjNxWEw0MVdrTklsUis3NDJhM3gzZWpSbXNsbTRv?=
 =?utf-8?B?YkJYOFZ5akZvb1hCQTFEL0xJTUZXeC9yRHZQZEJidHNyUkIxZHgzUk8rMzEx?=
 =?utf-8?B?TWhPYkowd0hYZ3cwMHVlV2JRd3IrWlR4OGw2T0E3eFlyZ3lHUlBCNG5kTWt3?=
 =?utf-8?B?V2tqNlZDNHR1eWRhY2Nta3hkY2dYRUU5V1E1R2lhR2d6aDJHRURNZHVPRjlw?=
 =?utf-8?B?UVc2Y1kvMDJ6QjBuQit0VDNvNUx5WG9JcnYxY3JVQ1cyRXJybEU3UnF6U2Iz?=
 =?utf-8?B?KzdVV1B4T0gvLzBPbytxRVN6dkhGLzM2Z3pFSXFkcDc3YlZqaEdNM1dVTk5Y?=
 =?utf-8?B?Q2xlbVgxd0Y0c3ZYbkRUUllHbStsVS9XZjgweUIzWjIzbGNMWGMzdXFNRnQz?=
 =?utf-8?B?Sk5NTkR2d1g3MHJlZlRnU0Z0NWx0NXVzL0YxbGxTelE3NlBKaFI1MnkxZmRL?=
 =?utf-8?B?aEJWd0szVjJVSjFHSHhFbmNoRUxwakUwMjd3bmRja0Z0eVJrNW9RUlI4YTNw?=
 =?utf-8?B?R25nd0RNZ0I3OFJwRjA4TzZ5Ni8vSUFwUm5JRVBqY0JRQ055WUthVVJtVVhD?=
 =?utf-8?B?R3NJcFdpajBBSUUwMDRzL3o1OGpid1VxTklOcTVCNlVWbmJ4bHB3OWVJS1Vp?=
 =?utf-8?B?Y1gzMW9VSHZoRjlvOElXeFFwb0RPSzVCK2gvRS9sSkhxQlN6dWYvenhrLzRs?=
 =?utf-8?B?NFZFaXJBZ09uaVppUGcxSks4clgzem9Yd1BWN0dzbjZGeGNYZ1RjNzNMZm9Q?=
 =?utf-8?B?cndhQkswTFpXekllOHVIVTdSUUR6WGhOZ0lvOGtmWUNyNmZURmhQeTFjNmRs?=
 =?utf-8?B?a0pFVG9lRmd4VlRsOThmOXQ2VGdxQU1CcEZTQTUyelp0OUJZaGxBZ0N2QnNJ?=
 =?utf-8?B?c2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7bac53f7-2001-47f0-b1ea-08dc8936ad9c
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5399.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2024 10:18:31.5871 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MDMuxUxZTSBgPm3T7k0EYkWpizOGxs7l/JYT4V9KXkPV+8tE5HEp5KM3PM3hRjodjfJSh/xEKMYEwOC2bsyKwbmPVvb2LskYb8A0Sv2CY1g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718014725; x=1749550725;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kCGBtwwOuqkkCf1zsCtxtq4NiNHcai+bZQfzPBTxCqM=;
 b=lYZbJs2i4l5IxuJbwoaTzgkY2dUPofgJqBm5ZbcJ0/gRS1mxAk04BeJG
 Hjs8CCn16VOeXS8etdVXejEPXVBwM+bcCWaF/gQNwhmAx24m3L/GHN4Pb
 0EvZw+UyuqdLWvnGK3rPYoJSaktsiZeQ5uha+/4n16yPs4Htt20vrRsFQ
 eDPg+3fFe3KPgkp6N1gcSwVLLoV3vjQrnRpmS3Ehb6u0PPEy1NVPiKsIr
 NdjZJvCVI7qjQGXHc9maCyNWNJEzwXja61syC1MDJFghWEXv9xbevwCxh
 h7yOrs8bPEh/Ecu5vEp2fPo6jL+1wk7ZIHs+avHQ3I0qnJf9KDBh2Of17
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lYZbJs2i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v7 01/12] virtchnl: add
 support for enabling PTP on iAVF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Wojciech Drewek <wojciech.drewek@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/8/2024 2:55 PM, Simon Horman wrote:
> On Tue, Jun 04, 2024 at 09:13:49AM -0400, Mateusz Polchlopek wrote:
>> From: Jacob Keller <jacob.e.keller@intel.com>
>>
>> Add support for allowing a VF to enable PTP feature - Rx timestamps
>>
>> The new capability is gated by VIRTCHNL_VF_CAP_PTP, which must be
>> set by the VF to request access to the new operations. In addition, the
>> VIRTCHNL_OP_1588_PTP_CAPS command is used to determine the specific
>> capabilities available to the VF.
>>
>> This support includes the following additional capabilities:
>>
>> * Rx timestamps enabled in the Rx queues (when using flexible advanced
>>    descriptors)
>> * Read access to PHC time over virtchnl using
>>    VIRTCHNL_OP_1588_PTP_GET_TIME
>>
>> Extra space is reserved in most structures to allow for future
>> extension (like set clock, Tx timestamps).  Additional opcode numbers
>> are reserved and space in the virtchnl_ptp_caps structure is
>> specifically set aside for this.
>> Additionally, each structure has some space reserved for future
>> extensions to allow some flexibility.
>>
>> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
>> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>> Reviewed-by: Rahul Rameshbabu <rrameshbabu@nvidia.com>
>> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> 
> Hi Mateusz, Jacob, all,
> 
> If you need to respin this for some reason, please consider updating
> the Kernel doc for the following to include a short description.
> Else, please consider doing so as a follow-up
> 
> * struct virtchnl_ptp_caps
> * struct virtchnl_phc_time
> 
> Likewise as a follow-up, as it was not introduced by this patch, for:
> 
> * virtchnl_vc_validate_vf_msg
> 
> Flagged by kernel-doc -none -Wall
> 
> The above not withstanding, this looks good to me.
> 
> Reviewed-by: Simon Horman <horms@kernel.org>
> 
> ...

Hello Simon!

Thanks for Your review - I appreciate it.

I thought about followup series after this being merged but I received
one warning from kernel-bot regarding ARM architecture issue. That being
said I will post (probably tomorrow) v8 with fix for ARM architecture
issue and I will also include fixes for virtchnl_ptp_caps and
virtchnl_phc_time (and exceeded 80 chars issues in commit 6).

As You pointed, the virtchnl_vc_validate_vf_msg function has not been
introduced in this patch so I do not want to mix that. I will create
post-merge followup with documentation changes for mentioned function
(virtchnl_vc_validate_vf_msg) and also for one docs leftover from my
previous series (related to tx scheduler).

Mateusz
