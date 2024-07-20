Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 235EE937E86
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 Jul 2024 02:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F2F404A8;
	Sat, 20 Jul 2024 00:31:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sDuXabLtaufB; Sat, 20 Jul 2024 00:31:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BDC014042E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721435485;
	bh=v6Zenzs363DHFPgdxFhnDpENqYtar7adw7a/a/RRor8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2agr2dycn4BiI67ojjYidNhvdOhbKcOwOD0ObXOuQlFB8zaxPixk3f6VE4yMRVcJT
	 ML0zEt7pqJunbvHyGOw3Kr+0KfQukHa4bKFHATS1tI31LgxL/0rIi6W679LbUZbVLw
	 rf6FTK5WOrzzrsxQGkTLdzCHOSt+cGYKq6tOOJi6v7gLBozyTy/YYBaNyuthy9gTWx
	 JMPfLl4BMmyLxNTXjneUTsdD079xzP+JDTNGTSW/ZGIOK2gqfz7bb/UduWLv4AavCF
	 Al4ZBAYj9lJCGjo690gjPM1PW4tMXGaQWBB1gh5Y3spWBAG6pMpec+lfcb1x9fsVb7
	 VHiJpahjpknAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BDC014042E;
	Sat, 20 Jul 2024 00:31:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3F7961BF995
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2024 00:31:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 29C0080E5D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2024 00:31:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LEXHevHAWqCw for <intel-wired-lan@lists.osuosl.org>;
 Sat, 20 Jul 2024 00:31:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3CBEE80D99
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3CBEE80D99
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CBEE80D99
 for <intel-wired-lan@lists.osuosl.org>; Sat, 20 Jul 2024 00:31:20 +0000 (UTC)
X-CSE-ConnectionGUID: xPkI8OtKQDOThfiJp2GAUg==
X-CSE-MsgGUID: m+DVmibVTMSfuQE2YlNU3w==
X-IronPort-AV: E=McAfee;i="6700,10204,11138"; a="22838386"
X-IronPort-AV: E=Sophos;i="6.09,222,1716274800"; d="scan'208";a="22838386"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2024 17:31:20 -0700
X-CSE-ConnectionGUID: L1iJjfebSJqz6Wa6u0rVdQ==
X-CSE-MsgGUID: BRuTBb8/QvOpxjzsb9lBfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,222,1716274800"; d="scan'208";a="74504031"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jul 2024 17:31:19 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 19 Jul 2024 17:31:18 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 19 Jul 2024 17:31:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 19 Jul 2024 17:31:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UoZVVfKuxeZNASt7uncA1LZNCBBclWumIfhUh97gILODrQwN+iifjI7GbwdKUdp5oo5FWqgALh1lQLsDzbx3DTpQva2PnQAl9cAePsAImlFdSSxBtYQ+CJ7dU02icP5idpjMG3LJ3O2BVjAjxWOW76WG881jo2fp3NkcVeL2hwa7C/nsh/YNJXFJb4M26VeOutEW05WySs9CyrLgmiUG+DlyBEckWw98ie4YVvQWYPtnHIazUgcndt48FoxrRCnRJfE0M1p3/345wzsxdpAAfHfbapUWwCsRKQ/MW3XSqK6hbSgicxRES/xHcckYoU2zGo0YR+F6nK65m4T/bfUGbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v6Zenzs363DHFPgdxFhnDpENqYtar7adw7a/a/RRor8=;
 b=BCzioc6blip3quZC5he+hrNoMd9ElDOCA0scUgz8jUKeqpH9wvzy9E61/EqQnSZzr62AVt6dJtNf+3geU4g8T2nl2THvBNRWbYLJ3farGXMuhEBGuf88bjy764ymRPXnMXIMygadoPT0rxEZJI8WNXKDJXpgsac3Bs4GgbxdqVMXU6JYanJDTTxOE2+s+ErFQfUBsN/Z9AjkMJxNoMaKNgDyWzmj9vbv31Fdt2wAe9NGtPnsOMCxTpVlJvRZjg61sAsjzLvZfGYTcKKHP3GJtcM/hFvIWhgnOn75oxgKhEJ+5sql6HO5M6fXD4Jed4LLtARjcArzHwVz+0XnZkeZvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8431.namprd11.prod.outlook.com (2603:10b6:930:c7::17)
 by DM4PR11MB8159.namprd11.prod.outlook.com (2603:10b6:8:17d::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.15; Sat, 20 Jul
 2024 00:31:15 +0000
Received: from CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27]) by CYYPR11MB8431.namprd11.prod.outlook.com
 ([fe80::546b:dc38:a70f:1c27%5]) with mapi id 15.20.7784.016; Sat, 20 Jul 2024
 00:31:15 +0000
Message-ID: <b26786e6-2d8f-41c9-9545-453978001f1d@intel.com>
Date: Fri, 19 Jul 2024 17:31:12 -0700
User-Agent: Mozilla Thunderbird
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <a355ae8a-9011-4a85-a4d1-5b2793bb5f7b@stanley.mountain>
Content-Language: en-US
From: "Linga, Pavan Kumar" <pavan.kumar.linga@intel.com>
In-Reply-To: <a355ae8a-9011-4a85-a4d1-5b2793bb5f7b@stanley.mountain>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0058.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::35) To CYYPR11MB8431.namprd11.prod.outlook.com
 (2603:10b6:930:c7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8431:EE_|DM4PR11MB8159:EE_
X-MS-Office365-Filtering-Correlation-Id: 0792eb70-3dbe-4cb3-eee5-08dca853438a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T2h5T0tKNjZudHFJYVgyZlFRUkgxM3FHMXdxeVlmL01KdFF0S2NsOHFVNU8x?=
 =?utf-8?B?a1JzbTJrVm5NSnJrUDFZNjgrYXkvdUdjM1lsUUM3WDRXczhoQ0c2RStYSUdn?=
 =?utf-8?B?QnlNdzMydFVCRnQ0TEpBQ1hvSDdMMWIwUDNiQUJmTzNDVDEwYmplNCticXNW?=
 =?utf-8?B?VnNlZllsY25RcFVBaEM0Y1BwS1RjVkFtc2VwRlI1TVhzVEJPeTh4L2NJQXpG?=
 =?utf-8?B?SndtYzV4QkhLeVlUa0w0akszTG1qQllTckdGSVdrbzlXUGJkN2ZoWGRtSENp?=
 =?utf-8?B?aFg5RWxOMXhiZzRTMXk5QVJ3N21FK1gyTDhUd0t4bGRHYUVlUktFUjRwbVZw?=
 =?utf-8?B?bXRpaG1OKzZlaDdTcHR3a1ZBbWFRSURteWNJNi9ENGFWQThwVkJROXhBb0g1?=
 =?utf-8?B?S00yeDBkOHk3NFE1YW0zd1ZudUh6YjQwRThYeS9zQnRQMnJtbDVuc2krUHF0?=
 =?utf-8?B?T091dE9RMHFtd1B2WXp0WTMvRWl6ZUdLU3hZQW9jTUJTZmZGV1FpeUpUWGE4?=
 =?utf-8?B?Rk9IcGlZV1A0TEFmYTNEVWFvWHpzWEhrMmp4YTB5RzJpRjYzU0ZCODU1cE1s?=
 =?utf-8?B?RE9WTEw4RkplUEhYNk5xRE5xeXdaY0grZTZwT0FoSmJJcUo3cUREOFQ3VkpZ?=
 =?utf-8?B?Q0VPempORmdmbmRQekl5SEMyNUNZbU4xV3FxMTg1ck5KVm9lUk8wcCtwQUp3?=
 =?utf-8?B?dHkyWDVySUdlTFJaOWFDRXJzbHRsWEJCTE1MRUNiNDlUMThsZHpNSlIyT0Fk?=
 =?utf-8?B?RTJJUEVMOVp5K2JXWUwrSjJsVERGWnU3cVBmVXYyWW9hYmtkOEhuenJvRWJW?=
 =?utf-8?B?OG84RlZKZGoxbHZHNzVVSnptc2UxSWYzZjBPQnk0QlBxd2JkcnY1OGlNcnJh?=
 =?utf-8?B?bkREdkkxd1RqN0orRkhHSkt0UjdMWFU0cWc5QkdpWno1Z3Fia2d4V1NkZmxJ?=
 =?utf-8?B?d1g0YVg3dmsxVURKR1J1YnVyWUZKMUVMNG92QUNzeDVHQzdqZlpyZXVZUVNG?=
 =?utf-8?B?ck1qcXVVTmFURnVGRGJ2VkUwUlVnN3hTQU1ZVUNDWmxsb3pzUFp1SmxEWncz?=
 =?utf-8?B?aTZQVklTZHAxRWdVaUIwQTArUFo3UjZubW5rc0hsMHhMZ2V0VmQvdFYvakU1?=
 =?utf-8?B?Q1cwWWdVN2x6VUlObWt0YURNaFdTOXlQbzRWMmM3aSt4dW8wTFErQmoxb0Uz?=
 =?utf-8?B?RkdDWUJ5ZWZzU3dlUjdiaG9zb3hmV3M4a1ZFUWpxSEI4cUtiS3lwS2tjRG9P?=
 =?utf-8?B?YnQySHNYcElsWmtKaUplcnNSNmRoWGRYUWhlNEgwREZiRVJpcUoreXk4UU02?=
 =?utf-8?B?RHQ0UEZZWUNBQ2JkQm5KSVBBaXFMTGhseU9vRHVjZE13OFlMdituazU4dDZX?=
 =?utf-8?B?NGFhd2EvYXRnQUh3ZldIMnFJUEdaejlybVp6bnI2TGk4ZDMya3UvdElMK1BJ?=
 =?utf-8?B?aFdQbU1pYi9mNG1Ocng0TWhQcm1wYm5MSHE2OUhIejA2Y1YvNTBYaHJTVGtu?=
 =?utf-8?B?MDVRSXY5b0g4N3JHUXpxTjhTcnFpMkpVTkxrQ3ljREtGRldVWlNucnZHdXkr?=
 =?utf-8?B?WGp6eFZvRVp4bzhRdytsZENveDVTWWY0SE5DT3NmUUxqaXJyYWFxMDJKZCtG?=
 =?utf-8?B?YlJkUlB0RktDbmtuSkZtdFdSYXNpYkxqVkU4b2dpSldNWVJyL1JQYTRoK1lW?=
 =?utf-8?B?UmY4eE56TFQ0QzczWEV1QTlDQnhkVTNJVnk1TEoyWnE0M21zUVB0d3VhdFhM?=
 =?utf-8?B?b2txR0t4T2xNUjV5N3B5UVV1ck9HTkNQcDBQUDM0SWFyTEpxU015S1dPeWg1?=
 =?utf-8?B?b1o2ckJCZDZodGVyY1lLQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8431.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MkdUbkViRVYrS1l6OEc4L3FQb0hKVlp3K1Y3bUJhZGZOV3ZON1lCbVU5anRE?=
 =?utf-8?B?dUp4RDZ2eXlENG84SDd6RlFnQXZFUzJOU2IveFVPcytDWkRXQUUzc2MrcE1u?=
 =?utf-8?B?VVRndjJmc09NYzFVVE9WRWFoVzMybG1LSTAwZ01aNDY2T3ZuN2lRcW8veUwv?=
 =?utf-8?B?VHZPZ2FHSlZlZ1ZKbVJRdEFEb1NhQ0gwVzlqdWF3MWx6ZHd6bzZraS96eGhH?=
 =?utf-8?B?WGt5V2V5Sk9IR1Y5L0UzQnpNaDlYMmR0ZzVzc3IvcmZoQUJ3clhIZStnL1oz?=
 =?utf-8?B?N3FwWFFFcStLUThCaXRsa0ZHK0RCY3c5U3I0WWFnZjV3ZmlBd2lWV2lSdTJG?=
 =?utf-8?B?YnA1dmNCZ25pTm5MVmtGdUFneE43cnNUVGw4RVJhajBoemhMeDZjSkNUUHY3?=
 =?utf-8?B?ZXFFR21xcCtBQ0Q3MHVJbTFYQ09RQzVXdHYvRGdidTFlSlBmN2ZxanlwVHpt?=
 =?utf-8?B?cm5wdy9BQnJDYmVFQzJnK2k1UExENVYrNHMrVVRsN1E3L2c5U2t4ajdQbnEr?=
 =?utf-8?B?NW9vRURHVTVJdEJQZ3RqbEVuakh1YURBZitNNjI3VlE0YWhaZlBCQVAwc2tK?=
 =?utf-8?B?T1Y1dStXM2lUV1VvNnFBRjhSRFltUWJ0R0FyTHdoMjFOQmFzT3l1SEd1eHdJ?=
 =?utf-8?B?UHVpbStKQU95WFVpVlhTZnZxRk9XYmJtZloyU3dnbTFhRnpUMTlmc1g0KzNi?=
 =?utf-8?B?S1hlVzVRcmVsdnZDdi9abHhZLzJOZlNNSzdMQ2tSVDlZSWxpQnFPeTgycDBM?=
 =?utf-8?B?d0tid0tpMHluc2lLSW5TUFl5OW1WYk5LQXlwazQ4amdsYUM3d1BCc0ZrcFY5?=
 =?utf-8?B?elpQTDV4UjZKQXIxejlEa2ZEbzhoNGcwc1R3Z0p3eFNPallTaldKTGt6Tk5m?=
 =?utf-8?B?RTJGMVJWZSsvNFF6cG5zUVVmS0x0eWN6OU8yK3Q0dGdQREJBcWF5QVN2QWxn?=
 =?utf-8?B?SUNvN2JzQmRPNTBFMkhpRExCQnlUQnVBQlh0a1JCckptQUorRHZnSDV3NU50?=
 =?utf-8?B?bVdZZk1zNm1yRGVyRWVFWTZYek5CRFU3ZzN5VUdDZ05MOGk3ejlMczJmZWlp?=
 =?utf-8?B?dmxFT0RtZFlYR0J0bDBQZG55SGxMZUZ2MDJQUm1TZGxZRmNLZXY0YzdtS3pm?=
 =?utf-8?B?aTJMOE5pcnl1L0ZLdzh1ZEJkeDN2UVVjKzQ0Y3JCWllxb2gzNlJCbHFRRDVo?=
 =?utf-8?B?alVZdzg2aU5oekVIUDBHQkdBVUMxVzhkSzRuaVAyb2JvM1FEeEZIR1JRT3N0?=
 =?utf-8?B?NUV2OUp5RzQ3MjljVnpTWEY0ZmxqbGlqcDhzZUs2emhyV00yMFZZTzVJdFM1?=
 =?utf-8?B?czdYdXBJSTNvcXJ1cUs2K2hla2hPeVdPQ0Z4ano1bWJDaXhwMW9JeDFmYUJC?=
 =?utf-8?B?Q1lQVmRDcnZZNytRYUVuaU1qS015M25qZ25KcEFibmpCc1UvcWdndU80TWIx?=
 =?utf-8?B?UXNsK2pqdVVqOVg2MGwzZGxRQk9QNHZybGpuUno1Rks1Y0hrWnhMQlNBZVpG?=
 =?utf-8?B?TTdDK2JkaEFSeVpZUWRYaFFvNG40VFNtNnVWd2NPbEE5Vlc2SEtZTFdXdE9w?=
 =?utf-8?B?KzBlRDNYdDMyaWJOaU9XZm4wbXNFQ29TMlNlRTNWbkNtVzArVDluOVBITi9H?=
 =?utf-8?B?bm8wUHdxQjdLOW92WkJtU1AzODRMdVhnM1N1V1VWMHE4bkNVNFFqM2prNXNV?=
 =?utf-8?B?ekFzTERkVXNFVS8xOFZ4cTBwZGtFZmFmbitHWWxYREdZRG1zUVJ1d0lqU2Vk?=
 =?utf-8?B?RFR0MFQwNThOeEhpbU5GS0ZOWkx1WTR2dDk5OUtpYzZUT0F2czBRK1B3Z3Z3?=
 =?utf-8?B?T3NZcVh6Z0tJU29hQUJFYmc0bjhCRXlWVUF5VmpmQURVNnRLdnJpRHVvK1lU?=
 =?utf-8?B?Zmw3Vm9laVA3bXVXakkrdEU3OFpwTkZkZlVVODg5M05HOXNVVzNTd3l0T3NM?=
 =?utf-8?B?ZTlkaG1YNWtmZXZXNnFGUFY4Z1VqUHgwdjRDaENQMjBsR3ZucTdkMkNvMURk?=
 =?utf-8?B?ZHNXand6S2tJcUtxamQ1ai9rOEtnWGZuTWdRWkFqVWlHOUlYU3R4Z1Z6SVVE?=
 =?utf-8?B?andUMzJxRUgyT2ZRU251d1pzeTlqZEZ5SU1oSEZGRGFJaTIyMXNxUXV5Z0c0?=
 =?utf-8?B?VEdyRnk2VFdDM1NXbDJuU0E4bTFLai9pcmtyaFNNVnJ5eXBCaU5TQWlyVmZM?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0792eb70-3dbe-4cb3-eee5-08dca853438a
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8431.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jul 2024 00:31:14.9870 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ySQ/VUOiM4nC5izriLf0tmZFiOBJdFal3O+EZZxb8Md1wLmXuij2O8D18PVHA2evkqYwaJYUkCXugtXjg/njnPLFulrbww14xM3gJAw82Po=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8159
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721435481; x=1752971481;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J6nZImwNCjUahLWw8BhC5/23KsFqH8j6zcfjP8WdWyk=;
 b=cC2ZFFtfM851TUNmlHLjAfSVlQ6txf88vu6qsBrm5qNcifZ9djUTBNsS
 vgqnadDcfjy23yPFjRyx2UdlWduKxyeNadw3rLMbb/cbrfz+AmctKkW0V
 dM7Ek4pzq3vpqMLYLiykrJ/6PqnEftNhb0TDWyS/q/Fx8e0Z30ltVxnxg
 oX2256933f18Yeji+FgeBWE10n47aNAh9MBmMsiAcccaQcdVdVifqM+V6
 pPCrC2yedW43C7dWqaZOcTjaRWzHuMyConM8glbUzbWE8S7HazeAFX7y5
 HhaNadtREXuBjeD1DiNQZJiPvAVCzET6CrAIsPx8dd8o54sLyPMOa0zbG
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cC2ZFFtf
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [bug report] idpf: add core init and
 interrupt request
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
Cc: intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/19/2024 4:53 PM, Dan Carpenter wrote:
> Hello Pavan Kumar Linga,
> 
> Commit 4930fbf419a7 ("idpf: add core init and interrupt request")
> from Aug 7, 2023 (linux-next), leads to the following Smatch static
> checker warning:
> 
> 	drivers/net/ethernet/intel/idpf/idpf_lib.c:417 idpf_intr_req()
> 	error: we previously assumed 'adapter->req_vec_chunks' could be null (see line 360)
> 
> drivers/net/ethernet/intel/idpf/idpf_lib.c
>      315 int idpf_intr_req(struct idpf_adapter *adapter)
>      316 {
>      317         u16 default_vports = idpf_get_default_vports(adapter);
>      318         int num_q_vecs, total_vecs, num_vec_ids;
>      319         int min_vectors, v_actual, err;
>      320         unsigned int vector;
>      321         u16 *vecids;
>      322
>      323         total_vecs = idpf_get_reserved_vecs(adapter);
>      324         num_q_vecs = total_vecs - IDPF_MBX_Q_VEC;
>      325
>      326         err = idpf_send_alloc_vectors_msg(adapter, num_q_vecs);
>      327         if (err) {
>      328                 dev_err(&adapter->pdev->dev,
>      329                         "Failed to allocate %d vectors: %d\n", num_q_vecs, err);
>      330
>      331                 return -EAGAIN;
>      332         }
>      333
>      334         min_vectors = IDPF_MBX_Q_VEC + IDPF_MIN_Q_VEC * default_vports;
>      335         v_actual = pci_alloc_irq_vectors(adapter->pdev, min_vectors,
>      336                                          total_vecs, PCI_IRQ_MSIX);
>      337         if (v_actual < min_vectors) {
>      338                 dev_err(&adapter->pdev->dev, "Failed to allocate MSIX vectors: %d\n",
>      339                         v_actual);
>      340                 err = -EAGAIN;
>      341                 goto send_dealloc_vecs;
>      342         }
>      343
>      344         adapter->msix_entries = kcalloc(v_actual, sizeof(struct msix_entry),
>      345                                         GFP_KERNEL);
>      346
>      347         if (!adapter->msix_entries) {
>      348                 err = -ENOMEM;
>      349                 goto free_irq;
>      350         }
>      351
>      352         idpf_set_mb_vec_id(adapter);
>      353
>      354         vecids = kcalloc(total_vecs, sizeof(u16), GFP_KERNEL);
>      355         if (!vecids) {
>      356                 err = -ENOMEM;
>      357                 goto free_msix;
>      358         }
>      359
>      360         if (adapter->req_vec_chunks) {
>                      ^^^^^^^^^^^^^^^^^^^^^^^
> If ->req_vec_chunks is NULL the error handling will crash

Thanks Dan for pointing at it.

After taking a closer look at the code, found that 'req_vec_chunks' 
cannot be NULL if the control reach here. idpf_send_alloc_vectors_msg 
(Ln 326) will return an error if that happens. We can unconditionally 
access the 'req_vec_chunks' at this point.

I will post a fix for it.

Thanks,
Pavan

> 
>      361                 struct virtchnl2_vector_chunks *vchunks;
>      362                 struct virtchnl2_alloc_vectors *ac;
>      363
>      364                 ac = adapter->req_vec_chunks;
>      365                 vchunks = &ac->vchunks;
>      366
>      367                 num_vec_ids = idpf_get_vec_ids(adapter, vecids, total_vecs,
>      368                                                vchunks);
>      369                 if (num_vec_ids < v_actual) {
>      370                         err = -EINVAL;
>      371                         goto free_vecids;
>      372                 }
>      373         } else {
>      374                 int i;
>      375
>      376                 for (i = 0; i < v_actual; i++)
>      377                         vecids[i] = i;
>      378         }
>      379
>      380         for (vector = 0; vector < v_actual; vector++) {
>      381                 adapter->msix_entries[vector].entry = vecids[vector];
>      382                 adapter->msix_entries[vector].vector =
>      383                         pci_irq_vector(adapter->pdev, vector);
>      384         }
>      385
>      386         adapter->num_req_msix = total_vecs;
>      387         adapter->num_msix_entries = v_actual;
>      388         /* 'num_avail_msix' is used to distribute excess vectors to the vports
>      389          * after considering the minimum vectors required per each default
>      390          * vport
>      391          */
>      392         adapter->num_avail_msix = v_actual - min_vectors;
>      393
>      394         /* Fill MSIX vector lifo stack with vector indexes */
>      395         err = idpf_init_vector_stack(adapter);
>      396         if (err)
>      397                 goto free_vecids;
>      398
>      399         err = idpf_mb_intr_init(adapter);
>      400         if (err)
>      401                 goto deinit_vec_stack;
>      402         idpf_mb_irq_enable(adapter);
>      403         kfree(vecids);
>      404
>      405         return 0;
>      406
>      407 deinit_vec_stack:
>      408         idpf_deinit_vector_stack(adapter);
>      409 free_vecids:
>      410         kfree(vecids);
>      411 free_msix:
>      412         kfree(adapter->msix_entries);
>      413         adapter->msix_entries = NULL;
>      414 free_irq:
>      415         pci_free_irq_vectors(adapter->pdev);
>      416 send_dealloc_vecs:
> --> 417         idpf_send_dealloc_vectors_msg(adapter);
>                                                ^^^^^^^
> Inside this function
> 
>      418
>      419         return err;
>      420 }
> 
> regards,
> dan carpenter
