Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4B0910473
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2024 14:48:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7CA708471F;
	Thu, 20 Jun 2024 12:48:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZTFRKDWzfOwW; Thu, 20 Jun 2024 12:48:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47ADC8471B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718887708;
	bh=CTnr3Jc6Wx7Y61ttZwechEEHRNSnCiUWggBAAuYfNvI=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TaOQ20+9PfQUvrBHDRnI0YheA9IE0uLkvXqb243u8hoSmcEvCRqjarSvsxETTCM4Y
	 KTIKDVY1CPjQS87jy1fsxrCT2O6wydMwsyvIhnZqDwd5Ct/ikhST/3Ij50/DiIR24/
	 u54A7Muf2ZIjDWRztwj/3+JnzlWL3mlS8FYlpAxkkF+ZbNRidDg1CDJJ/LoviEvPxQ
	 hy8gUXtVRy3xNFtajkyU/CPmGA1bHGWFx/0sJxQLPTxl9jPW1GelogGrYhjUJxsqcv
	 4P6YzYtiOkS8mMV4esAwoToKN8XXSmou77L47k4EiEBVGm1SQ725quAYBhF6CXPaoH
	 4PsPE1EGKBlXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47ADC8471B;
	Thu, 20 Jun 2024 12:48:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CEFFD1BF573
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:48:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBCE184714
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:48:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G795ctveTCaL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2024 12:48:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=aleksander.lobakin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8575F8470D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8575F8470D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8575F8470D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2024 12:48:24 +0000 (UTC)
X-CSE-ConnectionGUID: CRTkJDC/SlWoArQQXLF6nA==
X-CSE-MsgGUID: eW7e/14LTrepdwrkcfLucw==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="19673087"
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="19673087"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 05:48:24 -0700
X-CSE-ConnectionGUID: +mVTHbr6QHSVq3WLxuGMnQ==
X-CSE-MsgGUID: Q+GkOTXLTlmoXa8n17mXog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,252,1712646000"; d="scan'208";a="42339881"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jun 2024 05:48:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 05:48:22 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 20 Jun 2024 05:48:22 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 20 Jun 2024 05:48:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 20 Jun 2024 05:47:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V2oWRwzUoBMDuUHkOlZBnsUQ9oEriVmb9zdWcj41x0zW4ERutxpl/Sn91rrJUU9MO7lIBJ8qdci/9kd1vvWrsqosSjoIQQOBPKxh3YyCT03eaWap7EFNviu3o5vvHOUu1Qhrn/lx4dGAXg+VufUmCtCYy9z7rEsK698uuHnheWfvIKeldh0Fcsfe8DdHteCw3pfAXm3b5+6NBElbkpzi2CGRORzhpubwbiDbh9RE/ylp8DxnFJES0HcbgBL46UYiXB1e1b9SCwCCgLHIN/omAlnirFFaKB63MlVIei/P+08d0l58yQV32iTJ3QNUMUbIfxlN/lj+IlrMLoraaX4YSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CTnr3Jc6Wx7Y61ttZwechEEHRNSnCiUWggBAAuYfNvI=;
 b=gP5Gc86Teu2gDKIMeHK7GsFg4Q0CVCiLxd/OmL1pFfM3OPL0o3BzNZYNrKPWtllgLOkW9cQq1gi8q4XrPyKYkMeLggwSsASd5hcTc/RRYMHvMsUHLxyO7jqTkzNR5oHrd09+x+SyLC9MKNp0UtnH4gS1Q1Tb3IKqPNYYjPud5938en/RcVpD2o7JbeW/TjXpfLNx/CGh77sFmKyy1QO9aTgoFEaV43bFA7RJfS5uvriTuY4BmGqM1649YnJPDsnbF7mQqzVh5KgrJ56qXLjrHuc9HDCGk6nNSGP58Kb2G/kEjSwQ2YdNY/iyuqTkS2o3buxOxh32EzenI4brpfFvDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8718.namprd11.prod.outlook.com (2603:10b6:8:1b9::20)
 by MW3PR11MB4700.namprd11.prod.outlook.com (2603:10b6:303:2d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.19; Thu, 20 Jun
 2024 12:47:32 +0000
Received: from DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808]) by DS0PR11MB8718.namprd11.prod.outlook.com
 ([fe80::4b3b:9dbe:f68c:d808%4]) with mapi id 15.20.7698.020; Thu, 20 Jun 2024
 12:47:32 +0000
Message-ID: <c38e22b5-090c-4e9f-80aa-37806aed5eaa@intel.com>
Date: Thu, 20 Jun 2024 14:46:06 +0200
User-Agent: Mozilla Thunderbird
To: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
 <66588346c20fd_3a92fb294da@willemb.c.googlers.com.notmuch>
 <ad06d2bb-df1d-41cd-8e5a-8758db768f74@intel.com>
 <66707cb3444bd_21d16f294b0@willemb.c.googlers.com.notmuch>
From: Alexander Lobakin <aleksander.lobakin@intel.com>
Content-Language: en-US
In-Reply-To: <66707cb3444bd_21d16f294b0@willemb.c.googlers.com.notmuch>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB3PR06CA0025.eurprd06.prod.outlook.com (2603:10a6:8:1::38)
 To DS0PR11MB8718.namprd11.prod.outlook.com
 (2603:10b6:8:1b9::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8718:EE_|MW3PR11MB4700:EE_
X-MS-Office365-Filtering-Correlation-Id: 0705f366-5fc0-4d5c-dc77-08dc9127268e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|366013|1800799021;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?blpKUDRBdGJGWG0raFB3Ry9CZDJjTyt2MC9WN1Zta3JLdzBCdG45N0hZSnNu?=
 =?utf-8?B?Yjl2WjRhTXN1NGpIUTczR2VEM2U0WHNkYmZMZDZQOVVqWk50ZVgzUy84QXE5?=
 =?utf-8?B?eWkyem0rbFJTNWk5a1pKOVNBNmpsM3k1MS9kZlI1eU9JZk11ek1aU05BR003?=
 =?utf-8?B?bEJQeTdXZklCcGVoM1pvajJVanl5R090ckNleWMyVkZCZWxmVnVuTXZ4ZmIw?=
 =?utf-8?B?MVkzeUpkWXIwZDVhcVR3WDlvdHRVRjR6Z0hNWWZjckhVK3IzbXdpMGxYM0hP?=
 =?utf-8?B?em85TVlIRXBJN1BKL2x3d1lYL1JNT2RDM2pKSEV5RTF3SzhndzdHWmpLZnNU?=
 =?utf-8?B?L3RxSWh4NmFuR1o4Qi9TaTBOMVl4VDg2cDRlMFA2YUZzVi9seGlwcDlCRTIx?=
 =?utf-8?B?Mkp0SXJ3YmcyQjhTWThsUUZKaU9TWTJ0aVFUUjd5cmUzY0ZjeVgycWdiVXJM?=
 =?utf-8?B?NXI4OGppUkQyWjR2d0RTZ3VMVUlHSW5HTDNheGltREZxc2NNSng0TWhXU081?=
 =?utf-8?B?NWI5cGRrMUdHb3QyWEZVYUNzOURLblJjc1Y4WW5SQXJWeFZUWi80bGR2NXJQ?=
 =?utf-8?B?ZGdSdTc5NHl2eW1OVTU2U0VkVnhEOU50OHhKR1pSTEVNL1Y1dGRyd1RTK1lu?=
 =?utf-8?B?d0ZlWFVsR2U0T3NwOXB3UEo1VXNycTlZREt3WFZTMXFpU2IxeFZ1RDFPQ2Nr?=
 =?utf-8?B?R2lrNW5JNG56U1VOa1pOK0NOZUtYTzNQR1N6bWpmaUFOY2lYSTlxd0RQaks3?=
 =?utf-8?B?bSs5b0VBa0Y4RWZmT3YwZzA1dlFhMVZ0WE5oS1RsUy82NHlFOEpFOHlaNzVG?=
 =?utf-8?B?UFErUjFRK3BXRTBJR3VGenhJVXhCbUZSMzcvejFVaExhZkUwcUV6ekRQK0R2?=
 =?utf-8?B?NFJVNEJFSmlxNG1ZQ0NvT0x1eXpwKzhObmlqRmFmQWVTS1dFY25XL2U5QUZl?=
 =?utf-8?B?czBvdEkxT3BQL1RxbVFVOUxiQSttUDNVcEJnR0JFUEFuUVMyOFJqeGM5bVFn?=
 =?utf-8?B?c29QRlR3SENEUUthc0RhVmE4bGlISURKamtXNjNkZmJRb3gycmhZMm5LUWg2?=
 =?utf-8?B?cjVXeFZxdDZjamI5VTZiZWM5eVpvYU9DOTFoajU2Q25kWm0vNUJoY3hCb1d2?=
 =?utf-8?B?Vkpjd25XNytXYkkzRkVLb2VUanlPNUdXQW9NMUt5bVJMSGJpbXFjR1BDOE9K?=
 =?utf-8?B?dDd1T3UveWtmeDFIVktYeE1xYzZIT25RdG5FeGFRZ3V6WkFoV2piaFBlVmpx?=
 =?utf-8?B?SDNGVTl3aEVWYWpYN24vSWtDbXYwUkl4aCtoTlcyWlpYOVZwRGYyaGJTbjVD?=
 =?utf-8?B?T3hGSlpicU5zVUI4d1RVMWM1UUltdXEzWHlGd2ZkaVBVN3dRbkZCSVQvaTJz?=
 =?utf-8?B?dmhmTmRha3I3Qi9uZG9xOEdJdy9qYTBySjVVKzN3aXNHT0Qya0VZR0l1M2li?=
 =?utf-8?B?MS9SbUg5S1A3aFVSaGswMWZuMXhObnFSZ2xSVkRxMlY2T2IyalRyZU9jTlV0?=
 =?utf-8?B?N1ZyMzlUdGVIcTgxQUlVTU85bEszK3ZNc2pHWTVqaDdBLzg3b0dBd01JVUlq?=
 =?utf-8?B?a1F5SnFtdElEYVhMTTN3VHpKSkQzUUhZWFh0ME9sY2ZvNVhzdzJCNDk5VmJQ?=
 =?utf-8?B?dlgrVmRqbGVTZTVOc2NualA1TmxldW1qMlZKb0x2aFNBYnkxZ3Vlc2lXcWhy?=
 =?utf-8?Q?/VzmwCgRnxCeklrOPsXg?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8718.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dG9mT29RY3dYT1ZiT2pzTFNIQ1J1ZXNJSUppenN3UTQyMEFjTWN6YUZyaHI4?=
 =?utf-8?B?TlJoREV0M3l5Mk96WkJQUmVlZytwRldJaFY0eG10VlBLaGlOZEtQTU5lY1ox?=
 =?utf-8?B?TlZ5M0RIWVlmOVFUYnM1MW1KSXljYWxoNlNyaEhTU2hRZGdaQzJ5VThnOGIv?=
 =?utf-8?B?STZHN3hTTm5Hb0VVcVREQnVhSzBEeXBWelVqWmNsVTVJeGJPVzBmVGp1WXls?=
 =?utf-8?B?S2lnVlNmNUZSMkQ2ZE5hZitKSzhaRGRuOHFEajM5T1JablJYT2phZlZmcWZt?=
 =?utf-8?B?bjJXMWFqZ0t4Y1dhNytycUF1cmZHbE9sM2IycFlRUXVvTFFhSjJyRjVBNlNh?=
 =?utf-8?B?MUVaYXVCZlI5ZDBvQXhJaU9WSmVnREprRHdVK1FNVGM4ditHb1hxMHdpZ2JO?=
 =?utf-8?B?QU9Mb282S3hBRXBFNHF3OXV4QVJ3WTNkMm5jd2lTcE5UTWZsbXFuQm1Ia3lZ?=
 =?utf-8?B?bndhQUVkMk9aY21CWGVHZHZmMkRiQm1WU2Vuam5hK2diR3AzRnZrV2R5SHVE?=
 =?utf-8?B?U215SzQxUkpWaEwvV3gxYUVWSkd4REJCdTd6RUtsaEFmaHNyUFBNTUJTbUpw?=
 =?utf-8?B?UU0yZ3Zwa0NnWXAwdVhZNHpRaFd5VVFhSS9DdXJBTFFIR0ducXdIelpOUDhL?=
 =?utf-8?B?c2g1RGxmYk1pcTZOSG9SWHd5Q0VWUGY0UUdwN01CWUwwT0M3a2o2UUxtUmhn?=
 =?utf-8?B?WVE1MklpZDZ5aExkZFI0OEZ5OGhNa1BsZXdlVFVuUHJCT2NjY3ZkWldRSHRR?=
 =?utf-8?B?N1M2TkJMVHhseXFMZFpMMHc3UG9uTG4wM0RiMFo1b3pmNk0xcUl5RmNJRW53?=
 =?utf-8?B?RFQza3d6ZG51MDRBTnFaWGFuQnFPdXlReHJNS3RYNDcrV3FCOEErS0J4OEVY?=
 =?utf-8?B?UDFYVk1UOFEzbm9zaTVITmlJd3RDaWJSMUczMlFHaFc3YlB0SGQ4YkZVNjlS?=
 =?utf-8?B?Q2VUMEVJK2hWcWkwTVY0K2dPZXBTd1hKR3I2ZlNkQ2poZVUxalVKOTNOWWpz?=
 =?utf-8?B?NFQwS2NYQ3ZYR1ZYWk5iNWNUN3hUUUREa3d1Qzc4TzVQbmpRdUhkUWNST2Jh?=
 =?utf-8?B?V0NwUTcrN0JKSE9aWEorTXdLMGpHYlA4VzJ4dERDa3E3bnhUV2hOMzdxMlNW?=
 =?utf-8?B?RXVGRTdOV3RJY2JSTlN5dXA3VTRXdlU0eThqU0dYbjdWdFFyRWNuNXZIMkZN?=
 =?utf-8?B?U1JHUDkyVEdab1VlRXpVbFVIYjM3dlBGaXE2S1d4bTFERHl4NElnb3dZc1lM?=
 =?utf-8?B?Q1pqV0I5OFd6eTgxaVhXb0tHaDhjanlDNldwTG14NGdTTGJlZ0M3WStYcHp6?=
 =?utf-8?B?UUpSbTQxTVJOMGJ5dzdFTUcydTZBZVExMnU5UjlBWkJFQXBuWGYvRjRKZHRo?=
 =?utf-8?B?VTJIOGpVaTFDRWtrUU80MW1TV2RacWVldXNIZDNER1hsbHdCUnBJN2hsblda?=
 =?utf-8?B?VnBLdXpEVFhVcmRvVFV0ekxabVZBMkx2bEVabjVNQVRrbmV6VWY4WDJBZlhP?=
 =?utf-8?B?TVo1SkNGT2MxOGxwTHhsT3VSS1g4a1paYXNlOVlSVmpteDRZUjRLL1ZHcWVD?=
 =?utf-8?B?SkYvN1hnTDMvb1RHd1FhaVB0N2FYSnc1cERQMEZ2cmJCYUZTMDdLcDAwVXBh?=
 =?utf-8?B?NkZhV2k3ZjZteUg0QS9nSTliWFhZOGpHTHdsYmtCOElhOEFxMjlubWw4U3hv?=
 =?utf-8?B?d1loU0ZYT3V4YlRSNkh2Wk1abC9YVkRUSmhkN3BMQ0tMdlRjT2VyWFN4VllV?=
 =?utf-8?B?L1JZRExJUjFXNjlGeWU0K3I3N2N6ZmNvaHU0N0dhb0prK1Y5ZC9heHFabllQ?=
 =?utf-8?B?dHNObW9DdGlzWkNBeFR4ZG9zVC90cHR6YndGTHo4ZUFGeDg4Y3lYdnd5dmM3?=
 =?utf-8?B?d2x5ck1CRmJOd1gxdjhRTHZQVXV2TWpSNjVQMTNqS0lNelo3b25xU1ZxZ1ZQ?=
 =?utf-8?B?Q3RKZmtmb3g5dWJtMURmWGQ2NktGeXY3cUE5dkJYdWI1LzVCUnArazhFdnJr?=
 =?utf-8?B?WnNtWXVNdkFHQWFTcXkvRk96TnA4ckFIclE3cnMzVHVTdjAxRXZjeUZGM1Fw?=
 =?utf-8?B?cmN4L3huS3ZxbmlCZUFiWjZ4NjNKSDJ3Z3k4L3JGYzZvZmhVSU1DUnFYazFH?=
 =?utf-8?B?eHdqT3ZhNzhESXVnMm93a1VMSDBvcE01b2RtWEJidGcySHdtbEhXLzVmU0o5?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0705f366-5fc0-4d5c-dc77-08dc9127268e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8718.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 12:47:32.3817 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AO4+6Wf1/bhSnnL2jIIkEWtXDHBvO1SV1r7Ax1eSX/XpBr9C9rkvowJYoHuW9onnsPLrnBKVkjwpxX65/zyOSYVN6Erm7/xScr8oPjdWapw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4700
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718887705; x=1750423705;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Wn4cKoRsC6vR6LcniFz9MroOHgv/gc4A7NyHz66Daxc=;
 b=j9Yu3QIp02vKl5W3bKxC6fvuU+r8cFvmnDD/VlY7PzOasiFKmywPGvmx
 dBtDnetNGJdZijYDrmFah1VI5i9OarGhkDyQnHNH6OGGwIgSwNO2yf8KP
 MPYuoKiv0nzb272CrsyibJNxNZ4JK1AXSX5zcRN98C0fAUwwqG17wnYnV
 f3jp5E8dWrhcl7h3i3+EEc0dmjJXmXRbccRIgUnKSkONo4UPjUCnAjfON
 j/qEHZVWG+PDodFm2CzG2GkJmFt7SNBJb63UsPKRPBvlryULnKhMfK1Wq
 OMRUBj+Rbzb5voVOAGXgHFcgts9+xio89rAPSV/iYOJgAI2GEW4mVZEUu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=j9Yu3QIp
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
Date: Mon, 17 Jun 2024 14:13:07 -0400

> Alexander Lobakin wrote:
>> From: Willem De Bruijn <willemdebruijn.kernel@gmail.com>
>> Date: Thu, 30 May 2024 09:46:46 -0400
>>
>>> Alexander Lobakin wrote:
>>>> Currently, idpf uses the following model for the header buffers:
>>>>
>>>> * buffers are allocated via dma_alloc_coherent();
>>>> * when receiving, napi_alloc_skb() is called and then the header is
>>>>   copied to the newly allocated linear part.
>>>>
>>>> This is far from optimal as DMA coherent zone is slow on many systems
>>>> and memcpy() neutralizes the idea and benefits of the header split. 
>>>
>>> In the previous revision this assertion was called out, as we have
>>> lots of experience with the existing implementation and a previous one
>>> based on dynamic allocation one that performed much worse. You would
>>
>> napi_build_skb() is not a dynamic allocation. In contrary,
>> napi_alloc_skb() from the current implementation actually *is* a dynamic
>> allocation. It allocates a page frag for every header buffer each time.
>>
>> Page Pool refills header buffers from its pool of recycled frags.
>> Plus, on x86_64, truesize of a header buffer is 1024, meaning it picks
>> a new page from the pool every 4th buffer. During the testing of common
>> workloads, I had literally zero new page allocations, as the skb core
>> recycles frags from skbs back to the pool.
>>
>> IOW, the current version you're defending actually performs more dynamic
>> allocations on hotpath than this one ¯\_(ツ)_/¯
>>
>> (I explained all this several times already)
>>
>>> share performance numbers in the next revision
>>
>> I can't share numbers in the outside, only percents.
>>
>> I shared before/after % in the cover letter. Every test yielded more
>> Mpps after this change, esp. non-XDP_PASS ones when you don't have
>> networking stack overhead.
> 
> This is the main concern: AF_XDP has no existing users, but TCP/IP is
> used in production environments. So we cannot risk TCP/IP regressions
> in favor of somewhat faster AF_XDP. Secondary is that a functional
> implementation of AF_XDP soon with optimizations later is preferable
> over the fastest solution later.

I have perf numbers before-after for all the common workloads and I see
only improvements there. Do you have any to prove that this change
introduces regressions?

>  
>>>
>>> https://lore.kernel.org/netdev/0b1cc400-3f58-4b9c-a08b-39104b9f2d2d@intel.com/T/#me85d509365aba9279275e9b181248247e1f01bb0
>>>
>>> This may be so integral to this patch series that asking to back it
>>> out now sets back the whole effort. That is not my intent.
>>>
>>> And I appreciate that in principle there are many potential
>>> optizations.
>>>
>>> But this (OOT) driver is already in use and regressions in existing
>>> workloads is a serious headache. As is significant code churn wrt
>>> other still OOT feature patch series.
>>>
>>> This series (of series) modifies the driver significantly, beyond the
>>> narrow scope of adding XDP and AF_XDP.
>>
>> Yes, because all this is needed in order for XDP to work properly and
>> quick enough to be competitive. OOT XDP implementation is not
>> competitive and performs much worse even in comparison to the upstream ice.
>>
>> (for example, the idea of doing memcpy() before running XDP only to do
>>  XDP_DROP and quickly drop frames sounds horrible)
>>
>> Any serious series modification would mean a ton of rework only to
>> downgrade the overall functionality, why do that?
> 
> As I said before, it is not my intent to set back the effort by asking
> for changes now.
> 
> Only to caution to not expand the patch series even more (it grew from
> 3 to 6 series) and to remind that performance of established workloads

Where does this "3" come from? When I sent RFC in Dec, it was one huge
set of all the changes, then I sent another RFC where it was already 6
series.

> remain paramount.

Thanks,
Olek
