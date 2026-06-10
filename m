Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9h5UECRsKWpzWgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 15:52:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0116D669F6B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Jun 2026 15:52:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=LHFWV7dD;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 571F440919;
	Wed, 10 Jun 2026 13:52:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zvdbXyxzuJzK; Wed, 10 Jun 2026 13:52:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD46B40931
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781099552;
	bh=JYuLwKkAiyuJ2UsU4oXqQLHbMaRWmGZQ0/wwnPjqNiA=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LHFWV7dDi0ndnYd2wJaMFfkDUapY8oaxFquiiUrL01plmtW8eDdjOPj9p37PTPByq
	 4uaZkzYyL0x4JJ4LE6ILsHma3I++Hi3wKSmk32fSRi7J7XsfqWiwRAsj1HOVUQEB4b
	 gGqQkgijLkikcDYH9KSIRbUOXJmzEJcLCyLklhAGATUb8x0IEmnA8F1n8RhU1GOiyH
	 CXDlDaxvPcR+2YAmKXBvKeYmNASMrwSiqjAQopUD/GY/2oO0pukmUwqC87E6Ic3SV1
	 XRmVVC36hX9JRdq7XJoL0Z/o3uIt/C9VJyiHOAam7wcDfv0nusQ/bEO6GzskOjDL1G
	 XbjhHrrQryTTg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD46B40931;
	Wed, 10 Jun 2026 13:52:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 68AF525E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:52:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4EAB0402E0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:52:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wt_1cfGY5EEO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Jun 2026 13:52:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 369C340071
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 369C340071
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 369C340071
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Jun 2026 13:52:29 +0000 (UTC)
X-CSE-ConnectionGUID: eAh7Q363TmCz5vksB67LIg==
X-CSE-MsgGUID: /UG11spDQNCwTeNOoH2FAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="92999877"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="92999877"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 06:52:23 -0700
X-CSE-ConnectionGUID: FpmGXYmXTqOAnExevYaHQQ==
X-CSE-MsgGUID: Q/UKWu2rQd6T9adRJYAeHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="246030670"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 06:52:22 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 06:52:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 10 Jun 2026 06:52:21 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.67) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 10 Jun 2026 06:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dW+BUwHZ8axvnygkc1h1NEtOH5jDKV8jQCDIeOtkYkGSq74ZlDu8lYJfaKxY9RsPnbhB1YJrUDhncyGEyrUM8bQC+r6q35VfJBQd6yypCFCFnh/JfxtAlzPk2sQFGxoBIdVLjgEPnVhtAMrdQonG/pK1D7VCYBvDcMoWm5aRVcKKTJ4QLGwgPtldd24J7DaE26fx08gKOdXCyegfq+nWxYc8WYQ5XpwthG/UFTC+AlVV9RIXA6JAwF/oq9+IK+CklvF0htF0AP+NzkCTLL23/5VuRiclrZKjKMcG7ELYBmIhu6ZqMNalvpeXg5XhRykYF8xLZ6hebCqo2V9UI8Zy2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JYuLwKkAiyuJ2UsU4oXqQLHbMaRWmGZQ0/wwnPjqNiA=;
 b=QlTX6q2eJXqqKPPAAwHwxaCA1/aDNFCcNvgTa34bvw8G34H4/aTnAjc6Zymrqg05Cc3h5wgKabT4AVobAruiNZrMz9pT88MciOD/m/oEq/oih/U1QDDrEBK13DZ8MAMg0gvy2wDRUjpt3cOXqQwCBIsmg8knMgx1LwuBWlKmwBNS7sNfvd+V/SLuiFycbFLniMIvdTKIXA1LSJqNuFIyHN6GGgY+rTgKDU6xKhOBQyYMakRXicQYU/0vZZb/HUGGSOg5kHUMrBC5KGQDv7k9xCTgnpK7iKwrNZ4zPqH8J/4LobD8XpVRsDU6A0Qi8ldV2PkHNYTJ7tkwYAozXrHtew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH8PR11MB8064.namprd11.prod.outlook.com (2603:10b6:510:253::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.11; Wed, 10 Jun
 2026 13:52:19 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::6aa:411d:4bfa:619c%4]) with mapi id 15.21.0092.011; Wed, 10 Jun 2026
 13:52:18 +0000
Message-ID: <694ff338-1655-4c19-9f15-596025ddd9b5@intel.com>
Date: Wed, 10 Jun 2026 15:52:14 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>
References: <20260602172024.2285947-1-joshua.a.hay@intel.com>
 <20260602172024.2285947-2-joshua.a.hay@intel.com>
Content-Language: en-US
From: Alexander Lobakin <aleksander.lobakin@intel.com>
In-Reply-To: <20260602172024.2285947-2-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DU2PR04CA0343.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::29) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH8PR11MB8064:EE_
X-MS-Office365-Filtering-Correlation-Id: c077b096-ec83-41ef-7783-08dec6f77c9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|23010399003|376014|366016|22082099003|18002099003|6133799003|11063799006|4143699003|56012099006;
X-Microsoft-Antispam-Message-Info: +qXRHfrOO4ih+TkIvFSumdy+uVMaDvmKkBeJeJhEeOeqaCkX342UBf3LHC5RR5ExTJP86A517GiLD1nq/JV9W3meAbiHhZFV3f7Nkb4XctNn/JIsXTjO8MQ9WlxOAG5GbVRlC3ZzwnJfhtpTKM/6ty/KYAgJxALrmn09zgj/Q5xjcxsr0xyghDs4GHryl8dqnhukGiN1WjWf2RykbYJsizUIxZhAoTsH/uGdThNlKAZyVhrtq677ZHUQpCFjezJi0QoLveEGe/2AVKGH6pXvgSRsX08G/IyHhx73ACh9/NTNXtB73BSo1eSLpCR4PcV6Uhb9sizcm5uHS5pu1jSQV3qj8s3J02NLuZpTxDb5HqvRrVCj4E8QtAMUz69cmwvRV9qg06vWNdutqpoLV2/3KxsvDIpCFZiqxv4BNYD2VIhX8txu8EmRKgE7r64A0AwjXrMhmqJNFAXOVykaz5lzETtAbQTBCVwV+TibEcYSFp94QjM5IcJ/A9y59R75jFZS8WhGpKJCQUQeGETvTW/7q/rw41WS8KnP8XrdP8J/vdTbvRLrtIBnoQWWr7tlXkMh7IPXWx7zNFR3Jz+DjDmx6gWWKY/csU385lQik2ZpBJezzZJ+/JbrGffd+/seWmTbkR50mRA6X0jG+gFc/M4hOIPPuLY49RicVTjArYnHrxAXhep/6sqy8D/qAdIt9MXx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(23010399003)(376014)(366016)(22082099003)(18002099003)(6133799003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHQ0L3dOQUJCNzN0ZUJ1Nnh5Q0x0TXloMjUzb2pmQkVlVURIRzVBakJIcmE5?=
 =?utf-8?B?S2ZBS25kbkFWOG43V2k3K1J4VXVRbCtCd0QvMncxUSt2Skc3YTNlZVYxL1Fy?=
 =?utf-8?B?OXR3WnBKbHowaEcrc0t3bnp3cUZSZUJONGE4YnlDbHltLzFNY1Z0SVhOUnha?=
 =?utf-8?B?UG5ZdG1pUS8xMDlLL1JIS1F1TytoRFFLbFNlditablowejJYQ1FVVE1wcitO?=
 =?utf-8?B?Q2VmVC91S0Y3RVFUT3ZycVZMemVxNkc0b1VJcGc2cjlWZUZ1d0h4L3krK0Yz?=
 =?utf-8?B?YWZiYzZtK29TMGtWQnROZ0pOY0ZuME54VWVaSnJjMVROb3o1WmMvb2YxY0w4?=
 =?utf-8?B?L2w5ZkIvZllUU3FVTnFDcm1ybFBKUDF2MWljcjEvL2ZDYWFRekpJdkNqMlhM?=
 =?utf-8?B?dFp1QmpvbFp5VzNvMXhHcXF1M1FrOHRydjZJTG0zdGhzeVVxVEovTDdEc2xV?=
 =?utf-8?B?S0ttVWI3KzRXV3VRSy9ZN0NsY3RxM2xPREowdDhWTENPM3VQZ3lxVTlDd3Js?=
 =?utf-8?B?UElGcFZheVFmN2w1SFNOUUhQNE9HTTJzS2prZU56LzRpY3hhckJiYWRrSHZO?=
 =?utf-8?B?VE1haVgvOC9rbUx5ZWUwWTBMcVdpcTFITTBZZUY2eEZFQkZTQit4ZEF1ZTlQ?=
 =?utf-8?B?WTlQMG1jQVlmaHR3WDlieDhudVFiSW1iUStzalBubllQM1R2YWR6U3I4UkNS?=
 =?utf-8?B?OEFXNHN0Z3lMVHhDMU96RGhWSVozbCt2dVUvUmR6c2U1SWoxYnhsWGNzY0tl?=
 =?utf-8?B?L3U3cThNc2tjc1Zselc3eTJIZFIwTUNFZkd3R0szbUVubkV6aW8zeHpVNmZy?=
 =?utf-8?B?YmI2RzYrSi9JN2pSZmpybmFldWRWQVQxb01TWUpWMTF4MDUvV0hHY1F1NlFv?=
 =?utf-8?B?NlRrWm96NzVjSnpScFRhTEFVcms4bThzdDNoNW1aV1FVMzc3UGN3KyszckJZ?=
 =?utf-8?B?b2dtcmtqcU9zRVBRNm95OUphMHNCcTUzNTV4T0pOMmo5S2V1VGk0OTNDNm1B?=
 =?utf-8?B?N3hpRmhKWnh5Z1hWSnB0QVVOQ09sZmlEVG9nZjM4UXl4cG9ZS04rdFZzenRi?=
 =?utf-8?B?dlV4S1JOeVRuZWxVT0dTS21sbE5QSmJWaVZYNGwrUXhrR0pQMVRlSVZENC83?=
 =?utf-8?B?L1liZGROeUFQS21VYlJJT2lGeDJhUm5xQ3d6ZWM0UnJTdjVyYUdiRU1jdGFo?=
 =?utf-8?B?bVllSHBmVzZmZTlaRnNxUUxoQjJmd0R4eEp0WnpHaVVwRlJaZm9vQ3V6VWd0?=
 =?utf-8?B?TTF4cTVrQklLWTFWUUFUOEY4eURWVGc4eVBYZXZpUno0TzRDTzVNWXFvMFVN?=
 =?utf-8?B?Vk11T2trRE13c2M1L0lwcndXRXErVlNQNW15bmt3bWh6R1FPTWhERm5jeWxZ?=
 =?utf-8?B?cnFLelNNcFFNWXZwY3ZkdnBXaENjemQybE9LejhpbVNQU1FjR0xyMzRQMGpw?=
 =?utf-8?B?dlhuNjZrUm5XRnNQMkxZanhsclUrdVY5dkFtRnVuTkVJbzFUSU5vODA2QVZK?=
 =?utf-8?B?OThmbmtrNVl3MHNaY3VMazYxN0pRRjcvdWpZbCt4R0Z3c1pRYnJ4NENuSXJY?=
 =?utf-8?B?a214cFhLYklkclUrcUthQktUSFIzVnRIMGdkYjlqRkRLeU45K3M2bW1mN095?=
 =?utf-8?B?d2hiRCtYaVNXZmRSa3M0NFB6d3N0aUorUzFuZ1RJV25HS3lIL096a3huL0VV?=
 =?utf-8?B?NjRLN1lvei9MQTh2dGsvRVMyN0J3bzNMdE5MWndZcFVvY1pWeGtwazVYbmhz?=
 =?utf-8?B?UDBFVEo1eEdLWHUxNmdrdGlsTUludGZhdWNsSUEzc2J6bHNaQlliNVVoRmw5?=
 =?utf-8?B?c0ZzdFNDeGxFVUQ0SENFMFRMVW1DajhQOXg4aW8vellmTEFCQkxncDN0Qm1i?=
 =?utf-8?B?UDFibUZjdXIyY0Z6RVBML3NJeFlRUGVJbE8zaXFLejNha0dud3VnNDU0WVZi?=
 =?utf-8?B?OGszdkl5Qi9vMG81ZzJmTFNXT3ZDejVyNmR6NGIvSjdZbHhUcGdzNmY0OFZs?=
 =?utf-8?B?YWcxU2wvYUlacHBucUV0bzRIK0ZQVVROaUVVQXVUQnhzSGlBZzZ1UmZHdE83?=
 =?utf-8?B?Z25uLzdPcG1MR2wrTU8yWHRrUHFQTGg3TlZ5Y0tnV05xcmtxVVBLYmhVelFZ?=
 =?utf-8?B?Snp0MmdRMEswa2VGUWQ2TFc5U2ZyN2JDSW4vT1dlN3RpMGdUTUcrckxrTmNO?=
 =?utf-8?B?WklQSDdQN2FrMHJybkxLZk8zYlJZc1N4bU84VlphNXIyNnVXQ2hMcUJmRnF6?=
 =?utf-8?B?YjF3WEtuYzB5T1VkY3V5c0RkMy9wS3h0ZzhqWWNmUEZUeVVPdXA3VWdnSlp3?=
 =?utf-8?B?TlFCYXA2QmpvR0R1b3Zydkwyc3ZmT3h1S3JjVWtHczgwVnh2Z0NaZFRLazFp?=
 =?utf-8?Q?CFDBa25749uVy8CI=3D?=
X-Exchange-RoutingPolicyChecked: pwgMYsKZ/XNNhR26wpQFEIXbnQYddIr13LSfWJK5KwSdqqVikD8ecy6jQGoHnY/Lwti7S7LEYbn8o4lPmABqepuVMhnJI0V/cZNeqiXk8jJVKntR/a9Q3Y9GqvO+tVzi0aWgU/t+Q4WE6zL4a03JUPU49uUDY5pZQrJiOA0xaC3GZeXZPtqklxxVmUmBmmMWRwvo2Fts6fDnHo5km+9Qa7yD91ranFKUfPTKvOALK10blo5OPvqiZlygswEIZYbhhHNzrdMEDFL7VQilQ3CfTtXwqAMTAYtgputrQd2SW/n5rHqe4yufN6TPnFf73pEZXLIDrEajisOJV4g277tajw==
X-MS-Exchange-CrossTenant-Network-Message-Id: c077b096-ec83-41ef-7783-08dec6f77c9f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2026 13:52:18.6370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hai70TGfQrM4AvFBSzGF58Ra0tMhiVi/icXyN4HMJ0SvMRFMrk7Kr73XmC4crl+ylcDuu838hTlPNEEvaHAzkBypA+5eq8Nhv/EhIdeTXW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8064
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781099550; x=1812635550;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Z1Zj++55YDOOadrqBianwKovRBAKfVEU2jft9pGEqLI=;
 b=EABXgvQgqWwO8zaJMKi0yeLRlA3XqhLDmPl9+NGYVzK4qHb0+iD0ajdF
 fxSeFeuiC9g4ZclRwrNqJ/ZVPTGtF/L/dPdQpZzA5xyR0GyGjDcFoxwG2
 1qem5cS4z1KcZAUQwIpcDmu1xUoASA2oQWMCwB877eOvuFh9tTawM+UdW
 LWVTiGndWp25vfhmaj8pO9xp5RSow7MbDQid7pdzcAwREJHykVRXXvDfm
 EyRPFTDUon5youJjZnW9h4TPbP1ENruvqmPxybGkCXd0xUboj8+lKAVjH
 YcxhQLQAn09goZq29Dn/bT1LRrx0IkcuqpdS/TTUq2QxyJzv7mYNU/6il
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=EABXgvQg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/3] idpf: do not enable XDP if
 queue based scheduling is not supported
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:joshua.a.hay@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksander.lobakin@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0116D669F6B

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Tue,  2 Jun 2026 10:20:22 -0700

> The current XDP implementation uses queue based scheduling for its TxQs.
> If the FW does not advertise support for queue based scheduling, do not
> enable XDP. Add the missing capability check at the start of the XDP
> configuration. This will temporarily break XDP while a flow based
> implementation is worked on, as well as while FWs with queue based by
> default are rolled out.
> 
> Fixes: 705457e7211f ("idpf: implement XDP_SETUP_PROG in ndo_bpf for splitq")
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> ---
> v1->v2: use local extack to use pass either properly initialized
> xdp->extack or NULL to netlink macro.
> ---
>  drivers/net/ethernet/intel/idpf/xdp.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/xdp.c b/drivers/net/ethernet/intel/idpf/xdp.c
> index cbccd4546768..ecec7db4ebc0 100644
> --- a/drivers/net/ethernet/intel/idpf/xdp.c
> +++ b/drivers/net/ethernet/intel/idpf/xdp.c
> @@ -510,6 +510,16 @@ int idpf_xdp(struct net_device *dev, struct netdev_bpf *xdp)
>  	if (!idpf_is_queue_model_split(vport->dflt_qv_rsrc.txq_model))
>  		goto notsupp;
>  
> +	if (!idpf_is_cap_ena(vport->adapter, IDPF_OTHER_CAPS,
> +			     VIRTCHNL2_CAP_SPLITQ_QSCHED)) {
> +		struct netlink_ext_ack *extack = xdp->command == XDP_SETUP_PROG ?
> +						 xdp->extack : NULL;

xdp->extack is NULL when removing the program? Interesting.

> +
> +		NL_SET_ERR_MSG_MOD(extack,
> +				   "Device does not support requested XDP Tx scheduling mode");
> +		goto notsupp;
> +	}
> +
>  	switch (xdp->command) {
>  	case XDP_SETUP_PROG:
>  		ret = idpf_xdp_setup_prog(vport, xdp);


Thanks,
Olek
