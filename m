Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h2tYCVArI2qujgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 22:02:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A964B160
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 22:02:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=q0DOAYy8;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C6C8D83089;
	Fri,  5 Jun 2026 20:02:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NjqzyTgeK74t; Fri,  5 Jun 2026 20:02:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2167C8305A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780689741;
	bh=GC73VsvCbYuzgV179quJEOCjiO3AUF33zU1k1GLmIEU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q0DOAYy8HwGPP5dejt/Gc7kxHlxhEnUx/WJ/Ivex1x9UAW0rJYy2k4CF15SlH04yM
	 Z78ekTJJe5+/WZclZ3uyafBCi0Zkq2VY+pphJbV0bQc/t/mqTCq2yc4L2N3p20haif
	 XCiKCYeF5u3Uf1nR8MmYVGr+KW5JR5SW/xpwKZrm2ual2KYwmgzL9BUEpdwANZEzJ1
	 y8b/UVup6cnApyVh3112VtmtRtki62YjjUHrsOfKh5nNUAuqFpAtHVkU4RITi3Quom
	 RFLmur2zvg9GdoXNvnupjt6nj2xg9xO0itGTDtogAdN91oDsahHW4Kycn9+zcCDcVM
	 HYmcNd8+8zyaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2167C8305A;
	Fri,  5 Jun 2026 20:02:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 31FBD388
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 20:02:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04F1260FEB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 20:02:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G1jBmWBLEL3T for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 20:02:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org EDB9560FEF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EDB9560FEF
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EDB9560FEF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 20:02:17 +0000 (UTC)
X-CSE-ConnectionGUID: 95w7vsxcTmyL3jqT8b61mA==
X-CSE-MsgGUID: M0VFP8i9RI6eQ+X4fH26sg==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="80665773"
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="80665773"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:02:17 -0700
X-CSE-ConnectionGUID: XfdDh1BURwKGvnH2UXSp3g==
X-CSE-MsgGUID: xRCmLhUjSuG2kvXKjpRm9Q==
X-ExtLoop1: 1
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 13:02:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 13:02:16 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 5 Jun 2026 13:02:16 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.49) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 5 Jun 2026 13:02:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gNemVY5ioVsotR7wIgCldTNQw5u2liW4y8vul8b645rJqcTBIEKZHeJel9gW3+MRsu6VssSGkKq5y0VwurqtaVPWVIP0YKl8pcAKzxZayGgJwtciJ8ej+TlYgdJ9rHK42cuGwDlicqcJtSwT8Od7V5BTBk0gii/RNTmN8xJqOL03mDDaTWZoMAseKLNEn2+v8ZL+CFKBxXt01m7s9XV8+dFUMbczxAQKbU9EzM4WkMKeMunftNaEV7CRD695Emn6EHgMlMnQXJKKAehmGEjwHaAeHZWnI46gClDCsnKWyylAqAEqeC2BuFuy9dsrt2zAef8Bs52TigtZu2xzlke8MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GC73VsvCbYuzgV179quJEOCjiO3AUF33zU1k1GLmIEU=;
 b=JrWuOeuFtKmYOdByCcxKp4Cmu8xPS/wix4kBMnJKVvsxdBBQOGwuBTKaTdGk3mQewge8ApQTYrrvrQJkyXjHUQUTrVsfdxj9RdQbHthlrM5c7Tu1pFi+sS/4a/TyhmJ+0BBozvAw6tRU5q+VHxVdIIO6JzA9DJ74BCbwE9ErDUqEYbygHYcGhb2iAEfMBYqPiMkJh7qR6kpty5x/PwN1tHosDZRfsu2GGJYzApA3+tjiu2ZScFAPmyCgY0ZhOrG1nGxv8+5VtYJYukKuQSQ58ysr+SKOJ5Jo/x0w7MnWLCZ02ofc2KaPqoKfpWRBUxK4c7xHLdk7BX8ea6fg7t6F6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8230.namprd11.prod.outlook.com (2603:10b6:8:158::21)
 by CH3PR11MB8094.namprd11.prod.outlook.com (2603:10b6:610:156::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Fri, 5 Jun 2026
 20:02:12 +0000
Received: from DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40]) by DS0PR11MB8230.namprd11.prod.outlook.com
 ([fe80::2592:f5a9:a751:be40%3]) with mapi id 15.21.0092.006; Fri, 5 Jun 2026
 20:02:12 +0000
Message-ID: <c26b9257-97e7-40b8-a532-3fc0bb985a58@intel.com>
Date: Fri, 5 Jun 2026 13:02:09 -0700
User-Agent: Mozilla Thunderbird
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 <intel-wired-lan@lists.osuosl.org>
CC: <netdev@vger.kernel.org>
References: <20260527071842.11478-1-aleksandr.loktionov@intel.com>
Content-Language: en-US
From: Tony Nguyen <anthony.l.nguyen@intel.com>
In-Reply-To: <20260527071842.11478-1-aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0159.namprd04.prod.outlook.com
 (2603:10b6:303:85::14) To DS0PR11MB8230.namprd11.prod.outlook.com
 (2603:10b6:8:158::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8230:EE_|CH3PR11MB8094:EE_
X-MS-Office365-Filtering-Correlation-Id: b8586b45-e862-4756-7279-08dec33d5534
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|3023799007|18002099003|22082099003|6133799003|5023799004|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: x78Jx49Rn94TNQgPbIfzfyzkyrzJMsno+4FN7QH8ZGnecPYvd9Zie8bPsVALqeyjfsxM9Z1tGZ+YJLfLPy/z+LEIjDnr6aWr+em9s6EsDd/tdhlfossergBB8g7HXlHY5SVCLJAst+GJKMVn5P5viRuWSTp7vjzvkWogq4sEgT5ivOhocENzv9eOblssVdM9cp4yltr4dKpcr/2Z84wqtC28df3ed5UIzNEozcepwdNpN6WYsYnt4NWjiAwM03LT83srG8bFEGZGTjdMLxSHWJ3lDIWxwVNZC8mxbxTe8ll6QTs2s0AB1SV2hTlDI3Xwgqoxt2NeoTDEaGHR361d4vXaau8T2rujRApICXNPnqI+0+emPCznKdWYlToYVKDjmUyoGMhQG3qJPtL6B7FnB8vZBYG4JEa6SdUC9H3AwpkLPllj0WdGiI3EvbtSvVjW0hxy1CqFCddpNP3omexepaqW3CMkOMYkgUAOwCbe2emadM03mwSejIC63Hgygo8uRO+4kwQvpmNQNvXZYR27W+SkfUBrmjy1p151x6snyTOFDmOROltaqy0yNBjE6xkMLMZYwn+Ig8epjvJNkwV2OmggxNvRFx1+uQxIB5EmaA+K4tnfrkDxZpkdtPmQFAeL1jBaqr7LYKP3dJeSRHS8pLE4MfZwmRLh1UoRMcfH1sCxyrBLyxqGcUMj8daZhecq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8230.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(3023799007)(18002099003)(22082099003)(6133799003)(5023799004)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTQyUkhYL2ZtRk9JYVNrTmhya0VKZGdhdXRmN05yZDJhNVZkTUNHKzRHRkNZ?=
 =?utf-8?B?TVg0c2t2K0owMm5pL2YrdjBPdkIxbi93VW5sVjVNVDBxRExlZ08vNFNxa2tT?=
 =?utf-8?B?QkJ6bzJxc1RYZlNzRE5lOENHcTZ2WWkyT243Mk1aTUVBUmVheUFsQy9IQUsw?=
 =?utf-8?B?a3hvMllZNjlCU1pnRktuOGpCdGtsSFU2eWdNNkRVUlR4dUNSNlcvRGVJcGZi?=
 =?utf-8?B?RjNvVVdwdUpGRDZUSU5SVGtpYlJGdTYwM2lqWHplWXQrd0YvcXNUUlBGbE5B?=
 =?utf-8?B?ZVg3QllLRkplWjZoUzl4aW5iMS8rV3NyUDNraWlObW9LMDByUHdwMnE5aXBx?=
 =?utf-8?B?TmcrRFd0Z205VUhWZ0tlZjVFQjB4bG5CdGt4cjZOMU05dFdVaDB6YnRoaGMy?=
 =?utf-8?B?cGJFRG10R0laNkx3MnhtcnQ0K0J3TFQycGtFZmRmRVA5Mzl1YU1DMHBnejFD?=
 =?utf-8?B?SGJPTUErdmFROVBWTSt4OVNRTlFYcEEyMkFzT25PTFlzckI3ZXRkYWFieU1F?=
 =?utf-8?B?aDMyOTN1NHdpSHl5dVg1YTdXcjRjNHd3YS9YSndnSW40aXJPWkF0czB0SmVO?=
 =?utf-8?B?bFp1UVJvTUZ2SlM3ODI5b3h1OTVyRW9NaU9OeXlWMTVGZFordDJ1b0xkWDZw?=
 =?utf-8?B?dEE2STJyQzA5RVVmOFMyT0VtYTBBdm5CMXFnL2xSQjVUT0tXS1djck9xVjAz?=
 =?utf-8?B?enZEdEI2SEJOZlZ0NURGbTZFQnQ1OEpCdytxYk9sOHlGZmN4b05wa0VzQVd6?=
 =?utf-8?B?T0NFUkt6OU43U3Q0Q0lBZGExRTNkTnBCZjJUYnZ2M2VST21RbVpzYnEzSVhB?=
 =?utf-8?B?bnpQYk1sZys5N1FvRE5mM0lUYVBKaVZyaXo4MGkvY1l6T0FTUlhsdWduNm1W?=
 =?utf-8?B?ejZTQVdRRDNxeGdWQ1VuclBmWWJNVURLNDJPNElkUDhpT2xJZ3VKOFE5cFBK?=
 =?utf-8?B?bjE2QmwyZWYrektzYzFVUmhIcFMzUWowQ3huaUYvWVdDV1lRRVIzL1hEazlJ?=
 =?utf-8?B?UlAwY1B5bjZxbGJsZ2ZINmNUQnU0WERmNW5kZjBWdGlYOUovTCtLSFRsWjRG?=
 =?utf-8?B?enlPZnpabVpJMUhqZThIOGdtWFF5amplcUpFKzVTektXQWhsbkRrUkxvM1VC?=
 =?utf-8?B?eHVGNS84bm9GZ0t3MjZMSjRaZHdGOVc5VmRWWkV2bkdTQzlqL1pwSWFHYlRa?=
 =?utf-8?B?bHNCQzU2YSt4MndXVm1oQWVCRnJtSUVZbm9CYUNDUlVsdTNhTTE1VjRvY2FI?=
 =?utf-8?B?dEZ6MFB5dnJ1ajEramNlUVoxKzV5dXhrSkNwNFpudTVsd3BxZjVGQVhZY0JD?=
 =?utf-8?B?aWNVWThjRGNxc2FmT1lwQmM3Zys2MUt2Mk9odWVNd0laVXhRbFVRcmRQdUY1?=
 =?utf-8?B?ZGo1OGxrcFo2aFlhd3N5VFVpalhwZG9Qd1lINkMyWUJUK2lVVnJ2ckZSaDZ6?=
 =?utf-8?B?aFFmclFSdTQ5VXJoeUtHMXhDeHNSckxIazlaS1JjaTJoTjhsT0NhNi9KMmZ0?=
 =?utf-8?B?M3FMeEFWZklramVOTjJWczY2aFhGejl5eFhEMkdmSk1mUnJRTWh4Zlg1QWhn?=
 =?utf-8?B?NExkbUhFdG9rdU9MY1JoV25MT1FOcy9EY3Z2aEQrbVVBOElpaUtwc2ZheEpH?=
 =?utf-8?B?ZXB3d244MXNVSkhGdUxpMlEvcWlmUm1BclJva3U4eVpCRW9iOU1QdkdmMlRL?=
 =?utf-8?B?dUp6b0hvb01zWGVTSUVjSG5jMkk0cmdiK2ZDT3FaM2hnWkxhM2FlWHNmdnJ1?=
 =?utf-8?B?dml5Y01sOWg0bjRNYWNxNWROWEhaZmRDV09XMTYveU04V0UyZEFTUmVzVUU0?=
 =?utf-8?B?cFVVSHBoSTdXTExzYkRLcld6b2xtT1R1SmZYSEg3U09RTnJ1RDFNeGw1d0tD?=
 =?utf-8?B?dTBXRkd2Q1dIenJjZUFFRldnYWYyTUFOWVJCOFhveERRa2RLRzNNQnp3aFFj?=
 =?utf-8?B?dytiQTlXUHJtTmVMeDgvSWxlZjRGYUNHZjdXVk05M2ZxMy9sYklQR1Y1L0pV?=
 =?utf-8?B?elRXQ1c2QUkvclc2K1pvSThqYWMyRFlRM3pUVDlucFYrcTJYSlRrUXp5bjZa?=
 =?utf-8?B?U0lNWVNXejVBU05GQUFsYlFiZFpONFZGVEhwWkloNWVzbWp5OFE5V1hINWpr?=
 =?utf-8?B?ZDYwanZZMml3aGRFNzRsd2FVWmdJUE1UODFqcnl4dTNkdm1WbVU5aGRxbDEr?=
 =?utf-8?B?WWpvUVkwTnpVZU5iQ2NsRnRzbFluUEhwajJaK1doT01vUXdnTDdBWElsTWtN?=
 =?utf-8?B?MGVOSHhIcUx1RnJlT21jQ0tCQ1E1dHJvd2FTaU9vc1NJejIzY3VPL3lHR1B3?=
 =?utf-8?B?WDE3ZGVXRDdHSDZTeHI1aHlPU0oyL1hCL2pZRWx2cFN3eUladGlqR0s5bUpX?=
 =?utf-8?Q?8MX8Akr+Rx38dJ4E=3D?=
X-Exchange-RoutingPolicyChecked: BYOwkMvT0iWEANIYY/Hkh/tC+V2Df2dWN3byDH3DSHt+bBs8mYTz07cxKzwXEdl7kXNqY1xLG9LzanPCfa9MvkCbV7sbwbPJg39qpSjZIg56ZWEnH5e8TPmHIcGsYCbeMB4IP8ggnKtAAgtBYCX2B2EShlFhJdpq1GPnQ94AJ0EBrRdZTd7jzOsiA625fGiuM2JmDH33TY6foQhjRnEtaKBP28Cwkxy+N2ScojGttAZC1zdIWjBXxEktjHdYD7DxOfqgLPpCO/SJ6ZelW6f3DM52Y4tpe82vRdpf4K028sOLVY+o+1jgIKk1LC2lEqKu0rzRhUHdxSL/Xuysxst+TA==
X-MS-Exchange-CrossTenant-Network-Message-Id: b8586b45-e862-4756-7279-08dec33d5534
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8230.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2026 20:02:12.4426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +LWg/4w8Xlvj0bV7hPkI3bTj/KpU/Tsj6vKjzQR7rML0jA1rVJMHXXb89iTS2XKAmnOt3EBCo5ha49K11+v5LJh/FJ0C+igCdcH/gqGdJZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8094
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780689738; x=1812225738;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=UAdqE8DBvB0+h43UQ0CpvvDJYEngmF569Kry4FabKlQ=;
 b=mrbm28Bj1Id0sfSndp+VP2/fQW+/VtZjYiPv/csOBCHDzeup5+WhT8O5
 drMAdQDgpiFY9wRLaLU1PYprz1swHSTPwr5UKi0+NEF+m+j0jUysGjjrq
 fcfhSgolwocbHZPFn6W7Za1tVpPHfvtb1QF3XTa2Ug3YHDS2XeE55NNzr
 iX32tr5v7AY+E4AQPa7Jy5VYkCTNMxGZYLNT9uyRe3xz38mKHXiw+CW7n
 +osVCHLAuxyv9SKmwPMHvlLnKoXnQa4fV1aAyLuMLKO/hvQ2yVPN02426
 nsFH2+nJ4nAvnoTeH9BIABP4NucPC4VlLxqIrfNLIXzbtmby7Uk2D9v7r
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mrbm28Bj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: reject out-of-range
 ptype in ice_parser_profile_init
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,osuosl.org:from_smtp,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 237A964B160



On 5/27/2026 12:18 AM, Aleksandr Loktionov wrote:
> set_bit(rslt->ptype, prof->ptypes) operates on a DECLARE_BITMAP of
> ICE_FLOW_PTYPE_MAX (1024) bits. Nothing prevents a malicious VF from
> providing ptype >= 1024 through VIRTCHNL, resulting in a write past
> the end of the bitmap and a kernel page fault.
> 
> Reproduced with a custom kernel module injecting a crafted
> VIRTCHNL_OP_ADD_RSS_CFG on E810-C QSFP (8086:1592),
> FW 4.91 0x800214af 1.3909.0, ICE COMMS DDP 1.3.53.0,
> kernel 7.1.0-rc1.
> 
> crash_parser: ice_parser_profile_init @ ffffffffc0d61b60
> crash_parser: setting ptype=0xffff (max valid=1023)
> crash_parser: calling ice_parser_profile_init -- expect OOB crash!
> BUG: kernel NULL pointer dereference, address: 0000000000000000
> #PF: supervisor write access in kernel mode
> #PF: error_code(0x0002) - not-present page
> Oops: Oops: 0002 [#1] SMP NOPTI
> CPU: 56 UID: 0 PID: 165011 Comm: insmod Kdump: loaded Tainted: G S U OE 7.1.0-rc1 #1
> Hardware name: Intel Corporation S2600BPB/S2600BPB
> RIP: 0010:ice_parser_profile_init+0x2d/0x1d0 [ice]
> Call Trace:
>   <TASK>
>   ? __pfx_ice_parser_profile_init+0x10/0x10 [ice]
>   crash_init+0x127/0xff0 [crash_parser]
>   do_one_initcall+0x45/0x310
>   do_init_module+0x64/0x270
>   init_module_from_file+0xcc/0xf0
>   idempotent_init_module+0x17b/0x280
>   __x64_sys_finit_module+0x6e/0xe0
> 
> Bail out early with -EINVAL when ptype is out of range.
> 
> Fixes: e312b3a1e209 ("ice: add API for parser profile initialization")
> Cc: stable@vger.kernel.org
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_parser.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
> index f8e6963..3ede4c1 100644
> --- a/drivers/net/ethernet/intel/ice/ice_parser.c
> +++ b/drivers/net/ethernet/intel/ice/ice_parser.c
> @@ -2368,6 +2368,9 @@ int ice_parser_profile_init(struct ice_parser_result *rslt,
>   	u16 proto_off = 0;
>   	u16 off;
>   
> +	if (rslt->ptype >= ICE_FLOW_PTYPE_MAX)
> +		return -EINVAL;

Patch applied.

Though since you seem to be hardening the drivers, Sashiko reports a lot 
of other issues from this that could be looked into:

This is a pre-existing issue, but does ice_proto_off_resolve() lack a bounds
check for rslt->po_num during protocol resolution?
The parser loops over ICE_PO_PAIR_SIZE - 1 (255) possible protocol IDs and
adds matched protocols to the rslt->po array, incrementing rslt->po_num.
Without a bounds check to ensure rslt->po_num doesn't exceed the capacity of
rslt->po (which is 16), could a malicious VF provide a crafted packet that
matches more than 16 protocols?
Since rslt is allocated on the stack in callers like ice_vc_fdir_parse_raw()
and ice_vc_add_rss_cfg(), could this overflow the stack array and lead to a
panic or potential privilege escalation?
This is a pre-existing issue, but does an unrestricted header offset (ho)
allow out-of-bounds reads from internal parser memory in ice_rt_ho_set()?
In ice_parser_rt_pktbuf_set(), up to ICE_PARSER_MAX_PKT_LEN (504) bytes of
packet data are copied into rt->pkt_buf (sized 536 bytes). However,
rt->pkt_len is assigned the full original packet length, up to
VIRTCHNL_MAX_SIZE_RAW_PACKET (1024).
The parser loops in ice_parser_rt_execute() limit the header offset (ho)
using rt->pkt_len (1024) instead of the buffer size.
When ho exceeds 536, does ice_rt_ho_set() execute:
memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho], ICE_GPR_HV_SIZE);
reading 32 bytes out of bounds from rt->pkt_buf and allowing a malicious VF
to force the parser to read its own internal struct fields as packet data?
This is a pre-existing issue, but do dynamic allocations for raw FDIR flow
configurations leak when a flow is deleted or fails?
In ice_vc_fdir_parse_raw(), memory is allocated for conf->prof using
kzalloc_obj() and for conf->pkt_buf using kzalloc(). However, when the 
filter
configuration is later destroyed, such as in the validate_only path of
ice_vc_add_fdir_fltr() or during ice_vc_fdir_flush_entry(), the code only
calls devm_kfree(dev, conf).
Does this free the top-level conf structure but leak the prof and pkt_buf
allocations? Can a malicious VF repeatedly trigger this leak by sending
VIRTCHNL_OP_ADD_FDIR_FILTER with validate_only set to exhaust host memory?
This is a pre-existing issue, but does reading 16-bit values from 
potentially
unaligned byte offsets in the packet buffer cause unaligned memory access
issues?
Further down in ice_parser_profile_init(), the loop increments the byte
offset off by 1 and directly casts the unaligned byte pointers to const 
u16 *
before dereferencing them:
	prof->fv[prof->fv_num].spec = *(const u16 *)&pkt_buf[off];
	prof->fv[prof->fv_num].msk = *(const u16 *)&msk_buf[off];
While this might be tolerated on x86 architectures, will this result in
kernel alignment faults or panics on architectures with strict alignment
requirements? Should this code use the kernel's get_unaligned() macro to
safely extract these values instead?


>   	memset(prof, 0, sizeof(*prof));
>   	set_bit(rslt->ptype, prof->ptypes);
>   	if (blk == ICE_BLK_SW) {

