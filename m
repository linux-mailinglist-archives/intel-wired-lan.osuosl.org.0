Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Ej1DiQ+uGmpagEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 18:30:12 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A6E29E42C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Mar 2026 18:30:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 76F2B834C7;
	Mon, 16 Mar 2026 17:30:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5Bh_RMoeKMII; Mon, 16 Mar 2026 17:30:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B42A3834AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773682208;
	bh=MZV3KGS9WxDprO+qaJK+7vEzsF7IJIj4Gyx46wEE/I0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ysgcarYOl20edBLuItmN9xNmpk902QL1jpznSzKInvMafbPCNirP0aUm4ibHPkJIw
	 4GYrMnx73DZgsTVvXl+nq0tRTmOF3laItk0dBgTDFHzvmIJq8A0EyTbZya9W4Dv2qI
	 HfhUyd+UsAD2A3YpFogdxnqTwki6kmW+g3xgEx0z1lYoG6pGUw5Fu9FS79Ft1VwXOH
	 jxya8GCZtkJGzXjofIM8ftopM/D7USaHiZEz0MOwoCGVnEV/xWoB7pif6ywU1QKrbE
	 a0ZMtU3mKDPkDhpExpTravGEHgZQHOYTIctIQkS3Z04Zg67Sw6TgSqU9EMFH2cm/h/
	 SHn0HVC+GAgaQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B42A3834AE;
	Mon, 16 Mar 2026 17:30:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A2FC11B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 17:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E9E983478
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 17:30:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zfMDYKS4aUQW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Mar 2026 17:30:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A381D83440
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A381D83440
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A381D83440
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Mar 2026 17:30:05 +0000 (UTC)
X-CSE-ConnectionGUID: hU9Ue7rwTryVhakNioE6Hw==
X-CSE-MsgGUID: Nj7GG0pDQ2OARl5ggL24SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11731"; a="62273694"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="62273694"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 10:30:04 -0700
X-CSE-ConnectionGUID: rdULCcK6QKWnewSyj+LZcQ==
X-CSE-MsgGUID: bpzhY3OmQV2RADS0aJYQmA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="226443968"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 10:30:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 10:30:03 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 10:30:03 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.36) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 10:30:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IAgC5+RXFS6F8Kixdf4U8XqJQlVF3ZYlj3ZDTi5IeC4VxGj45eetKYpTtbjwRu2nlMIMObAzodjNwci8E/q6uXUnyWVAggiuSm3pC9rwxGLetlG4XTJ89Vd9PUglBus0aozbnrpnveEEZ82mVripcMaFQYEEpFbVd531iCFLOXRCrTj4yYLYEKVXLrYSbAva/WNlQJZc8PfyFDiFmzDRWvzsq9dIDkjZBTCWOVQ9WrWjQ6iB2Sy1v6kmBrjGnDsPK44yrmm48MJWF0qdbSOZF4ODNYMz87Z+2uo/w27q9gkoIaSyZgusajdFNxrG5gGJtR1cbeLZq0RARrMzXRIJdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MZV3KGS9WxDprO+qaJK+7vEzsF7IJIj4Gyx46wEE/I0=;
 b=cOslvmyXrGOK8WAH1OdfzxieHRLN/XyvNzb74/rkc6mljzpNLVaZtfKWEy3b8sKTJeTvOr1Ck6Q20RnlrMRFLud1+hiXdySm5NvTdYXmYfGer5j6SEnP9Z0ZoQ8jHbA8lhcY7f/o0G5ZIK936/fVEkrcd1cNJdP+t9zyYOXE4EcFLyYJRXuSKjRu0x9l/kfH1c8GcKEbubRSsFisx1Il4yeJBQkBNiwu/vNsnqJXqm/eeSJYSeUcClY/AZpTHyzWZs8rUIh9zeof6YxLTlZ2/h00eF38+V+9t9K/jSRH0Oha8KgkJ+uUxSfGR8Zs7ZSSYqyMezyQNOIM4pO6y5KcOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by SJ0PR11MB5813.namprd11.prod.outlook.com (2603:10b6:a03:422::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.17; Mon, 16 Mar
 2026 17:30:00 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%4]) with mapi id 15.20.9723.016; Mon, 16 Mar 2026
 17:29:59 +0000
Message-ID: <f770c976-8688-4192-910f-5996e1850deb@intel.com>
Date: Mon, 16 Mar 2026 10:29:56 -0700
User-Agent: Mozilla Thunderbird
To: Jakub Kicinski <kuba@kernel.org>, <intel-wired-lan@lists.osuosl.org>,
 <michal.swiatkowski@linux.intel.com>
CC: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 <jacob.e.keller@intel.com>
References: <20260315125451.3741843c@kernel.org>
 <20260315130150.12829f88@kernel.org> <20260315132245.1a7efb20@kernel.org>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260315132245.1a7efb20@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0232.namprd03.prod.outlook.com
 (2603:10b6:303:b9::27) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|SJ0PR11MB5813:EE_
X-MS-Office365-Filtering-Correlation-Id: 9415cb82-b53a-4f5a-1019-08de8381a5c5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: H8cNfRHnYFjF4WfyH7PGv51YGU+Im15XnrMmHEmJtmWF9PDoQ8p4MXfBVaYbGQ2YOhI8VyrvhHbL3rA2MD0D0HK0wgoaggP+ijeOy6OfcgxUZkd9dOLdqUmNyBagoP1aMqpU24+jZmudfko02TnZKHleK+pBUpHiG9jNHtFLGWYUWm3coi0zUpB+FaiU32w9aoftWCi0XOPm89vopIuyeTgnQvLMaPxAixDGJVVh2KzBMVKAe6lBDABbEVq2JdawvYkbwi6bmR8J30SFzY5bVvQmVeFUiBQKnbaK2kSBjNmuga149lJ/pOOL0luggJLNp4RY1p/fG2eLD/8R7xPPntf1x72DC/WyCenGbZx8HBG2PZLCvHRfZ32+VPXdEEu7zPI+QDfszuN1QVeMo3GptfnPsT9zgXEQnQ/VZYBgwV8GQcMPFH8T/4a+jp1p8OnXhoz4H9Xduu3AEjbyNRMi59Jqc2AFPba5Fxa2aGYvor/SgvxAVi+I2nZ1WxKo1Zq3eZAf5JX8W8Xtlfhw8KLkXfMW/j3oVeSgM7isKodKR41k2CAiKp+onr3hrrU5aqwUaI6D9POXlN/0Di2k15J8cmzvPy4Jr0NeuPG+HO9JNAb0M5FjfqpiwunKDLMm7p279dMq9Qz3wwIywknGXl3dZlCQ3FmItIeoXYCG3UoAG/N0LO4Nv+lsVPRWu+Mm1khlknO2vWOIf1nfvE8VFH2nL34Yh+ijqLFHfM0Lh7VXTh4er3YPXxixQ1/uAFDVmrQq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dEF3ZXUwUHZvSldJdWkwTytOL09uN3VnVjMxWVNNdy9aWHVwcGU0Q1N0NklU?=
 =?utf-8?B?TGhyYzJNa1V1eDNQMFZJMU51UVo1ZHBVa3ZHN3BNb0g4SDJ6K254MnVtb2FS?=
 =?utf-8?B?TTlSVzBnWFduazdVMjFYTE9URUUwc3J4RXdOaDRzc1BYTkdpbFpEV0xrbmll?=
 =?utf-8?B?d2NhSG5DMlE0RjdwbmRQczBaQnFSUFBMQ0JGYjRJVFI5TFhXcDN5T3U1cTdQ?=
 =?utf-8?B?enUxa01pcm84WGZHQWsvWWtqUU1qRk5xdldPc0ViV0xRbGovUzV6U0R6M0RT?=
 =?utf-8?B?N2lCbkphOCtDR1FCcHRtYVZlczB0TGEzWHVsOWpEWDMwU2lkLzNvSFB6SzBB?=
 =?utf-8?B?ZnVxbFUzL2lXa0NrZzYwNnorSk5MVzUwdnFXYlJsMkRWeWRlUkNTTHF3RXFJ?=
 =?utf-8?B?K3d5L1h2WHFFOFpZRkdENW5CMVI3SlErSndUeW9LL3V3aFlneURJbmZFUHNn?=
 =?utf-8?B?bFZzYjBCeVM1QzhUTWZTT09sVlRVUFduWm55ZXVLcUZpWmo1UmtvV1Y4RFBB?=
 =?utf-8?B?ZXJWblQwWnFGdzdYOHJmYXBwKzBsclBEUWVBREUrOFRhWVNxU0RQdTFlYktu?=
 =?utf-8?B?c0tJb1l3NGJIK2ttZ0FrT0oyRE5QYWgwMHcrOXlsQjZBK0dlVDZ3Rk1ZYkxl?=
 =?utf-8?B?bFlQVEk4eXBWSjdCcWJKTE12RzVsYzg5amxtbEhaN0UzaWxFOTNmdk0wMHRu?=
 =?utf-8?B?cUtOTDBtWXhkRGtHN2EyakRuSzVRREQvR1JKZmNLRzM5YjJUajRqMlFwYjdP?=
 =?utf-8?B?ME9NMFlzbjh1alc4VjBzVDBLSm1KdDNOVEtRUVJxclVvN3prN1FlS28xWGJO?=
 =?utf-8?B?MUVtNFdiMmIrMW5rZ1dwWXdCMmR5VEdkc3ZKZG42NlREZ0pLQ2NHZi9vMFZh?=
 =?utf-8?B?dkk1R0RiRUhHYzNHUUY0UURoNkJjT1JTSWU4a1Fhek9ySkMwQWw5TDJMelpG?=
 =?utf-8?B?dWo5cEhWcS83aXlzRWE3MXQvZnNPSGdyRm95L2l2L0xWSXlFNE1QZThGd3o4?=
 =?utf-8?B?bVpac2hzUUw1THpwc2FzZ1BhUzd0Y0dZbCtNVlRKRDJVNGpaemdNUCt0WmNC?=
 =?utf-8?B?Z0JESmhOSU1jb0V6TGY4KzRMQlN2YytFZDh1aTRXOHI2YitlNkVWdUt6UUh4?=
 =?utf-8?B?MHNvL2JoVktzSCtBYkVQQ3pFZnVsb01VTlRRR2FxM2VCNjdQSzNPdGxaYnc3?=
 =?utf-8?B?WkhLaFVxa2wwTWRuMnRiT3JKOUFmSGk1VXdLczNvZDlQd2pZMXd2RU9SdFBi?=
 =?utf-8?B?UU1LMlZ2MDhFMVlCSjh2R3FPWTlLc1dYNzhwNDFBQlBkNlJ0TVIxWTFtU1JT?=
 =?utf-8?B?ZmJsRG04QWtKR3U1SExQL3pLVFZPY1RmV1RQT0VkaWJyaDkzS3ZWRXdDOS9P?=
 =?utf-8?B?ZlRCS1pZaFJPY2I2SnZ5N25BSkwrUFNhcEZqNTc1VmlTMWt3eUJiaEw1VWNr?=
 =?utf-8?B?VTlaV3cxdFR1RTFHSzI1ZzhLcngrZklqWTFGUEtBeVVnMzlCd0xEUis4bm1E?=
 =?utf-8?B?dS94Q2FpdlJrb2ZmbWtBK1hhbGphenc1aHVqSHZiNGYzQVBpQWpiWlhYalJV?=
 =?utf-8?B?MWg2TkJMc2RGODJtV2Z1WWlDQWtXNVp4MGE0WUg1aHB2a203b3BRTXVKd1Vn?=
 =?utf-8?B?UjI2Vm1kc2ZPcjJkUzA3YkVZRUJ4OGk5MmJYcHNMVFJDZ1lRYzF3S0pxRXBQ?=
 =?utf-8?B?YUZTMUtPS0hzYzMzVmhmOHNUOHhSdkgzdVRuRHpKdXdWZFE3cmpBRGQ3RU4z?=
 =?utf-8?B?V3pEd3NrS1BUNElyeHUwZm85bjFwQnJnUit1ajRrL3E2ZmE3Z20zL1dZVUZt?=
 =?utf-8?B?dndaWUtSTnNqR0Z4VGMwZVFNekxlRVg5ZkxXeWdvbFFnRHBJUzRRK2hJZjhv?=
 =?utf-8?B?Rk10Y3dndm5tZzh3UlcyRExSbTd6ZWZwYnlyS2pnSzBXa0R4Tyt2UTNuK282?=
 =?utf-8?B?YVhySFJqdkNLRGZsUm5MeHJPS2E4U0JVV0c4bk5oNkd4anEwS0x0aGVsb1VC?=
 =?utf-8?B?cFN3S0FMc3ViQUlOc3V1OTg0ZUQ0UUh3UHRtc3FlcHh1WFlMUUFMM3J6bElq?=
 =?utf-8?B?Y2QzdUwwWENML2l5OTd4T2liZmxqMU5pY3psQXVJejVKQ0pjQmNwZW5xcTFY?=
 =?utf-8?B?S1IvT0ZrM0E5MC9lbjV6d1R6VG0zWUpKT1lPbVRQVjIyNEZnUDZMRzRVSTgw?=
 =?utf-8?B?a2U5b1RrSFlpTDNZN0hNNVhGSUlaMVlUeDJRNUxUcHVRdzJLOUxBOWhNcXFW?=
 =?utf-8?B?djZtS3R0R1JiKzBQSE1Pemw4RlZnb2dUTzB2RTk4b3ZhS0s1RDFhb1NsYjU0?=
 =?utf-8?B?NTNRVDBhcGNTcGRvamdCS3NPV29lT1JIZElXdDdJRXoyQnlkbTlkL2VGaWFE?=
 =?utf-8?Q?W4TC2gl+dN9NWMrA=3D?=
X-Exchange-RoutingPolicyChecked: X+BLAh+6uwpPwfVgZWK66XGHrOXa3PY69r5fXxXHdjNKndSrS8U46IpyORw10sI9Pgn192HI7u/8rGAeXKeQtRP2bckNgumeHZ9GEOfiKsPdJNJ7tvNuxl6JjyR79FipCcJzOu+OJdqc0OOfNfQhs8HcqlBAx25dhATIcxQVKOCZjW4t+7JslGkqLHvGA6V5jzd/fv3KW+fgmqQcO1Q/3k1g3TdE76k03479NF2V0qKz0MCT5T8JhbvvJyM+qmayq1MvZGT2OKBmUPXSdMxRDZE0Z8NOg/R8cc1Ey+e86nlQCocqLLB9rW62XlM+x/UffjkDXGLJINb3HjtSPmJVlA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9415cb82-b53a-4f5a-1019-08de8381a5c5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 17:29:59.0850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EVxy2r1+1dnigkFc7DMBnMeUGLixFhUJexSJtRUjIxTJHp9mQwuGKSYf1HyjgrL7d1QPylLboaqsVBzQNH5fvFWnbnNI/Fcmg+ug4iMIsmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5813
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773682205; x=1805218205;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g87jOmlzzXCERktNd4VkN/Yhywk9N4o21lurocrEiXY=;
 b=P4uK8nHF2iL9AnE/O3pY+1EyS5651Baqmfg15ByCxMIycItMjamiQ6RT
 PDS++jPiQfBw6m8SaT1xvZuF19jctvxj5t4kgLtThIBxBzNRyEBj4kaTB
 Gk+uy7q/fI0LkMpBz/lSHh5hiOqAUMoIQy05jMhUg+p12XNhBxrOES6O7
 VRAS8nHtQ+wuQ8IqFWs3PnI1ZYxDy4p8WTS2WcJRBBzx3liF51OUiZehn
 VQKy3o8df74TCYfSOGSJxpJ5y22sqv9H+WsdqPpjGnhc/k4d97n9d7wJW
 wAuOjm9ClfcQBgBQgKM0WS62rjluTO13DxOn2fF1l5V89hpna8A0/e/AN
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P4uK8nHF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] ice crashes when not enough IRQs
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:michal.swiatkowski@linux.intel.com,m:przemyslaw.kitszel@intel.com,m:jacob.e.keller@intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Queue-Id: 16A6E29E42C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/15/2026 1:22 PM, Jakub Kicinski wrote:
> On Sun, 15 Mar 2026 13:01:50 -0700 Jakub Kicinski wrote:
>> On Sun, 15 Mar 2026 12:54:51 -0700 Jakub Kicinski wrote:
>>> Trying to build a minimal kernel I dropped CONFIG_IRQ_REMAP=y from
>>> my config, and (on AMD) that caused IRQ shortage.
>>>
>>> This seems to crash ice after commit ad61cd9c67ad ("ice: get rid of
>>> num_lan_msix field"). Sorry for the lack of line numbers, I also
>>> dropped DEBUG_INFO. But I think the problem itself is pretty obvious.
>>> The fix less so, short of reverting ad61cd9c67ad. We can't just clamp
>>> the queues in ice_vsi_alloc_q_vectors() because AFAICT that would make
>>> ethtool -L succeed but driver would have a lower queue count than
>>> requested.
>>
>> Hm, maybe it's not just CONFIG_IRQ_REMAP=y
>> Enabling it makes no difference. Let me try to see what state the IRQ
>> allocation machinery is in on this kernel. On distro kernel ice gets
>> all the IRQs it wants at boot. But it also barfs something RDMA so
>> I can't really compare..
> 
> I think it's ee13aa1a2c5a ("ice: use netif_get_num_default_rss_queues()")
> It clamped the number of allocated queues but I think it meant to only
> clamp the default enabled queue count. No idea how y'all gonna get the
> extra IRQs later or whether you intended to pack multiple queues per IRQ
> so I'll let you figure this out..

Hi Jakub,

Thanks for letting us know. I think we have the fix for this in the 
pipeline [1]. I'll try to get it tested and out to you ASAP.

Thanks,
Tony

[1] 
https://lore.kernel.org/intel-wired-lan/20260223125157.819135-1-michal.swiatkowski@linux.intel.com/

> Thanks for letting me test crash detection and recovery in NIPA, I guess :D

