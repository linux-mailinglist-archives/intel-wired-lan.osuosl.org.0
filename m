Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9469DBAABBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Sep 2025 01:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4E6FF60DA4;
	Mon, 29 Sep 2025 23:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NF3WBBAqOapd; Mon, 29 Sep 2025 23:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B12AB60DAA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759187263;
	bh=0aFKajv4Gulj/Qg21KRIFdPb5ajLE3GLowGVCV7nCSA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=IIs8zQuwOk2CImS0PIfdOP6hS0Swmyf0G3IALfRtTV8cWjrsa+MuYFiU/NoQPjHcl
	 sZ0PzmAhRZST8ij4NTkX2N6jCfiFRbCw9rQ95H1K0cKQNEWEpnjk3SPASTsjeTa2I0
	 8Smgsfj27Cvctk8OG1ryxKBmZ6R04Bu68CpPH0+WbTwwbxq0n2nl+nFB2NSnhaWIwq
	 TpfEoxZwpxhtLn5XJ5HwfYIkin/buBL/tRgIhXAPTKcZqiX1cpQiV5y/HdCHDyiz/i
	 O9MQrHrp2Z1WPLtks0F/fpdHLo9EF79DNgw2bHAFp3pM+S4JVwcnp1MplU1DjYxpxK
	 13a86rNl6cFrA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B12AB60DAA;
	Mon, 29 Sep 2025 23:07:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id EFC35CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:07:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D9418408BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id e6RvV-CZ368u for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Sep 2025 23:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=madhu.chittim@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1CAA9408B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CAA9408B0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CAA9408B0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Sep 2025 23:07:41 +0000 (UTC)
X-CSE-ConnectionGUID: j2eoMVY1QomTfGJR2Bbrhw==
X-CSE-MsgGUID: 2iwJYk+wQymMA8memWBZHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11568"; a="61481714"
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="61481714"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 16:07:41 -0700
X-CSE-ConnectionGUID: sBn4rPffSZayog39ZU+QWg==
X-CSE-MsgGUID: 3DiwFiwBSD6ktyAQPfNC+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,302,1751266800"; d="scan'208";a="209078913"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2025 16:07:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 16:07:40 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 29 Sep 2025 16:07:40 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.7) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 29 Sep 2025 16:07:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yeeZNiegD6FPJr9noHvN92GeHHEpzLeC6pNsfo53/CUSEbTggQSSBLukA+63pgZ0F6rgrdo2Q9xqfYiA1ZHPPgPdFXaok3paqjh43E2fgZlXcfxLtZPPfd52g/GNV+b6cQSLonRsjrf3S5X7u0k+ubVVaSdP7dSkIA+B/Ehz7FQqv7DN/ww9q74z/EUtbrnzWp9L3FT7AsagNamznvRKnBXV9cVQhzOTwov3Lpwns+u//WkILyVc9M5BC2ioiMhas8BPDbo4FAlMlfpTeAaZvzdOFNZ92DXqmxfbMXb0ZFKv+LTme+E4jpotzKDryFZJ7oA0+giK9aXlsJfHLm7OyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0aFKajv4Gulj/Qg21KRIFdPb5ajLE3GLowGVCV7nCSA=;
 b=cRKY4CongXK6YQWfytGqMEP9WuV28Z7mqrOZdJdE4Fx62u/ZZ0e8KO4vMI6q+PGSaxsZYooVjRPFGJLBeB3oV7vv/iFAUgmNMZIGZR5yrY8PKRCv3KlOeekvWP0KB7vzFt97UmYDghCccaI685UxH3fOVJM65qUd+N8eEygKT7kDSWRe/Qm+GrqO2UvogEvIsI9Hr9h0uFccvYjQVnerNkIdNc472zJTBXDc06mxgaG4KcYgjKd3/UXBr/lQJKxGE1trhz83+4GshoifSlMbIzvepCKnpMz5Hpc2yF4q/34esdNaUDyN3nB+ibgSRqvCxAWA7pLDqJhcF2BtESnhuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by MW4PR11MB7008.namprd11.prod.outlook.com (2603:10b6:303:227::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.9; Mon, 29 Sep
 2025 23:07:38 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::6b98:f467:da49:e062%4]) with mapi id 15.20.9160.015; Mon, 29 Sep 2025
 23:07:38 +0000
Message-ID: <4959d0d0-c5a2-43a0-8638-39abe953ba3a@intel.com>
Date: Mon, 29 Sep 2025 16:07:35 -0700
User-Agent: Mozilla Thunderbird
To: Jacob Keller <jacob.e.keller@intel.com>, Alok Tiwari
 <alok.a.tiwari@oracle.com>, "Singh, Krishneil K"
 <krishneil.k.singh@intel.com>, "alan.brady@intel.com" <alan.brady@intel.com>, 
 "Lobakin, Aleksander" <aleksander.lobakin@intel.com>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>, 
 "horms@kernel.org" <horms@kernel.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "Tantilov, Emil S"
 <emil.s.tantilov@intel.com>, "Hay, Joshua A" <joshua.a.hay@intel.com>
References: <20250925180212.415093-1-alok.a.tiwari@oracle.com>
 <1dda14ca-7e58-448e-8b05-e5f6293911f0@intel.com>
Content-Language: en-US
From: "Chittim, Madhu" <madhu.chittim@intel.com>
In-Reply-To: <1dda14ca-7e58-448e-8b05-e5f6293911f0@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW2PR16CA0019.namprd16.prod.outlook.com (2603:10b6:907::32)
 To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5690:EE_|MW4PR11MB7008:EE_
X-MS-Office365-Filtering-Correlation-Id: a69a9868-b3b3-4dc2-f856-08ddffacfbc2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z0JTNjJWbVZ2UHBpOU90SE9DQnpoUVB4VW52NjAvT3RaU2FEcmZBNG5CY2FK?=
 =?utf-8?B?ZG9hdWJjN2RwWXRsWmdieHZNWSswYkJpTEN1WFNleXhOaG4waUxIZklldTB5?=
 =?utf-8?B?V0ZoV0hEd0VUeGp5WWU3VWFQSzFjVHh3azFBQ0RVTkNYKzNRcHo1VGFDTkdr?=
 =?utf-8?B?a1FkZ05WaDRDb1Fyc25kNW1zeXF2VVZqU1h6cFo0SkdjQ2lIUVUycXRoVlZ1?=
 =?utf-8?B?QnJJai9rVTUvdmdTOVFpVTZGdWltT1E1QmFXS3Ezc2UyNjJMcjN0SkZaOXkw?=
 =?utf-8?B?ZHV5b21nOVF6bThjWUk1V1FidS92RDdCV3RWN09XZjJWNWZDdytYaG9pMmtr?=
 =?utf-8?B?UzFIbjZpMXBTaTkzT1ZBZ3VKTXFoSmZnd0VUaEJhY1ZUQkEyMEVnNDM1U3BX?=
 =?utf-8?B?c1Rkd3MyYmVBOEl2NlViZmtDUStmNzVac2xEK2VDWThMd3huZ2FJUXFDNWhQ?=
 =?utf-8?B?ZzhtRklvUzdkVnQzZFFubC94UjczVFFHMzNnMFg2Sk1EK0VONmd4clJWUTd6?=
 =?utf-8?B?bE1YSjEwdmdXSjUzbEszcVNDL3h1MHM2ZG1GclQzay94b3dlM0w0clM5THcx?=
 =?utf-8?B?OEY0UkFwM296RXlweno5MWNRV3d4blpUb1FEVXMxSXFCSmw4YzVFY29FU3Ay?=
 =?utf-8?B?Qmp3dkJaZ0lzUzg4RlRvc1l2T0NTV0FIcVNzdlRieEpXam4rUXZlcVdLU1Jh?=
 =?utf-8?B?UlZpVDVVRllaYlBuMXFma2IwY0pDNERIMUd3WjRGRzRNbjR5REdCT0hIMkJy?=
 =?utf-8?B?UmE4Vm1KMlBhWnpwQkQ0U29ob0JiR3pNdGVVZkFWRHBXU1QySHN5SDhEdWNL?=
 =?utf-8?B?WEtOV2tseGZiMHNtRS93VFFQMzJtV0RzSHRva1o4Y1NQMUp5TGp0OUpZaWly?=
 =?utf-8?B?NTlDVjdqNExXSTJIMU9jdGZZa2ZneUsxNlBuclhDZXZlR0gyOW5DZy9nd09l?=
 =?utf-8?B?WFFESVhmQitiL3lLdmRTZFZYelBqL2xzMW9peWNWcHYydFcyVGp6UXBLUnJQ?=
 =?utf-8?B?MWhkVzJ0d2tRcE9VMkhRL095ZlMxNEZBWTYvOUtqZU9HZkNKMVlITlBZVDFP?=
 =?utf-8?B?ZjNveGdxODQrUEJFOHA5YUFjQjVBM2lUbVhCOFpsQndkcFNKcEZHaHBWaitM?=
 =?utf-8?B?UWkxS2NaKzdOMUVLWVhPdFJiblZWY0tTNXlBMk1jTjJ1UjRKYWJNTWNydnYv?=
 =?utf-8?B?YUQ3WnNQMGpaRFlTRWx6N3JXcEZ1dnltSGxYdHhhaXR2cFVrOVVxdG5icWFG?=
 =?utf-8?B?ZzdoY2t0SUh1NmR6M090VHpMZEtGOEpMNDlCa0xuSjJvM3BGRndiV0Z5Zmk5?=
 =?utf-8?B?TXNDaTZhRENtNmsrcXhtcVZZekd0SkE5alU0ejJ2U2Zkb28zTHYxRytaR1NQ?=
 =?utf-8?B?MisvS2tQM3FCZ3pkZUlWWVBBaXlkbmJseEN6RnFWb3o4amJQdzF6VHlwTkFQ?=
 =?utf-8?B?cUxvdW5FWDBuOWxLcVN4NWNKUkg5MTRiWjA4TkV6WkVsQ3N5L0hwZlhoQUFj?=
 =?utf-8?B?dnB6RnNMTmJnVjRWZWE4U0xzaXh6R2pRU2FqM2lnMEg1djdPdkZuc2hwUjVl?=
 =?utf-8?B?Sm0ydzBtREVYVHE1eWgrZUhOSmJFSldhRVJOMVdvanpqbXhsUmM4OEJEemZv?=
 =?utf-8?B?MmFZd2UxN2JzOVd6QWgvMURuOGs3THNKdENENGlYQjdHQ255ZE8zMThldWF1?=
 =?utf-8?B?Ymw5SkhyYjBRajMwQUIrOUdRQVRnRy84MG9JWHNhVDhpTWx0REsvS0s3clht?=
 =?utf-8?B?YjJINUtaU1dVWGlNSWNFenl2VTdyTmZGOU91cVpMNWJtT1E3OVkraUdCejg3?=
 =?utf-8?B?ZmFZM2VMWFM0RXFYK3V1QTZQR2tzV0NoM29Dd2JNd0hUWlM4NGo5bWFnN0Qy?=
 =?utf-8?B?QVhxZlZFczNVWWZneUVMbHRKLzl0YXMvNlRGSGtnNlZmZkdkdlBhc3g1c0hr?=
 =?utf-8?B?L2dzcWpzK2tqYjRieVBBNm0yUitDdDJHeHd0SmhFYW1zZ0ZaR0JseERwS3lY?=
 =?utf-8?Q?EyTfaRlzafSNSPd7bNWosxeMX/6JkM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bjdVemFMcjRPLzluZ1hmK3JkVnNjYzl4blRBdG4xbDZJWFBNQmxUbjRGWkNn?=
 =?utf-8?B?V2x6TTE4d3hyUmgvMDE2ZHhldzVIczVRNEdocWV2TGl1ZEdrSmZFbDRxN1B4?=
 =?utf-8?B?ZXZzY21YbkEvQllVRmhYTU9HemNxNXAyeFZyc3ZvWW9LQTBDUVZnNkJHRnFz?=
 =?utf-8?B?TTdtUzl5MlMwYzdxV2lxU3g1SkVFQjZ4K1BrNlpvWlJiQTJwOUcxVlRqWUgw?=
 =?utf-8?B?Z3pMVzlJaHRtd0dwQS9rVWJyVHVYYmNFWHF6YzRtaERDdXoyVEUrYmoySEFZ?=
 =?utf-8?B?cldWdDh4dzZZQ0lteC9WVnhjZHRPcDFIQ2lBL21mRjhYWlFIaXQ5OXREa3Ru?=
 =?utf-8?B?bEtqeDVKNS9CcXViZ2xZY3JqSW83WmEvVFdKMkVvNkFOeUNGTGVHM2trK2hD?=
 =?utf-8?B?OUs1SzZBYWRscTFJU1B1aUJoRjdrQVN1alQrdnMvTjNGMWRvRmV5d3o4SFgy?=
 =?utf-8?B?elRQdWREUytpSWJKZUszaDE3K01CZlczS1craVgrbnJOQ0JsekhlQ2UwRzE2?=
 =?utf-8?B?WE45MU85MUFDcHJRUHJqOWJRQkZ2bnI2V0hiV3hDZThkNU1LbnlUYVV6Rmpr?=
 =?utf-8?B?cEU4SGJ1TUhndDE3Q2ZJZzgvNUJTWTVVVmJDYkFKUGdhM3hpVXVpSTJXVkJB?=
 =?utf-8?B?MWpheHBsV2NyMHJKY0ZnZkNEMXFyRloxUzN3VVlDa2FQMk95ME9kU1pOdzFk?=
 =?utf-8?B?ZGlXcXptSmtkYWxWcnAwWitadzM1WG9CeldLbG5GWHd1bEYyN2YvUmVtYkhy?=
 =?utf-8?B?ZEd0clJwWmgvaUxJeEFxRjUvQnNQbHptREIxdGtsbERwSmNiVU1RcVQ1aVRv?=
 =?utf-8?B?d0JYYXJaelJHSXRIU0hUK2xqZnBWWmY3ZEdVUzlCMWFVMEc3c2lKY1V4VW8w?=
 =?utf-8?B?R0tNMng3MUJEYWdFem15T2RmaW4zWjllWlVIOHBmZGhJdzlXeGhYeUhnbGtq?=
 =?utf-8?B?dmlDNkZKd2lVNCttVzZsb3lrOEI5YUNjSEJWUXppcWgzMHhmRXNLd3JMclZt?=
 =?utf-8?B?Snhra1VqL3owQnM5cVJyYyt5d0lsMnREa2pwd0R1VFg2Y0MyaWZoencrWHN0?=
 =?utf-8?B?TkpNSFAvRFQ3U1dqRTZwVnZPVnArKzNVMUZZY0FDUXRybzFtU0EyV2l6ekpw?=
 =?utf-8?B?QmdlL0hMdW8wTkhJQW90SW1GS3gwTEppL2JBUEZLcXhmT3BaVktWMjY4TWRk?=
 =?utf-8?B?OExTbll5TEszaTFvdnNMc3Q2OTlxdmJwMHlPQmRNV29oKy9JOGNITDZnaTlK?=
 =?utf-8?B?SGdneFh4Y0Zua2ZFdzF0Ry93ZGduN1kvVE9VUVZtMFA0cWVxWmRIdXdNZFFs?=
 =?utf-8?B?MWFieDIxaVlsV0RTTUEzdEFxRXFacHpvWjVaVGRYUFZxallYOEVZUmhuZjdQ?=
 =?utf-8?B?YndHcFlwQ2FNT21NS3A5LzRlVGg2N2M3Uy9OZ0xQTG9LZEpXcVE0RTErV2FX?=
 =?utf-8?B?a3pTZ2N2Uk9nRUliQXNWWGgwdXJmV3M0OEFoOEpvNGJIQS9DRExwNFpjbHBq?=
 =?utf-8?B?TzlzWDlCSHlFQUN2RTFUS0pidjI5NHdya0tOV2VibnJMcUJPVG9iRDRYUlQ4?=
 =?utf-8?B?b1NFWGp2Q1pPMUNMV0NwYWYzWTE5bUF5cEU0ejM1SHFXZS9aQldPT2swaHpD?=
 =?utf-8?B?SUtON1l1a3NpMEVQUzF0SDc2azg4aTJJWjdWQWJ6OG1TMXhyNWh1cGFyMHRQ?=
 =?utf-8?B?R3J0M3MyT0NxUGp3VkdUMUFveDU1aERuSUx1ODhiYnA0Z3JXbGJXTERRblRk?=
 =?utf-8?B?N1FoUEFGSWxBYUV2a1BFemY5ck1IOW03S2gvTG4wMVQwM2RBRzVqL3Q4WlBH?=
 =?utf-8?B?TmFaNVRQWDZVSzYzT2E1U2x3Z21wUDRlbDAxU2VuaGtvdlgrcXhPRElrS1pV?=
 =?utf-8?B?YkEwM2xxT25wOE1vWVFZLzIybHRCb2doVHZmajZQak1CbDRQbndRS0lvRWtT?=
 =?utf-8?B?UjNpekc2Z0gvRnZ0aEhSVjg5TDh0TkFUbml6TmVWeW5aa1B3QXZRUzV6Y255?=
 =?utf-8?B?K2JZcnRySFk5aHFQdGxOUlkyTUowQlNHNlJ5RGU5Qy9tUW85VzNoOHlpaVBa?=
 =?utf-8?B?ZitDbXU0UWVXUUtwOURDQ2IvQ1dLNStvUDIxR0c4NzJoVThHeHk2VUxIVGx5?=
 =?utf-8?B?UzVkc3lxdnUzMWp3UG5IVkpaUnNZRkoxd1RZQzNjcVpyZVVzT0NRVHh0OWEr?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a69a9868-b3b3-4dc2-f856-08ddffacfbc2
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2025 23:07:38.1559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: soqUQcQJfudpHgNeD8c1I/R+VaBj7S+vKhS9Nb8NeIsjDCq8qqxrGqNTyE+DDmkkIuywJnKYHx9am4fubI9fVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7008
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759187262; x=1790723262;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4b4Q4fKhm210F4F2tQ4CH4C4LZOdu2ZMJFxDTay4M9w=;
 b=PPvfzsTnoO8eTZ9Qdw5H66h4dPzmAPETy2V1KKVyG2sNVumsWNIGmaX8
 Jv8xJFCOfSoAb64csHq+pGVdZWCaZF6oPa2N5yQ/jpJYjWKoFkqbEtC/u
 qgyD6+ipqFQWZ/nrPofAJFNyp2GNPh/0XKuHIhmYX2fg16CkwZbf0Fx75
 nzJF/R/4b796j/ePDZd0E8GebxqqoqnTdozy/SInXsI3YQCvzVd4bjLDh
 20PGdjSjHE9Bffu6rYDakuoEBkG3Bi4D4bC2WagfCgdVG1k2sYRBGCngT
 vRqM0ChprV+NcgdUWrQkJVlIB9WqRl17UpqEwjoOJbjiImCGnV2cra6GG
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=PPvfzsTn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] idpf: fix mismatched free
 function for dma_alloc_coherent
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



On 9/29/2025 3:53 PM, Jacob Keller wrote:
> 
> 
> On 9/25/2025 11:02 AM, Alok Tiwari wrote:
>> The mailbox receive path allocates coherent DMA memory with
>> dma_alloc_coherent(), but frees it with dmam_free_coherent().
>> This is incorrect since dmam_free_coherent() is only valid for
>> buffers allocated with dmam_alloc_coherent().
>>
>> Fix the mismatch by using dma_free_coherent() instead of
>> dmam_free_coherent
>>
>> Fixes: e54232da1238 ("idpf: refactor idpf_recv_mb_msg")
>> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
>> ---
> 
> This is tagged for net, not iwl-net. The fix seems obvious to me, and
> unlikely to be covered well by validation tests, due to being an error
> cleanup flow.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> 
> I don't have an issue with this being taken directly to net, but would
> appreciate an ACK by someone from the idpf driver team first to make
> sure we're in agreement. Alternatively, if anyone has objection and
> would prefer I pick this up for IWL net dev-queue, please let me know.
> 
> 
>>   drivers/net/ethernet/intel/idpf/idpf_virtchnl.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> index 6330d4a0ae07..c1f34381333d 100644
>> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
>> @@ -702,9 +702,9 @@ int idpf_recv_mb_msg(struct idpf_adapter *adapter)
>>   		/* If post failed clear the only buffer we supplied */
>>   		if (post_err) {
>>   			if (dma_mem)
>> -				dmam_free_coherent(&adapter->pdev->dev,
>> -						   dma_mem->size, dma_mem->va,
>> -						   dma_mem->pa);
>> +				dma_free_coherent(&adapter->pdev->dev,
>> +						  dma_mem->size, dma_mem->va,
>> +						  dma_mem->pa);
>>   			break;
>>   		}
>>   
> 

Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
