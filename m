Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FA895B698
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Aug 2024 15:28:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DE84404DB;
	Thu, 22 Aug 2024 13:28:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0kE6v9u_0QUu; Thu, 22 Aug 2024 13:28:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8163B40DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724333296;
	bh=PLi8TL2ynEFDEHSA/X/fij0OvBWTWRe6nul2HS9RZAA=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dOsp/694B0XHvsB7IKOxSr469VjhJRVgSjVxoeH6i66y4uFd/pq6OwIE8EHfXO+/v
	 isZ9py8uw80VOjO5u1qndsmfN7sGFSCANV7Mvlh6nntfY+E7aj6KODUpqKUp0EnS+y
	 lSkxxBxQQdP2QQaRsGLKc2DIu6s6LwvXODAkOllAR3ZaQWgH5qwBPWbfK5IcRHdkyz
	 HsW0Mrncr+OJWjW0b/6FiR2jJrpivRP50y8doT6PiLPdwPZ0EqvQGOlISjcCAZYgEN
	 geEff+QZGNCvqdJxUP9Yoa+gg3oPYIljK4T0zha+eeh6P9qLBD8x+eRjxXxSZmNBvV
	 BEcPixzAB7LPw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8163B40DE5;
	Thu, 22 Aug 2024 13:28:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9111B1BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:28:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7D970817F5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:28:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Jdwqw0Rut-SL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Aug 2024 13:28:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=avigailx.dahan@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A18B1817ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A18B1817ED
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A18B1817ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Aug 2024 13:28:12 +0000 (UTC)
X-CSE-ConnectionGUID: j88NX596QY+QR2CMBjk6wA==
X-CSE-MsgGUID: hGwD/llETu2ZJ3pt8FlzRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11172"; a="22900437"
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="22900437"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2024 06:27:53 -0700
X-CSE-ConnectionGUID: P3jsajnWTTi6ESRx0CDT4Q==
X-CSE-MsgGUID: 0Rxi7yIWRtiXmZ3flIp8qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,167,1719903600"; d="scan'208";a="66371984"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Aug 2024 06:27:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 22 Aug 2024 06:27:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 22 Aug 2024 06:27:52 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 22 Aug 2024 06:27:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IPe6aY8shfFE0AybhN1Tdp+bl2yKO/GJWr+o+DMn3ZynE1Id/WWX/rieDuJ3m9J4XvnuaGPX1wM02Rif7q5DOyJoC+LXlhIpj9981/e3UEdRsUIgjS52bCXjxc4GelsPKGHtNungNHhnuEPffVCTvljLl4WpnJJMgmsKAaJWbUGhQzdsjYLCiicebDy+cKYovuG6HooWcxzmUvWo5g+EDEmWK4l8eTQJ0vt+ioYPbfKXsgV7GTK4nV7Rmhm4Wy8gkvPtvIjlDH6z1RGUnGB5/fR6Pr7gWZlOWVsZSgBvom/lavstIc7xKvf5qbMHhd4xljxgBjeEntC2gfyPj61WBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PLi8TL2ynEFDEHSA/X/fij0OvBWTWRe6nul2HS9RZAA=;
 b=pJM/imxWBsuCO8/WNW3slSN29J8xNqweRIeQLLxw+wm60n5CiCVuiktJKvjg03CWQTwk+xYFmFur+Iay7VWKUPqUhDrt7ll2ewVSvgflmCagWreilLet1nLdJOljQGd32sbF9NJF1jgtZWAEDoVQVP27AGTmYL2Iy/zSimNQ5mNWnTDsSygIxqwPnWAXrCAR0kT4+P9BH/OOhRu0UDMEzVqXouPhMD5a1gpjo51dxXEasQW5xi/F4QNQNOIbdRdtCv1cDut9pVctySPQRpsNaSwBHPn+D28185m0ON23/f1AWSexNvTNVO71QybO7IH0zR5Tc1byCKQ/zFMoeIREtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BY5PR11MB4194.namprd11.prod.outlook.com (2603:10b6:a03:1c0::13)
 by DM6PR11MB4580.namprd11.prod.outlook.com (2603:10b6:5:2af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Thu, 22 Aug
 2024 13:27:50 +0000
Received: from BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61]) by BY5PR11MB4194.namprd11.prod.outlook.com
 ([fe80::9d17:67a6:4f83:ef61%3]) with mapi id 15.20.7897.014; Thu, 22 Aug 2024
 13:27:50 +0000
Message-ID: <d1f5b788-425b-8554-8ce0-32e2ec901189@intel.com>
Date: Thu, 22 Aug 2024 16:28:17 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: Sasha Neftin <sasha.neftin@intel.com>, <intel-wired-lan@lists.osuosl.org>
References: <20240713190209.3742789-1-sasha.neftin@intel.com>
Content-Language: en-US
From: "Dahan, AvigailX" <avigailx.dahan@intel.com>
In-Reply-To: <20240713190209.3742789-1-sasha.neftin@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0026.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:3::13) To BY5PR11MB4194.namprd11.prod.outlook.com
 (2603:10b6:a03:1c0::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4194:EE_|DM6PR11MB4580:EE_
X-MS-Office365-Filtering-Correlation-Id: 9ec07e20-cf76-4cf1-e14d-08dcc2ae3825
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TEl5cTJjeGlxQUo2dkFtaUF0eDd5TUt4OHd3bnBBUVNqUVJoQnNBb3ExUHVK?=
 =?utf-8?B?bDJwVjdDM2tXSHlaajhKRkxqejhuZEJHcGRydEx3aGdYYmIzS2JhellCOG5w?=
 =?utf-8?B?TDhoYVZVSFU5QWI5V1oxNFM4VWovWFhVaEdNSVd1THM2N043eFV1bEJlZjc4?=
 =?utf-8?B?NUpUb0NHSTNCVFh5U043anhaQ0lmYlpNbm84dUluVXJKSUVmaS96L1h1Q1dh?=
 =?utf-8?B?K2dKalBLRDV2K055Wm14eWhoNng3c3Z1ZDVDYVJQWGpYR1ZIbnFUUmlMdzA0?=
 =?utf-8?B?WWJzUnZBamd4d2JmWWF2Z0xYb1JHVE9tbVZuTHNrUE1TeHAxSHFTNXdGY0RZ?=
 =?utf-8?B?aG12KzZmTmZaWmdUUTRBTWN3eCtTS0FsL1VYNk5mNTk3K0xzNERRTUlxMysx?=
 =?utf-8?B?dGV2MGVRT1dBaUs4Q2M1S2R3UzlkbnB3bHc2WXhoZ1VrM29sbnRxSTN6eXFQ?=
 =?utf-8?B?d05rVEFFMnBWaDRKWFMrL1JuVFFLdGgxNE9kRzdnckVEbHdLVW80bzFyUEE5?=
 =?utf-8?B?a1JHZXR6M2dBVnRNQms4Y2YxdUcvQkVEUzJVVmVrRG4yc2JBemhOVU5XbnNk?=
 =?utf-8?B?c0NQZkNScHg1dkhRaUx5ajR1ZGc3WHNHenVqWmQ1VW8yaDZjMGtvQ3o0TFlR?=
 =?utf-8?B?bndVbUVrZllPWW13QWFTK2dUeGZCUklUdHhrWUF3R01tZncwWGl3aElkcEtv?=
 =?utf-8?B?Szhic2dvRGJUU0V0M2IrYmdLZnhYTVlLb0kwaDlTNnJTajJtK1gxejhJeUVs?=
 =?utf-8?B?d2Y3cVRzc3I2NFk2MkhpY2lyczBzQk5mV2VJUUk1MWIzZ2c3bUgxZ25HZUJ0?=
 =?utf-8?B?WUd6YXFieG5VK2tSbEFFSkV2YVVYTUJjVEZzUWt1L0sxMlZyZEdxcyt3L2Vz?=
 =?utf-8?B?VDFqbHpwb0oxdVlSZUpUVHJiNzRUUXFpRHV0Q2g1dlIzRzZMTFBXbWJ0Yk13?=
 =?utf-8?B?YUlpL2djSGhmMVFIRS96USt2WTlFYW83VmtSZTZkWXJLYlZubnBFZkhKWlIr?=
 =?utf-8?B?eWRGQS9LUFFDdjJ4NWlHUUJzdEtOVGdHR0h1V2I5WE9WbkRCRHZlaTJGNkhJ?=
 =?utf-8?B?TXA1Mkp1bjcwQ2I4cEpZbTllc3crNlllWldWSUg5N3ZuUmRrUE4rVXVCUWdj?=
 =?utf-8?B?cWw2VFQ1WnVrOUtlM3R1U1hIWEVKMU4za1NqV3VpV3A4SnZhNy9RdzU2OWdx?=
 =?utf-8?B?V1FIYmxleCtUNko0UFcrNmp1OVNmZEtMdnE3MTNxUzNNM3VxY0hmWFEzeVVO?=
 =?utf-8?B?OU5QUVhGbUxVdmdpVU9PbFpmTlYzRzFQMHJBcmZwRU1PUUR2ZWpOeW1UZjVW?=
 =?utf-8?B?dlphemZTWTZlNlcxcUpUMlUzNlErWW5rSE5ra1FFMVJzSnpqZ2ppQ2xUVWZr?=
 =?utf-8?B?bk1PRXZqbldPellQSW82NFA0RGRvcy9DUTVSbUpmb1Z2Y0Z0TXBJMnpJR0pB?=
 =?utf-8?B?dlFwaVdRMXRlUGQvaU5tT2dJTUFZZnRmY2ZIM1IvRGJhcFJTMTdueE8xWjlM?=
 =?utf-8?B?YS9Fa01pN2dGSUNMbG8ydHlLek11QUFSc0dSU2g0NlJsak1TMXRUMzM0OCtN?=
 =?utf-8?B?VHFObzN2eVk5MHpSUVE2SnRyYTVrMkFkZ1N0eDl0QWFFbUIrcWlaVTU3K3J2?=
 =?utf-8?B?YjZyZzMxTEpjbC90NWovaE8xQmJ1TTgrSFIrdGxpSUsrV1J2NFRwNm16MTdp?=
 =?utf-8?B?QWJpeFhiZ3MzV0xKeW43dkhpQmNYbFoxRUZTQzI5V2FMcWEvanpEaGJWZnVC?=
 =?utf-8?B?Tm1wS1QvQ2xKRG5zc3p5dk9sUEdPVmxqdm5FUlNVaHVJNlpLaHZlQXgrQ1RZ?=
 =?utf-8?B?NEkxRDVkbHZLeldNU2FIdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4194.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YURxWjlPRzlMaXVaZUIxN21NYUFJM0FRWW1NTHdadTEyWWhzeThFaEszTlpZ?=
 =?utf-8?B?SnJZd1hNSno5cmJmMHYrMU1Ta00rWCs1TWhrTlMydi9Oc09INmprRTFzb2Zn?=
 =?utf-8?B?Y2ozd1hRalphbGdUSEhrTmdnSDJZcmlnTTM0NkRXMG40eS9wQ1l6WTBBRjQz?=
 =?utf-8?B?ZVlYTUcwcnhnZGJFZTdvVmpKZStPanByKytYcmhnZVJtSE9IdkpLZFJzSGJT?=
 =?utf-8?B?OVFRSk02RXZFeUo3YjRTREthVms4N3h6SFFBTVlyKzlxTE1BaXVmaldGeW1v?=
 =?utf-8?B?UFZPYmZSK2hTUTVEbFZLdnp2SHhGRC94WkNGdTRrQTRhcVIwaTcxWmJQK25x?=
 =?utf-8?B?a1VEVjhTd2FFOEhGdVFDUGNGL0wxVDEwRDdnd3EzN3dsa2J2S2J6SUpSVm9J?=
 =?utf-8?B?RTZUZkNyQXRvZ0dIVDBIaGxyemltYlRySUxqUjlrYVl5UUxLZTFJK25oYmNB?=
 =?utf-8?B?bXlFWFNjR25DdHRXVXVTMGQxaHFySEFDZnRsZUZOS08rc3BBMnYzOUpIZXlq?=
 =?utf-8?B?YmliWUYwSzlqWmZmbUFOd1hHeWZpZzVCRWMzUnAyRzdiREFBclNsdHVMV1VE?=
 =?utf-8?B?UnMrbUdEWFBLbHdHYnl2WDBhV1doYzVUbHQ0eko4bkdoZ0d0Nk9CYVMyK1VJ?=
 =?utf-8?B?eHdZUWZYMzR1dStmNUVqMzQweFZqMVBIMGxTRWdqWUJlR3BNU2lnY2Uwekpx?=
 =?utf-8?B?dXVwK0RscU55bGR0ZExSd2xQMjNCQ1hOVkx5bGtFbGFlcVZUbHZia1hkWnkx?=
 =?utf-8?B?OG52NHlpcVBnK25xUnBpNWR4d0RteWExTFRkaDcrQk1vb3VHSlpWMms5MzVS?=
 =?utf-8?B?d2hLWEJwMmFXeUtyQXNxbGN4OUR2NW1WbE9mYTN2b0Nnb01ySnRXK1NvUUhI?=
 =?utf-8?B?dzBkcTYvd1dBSHppdkorRVRhWkVDeDNRMDUrbXpFWExXbmJNTCtyZ21rd3JR?=
 =?utf-8?B?WmhUWHNGNGN0VzFraDVScFhVa3hsUkNub2R5R1ZmNFhPam1BN0ZjN25RekNu?=
 =?utf-8?B?ZnU0ZEpBcnozbzY5MFU4WXVURllUQ3pMWG5iakhjdHZrQ0ZvaEZaM1IvbzNE?=
 =?utf-8?B?WStYVHVjTEorVUhWRHluT2JDUDA3Mnk4Nml6c1FOZ1QzcGsyV29uSHcxNmhW?=
 =?utf-8?B?Ny9ydU1OSUhJaDFwa05aVW0xb0FFZ2xVb251R25iTXowK3lQbjNIOG45MHlv?=
 =?utf-8?B?WjZhTWptQ1pESFQzWm5OdVFJWWl3ejNCbXB4bWNMbHVuWXhJbHJMTWxVd2Ey?=
 =?utf-8?B?emVndm1Kd2t0NWJJWUVtTHRSYzhzVGpwQ290UFlqL0NMTTlWMWVYd2hkMkhq?=
 =?utf-8?B?OGJGV1dUaHkxZmd5cmJtUDlwd3VFcElSN3NwUzhKdlpzSEJzTkRwM2ZJb1JY?=
 =?utf-8?B?VnVNTDlSU2s0Sk9ua2R6a3dMcGNZZVdKZ2t6TnJudSt2S0U4M3dUZmlzTTVL?=
 =?utf-8?B?V0RwQW41VnhZcmx4blFnVWxtaStnUWZDVFY1OFpxbFBJVTdkNXhSYzg3QU5J?=
 =?utf-8?B?MjhrcXpua2RhNmx0WHpNTEZOeTNGYWZSUkVZL3Rvc1hEd3B1RVNhR2VZTUNp?=
 =?utf-8?B?dTBxRFVVYnZWaDZEQk02SDhFa1ptMFNtdEFFdlJ0cE0reXZKYm5NTlZlT1Iy?=
 =?utf-8?B?SzNwQm5QTTF0QUVVWExHRW1NaktQbFpzdXh2T21MT2NjUjBjN3FVYkxqTmJr?=
 =?utf-8?B?dUFOK1Y0d0lTN1J3TDNxa1RKcCtCUUVWQUt6NVNuY3A3WGFMNUZxdGlob2Qw?=
 =?utf-8?B?VjE2elFwUHpRTWV4dy96c1VCLy9DUVFrRXNYZnRhVHlhT0dLSytWa05TNXFY?=
 =?utf-8?B?RWludGgrUndzWVYzcHcySE1lZ1ZsR1VTcjFEMnJTU3B2cDIwd1BuMGVMbjBv?=
 =?utf-8?B?MWtoelJzdkpWTWdsYTFhVldRcWIwM1pHL0QrbHNIc01NeGl2VU40aU55Q0JX?=
 =?utf-8?B?a2dHTUttUndIbVV1YmJzSTR5eTBVOXJWTkVZelhjQ0JHaSs0ZHNLd29kblRh?=
 =?utf-8?B?emJxUzdvMlRPQVRUVFd4RWVPWUpWREtSTVpCTTJwOENRUHVvTUUxWUl4TkZ4?=
 =?utf-8?B?Ky9qNVN4WDNPVWlXRjVCc2ZaRE5vekd2UkQ5QmdNa2lKaTJHcWhvWjlFNUww?=
 =?utf-8?B?WUE4T2E0bXRjY09OUVdnSm83WlZRa2NNeTBFbjYrditEZExZSGVFZzE2UklH?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ec07e20-cf76-4cf1-e14d-08dcc2ae3825
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4194.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Aug 2024 13:27:50.4977 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V2TUGV/WNhJNkgI0EjLBk02QijmFZ90n90W8pVeYOA159q79pvzCY1ijRboPnDYgIg4irbI93PSRzzDmo93qy6ODgZrVwrEUfJhsyZnYrgw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724333292; x=1755869292;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QkTqSnYLIu8NZKcJHOY87mqZQljt80kBx+iy/BQvVu0=;
 b=n6I/caghuGFP1E6aqo6vCDXPhDqCsBdhBoDAma2WcXqf37FFh3uygKPE
 Cq3Qx5kNqdTx4TysKSicx7ilJsFhBrp3mHkNfZjCE8Y2ev3sd3NfCTUL2
 mht4xKjEfjD4VhZEinAw4nsg8dm/Za4Fs8WjtLA+WzWNOfWz4czZdt7kd
 sHjN8F7qpzQnwrWzfiPIS/uKHGV8c1KEWEb6rtlphPNAYwg9tKZ9FPvBM
 +Zd8AYL6dZ05lxiCRP5xrHl2SRx4UN/9USQgk5/ozIdU+w3sDyBrEbbRK
 GSELTFHv17CIpgjkWiRkjmXF4svhSRbZ6CekOSKQLezNFo+T7zoWNGr04
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=n6I/cagh
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v1 1/1] igc: Add Energy Efficient
 Ethernet ability
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/13/2024 10:02 PM, Sasha Neftin wrote:
> According to the IEEE standard report the EEE ability (registers 7.60 and
> 7.62) and the EEE Link Partner ability (registers 7.61 and 7.63). Use the
> kernel's 'ethtool_keee' structure and report EEE link modes.
> 
> Example:
> ethtool --show-eee <device>
> 
> Before:
> Advertised EEE link modes:  Not reported
> Link partner advertised EEE link modes:  Not reported
> 
> After:
> 	Advertised EEE link modes:  100baseT/Full
> 	                            1000baseT/Full
> 	                            2500baseT/Full
> 	Link partner advertised EEE link modes:  100baseT/Full
> 	                                         1000baseT/Full
> 	                                         2500baseT/Full
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>   drivers/net/ethernet/intel/igc/igc_defines.h | 10 +++
>   drivers/net/ethernet/intel/igc/igc_ethtool.c | 73 +++++++++++++++++++-
>   drivers/net/ethernet/intel/igc/igc_regs.h    |  7 ++
>   3 files changed, 89 insertions(+), 1 deletion(-)
> 
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
