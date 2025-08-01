Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B278CB18951
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 01:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D6FF41256;
	Fri,  1 Aug 2025 23:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dKcdHfs4B2n7; Fri,  1 Aug 2025 23:08:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 48479413F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754089720;
	bh=TQ3sFUjbKnoDsBWL5Oa+whFv2oeddtTsPLgoTukcNxg=;
	h=Date:To:CC:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AdO3YHV91ugZT/gejUsVIxf1h77Q4tkFdMG48mY7lXYQQGa/06ltSNHpR4GIKMVhn
	 2MbbUlmAKhb7BlpPzdQu4Tx882Qszcj7k71F/X2E2rdNHfb+iDZHZ8vle4E0lZJF5f
	 MGhPtov7a3qiJwnIGc4DPUr5YK5/VGDe43BH0r7Rac/jeBiJB161J0cxX6nJw4uwmz
	 /khkcvB2xF522NguEwvOvdwXVrX8YRG3J51YnMAig5aLXD0MpVXQfZeVS6cwlOpHtX
	 eq+dc+5mvqY+Zndsy4i0bStOy8OnekuAG2NJ06ZJDMRRnMQfvNfkTWnesqRi0RUgSV
	 mGxJeKPbCF3eA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 48479413F6;
	Fri,  1 Aug 2025 23:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id DB43D160
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:08:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C0C398485A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:08:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w3e_LLQwdbcI for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Aug 2025 23:08:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8F4DF8486A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F4DF8486A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F4DF8486A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Aug 2025 23:08:36 +0000 (UTC)
X-CSE-ConnectionGUID: yByR7V6xSPOZZMNhwYHElw==
X-CSE-MsgGUID: snJkyvBoT9GGN0FGRUZMGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56526577"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="56526577"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:08:36 -0700
X-CSE-ConnectionGUID: mxp3T0z3TsaMpUdeQ6ucFw==
X-CSE-MsgGUID: 4vD359B4RuqMb9fFlB3crA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; 
 d="asc'?scan'208";a="167944416"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 16:08:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 16:08:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 16:08:34 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 16:08:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ngHSiFY8SN/lCNh95fsy0hTz5MigikXtnUIMTmvmDCqk9AezvVYlwUZR8ahjKuipijFys77lP/2OJMfP+twpDr6Qf1a212v8Vps9JL8L5Pwm0iGzr2XwayAFh5twDTfjy25w1m4ko/ef2V7e6YxO3hes/xW7w5z4HTK6row/y6Fe+3wUuYlkr+anOMCbU7yOW6rHH3Gx/HLbNUsU7pSVWPPs2FvLCIpooD6ckdrxIhBPiid0Qt3dSmYsVPHlYUmX+cPdVVdrxJOMWD0haeS8+O8yvLWb+2uROqQZWdooY9yX9qsEELBG3OkvGM8ulSLlo9v9X63m216+rkgRvHgH8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQ3sFUjbKnoDsBWL5Oa+whFv2oeddtTsPLgoTukcNxg=;
 b=hPCUhzhhWzl22YQWINaizdLkk7zNxDjg1BAH63U9NlsY29FD/XESAFUDO8IyxQDLfAEOVAxY6TAEjJGgLYQaSVsFPMgHOU95h47op36TTnD5n2Ijgyt2OJ1JbG/cDaAPxyQlJne0X5x2/X21nkQM5uBqZP4sJG6rP5+PeCUQ9dnNUkQpxLvGTSpsZzZ2Lu2JWlj2wNF1NAxpCeD+9lAKiVZC5TtlPIEB8DyyF3/dsnX1gEnVN3BYIzmjAlDDaT4Ttl3sbfAoMEgi49E2SO9oolxb61gj0F/YAgy0R08+I2zDjB2N+Q9rOsSzkr+0TeVAnd3yEJzO3TEA6vY49SnywQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5089.namprd11.prod.outlook.com (2603:10b6:303:9b::16)
 by BL1PR11MB5303.namprd11.prod.outlook.com (2603:10b6:208:31b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.14; Fri, 1 Aug
 2025 23:08:02 +0000
Received: from CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3]) by CO1PR11MB5089.namprd11.prod.outlook.com
 ([fe80::81f7:c6c0:ca43:11c3%5]) with mapi id 15.20.8989.015; Fri, 1 Aug 2025
 23:08:02 +0000
Message-ID: <8a676506-dd13-4198-813b-b61ad2953603@intel.com>
Date: Fri, 1 Aug 2025 16:08:00 -0700
User-Agent: Mozilla Thunderbird
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>, Przemek Kitszel
 <przemyslaw.kitszel@intel.com>, Grzegorz Nitka <grzegorz.nitka@intel.com>,
 <netdev@vger.kernel.org>, Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, 
 Anthony Nguyen <anthony.l.nguyen@intel.com>
CC: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
Content-Language: en-US
From: Jacob Keller <jacob.e.keller@intel.com>
Autocrypt: addr=jacob.e.keller@intel.com; keydata=
 xjMEaFx9ShYJKwYBBAHaRw8BAQdAE+TQsi9s60VNWijGeBIKU6hsXLwMt/JY9ni1wnsVd7nN
 J0phY29iIEtlbGxlciA8amFjb2IuZS5rZWxsZXJAaW50ZWwuY29tPsKTBBMWCgA7FiEEIEBU
 qdczkFYq7EMeapZdPm8PKOgFAmhcfUoCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AA
 CgkQapZdPm8PKOiZAAEA4UV0uM2PhFAw+tlK81gP+fgRqBVYlhmMyroXadv0lH4BAIf4jLxI
 UPEL4+zzp4ekaw8IyFz+mRMUBaS2l+cpoBUBzjgEaFx9ShIKKwYBBAGXVQEFAQEHQF386lYe
 MPZBiQHGXwjbBWS5OMBems5rgajcBMKc4W4aAwEIB8J4BBgWCgAgFiEEIEBUqdczkFYq7EMe
 apZdPm8PKOgFAmhcfUoCGwwACgkQapZdPm8PKOjbUQD+MsPBANqBUiNt+7w0dC73R6UcQzbg
 cFx4Yvms6cJjeD4BAKf193xbq7W3T7r9BdfTw6HRFYDiHXgkyoc/2Q4/T+8H
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="------------fhgVt3nbID9KwfAFGL3dF8rE"
X-ClientProxiedBy: MW4PR04CA0143.namprd04.prod.outlook.com
 (2603:10b6:303:84::28) To CO1PR11MB5089.namprd11.prod.outlook.com
 (2603:10b6:303:9b::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5089:EE_|BL1PR11MB5303:EE_
X-MS-Office365-Filtering-Correlation-Id: e53acafc-b844-487c-3a13-08ddd150436e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aXlMWG1OKzZKenpNUDV2YUltR3VKWmd5STVUUHppM0dQcU1Pc0s1ODE5cG9F?=
 =?utf-8?B?aEl2MWRFcllMdFZIQmZtSzFLQUg3NVBNQndXYW4xM2FxTkdmRkZvWUY1STFB?=
 =?utf-8?B?NDk2cGIrbktZMDRNalBwY1JpU2pia3VJdFVGTmJNblRjN1cyQWhGeHBQSzRI?=
 =?utf-8?B?WHp6dmhDQy93QS8yUVp2bHdjQkkvOXRFM1JhTmgvaWNTbFBpQmVYdTRidmxq?=
 =?utf-8?B?TTNUb1VSdnR6d09ra1FDVjk4eC9KNXp4YmJNd3dQbXJuWjFmeVd2ZXVMRGRh?=
 =?utf-8?B?NnFWenhabVpQYllFT3pwSUwvSzlPS0t6UHBLcmVFYktVR0VGVkdCMlRZNk02?=
 =?utf-8?B?czVMT1dVM0JDZWNYNUwrT2tqeDArVzdCTFhEWDFIZUlOMW92ZUswanRKNjRx?=
 =?utf-8?B?Nk9wc1EzSGEwcVcxTmhJRVpHb24zWlJncVJib3JGd3EySXk4NDloZlF3RCsy?=
 =?utf-8?B?WGtzYjAySDllQmU5M0xkY2dsTDhBUjZSc0ZhNHFpOVFyVnVvSEN4eFlzMWtI?=
 =?utf-8?B?UWFOUWduczhiT1VlTmhCZ09hcVNqQkl1MW9oSk1VZDk1ZHlFYWFudnNLVXBr?=
 =?utf-8?B?K3RaQllwSm9lR3lUdzNuL0tUQ1VYTjhSSWI5RjVUK3dIWlpBSTJBc1BnOXIv?=
 =?utf-8?B?bzFlUFdxUlQvYWQ0WG9JSGtxbE9wUmFTNnJDQU1UTDlVN3poSVByZFJtVW8v?=
 =?utf-8?B?dmQ0QUhabmZXNUEySW9xdXVEZzcwWXY2eTBJajZOaVNuOXgxSzVLelBUVXZZ?=
 =?utf-8?B?Q1FZdWJhM0VBcEVlUE8zVHIyTlJtRmpScDB0aUhXRGtTMnAzSUtLN1drck9w?=
 =?utf-8?B?RFlJTHphcHJnaWZQZFRtQ29jZ0NiOFNrQmRvQkc3d0swNUhXZEhHak5IeE8x?=
 =?utf-8?B?K0NJL3hwZEZkRnhYUm5tbzlTajFZejloanVQcHloUXZKVXhZMnc5UmMrT0RZ?=
 =?utf-8?B?MlFGbHRkSXN3SFRpc2dZZytjUGdJSHRQRjl3M0NOb2hMYWdicElZMTNkd1Vr?=
 =?utf-8?B?M24xcm4zaU1iQzVYNHhVd2xGZ0lOK1BuQVJQMU9SdVJ0RFRYZzhSU0JTWDRT?=
 =?utf-8?B?UHdMaW9xN0xqSDVpZlMzTFJJOTNYTy8wRnhCajFTbEQwQTdrWGF4dUZRekNM?=
 =?utf-8?B?R3RTejRvN2M3ZzBuVDg5ZGJsZDF5UjVNMnpZQlZtUWZWQlJsNjBDM1Fma1c4?=
 =?utf-8?B?bmFGVTdpdzdiM25JRjB2MTVERGluQXc5clhaTjZ2N1g2NEp4eGZNWVRlZTdN?=
 =?utf-8?B?RkU2Y0lmbTJ4WkZBVjhCTElBRkFnOHVTM09YZVA2NVJWQ3pNMXJTMDR4eG5G?=
 =?utf-8?B?WEVLbEpnd0lRNS9WS0N4UzZQWmlDMnJEbWtqWHVMMTlkdkR4aVRVK0JTdERQ?=
 =?utf-8?B?YXJ3R1pyOFJwSXF5VmxzR3JHSFJkNStBcWN1ZW5nRmp6d3pJRktlM0VMVnVR?=
 =?utf-8?B?SjhZYXZpSG0rWVN1TmdLa0drSk1PVWZwaGRqU0hTbitzNEo0S2lDa1o0NW5O?=
 =?utf-8?B?NkprOVNSZG1ISmZxdnV1bDhXei9tR0daRDF0NWlDL2d0UWtvUGhyNHAzdGFI?=
 =?utf-8?B?TFJmUVN2emVxcEpXb3BMRFBuOVpJeTQvUHFXZDFWb3hualFoaCsyKzJVbFlC?=
 =?utf-8?B?dWg4bDJPeHQvZmtlNDZHd2NDUUJpT0pBQVZ5bU95VGFTWWIzY3c0dzlmcWMz?=
 =?utf-8?B?ME92dENUbjZROXRaeFI1WWlHOFJmcS9QNG45NVZWUFprOFVGZE90VUhjZEJP?=
 =?utf-8?B?aVh3SG5jZTArTzlKdE5nTGp6aEVMWXhmUnpmZ21SSnNqaEMwYjZ4a1Y2dVVQ?=
 =?utf-8?B?RjVKeWtqZGlzYlRPdjdBajdVc01sQnBFY0lIdGw0Vmg0VzRpKzlYT1BuVTlG?=
 =?utf-8?B?MWd2c2tlWndOQ3U1V08wS1VlU01FNUQzRkp1MDl3eEwyMkd1ZStLTG9kVmZk?=
 =?utf-8?Q?TzYfQwv5nbQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5089.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qlh2cUVxaFFJRlB4TndqNTFRU2xhN3ZzT1dPb0xuQ3d1aWZLS0pqbk1jWGtn?=
 =?utf-8?B?NFdmRVU3SlZjLzVraHlJQ09rWHRJUEVTNjRDVEFNRVIwS01WM0dGUmdSMjMv?=
 =?utf-8?B?c1hIR0VMTmc1enQwVFFORDMyWlBZdlZRV2tFbDVhY0VYQXZIZjVVdjFoNC9K?=
 =?utf-8?B?cFNLUms5bmpvZEpkVTJySFIxdDUrVmVSN2lMMWpaSXFhRzBjbXRBdXJDbTlI?=
 =?utf-8?B?eklIV0hYNGhPMWQ0eGt1TzNWekV4S1poR1kzUnJpS2VUUERQR09FUUpCcXdx?=
 =?utf-8?B?K2RUWVNldUtXemxmSU1oeHpqbk4wOVQ2SDJCOENpNjdhbVptK3gxYktzdTVK?=
 =?utf-8?B?a2JoWUJXV1NQU0haTDFXd1FadlVEcWRPZFZyNkJqZmtyZGxWSHRNRWpTQndX?=
 =?utf-8?B?aXFJdXBCaEtOOVZVOE54QklUbWVQVVhLRE03cmZodTRaRTFPYk9FQ3lYY3Va?=
 =?utf-8?B?bmsvNUZWRldBRDJEN1VwTDBGRjdZNUkzNTNQSDRBeFZ0YWRLRExGSTZNRm0z?=
 =?utf-8?B?KyswR3lDRFdhcVlPcHR0dFdQZXZIdzV4UVo5ZW0vQTgxbmhYZkFlUEgyMVZm?=
 =?utf-8?B?Ri9DdHVWaE9XbEdQQWVFRFZDczZXL1NabGZOVktEcWQyMU5tL1lPMXlsVVA4?=
 =?utf-8?B?RGprc0RaaGZZcS9CWEx1dGFhOTM0RHFRTDkwZWRzOGY1NHlDbGFwUDJ2dS9W?=
 =?utf-8?B?WTdIVm96ZWdjankxMlVCRjJYUUFHWVRrT1Nhdk1QL0Y2dXZOcm1SUFczRVMw?=
 =?utf-8?B?OWM1RnB0UXJsMUtlM2xuVGVic1ZvT0o1cUx5OFdSVWJvTGQ4R2pwVS9lOHNN?=
 =?utf-8?B?aUtNTGhkVXNyL2N4N29WeVF3Z3g4MkxEV1N1U0hvWjRKVXJOOWhiVXEvbFQ0?=
 =?utf-8?B?MDkydzBqaFV2ZEo4NTBuNzB1VG5GdGdmeFg4RDd1QkovWWdQTmF1V2h5dUNU?=
 =?utf-8?B?Tkc2alJZZTdoV01aT3FBd2UvWkhYK2VYVWtNYWcwcmNTTlY1eDAxVjhHQmFn?=
 =?utf-8?B?bmVnbVNCNFE2V2tiVEMvdk9zb2tRaHZSbWwya0srdTljZ1R6dE9KSE4zMGJy?=
 =?utf-8?B?TTY2SE5sN1pnWWJNRnhCYi9md1J5R0lmSnIvd1lCYW5oSjlXa0xzcWZjaWhC?=
 =?utf-8?B?MkpqQUtKb1lKRXQ3Nmdvd3ZiMHJXUHBwMVJYNHdvVWNBU2hNVUhoS3dlcUll?=
 =?utf-8?B?cWxuRzdNWmtJckowdFpIc01HVU1ualFsVSt6ZXVTM1RORUwvMURFWUIwNmpp?=
 =?utf-8?B?QkE0b2JPQmhVdEU3Z2x4Tm54K0FKZW41NW41TmFYdXRud3RQNmN5YzBpV3Jy?=
 =?utf-8?B?NWk5SHJFbjhtMGYwZ3g0bVc3dVFDM2hvVDVFZEpVSkFOVU0wSFdvRkZUYWVi?=
 =?utf-8?B?anR4anBsblAwUG50SURMTVBGTTM0YVcwYllpODZaeGs1Y1NxeG5Kd0g2UlJy?=
 =?utf-8?B?eHB5V2F6NThjS05nQjExUU92aDgwVDlCRU1vcFpPbzdPMUh2RHlTcDd3Zjlo?=
 =?utf-8?B?c3E3dEdVR25lTVkwclZKWkhIeWdLdkFhRElBeVlsUVd0aVlMVXNzTGN0TDBR?=
 =?utf-8?B?T1pmRUtVUVBWQWtQdHFjZTNTb1B2bWFVMHV0YjFZbXlJSHZxU242OXRuYnB1?=
 =?utf-8?B?YnRkZERZQUwwSFFGLzFJZjk2UDVPYTIvMFlqeWQvQ2RUOUszUnhwNEx4MlF6?=
 =?utf-8?B?OWMxUmpwb09tVTdPSFp0VFFhRUZ2MVhyQzEyaHJMS0F4am1uMU00WEtZanph?=
 =?utf-8?B?SHBpU2x0ZVc2cThYdmlsSktNYnlGWno5VFFGQ3VCamZsKzhBNGoreVVDQ3JB?=
 =?utf-8?B?VjNSUTU3V1VzNHc1SkJBRU42R2xMc3V4OTNtRU9YKzR4VXpGWHlXRVBleGt6?=
 =?utf-8?B?TjJqTEN5QTgyK1gwSElHS2ROL2t0T2cwcjE2R0s0T2lGVmlSalQrb3p3MGxh?=
 =?utf-8?B?U2JXeXZkdzlUY29rdzl2d0FqTWNWK3FpNURXN3gyTEpGdE8xQm1CRGZtcTh3?=
 =?utf-8?B?SEt0bDlTZitwQVlIWU03V05PZGxyQ282blM2WCtQcXpwTE5XeDhKVUtLYW1Q?=
 =?utf-8?B?UDhZWW9xeEh4VVI2c25DSjhFT1NiVitUNHNWWmVwKy9nSERieEg5TWhOeVJO?=
 =?utf-8?B?MWhnTk1yVGd0NnJTNTVORjgzUnVHU3ZEbm9xU0JUVzdsNVlkNDZDaEx6dkg3?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e53acafc-b844-487c-3a13-08ddd150436e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5089.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 23:08:02.2567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AmmifoJiIz1Wekasje5Be9L8XIxS3gDnsi9hw/8JyGOqfhp/Kvpf1QL2b+lmBh6kSzRBI8qHE1qmnj3PgC55W3Rd8yLjB6qEWipz9FOr43g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5303
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754089717; x=1785625717;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=KTJ0GuFXRr4n3n7AOsPct8OowP+YkyBehyrZ2P02w90=;
 b=ZRWwhVbxRqmroKAomWrfIA8NFR1gGwPEkRENhL423ogP6tow7eCXQyoX
 eZ1ffSq0r6LVVIgJRa5TtLZtm4uMNCw6Obzd2ymiEjPUIEJKGNb8i1UTA
 vtpkJ2esugogN+yezmXDamyg+NSH74ynqVMoZGC/H1ID3trVKZpWptZ8L
 ZQNuS4qAAdKDwhSVOshUJBfrKAgQvL6Y/Vjma/JtIRPBy0aFY72VkrfGn
 WWC9WQNluM467Edcfp/3QpcmqscNd3438fdfjizSdoMIAPoDxaFViiOvp
 ivwiL/JpYMSSYk/f1yFBX5SWEdDF2TuCSIUgfTKc1520ypSgYWKzflRQ7
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZRWwhVbx
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: use fixed adapter index
 for E825C embedded devices
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

--------------fhgVt3nbID9KwfAFGL3dF8rE
Content-Type: multipart/mixed; boundary="------------C2h31foD0n8dGEZdHHAUtPjl";
 protected-headers="v1"
From: Jacob Keller <jacob.e.keller@intel.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, netdev@vger.kernel.org,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <8a676506-dd13-4198-813b-b61ad2953603@intel.com>
Subject: Re: [PATCH iwl-net] ice: use fixed adapter index for E825C embedded
 devices
References: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>
In-Reply-To: <20250801-jk-fix-e825c-ice-adapter-v1-1-f8d4a579e992@intel.com>

--------------C2h31foD0n8dGEZdHHAUtPjl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



On 8/1/2025 3:27 PM, Jacob Keller wrote:
> The ice_adapter structure is used by the ice driver to connect multiple=

> physical functions of a device in software. It was introduced by
> commit 0e2bddf9e5f9 ("ice: add ice_adapter for shared data across PFs o=
n
> the same NIC") and is primarily used for PTP support, as well as for
> handling certain cross-PF synchronization.
>=20
> The original design of ice_adapter used PCI address information to
> determine which devices should be connected. This was extended to suppo=
rt
> E825C devices by commit fdb7f54700b1 ("ice: Initial support for E825C
> hardware in ice_adapter"), which used the device ID for E825C devices
> instead of the PCI address.
>=20
> Later, commit 0093cb194a75 ("ice: use DSN instead of PCI BDF for
> ice_adapter index") replaced the use of Bus/Device/Function addressing =
with
> use of the device serial number.
>=20
> E825C devices may appear in "Dual NAC" configuration which has multiple=

> physical devices tied to the same clock source and which need to use th=
e
> same ice_adapter. Unfortunately, each "NAC" has its own NVM which has i=
ts
> own unique Device Serial Number. Thus, use of the DSN for connecting
> ice_adapter does not work properly. It "worked" in the pre-production
> systems because the DSN was not initialized on the test NVMs and all th=
e
> NACs had the same zero'd serial number.
>=20
> Since we cannot rely on the DSN, lets fall back to the logic in the
> original E825C support which used the device ID. This is safe for E825C=

> only because of the embedded nature of the device. It isn't a discreet
> adapter that can be plugged into an arbitrary system. All E825C devices=
 on
> a given system are connected to the same clock source and need to be
> configured through the same PTP clock.
>=20
> To make this separation clear, reserve bit 63 of the 64-bit index value=
s as
> a "fixed index" indicator. Always clear this bit when using the device
> serial number as an index.
>=20
> For E825C, use a fixed value defined as the 0x579C E825C backplane devi=
ce
> ID bitwise ORed with the fixed index indicator. This is slightly differ=
ent
> than the original logic of just using the device ID directly. Doing so
> prevents a potential issue with systems where only one of the NACs is
> connected with an external PHY over SGMII. In that case, one NAC would
> have the E825C_SGMII device ID, but the other would not.
>=20
> Separate the determination of the full 64-bit index from the 32-bit
> reduction logic. Provide both ice_adapter_index() and a wrapping
> ice_adapter_xa_index() which handles reducing the index to a long on 32=
-bit
> systems. As before, cache the full index value in the adapter structure=
 to
> warn about collisions.
>=20
> This fixes issues with E825C not initializing PTP on both NACs, due to
> failure to connect the appropriate devices to the same ice_adapter.
>=20
> Fixes: 0093cb194a75 ("ice: use DSN instead of PCI BDF for ice_adapter i=
ndex")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
> It turns out that using the device serial number does not work for E825=
C
> boards. I spoke with the team involved in the NVM image generation, and=
 its
> not feasible at this point to change the process for generating the NVM=
s
> for E825C. We're stuck with the case that E825C Dual-NAC boards will ha=
ve
> independent DSN for each NAC.
>=20
> As far as I can tell, the only suitable fallback is to rely on the embe=
dded
> nature of the E825C device. We know that all current systems with E825C=

> need to have their ice_adapter connected. There are no plans to build
> platforms with multiple E825C devices. The E825C variant is not a discr=
eet
> board, so customers can't simply plug an extra in. Thus, this change
> reverts back to using the device ID for E825C systems, instead of the
> serial number.
> ---
>  drivers/net/ethernet/intel/ice/ice_adapter.h |  4 +--
>  drivers/net/ethernet/intel/ice/ice_adapter.c | 49 ++++++++++++++++++++=
+-------
>  2 files changed, 40 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.h b/drivers/net=
/ethernet/intel/ice/ice_adapter.h
> index db66d03c9f96..e95266c7f20b 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.h
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.h
> @@ -33,7 +33,7 @@ struct ice_port_list {
>   * @txq_ctx_lock: Spinlock protecting access to the GLCOMM_QTX_CNTX_CT=
L register
>   * @ctrl_pf: Control PF of the adapter
>   * @ports: Ports list
> - * @device_serial_number: DSN cached for collision detection on 32bit =
systems
> + * @index: 64-bit index cached for collision detection on 32bit system=
s
>   */
>  struct ice_adapter {
>  	refcount_t refcount;
> @@ -44,7 +44,7 @@ struct ice_adapter {
> =20
>  	struct ice_pf *ctrl_pf;
>  	struct ice_port_list ports;
> -	u64 device_serial_number;
> +	u64 index;
>  };
> =20
>  struct ice_adapter *ice_adapter_get(struct pci_dev *pdev);
> diff --git a/drivers/net/ethernet/intel/ice/ice_adapter.c b/drivers/net=
/ethernet/intel/ice/ice_adapter.c
> index 9e4adc43e474..9ec2a815a3f7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_adapter.c
> +++ b/drivers/net/ethernet/intel/ice/ice_adapter.c
> @@ -13,16 +13,45 @@
>  static DEFINE_XARRAY(ice_adapters);
>  static DEFINE_MUTEX(ice_adapters_mutex);
> =20
> -static unsigned long ice_adapter_index(u64 dsn)
> +#define ICE_ADAPTER_FIXED_INDEX	BIT(63)
> +

This needs to be BIT_ULL :(

Tony, would it be possible for you to fix this up locally?

Thanks,
Jake

--------------C2h31foD0n8dGEZdHHAUtPjl--

--------------fhgVt3nbID9KwfAFGL3dF8rE
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature.asc"

-----BEGIN PGP SIGNATURE-----

wnsEABYIACMWIQQgQFSp1zOQVirsQx5qll0+bw8o6AUCaI1I0AUDAAAAAAAKCRBqll0+bw8o6P8u
AQCLUmh5wv2158zb6nJj8P5jvziBykBmXYPz/rhw8ZOn2wEA/WI3p9G9c9khAF3Srsf2YaiRk2Qc
SIOoHk+hYNShTgc=
=jcWH
-----END PGP SIGNATURE-----

--------------fhgVt3nbID9KwfAFGL3dF8rE--
