Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF1B9138CD
	for <lists+intel-wired-lan@lfdr.de>; Sun, 23 Jun 2024 09:40:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F9181773;
	Sun, 23 Jun 2024 07:40:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b2j9n0B6kSlx; Sun, 23 Jun 2024 07:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6CE2981776
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719128430;
	bh=56zTah2B+or18Wl9Y2JcoUf/ku/oOP38Zt/MiyhH0qk=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=D7Oyn4INaNRzO/wU1Rfq/0fkU+960wtKLGZsh+3dzigzYez81+/5cwVbOSG1V4lkG
	 nsOo1RnztBVJtmfHaym10QsDcZ5J49+lg3MQjeXTW55UyFS0Cj28NCJaUreV832zzH
	 JR8+FU4oXF642n22tzHSP/ePhQvMyeWNYaYXch0vmmXQj2DQvRRsfZd8YN4ao2kP4o
	 hRXr7BaBERDMj0MnivQoBROtQht7PK4R/nhQYuG2Sl331b/OmMj6/XVc273DT7zUyJ
	 lTNgO4Ay7TaxQrx8Fa19fOc7/6Zs7x//O0iQgmNyJrZz4TM9wJv0q3l8sOgErTieUC
	 zbMG4M3Zrp9uQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6CE2981776;
	Sun, 23 Jun 2024 07:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FE471BF59E
 for <intel-wired-lan@osuosl.org>; Sun, 23 Jun 2024 07:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1BEE8607E2
 for <intel-wired-lan@osuosl.org>; Sun, 23 Jun 2024 07:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CD5kYKi4CeVi for <intel-wired-lan@osuosl.org>;
 Sun, 23 Jun 2024 07:40:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A6206607E0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6206607E0
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6206607E0
 for <intel-wired-lan@osuosl.org>; Sun, 23 Jun 2024 07:40:25 +0000 (UTC)
X-CSE-ConnectionGUID: K8+hZXcdSdyNPeV1oCsFzg==
X-CSE-MsgGUID: gTR+Y0x/TE25NSm4dFcxKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11111"; a="27529791"
X-IronPort-AV: E=Sophos;i="6.08,259,1712646000"; d="scan'208";a="27529791"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 00:40:24 -0700
X-CSE-ConnectionGUID: e+6Ql5jCTGG87MiWY9K8Og==
X-CSE-MsgGUID: 2kokJJcRSCSBYQXXm4MulA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,259,1712646000"; d="scan'208";a="43071470"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jun 2024 00:40:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 23 Jun 2024 00:40:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 23 Jun 2024 00:40:24 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 23 Jun 2024 00:40:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=obomcyzptbbX0ecgIwIl86sGaw/TSUNVAxTs5pO7GS4bdPr8Tmg/D4YmTxkpQpnYRSznSDcGpnADbRlO2Q81NsJRfnBQZ13S027gRQvMn3Pr/wAN0DIMg/E5/CWcbPclZWFrBSMo/VzrtW4cy7od37rayb9OiqSHn8w5bE/ugJHET8GgWMuu2Msv8YGz5g46Oo60AJI3p/z3qOGF+ba7B9NJi1GxtIhHpK2OTTScgnznyihVQH6DcGBpJLSvCeKXCf0oBfTAukMxk71pqOEout/JlLppoJc65BBAOMX4xIMxlQy0wJjkoxztiWtR9MgmZIaOsCA3uWo2wkjXancVXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=56zTah2B+or18Wl9Y2JcoUf/ku/oOP38Zt/MiyhH0qk=;
 b=XeAEhLS+x1pJyO4Ii/HUys0ZZMyY+0yDMVPUGHLoRm6+QBZ5QcWRin06oRVHqudLg4jACsc7+OD8fIUVsAwg5lza7F9OzudEwv6OfL84X5Pp0joosj1SFvQZP/pMi7UHpUuvwowxNreyQthL2Jspa2xbdCflNoC9prTcxmxHWvi/xUD0f+o/92JDNFsVWG16CjYD6S7F16PTwFcM9k+W9jA04KbvUIszVSFp0tUjshZQ1iwf0FA57cMxS7bdS/pfPfWSn3inAJQT+vFpDc6SyglBv76g2851tWUcj90adaO5PH310hltSbJdUfXZ14IJp0Eukbi9OKCWmDTCDhKXsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5949.namprd11.prod.outlook.com (2603:10b6:510:144::6)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.25; Sun, 23 Jun
 2024 07:40:22 +0000
Received: from PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861]) by PH0PR11MB5949.namprd11.prod.outlook.com
 ([fe80::1c5d:e556:f779:e861%7]) with mapi id 15.20.7698.025; Sun, 23 Jun 2024
 07:40:22 +0000
Message-ID: <1389af76-f0f9-4ac2-9a42-450c3ae99cdc@intel.com>
Date: Sun, 23 Jun 2024 10:40:16 +0300
User-Agent: Mozilla Thunderbird
To: "Brandt, Todd E" <todd.e.brandt@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
 <6be9d31678aa4d8bbe9e1ddb75a2791f@intel.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <6be9d31678aa4d8bbe9e1ddb75a2791f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0007.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:2::9)
 To PH0PR11MB5949.namprd11.prod.outlook.com
 (2603:10b6:510:144::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5949:EE_|PH0PR11MB5128:EE_
X-MS-Office365-Filtering-Correlation-Id: b5a71d2b-1039-4a72-d1da-08dc9357bcb1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?KzFDYnlSU1ZVUmZkOC9maHVLZGJCNHZoNG8rWjkzUGExZEE4cTZzSytvYThB?=
 =?utf-8?B?QmtUT1E0U29yeHBma2QzTjFqNEZOMlljaHpROFpRYXZWUWN2UFJSQ09mVG1S?=
 =?utf-8?B?UTdUYnJhZ1ZBVVoyQnJHUXBXWnB3bGdNeWdsek9LcGptQy8vWWV4cjR5STZi?=
 =?utf-8?B?eldOZ1kwdTRicmdzOUp3TUpWelhCeFBVSjdFcWR3UkVXVWIxMzBCZUF3azVj?=
 =?utf-8?B?NmRLVjlTZXZ3SGduYzVVa1ZWY1UxbjBWcFIwTTNmelNPTHRVcHgyd0VhNkp1?=
 =?utf-8?B?SXdJWFpkNUszRklNem4rYi9CclNFejZZOFlxaEpTc2lzd1F5c29Wb3VIeGww?=
 =?utf-8?B?RHVGclZvRjZ2TTBSdWVjU21OVU5vUWFWNGNZZ0ExbmNjNE4rdzAyRzZMMjRJ?=
 =?utf-8?B?MHF2RUNNa05yWFhiSVlZbFRmNWJJMktmQUE4RTJuM3IzZXNBbU1heExyOUtS?=
 =?utf-8?B?R0c2VFgwOUZWOWNTQVRKczBOSmk2ZlRtVS94L2JielBnTVpqYUlWU3puV0lI?=
 =?utf-8?B?N3V3eTJIVnc5MlJ1Z1daUnVwdlhET2lRK0QxT1ZjS2RhZlpaTnJsb293aWRM?=
 =?utf-8?B?NVdtNHlhd1VBZW5hNE1HblhLcms4bzNlS2RVcWtKMVlrSnhiV2Fwb09NR0FJ?=
 =?utf-8?B?MzM0aXIycFE0cGpwWmVoNWdLbXZRZjJUOWw5SzNBZGY4R3RwRWpwTnlNZjFU?=
 =?utf-8?B?Qk1YRDVKRDRidW9oNzlyZlZjcDFGZU1JVjFKS25Oeno2Ny81Y2orRkFLWXds?=
 =?utf-8?B?ZVVJaXlJQ0U2by9jMmpadStXRDVZZHdtNjIrVlNJR3R6cE1vOUR2L0VwbFhG?=
 =?utf-8?B?ZDdjZ2dZYlQ4aFVOY0djVy9ScFo3aDhxbFVLYnV5WStEdk1IaEpsTWlHL2t3?=
 =?utf-8?B?TXZ5ZUdMQ2RGUGdRZ1E4WVBQYmw3WUdRUDd2cEZUa0pyNUJQUFhRQW5BOVdn?=
 =?utf-8?B?REVEWWgwVC9BS3ByVEFhZWJaNXBtMUJPeTBmK2V0MjRTYU9xQ0VHbCtObTVJ?=
 =?utf-8?B?N1ZQb0dkeW5iU2VJQTQvalllYi9xZkpMZVJhalBreXgrSXhlMXlIREh2RmJJ?=
 =?utf-8?B?MXRzZDBsWFNUQ0FPSG1DSGVDWHNUcGlYVUVla3UvckxzamYyWXVRNFBOY0Q4?=
 =?utf-8?B?N0s0dGluNmpzQUpqMDFURTJ5dmdkc3VPZW0rMEgyRnNUUmMrT0lBa1dUeVhr?=
 =?utf-8?B?a2JPcm9yY2lYalU0bXR4b0wvRTVaMDlKK2p3UytRWEJySE4rZVFIZE85NTJy?=
 =?utf-8?B?dGgrRzFSdHhOMnYzTERQTzJ5SnEvSmRWZFlZYm4ycWFHYmdMUElJUCs2dWgw?=
 =?utf-8?B?SmFQZ1JMb3hKclZmSjBEOXNZMTNvVm9ybHdLQnVlL0lSNlRvYVVUc3QzTFpT?=
 =?utf-8?B?cVY3eHRkWDFxTGtWdVRZZUNSNDZNWE04Yi9KeXhDOWtNKytLQm8vNWgrdkZE?=
 =?utf-8?B?YjlsK3V1NnMzZ1RlVTcwbS84Wk1kVXlEVmN5WHFkbkJZUEg4d01kZDhZRHh6?=
 =?utf-8?B?allIN0RxdTlWTStpUkNVb1NPaVNzckNRRTdCL3FSenBWTXlsVEtkQUN1emNk?=
 =?utf-8?B?NWJQWkV5YnhsMlQrdHg0enN6cW5YdC8wUndiNmRlbitaZWV2T0xsS1Bmcy9U?=
 =?utf-8?B?bitQZ3pvYm1lRzdkMStUOGFEOHQveHVNZERWbFRRb3hxbTJIVFY0MWdvS0pG?=
 =?utf-8?B?cXgwSW9hKzk1bFY4dGhYV1B6Sm10YmZGZjNiK1dzQXNrK1Q5YzNlNnFRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5949.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mk8rNlBLeG5PNmxidk41cWswSkZmRUtBYzYzSVFMT09iZTlSVmp6ZXI3ZEha?=
 =?utf-8?B?eTN1bUhaWWZOMlNoeHFhblNHR3dzQnAzUTVTUnRzemx0b1laUnpYNHBReXlq?=
 =?utf-8?B?WGphMU1vNmRBRzZFYW1QdExEZDdHbzUvdVNiMWFoVS9CZ2VVMS9TS00rak9E?=
 =?utf-8?B?eFBIZmNuSnJ1djZNY2VZVUZCM2l0d3FjcWlxYzhXV2JJQUtWOC9aUi9DeTBV?=
 =?utf-8?B?Zm43TVIxSUJFU2IyS1M2Z0MxS0hhNHFCZ2lPNmNodSt5V1VkcEdwK2dRYy9w?=
 =?utf-8?B?bGZ2RmxpSnBGRXc3b2hQRHpZU001T3pLMno1UDB3TTVYWjFCQkpLWldjYnlE?=
 =?utf-8?B?bkFzWU43OWN0eStJVTQ5NlVDOGNrai9UNlIycno2UDRUd1ZSbERBU21NMmt2?=
 =?utf-8?B?Q0lRQVBSMnptYlVoMUticUY3OS9vOUkzNk1YcjRDcUcxR2FoT1BYUXh0U09B?=
 =?utf-8?B?YklDOHBGNUNEQ3lrOWZzQ3I1d1BhZGE3U2lLbTJObnp6NW9BNUIwZ3JlUDdJ?=
 =?utf-8?B?MDhBUlhJK2hPOGdlZHl4bjRHOWY3ZGdkdzdlSVdOSVdtRk51VmNDRWNXWHRV?=
 =?utf-8?B?L0llNHFKZkhScHF0bFFCSEN2YXlLcmlTVTUxUXFkQ1dkUmtzUlJBZEtqbVVu?=
 =?utf-8?B?eWNQVkREMXM4ZmVJNWdERHdNdm82eTBWNURRMEFwam9PL1VyL1JYSnBmZjRS?=
 =?utf-8?B?NzBONzkvM1VKZS9rMDJXUXl4Nk5MWW1Jc1owUlpTbHk3OXZPRHdPYzBaWVk4?=
 =?utf-8?B?Q01OZ09TOUMyczkrOHdPT1E1WFoxWGtQbHpkZ05odHlmZGtlTkduLzJLVDVi?=
 =?utf-8?B?TXRnUnhIL1FZSkFzcGdJRDd2ZDk3WE5SU0tudEd4TjVleDMrUXNqbmtDRkNZ?=
 =?utf-8?B?OW1taWNYOGJZdURiODZKSHZEUW9iQXZoQjNTKzZyellZQ3N3T1N5WUFGSlFU?=
 =?utf-8?B?bCt0VFplaHRMMXFMUk1KSEd1NDRRUG9PNklRWStKNkxKS2ZvQjFtcVVhWk9P?=
 =?utf-8?B?bSt5NmR2YWdNS0pnelZxM05tT3R0UDR4cXcvdTlQZ1pPbUZIZHRtNnhoOWM3?=
 =?utf-8?B?eTdJVHMvSWZmVHc4SmtVdXZnbXJSVFNLRzBoVFJxUFZXclAwbzZ1WnlFSzZM?=
 =?utf-8?B?eXhRdUc0SUE3NnFnU2JmZjIzenREL01DRkY4YmhuNTRybnA1MmdUQzJDalhs?=
 =?utf-8?B?aytHT2dCZ2hPQXFtWmw3b2JFSklsRWJYK2IrRlROUEF2K2dkQXcyOC9MUldt?=
 =?utf-8?B?dEVhUEJKRjZ3ZzVwc2IrSG9FYXVubk1hZmIyUVc2d1ZLMmZGTG93K3RVdXVG?=
 =?utf-8?B?S0VkRjlHSDJrSEtuY0U3eCtlSkJEQ0hCWE1RckdMRGpBek5PSUNmQ3VvVzJ1?=
 =?utf-8?B?WjJZUWRtem1PV1JTcjM3MGpQUFFQSmk1dGQ1QU0rZTNyRlIwaFE1Nll4UVRx?=
 =?utf-8?B?a1hCWXg5aEtGM2JmL0tsb2dhM3l2ZHVKa0oyZ1FacHRZajArTkNNNW1Jb0Fi?=
 =?utf-8?B?NmQydHBNUW5POFljVVFTa1hqYlNGdVljSGtBNUhVL0tkZjdUWHFCZG81cU1L?=
 =?utf-8?B?eXhZVVYyc2Rvcjd1MUlGMmhBUjRYUUt0QWo4eXNNeER6bmgrdDd0clpNWjFy?=
 =?utf-8?B?V2ZDU0g1Tm5vbGx6UUcvbzA0SCs0aS92bnJEZXZvS2s2MC9FSC9BTUtkZ2hT?=
 =?utf-8?B?ZGdYWk0vWlZYNHZpV2hEYklVNVBVWmoxZDhpSXZUemtTbzcxVlo0UVpTQjdu?=
 =?utf-8?B?bTQ1L1FzZFBBbzV0VU1FRERFa0I0czVoaGpYM0NBYkhOc1REOXoyM2xHeVl3?=
 =?utf-8?B?TXJPc2UzS3RGVkdiaS9weUwvbmo3TjNNTFcxbHR3cGJKOGxEb3c5TTkrUUZO?=
 =?utf-8?B?cStid0R4bk9XRXd2QXMxRXZuaW9sNDFaKzJlY1ZlSERVSE9PS3dCQ2tZaXhv?=
 =?utf-8?B?SURHVitYNDByUmNGblR5NWZUOStreGR0RFV3V0E2K2N4cU5QYmhQYjNnK2hO?=
 =?utf-8?B?YnRZNGYxT1VsQU5yNElNKytmVzBueUFxd05WVDVYdEJlNGYvbHR3SDhGQkhO?=
 =?utf-8?B?b2s2ZjBpd0RBblF1MFh3U0V5STlLaExWWVpsZnAxU2lUd3puMDRrM3FybzRF?=
 =?utf-8?B?NzhkNXYzVEpVRVRiODk4cWI5L0JnL2RydithTm1OS1RmTUN1SVNRQ3ltWW9L?=
 =?utf-8?B?NWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5a71d2b-1039-4a72-d1da-08dc9357bcb1
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5949.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2024 07:40:21.9656 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nKMGjpUMhLVv+GNyu4es35F2fqnYqIUViilIZ1dgKlPve8DjCskrE9WpxDs9/4W4OhJtseOBiLfmgajKwh67iRCi+2vKUx4oL6TqNpXg6iY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719128426; x=1750664426;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mYjWCkpM4QehF7NDD+PGZdAUwKXAUVJAfBwNrI9ktTg=;
 b=DhxJ/d7M/NSP12z/Xsu2AwsmmhPoZ9bAEp0yxLxuKOd16Y5ECBQtKx0b
 VqarcAy7zJoPxZjjaoBmuawlhX5V1F2VcXnJ3UGE3AkoY8hxpu0U7+jOJ
 1fCWaKB3tmNeiKvQ3ywUZ3sSNZkKZ5oJPyZcW7kFGJyaUoWj9LJ8zsefR
 sdU2DI9lW1FghwcJLD8x6puddUDvANAPxLS+SIdchSy2ydxdhGyS+X5mg
 62eSXRTevK5XmgyaEHQsMKDsIEUCDtAWQmsVAmR2taBXe2Ek+G2vFDXAa
 O+IKgPTqTZL0jSD8dIoi+wEp7AV1ed3PY0oQGq3HIXoL6Xrk+GDpLwDj1
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DhxJ/d7M
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: "hui.wang@canonical.com" <hui.wang@canonical.com>,
 Dieter Mummenschanz <dmummenschanz@web.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 6/21/2024 10:55 AM, Brandt, Todd E wrote:
> I just built and tested your patch on the latest 6.10.0-rc3 tip. It seems to have fixed the issue on three of our machines, but the issue still occurs on our Meteor Lake SDV board (otcpl-mtl-s).
> 
> [  130.302511] e1000e: EEE TX LPI TIMER: 00000011
> [  130.390014] e1000e 0000:80:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend [e1000e] returns -2
> [  130.390033] e1000e 0000:80:1f.6: PM: dpm_run_callback(): pci_pm_suspend returns -2
> [  130.390039] e1000e 0000:80:1f.6: PM: failed to suspend async: error -2
> [  130.574807] PM: suspend of devices aborted after 293.955 msecs
> [  130.574817] PM: start suspend of devices aborted after 376.596 msecs
> [  130.574820] PM: Some devices failed to suspend, or early wake event detected
> 
> $> lspci -nn -s 80:1f.6
> 80:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550d]

I see that the bus of your device is 80 and not 0 as usual, do you use 
virtualization features? If so, can you please disable them and retest?

> 
> -----Original Message-----
> From: Lifshits, Vitaly <vitaly.lifshits@intel.com>
> Sent: Wednesday, June 19, 2024 11:37 PM
> To: intel-wired-lan@osuosl.org
> Cc: hui.wang@canonical.com; Lifshits, Vitaly <vitaly.lifshits@intel.com>; Brandt, Todd E <todd.e.brandt@intel.com>; Dieter Mummenschanz <dmummenschanz@web.de>
> Subject: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during suspend flow
> 
> Commit 861e8086029e ("e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue") resolved a PHY access loss during suspend on Meteor Lake consumer platforms, but it affected corporate systems incorrectly.
> 
> A better fix, working for both consumer and corporate systems, was proposed in commit bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function"). However, it introduced a regression on older devices, such as [8086:15B8], [8086:15F9], [8086:15BE].
> 
> This patch aims to fix the secondary regression, by limiting the scope of the changes to Meteor Lake platforms only.
> 
> Fixes: bfd546a552e1 ("e1000e: move force SMBUS near the end of enable_ulp function")
> Reported-by: Todd Brandt <todd.e.brandt@intel.com>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218940
> Reported-by: Dieter Mummenschanz <dmummenschanz@web.de>
> Closes: https://bugzilla.kernel.org/show_bug.cgi?id=218936
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> --
> v2: enhance the function description and address community comments
> v1: initial version
> ---
>   drivers/net/ethernet/intel/e1000e/ich8lan.c | 73 +++++++++++++++------
>   1 file changed, 53 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> index 2e98a2a0bead..86d4ae95b45a 100644
> --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
> +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
> @@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate);  static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force);  static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw);  static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);
> +static s32 e1000e_force_smbus(struct e1000_hw *hw);
> 
>   static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg)  { @@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)
>   return 0;
>   }
> 
> +/**
> + *  e1000e_force_smbus - Force interfaces to transition to SMBUS mode.
> + *  @hw: pointer to the HW structure
> + *
> + *  Force the MAC and the PHY to SMBUS mode. Assumes semaphore already
> + *  acquired.
> + *
> + * Return: 0 on success, negative errno on failure.
> + **/
> +static s32 e1000e_force_smbus(struct e1000_hw *hw) {
> +u16 smb_ctrl = 0;
> +u32 ctrl_ext;
> +s32 ret_val;
> +
> +/* Switching PHY interface always returns MDI error
> + * so disable retry mechanism to avoid wasting time
> + */
> +e1000e_disable_phy_retry(hw);
> +
> +/* Force SMBus mode in the PHY */
> +ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &smb_ctrl);
> +if (ret_val) {
> +e1000e_enable_phy_retry(hw);
> +return ret_val;
> +}
> +
> +smb_ctrl |= CV_SMB_CTRL_FORCE_SMBUS;
> +e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);
> +
> +e1000e_enable_phy_retry(hw);
> +
> +/* Force SMBus mode in the MAC */
> +ctrl_ext = er32(CTRL_EXT);
> +ctrl_ext |= E1000_CTRL_EXT_FORCE_SMBUS;
> +ew32(CTRL_EXT, ctrl_ext);
> +
> +return 0;
> +}
> +
>   /**
>    *  e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint-LP
>    *  @hw: pointer to the HW structure
> @@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   if (ret_val)
>   goto out;
> 
> +if (hw->mac.type != e1000_pch_mtp) {
> +ret_val = e1000e_force_smbus(hw);
> +if (ret_val) {
> +e_dbg("Failed to force SMBUS: %d\n", ret_val);
> +goto release;
> +}
> +}
> +
>   /* Si workaround for ULP entry flow on i127/rev6 h/w.  Enable
>    * LPLU and disable Gig speed when entering ULP
>    */
> @@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)
>   }
> 
>   release:
> -/* Switching PHY interface always returns MDI error
> - * so disable retry mechanism to avoid wasting time
> - */
> -e1000e_disable_phy_retry(hw);
> -
> -/* Force SMBus mode in PHY */
> -ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &phy_reg);
> -if (ret_val) {
> -e1000e_enable_phy_retry(hw);
> -hw->phy.ops.release(hw);
> -goto out;
> +if (hw->mac.type == e1000_pch_mtp) {
> +ret_val = e1000e_force_smbus(hw);
> +if (ret_val)
> +e_dbg("Failed to force SMBUS over MTL system: %d\n", ret_val);
>   }
> -phy_reg |= CV_SMB_CTRL_FORCE_SMBUS;
> -e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);
> -
> -e1000e_enable_phy_retry(hw);
> -
> -/* Force SMBus mode in MAC */
> -mac_reg = er32(CTRL_EXT);
> -mac_reg |= E1000_CTRL_EXT_FORCE_SMBUS;
> -ew32(CTRL_EXT, mac_reg);
> 
>   hw->phy.ops.release(hw);
>   out:
> --
> 2.34.1
> 
