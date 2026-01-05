Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA403CF47E8
	for <lists+intel-wired-lan@lfdr.de>; Mon, 05 Jan 2026 16:48:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C657402EE;
	Mon,  5 Jan 2026 15:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K4Zzo1kkU58t; Mon,  5 Jan 2026 15:48:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BDF124040C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767628088;
	bh=DcTR9+7JWye2GTPjqcEl1zX0QN+tT/AID8igiDgQDGE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=zr6m60o7GsVMSDH8Zk/NmaFQCp7JRuA7JzSr+1FjCtkB8bWB9MjSgImS8dmHrePxi
	 cA38GPzBRhPk5+MPG+pwErDoJtok41eJDK6azy0qMzcYC8+QtjDYnbJ0kjCHHhBiEP
	 MfrUh9hS5bXcG17fy43otuPtWKd+rSulfx6V7YxLKhZlP+gzFekMsPurUumWhyv4RR
	 2dQIUIg1/OQKBjnz6V4FI2lbzgJ6qnfeJdDLLicBfcNK96NhlXwqF9V+W+1SGo4Gbh
	 AcTx4/SKPsITQQxlSxNwqs1jpaUnNwepLaZFv5nopw/Y8nqNpQkztjI+dS9yiO/aLL
	 dUFaw8AXm9Hpw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDF124040C;
	Mon,  5 Jan 2026 15:48:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B190249
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3833260884
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:48:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oHjxYLmJxLgR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jan 2026 15:48:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org CE8C360842
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE8C360842
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CE8C360842
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jan 2026 15:48:05 +0000 (UTC)
X-CSE-ConnectionGUID: JpN85SXmSqmVemS3Ds3XMg==
X-CSE-MsgGUID: MzyCt7p5Q1SW1LAN8ATdVw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68005466"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="68005466"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 07:48:05 -0800
X-CSE-ConnectionGUID: n6xfcK8cREaR9EB0RIMAzg==
X-CSE-MsgGUID: IP6huTWwRay4WOkKZRsJvg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 07:48:05 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 07:48:04 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 07:48:04 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 07:48:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=If49qaKPanh6v3aed8W1TG4rIt8aNoAYorZbp/OrXX7Cvt1WDYz3+WSP1li7YUv0PN3+H2OriFeXXp5qQJbG4Fb+MrYSDhm/pM4oNJbMIr60RYJyGXa3iVQgquIr/3ky6Sn/9jWkKnoWZpmDvY5c0kx4Qa5mNekZi3WlrTxAyYbN0YXLBnRYOBPHT+SfV2kGqar+BQv+0qdSMo+nfJcTNTKM+jVIEd6QKBUeW3FV14UEjXZaZOzPJIOL3J4gJ8J3StOmeSxl9SI2Do08pbqldMxGwRpw5TTPKnTbbqNLnIGiyK+5gVm2DCmQkaeZcD+fQPnw8Ryp0zqzIJp3HGhbfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DcTR9+7JWye2GTPjqcEl1zX0QN+tT/AID8igiDgQDGE=;
 b=b/Q9MUuq3tZFXDBuRkTu3WoR8i4ha99x3ELpqHDFayVcTI1SLwWWrfoSAQ9OOQOeF/FX3wcg7zdNlm5jlZCiHYPu6rD2fP5yHueKLowEr9UI31dUWRlTQCW0ak7Tdj9tQXZvgYK6ysdEhCr3BAExFuxrQGtaGMbjTK8QJ7151yYetKBlr9VY7+lpIM/dr0dnFP/S/Ri6x5VJtsIJK6pkbJ/SArDGdd9PXhwNZr1DRErzWNvOTCxZdRJPVrKIRd7JAzc2F6Fijxu2L+KihOXZkxB1CU5BGXfBD03KNxcC6dFZIJhT0vyS05sfolY7zLySKQwZ8ias39XZlRd9CaXM9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA3PR11MB9038.namprd11.prod.outlook.com (2603:10b6:208:57a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 15:47:57 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 15:47:56 +0000
Message-ID: <1c8c6856-fbf4-4060-b81c-9bf867009ea7@intel.com>
Date: Mon, 5 Jan 2026 16:45:09 +0100
User-Agent: Mozilla Thunderbird
To: Mina Almasry <almasrymina@google.com>
CC: <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, YiFei Zhu <zhuyifei@google.com>, "Alexei
 Starovoitov" <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, "David
 S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, "Jesper
 Dangaard Brouer" <hawk@kernel.org>, John Fastabend
 <john.fastabend@gmail.com>, Stanislav Fomichev <sdf@fomichev.me>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 Paolo Abeni <pabeni@redhat.com>, Richard Cochran <richardcochran@gmail.com>,
 <intel-wired-lan@lists.osuosl.org>, Aleksandr Loktionov
 <aleksandr.loktionov@intel.com>
References: <20251223194649.3050648-1-almasrymina@google.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251223194649.3050648-1-almasrymina@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TLZP290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::13) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA3PR11MB9038:EE_
X-MS-Office365-Filtering-Correlation-Id: 68a7d369-9a81-492f-50ec-08de4c71cba7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|7416014|366016|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T29NeUxNd051ZnpkTE5BbjNuV3FIUDBUSHc2SzZvdWpkOTN5OFF2ZWUwWGFF?=
 =?utf-8?B?YnFtQ2ZtaVdsQTh2c2VNcHh5S1JqOTg2YUJHNGwvMkFITTJIalFhQzhYMkI4?=
 =?utf-8?B?d1IrS1pWOGtaellZYW04WHI3bXUvdWh0MWFJOWRXZHByUzVFejNmTXp1SWFS?=
 =?utf-8?B?WXdFYnFxWE01NEhFUkJDT1VGdTFISHM5QTMwMzFyVDV2TEx5MkVmeGRVblBn?=
 =?utf-8?B?N3grWXN4MFg5OTZ2ZGtDWnhlaUJIREdSdnNxTW5ReHRDUEFvenN5ZUkxaEZO?=
 =?utf-8?B?N2VEYXhBWjB2MGlhbjkwazVkU2JuQTBSUWdOQ1UxVHJRVjJya3FuU0RFTEJk?=
 =?utf-8?B?cHJmSWxPbVdZSUZ4QktrQWpLZmpNWkpiaUVhN3RTaEtaMmVrQU1XdkdIOW9H?=
 =?utf-8?B?SjhTQUtGNUNNa2x6bE1QYjVzNkx5LzR5NDJ6OGVKdkNBNHJnSDM2MkJTcU5J?=
 =?utf-8?B?dXQyU2pRTGlXUktOdW0vZ2lEV2xjS2FaQkorL3Z5VTc0NU9vRmZiQVhkQjNW?=
 =?utf-8?B?djA2QmZsVjFCVHJzY0d5ZTd2ODB1VFNWUStBNUVIMi9YVXZTaVp4NnZlM2Fw?=
 =?utf-8?B?T3lNeURzQy9YeEt5bDZuZDZNMTBrZFV6eFluaHplNWpCdGtzTXo1MHBmb21V?=
 =?utf-8?B?WnEySGsvazQ0a3A3Y1FCNTZDL3NUaVVQdTI5bWMrVUFVd0ZFZ1FYQ2hsRXJq?=
 =?utf-8?B?SWFaMVFvVHNWdHJZQ1UxMTJFL3dVUVl6bUpsS00vVUZFSnNUY2pmWk4zQ0JC?=
 =?utf-8?B?dzFaQ1FQSk5YeS9rMGdsRnMxeHlzMVVFekpHTCtUb3lyOUQyV0UxY3I5ZG1D?=
 =?utf-8?B?UXcyYUNSL1Yvdkt5NTRoMlBCTHJ5bEQ4T0NXRGprQXNtWjluekhUcUtkWnhT?=
 =?utf-8?B?K0JLZVJKZUQzRms4a1FnMVI4a0ZBSTd3TDV1a1BpWHZvYXpnSlE0a3l1K0VE?=
 =?utf-8?B?cWVDTDFIN3AvY3A0TlczTENXWnE2bHdybjY0emVVSUlsVFA5Z0tUQ0hBWk4w?=
 =?utf-8?B?SEVKSUVkblp6d2xOTWg0WUh0WE5BWTVQRzVOakNhdkNiSjVaY0h3dHB4eWhF?=
 =?utf-8?B?R2ptU0R4R01BYlZxUlJKNUU5ZDgxalVvb2NqUE9CS293eUtYem9KZU5DNzR3?=
 =?utf-8?B?OHJHWEMya2hpeklGWnNKNi9NaHQzak5WaG9PWFZkZ0Zoa3lHMnZ0c1RqRHYr?=
 =?utf-8?B?VkNKQ2xmUTZscGlrc1JYejBEc0trTytRMmh3Z0ZKbWRFUDBXbmVxdkRHWWFC?=
 =?utf-8?B?S016K1gzYzRkR0c2T2NaNFNKWllqS3FBclhIS3hBR2ViV2FJcmJqMythSE9G?=
 =?utf-8?B?RmtPTnUycG5wK3ZJTzJ1YWxINHRPOU5zcjZiRUJhcGxyQUJNSDZtbk9sTDBM?=
 =?utf-8?B?Zmh6c1pVaDRRTWgwUjVnS2xkSDk0MUNqOFZjZVpLZDhCaGVkalBFSEhXNCtq?=
 =?utf-8?B?bHpMbU9iM0NtZ09KRThpSTZQU1ZsamhlVzY4RHFxZGFGTU8wN2FnTDIzZUhE?=
 =?utf-8?B?QVA2MEdGTHRQQlJBVG5MdFBzMk9tK2F0aXVuSDdrcHppckRwWVZ4bzRCZjQv?=
 =?utf-8?B?TDgwTEhBSDJQRXZjcDNmS21za2NIYm9TdWJYTFc2RXQwR3JVYUZJYXZNSEU2?=
 =?utf-8?B?L0xZN1d4aFRIdUtKQWhhelJlN21WcTRtL3VhdUEwRlBZZU1pejZCaEJxdnlz?=
 =?utf-8?B?YzBreERmS3NBWDN4UktlRzJwc0ZKemt0S0F3ZUlIZEV2WHd2VzFuR0ljUVhD?=
 =?utf-8?B?VFVLUWlnVHNZb0hrdzJvK2FrdmxETkRuRDcxMkNtaVdWV3JVd01qMzc2V1Zv?=
 =?utf-8?B?MmhWNExLdnhBQ1pSbDFmQm96bHBmalNXbkZtaEFoTWlUcUdxcm5LUzQrcDBR?=
 =?utf-8?B?SHpxaWFhNTNJd2hjdHRIUldMOEs1SHRZT2VKa0tnSXlOajJ4RHV6cFRLUmdX?=
 =?utf-8?Q?dmkfmZq2B5wvQEyfy36HKSk78uYot4SY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(7416014)(366016)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW5kb3VmbWZ5c3N1SCtwcng5R3lNdWZGemdMUzlmcHJMY0dhNGUxUXN6ekdq?=
 =?utf-8?B?emsybzZqcjZ5SEFPekxLcjlmMGh6Mks5ZkUvcUpwR1Q3WmtIeGlsR3U5cjdO?=
 =?utf-8?B?ZE5ram9oZzRPY0dveTZKQ2U0M1hDWHlqTEJyWkdpUjhuRGZWNm16N3Rrempi?=
 =?utf-8?B?cmFJSUZWVURkS0NPaFhLWjI5eTF5K1F5VGNqQVlNWWVMc0UrckVMRHM5MVVu?=
 =?utf-8?B?U3ZKaWdXUkFOVEdqN0k0bkRmbDZQR0EzSmhxdWxDcExacVFEaHBiRS9TeVFl?=
 =?utf-8?B?OGdvcFMydnlocG5tZm1QVmNOMmZkVHJkQ3VFNFp2UWJzVUk5a1ZXUVZOVXlM?=
 =?utf-8?B?VldHdmNRUjBhekkxWitVYTY4Zjk5YnhpWHF2citFbjZCYmMydWVFRnFWc3RG?=
 =?utf-8?B?MkxzWXdoWHJnUnFsWEdScFY5enRwQ3czVTNmWFUrWUl2UGo1RnkwNEdTT0VO?=
 =?utf-8?B?d2RBYXJyNkhQQkhFR3ZUemJlbWpCSlpYbjdPQVJVZTFIc1NLbU9DZFBoa3lT?=
 =?utf-8?B?NTA4emM0dkFzYXJDQUtFWjdoemxrSFNkbHljT2pURWVmT0w4ejdEaXZCR0tj?=
 =?utf-8?B?dHNxOWt1Q2ppOU13NDM0TTJBL1JUeXMzTDZjVWt3MGo4VThuR2ZzRXVZaTR6?=
 =?utf-8?B?S3pOdkIzbHVGV1EyYkRmVlNrbVl2dDBlS1JiaFpsMVN1bE5BemxPb3hkdG91?=
 =?utf-8?B?VWRWWHM3SEdIaTAvSjBJVUl6Z2graUY1eDFlRTFTT2s3blR0Vm83TkR4RWJq?=
 =?utf-8?B?Uk5qTFJKV3BzUVlKemZkWncwOHBKcmpIV3RzOEtmcHZ2TEJBRUllMFF0dUVI?=
 =?utf-8?B?M0NjWUtQaWtKeWcwVURNZlU3U2txM2ova3lvZCtkeEdCS1hpcE92Y1g3OFlD?=
 =?utf-8?B?Rk9JNDBGK2RicTRaM0VtVkd3ajBBWjVPSWEvcmZESkRrYlY5blpDKzJOdXJi?=
 =?utf-8?B?N281d21QQXR1anV3ZE9oMStCM3g0dVJwYzhsanMrd2tWWmJpMXJXY09VMVhB?=
 =?utf-8?B?QlFSeHJqU0lhalhmMU96VlpUTVdmSkJ1TXVoa3YvSktqK2twTCs3eG90bUpx?=
 =?utf-8?B?cjBmcG85czlYcmE5RUpEYjB5U3BUNHpvUzd4WFo0dnNNNEx4RmlGQlBtdE1I?=
 =?utf-8?B?YTFTMWNtZ2ZqOXpMOVVSUDJKM2hsZXlBSXZNWXRVdzIvalhvVWVPdWtQOVZI?=
 =?utf-8?B?ajVuTmJ0c0lnRnJYcE1lN3paQ25FcGJKdHNLRW5ZN3ZrTkVSRDM0U3dUUDhs?=
 =?utf-8?B?djM4TXhNT0cxWm9aWnpvOGE3YXpDM3pZM0tyQWE4WEJSS2tEUDQyM3l0dWx3?=
 =?utf-8?B?WmsvSllFSkw0TnVabVl4clk2d1pYclZUYjRnZEx2UEdQaDZzU3Zwb3gvY3R1?=
 =?utf-8?B?Qlo4azZ3SHhNSkpqVlEzeGNpRkx6azlhY3dZZWlDa1RacTNwbjB3ZDdiZmVV?=
 =?utf-8?B?RlgwdG55dWc5ZGNMNFlPUnJ3c0k4MklyNk0rcGsxQU1oak9LUVdHL0lLYjEz?=
 =?utf-8?B?MWJWV2VOa1R0ZXU5Tzc0SGV2d1Zwc1NxRVVSTEtuYitjWUtieUpLYkVFZktY?=
 =?utf-8?B?dDlHeWNSOWo1UGFMNndGMzkzZjJ5ZzcvQ3Q2bTlUdXpNclZjTWl6WElVZkhC?=
 =?utf-8?B?dlZzVGdxYnhEdVRDRE1iSVR1NHpQNzN4a3NYN1B6WGlvai8xNDlZVXRUcG83?=
 =?utf-8?B?di81a2FLNGdaK0xHSy9iVmJCeXovVEo1cEt5cVBjcnRVS25sVHBURDFMUjNH?=
 =?utf-8?B?Z3YwSGo0SWk1NE83V1haNi84TzBaQ1lvdzJBbGM0MkRqU3dSdm5nQzJPVG9a?=
 =?utf-8?B?V1pEamVrbDFxb0UyeTMrdGQzYlp3Zmo1UUdUa3pKN0VmRVZnUUNoWDJhYkNv?=
 =?utf-8?B?cCtYdEVXcytsMFYzVTIxZU4raEtlbkNKenBmWkhzdGxQWnNCU0JibFpOMkN0?=
 =?utf-8?B?MTRUekJVRnpPSjZFK0I1KzFHdHRpNU4xRUNsUGZLTE5scDRKWHJuM3JVY0oz?=
 =?utf-8?B?OGFhY3JBSkNFdWJ6OUcwZWVOUGVjUFRyckdZMVArK3RvZEIwNlFQU3dNTFY4?=
 =?utf-8?B?OFpBVnNoUmtqa0xWekozTHlWdERZcU9NaDQ1YW9KalB0V3NDZ0Joamh5Z29a?=
 =?utf-8?B?ZktKNS9VSDZjNUZ3KzRvaEhud05NQlpOdUdPOTZ4dUFnWXRuMWdrdmk3UnZm?=
 =?utf-8?B?aUtOWmFqZ0ZEU3Jwd1h0eExhK2JIUmZQajNXK0FNeWFIZWFjVHRNYlJsbWJY?=
 =?utf-8?B?dlJHNjgwRXZ6TkFaOStGUDZyaTgzb3FPUTkvem9kem1VWDllNUFicFRxZHBJ?=
 =?utf-8?B?WWlxTmRieEt1dHpuYTNGWGdZSjNSd2tPWGRtUnlHZi9COTBmQ0tZWE84VE5a?=
 =?utf-8?Q?6Z02Uyf6c9LUXODo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 68a7d369-9a81-492f-50ec-08de4c71cba7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 15:47:56.8265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hZma7k7S7vfW25Ax23N6ETGjwh2GZWdLt9ZPW5VvUErqz4mpoamu/huqVhRJsXgpg+njS+u3QEX+I7iUzNuMu32MDVXOBQrs472PVi68zo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9038
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767628086; x=1799164086;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0oD2/pxa5pDGQH+Yvj6uTNCkkYD+GCo8bsdig/g51Kw=;
 b=mwF4YU+cCOFu4zXxo6wtXZO+jbe6k/Pjw+uPnCmEzjTtqY66WWgUEnEU
 niPdqZzA4xEW38DRcMObeDTqAK0Lu8oCAl7pV3UZQjWPMdMeVFiJdoixO
 QuVGUVhIxcSRpQdQyrNQ5EeLS/H54Mai/1k+H7DGM/dSquvyQQcAY1uwX
 JEzZu7DENgcCt1pE3IyhzHNdRj3mitzQMlQ4QrXGojekSVCRdgLebDmWg
 JA1u6LnypOVxwxMe0NzNdl2S6aUiIcsWmtZiV5/sUvPagLewi3m0ec8Bv
 RmKfF7huszCWmdRlLYGcpmKVwd4OexLr+jJ9WmcO7si2wID7VgZZJowi8
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mwF4YU+c
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4] idpf: export RX hardware
 timestamping information to XDP
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

From: Mina Almasry <almasrymina@google.com>
Date: Tue, 23 Dec 2025 19:46:46 +0000

> From: YiFei Zhu <zhuyifei@google.com>
> 
> The logic is similar to idpf_rx_hwtstamp, but the data is exported
> as a BPF kfunc instead of appended to an skb to support grabbing
> timestamps in xsk packets.
> 
> A idpf_queue_has(PTP, rxq) condition is added to check the queue
> supports PTP similar to idpf_rx_process_skb_fields.
> 
> Tested using an xsk connection and checking xdp timestamps are
> retreivable in received packets.
> 
> Cc: intel-wired-lan@lists.osuosl.org
> Signed-off-by: YiFei Zhu <zhuyifei@google.com>
> Signed-off-by: Mina Almasry <almasrymina@google.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Thanks,
Olek
