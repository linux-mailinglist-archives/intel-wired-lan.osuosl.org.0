Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9018C972E2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 13:09:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0307A40CEA;
	Mon,  1 Dec 2025 12:09:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hCMtf9WO17Bf; Mon,  1 Dec 2025 12:09:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66C2A40CEE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764590953;
	bh=d01KC8ivdlCLrbQNTdHIDRNVtOMuOqVf/7AZbsSrubQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=TblYsUnbf6olkXcunaxXqf1dd2+50BWac5nd10PDxNW9fSehi18OkDoGmgw8yytsF
	 Hv0iZmCc9YIvbujRTNGsc1LwqlQTKDl0oLZDJf+0nqJNchzLG7Wo6TechzOb+orsul
	 zqEIaTCI8HdVvExTjHh0lUv93cV0bzPGKOkxB3US2n7oOY5TADo9VvIXKy5jlK2tnj
	 vnuTjJgYCVUxzRZJdn6vZLxBIyM9l3vY7Bab6ETDQe2fMZPsLo7sDPqoCPBVNLbnbW
	 BzCl+c3+Bk0zGIcepFrUTy+pU3wuwludFDi5yFmau8bi+urR89D5sb7bjTGzKhaPQG
	 9MNR5HuBjoI1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66C2A40CEE;
	Mon,  1 Dec 2025 12:09:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D1D61BD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:09:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6989F40CEA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Dec 2025 12:09:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4h9XARaKaHAQ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Dec 2025 12:09:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8E1BB40CE8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8E1BB40CE8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8E1BB40CE8
 for <intel-wired-lan@osuosl.org>; Mon,  1 Dec 2025 12:09:11 +0000 (UTC)
X-CSE-ConnectionGUID: gcojNU6AS/WdyZBJWLVJjQ==
X-CSE-MsgGUID: eqeks5QERbSUCnNxkQ342g==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="66240548"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="66240548"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:09:10 -0800
X-CSE-ConnectionGUID: naPtmdaDQkivJCgE6tewIw==
X-CSE-MsgGUID: 7EwdjzFaSoapv0su4vISmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="199000676"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 04:09:10 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 04:09:10 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 04:09:10 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.5) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 04:09:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VMh8VC4JKyYvtz52+Kvwzr6MrMZsjS+rld82fVCTqbixzR3RLsp0P8uiTVR6SshJj8BcFcwr9rm8VQgEUMpRV4aLNA2pdOGWt0VGlkN0l7a9ALTplKtDuw1OaXOVrkXbCvXVWnY3gkURZPOzx5VExyhZp5vv/bqrWjL1YPu/YkAq3ye1NsYywfmngcvVY+EyjTsHEwdfPvuoi8hcxZ0VJXgjrlOERg6AQKFnj/bCWP/JZ8tIJe3BZMDFRahKFg1UMqk3OIxIKPfFmUzy9XshIvCPn9sjul6Fj4m9RaGi/dffWO81zjqUA0lCwhELV9iuKOLMdL+e4ANZfbmH5bT4EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d01KC8ivdlCLrbQNTdHIDRNVtOMuOqVf/7AZbsSrubQ=;
 b=a/UbP2FUawrKhNkRN9zk8Kc7eptp3QqqVyn5Fq214LX89iBzyldg26oYO11emilRxPRJdz74zjaiAn58mQO0c8slDbIw6tGuybBXbZvyAzkbX/A7QbzHxrgu0T1LdlN4dxWSL57fjVpqkvtKQq5sxlfMBqAFUQxnIz36J43RLk3gePK27cHDwsIt+YCDqwqy7j0m5DYLC/h+h7ypFhaV9DsRDOMILTtAqHt6L55X5BH4IcEgPrQsnnpZSgCUt2h8TsyePFYxQFoggmpYpOBeJiYSM7Xt5Q2dViw7OxXq9BGHOFmZjvSOlHEvHYV66Af3w1y6lAwHg+r0vBMV3cND8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9013.namprd11.prod.outlook.com (2603:10b6:208:57c::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 12:09:03 +0000
Received: from IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563]) by IA3PR11MB9013.namprd11.prod.outlook.com
 ([fe80::112f:20be:82b3:8563%5]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 12:09:03 +0000
Message-ID: <91b21af5-6faa-407e-a49f-658bdf186086@intel.com>
Date: Mon, 1 Dec 2025 14:08:59 +0200
User-Agent: Mozilla Thunderbird
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "andrew+netdev@lunn.ch"
 <andrew+netdev@lunn.ch>, "horms@kernel.org" <horms@kernel.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "edumazet@google.com"
 <edumazet@google.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "pabeni@redhat.com" <pabeni@redhat.com>
References: <20251127043047.728116-1-vitaly.lifshits@intel.com>
 <IA3PR11MB898649A13E7FE4FF54F6601AE5DFA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
In-Reply-To: <IA3PR11MB898649A13E7FE4FF54F6601AE5DFA@IA3PR11MB8986.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: TL2P290CA0009.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::10) To IA3PR11MB9013.namprd11.prod.outlook.com
 (2603:10b6:208:57c::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9013:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 14d5e06f-f094-44d0-a77c-08de30d26af9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|921020|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0dINEY4YktMeG92ZFlCRzhneDhGb3RuOVplZ3dFUG5ubmh4WUpVTnE2QTV5?=
 =?utf-8?B?K3dML1FWb3N4WmtlZTFLcVpqaGp0NHVkK1RHdUtSc2VWL0JXd3FpWEYrdUk4?=
 =?utf-8?B?YXc0UUJVYS8yTDZlZzJuRk5tRkc4bzM4OGw0b3FIaUFyTG9YdG5CaWZMemxJ?=
 =?utf-8?B?cWFxcXZmL1kyM1NubWw0dzd1eUtRTldBY1pXc25wTTdkL2RGSEw1RUZNUjZQ?=
 =?utf-8?B?ZnJybUVRd2YrZnM1dzRZc2tLQVIzaUE0eHE0dWF2eWlOcnNrVVVnWlNPZFRD?=
 =?utf-8?B?NjVtUDFnbjJXc0NpU05FVWlmUk4wMlMxVE9Wb09YZDVQZjZCWVN3d3U4aWNy?=
 =?utf-8?B?T2tXUVRjR2dYYkRzMGFvdTVZRzlKQjloU1lLSmcxRzltbGRWNUgrZ0pIZUU4?=
 =?utf-8?B?c1FiOXFvazNiWElLUmgxcUs4SEI5TjVTMXQ5S2hydTNtbGQ1TzFkY3FONWc5?=
 =?utf-8?B?MFlhUUNkSnpjTWpFbFc2WC8zNnlxajNQNjB1R1FKZ3lrN3lNUlVyWStlUCtw?=
 =?utf-8?B?cjVXaThDRC82ZjkxWk9pdXlPb3hvTk5uOVRQcWxFbVVJZVBxUWpwNW1rcXNj?=
 =?utf-8?B?V1I0b1UvT2JlY2FyelUvL1V2cDBoRTduandiN21leVRFa2ZiZ0xlTVZnT1Zv?=
 =?utf-8?B?RXBveGhCaFNyZDM0dVZjZFp2YTVMRHo5YUdGRWN4Y1dLVDVTUFpXc25kMkF5?=
 =?utf-8?B?dGcyVzBjWHd2VjdRYnRxRW9XejcxTTJhdGlVempicExUYmd3amF1WllGcmZa?=
 =?utf-8?B?RlgyQnM3RUswaDJOLzdkalZDTWdrZVNQVjUvRnR0OGFRMmU0dUtkMGVVSDFJ?=
 =?utf-8?B?SCtHV2pCZ0s3Mjk3UFo0S2V0N3NyalNUMUQ5eGlwalVVb2pNQ0FYWnlUSHl3?=
 =?utf-8?B?ajV6ZWRNRTVldytic3g1QnQzL09ob0cxc1Izd0VGYjFKYUNMWFBIVUs2dE94?=
 =?utf-8?B?VktTbjlUUXMwZ1IzRXpCb2pVcHlFZElWZTBYVDYxampkc01jdHBMVUZsZFEy?=
 =?utf-8?B?cW9QSEdqaXBnQXZFZHpYSEFWZkppZndlT0xRc1dQOXJCWG9rWXJQRVdiY0RT?=
 =?utf-8?B?TC9IQVREVHNHUHR1ZkRTNUZLcGRHNFRqblcwR2l2OGdha242eVRsUld0RG5Q?=
 =?utf-8?B?NW5nUUVTRWgwRGFHU0Z6T0hPeG5vbVVYNk56dC8xd202amNMb0pRcUlaZGVL?=
 =?utf-8?B?QjRnZTVJRTFHVE9RMEFtSHZPcnNwNmVkcTdXTlpPeVU2clM1VGtmbkxzRjN2?=
 =?utf-8?B?c3lhaFA1bTUyMngvQks2VjVHQVlxU21NZTYvQjZ0WGRhY1JWazQ0RjBCTkhQ?=
 =?utf-8?B?eDg5c3NkZlA0U1hTcVRXY1Z0M2FreXlyQ1FDZHpnQ1kzK0ovcGF6c2RtSjBE?=
 =?utf-8?B?bkFxczFYcERmR0ZwMzgySk0zMlE5dndNRlBIUmxtTUVBL1BUWXhSOUwralhz?=
 =?utf-8?B?dm5RcnQwWEh2WjVIYkVoL1F0cXhVSHVlWHM1RmwwZmlJOVlibWlSRmc2SjAz?=
 =?utf-8?B?RjZPWGVibEhXZGIyZTRLSTZsa0xFUlIrS3ZjeE11eXhUQ01ibTJESWE2aXNr?=
 =?utf-8?B?RUtVTmZZc3UrVDh3NS81NjVkSmdkRmhFUU9XbGFMRmJCalUzTHI4cEdEUXRM?=
 =?utf-8?B?dGhsNHo0QWJEV1cyTVR1ZWM2S3lvSnZVVm5OQ2dET2xQNkpEdkw4MGo0RFJp?=
 =?utf-8?B?WnEyNnBVVjlXNkF5YWFqVVI3S0NOTXNYcWcxbVZudGJUbTBYb3NNNzVWRVJi?=
 =?utf-8?B?b1FkQkxFTVpsajNTZVBpS1BGUjBISXExcHNVcW5BQmdxQXJ3Z2NMUWJQSmpq?=
 =?utf-8?B?MUNob3FOU2swclNSS3ViTWlNaUtScGV4ZVRTUDI2a1lUdGtMRzNHZEluR3Fu?=
 =?utf-8?B?NUxQS2VFRUJXeHhtKzZtOXN0Y1BJTGk5WjI3UkJoM0g1UjcxaDljUmk1clNJ?=
 =?utf-8?B?YTMxU1B1TlpYMW56QytlOEhwdDBGc2lMemd3enJEbHl3WmlpVVVnejVxMXkr?=
 =?utf-8?Q?yt08PqZV2nZMMCnxEUEG1W5wXtG6hc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(921020)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0x1NWUvbCtUVmRiV1QwamVuMnlsY0w0NUVFMmVYcTM3a2VibTZqaTBIbXBu?=
 =?utf-8?B?ZFVyWXdPWndLSGpHcmd5OEFXN1lKOW1KOE1qZlpLMGdzYTRTTmJQQnFHWXU1?=
 =?utf-8?B?OUljRGhDcWpGWDZtcXY1QkFzL1pacGh4MndZU2NsN3ZxYW80RzJXWjRpOFpp?=
 =?utf-8?B?d1k3eGVhdGpxWGUrOGZIMWZ6NUd2eVNVaTFKOStFWmFYeTlMalVUTVJ5dkNX?=
 =?utf-8?B?Zm9GNTQ2K3R6OGd2amtLWnJqZHlLTmZGZVJ4Wk50ZkJPVGtBdEhaZk5GZm5O?=
 =?utf-8?B?ampvbk14ZmdMZ0tNem80Y0lhWTdFai9JZjlqUk5BcDMzRnNsTmRYZEN1cVo0?=
 =?utf-8?B?WE9Ub3pRRENaeDRMdFQ4d2ZCczRHRzMrSUNtRVNNQ05QR1I3VjBMTkQzcllQ?=
 =?utf-8?B?YXlRaGlsaTE0cGw4ZCtyWVVQd25wc3RTSVhSSlQvbUI3Z0N6Y1RYSjZTdkdJ?=
 =?utf-8?B?NVRMb2llMTZUOFo0MmwyNktiZGNnTUhqcHIwVWtwWnkvNjZCK1VyKzBNa2o5?=
 =?utf-8?B?TFUvNUxBa1prV1Axc05JbVMwV0xYYXBoRFF1R0xoVjVyUFJLbGNtR1NSUlZE?=
 =?utf-8?B?MUZJanVqZklMSEhmTTA1VTVyenpXbldNQml6YkRxSG0yQnlyQ1dJeVFLUkZ4?=
 =?utf-8?B?WWIyUkUzOWQ5STJBUXArei82bzhqUDNxTXZIMmh4UE5hQkJSTXo1cmtLSFBW?=
 =?utf-8?B?TldFZE5BOXlobEdZdmZxY09BVlBSM2FXc1VFSzZybXBKd3dka0JPSkROdGxV?=
 =?utf-8?B?VkZRWmFTem4waHNSWkljeHZVTEJpaFZ6ejk2NG04dUZNckFnVmYrMm12Q0hR?=
 =?utf-8?B?WG0vSlZGNGF3WlB4eHA4UVhlRC9RaGlpSFFiNFN3Q3R1WWV3MVd5K09Ga1NY?=
 =?utf-8?B?blVhTElydXdUazhFM1F2S21WVlJoaGxmV1lwNGk5bEpPZkxkOGtKNTA1emJs?=
 =?utf-8?B?TlFTSW9mRk12cnJ5aGJ1Y01zQlhNVmNTeUxkOEkrWFlwSDZ3MnE4VjI5YVAx?=
 =?utf-8?B?eXJEb1dFTGJxdGdWczRHNnAxcDRiWWFiU2NJenNWVVJoOEVKb1Q4bFBYMWwr?=
 =?utf-8?B?NVVhU2gxS2NiYS9BcXJTWmVrc28yTnZwNEFqOE5JbExYaGR6T2EzelRhTnFF?=
 =?utf-8?B?ZlFCSnFkZGpqQjVrdSthWWNybXhJODZPeDdaemVGdkQyZjBzRDFmUzMzZ01v?=
 =?utf-8?B?VzduY3JrZTV2aXRGRUdGYWhQZjFMSFZtWHl0ZjU5VTVYTzFaN2UrclBWdnJ5?=
 =?utf-8?B?LzlGOS9BWENkUVVBTjN6SjA5bGZvenZZeS9jaHF2aUhpMHl1YmRWeEMvTUMx?=
 =?utf-8?B?cVVVTW9YYjFZNENOMXgvc3lxaG1mMEphSzdra0ZnOGl1SzhiM01oN2VFREE0?=
 =?utf-8?B?SnlkL2I0QjJ5SEZKdHJ3K0dmU096Y2R4aEVPcmI0cGRBYlFwdXlIRVMybW1H?=
 =?utf-8?B?amVGMjJwRlJIaVp3aEhiTFhXbXhXZklYNnlwQ3dhQUNvYzlHVjlndTJTNWtH?=
 =?utf-8?B?SGNQejZna0tpcFhpemxPRjlnczRvUWx5SDA1bmtQQWxXQlhQZUZQTmoxRUE5?=
 =?utf-8?B?WmhreTg1MXBtc2F0MEZFNkorYUNLd1VnWS9TNEt0ZWl2cGZZZUN5bFpoVW1t?=
 =?utf-8?B?WGVpWUd1SGNEM3NyRVBUbUZHUHlZUE1Qalg3ZDB2NHZ5eTRHMVdKL3ltcG5P?=
 =?utf-8?B?YkNBamF0YlZjRm5LSEcyU2lXd0pubG9WVXkrb2hFUGZFT2Z3KzltWHBlMGpr?=
 =?utf-8?B?Z2drdXFtQXRTZFZWV2dpa2NTWitCTjhIRmJoalppUEtVQzFJNEZpZ1hXUzd6?=
 =?utf-8?B?WTNqT1pwQnMvMlV2M2YrK1Y0ZUo4S0hNRXV6enVWekNka284ZEZMT0dEbDJ2?=
 =?utf-8?B?blorY1QxbllLLzBwS1RzaXk0N2hmMWdRL29ESFBPYlNXMlZVam9rVExXc1hM?=
 =?utf-8?B?WlFqMHE2b1dGWUxxRFpsbmR6VTdRdGxZdXhadCt6MDJlanROQ0svWnJkQkRj?=
 =?utf-8?B?V0h1VjUwL0E4R282U2hpSkhmODVQMU9PbFdUT3BYWjJhdVVEZEdLdU1yUnFv?=
 =?utf-8?B?LzFxZkFMMzg4OVJaR2w5aFc4UXAvTmkwd3Y4bnQ2UVBsYjNrQ2pKZy9mMDRY?=
 =?utf-8?B?clFuM21uNVFReDJVYVVML0ZqZVBWYk4vYzloMTgzSUM2KzZ1VXBzcGtiWkc1?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d5e06f-f094-44d0-a77c-08de30d26af9
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 12:09:03.1288 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qa5v37n9osA2TvZ0ZC+qOVWmsb6TRvGX3vkjkSafcOnCcctUrWOidZWcB4BeEFLECWqcOIVlcjVUoyJEpqR3ycLKfsU84sLSot4b+0D2OgA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764590951; x=1796126951;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=F2ItU3zgxox1RA+O5vLdZnL2OI9apZwZrmvzFMMXp6w=;
 b=dACGbNSFCbAS12jJwjvjSH7rDG8BfKZarsrQQpAJ4kS3fjlY+3jxk99g
 fGm9ku8hauFvsu8bIZzVoeHZa2ROHqZ7TvD2J2TueqHd8fo47+ZRMpRZZ
 RHanXqxhmJMUbM7F4SHxBj3ZeyIdzG/fcgYDJVKG8iG61HtuF+3+k8xI/
 2j7GbPpx3p04TcEVXDThzZKuhpjfw4j6OrjkKR2pOWD5VBxDpTPRgJkiX
 s0eDUMdqiw3WyMFXEzYRidqogiSvUfmC3AHGdNc9HNCXRxlUxBnl1uZHf
 Niqo7WhquOPGPIroHBRSZAv+ZfyxYZQEZDb6i1OOIdfRxDKTm/P7UJ9RO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dACGbNSF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce
 private flag to override XTAL clock frequency
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



On 11/27/2025 9:01 AM, Loktionov, Aleksandr wrote:
> 
> 
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Vitaly Lifshits
>> Sent: Thursday, November 27, 2025 5:31 AM
>> To: intel-wired-lan@osuosl.org; netdev@vger.kernel.org;
>> andrew+netdev@lunn.ch; horms@kernel.org; kuba@kernel.org;
>> edumazet@google.com; davem@davemloft.net; pabeni@redhat.com
>> Cc: Lifshits, Vitaly <vitaly.lifshits@intel.com>
>> Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce private
>> flag to override XTAL clock frequency
>>
>> On some TGP and ADP systems, the hardware XTAL clock is incorrectly set to
> Please expand platform abbreviations ("TGP (Tiger Lake PCH)", "ADP (Alder Lake PCH)") and add minimal test context (kernel ver., device PCI ID, FW, phc_ctl version, and whether CLOCK_REALTIME vs PHC was compared).
> 

Thanks, I'll address this in v2.

>> 24MHz instead of the expected 38.4MHz, causing PTP timer inaccuracies. Since
>> affected systems cannot be reliably detected, introduce an ethtool private
>> flag that allows user-space to override the XTAL clock frequency.
>>
>> Tested on an affected system using the phc_ctl tool:
>>
>> Without the flag:
>>    sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>>    phc_ctl[...] clock time is 16.000541250 (expected ~10s)
>>
>> With the flag:
>>    sudo phc_ctl enp0s31f6 set 0.0 wait 10 get
>>    phc_ctl[...] clock time is 9.984407212 (expected ~10s)
>>
> If the XTAL override is applied via a devlink driverinit param, this reset is expected and should be documented.
> If it remains a runtime privflag, I think you should explain why a reset is required.
> I'd recommend documenting the reset requirement and user impact (link flap, timestamp discontinuity).
> /* Add a short comment near the reset logic in code and
>     Documentation/networking/devlink/e1000e.rst (if converted to devlink param)
> Or Documentation/networking/ethtool-netlink.rst (if kept as privflag) */
> 

Though your comment might become irrelevant if Andrew's detection 
approach works, I'll still clarify the reset behavior. e1000e is a 
legacy driver and does not support devlink, so the override remains a 
runtime privflag. A reset is currently required to reconfigure PTP 
parameters with the new timinca value.


>> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
>> ---
>>   drivers/net/ethernet/intel/e1000e/e1000.h   |  7 ++--
>>   drivers/net/ethernet/intel/e1000e/ethtool.c | 39 ++++++++++-----------
>> drivers/net/ethernet/intel/e1000e/ich8lan.c |  4 +--
>> drivers/net/ethernet/intel/e1000e/netdev.c  | 18 +++++++---
>>   4 files changed, 39 insertions(+), 29 deletions(-)
>>
> 
> ...
> 
>> --
>> 2.34.1
> 

