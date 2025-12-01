Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5AEC96075
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 08:37:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58CF840B29;
	Mon,  1 Dec 2025 07:37:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WPu50-lCZ06t; Mon,  1 Dec 2025 07:37:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B040C40B31
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764574629;
	bh=nxDhONBcVrsuXx3M/FiXH5ras21RmmHQ5ByvIpoOlQ0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=P9TawyUdbrHjazTGmsmhuHI79Lq+CI99l21iKepNtB7wclQvF0cTG28rarcquCEFt
	 D9DwypSCgAqeRkTt9EjDildwWzFlqtKMrDSkc0tJkln1MDT3AH/oFEBuRNPagaLrMv
	 Vck4TcT3sIxs2ukEfu7zro7i5dfIBvkOTSmqSWHgnbbehfgxEFEV/8+fjx9+NH0eaj
	 laTya4AHX/skTd28gsyH2R+y/5CPBObvKsXL86XC7J2j2U7VJSXiJqwcAXktNScO1B
	 3wnzwNSRroBONUHBZQjs90ljyfXnKz42xkx2qD0zPc11FOEJy+4F2GX6esVRdpByC3
	 W4sPeo+Vwhmkw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B040C40B31;
	Mon,  1 Dec 2025 07:37:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3DE4B1BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 07:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3047740B30
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 07:37:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NXDtWTvWDXNO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 07:37:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 15B2040AFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15B2040AFB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 15B2040AFB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 07:37:06 +0000 (UTC)
X-CSE-ConnectionGUID: xHWnVU8fTvS6YPq+u/XSww==
X-CSE-MsgGUID: TStVy0e2RA6mR65bCvrTnA==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="77134588"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="77134588"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2025 23:37:05 -0800
X-CSE-ConnectionGUID: dTa4l6sXT6q0JlLyj7tX3g==
X-CSE-MsgGUID: jMwuWekIQcq0RVJIsURSQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="193669832"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2025 23:37:05 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 30 Nov 2025 23:37:04 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 30 Nov 2025 23:37:04 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.48) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 30 Nov 2025 23:37:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ftg6M7HaH4V4L1dWcceI2dNvQ7gTA9BNak+kUT4IT8fN4pW+1zKBLGIfH1PuTEWjiTXPqWsqnzuYA945CavcHwsqrNbmKq8N1cyg5u23y4wadCir4Mndwg28V1dKP5SvkOmEo787C52Yefq9BXGR+5lviJ5Q0ZhBp2zuz9ktmIX3XchyLjaDmqyn2AXhHTwqtFMXIzZsPNJcHrwsknCjCECGm/5mJiNHCrvVscbjxJrzwwHfJ60GjE4GY5DDN6h29YpGoLv94K1V0zyoDDrB2SLnpGpFoBjt+i7JTahS/IYAt7MpamDi5WrRrs4E5fU/chsBZug4Vh+GvJXrOcLGbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nxDhONBcVrsuXx3M/FiXH5ras21RmmHQ5ByvIpoOlQ0=;
 b=nqrxK5TmGZj3pzsPyAN5LcLVljeQrKKCyqAsTQlsnxm2dn40LKKpi0rOFAH3/2KCr/klLyU5JxlS7NHR4Kb4Oh/7+x8d0X/eyyVdhrwpNY4/ks+gV0+mFXHT7KSul3ut6IrUOirnxW5/eKHgEa2JIZJflhNsxCJshYcnhttTsiNSa73V63zKxMJwhRVQ+s+mmKLSY3pp4K3XggK3IEwT4VKA1Tfp4Uu0v+uGJavLJdRcwZiI3Gw4mnLmLVyoSvlvpozMOiRB0gcWueU/vU7cxv8VW3OOFcfpS0UdquBTWF9k7rBKo/deFrPIGzCDB/K2BYm7136nPmz+D0dB3OLIzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SJ0PR11MB4862.namprd11.prod.outlook.com (2603:10b6:a03:2de::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 07:37:02 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 07:37:02 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Slepecki, Jakub" <jakub.slepecki@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "michal.swiatkowski@linux.intel.com"
 <michal.swiatkowski@linux.intel.com>
Thread-Topic: [PATCH iwl-next v2 4/8] ice: allow overriding lan_en, lb_en in
 switch
Thread-Index: AQHcXeZwbpNedV2ucE6J9CkWSpqhJ7UDFwQQgATpGQCABG2EEA==
Date: Mon, 1 Dec 2025 07:37:02 +0000
Message-ID: <IA3PR11MB8986430837663B174A8AFDA9E5DBA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251125083456.28822-1-jakub.slepecki@intel.com>
 <20251125083456.28822-5-jakub.slepecki@intel.com>
 <IA3PR11MB8986E6C10E42C5DD6DC717B9E5D1A@IA3PR11MB8986.namprd11.prod.outlook.com>
 <32fd9c75-e133-4f53-b839-101a579fd79f@intel.com>
In-Reply-To: <32fd9c75-e133-4f53-b839-101a579fd79f@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SJ0PR11MB4862:EE_
x-ms-office365-filtering-correlation-id: 9ae93c64-1dbf-4efe-0993-08de30ac6b36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?VjNBQWozU0lZWXdxZFZBdEp2cnJFZHhCSDlnUG1wM3Y1QmFrbm05Y1JZcmMr?=
 =?utf-8?B?bjczMVFJMWM3VmJOamR2R0U2WnR3RC9ZeERPeTNrVDJMM2VuUnZaTmk2dDZj?=
 =?utf-8?B?VWhyUmlJZ2dmVGtoZ1pSM2NNZTBycmhoVW0wcEhDT3VhQ2l3eFY0N05SSmZJ?=
 =?utf-8?B?NjdRcU03L3RoQjNiSDJqb2MxUlVtbGdyVERRTTNGa0YvaU5oaGI1cjRkTlQv?=
 =?utf-8?B?RURCMXN1ZUQwa0l0NXR6WmdpQWwwWW4rS1FFdWJubldDUzJLT09jMHIwdXJ3?=
 =?utf-8?B?NGI2bmc3NXB6WWQvazJMOUFiS0ZvYUN5d09kSG9CS1p4L0Y1cEZjbWJXR0hN?=
 =?utf-8?B?ZTloVVErUjdlSFpSbXFJRktCNHgvcUk0UlJicG5HWGMzeS9nZUlEOXc0Zk4v?=
 =?utf-8?B?MTNZUkZpVTFkTndqU1JvWnk2S0lZai92cUpyWjNjeHpwTUNtWURlbzZoQStH?=
 =?utf-8?B?Vk9xUkdISXpORkdjeWtSWHBLVHI3dDlNeC94WjRHbHU5R3FxdDlBUmgrZUJa?=
 =?utf-8?B?S3ZyTGpYZHhXT2g2d1M0M2p6eCsvRlJJa3Nac0JjVVhhMnNFUTBlYjlOUVl5?=
 =?utf-8?B?RG1wZ3oxNU9NUUdiOFVUSXorTWdhcjk5NHJmOUVFWGlESXd5WTFRYkdiSldX?=
 =?utf-8?B?ZmJRUHpnaVkybnBnWlVEbWViOWZ1MWJySVdWSGlZUTI1TDZrMHdoY2ViTkw5?=
 =?utf-8?B?NTRIK1NwTXFnU2dHMVNZcGxSOVZNN3VtVWc1eTNiN01qZkw4a0xtQys5YlNm?=
 =?utf-8?B?aWwybmJyVFBOYm9ncllPOUhZWURnTXRjNCtuS05PbzQzWm1GL0hpRlNnVE8v?=
 =?utf-8?B?cEJLdmVLdWNvbCsySG9WeDhCZ0N3S0ErWlNHZTlHWE1qQ1BaTWh5V0JyUVgz?=
 =?utf-8?B?SnRkaExzOVgzTVNVMi96d2cwNEZTVFF2QUZOK2dRb0p3U3pnV2Qzc1VWKzIw?=
 =?utf-8?B?T0p6Q3Qza0VvUTlOOHR4b1JkMGJEQW5VT0ZyUHBlWDV5NElwSVk0RmJ4L1hh?=
 =?utf-8?B?eHd5cVd4ZGJzUDFiaWZ6MDRTRDFBak5EaFlLYUY3dW9LbWt4V1lIK1RuaHZX?=
 =?utf-8?B?eFdjYjlIdmZLMVhJN3NXMk1NRVhBQThsakw4cWloQnN2SGkvM2pBK3hnU0k3?=
 =?utf-8?B?SVY2T2t1bmNQcENpTGlqUFpTQkx1MHBrVVpZZ2t5N2hESDBEUmlySXF2TmRj?=
 =?utf-8?B?N2x4RFRRTnluL1oxOXFaQWlnd1hZR0kybWgvb0R1bFJzOXRFbmxGZFd6RlVp?=
 =?utf-8?B?Um1PeEk4VUs2ajZqelR1ZFJGMjloeFB5L2JrZEdYZ0FRTml0RVg2RzFhWWFG?=
 =?utf-8?B?KzVkTTJSbDhqOWcwb1VMbFlnRk5ScC9CLy9BNVhEMGdmbFltZEU3TThMQVVV?=
 =?utf-8?B?aDRVWWpYRnVLek1tWTB0Q3B0ei9ZUUNlSytHMjgxS2RSRlRIMnpmUW16Mzc0?=
 =?utf-8?B?VHdTQjJPdHZlWksvUkFzNkd6cXVnMGNnd2REL1dkQ3ltalZmMC9EcVhnQnZD?=
 =?utf-8?B?cFBHcFczYXNMSFRvenBieE1WdWUyTzVmWUlULzJxMzlhcGJXWEt0Yk01N3k0?=
 =?utf-8?B?Y1hFL1ZHa0JQRitpVmRhTmtkKy9rL2dZVHh1Y2lYaVJZRHgvU0NCSjFhT3FJ?=
 =?utf-8?B?QWxqN2JOMllNRXM1a0xwczRyS0dRbnFiNDhHSXY3NHdPUElmT1hjeGoxNTJS?=
 =?utf-8?B?NjhrUGpyN2IvWlFxMWZIWmVBeUU0THZyVnNTRnE5cGFBdyswM0ppUHJlSkdN?=
 =?utf-8?B?SmQ4VENDZy9ZL3ljN21uclNOT1pxZjMzOTE0SFZWUU00dW15dTd5Ni9NeWdi?=
 =?utf-8?B?cEJOZ3ZOY1RhZXZUMHo5ZU45QkVoc3IwaE40MHcwRExiMVdYbG9sbElSNG10?=
 =?utf-8?B?d2VrbFdlWFNSb05taHRySlZVUEo2ck1wVDNMcFE4TWtCa2FDY0tpYjlJOTR2?=
 =?utf-8?B?cDdQRlhDRENoNmQ3cTV2OTNrWWE5dnNZc3lHenBwTC9KemJTMkZGWG53SVNu?=
 =?utf-8?B?cXhGbGVXWWZWN2Nxc3Y2K0hJK2g0RFYzZi9WenRSSjJaOGd2Ty9KZHdmVHAx?=
 =?utf-8?Q?lbEemF?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bjJQSzRDZDk5SVRsVmgwc3JXUU8zaUM5VnlOVmllc0RiLzBsWGtXT08zUStW?=
 =?utf-8?B?VkUvUW5nRVJsQlVnL1NPS3BiQVQxcklzaDVwTkVsc2RpZ29uaTRSbHJ4eGxZ?=
 =?utf-8?B?ejMyYkpjWXRpQU1zZmZYNHRzVFZqU0EvTklzeWFtK3hiRmJzdlJHK1R3ekFI?=
 =?utf-8?B?em1yWlRqWkFsUVJML0U1OVRuOFdJb3RKTk1ZdFJrWTkzOGZ0bnJiU0wrS0dv?=
 =?utf-8?B?UGltKzhmc24rb0Q2MlBtYmthbnZvaWdWNTJTanRRajd1MjJTbEplUis3ZDVa?=
 =?utf-8?B?VWFPWERmK1plVHF5UjBuUm54WWRGaFJrcjdpeG1KSDUvOCs4cHhCZ01iaFFr?=
 =?utf-8?B?dWtnblFSN3Z2UWcrdklKZ1pZelJtQXFyUU9LVUF2L0VuWVFUZFlLRlBsRTVy?=
 =?utf-8?B?U29rRjhRZWlYdDdwdS91Si9JVXFieWZWbHlUS1AvY1dISDZ6ME5rM2R6VUJ0?=
 =?utf-8?B?MDR6N0VLYm5ZYm95YUcxMnF1SmtvbWpiZ3YwTElySHp4NTlRUVlXUmZWdWQv?=
 =?utf-8?B?TGtPNnpsV0FvNGYvZWM1Q0hVbW5JREIxSGUvTm9JbGI0RUFnc2VhYlNEdDBX?=
 =?utf-8?B?YWY3YWYvenZiQkl3M0NGMVozWEVzbnJTNTBlWmxNSjVpZHNJMDZYS0JhYlpW?=
 =?utf-8?B?ekVObEo5Wm9ZckVWKzQyRnF2QnBjaHNCMEJKd3IzREd2NjVCejNJZzRtbzd1?=
 =?utf-8?B?RUw1ZEhNN2F1Ync3QnV4VytrUnU3MHlSUXhsb1NXcjVDRSs3U3B1Zmx2SHBE?=
 =?utf-8?B?bmFiRjU2Z2ZIa2dyRVV3dU1MZkp5VmJiLzU3R3UvYmZhVFZuMVd4VVczeDBS?=
 =?utf-8?B?NHFpTDM5UXpsUDVaR1U4UDdMcmQrRVViOTlTOTh1cEJVRVhyUEtXUFZKa3Zm?=
 =?utf-8?B?aUxMdXgvWm10Mk1IeTdGWXhyRFJjb1NENGZHb0ZNSlBDSHNJanE1R3RVNHhP?=
 =?utf-8?B?UGsrYWtVNW00ZjAwVVZSWXRwZmd0dTgxYWVUQnkwcTNkZkRJUkxNZUxkKzJi?=
 =?utf-8?B?QWNoS1FiUlVrd2VwT21xWklKd3dHU2pCQ0lyZWsraE9BWDBtRk1hMnFHYy9B?=
 =?utf-8?B?cm5TWmtFZkVWM05SbFJid3dZOTlGYlZLdk5zR1BCV0gyWVNwYlBPK3AzNGZE?=
 =?utf-8?B?NWxSUTBmTmVndDlZcXo0S3RPcGZBTFJ5MW5yY1k1OFRjZDI5ckVsVk5pR2VB?=
 =?utf-8?B?bklObHBZNEtrbUF6OVQrbXI2ZUF1ZjFRTkxmcUpvL3gvZThXMjdkbk4vS0Jq?=
 =?utf-8?B?ZXVjN3RaSTdWM3l5RS9EbkRqWDM4a3ArcXlVcitUbExiOUMyM2FMOXcwYWRQ?=
 =?utf-8?B?NSt1cG04T1ZTOWtuTTF5eTJCbW5GbGtwdWxjUjNZcFEyZXlCWmpHQUcyakhi?=
 =?utf-8?B?ZmFHSFZuK05RemtsTGUwN2VPRXBRL2M3ODhzT0d6dm5YTmUyaHlxVEg5bkFI?=
 =?utf-8?B?dUgxSjJHNHpxcEFCUDRwWDVaZzdWTGJqazZkK2MycVdNZ2lkb0pSYzJGeXhl?=
 =?utf-8?B?cko1Y3I0UnVnWmJyUXJyYXpNZDUreWFEaStRaVZtejY1U0Nxb0lQdDdCZmNj?=
 =?utf-8?B?N0tYZ1dkRjEwNVZja0JkdHh2b0RnYTJyZDFabTlrYmVQbEdHOHllUlpLclpx?=
 =?utf-8?B?dzZDS1pRc1dLRDRjWng1eVNpdzhKc09TMHJnVnU0NTlDNHgrQjU0enlqRHpB?=
 =?utf-8?B?TThtZnNWZHJtRXovUVhhS1dKcEFHYmh6ZVgvVU1mUHVDTXJVRitBTFpORWxm?=
 =?utf-8?B?YldQa1M0UWt5Ky8rbXpoZ2kzUDFsTWk2MittUEhic3VTb3dhRDFOR0VjeG9u?=
 =?utf-8?B?RW5hN0d5QnYyNWtMQ1FsbFl4bFd6Sm1FbW9EWFJiMnVVVHU3WjUyQUhQbkox?=
 =?utf-8?B?UVN3VWtGSC9mTHVWRDgyV0dXMThEM2hRdG1YTmJvY1hEeUNqU2FBMFJ5MS9Y?=
 =?utf-8?B?T2xDT1NKWmZZWXI1UTRxZlVzMFFRRmtBR2JjeTg4aTJCQnNnMEtnK2hINDho?=
 =?utf-8?B?a1lUMUs2dW9wM2k2NG1HNWE4Qi9MRkJaM2J1Mml1Z0Q4QUdsQU9MRFo3MDhP?=
 =?utf-8?B?cDZtYVExSktTdkt3bHc4K0RZeFU0MnNIcmNkUmJMSEwrOWZxcDhSSUwxamlK?=
 =?utf-8?B?NUprRWNoUEdoY2IvMmxWdlI4b1hPN0RNTjNqU2V2VWlGcmVXRTRoaDRBOFYz?=
 =?utf-8?B?TXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ae93c64-1dbf-4efe-0993-08de30ac6b36
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2025 07:37:02.3886 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Zo5a+fheVn8IGkRUoK5w8Wta+CgmMLkwQBh7Bsz7d7lgXoVWvXB/QQ5aK/YmcFrFjB/MvNYLvDh6IpoMRqlZvbphZEQDt4ZuTaSZrh84LlU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4862
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764574627; x=1796110627;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nxDhONBcVrsuXx3M/FiXH5ras21RmmHQ5ByvIpoOlQ0=;
 b=JJsrW4tAztK5hUrwtipMZq2S0CdpHCLiJMc7jw7/zOptw5zrgULemWf6
 7yfyUFv69gAJBV3MH/WDDyKrm5l9y9gO+9vBBBvZUF/nHHshf6sLucivx
 6OsgXxWwuXApcpH1rbXzLK81GtCqRctUev4UAnzwSoaWlkXX7F2q+kj5v
 a7HD1bfVt4H8W9IAyp4xMmsHZCmGVYO3wtwFCvXEwm6SKcm2sHkWIzNgL
 GcnX0Sm/lkW+YqhKZFmdERlowv6sl30YMOPqc+7jfTuu9hjDano54yyRm
 7Hsw14I4rznGRunCqv/bf+EFAFx+cGzzj1aqUAOu5jdzs+dlbMebMJw7O
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=JJsrW4tA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ice: allow overriding
 lan_en, lb_en in switch
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2xlcGVja2ksIEpha3Vi
IDxqYWt1Yi5zbGVwZWNraUBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMjgs
IDIwMjUgMTI6NTYgUE0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9r
dGlvbm92QGludGVsLmNvbT47IGludGVsLXdpcmVkLQ0KPiBsYW5AbGlzdHMub3N1b3NsLm9yZw0K
PiBDYzogbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbmV0ZGV2QHZnZXIua2VybmVsLm9y
ZzsgS2l0c3plbCwNCj4gUHJ6ZW15c2xhdyA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IE5ndXllbiwgQW50aG9ueSBMDQo+IDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT47IG1pY2hh
bC5zd2lhdGtvd3NraUBsaW51eC5pbnRlbC5jb20NCj4gU3ViamVjdDogUmU6IFtQQVRDSCBpd2wt
bmV4dCB2MiA0LzhdIGljZTogYWxsb3cgb3ZlcnJpZGluZyBsYW5fZW4sDQo+IGxiX2VuIGluIHN3
aXRjaA0KPiANCj4gT24gMjAyNS0xMS0yNSA5OjU5LCBMb2t0aW9ub3YsIEFsZWtzYW5kciB3cm90
ZToNCj4gPj4gICAJaWYgKGZpLT5mbGFnICYgSUNFX0ZMVFJfVFhfT05MWSkNCj4gPj4gLQkJZmkt
Pmxhbl9lbiA9IGZhbHNlOw0KPiA+PiArCQlsYW5fZW4gPSBmYWxzZTsNCj4gPj4gKwlpZiAoIUZJ
RUxEX0dFVChJQ0VfRkxUUl9JTkZPX0xCX0xBTl9GT1JDRV9NLCBmaS0+bGJfZW4pKQ0KPiA+PiAr
CQlGSUVMRF9NT0RJRlkoSUNFX0ZMVFJfSU5GT19MQl9MQU5fVkFMVUVfTSwgJmZpLT5sYl9lbiwN
Cj4gbGJfZW4pOw0KPiA+PiArCWlmICghRklFTERfR0VUKElDRV9GTFRSX0lORk9fTEJfTEFOX0ZP
UkNFX00sIGZpLT5sYW5fZW4pKQ0KPiA+PiArCQlGSUVMRF9NT0RJRlkoSUNFX0ZMVFJfSU5GT19M
Ql9MQU5fVkFMVUVfTSwgJmZpLT5sYW5fZW4sDQo+IGxhbl9lbik7DQo+ID4gZmktPmxiX2VuIGFu
ZCBmaS0+bGFuX2VuIGFyZSBkZWNsYXJlZCBhcyBib29sIGluIHN0cnVjdA0KPiBpY2VfZmx0cl9p
bmZvLA0KPiA+IGJ1dCB5b3UgYXJlIG5vdyB0cmVhdGluZyB0aGVtIGFzIGJpdGZpZWxkcyB1c2lu
ZyBGSUVMRF9HRVQgYW5kDQo+ID4gRklFTERfTU9ESUZZLg0KPiANCj4gSSBkb24ndCBzZWUgd2hh
dCB5b3UgbWVhbiBoZXJlLiAgQm90aCBtZW1iZXJzIGFyZSB1OCB3aXRob3V0IGEgYml0LQ0KPiBm
aWVsZCBkZWNsYXJhdGlvbi4gIE9yIGRvIHlvdSBtZWFuIHRoZXkgYXJlIHVzZWQgYXMgYm9vbCBv
ciBtYXliZSB0aGUNCj4gX2VuIHN1ZmZpeD8NCj4gDQo+ID4gSSByZWFsaXplIGl0IGNvdWxkIGJl
IHNvbWV0aGluZyBsaWtlOg0KPiA+IHN0cnVjdCBpY2VfZmx0cl9pbmZvIHsNCj4gPiAgICAgIC4u
Lg0KPiA+ICAgICAgdTggbGJfbGFuX2ZsYWdzOyAvKiBiaXRmaWVsZDogdmFsdWUgKyBmb3JjZSAq
Lw0KPiA+ICAgICAgLi4uDQo+ID4gfTsNCj4gDQo+IFdoYXQgSSBzZWUgZnJvbSB0aGlzIHNhbXBs
ZSBpcyB0aGF0IHlvdSB3YW50IG1lIHRvOiBwYWNrIHRoZW0sIGNoYW5nZQ0KPiB0aGVpciBuYW1l
LCBhbmQgY2hhbmdlIHRoZWlyIGRlc2NyaXB0aW9uLiAgSXMgdGhpcyBjb3JyZWN0Pw0KPiANCj4g
SSBmdWxseSBhZ3JlZSBhYm91dCB0aGUgZGVzY3JpcHRpb24uICBJdCdzIG15IG1pc3Rha2UgSSBs
ZWZ0IGl0IGFzLWlzLg0KPiBJJ2xsIHVwZGF0ZSBpdCBhY2NvcmRpbmcgdG8gdGhlIG92ZXJhbGwg
Y2hhbmdlcy4NCj4gDQo+IEkgZG9uJ3QgdGhpbmsgcGFja2luZyB0aGVtIGlzIHdvcnRoIGl0LiAg
VGhlIG1lbW9yeSBnYWluIGlzIG5lZ2xpZ2libGUNCj4gYW5kIHRoZSBjb3N0IGlzIHByaW1hcmls
eSBpbiByZWFkYWJpbGl0eSBhbmQgY29uc2lzdGVuY3k6IHdlJ3ZlIGFsd2F5cw0KPiBoYWQgdHdv
IGZpZWxkcyBmb3IgdGhlc2Ugd2l0aCBjbGVhciByZXNwb25zaWJpbGl0eSBmb3IgZWFjaCwgbmFt
ZXMNCj4gbWF0Y2ggd2l0aCBkYXRhc2hlZXQgKGJvdGggImxhbiBlbiIgYW5kICJsYiBlbiIgd2ls
bCBoaXQgVGFibGUgNy0xMi4pLA0KPiBhbmQgcGFja2luZyB0aGVtIHdvdWxkIHJlcXVpcmUgdHdp
Y2UgYXMgbWFueSBjb25zdGFudHMuDQo+IA0KPiBXb3VsZCB0aGUgY2xhcmlmaWNhdGlvbiBpbiB0
aGUgZGVzY3JpcHRpb24gYmUgZW5vdWdoIHRvIGFkZHJlc3MgeW91cg0KPiBjb25jZXJucz8gIFNv
bWV0aGluZyBsaWtlIChwbGVhc2UgaWdub3JlIGJhZCBsaW5lIGJyZWFrcyk6DQo+IA0KPiBzdHJ1
Y3QgaWNlX2ZsdHJfaW5mbyB7DQo+IAkuLi4NCj4gCS8qIFJ1bGUgY3JlYXRpb24gd2lsbCBwb3B1
bGF0ZSBWQUxVRSBiaXQgb2YgdGhlc2UgbWVtYmVycyBiYXNlZA0KPiBvbiBzd2l0Y2gNCj4gCSAq
IHR5cGUgaWYgdGhlaXIgRk9SQ0UgYml0IGlzIG5vdCBzZXQuDQo+IAkgKi8NCj4gCXU4IGxiX2Vu
OwkvKiBWQUxVRSBiaXQ6IHBhY2tldCBjYW4gYmUgbG9vcGVkIGJhY2sgKi8NCj4gCXU4IGxhbl9l
bjsJLyogVkFMVUUgYml0OiBwYWNrZXQgY2FuIGJlIGZvcndhcmRlZCB0byB1cGxpbmsNCj4gKi8N
Cj4gfTsNCj4gDQo+ID4gI2RlZmluZSBJQ0VfRkxUUl9JTkZPX0xCX0xBTl9WQUxVRV9NICAgIEJJ
VCgwKQ0KPiA+ICNkZWZpbmUgSUNFX0ZMVFJfSU5GT19MQl9MQU5fRk9SQ0VfTSAgICBCSVQoMSkN
Cj4gPiAjZGVmaW5lIElDRV9GTFRSX0lORk9fTEJfTEFOX0ZPUkNFX0VOQUJMRUQgXA0KPiA+ICAg
ICAgKEZJRUxEX1BSRVBfQ09OU1QoSUNFX0ZMVFJfSU5GT19MQl9MQU5fVkFMVUVfTSwgMSkgfCBc
DQo+ID4gICAgICAgRklFTERfUFJFUF9DT05TVChJQ0VfRkxUUl9JTkZPX0xCX0xBTl9GT1JDRV9N
LCAxKSkgI2RlZmluZQ0KPiA+IElDRV9GTFRSX0lORk9fTEJfTEFOX0ZPUkNFX0RJU0FCTEVEIFwN
Cj4gPiAgICAgIChGSUVMRF9QUkVQX0NPTlNUKElDRV9GTFRSX0lORk9fTEJfTEFOX0ZPUkNFX00s
IDEpKQ0KPiANCj4gRG9lcyB0aGlzIG1lYW4geW91IHdhbnQgbWUgdG8gdXNlIHsxLDB9IGluc3Rl
YWQgb2Yge3RydWUsZmFsc2V9Pw0KPiANCj4gSW4gaWNlX2ZpbGxfc3dfaW5mbygpIEknZCBwcmVm
ZXIgdG8ga2VlcCB0aGVtIGFzIGJvb2xlYW4gYmVjYXVzZSB0aGV5DQo+IGFyZSBzZW1hbnRpY2Fs
bHkgY29ycmVjdDogd2UncmUgY2FsY3VsYXRpbmcgZGVmYXVsdHMgYW5kIHRoZW4gd2UgYXBwbHkN
Cj4gdGhlbSBpZiBzcGVjaWZpYyB2YWx1ZXMgYXJlIG5vdCBmb3JjZWQgZWxzZXdoZXJlLiAgTWF5
YmUgYSBjb21tZW50IG9yDQo+IGRvY3MgY2hhbmdlIHdvdWxkIGJlIG1vcmUgaW4gcGxhY2U/ICBJ
bg0KPiBJQ0VfRkxUUl9JTkZPX0xCX0xBTl9GT1JDRV97RU5BQkxFRCxESVNBQkxFRH0sDQo+IEkg
dXNlZCBib29sZWFuIHRvIHN0YXkgY29uc2lzdGVudCB3aXRoIHRoZSBpY2VfZmlsbF9zd19pbmZv
KCkuDQo+IA0KPiBCdXQgaXQncyBub3QgYSBzdHJvbmcgcHJlZmVyZW5jZS4gIElmIGl0J3MgcHJl
ZmVyYWJsZSwgSSdsbCBjaGFuZ2UgaXQNCj4gdG8gezEsMH0gYWNyb3NzIHRoZSBwYXRjaC4NCj4g
DQo+IFRoYW5rcyENCg0KRm9yIHU4IGZpZWxkcyBpZiB0aGV5IGFyZSB1c2VkIGFzIHU4IHZhbHVl
IChub3QgYml0IGZpZWxkcykgdXNpbmcgRklFTERfIG1hY3JvcyBub3QgZ29vZC4NCldoYXQgYWJv
dXQgY29tcHJvbWlzZToNCiAtIEtlZXAgbGFuX2VuIGFuZCBsYl9lbiBhcyBib29sIG9yIHU4IHdp
dGggY2xlYXIgY29tbWVudHMuDQogLSBEbyBOT1QgdXNlIEZJRUxEIG1hY3JvcyB1bmxlc3MgdGhl
c2UgZmllbGRzIGFyZSB0cnVseSBwYWNrZWQgYml0ZmllbGRzLg0KIC0gSWYgRk9SQ0UvIFZBTFVF
IHNlbWFudGljcyBhcmUgbmVlZGVkLCBlaXRoZXI6DQogICArSW50cm9kdWNlIGEgZGVkaWNhdGVk
IGZsYWdzIGZpZWxkIHdpdGggcHJvcGVyIGJpdG1hc2sgbWFjcm9zLCBPUg0KICAgK0tlZXAgc2Vw
YXJhdGUgZmllbGRzIGFuZCBoYW5kbGUgRk9SQ0UgbG9naWMgZXhwbGljaXRseSBpbiBjb2RlIHdp
dGhvdXQgRklFTEQgbWFjcm9zLg0KDQpBbmQgaGFuZGxlIEZPUkNFIGxvZ2ljIGV4cGxpY2l0bHk6
DQoNCmlmICghZm9yY2VfbGIpDQogICAgZmktPmxiX2VuID0gbGJfZW47DQppZiAoIWZvcmNlX2xh
bikNCiAgICBmaS0+bGFuX2VuID0gbGFuX2VuOw0KDQo/DQoNCg0K
