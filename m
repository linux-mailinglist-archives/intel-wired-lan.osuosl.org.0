Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F6DC0EE63
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Oct 2025 16:19:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ECBC8254A;
	Mon, 27 Oct 2025 15:19:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n4TYOI6l6ICf; Mon, 27 Oct 2025 15:19:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A529D82325
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761578375;
	bh=KD12g7CmYshMBmqG4yfMEhFd30Jm/ANjc13/pUDAxnM=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CjGXLCTn/9tHdPs+9FX+KpNu4aYtMdxs53AyUojzgpSJp2BYfXO8SF3bspIRkawcK
	 6ODHGI3i6U7gZOoPsh/6TO/iEaqO79FA3XvPCLA5f2iYNITeEQjszfyRmrGZ2F9Swy
	 djizVgWTi+uuHmuGqBg9IdzkhbM25p1IK9+zFqHrMnF702E1cALmTnF/DpoeQ9Iagc
	 ksjNy30AatkGmnNHDwW5zLAqDyAfsHqIKZV2i5WOuUAonPxdgpt4yi0AhbmHNInW/E
	 YjkK4+b6W8Eg9hRTXkKuVcFNtRWsYkBF3JMa+A5iZigcv2J8HV/c7/zc8hSAnSMDr1
	 XrOm72u9wA66w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A529D82325;
	Mon, 27 Oct 2025 15:19:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D50C43F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:19:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 630714141F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:19:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HX9YTyEZgrPu for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Oct 2025 15:19:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8DBBE41294
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8DBBE41294
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8DBBE41294
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Oct 2025 15:19:33 +0000 (UTC)
X-CSE-ConnectionGUID: lNX6sCuHQTmWQJTaRXf0xg==
X-CSE-MsgGUID: enxmNE+xRZWgQsFux686qQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63585284"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63585284"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 08:19:32 -0700
X-CSE-ConnectionGUID: 4IlKVQJySZSlkAiHs5lYZw==
X-CSE-MsgGUID: i/cn8B+9TsO3A0V9GHGXhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="215961267"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 08:19:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 08:19:32 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 08:19:32 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.22) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 08:19:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xn5wfh87NzH8zRawihAdJCBVJKxxgMlTmJr1b8Scg4nNI9XntvpnxM6gIWBMQ3wkdlXlkPLHaHsgEwASc6g4QJrAcU9oEqCmLC4vTB6pkk3rJJRZZAJ91embSoqDGo5s/4kU1oQnfBU0gda8c1m54h6zIDw5aaOdM5GeebY5mk51BvUSEYnm2+987cMrSak67ALf84Ct4/9SGW5Cyg/AC3O+hK+Hm1fMQyEszrSE/V468bs8HwQ+iUGE64ROa4DfZNdNOl8Oljxlws0+CE6TKaPVqMdafSMTyDYLXa1ZR0WBm2JxkTnL+Ap0tqVpwDXLUduAid9bp8Syjo7o0yzKoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KD12g7CmYshMBmqG4yfMEhFd30Jm/ANjc13/pUDAxnM=;
 b=LXIjaiGpRnhUiasIu3W7sFri3M9FkjLgBOXQr7UdS18gahMGyNc0I2nzJvPaODC8TQ6+TI89Ev69kNprJWAesBK3RlrGWvExpPXmlxjhxfiyPT8KAHheZfy7cQoalE0/T7fl4UCAyhd+eM7w2O7rnmPCJNiEUjbv9YYWBVD7EbNiazBXpR/U6zrLq4ljWNR2ODLjxDcld3jTe8Mt7NVu8kb7gAGYgGTOW6zvDZfai93VwAVd0t1u71HcZ2K8PKna5UU6ISqTtZzEg8C46VK5f55rrk3F1ffV4AkgSbas8CCFwQPsAG4tUol/mS7m2RTCUDHA7Ic5VrBAcTFb0XGnlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by IA0PR11MB7742.namprd11.prod.outlook.com (2603:10b6:208:403::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Mon, 27 Oct
 2025 15:19:29 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.9253.018; Mon, 27 Oct 2025
 15:19:29 +0000
Message-ID: <e81c5f0c-eaf5-457e-8257-eaf0e7116164@intel.com>
Date: Mon, 27 Oct 2025 16:19:24 +0100
User-Agent: Mozilla Thunderbird
To: Sasha Levin <sashal@kernel.org>
CC: <patches@lists.linux.dev>, <stable@vger.kernel.org>, Maciej Fijalkowski
 <maciej.fijalkowski@intel.com>, Ramu R <ramu.r@intel.com>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
References: <20251025160905.3857885-1-sashal@kernel.org>
 <20251025160905.3857885-238-sashal@kernel.org>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20251025160905.3857885-238-sashal@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0166.eurprd04.prod.outlook.com
 (2603:10a6:10:2b0::21) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|IA0PR11MB7742:EE_
X-MS-Office365-Filtering-Correlation-Id: f2596ca3-3d29-46dc-85c8-08de156c3915
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R0crck95dHlENDJyUG5jN0lpT0x2akxLUUdMWVg1Tlk0bHYxS21iNHYwVnFL?=
 =?utf-8?B?cDRPWVFlbGt4cndSTWlKbUtpZGtVQmI2OTdVNFphdmMzV3VmUUttMno1M0tn?=
 =?utf-8?B?V2RncmlKV29rNnNvcGgreFNZUlJIS0dBMzlYNlloTmpoREhHNmtTdjkvUDRO?=
 =?utf-8?B?TkhCWkFub2VIbVNZckdxaVRUUG5oZ0ZBUHgyVU1WYW1SOWJSQkladWZKdXk0?=
 =?utf-8?B?b3dreFkzc0pWZ01QSjNJQ0c2RjFER21NSlBlYmZzSUV5UW1lcFRxK3ZqbVgy?=
 =?utf-8?B?WkNZTXpIbGgyVE8vSmg5U25qQ3QrVXAzc1dwdWtJQzUvQmFNeHRLS1RGRWF3?=
 =?utf-8?B?bHRUdk9RdTRuekRXeHJQNzhXMCtGbDJhRWlzLzhFRlpBK2pBUnFGeVVENzY4?=
 =?utf-8?B?V1FkZ2toRXNIWmd1ejVtYnozVUtyVzBCcHRYZnVXblZrTkxValpqVWZQNGlP?=
 =?utf-8?B?bjAvd1dmZnhDY0R0dU5RWXZkcDBMRkliL1JtUDN6dk9JbnB1bnpCanVKSDIy?=
 =?utf-8?B?dkJTVHVHNytsWFl1MkF2VXRXdDVlTTk4ZWZnRlhvRWxWL2tMcjFwTnpUQytn?=
 =?utf-8?B?OGdmTEFsd2RwWGdRUjdpZkxNSEU2RnFXRU8xcjhjRzUvK3lBWWN1N1lHcVN3?=
 =?utf-8?B?SXJZTjZ5anp2dVRZM2EwTnZYZXpUV09VR1ovUzliZk11OTFKOUdBcEdXVGFB?=
 =?utf-8?B?d1RleC85Z2dnLzUrQ0VldWJacXQxbm5QbXdVSWlsTnZhUGJzL2dCSy9RTnVE?=
 =?utf-8?B?b0lmTFI3ajFRZ3lTdGJhQktJeDRtdVo0ZURRRVNUTU55NDJEQzY5dnI2MEM0?=
 =?utf-8?B?L3VVT1V4eUVwdG9WbkZMTDVleGZpbkErdG5nalJMZzBtWVh5OU4zRGFwWk5C?=
 =?utf-8?B?M1NWRUwyKzNPZUtCQ21JbkpPT2VtV1k1YXJBTXJ4U0RvWmNWUEg0dUh2SkdQ?=
 =?utf-8?B?VXdpanhkNEdyZ2JUUFh0V2ZNMjBhSGxwL3gvV2NFeWJkL1FCKzNjckMrN0hJ?=
 =?utf-8?B?U3JjdGtZZGQvQk16OW0rMlM5Z25pWHE2UTV4RHpXTjAxMk5qdmpoVlh2K2NP?=
 =?utf-8?B?WHpvNUJ4ci9oRFMrT3JVLy9QVmJNbXJCeko5Y0hQVFZkMUxBZUJ6RGk4eWhL?=
 =?utf-8?B?aVBmbUdkOE83bGw2eER2V0dKK2UxQnVzK0lPOVNZTEQrNUY4d2hObDkrR25F?=
 =?utf-8?B?QWtUZXk4UmpNU3RBMW9SQUEzR043Sm15U01YcVU5MEd3Y1JCblRnTDN0VStG?=
 =?utf-8?B?dkUwUU5EVnN4Z1VzY0c1aEVCeDIxVGhQRmdvZmc5L09sS0xDejcrZ2V6ZGNE?=
 =?utf-8?B?ZlVwbjU5Y0gzampjeVlQNHpnalVYcGkyaERCZkNwUUJxQjRQL1liL2ZTb1hX?=
 =?utf-8?B?VjBYQll5Q2YvejZOTzA5VmMvMlFoc3M0NDFpU1BIT2o4YjFKTkcwRHpFWFcv?=
 =?utf-8?B?UTJ2bmpObU9vaWFwRU9FSHZmMlYxanlKSVdSZk1PY253NEtHZ0paK1YwU25L?=
 =?utf-8?B?SGs4d28zWXp6MGIwNjFoTjNFRVpEZFpNTlZFRWljTjZ3ZUdhZmhaQnhRSWVu?=
 =?utf-8?B?bVkySXdYNkNldVZLS3JkQmRhcy9yUWd0SnBEUlRVeTE2aE5UYVh0YWY3amRU?=
 =?utf-8?B?ai9BQzY1L3hjNjJTV3Yya2srUjZQVEg4NGlUU1VYNDhTQU12OHRIZGY5Z09Q?=
 =?utf-8?B?L0xvbFdXKzVLZDVJWXhQdUc1U29ka2QzeGFlWEdNZ1pYc1VrTm5GeHkySGhG?=
 =?utf-8?B?WVQ0RXlVcTBQTEJ3U0RVTTB6RThBUVBTSVJLZXkwRmdRRUtnQ2wxdnM4YTY0?=
 =?utf-8?B?TlUreklhT2JXSGFFa0hmS0l4MmpqU3pXbllzWWZFSzBaTkZpZ09zZ2dKaE0w?=
 =?utf-8?B?clpIZ0Zia2tJOG5saEZzbjhWYVN0NzRHVUVOMzdlWmNUdFRiQWxIdDREYkNZ?=
 =?utf-8?Q?GP+/3IdrkMbbOziT0GPrnLLYwBH65w/I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R1pmL0pKc2ZSRjNrOVBjemZtMUtuYmF2cy9hTWxBNU1vMmpOcWdud0lZbWh2?=
 =?utf-8?B?cUdCZW5OeXlZRGwveWY5a3BXelNBbktKcEJuc2piVnMrNlppUFpJRzAxaFdG?=
 =?utf-8?B?Z2tzbDhjQURNTXFQdmdWcnQ2ZjhNUUw5MFhYTU1ZcUxpcnpMSGE3NHBUamVQ?=
 =?utf-8?B?OVBVSE5tdEcwMkVIaG9pKzV0Zy9NMDhRTlpCbnIxcHVGMnlrTnF2MzRwMUxY?=
 =?utf-8?B?dlR4QXdibkY5V2RqNWM3TmxWUnlDMzk0VlhiblJHSGEvTXJzNWVQcEtTalhm?=
 =?utf-8?B?VTNmTTFMRHJ3Rzhtd09IZS9kamhkZmx3dDM1MDQzTEtsK1JKVEhubEtTaGkv?=
 =?utf-8?B?S3A2NGQrTUxQdDl3M21RQnljbXVZSlMwMzVQb1EzNW9wYStsbkhFLys5TENu?=
 =?utf-8?B?YzBhWXR0anZ0dGhFU0VvOVBJRkNRTUFpN2VjRmd3S2RaZm9LZW5UOWZDaGlF?=
 =?utf-8?B?WGVYdmFSOWNhR0pGQm44L3dISVdjZk9pT294OGc5QTdTMmoxNHphZWRMRHFK?=
 =?utf-8?B?U1JEcHRiWVIwU2srSm43QVlCUDdSWjdDdm13V1pYbkl2UjF2SlBmYTdqTTRk?=
 =?utf-8?B?T0I1bUFQR2hIcWZady9mSTBmTm1SMTJyZDZhWkhyeVd5VW9xUk5Qa1lMU0tU?=
 =?utf-8?B?dlVhQ1RQZUxNdVF6SHVYa05IeHpPemxFbmlOZkdJdGRDNTdBNGFsSzNzc0xD?=
 =?utf-8?B?TEhuekNvRElTNzFuaythUVloSmY3eWpSUTFCVnpHOERPaXh4Vm9PQ3BiMGFV?=
 =?utf-8?B?STF4SmIwUWRVMkFPam1vSkswVGNhTHN4YUd4UW5jTnJ2SWl5NXlaTEJZVGZN?=
 =?utf-8?B?TURNTkp3SW5KblI5ZUpaM1ozeGoweGhFek81YmxHalpaZWdtQ01WdElqMjRy?=
 =?utf-8?B?dGxNMkJKN2NOMzU3eHN0RG1YVm1NWkJFc0lzUlJqRUVSd2pxak84QVJycjJL?=
 =?utf-8?B?bTY0YTZpSUZrM1hCd1hPVm9ka1hOYUNCZ1hiNUJuZG1wWmcxVEtNTHppVTZV?=
 =?utf-8?B?Vmx1Y0NKS3ZDTXZmdUZFZFMxUzdJODZ5VW52KzJyS2tJZGdMYXNudVJGRnFj?=
 =?utf-8?B?a2tWRWtOU1FIZGFYSDJyOVBDTWJ5WU9rdjQ5N0JBcUduYWNsbHRHS1ZHUjJI?=
 =?utf-8?B?T2dMQldidVlHWnRjSUxqZXY0ZUNNZ2h5NUVGR1ZtZUhZQzVKK3Z5VlZVNHdo?=
 =?utf-8?B?MGFma2lRYWxEMXVOWjVGbWt6azVQSHAza3lYNWtqVDU0bWEvL3NMU01lQzRq?=
 =?utf-8?B?RDNKL3Z5ZXZEN2s5OEIzVE1HZURaQTFDN0RsZFNEc0NrTUM0ZEZKbllSYTla?=
 =?utf-8?B?dXRGdytKcElVT1ZxVWJ0ZmFuWXdLeXIvei9odGRmbUxBS203Yko1SXZKWHhE?=
 =?utf-8?B?KzN3d0p6em5vZmYwdTdiaWFYUGtWdjlaODFLMGhoRkpkdHlWNTlYNXJhZWV3?=
 =?utf-8?B?RDRpckhDaFZKWFdPenpJV0NkYk5tMEdVTXVTRitoN2JhZE9meXRwaUpHZG56?=
 =?utf-8?B?ZkFyNGc4c2NUY3pnZUZQS3UwZ2RsTG9PNkUyM28yWUc4R0h2WnMzTlYvM0Vj?=
 =?utf-8?B?MGRhazg3Vm1POFN1dE52KzVLUDJKQjVEWG1oSEdSOEtCQXZ4ZUZKZGFEQTJs?=
 =?utf-8?B?ZWxsYXBlUU9ySWpQMUxKMXlMYU9iV05rUnpzdEg3LzE1S2NrM1lWdWdzTkpm?=
 =?utf-8?B?Zm5ycUtwQVRUSDZ5UjMxQ1VHZ2x6d2RsVnJtQ2Rqb05LWXZVTTBMQUZ2U0w1?=
 =?utf-8?B?aXZ3U0U3cUpBaS9tLzY4UldQS3A5SnJabTBCMHphRm9FZ1hMMnFKbmIvK3dW?=
 =?utf-8?B?cUxCdnFxZkkwamY5azNwK3RGekNDYnl3bkJvQkZTSmhSdTZ4QVN3a3pzVzZJ?=
 =?utf-8?B?akZLVERiS080QVZuSmxUek1zTlY1emVwc095b3JIWEJOd1ZjakZnNWk5Uisw?=
 =?utf-8?B?cHNBanNXWW05Tk1YWHE2TlM5K0prd011ZGFEeE82LzVGdmtYaUhOdVJQUktW?=
 =?utf-8?B?SnE0YmV5YW50ZkZMOGF0ZWI1VFB0WldDZjNkT21ScTRKbHhvUU9SaDlsVWRn?=
 =?utf-8?B?SG1DZGtsWUYveVR4eXNDUGRvaXZDVkl0UjltWERVa0tpSENVYmxjWC9XempX?=
 =?utf-8?B?OXR5S2QxN08wejFHVnMyeVZvRVZyWGFXb3VqWTg5Z0tUNjRWUUVQa2RCcHVw?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f2596ca3-3d29-46dc-85c8-08de156c3915
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 15:19:29.4176 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GPStsl1sXwDxwDA/ldVd+Dj3WahX3SNZAiSFae9/K2Xa3gl39oBFUv3ZDxFxcoemzNlGaxF6WlfBhDpTar72sjvd3C0ORhb4VwOycy5/pD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7742
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761578373; x=1793114373;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=380cyxoXF7lt8ErwL4mFK93yuGXvVHXrj9vdu2mqXF4=;
 b=RZa6nKvwpT2fyTYOO3anK/KKl/FpCUVDNlUCot0bO/6VKtYaOs3ks+mP
 bEXa8yG9t7xVtaHXaIQEB2IWjFXUTz3TMhZkdR5ZJ+OhCQAwOS/fPU63A
 nJJd8sur3kDYzVDdYH05vxh8xyNYbT+9ZmxVQFxwK7R2s0k3EqDkozCVQ
 pSjZOwGG7BdShf1b6t561LRb5eS2TXXsocmAjnHQ9hLsQ7EAGqjwYAUHu
 QgUVcLHKia1YhcK31WbIqbfAj6DX2U/LwtT06mbX709uupHM9E4YUnwVP
 T1TsDZM8Hh6bhxL5YhpWNfOzK6SNISqowMvSYwGtwIB/Dh7zs7ic9vKCe
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RZa6nKvw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH AUTOSEL 6.17] idpf: link NAPIs to
 queues
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

From: Sasha Levin <sashal@kernel.org>
Date: Sat, 25 Oct 2025 11:57:49 -0400

> From: Alexander Lobakin <aleksander.lobakin@intel.com>
> 
> [ Upstream commit bd74a86bc75d35adefbebcec7c3a743d02c06230 ]
> 
> Add the missing linking of NAPIs to netdev queues when enabling
> interrupt vectors in order to support NAPI configuration and
> interfaces requiring get_rx_queue()->napi to be set (like XSk
> busy polling).
> 
> As currently, idpf_vport_{start,stop}() is called from several flows
> with inconsistent RTNL locking, we need to synchronize them to avoid
> runtime assertions. Notably:
> 
> * idpf_{open,stop}() -- regular NDOs, RTNL is always taken;
> * idpf_initiate_soft_reset() -- usually called under RTNL;
> * idpf_init_task -- called from the init work, needs RTNL;
> * idpf_vport_dealloc -- called without RTNL taken, needs it.
> 
> Expand common idpf_vport_{start,stop}() to take an additional bool
> telling whether we need to manually take the RTNL lock.
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com> # helper
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Tested-by: Ramu R <ramu.r@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Signed-off-by: Sasha Levin <sashal@kernel.org>
> ---
> 
> LLM Generated explanations, may be completely bogus:
> 
> YES
> 
> Why this is a bug-fix
> - The driver was missing the association between netdev queues and their
>   NAPI instances. This breaks NAPI-aware configuration and features that
>   require queue->napi to be set, e.g., AF_XDP busy polling. The patch
>   adds the missing linkage and corresponding unlinkage, which is clearly
>   a functional fix rather than a feature.
> 
> What changed
> - Link/unlink netdev queues to the NAPI of each q_vector:
>   - Adds `idpf_q_vector_set_napi()` and uses it to associate both RX and
>     TX queues with the q_vector’s `napi`:
>     - Link on IRQ request:
>       drivers/net/ethernet/intel/idpf/idpf_txrx.c:4043
>     - Unlink on IRQ free:
>       drivers/net/ethernet/intel/idpf/idpf_txrx.c:3852
>   - Helper implementation:
>     drivers/net/ethernet/intel/idpf/idpf_txrx.c:3818
> 
> - Ensure correct locking for netif_queue_set_napi:
>   - `netif_queue_set_napi()` asserts RTNL or invisibility
>     (net/core/dev.c:7167), so the patch adds an `rtnl` parameter to the
>     vport bring-up/tear-down paths and acquires RTNL where it previously
>     wasn’t guaranteed:
>     - `idpf_vport_open(struct idpf_vport *vport, bool rtnl)` acquires
>       RTNL when `rtnl=true`
>       (drivers/net/ethernet/intel/idpf/idpf_lib.c:1397–1400), and
>       releases on both success and error paths (1528–1531).
>     - `idpf_vport_stop(struct idpf_vport *vport, bool rtnl)` does the
>       same for teardown (900–927).
>   - Callers updated according to their RTNL context, avoiding double-
>     lock or missing-lock situations:
>     - NDO stop: passes `false` (called under RTNL):
>       drivers/net/ethernet/intel/idpf/idpf_lib.c:951
>     - NDO open: passes `false` (called under RTNL):
>       drivers/net/ethernet/intel/idpf/idpf_lib.c:2275
>     - init work (not under RTNL): `idpf_init_task()` passes `true`:
>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1607
>     - vport dealloc (not under RTNL): passes `true`:
>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1044
>     - soft reset (usually under RTNL via ndo contexts): passes `false`:
>       drivers/net/ethernet/intel/idpf/idpf_lib.c:1997 and reopen at
>       2027, 2037
> 
> - Order of operations remains sane:
>   - Add NAPI and map vectors, then request IRQs, then link queues to
>     NAPI, then enable NAPI/IRQs
>     (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4598–4607, 4043,
>     4619–4621).
>   - On teardown disable interrupts/NAPI, delete NAPI, unlink queues,
>     free IRQs (drivers/net/ethernet/intel/idpf/idpf_txrx.c:4119–4125,
>     3852).
> 
> Impact and risk
> - User-visible bug fixed: AF_XDP busy-polling and other NAPI-aware paths
>   can now retrieve the correct NAPI via get_rx_queue()->napi.
> - Change is tightly scoped to the idpf driver; no UAPI or architectural
>   changes.
> - Locking adjustments are minimal and consistent with net core
>   expectations for `netif_queue_set_napi()`.
> - Similar pattern exists in other drivers (e.g., ice, igb, igc) that use
>   `netif_queue_set_napi`, which supports the approach’s correctness.
> - Note: In the rare request_irq failure unwind, the code frees any
>   requested IRQs but doesn’t explicitly clear queue->napi for
>   previously-linked vectors; however, `napi_del()` runs and the
>   q_vector/napi storage remains valid, and normal teardown does clear
>   associations. This is a minor edge and does not outweigh the benefit
>   of the fix.
> 
> Stable backport suitability
> - Meets stable criteria: fixes a real functional bug, small and self-
>   contained, limited to a single driver, low regression risk, and
>   conforms to net core locking rules.
> - Dependency: requires `netif_queue_set_napi()` (present in this branch,
>   net/core/dev.c:7159). For older stable series lacking this API, a
>   backport would need equivalent infrastructure or adaptation.
> 
> Conclusion
> - This is a clear, necessary bug fix enabling expected NAPI-aware
>   behavior in idpf. It is safe and appropriate to backport.

While it's more of a feature and a prereq for XDP support in idpf, this
generated explanation is actually good and precise. I'm perfectly fine
with backporting this.

> 
>  drivers/net/ethernet/intel/idpf/idpf_lib.c  | 38 +++++++++++++++------
>  drivers/net/ethernet/intel/idpf/idpf_txrx.c | 17 +++++++++
>  2 files changed, 45 insertions(+), 10 deletions(-)
Thanks,
Olek
