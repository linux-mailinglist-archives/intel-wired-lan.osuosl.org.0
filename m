Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A8891E3A1
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 17:15:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0BEDC40DEC;
	Mon,  1 Jul 2024 15:15:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r1OlVAe8UoZF; Mon,  1 Jul 2024 15:15:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1260040DD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719846923;
	bh=hrrgRQ/cQ9nmtOrZyo9zhXpQwIkV9B91uFbDzgTYTic=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ISbBnAb9/6XmW0tobw3PaphwDvleNr3F20r4URDJzB3745Q2BB/4L4RGQyzf1O2F4
	 1+8NcFlJQnkiM38KwOgQDsC01AlFTn7F0pYY4Ghv07xnH2e4yuUz0QJKWNOOh6e1zR
	 SyQwPuhov3POdDDI1/xgatuO5t7qsN1OpKFfwIa6X83kxYbrjqcWuDO2NzXBNO3FJd
	 VCilsB2YGaiJvF1LcudWalqH6k//Aqv9tdacF+LTCLUoBb+lP0KxUm0R9zZQS1ACI+
	 K91G05cbQwcWkL568xjKz9RSDQbG0dCB/CYu7nj9a7fBR390B7BnDQFS2wnBLdACPW
	 1jgur90YoslDA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1260040DD7;
	Mon,  1 Jul 2024 15:15:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 217B21BF333
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 15:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0C45540B65
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 15:15:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iLDXXZUDqijH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 15:15:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BBB8F40210
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBB8F40210
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBB8F40210
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 15:15:19 +0000 (UTC)
X-CSE-ConnectionGUID: iIZGKnEQQsyVhWklvopGqw==
X-CSE-MsgGUID: KAMawvD7QOyusdd2thmmBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="16820894"
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="16820894"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2024 08:08:21 -0700
X-CSE-ConnectionGUID: uB/IgxpoQWecKVxYQE9/NA==
X-CSE-MsgGUID: Dl9yB43+SLig9uRZqFpAFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,176,1716274800"; d="scan'208";a="76269100"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Jul 2024 08:08:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 1 Jul 2024 08:08:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 1 Jul 2024 08:08:19 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 1 Jul 2024 08:08:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LTQGOABsQzDCOlaNPvextqJjAiRhUe3MWGljLaiYD7mwZCBLMU5PDY8j9AzCikFYrUmeNgYEyRnQS2fcWQUbyD4R3fXa14Gy7eJsv/QDgeqWzu/PL0ukoPxHBqJgLn/zgJliZ0/iy+vOQnKnxUm+oNFmceNVrtOdfzjHAi0vpTA6F2ov+9GU2G36MsOO8jweghuAmXxXezYE1U4nvXKiksrgfhzoW2AkIPUuRYNkgzdt8IxRFsfyxl5eUYeAJf+SwckY7FOqhI+BwxWVUvRrr3zdMPq1B2cpBiRFdYE2O7Qp0UFGqAEfBNQ3dPadXU2U3sbGi6oCUdZLSWFX6bPd7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hrrgRQ/cQ9nmtOrZyo9zhXpQwIkV9B91uFbDzgTYTic=;
 b=FXWuTVRw/p4PcmwwLYH+97NF0PIV6cQDSKTm8mx/FHsNzZsxfmWodqB0XcmHi++D2la6/2L+hCpj2UwCY78uiKvd+tw9LosrtUJ75YQVB848QxYxs/Etsrcmj3obGX47h0WIEkgCUpOxKdJG8uXBLrHSUDviw6DQPhIaiIO836xPOeCs2dZmJmrDwm+VZlGeRf64fMXGtCsC8TSKm5KypZ+pa8h4txUqxyOk9pNm92TjIbPl8XPOenHL4hoAd3xsBbKg3CCXMaeisgjLjz8hv4rQAU00+pHQrVEwzGc0ZyBI1Q6nbCFPMvTmqex+XovU9NKP1+BCcwTYcZOEi/IUpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN6PR11MB8102.namprd11.prod.outlook.com (2603:10b6:208:46d::9)
 by IA1PR11MB7367.namprd11.prod.outlook.com (2603:10b6:208:421::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.32; Mon, 1 Jul
 2024 15:08:14 +0000
Received: from MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6]) by MN6PR11MB8102.namprd11.prod.outlook.com
 ([fe80::15b2:ee05:2ae7:cfd6%7]) with mapi id 15.20.7719.028; Mon, 1 Jul 2024
 15:08:14 +0000
Message-ID: <815f7f5c-6d98-4be2-8fc7-09851fe281d0@intel.com>
Date: Mon, 1 Jul 2024 17:08:09 +0200
User-Agent: Mozilla Thunderbird
To: Simon Horman <horms@kernel.org>, Karol Kolacinski
 <karol.kolacinski@intel.com>
References: <20240627151127.284884-9-karol.kolacinski@intel.com>
 <20240627151127.284884-16-karol.kolacinski@intel.com>
 <20240701132744.GD17134@kernel.org>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
In-Reply-To: <20240701132744.GD17134@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MI1P293CA0016.ITAP293.PROD.OUTLOOK.COM (2603:10a6:290:3::8)
 To MN6PR11MB8102.namprd11.prod.outlook.com
 (2603:10b6:208:46d::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8102:EE_|IA1PR11MB7367:EE_
X-MS-Office365-Filtering-Correlation-Id: d81a96ad-a3bc-439d-2ceb-08dc99dfa191
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODI1SG16SWI3OHNmb2xJbkdvOE0wNEMyZkpIQ05uL2plNFo2bnhDckd3cG5R?=
 =?utf-8?B?Ty9Edm9tMFZvbHFPbE1VWFNkbStFT0Y1QmRQSmpENFR2dkhWbDAzbmh4UFR0?=
 =?utf-8?B?Zmwyd1IvcXFtWlRIUTBTNlhoM3IyYlAyckJqNFhMVmlsbGdNY3laVlhhbHlJ?=
 =?utf-8?B?OC9SRG1rWnlJNjlxQVdMUC9MNGRKMG4rOWJoZ0RyNWdTaUNxN3FiYnoxRjdR?=
 =?utf-8?B?RTI4ZmcvTTVoUXdIR09Jalh6VnZLN3NjMURSRldtTktGNmVUTHBTZDlkd05Z?=
 =?utf-8?B?MkxZb2VWZDJnQVZ3SlBzQjdodUQ3RFV0QkJLSk1IMVRGVlJxREFGQy9Zd2V5?=
 =?utf-8?B?Y1NmVHBwMHlOdFRLYndkZFFMallZNDQrZ3VPaHVMdGRwWmlEd1hPUFJlNG0r?=
 =?utf-8?B?cnpXOGhpWXBKMFJ4ZHBsNGMyZ01UM1NkTU5GWmcrcU0zbjg1b2RzSW5lbE11?=
 =?utf-8?B?c0lvVlJhTnkwb3RhRkxGU3Q3aThxZFA2b3R3K3ZneFRzOFgwZFljUnBwdEl1?=
 =?utf-8?B?bVFGVmZzYzY3bHdDVnB2dzBrYjJXbEtablc2c3lkbzV1TzVTbVFiMnlzbnhS?=
 =?utf-8?B?WHhXejZaZmo4VEg2KzdEVEcrWElmaGlYY3BNZnF3VDFZYmdIRy80dGtENkZq?=
 =?utf-8?B?bEp2RzRjNkczZkZnNGg2VUQrWFhOUkJBQm5GZmxTRkVsOHk0QVRuVENJQ1dx?=
 =?utf-8?B?d25WU3I0SHNGazlidzAzTlFwWEZHY1djeDBydzJFdVJYcjJyUkd3R0taenZH?=
 =?utf-8?B?cHgzMXkvb2MxZFBucDZ0c1ZqZ29yVytJTkxFdmNRV0tCWlMvYWxXUG5ZQ3Jj?=
 =?utf-8?B?R1I2NEp5cnpVOGRlNlhQUnVOV3kxNkJXeEQ0TGJncDJmUGQ1ZDVaaHRXS0dz?=
 =?utf-8?B?NFNLNXNIa0FTQkl1aWl6bG84YkRVa3VLTzFzZVhBWk5CeDFtZHQ1cThjNnhq?=
 =?utf-8?B?eUhlSkZ3RlZsa3lnemhCZmVlbWVUd3hqY3pQNmxmR0lKbnN2SzU3WG1oYWFz?=
 =?utf-8?B?ZHR1SWNrQ3ZjdjVRVjEzUGZGWUtBMXFuaVdCVC82RU1nTTM5RjFoaEplTlZO?=
 =?utf-8?B?dDZjRzg3SUtSRTBpYzZwTGtFME5xMmtxUUZDR3ZiNTFVRVdjYzV2SG5WNkk5?=
 =?utf-8?B?bVp4V09YeDVCK3hndGVvVy91SEQra2JFaTQzdnZrNXU1S3NvdUxvdzNOSGZM?=
 =?utf-8?B?Y2E1aXR1czdqTm94Z3lwajA5ZGU5eXM2L3RLYUJqdkdvMktvUWNPY3VJbEhG?=
 =?utf-8?B?MnZNamNEVXE2WGdJbHJKWVNhZG91N1VoT3lhK2RFZWVSbng3Nk1EZGV1UWxJ?=
 =?utf-8?B?bzZFb05QVDByUUViWlc3Q2I2ZmtxSnVncDZ3Tms5VWFaNjZPTWwyK0pzZDNX?=
 =?utf-8?B?ZkVMbTk0S3RuN2h2WEY2SjVqZzBEeGRFVm9NVU5FcGN6Q3pjek5vcDhzYVNG?=
 =?utf-8?B?VGV6NlFtSUtQanZ3dmRKMWYyOVJoYmpnVGlBbzQ4d3pSODVjYkVtTXFob2Nv?=
 =?utf-8?B?UVI1cCsydDQ2KzJ4b2dRMGtTajQwUDZEcElxUjltbGk5dkVhVXIzbkxzeld2?=
 =?utf-8?B?NWV6TTdwYUtXSWtmUjNiUnBQRXYwSnRqdGpDNGdHV0tlc3UxNUtHT3d0cjJx?=
 =?utf-8?B?TW5NV1o3Zm1uOUo4MlRiQ011MDFSRzJMYmVvYkEzNU5zcUl1T21BSXlSYmow?=
 =?utf-8?B?MWNqc0JvQVJqaDRrL3ljQ1Ezb0ZmL0JQOFUvKzdIdWc3Y2ZqV080VnFUempv?=
 =?utf-8?B?NnQxNGdGYm1CQ3VHeHBjM2RpN3RvWTNTNjkrM0tyNmdtTGJqVUUvWTBoN1VB?=
 =?utf-8?B?OU55VENkdFhEWXBIRC9zdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8102.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEZ1NGZZRDcreWhBMXNhMnBSdHFHZ3N2a1JseXdZbzNmZDlYSmJIVVlQSFh4?=
 =?utf-8?B?dVlhRWlNaE9xR2dVZmc3dDUwR1VtSEJHaUIvWS82cnlsMkthazh2WHd2aWM0?=
 =?utf-8?B?K0dZdENsR1hPRjB2cmQ4U2JHMkpyOURrRTdMeXJWdTJ6aTJLMEZ1NGQ4U1Y1?=
 =?utf-8?B?YjFOZDBnR042ZmdicHpKbTRzQk9uMng4SUR2eHRRN0YwSzhGdkpEaXN5ZkZI?=
 =?utf-8?B?TU9vNjFHR3M4WVpTcU80UlovN1ZkZHJiTUlSaHJLQTNvNUNFb3JHZWRrL3Fr?=
 =?utf-8?B?VTVpQXl4TzY1b01YUHNQRVlndEpGWmZoWlJvY05ML2kvb1lrd21PRG5JbnlO?=
 =?utf-8?B?aXh0SnpqdkdMSmVhMXBwRjh4aWNKQ3N0UjczQzN0TXNMTjZOS3E1RnZPSDlI?=
 =?utf-8?B?M2NFTUp5T2pzVjlRNTNEWVFwdmtTdkhyWnFkeFJiU3hnNnkrNjQvejVvZ2Vo?=
 =?utf-8?B?N29PYm1LL21DaDEzZklHSjhXbjI0UmtkTkw2ZHdHdzA5SVRuakdiaFlFckxI?=
 =?utf-8?B?ZEtrWko4RU55Zk1JTGJtdm5BdVUwT3E3ZURiSkdPTUtWNVY5STI3SGZHNFRI?=
 =?utf-8?B?QkRmVkFJaEtlUGxUUmptYVRBVmZiK0tXanA3QyswcklvWDVIRW0wYzRCMm5R?=
 =?utf-8?B?YkRoQUY0V01XL3phRGJqQWtkM01rVkZjN2JMNW45MktpbGQwM3VxT2tCeVQw?=
 =?utf-8?B?eGNHblBnTTV3VmFYTHVQSWh2aUtLdUVGSjJOalh1YW4yZVVkbTRJQWkvS2Fl?=
 =?utf-8?B?TWdUWUdKRzY3eWp3Ni9pbTRiT1Y3aGhhTXlUbkl3TmFXZUVwK0hPSFJFUFR2?=
 =?utf-8?B?VWNJbG1IWGxwMDN5NEtZSUIxSVRFejlGWmZjaGRORDc1eXh1NncveURteWt3?=
 =?utf-8?B?T0RhT245MlVQajAvN3l5ODluZGdud3VkUzV4NGxXc3VaRG5pZVp5WWhWRTFi?=
 =?utf-8?B?QjRrK24wSWVyeitDL0NCNmJ0NFFTS0ZmSnUzUzJPL3RaOUwycC9zSy9DdGlU?=
 =?utf-8?B?Q3RjZm9RZVcvM1k3WXpOdVNKRm9oRWI4cnoxR2hLdG5GUWhycFpOVUoyM0tu?=
 =?utf-8?B?dEp0UFhaTXF5SWk5aGc4MHUxclMyWHp5RXVMcmpzQk5KaEhSMDdkdlJZRi9p?=
 =?utf-8?B?YzhlR3UxaGVJdWJuL2tFVk54ZzM0MG1icXp2UEIyYm9xLy9xc3ExYlFGV0tQ?=
 =?utf-8?B?ZmxYbjN2dDRUVVlvUVZicXhCT2hoSWFJTm5Rdmp4b1FKSS9jSXJhNWFhcXV4?=
 =?utf-8?B?UGM2TE5XNFpHbXlqbUVFOGhFYmRKc0ZMZ1R2STVYbkZ2K3BMSDlCRy8vU2V5?=
 =?utf-8?B?azc3eHY2VW5QcGlkL0oxTTB5N2Mzc1hJczBaSW1IOEZBQlN1Z0t3N1VJNksv?=
 =?utf-8?B?eWJRc3c0bSs0UUF0Z1Vrc29XVUtDQ1ZUeU13TlZzQ2t4WC9zdDA2aC9IQktu?=
 =?utf-8?B?R0M1bCt4K0Z0ZnBLUjRPd013T3RqQUozWjRaVHFaaC8yVWRjZnBNeUFOMmZt?=
 =?utf-8?B?NU93Z0dWZmFRY08yclNGZnRtbzB6OHV5cklQcFFCaW91MGtHaGZqTC92WkRn?=
 =?utf-8?B?WGlBWkFibm1WK1RyVkMyMnpTakhLdVpGWUFpWmdEWW80WTJlNC9qeE1wSUJ1?=
 =?utf-8?B?aDFHbUIwQ3hCUElKakN0N2hJYTUxT2RBQXp1U0dmWnEyOFBkT0ozRVpUMy8y?=
 =?utf-8?B?R1N4SUZSaXdQR1NWa0hXbHpUTDZBTURabXVkd1pHam80YjVIZWE0S3d0WjI5?=
 =?utf-8?B?UHA0WHlQY3BLdkdPR3hZKzZ3eTNvdGNkS1ppenZRWEFqZXYvK1lFUStjdnJ0?=
 =?utf-8?B?YW5MMzk0czFkRUIwVUREWW0vNUw3alBvT0lDbm1KZ1BadEVWK1lrSHAwVFR2?=
 =?utf-8?B?bW9zcndDdkU5NzR0dE5qR1NQRGQ2VEhBZytIY1AyU0UxVE1oVDNyL3J1aXJO?=
 =?utf-8?B?c0ZLa0lsWS9WVTNyNUNyWUFKQy9ZM2VKbFpvR0FUK1hNYzF0THBpSWtrMmZk?=
 =?utf-8?B?OGE1YVY5UnBWRWt0dlQ5NDJleWhpN01tZWs5YWViNnNJL1p5OUhSTWlKb3kx?=
 =?utf-8?B?UHVXZWhhY1lIbWZHZEZ1cUxmYkFqdUtkeGhva3Z1aHRrL0VTcGR3ZkROSHNW?=
 =?utf-8?B?dGJVK0dzY1V1ZmtFU0tZNnlLcFNSL1hqTWFNSUZTZDAwdEhjMVBMWXJseTI5?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d81a96ad-a3bc-439d-2ceb-08dc99dfa191
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8102.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2024 15:08:14.8053 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sp66OhAcyMBvgGEmBDnduB4PNE3xmShKMrkwlNJotl9pC4PMy12ZSjzJYBHyh/XkaZFmPRJyIoPsWJTm9tDdLJ5Ru4xY8MwxbT3ssu4qIzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7367
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719846920; x=1751382920;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6yi8x7i9ExCzmOk+RUkzLcwItb0ZX6A8Ahhu9AcfECk=;
 b=A4fGBj1f1zX55ateQQhk7K58BFcMeuU3At+Nr6HldXG6Kj+uxOQqSd9H
 hS6tuZyZx3FXQTUgaAcW/1jaV9GKDRkmL4Ofap4XkNyT7baBt6QYCC9FP
 33Ldvf7EK+weEaXwkWCjGT4nIPhzobFneiRugtnOoNqvV9iRyId67uMbY
 92TxEOQihpd4wNsx5V1YyLt3YjCkC3gBF7u3HujQYPCda54MJfOwgPGoJ
 4YqDcxkZpa/2eHnENl2GANZvB3kLxDAtrNqF7P9rvB2A0wLCTtSSBD6/v
 zZkxpmH8b5qMmOVkWNn5YtZIFk9s5b9vU9cUHXFwM/bhQQ9swBpY5JiCA
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=A4fGBj1f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 7/7] ice: Enable 1PPS out
 from CGU for E825C products
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
Cc: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 7/1/24 15:27, Simon Horman wrote:
> On Thu, Jun 27, 2024 at 05:09:31PM +0200, Karol Kolacinski wrote:
>> From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>>
>> Implement 1PPS signal enabling/disabling in CGU. The amplitude is
>> always the maximum in this implementation
>>
>> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>> Co-developed-by: Karol Kolacinski <karol.kolacinski@intel.com>
>> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> ...
> 
>> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> index 07ecf2a86742..fa7cf8453b88 100644
>> --- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> +++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>> @@ -661,6 +661,27 @@ static int ice_cfg_cgu_pll_e825c(struct ice_hw *hw,
>>   	return 0;
>>   }
>>   
>> +#define ICE_ONE_PPS_OUT_AMP_MAX 3
>> +
>> +/**
>> + * ice_cgu_ena_pps_out - Enable/disable 1PPS output
>> + * @hw: pointer to the HW struct
>> + * @ena: Enable/disable 1PPS output
> 
> Please include a "Returns: " or "Return: " section in the kernel doc
> for functions that have a return value.

last time I have checked only the singular "Return:" was supported (aka
non-complained) by kdoc checker on W=2 builds

> 
> NIPA has recently got more picky about this.
> Flagged by kernel-doc -none --Warn
> 
>> + */
>> +int ice_cgu_ena_pps_out(struct ice_hw *hw, bool ena)
>> +{
>> +	union nac_cgu_dword9 dw9;
>> +	int err;
>> +
>> +	err = ice_read_cgu_reg_e82x(hw, NAC_CGU_DWORD9, &dw9.val);
>> +	if (err)
>> +		return err;
>> +
>> +	dw9.one_pps_out_en = ena;
>> +	dw9.one_pps_out_amp = ena * ICE_ONE_PPS_OUT_AMP_MAX;
>> +	return ice_write_cgu_reg_e82x(hw, NAC_CGU_DWORD9, dw9.val);
>> +}
>> +
>>   /**
>>    * ice_cfg_cgu_pll_dis_sticky_bits_e82x - disable TS PLL sticky bits
>>    * @hw: pointer to the HW struct
> 
> ...
> 

