Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gIhgId7ZMWpKrAUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 01:18:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A060695B34
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 01:18:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=mmyJ91ff;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F6536F5F6;
	Tue, 16 Jun 2026 23:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wNK8XmT2RwYu; Tue, 16 Jun 2026 23:18:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 750FC6F5F7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781651930;
	bh=PCxeoeHZPAi/M7cr48bYUvzINvfvcgt5qeLJQvlDIR0=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mmyJ91ff5qwnvn6FtneifsDATCrG2v18KrkZZJNY8UpHWK2cSyllS5kzy/9DfhriY
	 aFNEj+q+6skRFl3CVewSfgqYE8j0aW9cwe+Iw/bG14eLjR5sK70LWLW/m6Ba4CRP/M
	 xJYIUsJyG39+swvkyZgxgYhG603P1MCB7uMJyDxYi40s1OpfdAhmEkZ3O/AB0INBUq
	 Yz1otkbRk61ur9Jc8EVMx9RKVIlbvac0fy9R4T2putETk2mp22gcuH2npDi2iPKg3z
	 zr2X1wfjAoKoDJ28/p9WA7DU8BVY9BQem1E5xcbPPxiplvm/LaU/kMRUzt2FMvvSgR
	 j4lPiLtQfpjfQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 750FC6F5F7;
	Tue, 16 Jun 2026 23:18:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 29F8333C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:18:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BE396F5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:18:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hn1vUPKJkGhq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jun 2026 23:18:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D67306F5F4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D67306F5F4
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D67306F5F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jun 2026 23:18:47 +0000 (UTC)
X-CSE-ConnectionGUID: y3whMOXRSBCQ9EVFzB5mTQ==
X-CSE-MsgGUID: i1ZmhEOlQNae+z/+4cgbhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="99850734"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="99850734"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 16:18:46 -0700
X-CSE-ConnectionGUID: GODap/VnS1+iM5FlTOYrDA==
X-CSE-MsgGUID: AL6aBkFWRb26TeIQwdXxZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="243534720"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 16:18:46 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 16:18:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 16:18:45 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.27) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 16:18:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Eac18oFppbUXYyzffxzU/5hJUF25m/vVeT+r0KAXSzUyWYEmA1/1WAMYT823kG97iTw3QX4gupNLFQMUFmMRfWy8sbDtrUcdXi97noWVlsqQCnjaLz7y9M+tHO/u8gHO2QgO+aWxCsEBb62X7vpXuNTa8zc17mX8avyE9KAZtxB86vRcFq/A+vpRuf1OPYrJnhrWjwTSBaBaQSq4uKJcQcq4YmI1ubNEU2RKqdNMb7wN4WyaZoZ/elQotcEXn6E2rghAUfM3R8ip4mcWNTGQbI/qQb+KxWK0AIwUMiywSv6vonOeu/WPsqiYuEI75YxDHkCyQfrCVEVa8MgfrPNrXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCxeoeHZPAi/M7cr48bYUvzINvfvcgt5qeLJQvlDIR0=;
 b=L6sj/elFSkzZXcIVJfJxKChr3TOND8GM9wq1TGfjKTurnjBu8+n3YsstWB2xIaWhDYJBdmrLiVsDXJNTH7MCqDL/uCWHikUXBFbIvF02ijHp70dBjwL2Cz4Pmpk9Qb8YKT87J74Od9ltjNLuSNGNtAG8RemeA1EpkhxUh41aTYfQb69I2Wmu2RlvL139xSXxvnd+gGK/S/A9bOaqngpAxokZBqkBqKxCTSzmNQClJSkbYHnD/Ry5hw1HnwKBZb1R5d7RjbH0hB8RdnWwk8YoC8BQlzN+K9+FbiaaB0cJ4do2y903GYbtJgqAedROQupnLX8jzolCqFg1dvFWDNOOiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7381.namprd11.prod.outlook.com (2603:10b6:8:134::14)
 by SN7PR11MB6654.namprd11.prod.outlook.com (2603:10b6:806:262::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 23:18:43 +0000
Received: from DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58]) by DS0PR11MB7381.namprd11.prod.outlook.com
 ([fe80::4c39:dfe6:d6dc:6f58%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 23:18:42 +0000
Message-ID: <0e77b0a7-d9a0-4a77-adeb-48fbd5d3aacf@intel.com>
Date: Tue, 16 Jun 2026 16:18:40 -0700
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Dave_=F0=9F=A7=94_Butler?= <croepha@gmail.com>,
 <intel-wired-lan@lists.osuosl.org>, <linux-kernel@vger.kernel.org>,
 <aleksander.lobakin@intel.com>, <anthony.l.nguyen@intel.com>,
 <przemyslaw.kitszel@intel.com>
CC: <david.butler@appgate.com>
References: <20260616200152.1421033-1-david.butler@appgate.com>
From: Jacob Keller <jacob.e.keller@intel.com>
Content-Language: en-US
In-Reply-To: <20260616200152.1421033-1-david.butler@appgate.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR02CA0017.namprd02.prod.outlook.com
 (2603:10b6:303:16d::24) To DS0PR11MB7381.namprd11.prod.outlook.com
 (2603:10b6:8:134::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7381:EE_|SN7PR11MB6654:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f133932-dbb8-42bf-215d-08decbfd9b3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|23010399003|11063799006|56012099006|6133799003|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: yESmEZGP8eTkiyj6phgYT2KEd9F1AoG228vVT4SvJaYJl9nbiTE/I3rACARNPQZU5g2VloZUs9wVnpHqn0+5ipjteCj0NeKcvIsbB9weYdul8cz55Pix62Or9LgZtBDpbNUWDpodrwf8xKDGd7Od9/it1SBnp4ph+iClLrGE0XI+fK1zDX3Ehed+3tQFc7luACTfxeiCHjrostfwhxofEpeXZlnOhLXQLkxwqr7NmFNKmq+B9UQBnfWK8DOL05sDEXiyi0ibMFrmXmQ6HNH8W+rgRnSk67PrrGEEm/u7Zd16nVxEzW70bp7SYCErvKmw6T5mlOpAYkyMg9MPLAMv8MoFVM/7N/6HTuaCoruKj3lNFIse9kSasWWsQxq3PJFQ5fbp6MWuF6Bt3GEKD02wc1Jx+m1PYXkCZv5LlL15uXJzTQGmN8OEL9xdQnAY6MdD9FDqy01gArfvrIBgvni8H+zVt9lU+ahLPvCvT03LIAnOMG8zQqfeLoz72tRv9474Qx0IYHat9euVm//O+S/Rk2n/SAmf7I1qdDBSyQetN7tzlqw18hsAtB4AtIifuoBAXiqtH6r7PjHq7zDEyDla2kIQ8byBxyfLmnMYOB6tfFSOzd/enVIy+KA19EQxu9ziAXTC33LnKzT5CMNLwYJZblJe/Tugb2LA+DoN5eG3HXvSfcFViLvEuwiOtmSm/WqRN9aKfKYXUEF2TVvJZ1tQew==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7381.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(23010399003)(11063799006)(56012099006)(6133799003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekNnK0c5b3J3eWwrWHBrZVVxTWxLakQzVWxrY0hZT1J1TktoNWpDUmwyL3d4?=
 =?utf-8?B?YVFjZi80bGpVNUVhYTJGWVBEL3FhV1ZoaGQ5YkNWSmdKeUlrN1VWaWtDN2VH?=
 =?utf-8?B?RkxFVjJrdS9Md1RyS0J6cnlobHFhVkxzVkpBZ3dsZW1mOGlNOHE3NDhpRnRi?=
 =?utf-8?B?OUZQMFJUM1BoMGpIR1ByMW1BTzdQKzJPUXcra2xBWTFrb0VCWUhDOVQ2czVa?=
 =?utf-8?B?cnBiaVlNcURQUnFrRCt0Zi8vS1JRWE10cnYyaGc4MGE2Zm9YMys0MFNtU1Uw?=
 =?utf-8?B?K1c1aTM3Y1padHFhQkhqYUwwa3RNd20rdlYwN2d5UituSXZwNzU1Q3krdGxh?=
 =?utf-8?B?SWRjR0NJaVQ1Zk5QemlUQXg0UGVERFhzbWJTYm9ORTJMOVI3MVBaTDlXMHB2?=
 =?utf-8?B?Q1ArV2hGZi9FTS9qQkk5Y1dZbEdkSVI5SXl3M3ZaYzRxWHVJREl0ZkJWUlRu?=
 =?utf-8?B?d0VtREc1eDRRV0xCT3U5MS82UEdOYitZV3JMZWtaT0czS0NXTVN4Y01vK1gr?=
 =?utf-8?B?WDZIU2ZRS01Ta2VLTmY3R0llOWpJamRaajlXMFdOOTRKWGl3d05Oa1dGTTZV?=
 =?utf-8?B?T29yN3oydU5ST3F3RG5Ib3NmVnhYdEhtcExyRVF3REZLU0wvVW5CYzhyTEtK?=
 =?utf-8?B?ekJ1bGEvNTlpNFM5SFFyd01ZNCtnN3kxcGtYUTMxc1lKckorRzZlOGgrR2pR?=
 =?utf-8?B?SmdaZmEyYTJSd0tnT1AvQkhnNVczNU1LQ0pCUnNYRkRqMDdDQ3ZGenFXYW5N?=
 =?utf-8?B?cWZKVkJiYTl5WTlrMG52V3NvRmNvS1lQbnBtRVB2Zjc0dzNJZTlmV0FZM1ZL?=
 =?utf-8?B?ejMvcXlEYzV6MHZQWFNCblhuM24xTm1HVkN3OVZJR29WR3dpci9SSkkvSnl1?=
 =?utf-8?B?NW1TREFmSG5NOFNRU1gwN2ZEMVlaQXMzaXVYeDNjZ1h6RGtGQ3pieTBnTlI1?=
 =?utf-8?B?Vy80RXpIbWsxVUZtUW9oS1RGUDN0R1AzZHo5Q0l0WHFzM2NqNTZmakJUdmla?=
 =?utf-8?B?Zmp4NTFPK0pSeHR0QXl4L3VsL3VyTWZWQmVMSCs3STJFNDcybW1SWFdFbjkw?=
 =?utf-8?B?OUpwYTJFc1U5dUR5dU1Zblh3Nm4ybk41T0pieVVPYVBDZkkvRC8vSklFRUxZ?=
 =?utf-8?B?MU85YXh1T2o2V1QwWCtocksrSUZrNTNOS05hem5wek1IMW8ySk1xS3dhWWxF?=
 =?utf-8?B?ZndmM1l2OEVPUjRSY1NhUFpMYXIrZTJXNjhocWxyWXVNYkJrY0tMbWdvMEd4?=
 =?utf-8?B?eGhrZEZ3Ny9tQ3FhanFRU2tJelVhSUEzMkRYaG9KQ2lXZVBGdlJIUVM5M3Q2?=
 =?utf-8?B?dHZlVWtQUTJBb1pwUHJRK1RBZHZhMk5jc20vYjlYRG9GV2toeVFUUjBvbUNS?=
 =?utf-8?B?R3VHcFRuZGtQM1RUVlpBWi9NNTZPQ0ZRMENBKysveTFjcTkrY3FlM2tnWFNQ?=
 =?utf-8?B?RVVPWnRnRkc5RlczYVRwRWh3ek1WWnpCOE0vbWtiQjNWUzNTWXVSOVkyeHQ3?=
 =?utf-8?B?VjNwUjlIbzBOUXdnZkc3M2dHcFFJb0ZNZElVdmRSMHhYQVlXa2cxaGFVM0Rs?=
 =?utf-8?B?UTFZVnc3QTc4QVlwRks4WW10Vm4xZ29HaVFGeWUzT083V1dlYkQvdnMrZUpS?=
 =?utf-8?B?QmM2N3hxM2hmNVB5bDJJOUkwaFhDMFRMUXAyTEJVYkdBQnB6Q1Z1dEQvYmpD?=
 =?utf-8?B?Wm1OWTRsY2loODFwa2NFWmRBL1Faamh6ZnY2Z3lUU2hFbnpMTENiSW5IKzk2?=
 =?utf-8?B?V215Rm13TzZZWG04QTIveDFoSGxqYUJwU0xmbXBsNEFoTFplWHhObXBQUDY1?=
 =?utf-8?B?K1pEUXovUnlOZU1CLzNRNGNzaUZ4ek5lK0xwUXBFMWNBVUhxNlN1TVF0NW9w?=
 =?utf-8?B?SVZZVW5mUDkrSnFvYVROencvNElUTEUyUU44OGdWa04xQTkxYmpQYkJCOGNK?=
 =?utf-8?B?S2ZWL2IwZCtES2FZc3Y1Nys3dlJObGVHL2pYQ2ZPWnZqd1hJKzFLSUQ1Ukdy?=
 =?utf-8?B?NW8xZk9oSVdSMHEzdldLdGZZeWZDT3g4cXNwZG1TVTl4aEtIVTNsMmpHSUly?=
 =?utf-8?B?TXlGYllqZUNxa3lPQVQwZk00WWJIOEJ6dzYwUjhBR1JhcGZBSDVwVWZKcmdZ?=
 =?utf-8?B?UWUvdlNqU3BGQXp5Q0NqS1NNWStVYlQvNmJnK1o3NnVDZ3d0SytMeDBjMkZK?=
 =?utf-8?B?L1NTUkJWSjlxSUE0Y0JKMFNPbmFxTzN1U0hTV1RLQ0UwMW52WndUYjR3QVFK?=
 =?utf-8?B?ZVFoM2ZnUEprOUx5TEZZbElhYXk3NlNJejZBZmRyYmxhaWtTelJEbTFqUzIx?=
 =?utf-8?B?OUZOYjdyVThaeUR5SG5HamE5cHNNYWJ5WlE1L0FhSHBhUGd0b1BTQT09?=
X-Exchange-RoutingPolicyChecked: EzBaKJCLw7w5Ta1uxClQIdyVp7Qu3jsMpVe+Fli70A0dcVApNSLjE50/5u5jlmAyuE0CqI3TuyiqIQfKKGyWoJRkLVkd8QNjhtxsvd3iZSkQVB1P019r2sn0xclZbQ+21UpjxxNYbEUyS8A06VAlwGaXE5qm32tQ1BcUi7n2R0RokdgbJO+kSHuDORZIjzeBIthkn1fIxvR+Jv5YR1P6CJzsW/UFTCEZdUPP7i1JUFS6QBDdi/97F8gQyiwK2HZqq9vYJJdrrshuXN8MXS4QszbJ09y4Cd5V8IyVXaGayaErlhuON/TNTQTfEkDM80e9vNGTNCH4GgBlHy8fQSp7eQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f133932-dbb8-42bf-215d-08decbfd9b3e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7381.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 23:18:42.8349 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tNFA9ntxvZj5L+M9+Y8qLBPbQ+SRhHNHvJlkQWRmtexJjg0Or6JxjTBIZhRH2k3DA7fr+mdDqsd/mfadBEIdTH6ZpViDD3hlWahemcly0kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6654
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781651928; x=1813187928;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eG6eT/QQ32sMy6wnpGD69nZRgIaelIiILCNDNGOnp88=;
 b=in0Xf7d+62eLQhD4nHC3l55S0pdIg/WfMPjs4QK3frFnC2tM/3T8D56i
 GsH/NKkL7enoUdeEQtVHzdo5w12pjdB4pr6b/mm2mY/1NzsbcFnonRkr7
 707dl7ao0MQuaNIfYQ2zqCtaQZGWcdPrOF6iH45gtj+aeth3QL8pKuk5t
 q7VoFedpWO3cqtdd2rnM/WcWhLwyorYvrtcJC8fjFOtpfzvRs/Qhzl1T3
 ieR8LSG1hygGxWo6fiBL3P4O5saoZlVI1eP9CFNtFnsBqQeBar4YwhObG
 NVe9i+6r8SZ/LUwPiYpmUgdDmdct9mGA3bOj0rM34W0YZyzhKuSNWMq55
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=in0Xf7d+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: cap advertised max_pkt_size
 at the single-buffer HW limit
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:croepha@gmail.com,m:linux-kernel@vger.kernel.org,m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:david.butler@appgate.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org,vger.kernel.org,intel.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,intel.com:url,intel.com:from_mime,broadcom.com:url,osuosl.org:dkim,osuosl.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4A060695B34

On 6/16/2026 1:01 PM, Dave 🧔 Butler wrote:
> From: Dave Butler <david.butler@appgate.com>
> 
> Since commit 5fa4caff59f2 ("iavf: switch to Page Pool")
> iavf_configure_queues() advertises max_pkt_size to the PF as:
> 
> 	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
> 	max_frame = min_not_zero(adapter->vf_res->max_mtu, max_frame);
> 
> LIBIE_MAX_RX_FRM_LEN (16382) is the multi-descriptor scatter/gather frame
> ceiling, not a single-queue value, and it exceeds the E810 MAC frame size
> maximum of 9728. Per the E810 datasheet (613875-009 section 13.2.2.17.1)
> the Tx frame-size register PRTDCB_TDPUC.MAX_TXFRAME has a maximum of
> 0x2600 (9728); larger frames are discarded. The in-tree ice driver encodes
> the same value as ICE_AQ_SET_MAC_FRAME_SIZE_MAX (== LIBIE_MAX_RX_BUF_LEN ==
> 9728), and the VF clamped max_frame to IAVF_MAX_RXBUFFER (9728) before this
> commit.
> 
> When the PF advertises vf_res->max_mtu as 0, min_not_zero() leaves
> max_frame at 16382. The Linux ice PF advertises max_mtu = port MAC frame
> size (<= 9728), so a VF behind ice never sends more than that. The ESXi
> "icen" PF on E810 advertises max_mtu as 0, so the VF sends
> max_pkt_size = 16382, which icen rejects while programming the queue
> context for VIRTCHNL_OP_CONFIG_VSI_QUEUES (opcode 6):
> 
> 	icen_ConfigureTxQueue: VSI 8: Failed to set LAN Tx queue context for
> 	                       absolute Tx queue 64, Error: ICE_ERR_PARAM
> 	indrv_SendMsgToVf: VF 0: Failed opcode 6, Error -5
> 
> 	iavf 0000:03:00.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 6
> 	iavf 0000:03:00.0 ethX: NETDEV WATCHDOG: transmit queue N timed out
> 
> The VF's queues never come up; under SR-IOV passthrough the mis-programmed
> queue can also trigger a fatal IOMMU fault in the guest. Forcing only
> max_pkt_size back to 9728 (and leaving the Page Pool rx_buf_len/
> databuffer_size untouched) makes the VF come up; databuffer_size is not
> involved. This was confirmed on two E810 NVM revisions (3.00 and 4.51) and
> two icen versions (1.14.2.0 and the latest 2.3.3.0): all reject the
> unpatched VF and accept the patched one, so the trigger is the icen PF
> behaviour, not the firmware or icen revision. Reported by several users on
> E810 + ESXi icen with v6.10+ guests:
> 
> Link: https://community.intel.com/t5/Ethernet-Products/E810-C-iavf-driver-issue-on-Linux-6-12/m-p/1737490
> Link: https://access.redhat.com/solutions/6973766
> Link: https://knowledge.broadcom.com/external/article/404315/sriov-enabled-vms-network-adaptor-goes-d.html
> 
> Cap max_frame at the single-buffer hardware limit, restoring the
> pre-Page-Pool behaviour while keeping the Page Pool rx_buf_len unchanged.
> 
> Fixes: 5fa4caff59f2 ("iavf: switch to Page Pool")
> Signed-off-by: Dave Butler <david.butler@appgate.com>
> ---

I suppose it makes sense to restore the previous behavior pre-pagepool
even if this smells like a bug on the PF side advertising 0 as the
maximum size.

The only real downside here would be if the iAVF interface is ever used
again with another device that supports a larger maximum frame size. I
suppose we can always handle that in the future with an additional check
based on some other data. One possibility is to only apply the final
maximum here if the PF actually sends us 0? Mayube not worth it until/if
we actually have such devices.

Acked-by: Jacob Keller <jacob.e.keller@intel.com>

>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> index 4f2defd2331b..2632eeed776c 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
> @@ -382,6 +382,14 @@ void iavf_configure_queues(struct iavf_adapter *adapter)
>  
>  	max_frame = LIBIE_MAX_RX_FRM_LEN(adapter->rx_rings->pp->p.offset);
>  	max_frame = min_not_zero(adapter->vf_res->max_mtu, max_frame);
> +	/* The PF programs max_pkt_size into the per-queue Rx context "rxmax".
> +	 * LIBIE_MAX_RX_FRM_LEN is the multi-descriptor (S/G) frame ceiling
> +	 * (16382), but that exceeds the E810 max MAC frame size (9728); some
> +	 * PFs reject the out-of-range value with VIRTCHNL_STATUS_ERR_PARAM.
> +	 * Cap it at the single-buffer HW limit (== the MAC frame max),
> +	 * restoring the pre-Page-Pool behaviour.
> +	 */
> +	max_frame = min(max_frame, LIBIE_MAX_RX_BUF_LEN);
>  
>  	if (adapter->current_op != VIRTCHNL_OP_UNKNOWN) {
>  		/* bail because we already have a command pending */
> 
> base-commit: fbc6a80cb5d3fd4ac4b56e8c9d791dd17be890c4

