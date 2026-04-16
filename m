Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL7PIjds4WnYtAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 01:09:43 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D90415750
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 01:09:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A77ED60B6C;
	Thu, 16 Apr 2026 23:09:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1KNTfLwQ_yb3; Thu, 16 Apr 2026 23:09:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 631EB60B6D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776380979;
	bh=Ioo4bcmidnRjltEjZ0KOrxsLB4iP1bq1YXByWGMrLzE=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Uof8RXwqAhj6rdzbHYS3Gz0eEm+Q8xofHLDGDouxVtZYWJ5dCxncdCCwDg4UAQ+Pm
	 PDbFPX7tUb/RymVetdS8IYN0hClMsRy9B69YlinGFf6HLOfKexBLqlgVCF/1vc5Y7i
	 bWwOCLMiX/a4imM9IgYjuK76/EwIxjjEj10GDVyRhKoP3libZqqF741yN9V5N61VV0
	 YxTHotdCJY8unkMhQSscs8D847WaRSG7irN3FZcEiDPPzwgcnaWA5tYQJo2zFQ36/F
	 6qoliDhGrHl9UuAowm/q3cRqHqogYWHsivL6fCTbqS0aY7w2xbaLJzMd6FtttAckt0
	 Q8OhwZLzQxncA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 631EB60B6D;
	Thu, 16 Apr 2026 23:09:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FF6B270
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 23:09:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0134C60B6A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 23:09:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3K5iT8Qz2gEu for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Apr 2026 23:09:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 450B960B62
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 450B960B62
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 450B960B62
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Apr 2026 23:09:37 +0000 (UTC)
X-CSE-ConnectionGUID: SrziGTAJSPiyYtK98wiBfQ==
X-CSE-MsgGUID: kc0afcnkTv6HGITr7CWHuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77270163"
X-IronPort-AV: E=Sophos;i="6.23,183,1770624000"; d="scan'208";a="77270163"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 16:09:35 -0700
X-CSE-ConnectionGUID: 9ofOmLOlRUaoN7xiZ928+w==
X-CSE-MsgGUID: n2PcrJhuSseUqqsaecHeew==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2026 16:09:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 16:09:34 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 16 Apr 2026 16:09:34 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.65) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 16 Apr 2026 16:09:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FanZrMzVeeDEUVODl4/e7ahBYjew5mgJkvHdA3NAoc/kkh8SgowZYUJiq3MVVBtOforIOT0yxwrM64fZhOaw+5ZQ6ewYXe/hPo+/humW+O3vFQf6sHQA2nV4d6it3MYodyV56d286PrDPnnkKzI+3V8VCYBDyISWBDavaa4tFlJ+O+K6bkD/o8ncxXH9+s4LhCM8jbNa+6N6el7mFmrEoZkU2AeI5WTPwz8kb7PF5Zuc6Xz5053v41vIwyxMgHktZOrve85cPP0AsNouu6OjfNhTvrMI3WbTwTZu0fKzIH70rsrHsvcGT0w0lawwKhVhGr4bDtQetNvIAEwVd0lVEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ioo4bcmidnRjltEjZ0KOrxsLB4iP1bq1YXByWGMrLzE=;
 b=LXUM4brtzZhihhRCgdT4tgRZ1TMqyj57yrOM1d9EdgATpmAikgqS6/asshESEQ6ByqJkrLX+6kaKyHuABluOmSNrLJcQPDJsG9qFP9YHOfqcM8JqMWAqsz2rI/VOPaEe3IGp2VyH0e6inZ3R3uk8xOzPnT9p6TKOo9jSn2G8zUrrOQj0ZvLbnecajlov63PgU3mInWgIbAHOzNN2qfrZj0AnJIe4NdFTSlVeBwOf2MaOGdBdd0hKFkRTgsWnqiaAC/DVdsdZ/J1Yi+zj2hmeXxfzg6Lxo6HqrHPo0V3pv0mU6RIcxhsNuOGQcsOXwK/2wy2ke94BrGxn3TKnGqlSCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7579.namprd11.prod.outlook.com (2603:10b6:8:14d::5) by
 PH3PPF058255456.namprd11.prod.outlook.com (2603:10b6:518:1::d06) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 16 Apr
 2026 23:09:27 +0000
Received: from DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e]) by DS0PR11MB7579.namprd11.prod.outlook.com
 ([fe80::4199:4cb5:cf88:e79e%5]) with mapi id 15.20.9818.023; Thu, 16 Apr 2026
 23:09:27 +0000
Message-ID: <6539cc33-9294-4312-aa1b-5df311dce79f@intel.com>
Date: Thu, 16 Apr 2026 16:09:25 -0700
User-Agent: Mozilla Thunderbird
To: Jose Ignacio Tornos Martinez <jtornosm@redhat.com>,
 <aleksandr.loktionov@intel.com>
CC: <anthony.l.nguyen@intel.com>, <davem@davemloft.net>,
 <edumazet@google.com>, <intel-wired-lan@lists.osuosl.org>,
 <jesse.brandeburg@intel.com>, <kuba@kernel.org>, <netdev@vger.kernel.org>,
 <pabeni@redhat.com>, <przemyslaw.kitszel@intel.com>
References: <IA3PR11MB8986843CDCC4F6DC6CD015FDE5252@IA3PR11MB8986.namprd11.prod.outlook.com>
 <20260416055141.19127-1-jtornosm@redhat.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
In-Reply-To: <20260416055141.19127-1-jtornosm@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0085.namprd03.prod.outlook.com
 (2603:10b6:303:b6::30) To DS0PR11MB7579.namprd11.prod.outlook.com
 (2603:10b6:8:14d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7579:EE_|PH3PPF058255456:EE_
X-MS-Office365-Filtering-Correlation-Id: c17cdfc2-6a89-43ed-35e3-08de9c0d34ec
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: OSCqSA2LzrNmw9WBmW3SzxiLJW48/qQsdfc5wRsFIYhnl1WfY1z4UeDWXFpWVaVHVBzUlhBo8M/Nm/PdymywKnn3CHClR9s8O0qEjoCE/s1RIg6r7RD/exHQfm5X80oDGjHzXp4e2dgr3KsYCtUlVCHZfzSnStUetyd5gehXt5BUUo1VUnirvlOqDPY9151puGVlITmAV/T7fhr8Lr9rdnUY7JtULF/508eqxOoFTAYH7msDMRH/6ApYhp1d1nN9RKk9lZgGbe+TU5gNHOgiJRpYji58BJ/zLg09cOh+H2fzwypK04md5t2z6MIyWwfDKpE8B2Q0U3w2tJbknw6BFQ4SN9QQLyRrOjSCLUN2PhvxzlcswXBTLEL+ooKORS5aRin4bg/A3vNGL1cLD0BrlwjS3SemuFU3qORPsSgOk5GZDRPUei36IjQURf95Ow6MTqAGMtisbQGV+/qDA8DLIm8StNUynGsq7X5bWjmySVzB2IwFxI/dA2E25yYkyH27soTBZT61lCNgO/7n6heX9pZ1PcCZclx+R93n7ITleysAcE6gMvGlkfOjk6KLb7Dsl26XNCuELht9bbHdrZOyswXTGOvWwcQgkBEH0i8QMi9tumXpN2AEc+anmK39Avn6tK/1IHKntyAgx+XnHgbvKAUUuOx/eqsTgZG0ZUdN2ae++sLo18LVrYrOAtr7VAetdjxAeBahvfHJRuqH2+Bcm2iOsmx70ZDXxYPPWCD9Fic=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7579.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWlTTDlPaC8rQzBuaHFKYXJCWlllYmtUNHhkeG00WVJ5L3JXc2dxQW1ody8z?=
 =?utf-8?B?NWhhYWk1ejNiSlBYVkNrdE04WHEwdWx6U2JjTHEvQ1ljSXlqTklkQitXZVNF?=
 =?utf-8?B?ZlA4UGRqeG04SFhCdzErL050LzlteURSeFNQbGdxZlpmckE4OFpkUDlYV1FS?=
 =?utf-8?B?Nmt5QjVubTdUS21MaGgwYnAzajEzN3dTTzd3cHdEWkxPd1UySEJGc2pIc25n?=
 =?utf-8?B?TUMvUmI4LythUXJ0Mm9ORTg0RnYyLzhhbGdFTjhFZzM4aEpnT2U3YVh4Tjls?=
 =?utf-8?B?SUorUEhkTnV6MGRlZHhyRnByZXVLeXVESUxWcGkweEloUlZOZHpmNHFNZU93?=
 =?utf-8?B?QmhLZWU2bnBxNDYwbWNSWDI3c0ZadFpjTUh6YW0zR0d1L0s0MnNZOTNqOXpC?=
 =?utf-8?B?aTNvYXp4WUQwc1FucGhMYzBKb3lTZEhxR2VDTk9NVjRYalRhSUc2bHpFaTk3?=
 =?utf-8?B?bDNDMHd0OGRYV3JOdXI4K0pmYU0wVDIzQ1AzNllDdTdhRFNUVVM1c1FBSFdG?=
 =?utf-8?B?ZmRQV2xiUzVkdS8xTmtQV0haSXBQR3pvTE1GQy9LVVpBbzA0bCszemZkMUwx?=
 =?utf-8?B?K1l2L3hka2lJcXN1S3RMTWFad3NxYksraGwyaWxUWXBhbWUyQ3U5V1JzV0Ra?=
 =?utf-8?B?N296K09tVFZOV1pDeExvdEZINUFtekRiWlNxWkdFVityWkxIUTgzS0piZVFZ?=
 =?utf-8?B?dTZIRWgrNDllNDBibUFRZzBNb09Rc0R3aXRrRnVUY21rT1VZY0hCdnBjN2gy?=
 =?utf-8?B?RDVTVzhYemR6T3VhR2dUcGVId1kzUlEwUjRSLytVamIvd1p6T3hqcHlYYW9B?=
 =?utf-8?B?Z0dOQnFTSmlUR2d6WnZvS0ZOclhxK25vTm9mMGl4bkJQNFJZMzNhZWtTMlBX?=
 =?utf-8?B?bjU2SUtQckt5alUwTjhrRG82RkZDRUhVRmpFcTNSVEU4TTF2cks4d1Z4S1NK?=
 =?utf-8?B?Q05ud0c1TVFsdWRoU0d3eWdjM3BmVVk5K3BtcGVBTklqSnlVTWloOFhhNzBm?=
 =?utf-8?B?RFY3ZzllV1Fwa1JBNjVlOEtPZXI3MmtJcmZKNFFpTGFMaGttaVc1WUJQZEZU?=
 =?utf-8?B?ODYrT2xlSFJ1SVY2eTJrWXM4RFNJMnF5N0ZuVnNiYVNCYU4zUDVsbnBScnFw?=
 =?utf-8?B?WjRqcFJ6VWZINVZNVDRkWlgrS1MxdXN5UnZPaUFYYnB2a1FOcVVXZU5sSEhG?=
 =?utf-8?B?MjlZeTQ0bWZ2Skgyby9OMlliU0VDZXZYVkpWVms5Z25jbkU1STVaeTUyZGln?=
 =?utf-8?B?N3p6SmtkRFRQTXFwNFpXVmgyaUZ3Z0RLeDMzL1hJWGhadTF1UVJmNDhzbWJU?=
 =?utf-8?B?Zll3aGMyc3ZqWTVvSjZXUnptK0JaMTlhMXh1clo5aTYwMUFqL0tFSHU4WDZC?=
 =?utf-8?B?a3luWW5QblhEUXBOUmxpYlBOb1o4eTdDWUNibFk4NmdkOGsrVGNqd1duVXgy?=
 =?utf-8?B?bnd4cTZqQjQxVVpCZExqaXdOWVlmcHR1VHpveXgzbnRUVUJVaFdwR3J4NW9h?=
 =?utf-8?B?M0RpWmJxZ1Q3QmRSUW4vZWY5cjFNWXZqbVdZenR0OHJuMlY2Z1dwdUdYVDZY?=
 =?utf-8?B?S0Rid1NiQjFzZzJPN0h5TitrL0FsMFp2TW5ibVVCSGhjUmwxWmxtYnBFOENs?=
 =?utf-8?B?bklvaU95Zll0MGZkVlRMQVJsVm1hZVcrSDIvZmJYMzUvY2F6akc3V01lUFB5?=
 =?utf-8?B?NnE4cWlNc3Qrck9ETnEreUJKYlovUzlCUG9sK3JhOEROZXVrM0Jvb241OWRq?=
 =?utf-8?B?cm12T2p1OEd4ZnRYZXV6TFVxTHlKK3JnTDRqNXhmUUlVQXE1YktyTTYraVdy?=
 =?utf-8?B?clcwMmdraTNMazlsQlBsL2xJVXA0c21wRXdvOG9Cb3hwblVSaXpuaW1sL1lK?=
 =?utf-8?B?UExNaXk4Vzl2SDZoZnFCU1dhTXpoN010WmpId3FsZTdockNtajNmR2hkc016?=
 =?utf-8?B?TTd2RkZ2dTBPbEdMZFVnWkRmUWhVUFJDVm1iUU5Remd2T2lBdmF1NlMrSEJ0?=
 =?utf-8?B?cmdFcTFOOHZKb1doUDRuUGlhOHBzZU9Cc0pwY3JBanVBa294L3p5WnlGSXJ3?=
 =?utf-8?B?bERUY3hXNVB3QnZSa0ZEWlE0SDc0WWY1RC9hTVhTMzMwUWwyL2dMMHdMelgz?=
 =?utf-8?B?S0dwNzVMT2VlMjJXblBkWDl6NTRHTzZsUTY1Mk5VVERDRjF5cjI5bnFTVGNN?=
 =?utf-8?B?SHlJcU9kbk4zeGk1K2hwcEJGRVZIN2pzanhBdUJMYmxMbUp3Q1lZTU5BQk5T?=
 =?utf-8?B?L3NHQUUxYjZYOFFFSyt4c0hDR1Ywb3lYSTRJM0IvbExtYVRwcUc1bWp1V3Fz?=
 =?utf-8?B?TWwxdE02R1k0VkJZUWYzYnMwckpnaFhMaXFVMlZLWnFhdjdGeFhNZVpaWC9L?=
 =?utf-8?Q?gUP7LDCTPsI9GMtA=3D?=
X-Exchange-RoutingPolicyChecked: q52eFbh1woPzpcuMUlxUEpawVPXp2u/+vssDHBACieb/DcqVPXxc/Y3v8CJzMbS63LbOtVCqb+bDvpXvVZafAX3/H4RKs9jytBi07mFHF2Nk883p7r7r1LA1NPUcC4uL9mnUahrluJoynisd+Se2rjNVDRG/KTh0cNmfY/RWGlALDrroktJPY6EBb2GwDzRKA1ogzn6jkVf9KBLGrL337gEMAVsamoIolJfd9uEgvZTnovwCLZdLigRfoIVpLQEcTSGKXPg335fd7Q72QAF0p3fHBNcHUa1J1mJK+i7KYYknzmlDMBacV++HtoihzUH9a1wIA8ECEuaW4wxia/zdCg==
X-MS-Exchange-CrossTenant-Network-Message-Id: c17cdfc2-6a89-43ed-35e3-08de9c0d34ec
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7579.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2026 23:09:27.2391 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uM/X8IjMvSzZd8SfB+lzy5+Ry067ARarrD9bRkdKE1PXReTyWpnkxvftmwyfm6PJsX1dotmKfrMcGfmwwmIOl6z1mQ5369buQrbySr6/8kE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF058255456
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776380977; x=1807916977;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FW9bpJD105SeprbgpgC/4+gryj71jd7UJlT6mgaiGJ0=;
 b=Py8az12wb2VYJrsX9IQVOP16WGm19mt+ZoW04lsbHDv1qj4CYZSFYuhr
 UxdPe4aLpwV2FQh3Val47TkQr84YpjezZ8HiQVbonQHFI7djR94XLL4p7
 QXQku3mSzuSy7PRgBIzx+5lPwdI5V+nTbgutpiGFmesoIl3jAtnZFP4w4
 3tVCc2xhiG/lLxGfE+TPvUjc/fx1ZsWijeRgSkugB8+zZXQA8tXuKtgFQ
 DRN8nzXk5GmCijWa4ZBCbbe36U3daeu70b0rfXYvcewm2Jw3ujRqQkG5u
 jI/pZPZpvojvzS5lvxD4+vbpnnT3upQ1GK7ayPXiCJWEkmcVkZRW/7lvY
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Py8az12w
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3 5/5] iavf: refactor virtchnl
 polling into single function
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
X-Spamd-Result: default: False [8.29 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_RECIPIENTS(0.00)[m:jtornosm@redhat.com,m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:jesse.brandeburg@intel.com,m:kuba@kernel.org,m:netdev@vger.kernel.org,m:pabeni@redhat.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.517];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jacob.e.keller@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCPT_COUNT_SEVEN(0.00)[11];
	R_SPF_ALLOW(0.00)[+mx];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns]
X-Rspamd-Queue-Id: D0D90415750
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On 4/15/2026 10:51 PM, Jose Ignacio Tornos Martinez wrote:
> Hello Aleksandr,
> 
> Thank you for your comments.
> I wanted to link this patch in some way with patch 3/5, but you are right,
> perhaps as a refactoring, better for net-next.

The cleanup makes sense as next material, but the other patches fix bugs
that could (should?) still target net, right?

> Anyway, I am going to wait for Przemek and
> "iavf: add iavf_poll_virtchnl_response()" merge, after that I will rebase
> and I will create another version of the series, dropping this for now.
> 
> Best regards
> Jose Ignacio
> 

I'll drop this version from the Intel Wired LAN patchwork then.

Thanks,
Jake
