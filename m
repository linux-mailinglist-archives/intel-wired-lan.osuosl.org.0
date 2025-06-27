Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7226DAEB89A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Jun 2025 15:14:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 115A2612B0;
	Fri, 27 Jun 2025 13:14:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yE_U4SupYV2h; Fri, 27 Jun 2025 13:14:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 32EED612A5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751030043;
	bh=AYI+QoJOkWCOA1TzgsgdahiKrxBMdusz9VLCKeDIWeU=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xtn6PWhZjTSy9lLyQTvekqG2IKsD5J3qcj8ncO0eLfcQMPLcaOj04LYjAOX8GhsJ3
	 ygRwnGylcqzYuk7O3nNZqziRqcAZz4wgYEvhwweMDZYCGkiX5qaVvchmMxQzKTtz00
	 Rv2vXFrla52bHsy3fUvFZL8gWeLRJ3nQJHJscza8RHghY/QuN4secaClAlEV5l5HY+
	 fWYmJ/bFQzO2NktaARj+nR1mNlAbNS2carLmQ4yCT2rAdbeK2Wyp0XuIF3cwOuk+8o
	 pg8xep8S27GzSfoXpefI9JGEpg/b/FiuvMlNZxDZfZIxV+OaXafpiBlsejb/ShPHXL
	 EO5ZOKegoD0fw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 32EED612A5;
	Fri, 27 Jun 2025 13:14:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id ABD72154
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:14:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A5A7441B49
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:14:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S5ZWZd-K1Hbj for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Jun 2025 13:14:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C88D941B43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C88D941B43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C88D941B43
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Jun 2025 13:13:59 +0000 (UTC)
X-CSE-ConnectionGUID: 0+1eCtGgQXGE+0k0L6EODA==
X-CSE-MsgGUID: YtoKGygrTkukxSZdVZkFzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11477"; a="53216696"
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="53216696"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:13:59 -0700
X-CSE-ConnectionGUID: s7VaiRuzSUmVZm14BQwAOg==
X-CSE-MsgGUID: RCoHjdLdSC2k65zqZb9oSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,270,1744095600"; d="scan'208";a="157184233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2025 06:13:59 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:13:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Fri, 27 Jun 2025 06:13:58 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.47)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Fri, 27 Jun 2025 06:13:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sXjEpQO5OM3TjfFrMjcjM701hTagjgEpJ0+KPXYaPEGwQ6XGNRAdf05N24nUXys6ldoYAecP1wFWy7Cz0CjiV87cvB9FsnYLZkOl9g5xaDzfnFD6uVjKeDCQMbbvXJ6/Lq8YxnIk/78uuD3Ts9PrNwb8GfS9QmDinmZ3JkW3qmWTJve8sANe/sqqa4+o/+FiLJkNyqWVG2SSl2Vl/FotHg0zpFz4d3cKSlGiNSDlB25fKHL4IHeQ1MB+vUCvUZNsLnI31mRrywnBaxhz4+WIT6Oi8/m1b6T7Ad64nwtdBd41dnZMDl5+4UYS8oU6S5O9/k+B5y5t+MAyyDIgGh9kSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AYI+QoJOkWCOA1TzgsgdahiKrxBMdusz9VLCKeDIWeU=;
 b=siwf7W2V57FOc/pUKcUhPYz9Fzeyd0F8jPZyh9S/gB4a5xrEawI3744XeKdhJf4U/MZXAPv0kFzlNcnbVDJKWjyhSGmu4Vjw8Ia5yT4g2eGkTCDLT0tt2FMRyjioiOUqmahqlxR/inzhBsUbfzH4vnSMXS+qY9RsL3rYx7YH5v7SYCK4IFFhfUVhJPAvyj5ne8jBYMtOtQj50isY2L++UhXv6RBZyV9CtvSkjlgOYb70uEnG7kAwFdlVfwYO56/Qs6Mq4M+o8kjYDwWwH9HOYhqM7yZWZAT+cspaQ09VUWpfxQcrHnUrsFq8XDpkKzZlglf4pxaPaBGvaH4vpnCMDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by PH3PPFE60A892D7.namprd11.prod.outlook.com (2603:10b6:518:1::d59) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.17; Fri, 27 Jun
 2025 13:13:41 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%3]) with mapi id 15.20.8857.026; Fri, 27 Jun 2025
 13:13:41 +0000
Message-ID: <adfdeee3-b200-4700-800f-c71a0b82697f@intel.com>
Date: Fri, 27 Jun 2025 15:13:37 +0200
User-Agent: Mozilla Thunderbird
To: Joshua Hay <joshua.a.hay@intel.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>, "Madhu
 Chittim" <madhu.chittim@intel.com>
References: <20250625161156.338777-1-joshua.a.hay@intel.com>
 <20250625161156.338777-2-joshua.a.hay@intel.com>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <20250625161156.338777-2-joshua.a.hay@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: WA2P291CA0007.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::10) To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|PH3PPFE60A892D7:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c6467ee-ce53-4674-90ad-08ddb57c6fdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UXdpTHdXMHJjdmZrOVZvZVU5Z2EzaGJvMzl4Sit3cnRDUkdPSUJ6SDhqc2kz?=
 =?utf-8?B?bDRuY0hCZ2ZWcVZFSCtUMDhjV2wvRlRGZmNSeG94ZzVCTXJEcklVM1hwdjNx?=
 =?utf-8?B?ejM5VldPNlNOb2FJaFhyQnNwTHBzMmgzRFM0MlNDSkRPdmhWcVFuUEVWUTY4?=
 =?utf-8?B?NU9pLzB5Z2o0NXFwSVdOTXhjQzBpVWJUdGFKVSsrRjBwVms2TFdtcXpGV2k1?=
 =?utf-8?B?NW1sNi9LQ2VKN1ZzckNQVW0waVZIb2xVYkF6WEEvbWQ1dFhWSVp0QjhNUmdS?=
 =?utf-8?B?R0lOZ1pFeUl2SFNVbFplRlA3QlAvaTBLV2tPakI4WDhDUytCMnVXRkhTRE1Q?=
 =?utf-8?B?VjNEVml3c1FwWjMwZ2prSU9sV3JNRURRbWU2OURRazRIdWlnajQ1TDg5elRB?=
 =?utf-8?B?a2kxOTd0eDM2YSt2czFwY3JQY1dsMkxyanJRa21WN2pndWd1amdrSGhGTDBK?=
 =?utf-8?B?OU16T1ZLUkxZbFpNSnRhVmxtYW9HTFFMZGVuUlNuRFN4TEJVVlVmU1NkVEEx?=
 =?utf-8?B?T0tKTXJuS1o2WVVnVzE0VmVaR1ZJU0xzUDM4a1dSNzZraGc4NXQxbmJSdkMw?=
 =?utf-8?B?OGtXUld0blhuVWJHNmo1U0pLNE5BeUJZaE5LdTlMdjhrcUF2Q2ZXbzZWNEo1?=
 =?utf-8?B?cTJ3cDU0elM3TjlrNFRhMGgvYzZCWWMvRWFxT241eHZBT1UvQXRlYkRrWkUw?=
 =?utf-8?B?STlnYnNpanIveGdzMlorNVoxZXlRbm5UWm13c0l2TmhHTG5NeDFES2RuTUtj?=
 =?utf-8?B?QkRTbmJJS2ZicEFudFpzT2N5R2RRMUd1USttNmh6UzFENjk1UGFCWGlSN2ZT?=
 =?utf-8?B?L1UzOVJEV3VBbURoNVg4MU1Ja2NzMi9RVktTY0M4ZHA4R29aM21qSkIxZm9p?=
 =?utf-8?B?ZHVpbVJ5ZXdRNnlsVHRyMlBYMTZLSGtnOE50Z1B2ejhVbWxUR1pJT2diRFdl?=
 =?utf-8?B?d0trZ1haNTVKdTVqSERQUXZyWmllNC9kN1Y1MGRacUhxV1g0OE9RNldFcG82?=
 =?utf-8?B?cytZU0syb1pQNW5KUTFmRlR4Ym9jYUVYNUFwUGs3d3haaS9kRmt1Rk5XK1Na?=
 =?utf-8?B?K01LQVp5Ris2UWJuQ1czTTM4SHhYbDFXYm4wVFVTbldiOHhyZ1BGdFZRZzV1?=
 =?utf-8?B?L2l6aHFWakpOTUZhb1hRNTJsOS9iYjE3eml3Vm0vM1hrSE1DdExGQUcvaGNT?=
 =?utf-8?B?QnpPbjk4bUNiSmMxT2pLK2JNNGJTOUxTaDNMR0R1bUVCUkFrdHBKQ2ttUjNV?=
 =?utf-8?B?b2hHdXZSSHlBcHVHNlF3Sm5QNmZEUnVEOE9DSDNsOWpJSVc5THRUa0R0SWRp?=
 =?utf-8?B?Q2hKR3N3bjBhbnlXdDhJRmkzcWtEWE9acmJqWEtTNFh6QTFYV3hoRlRnaGxo?=
 =?utf-8?B?eWRmOWtmSHlmbElBSXdjcFpYL1kwUnhEUEI4a0dBd3c5SXRQN2t1anF3M2cx?=
 =?utf-8?B?WHhDSWhZTWNkNXRGTWNZTmJsTm9sVU5oNk91RGhRWEZQeE95TG9ML3pPbnhP?=
 =?utf-8?B?NE43NU0rS1ptRVY3ZDIvWGlybThTMWhIS3JCWENzSjM1bWtVbzJBWnVDVTBH?=
 =?utf-8?B?RXZmL0FCZkR4cXhxZzd5UGhCTkhoSEw4OWlZV1JVcGNuZ3F0VXoyb0NvMmNL?=
 =?utf-8?B?N2I4TTZGQkt4UVZQa2M1Zkp1bit6TWl1SWEvUDlHZ21tK0I1OGhJb3NwN1Ux?=
 =?utf-8?B?SVVxQ2lrOW1yWGc5NnVlSnNJejl0Q0pvdmdQcTNJeGRGOGdkaFB3d2VBb2dF?=
 =?utf-8?B?L2R1OWlsbnNHZ0RMRVg2aWZGaWJFRWYxQTZ1Tys1ZDdsSW5tc2o3dGszQU55?=
 =?utf-8?B?ekNlMk1YdnRIVmZOT2VHSjcxOEVxMitKUWdjM243eFZFZHllV25xc1MreXZ5?=
 =?utf-8?B?V2pmZFZoLzlxaDdQcTlhalNISzJiWG9aY1pZVkEvZUNoYXZab25xc2JOMWFF?=
 =?utf-8?Q?C5rVcJ1nbe4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0FxelhNSGtTYVBWNEprT3lCY21CZklSZzlJVSsxZklKUHNvWFNyQmphYVM1?=
 =?utf-8?B?NC9YeURxaVNPOFU3akxGNzlmOXpmK1VaN01FY1NDc1padWo0Z1NiMGwrZy9K?=
 =?utf-8?B?d3V6akNkZGpacE9BanFzNytyTmY5T1dQQmlSZitpbG10ZGpGL0xveTJmUjFD?=
 =?utf-8?B?Mm84bjlKMkJOSmdHTCtyMTRtNHg2ZmlUdDdOUlp6bjVtYzF2MVJXcVZKM1Jr?=
 =?utf-8?B?Mm9YVHBPcytKTGROTzVDSFR6ZnhZUy9ZRlorVlJXbDNBQUo5SGV3cFlGQmo4?=
 =?utf-8?B?RkZYdnhXZmg5UDBHQWVON1NDbEJ5Z3ZXdHFENnlsbHU0eDFLOU1MMXlLUnFr?=
 =?utf-8?B?T3N3NHVnTGloM2Q5VTBkOVNGUjVvYkZwOS9GNzRsdENNRC9sQ0o4N0FkejJj?=
 =?utf-8?B?ZDZqU1dIRCtJYWx2NFpGR3FmQ0ppN000V2RVOEZLZGJtWXozc3ZDMmo2Z1gw?=
 =?utf-8?B?b0VKcytPcVIvS0tIeVREaTFHLzNoSGdwMUhaWkZNNTNpZU5TVS9hUnJISktW?=
 =?utf-8?B?Y2dVd1Z6NDhKOEpoaWdtOW9KdmFYVUpQaXVwSzRRZWJwZ3RIb2dGc2gxSVd4?=
 =?utf-8?B?aFhrQjVwVmZQOWEzbW1ibFB2bnUyWktVbk9rYmZDcCtjcjh0eE1NdWludzIr?=
 =?utf-8?B?cm5mN3ZqVi9JTUF1NHIzc01nSGNtZEdiL3VqUTJiOUQ4bUQram5JUy8zNjk1?=
 =?utf-8?B?akVRenlQSlZjN25qOVNXcTFkS3FaQUQwbWN6RVpUallBdU9xZXJWZm5hclRl?=
 =?utf-8?B?OEdnMHNiS0hCQ1JobWp6WEQwZU81ZStLZ1k2bFd2VTM0d2h5OWVDQ0txNmpT?=
 =?utf-8?B?bEVuNE9Bcmw0OHRkVzJKdkpiTlpZWURLVlFBL1U2Nms4Mng2QWRCbDVNanhD?=
 =?utf-8?B?OHIyNUhtYU1ueWkwSjNFa1lVbnZSVWRjTXl0bkZGWTRZMEEzRm9NUWlOTkQz?=
 =?utf-8?B?aDZJcmo2RXpMWk5GMStkUVROL096a2VrU1pLWkgveTMxTEhSMk5Wd09DSUJQ?=
 =?utf-8?B?WEl1MmZJNTYycGdsSm1TVzJmYjNsczRuV21RWjJ3Y0xyb3JITFRsS01lMk1W?=
 =?utf-8?B?TlYrdDhHcHZERkRVN2RUR3Znc253eFFQcEtCSEVOQThCSzBUTmxpN2tHQ3JU?=
 =?utf-8?B?OGRscTEzRXNMajE3RkpvcGJ5QmFTYllBOUxDem1GTGM4ZjhKWTJOQWdkQUJj?=
 =?utf-8?B?YmttOEYyamswZDRweE5KVWhQU3JzUHVEUXdNYTVJMlhMN1dTMFNlN1FwOStv?=
 =?utf-8?B?VWl0eE8rZXJ5c0l5aHEyak91YXJ5TFZMaHltZThOTThUZk91dmhMdkp2VnVt?=
 =?utf-8?B?L0MveUNMdGpqMmVCemswUUxzVEpMUkwzVk9xUTBhODAwMXpLWDFRU25IcVVz?=
 =?utf-8?B?Mkhac2U5bEJZSTZWUE1SNEU3YUJJVlZ0a3U5OXZCWDJxdzg5bXdVYmhkRTAr?=
 =?utf-8?B?ajhQenZKbXVIdVprbVYyRG9hYys3RXlmNXdFTHYvYThDcUs0ZGQ4bVBoMnJM?=
 =?utf-8?B?L1BkbEhscU1ZYWhPNkl3b3FDUDZ5L2dwNTRkNFI5R3JVanBwS0VtVTZrMW1h?=
 =?utf-8?B?WDI2eG1ZY0ZYK1dTVkN3dXdVdzJmVWJxbmVwK0VyUDlZb2lpTURuQ2lKS2Zp?=
 =?utf-8?B?cUtYb2hkazU5SXhibkUzMzZndXliMjExNWZkUVRGbU8yUDZyNnZVUFhSZURT?=
 =?utf-8?B?eUF5bXdmRjZnaUErRFBqa056TU44MU1rZVBiK0VkTVVyazFrSjN5VEV4RSsz?=
 =?utf-8?B?RnYxUDdqN1NIZWpObWFKZmQ2U3EzY0c2K3FseXZBRVhVaGdJejk0YVl6d3Vx?=
 =?utf-8?B?aVZkUlR0bUxqc0hhTWFXeGNwS3B1c1hiL3J5RzBMU2dKRlUzQ1B6SVUyN3Nj?=
 =?utf-8?B?dDI4RzlEeGI5VFBvL2NkZlBWMnpSUWoxMjNCTG9zQ3g3aHh1bUJsTHdiaGxF?=
 =?utf-8?B?SmdRYmdGV01KWkNUaGQ5V0hkWUtqaHQ2MkludTlGb2RUNWY3SXFGbmd5a0tP?=
 =?utf-8?B?V0xiNW4wYmlldDBwTVlMd1RyK01rOGoxby92WG9KWVdoZUZZOGExZ2pkYWc2?=
 =?utf-8?B?RDNHUWFZZ1g3ZXprT2J4KzhneGFVdjR3dnFtcktxMDUrdktFejl2NExVUjJ5?=
 =?utf-8?B?U1ZxUkJlQzlqbmNNQ3VmakxDODZIRFNrNWFJb2lvTEpCRzlNU2FaL1NJZXpC?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6467ee-ce53-4674-90ad-08ddb57c6fdf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2025 13:13:41.7088 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J1ALxlhgpKQlNgPxXwbBytdBLeCHnbAGgXsP76s1Xu/nTRGHKikFqgoFufAFY++Ia3SSdsNhB+TqwMR1BGtEuMlt5vhvPJbMYnOvYZ/YwrY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE60A892D7
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751030040; x=1782566040;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XgHPV5lTM23hnrldC1balIAYPsV8of+GnEwoFCAZ8Y8=;
 b=WyLHrtNqcuRz7vqncVdqEYNrDa2xt4AwbQe40C1s54Fnoneh/25NRdzT
 iq6IyoyhgHdJuNqk87+ElmEB4JwvHG7ALwY/Uc94zwI8PPSQXofK92/28
 c9d9MoieyvgnHkDvatB6YQ+6UImi8c25FQ406wdCqeAeupAsV87xCuCdo
 RdlXqp2X4w1ZCVFxJ7FuLrhghKlqvhsNoLbzMRb5CV++rO0ckzJGjTtzw
 xw2m1zYveXe8d9j6KaT4BFcMjI4eK+6+u7tDX6DewmGMHJY3iKdk66AT6
 eR4d62ky8kuqak7Zq2rkMurmnJlr7PZ6XIVe6VtQy8wv46vX4LQ7VE3Rv
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=WyLHrtNq
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/5] idpf: add support for Tx
 refillqs in flow scheduling mode
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

From: Joshua Hay <joshua.a.hay@intel.com>
Date: Wed, 25 Jun 2025 09:11:52 -0700

> This is the start of a 5 patch series intended to fix a stability issue
> in the flow scheduling Tx send/clean path that results in a Tx timeout.

No need to mention "series", "start", "patch" in commit messages.

> 
> In certain production environments, it is possible for completion tags
> to collide, meaning N packets with the same completion tag are in flight
> at the same time. In this environment, any given Tx queue is effectively
> used to send both slower traffic and higher throughput traffic
> simultaneously. This is the result of a customer's specific
> configuration in the device pipeline, the details of which Intel cannot
> provide. This configuration results in a small number of out-of-order
> completions, i.e., a small number of packets in flight. The existing
> guardrails in the driver only protect against a large number of packets
> in flight. The slower flow completions are delayed which causes the
> out-of-order completions. Meanwhile, the fast flow exhausts the pool of
> unique tags and starts reusing tags. The next packet in the fast flow
> uses the same tag for a packet that is still in flight from the slower
> flow. The driver has no idea which packet it should clean when it
> processes the completion with that tag, but it will for the packet on
> the buffer ring before the hash table.  If the slower flow packet
> completion is processed first, it will end up cleaning the fast flow
> packet on the ring prematurely. This leaves the descriptor ring in a bad
> state resulting in a Tx timeout.
> 
> This series refactors the Tx buffer management by replacing the stashing

Same.

> mechanisms and the tag generation with a large pool/array of unique
> tags. The completion tags are now simply used to index into the pool of
> Tx buffers. This implicitly prevents any tag from being reused while
> it's in flight.
> 
> First, we need a new mechanism for the send path to know what tag to use
> next. The driver will allocate and initialize a refillq for each TxQ
> with all of the possible free tag values. During send, the driver grabs
> the next free tag from the refillq from next_to_clean. While cleaning
> the packet, the clean routine posts the tag back to the refillq's
> next_to_use to indicate that it is now free to use.
> 
> This mechanism works exactly the same way as the existing Rx refill
> queues, which post the cleaned buffer IDs back to the buffer queue to be
> reposted to HW. Since we're using the refillqs for both Rx and Tx now,
> genercize some of the existing refillq support.
> 
> Note: the refillqs will not be used yet. This is only demonstrating how
> they will be used to pass free tags back to the send path.

[...]

> @@ -267,6 +270,31 @@ static int idpf_tx_desc_alloc(const struct idpf_vport *vport,
>  	tx_q->next_to_clean = 0;
>  	idpf_queue_set(GEN_CHK, tx_q);
>  
> +	if (idpf_queue_has(FLOW_SCH_EN, tx_q)) {

	if (!idpf_queue_has(FLOW_SCH_EN, tx_q))
		return 0;

> +		struct idpf_sw_queue *refillq = tx_q->refillq;
> +
> +		refillq->desc_count = tx_q->desc_count;
> +
> +		refillq->ring = kcalloc(refillq->desc_count, sizeof(u32),
> +					GFP_KERNEL);
> +		if (!refillq->ring) {
> +			err = -ENOMEM;
> +			goto err_alloc;
> +		}
> +
> +		for (u32 i = 0; i < refillq->desc_count; i++)
> +			refillq->ring[i] =
> +				FIELD_PREP(IDPF_RFL_BI_BUFID_M, i) |
> +				FIELD_PREP(IDPF_RFL_BI_GEN_M,
> +					   idpf_queue_has(GEN_CHK, refillq));
> +
> +		/*
> +		 * Go ahead and flip the GEN bit since this counts as filling
> +		 * up the ring, i.e. we already ring wrapped.
> +		 */
> +		idpf_queue_change(GEN_CHK, refillq);
> +	}
> +
>  	return 0;
>  
>  err_alloc:

Thanks,
Olek
