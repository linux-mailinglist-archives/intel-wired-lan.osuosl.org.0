Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4674FB57817
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Sep 2025 13:28:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3EC484B4C;
	Mon, 15 Sep 2025 11:28:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UJiF18CBdmRf; Mon, 15 Sep 2025 11:28:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 010A384B4F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757935707;
	bh=S6Q2i79C3StWeQHu5+/Yp6wDD+6uOjtwrF8mHNUE0hY=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rgPohOyuczk12tbpmpwbRUqniUY9kMqXvP3avfFIrkGGP9M66h9uNm1pv9jj6UAuv
	 0dG1xND68ThNFEqPUdRzpIrS3ZSyHCRX9BlIZY9YrfWy96GQbwAeikFery88piIGmv
	 FVFZKc1NKEnQFTis8N+HbZ1jIvaZnoTCHIy+RhgFjdPfyJSXybaqLgULyAvMvkXCfE
	 0eVflvZQWT8zcQBjdi7xaW5szkQP/uzAuxzUCpuosFp3rUzL97VaEduyJkJd+bnuQJ
	 K5HDAGobPaRWZm4fTzCuHq9AY3SDmEHnZ5BdOPgd/q1UQxdbVp+jQc63dE/xe5Fi3w
	 PKnoIbbjc7gZQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 010A384B4F;
	Mon, 15 Sep 2025 11:28:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 25F9B1F7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17AE641FFB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:28:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GQxhRua3XGuY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Sep 2025 11:28:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 34E8042080
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34E8042080
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 34E8042080
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Sep 2025 11:28:25 +0000 (UTC)
X-CSE-ConnectionGUID: 9zQwNF2SQZKECkaCXMpsYg==
X-CSE-MsgGUID: wCKd7rdpQLa72fAoskjM+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60242698"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60242698"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:28:25 -0700
X-CSE-ConnectionGUID: lgsURlMLSYKdkL9uq616gQ==
X-CSE-MsgGUID: v4zPINzOSgquXn8P6uEF9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,266,1751266800"; d="scan'208";a="175038370"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 04:28:24 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:28:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 04:28:23 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.15)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 04:28:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CszyfIl1TAw2W/3L2k6Uar9nsI64aII1QzyG4GRdenTP/lFoC00fHXOvdHq19MBkp0ACSUvCu5oyBA9Ujv3BtRMdENFidcw3rVhU6852eYIqbGhbkE2VHR5MsQTQvyseji73qCdUXgFoRCgj26DCgNx1JbN72uRGkmJPrp0vDBmkUUZp2AsJ4EBrECJSgNUgDWaqBqaYiTMfE86wi5V+1vU9+6nHHgnt9Sy1uj1zbWJSWqF8EordwEOzcq52FPCHegLXRVua3wRkntSEY5Jzo4Jv7lVyYz/W3wNJ9/LAd+K7FfcD9wzAcifWHkkLGtSwZ27U3ZH5AYlmVI3Ted4Mkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S6Q2i79C3StWeQHu5+/Yp6wDD+6uOjtwrF8mHNUE0hY=;
 b=gWpg8W6xfyORCLkvTASCLUlEj8W4LeDRgyS6IUujK+i7TEfEhPnlgDztoXGUKfA9vO5uqFkjy/6t755LpJSV8bx533ZUlUtnkZveT9KNvFP3go9NJ9byKXa4jaXv9Doh7yBaGKi+uYaGZpJZXt8w0sSnsH3jYv7lt8ZY+ZLXEt+CuyOuS6OCfdzssZx/+dxAHd8KEHeiRTLGSWSfEgSZTZ3aFeYQXiHhPObsM+iVJ3m8oxiC+w2AP9pLWCpjwBbCUxEJdNuIptmya8RpTupBXmtAErSbgXfOlwyfqhj+4X3OCEl4vCSnaL7Ym3Y4djw7tzTGH7Mob8gDBCIpsX2XvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::31) by IA4PR11MB9107.namprd11.prod.outlook.com
 (2603:10b6:208:562::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Mon, 15 Sep
 2025 11:28:20 +0000
Received: from DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876]) by DS4PPF7551E6552.namprd11.prod.outlook.com
 ([fe80::67f8:8630:9f17:7876%6]) with mapi id 15.20.9115.020; Mon, 15 Sep 2025
 11:28:20 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
Thread-Index: AQHcI7uRSGhw/LSFpUOMBF9vIcvUqrST+i6AgAAlrxA=
Date: Mon, 15 Sep 2025 11:28:19 +0000
Message-ID: <DS4PPF7551E6552D817075288E897C9CAA2E515A@DS4PPF7551E6552.namprd11.prod.outlook.com>
References: <20250912080208.1048019-1-aleksandr.loktionov@intel.com>
 <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
In-Reply-To: <8c3d7bc5-7269-4c8c-922d-7d6013ac51cb@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF7551E6552:EE_|IA4PR11MB9107:EE_
x-ms-office365-filtering-correlation-id: 7d75a594-e1f7-4d0f-6c65-08ddf44af8e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b2wzRXlIN0Y0WlFicHE4enRlb0xZRXB1dGtuY1pFVlh1ZUZ0M0l5WHUrTTZh?=
 =?utf-8?B?a3d6Um8vd1FPdnJoR2I0SWp3Q1BqL1JKbkJGYU95N2g5N2FMNXpRR253T0lF?=
 =?utf-8?B?Sjc1RjNIWmtqSkozR3BhVWU2a0c1aGJVcndMNlNnbjhQOG1TTG9KY3ZYcTZT?=
 =?utf-8?B?MW1Hem9ENmFqajdNUGt6Y05pS09ZaW1CbmJpZTRYejBJb2FiKzRUVVpLVldj?=
 =?utf-8?B?azV6TUprZC90eU5WWUI4aHVoV2hiKzQ2UTBmb090cXdKbkhENVZFU0o3K3Uz?=
 =?utf-8?B?bmR4RXdSb1I0ZC9yZ01KSHZSS1ZZZmd6OUI4aFc1aEF6NjkyeFVHTjlPWHRn?=
 =?utf-8?B?MnF1R1p3QVE3ckpsTVBwQkpDTDJ2UXA4bUlOaHBCVnZPLzFiRFQ0a2RtNFA1?=
 =?utf-8?B?OFpBUjlEU0UxaEIxSDJoL1hCaTl5dFlXaW5vWFpqekNQbVRvTGJ0MWFKdFdu?=
 =?utf-8?B?M2ZiaFc4azhMUVJaSmhvTVRNY1ArQWVJN055ZnU2Y3JHZWI3WTZ6emMrSkow?=
 =?utf-8?B?RFdnc2JCNnpXNzZTdGJHVW1HejNHVFA3aHRvdWZVMzhjOGNwaGR6QklFYm4v?=
 =?utf-8?B?Zk1pVUpuSVNVd2tVVTBuT01aZzRxbVlMc1duL1BzTE16eTJqUGZXVHVSNDNU?=
 =?utf-8?B?M09VN1I2ZzBHYkd6SFZSQmJNRElTajJTYmtpOWpjRjR1OU9mQmVvMXRLWXA1?=
 =?utf-8?B?Nk1VZitkN0kxSHpDd0VzVVRwb3VGUU1QVkFqNjF3ZkdkMkdrRzErQzVKWmpJ?=
 =?utf-8?B?M0kxSVVlZVVEb0NQMXdRNDRJSm13bTNLTTFIZkxkamhpS0phMW93eUN4dER4?=
 =?utf-8?B?MVA3SThjSVVVa1NjMlBPMS9DWnZ2K3E3bmNkYy9jbzRLcHdBdDZVSFZwLzc1?=
 =?utf-8?B?Q0tPUkdEenUvenZ1dUxnM2RTdHE5RGxOelFyVGgyUWhDUllMMUtiTXg1V1Z1?=
 =?utf-8?B?b21Ua1NmV2FwS2hEVmpNVGdVYktNaU1zZ0ZwQWMrSy9PNXJoY2JoVklGNDl6?=
 =?utf-8?B?SnlvUGNmQ25SdzBxdXlsSXJLS0N4WnRRWVNNZENMT3F0TytPb1FiblpsNEJx?=
 =?utf-8?B?TnBoeUpPNytVQTV6YVhhZDJtemRWOW5BVWQ2TVFaZjl4TlBsUWdqVjdKUnQ3?=
 =?utf-8?B?eG1DZUJrdVpHSHAvRnVZeHhVOElBY3FqODJOcm5nQlNTa0NHTTAreTlZUDQ2?=
 =?utf-8?B?NVRDQW1qT3RyRjN1Z2s2Wktxek5zbGYxMmRRUy92L0U3L3AzQ09ERlBaMEcz?=
 =?utf-8?B?RkRIYzVFOUpvRHlOQ3BEUlNWT0E1UVRiR2Z6RmRPbkluaTNra2o1QTlscXpq?=
 =?utf-8?B?RWNHOHhvUXlnMTU2amRtRjZUVjBqdDNaaFpnM0lmOTNFYzd5VUFmM1h3YVdE?=
 =?utf-8?B?ZTdCZmdoS2EzQTZGTDFpaGswYy9UcFhZaUVLMUpYNEhmVWxUMWFLR25nT2RP?=
 =?utf-8?B?NVNMdmtRdzZ0QmVSMjF5LzlhNWNOWnNabklDaGlKejlyeERFY1NYbGJvWGZU?=
 =?utf-8?B?YjlpK3FYREVoOThzaG82Tm1DRXpJNjNLU3ZFTFVobkF6WEdkcmJEamRZajM2?=
 =?utf-8?B?M21lYkpnT3M3NENUN2xVbjllZEgyK2QzS1NOL3RwUTJCTmNMZ1hEb1hhLzRv?=
 =?utf-8?B?ekw2WU9reEkxTXp4NWRQTmRuVTRZRUJtZC9sNWpoMytoc3RSOFp4UGJoVnpn?=
 =?utf-8?B?NWdzTUlPN1Q4U1pvdi9jcDR0SjhyTTZyOU9wMGxuNW5kZlYrMjVGU2FJSlh4?=
 =?utf-8?B?bmVIYVRNS1JjaFA5RGU5YVpHM2U1cVBMRXhTL2xHaTdnYzU5Nm5jVUJQUjVw?=
 =?utf-8?B?b2hFV1hrMGZWemJ6QXZJRC9ReHdaUHlPSGYwQ1BIZmE0N2RDUDQwc2ZHK21W?=
 =?utf-8?B?aC9SazZ3b3pnQWNZK2w4UEVrQTJ6SWZrdDA4MnJMVC9HTzRrTVQ3MWpKWnJR?=
 =?utf-8?B?T1g4ZjlBckZRQXJrc01rbDBkVlVOMUt5YWtCL2M1anFYQTRlUUxIMHZKZldI?=
 =?utf-8?B?NUtwTjJxb3JnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF7551E6552.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TEtRWndTeXRwR3c3b3BISWRIQ092MVNIWHhJbythUEtvcURtc0hRbUcxbFgx?=
 =?utf-8?B?YXl1Rkx5amhyNGhTa0R5SHFtUU1hdGRXdWFTKys5UGp0cDBFVGVyNVlqUWdm?=
 =?utf-8?B?VHIyRldsMlFoOUZnZEdvb0RaRjNCSUw0ZUs1WHZCamZIdzZjdDR3OWRZYUE5?=
 =?utf-8?B?UmR1MDRaUkp1SFpUdHp0RzVpemJqcytmL0RGQi9JV29Jb3BoeHkzS2h1YUd6?=
 =?utf-8?B?OXJySm8vQi9rOXBZelhUZlRBRE5oeFlEZW05K2tFMHc2bmNjZVF0b1g4MkVy?=
 =?utf-8?B?ak8zUFcvalREZjFHdk1KWFVaV0ZYU2V3cldQRUF5cnFrL3F0WmZUQTdNTEpk?=
 =?utf-8?B?RnUzN3ppWmI4Y1BIQWZZeUdHTVhyWWxqTzdMb2g3MEM4TGdscTdMMjBmYmpZ?=
 =?utf-8?B?QW0yT3BsNVpwMkxITm1MbjhDeVJGVTg0Zy9VYWNnZ044SWYvVFJmT1VSWnVs?=
 =?utf-8?B?UEErQzcxaC9tME81aWVaZ0YwQ3hrY3JqVEQvUU9FTEpSeTBIRVdZWEJEa0tL?=
 =?utf-8?B?Z254a2JwUURVUkdSUFRWdU9GdEpBcjNkV1o2OCtmTGl0WGJPVlZSenVKd1Vv?=
 =?utf-8?B?M1EzNjRvdjkxd0lnc25GVzZyMm5TZmhoMWdjUXZmWERWcWZhQVBjcEUxTytj?=
 =?utf-8?B?VXhhZ3R2YmRwcGJSU3I1SG5sTU82Nit1UmF3T0oyL2UxbWlabjM5QStFRjVK?=
 =?utf-8?B?SDdRUHlLdEZyeGxQak03RDREd2N3NWdocVpLWjlrVzl0RkIzZVVnRnIrZ1Nu?=
 =?utf-8?B?bFExS3VVWXhyYWJRNVI5cDRBQWttL0pUay90UWdrWTVLZCszeFUvWG9Md2I5?=
 =?utf-8?B?MUwwcWRlVmNiTDhTUmE2ZXBwSXdqQW0vb1hmZEJXTm4ybmZDSzNqb3ZxUVla?=
 =?utf-8?B?cTM2aHNvRklGYjArODkzNldYY28rTGVyTWxSb2hreDJTQUxNS3F1YkxWUXpR?=
 =?utf-8?B?T25BcitEb1k5UHc3bGpFVHlybmszMmJaTFh5eUttMFUyTVkxdVZneG9OSVdF?=
 =?utf-8?B?L1JNYTU4SENCOVpaK3VTWEQxUDFTZE1SVytmamRCNkdsRDVqTWcyZ0NaRUdj?=
 =?utf-8?B?N2syNlJoNkZPSmU3VktSNUlLdE8yZVpOSGh6Wm1tNDJFK1pJTU1VNW5jeUdB?=
 =?utf-8?B?ZEY1ZVFvejJwcEgxaHBhSnJqamNmLzlqdG9hdDF3azZ5dnVKRzMveTlOMm12?=
 =?utf-8?B?Y3dNVHJSdzR0U0JBYm1IRitrOUhEcGdzQlBzOGZTbm5IQzQvM3piN2hsY3NI?=
 =?utf-8?B?UHNYZ3FaUHRITkFEVVFDQ3k1UGI0ZGVOTXNmRjVhV0VKRFZpTFJzeXJDczdl?=
 =?utf-8?B?WmFyeVBTWlkyM1k0VTI2YTh1cFRNRCtGaEljNXVkd3lxb2h5ZlIvcUNZWjRr?=
 =?utf-8?B?cXBzTHNVaTlocEN5aDVkZmV6NDZ5amtmdFBjTytTMmZrcE9qcDM4R0h6aTlv?=
 =?utf-8?B?UmUwUlRhdDFVYkhpQk92Q1hQMUhLZ3RhWVEzWC9kNWwrQklXSlBEZHJrKy9E?=
 =?utf-8?B?N0dqMVQ0dU5rdUJZbE1PL1FRQVN0U3grQ2pmMTExTFhkTHIrY3ZrWHFxc3lQ?=
 =?utf-8?B?bDNMQWhPZkFRTWZRZUZibW1OY2FkalhhMEFZZWRwM3hUVTZHbXJuWFZXSU5P?=
 =?utf-8?B?bXBTeEtnNTV0RUR1WWU4TndFL0pialdVQ3VoZTBBMmVKVFB1ZHlKLytRUkRl?=
 =?utf-8?B?U3A4d0RINmRZUnZ5b1YyNzdVLy9uUnZSK2g4VU1aUDc2L21UVk15ZEFlSFhv?=
 =?utf-8?B?NW9FMlM4N3hSOEhpdmUyd1FZZzBpZzZRTVpINnIrc25PTXFUdEVyZ3J4R2xT?=
 =?utf-8?B?OXFVL1l1WFdFVCs2bHVXa3U1VDBiNzgyTm5TZUlDUmpkcXp2U25UUUlyamk3?=
 =?utf-8?B?a2NxWTRqZlVyeTY3QVF4YjZtc2JodDF0UFVRY1VNZVZzWWxXaytnUkl1WDFS?=
 =?utf-8?B?dHI5bUNzMHZFbEJoQmpSRWJJdHQ2K0xUU3hySGRseFNOQ1VTZEtwb0w4SG55?=
 =?utf-8?B?bElOcmQ3SmFZUmpia0VCTG5HWUdaVjh0R2VWa1pUY2ZEa0VpQTJXM041T2FI?=
 =?utf-8?B?a1hCRWtEcmxucTlNMFUzNTlDcWRqd0o1RytoTnhnbE95UnROSzdRMVUyUE1V?=
 =?utf-8?B?b2F1SnVIRFFLb3VlbTZSTlFDMXdVNnkyUFpnalR0dEs0VUdIWkhmUWxwamtB?=
 =?utf-8?B?akE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF7551E6552.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d75a594-e1f7-4d0f-6c65-08ddf44af8e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Sep 2025 11:28:19.5794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KmmPhyTTVoZhQuNIkNfm+8sVeVRNMI1bdgixedicihngc2GIP0+NVu9gJxW7qgRbcQxBqEdB/0bWNOCYBEbBm3kDy2QlqD0uT5EgVsGKAJs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9107
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757935706; x=1789471706;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S6Q2i79C3StWeQHu5+/Yp6wDD+6uOjtwrF8mHNUE0hY=;
 b=ac3hWHyTrmZmyIo9vUWyesPYiopsMsB3IDxfGMGx7x7T7OnYtJb42qV2
 P3SsOpXoE0UlKsaX81fUHlO8aIlKhygQlT9J1HvPaYp6+DmsDvsdiBR3G
 pGMhDMp7ZVYFXsL3SAeksjrQDlzQ2I1HNBfs+/oJU/3gguxjyXu03dHm7
 Awdb4zLsaqth16Sq7LkXb9gMAIYLrprCwibl9N0k8o/t4aSlR0IYKF4w1
 WxkyEcbm39eIPRosQ1Ub9w1hydBbxLrCYsCKAOgQkVz756xLhaYt6kheu
 GMugrNUXtOp+IBYN7JIjqA8ttTTpbXwDW7aNaw5km2HyBwof7qyNUBxbQ
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ac3hWHyT
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] iavf: fix proper type for
 error code in iavf_resume()
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBNZW56ZWwgPHBt
ZW56ZWxAbW9sZ2VuLm1wZy5kZT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMTUsIDIwMjUg
MTE6MTIgQU0NCj4gVG86IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9rdGlvbm92
QGludGVsLmNvbT4NCj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBOZ3V5
ZW4sIEFudGhvbnkgTA0KPiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBuZXRkZXZAdmdl
ci5rZXJuZWwub3JnOyBLaXRzemVsLA0KPiBQcnplbXlzbGF3IDxwcnplbXlzbGF3LmtpdHN6ZWxA
aW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BBVENIIGl3bC1u
ZXh0IHYxXSBpYXZmOiBmaXggcHJvcGVyDQo+IHR5cGUgZm9yIGVycm9yIGNvZGUgaW4gaWF2Zl9y
ZXN1bWUoKQ0KPiANCj4gRGVhciBBbGVrc2FuZHIsDQo+IA0KPiANCj4gVGhhbmsgeW91IGZvciB5
b3VyIHBhdGNoLg0KPiANCj4gQW0gMTIuMDkuMjUgdW0gMTA6MDIgc2NocmllYiBBbGVrc2FuZHIg
TG9rdGlvbm92Og0KPiA+IFRoZSB2YXJpYWJsZSAnZXJyJyBpbiBpYXZmX3Jlc3VtZSgpIGlzIHVz
ZWQgdG8gc3RvcmUgdGhlIHJldHVybg0KPiB2YWx1ZQ0KPiA+IG9mIGRpZmZlcmVudCBmdW5jdGlv
bnMsIHdoaWNoIHJldHVybiBhbiBpbnQuIEN1cnJlbnRseSwgJ2VycicgaXMNCj4gPiBkZWNsYXJl
ZCBhcyB1MzIsIHdoaWNoIGlzIHNlbWFudGljYWxseSBpbmNvcnJlY3QgYW5kIG1pc2xlYWRpbmcu
DQo+ID4NCj4gPiBJbiB0aGUgTGludXgga2VybmVsLCB1MzIgaXMgdHlwaWNhbGx5IHJlc2VydmVk
IGZvciBmaXhlZC13aWR0aCBkYXRhDQo+ID4gdXNlZCBpbiBoYXJkd2FyZSBpbnRlcmZhY2VzIG9y
IHByb3RvY29sIHN0cnVjdHVyZXMuIFVzaW5nIGl0IGZvciBhDQo+ID4gZ2VuZXJpYyBlcnJvciBj
b2RlIG1heSBjb25mdXNlIHJldmlld2VycyBvciBkZXZlbG9wZXJzIGludG8gdGhpbmtpbmcNCj4g
PiB0aGUgdmFsdWUgaXMgaGFyZHdhcmUtcmVsYXRlZCBvciBzaXplLWNvbnN0cmFpbmVkLg0KPiA+
DQo+ID4gUmVwbGFjZSB1MzIgd2l0aCBpbnQgdG8gcmVmbGVjdCB0aGUgYWN0dWFsIHVzYWdlIGFu
ZCBpbXByb3ZlIGNvZGUNCj4gPiBjbGFyaXR5IGFuZCBzZW1hbnRpYyBjb3JyZWN0bmVzcy4NCj4g
DQo+IFdoeSBub3QgdXNlIGB1bnNpZ25lZCBpbnRgPw0KPiANClRoZSBlcnIgdmFyaWFibGUgc3Rv
cmVzIHZhbHVlcyByZXR1cm5lZCBieSBpbnQgdHlwZWQgZnVuY3Rpb25zKCkuDQoNCldpdGggdGhl
IGJlc3QgcmVnYXJkcw0KQWxleA0KDQo+ID4NCj4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZS4NCj4g
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFsZWtzYW5kciBMb2t0aW9ub3YgPGFsZWtzYW5kci5sb2t0
aW9ub3ZAaW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBQcnplbWVrIEtpdHN6ZWwgPHByemVt
eXNsYXcua2l0c3plbEBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jIHwgMiArLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiA+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX21haW4uYw0KPiA+IGluZGV4IDY5MDU0YWYuLmMy
ZmJlNDQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9p
YXZmX21haW4uYw0KPiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lhdmYvaWF2
Zl9tYWluLmMNCj4gPiBAQCAtNTQ5MSw3ICs1NDkxLDcgQEAgc3RhdGljIGludCBpYXZmX3Jlc3Vt
ZShzdHJ1Y3QgZGV2aWNlICpkZXZfZCkNCj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgcGNpX2RldiAq
cGRldiA9IHRvX3BjaV9kZXYoZGV2X2QpOw0KPiA+ICAgCXN0cnVjdCBpYXZmX2FkYXB0ZXIgKmFk
YXB0ZXI7DQo+ID4gLQl1MzIgZXJyOw0KPiA+ICsJaW50IGVycjsNCj4gPg0KPiA+ICAgCWFkYXB0
ZXIgPSBpYXZmX3BkZXZfdG9fYWRhcHRlcihwZGV2KTsNCj4gPg0KPiANCj4gUmV2aWV3ZWQtYnk6
IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+DQo+IA0KPiANCj4gS2luZCByZWdh
cmRzLA0KPiANCj4gUGF1bA0K
