Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10BB29602D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Aug 2024 09:17:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDDD780F21;
	Tue, 27 Aug 2024 07:17:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1_uEXFgQMpaV; Tue, 27 Aug 2024 07:17:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0545180F1D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724743025;
	bh=gUrLEHb4jrD2NwzwsSOqaw9LfJc/EZjVWUE59TuB+N0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5+XGGzcy2V+FCS3H61HtQ5ShZwbVloM3iH3CP5eEKto0LX64FaEC8g2dKr/QgvCR0
	 9S3D91TCLLfipN/U98rqYMnU7VIFJot26/4CWsewy+zWyDsQiYkkNdEm3+QauPX3Ei
	 POVos5W90eHj4hxsLWnGdbPfeN3D9qF2hdZEV25ekge5SCXpDaqmdYgu8Eoizrb8Cm
	 lYDzVQDixIVWkev8q5zOurx5BwDCLM4PhEPoaF1iaAQCJ7LO1/9OQ9TPjoiG6wUtfH
	 pihJwYmmGgULXXchO1f2oHiTw8hqKWoZhgkFdfxmLTU0YYUQI6fl8mYigMW/mKUhUp
	 nJlUjThLGBYDw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0545180F1D;
	Tue, 27 Aug 2024 07:17:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 34A3E1BF289
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:17:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C8C7401E7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:17:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kAtZO3sIcgNn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Aug 2024 07:17:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E66504014F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E66504014F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E66504014F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Aug 2024 07:17:01 +0000 (UTC)
X-CSE-ConnectionGUID: N+vkDJ1RQLihiPi7OpS+Sw==
X-CSE-MsgGUID: CIwv6ZTWTaGZDLRMED+3rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="26102352"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="26102352"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2024 00:17:01 -0700
X-CSE-ConnectionGUID: /bVS/APwTfWh+KYilu/hIA==
X-CSE-MsgGUID: 3l/HgKJoRkuS9sljdj4Nrg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="67110823"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Aug 2024 00:17:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 27 Aug 2024 00:17:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 27 Aug 2024 00:17:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 27 Aug 2024 00:17:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dhgLyIqzI3M19NTG10ypipzMTb4Zgcjafc8EwmrmKJswII1wS/jca6IS304QO44iWflj5WKXMhYF9cOMjG+m6E8wD4ldziJllFofutLduRaEuYPMI7i6R2Vy1ulvyKb/01S4LY3QKCj41W5yUeg6EfcXgzJQCARsOEGKnmH7nnBUhwe0hZVQPUZE8FhniN7HOurMLwVxfrKJrDUh0/RIV/bZvhiYaBm83u5dT3kQiZbO+VUjgB66eqfdyfEm5E8GNE8LKzuCYLmWUyKAD00QS42DoQk7xT1dwT3ZUDCLWRHPtr8Ws9x7+xUsOzqfGJus4JEZIQiJ/PtNjv/K/V9Ddw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gUrLEHb4jrD2NwzwsSOqaw9LfJc/EZjVWUE59TuB+N0=;
 b=ceLHwdYOcsg/ju7Iv2GCx9ojYhRSE8O0wUXkujYuMLA5GazUNKW3TrpPDmrN5zYBejgRIIRC9DEPlTwy9LCI/fuYxaFRF4WN1g2rrRy59sK0bxDezFcMHdPlmFB4DxFKKRzyKJUpi9B4f34hagITMj+hd3doBScz13n6TtFJVoBFrxMsX25frWUqSefuFJ8IjqoBlWl8J02bh036prXJSaCiBtPBSG60ypTw5LuwQphQL1uDZUR8XSvaf1zLUvVbzb1/7EJRj4Y2OkcdKJgjRJGHiQnv0UYHrfyH4CclZrZsMc0uDAflBh+iXPqN0B+NlCGACEs5zGCAwpn79QXmTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by DS0PR11MB7621.namprd11.prod.outlook.com (2603:10b6:8:143::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Tue, 27 Aug
 2024 07:16:58 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%4]) with mapi id 15.20.7897.021; Tue, 27 Aug 2024
 07:16:58 +0000
Message-ID: <362dd93c-8176-4c46-878d-dd0e1b897468@intel.com>
Date: Tue, 27 Aug 2024 09:16:51 +0200
User-Agent: Mozilla Thunderbird
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion> <20240826121710.7fcd856e@samweis>
Content-Language: en-US
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
In-Reply-To: <20240826121710.7fcd856e@samweis>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR2P278CA0079.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::18) To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|DS0PR11MB7621:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a5dbe2f-0676-4639-ae6c-08dcc6683cfd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ai9FZnJTOSs4UFJlSnd4bGY0SzlyRGN4dWtsQUhhYzJudVFOR3JHZ2FaZ1BW?=
 =?utf-8?B?TnpNd3gxUHpRQm00MFV6N3l4NFRLMUpzOFhPRHNoWFVjekZnRzAvVHR3RWhR?=
 =?utf-8?B?Rm0zUlZEOG0wWkx3YzY1MlBVUWMwc0ZkTVpodURTWk91cFlFeTYyNGNjMUE2?=
 =?utf-8?B?UlNQNU4zYTdoVEw2WGk4dHVjT2VjaFBud3IxYm1OaW9sTlZRdnBKR2pkbm9i?=
 =?utf-8?B?YnBZWUtpdUpaNkx0R2tsdXQwbzZadE9ZbTRUeHd6ZXZoNER4ZWRtNHFRcURk?=
 =?utf-8?B?RVU2RXJYNkl0cENPSjIrK2Fka2F1cHAxRUxNek9Cc2gzWkpneEpEc3M4Nmlu?=
 =?utf-8?B?YXp0TXRFNjFaUExsSWMwUkN1dC9mSnJDMlZkLzZGek5Pc1JMVGdITXBvZ1JE?=
 =?utf-8?B?bkorMEdacGpjVG0ybnBDb2ZTSnQvZEJJYVdDY1VXVUQ1dUZWYlhYSDBGSXVC?=
 =?utf-8?B?K2ZIaW5McFBXcURseWgxTS8yenJONHZZMWttTVhVdlBjZU5QSXZKRWg3Nmh5?=
 =?utf-8?B?YXhBUmI1Qlp1c2RlRnRWMUF5U25waW5lVHdJZWFGL253NUloeUhwY0txZ3BV?=
 =?utf-8?B?R2I1OGp0K0VrZGF6ek5MM21HTW1JMUZVZzBQM0JNOU5YQUpOM3piYUdUL0J4?=
 =?utf-8?B?TGZQTXhYTktTSDBEY21NSjh6MHFjOEFKcFZTV21LajBvczJkUHArdHhOWWVk?=
 =?utf-8?B?anJkNDdkYjdZM2dDTVVISHI1a1hoSHJUeGlneVc2b0RoU2JzWGxuVHp1TEY4?=
 =?utf-8?B?VkMybTJiVU1CR1RWaTZha0NmZ3U0ZnJra3pRNUcwbHFibUU5T0NGNXhxTVhV?=
 =?utf-8?B?WTdaWUJNakFHdkxBcU1WMjlvcHFLamlVMFJtRkxjMVlvcitpa2oxdEpzKy9m?=
 =?utf-8?B?cEpoeURKVDJJdFZXU3BaSEp5UFE3dEJCUTdDOGZrTStHZG1BY21BaDlvVE9F?=
 =?utf-8?B?T3hxMVlaUEY5TUFQbzlXcU53cDE2SW02NS9kTmN5VGd6M0NhRXVINFRjckxr?=
 =?utf-8?B?OTFnOTdmTlZ2MnVxV2p1aXpOdDZ3QjZXUFRvVlNYSW5pMGpqSml0TVVWcGEz?=
 =?utf-8?B?Q1k3dnhlTVA2TitFdHgycE9YSmN6SzVCaXpyWjNETDhHSDBmNXVtYnBUNmdi?=
 =?utf-8?B?cmluYWorN052RCtoRlUyUzZxUjA3WkwydnNyRjJGL1VnWmFnZ1p3cDR6Uksw?=
 =?utf-8?B?d2JYb0NCQ3B3MFp4c0NoMy9udGtUWER5ek1WVXpaRy9zUUtrMk9hSk1BN3dw?=
 =?utf-8?B?YWNEakdvakIyWlFXN0xLcG9heDZycWZWWStQVUpXalU4YkdSYXNHb2p4blhx?=
 =?utf-8?B?US9CTElYOVVUM3NNY1NvY0hXaFA2OFNJUlhkd2l4b0JrTzdiM0NlSWsyeWZ3?=
 =?utf-8?B?QlNXVW56OXVkekViY1VsdnJYTFd3SmtLUE9HTGhwL2NSWFVYUkErNU9BK3dC?=
 =?utf-8?B?VzBJUmhjSVk4YWVXS3piMVV6aTZQMkk3Y2JHa2xOOFI3dWc4SmxBZzF6Rm10?=
 =?utf-8?B?ckhuUi9iTXI3NGlBUk9oSDhXWkJJcUZXRktuNUhUQlBhTURCY2lvY2J4SWRM?=
 =?utf-8?B?Sy9QVnF5c3NReGxYNEZyNkVhbXQ1eEZJOFRYS1lSK3BuekRLaU8vU3hkRVdN?=
 =?utf-8?B?OGc4TWJjQk92R3I4eHpyNVhjbCt1dXBJL2l3OXIvTEN0VElPeWE5Zm5hUWZD?=
 =?utf-8?B?K3dHQmxzeUdIMEErRytnVmwwWi9ISStHSFI5SjltNDI2TVRuRWw5OE9ZYmhy?=
 =?utf-8?B?Y21uNWlHY0tVdVZqaDJGNFcydCt0aWt4cmVBZkduc3pIUS94cjlEL2FoQjJR?=
 =?utf-8?B?M3NiMkZ6VTNmMWxwQnQxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dkM3WGUyeElXbEZxc1Zkd0d2VUlzVUpvVHRGMnRHSTRFTVJOY0QyMUQyemha?=
 =?utf-8?B?SStrU05tY1puSE9CS3J0dVhDTnk5N1pzczNmL2p0OGg0Q0dNYmRMWXR4dk0v?=
 =?utf-8?B?ZTVmNWQvN0NoZ21Wd2VDNEpZeEw5R2RBNHM0VnlrcUJZeGs5UlM1ZFMvWFk3?=
 =?utf-8?B?SkY2U1JFNjE2bjhFN0JEM1ROaU5NcTIxNUU5VTlvQm1kbDhiN2dIcnNzVWVm?=
 =?utf-8?B?cU9uUVhqMFlwUnI5amZmajR4SWdZQ3ZGbWY4eWFmcTFaS2x5NExqbE9XclBj?=
 =?utf-8?B?dHNVbWZHZFljMVp4dFVFZFQ4a1lma0JwOVpmaGk0YVJmOHJjOCs3azVpS08v?=
 =?utf-8?B?YjVUMEkyOUFLOXpIaUdXYkdFVTIvQ1h5YVRYR1hqdXVCV1RCMi9rMDNRZWgr?=
 =?utf-8?B?RXcyNkNTaVhEOTBtNmIzK1Z3bEhZSzUyNjBmQzBKd3JXczZrZ1hTMEFuNW9I?=
 =?utf-8?B?WS9STGZUcEJJREExeUk3VnhrOEtua0hIcmQxMm1XanBjVCtIelN6Y1pGQVlE?=
 =?utf-8?B?VE8xYWFXakV6RDVnTDVXR0xrZFJPR2NXd3dtaEttOUQwcU85R2FFR0lMR3My?=
 =?utf-8?B?WGcwVzlua1poOTg4bk5tM3dvOXJYWXk0TW5NU2FscS9FU3JPL1FrODVvNlhP?=
 =?utf-8?B?U1JGcjhZWHY4T3VXR3Z0b2hybEJjTTNINSsrSC92cjJZeXg5b0wxbVdiTVo4?=
 =?utf-8?B?N2hhWE5UR0JIMTh2cmxDdHFycHB5dnNLYThLeVBMYUIwWkpUMWcyd2ZFTHVF?=
 =?utf-8?B?ZFdIUGZpMzNEVVRNYnZoUW1hQlFzcWkyVTVRK0NFK29vRFJzcW5jVkpTL2dS?=
 =?utf-8?B?bWRReE84RjZGWWFiMlVEekRlM0MyZk1BcXVvM2hkL2htdy9iWkVrdU1PdjMw?=
 =?utf-8?B?Qnl6SlNJMTZpUTcvRHRDNEgvSExmOHA4MjZXVTFzZmpJc2xGektSNEFLT1RN?=
 =?utf-8?B?a2VybDJ2RUVQOWtOVThlSG14S2U1QzJoR2JwSkhSTkIzVWloM1NqRkc0eEZS?=
 =?utf-8?B?bnFCODc5VWJxNDNPRWZPTWwxVmJVREdrQ2lwOXlIbS9DS3FoRzJaQ3dwWmZQ?=
 =?utf-8?B?cll0d1lPUXJ2dG5NWnV0OFpHQmFHM2RGWE03YWpBRk5kRHhsQWVUVDFYTFdD?=
 =?utf-8?B?M0ZYSUJkdEhCQy9MSGJBUmlOOG92TDJvTW5rOHM2SVRtVUR4OG82SEloVFoy?=
 =?utf-8?B?Tkt3V3FsaEtMZUMrM0RhQWYwY2J3dlVnSUhxYVZLTEo2UTlmV1ZLdCtpVzBT?=
 =?utf-8?B?Q2EvVDRpUDdQaHk5Z0xqNmxNM08wWW40My9CYU5GSEUyVnozakF2UmFyaUpp?=
 =?utf-8?B?YTNHQktEdkgvS3kvTmo1aWI5KzRKSHNDdVBzSGw3MzR5UlR3UmJZbFlEd1Fq?=
 =?utf-8?B?TmU2dmhCdG9YRTB4RjVETzdRcnJ1eThGWkppdm9aK2gvV3N6ZFdDNzdxZjl4?=
 =?utf-8?B?MVh0UWRaejc3a2NtY0UyZFhHYjllaHZCaWNjNEs4NFFrZlNJdSt6OFZaZTRP?=
 =?utf-8?B?NFgweEZKOUtPV3drNENJSWVaSTh5OEFGTnFkWlBzLzNZS2tjZTFOWFB3UmVE?=
 =?utf-8?B?ZDgrN3AxQmdpM0RRYlk0WlhNbXM5YTBMRVdTYVZaTDJwR1BQeFg3cnBDQVdr?=
 =?utf-8?B?WjRVc2pJUXJkMmFLWUNuWktmYjZoMGdLZUY5M2ZicjdqaGtybFh4VWtrY2tX?=
 =?utf-8?B?Q2J1cUJKcGYxbDc1dHNOektldmwzeG9EZkhlTm1YNThKK0NVU2pVMmRWMENk?=
 =?utf-8?B?SmFJeFBZSVhtVDVEYU5aRld3NlBUcm1BYkVEd3M2d2pMU1VyVElNckVFQ1hn?=
 =?utf-8?B?SE55cy9heUdtNkxRTEQvSmVncDJXTUVyejVwQmxEbC9LUjdqNVJCMzF3NTRZ?=
 =?utf-8?B?TkhMdWRmZ01ObXZnQWNnT3pOcjBwWDllWm5xR05LQzFoZGJrajQ5c2lmWlgz?=
 =?utf-8?B?YVlxRVN2alVYcFkvQkNJU2lOS1NueWxtR01HaFFnbzhuMnoxQXVqbytEQVlC?=
 =?utf-8?B?dnBvb0wybG95TXFGL2YzSTRSMTZsVTc4YXc3Nndoa0JUcnpPb1M1VThORHhU?=
 =?utf-8?B?ZGFnY0R2Z2JpTHZXa2FVNW1yb3RwaGorY2Q4ZDFEWUdMNElmWVhTMUE0NjYy?=
 =?utf-8?B?NVp4OVZFNkJkMnVNQUJwY3p2UGsvSHNocWNBM0FpT3hGUkMrZE1TZm5tTGEw?=
 =?utf-8?Q?P96abYRqdoK2h7hCX/jaI/I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a5dbe2f-0676-4639-ae6c-08dcc6683cfd
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 07:16:58.3589 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6+SDddBlJ/BGp6YDBLRrIoipN6Zg8kzFGEJp94mnKbLJxnSjTah/G1XR24fFjbCC2AjgtMQOGjcgofzIovKjV/7kMsChwlgzQNoEmYvdGo0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7621
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724743022; x=1756279022;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6hRjH+Y20h/hb6PDy+JxvCBIiOY1bbtMdLTe/9mrcis=;
 b=RZUXg+gxyEHOhw8P9Ld6FLe3GnJRP1zVavA0D8YAzaKnSpokKyMBH/2z
 BEY3wCWTEqByIETz1b7kB83MX1dwUeuWSOycP8eaXA/FvxR2JRYDdUjYz
 PDAECOi3psf9HJRbVLSWddxO0v+QBOu9tGx7iWr5JHf/bZawDZOHMFaBv
 s2zalX1UuSgmYuqtujzEEZiStGJtojjaeoXgH3lwaqaMy29iQM2tYEYe8
 +5ALA03J2GvdPfQmFSOM0fFHnQyH8raYJEG7DbYdUDTJfoksVptp2uf5x
 iRlCKw3WHo0s6oCgAJzPCcCrP2VP3TSt9pOJvuwSTmMaMlf/z4dUf1u2j
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RZUXg+gx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Jiri Pirko <jiri@resnulli.us>, Dave Ertman <david.m.ertman@intel.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/26/24 12:17, Thomas Bogendoerfer wrote:
> On Mon, 26 Aug 2024 11:41:19 +0200
> Jiri Pirko <jiri@resnulli.us> wrote:
> 
>> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote:
>>> For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
>>> allocated. So before accessing pf->lag a NULL pointer check is needed.
>>>
>>> Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>
>>
>> You need to add a "fixes" tag blaming the commit that introduced the
>> bug.

Would be also good to CC the author.

> 
> of course...
> 
> Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
> bonded interface")

the bug was introduced later, the tag should be:
Fixes: ec5a6c5f79ed ("ice: process events created by lag netdev event 
handler")

The mentioned commit extracted code into ice_lag_move_new_vf_nodes(),
and there is just one call to this function by now, just after
releasing lag_mutex, so would be good to change the semantics of
ice_lag_move_new_vf_nodes() to "only for lag-enabled flows, with
lag_mutex held", and fix the call to it to reflect that.

> 
> Should I resend the patch ?

sometimes that is not strictly needed, but after two possible tags
mentioned that's the best way :)

> 
> Thomas.
> 

