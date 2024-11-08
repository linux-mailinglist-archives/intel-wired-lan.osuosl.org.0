Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDCF9C1C85
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2024 12:58:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 82BA241E7E;
	Fri,  8 Nov 2024 11:58:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7LQJQQLcaAj; Fri,  8 Nov 2024 11:58:29 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C37C41EA1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731067109;
	bh=zITmDPsw2+kWZEMfe2CIGAJdCFoQRs/lq4qy3ZwXq5I=;
	h=Date:To:References:From:CC:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=eCpp4VdBdMcjil07GJskNE2DXfvHv+gpFpQt+yI9yD+DQZA1Y2iHBe1WU77eyOAxt
	 fhSSplMrItSCcTjPQAQw61NojyeIM9REozJpKuhOEawELOtMLCGJMqPkimNDACdhGI
	 9EVg0ORygjWsIu6wYekrl707t8+L6PylZ0MazpouSnlOdVsHOcRzmbIkydSxEr7SM4
	 Mqe7oUXMHaVp3Tk2rQEgFzcDN5yW/nDz308SyEFissIL4UrYy2BgmkZdJgt7KRQhiQ
	 aPTkJbO1qSgrlBusJX/OnYnXbjtUuyAMUy/qQzNQ/bA08IJQ0xmMZ4M2grJsynXsTb
	 7H7zVagcv9LvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C37C41EA1;
	Fri,  8 Nov 2024 11:58:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D8B3C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:58:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A00640BDE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:58:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MXba7oOrRN3T for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2024 11:58:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 2721543146
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2721543146
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2721543146
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2024 11:58:24 +0000 (UTC)
X-CSE-ConnectionGUID: oc+kNgx+Q0WuFsAOP0mr5A==
X-CSE-MsgGUID: o7tDGQR+Q0u+MUXXzah3Qw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30802229"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30802229"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 03:58:25 -0800
X-CSE-ConnectionGUID: UxOyVXcqQBK4eiWLqBFK+A==
X-CSE-MsgGUID: czERxwFCQQmC6EuN0eA0Jw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,137,1728975600"; d="scan'208";a="85757830"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Nov 2024 03:58:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 8 Nov 2024 03:58:23 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 8 Nov 2024 03:58:23 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 8 Nov 2024 03:58:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yjXiGJIYqXaJEi0w4IHwSXYMR8eB34ATEo86eNyPFiO4U3Fi3EG8csRf8+OO69aXnrR25ysu2wa932kQQb19qd8dK1GIgptC3XFWXCqKrauQHfB71SzTCPSQdIziNGCzVexJHh0e530pf6T8d0JM5UDfOtJiGSVc0qavtxpi+48qfGccxcuyBGsQ/gJdJ67yQ4gTlcYvdDhnwYIvyf6/TSuCKEFj4YMgpwYDWIyhdbsaQfW2JTL6Cj0NykWxyewd1pm5bqRSB5Z2SnrBG2xoXWRa1Np7GeGY4keEJZeItO8ALgwMIO/hrFJrxXUNQPke1ew+gRq2DRADf0nlmhp2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zITmDPsw2+kWZEMfe2CIGAJdCFoQRs/lq4qy3ZwXq5I=;
 b=qJ+9VniVmc1T1SUwtUDEn38NUqBA4OUKv+oOs11j7NMoqgYgHICc3GrcSI7jy/HwDN2Tba+G9D2p/G971iBD/LPQesEg7izp8PcpeW5+RwL52exHQtQdi9PB5M0T7gLx5Sjhs6d8i2PHDrF1dyNvHiBLLy//a9CsuU0IeR2xsJQrFk8Vg50Jy/AlTqsn1fAKBRc/EEmBjasrd/yaNz8Hmu0Gz5FIb+swADwL7WHldUblLyuXTyUWpqb6g8LNgrfuyBogmlisWtGXGowpYfIynvo8JjqFCHQovumPSTQf2z+cjC4OzCFMVss2ZDDVXtAM/Llzyqd8bywZKI29plCTrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB8086.namprd11.prod.outlook.com (2603:10b6:610:190::8)
 by MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.22; Fri, 8 Nov
 2024 11:58:20 +0000
Received: from CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3]) by CH0PR11MB8086.namprd11.prod.outlook.com
 ([fe80::984b:141d:2923:8ae3%6]) with mapi id 15.20.8137.019; Fri, 8 Nov 2024
 11:58:20 +0000
Message-ID: <29c68172-f521-4b2c-aa46-e417fbfa1110@intel.com>
Date: Fri, 8 Nov 2024 12:58:16 +0100
User-Agent: Mozilla Thunderbird
To: Tony Nguyen <anthony.l.nguyen@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
References: <80949168-67a8-4d28-a6c7-3cae9f92daad@molgen.mpg.de>
 <19b30532-213b-4c96-9896-391c2f83dfd7@intel.com>
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Language: en-US
CC: <intel-wired-lan@lists.osuosl.org>, "Lifshits, Vitaly"
 <vitaly.lifshits@intel.com>
In-Reply-To: <19b30532-213b-4c96-9896-391c2f83dfd7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: WA1P291CA0011.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::8) To CH0PR11MB8086.namprd11.prod.outlook.com
 (2603:10b6:610:190::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB8086:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: edafd31c-0d31-4526-4ccf-08dcffeca38a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qmx3TUo1dU9QR1ZYbmw3UTNsUmVjTHZKTFROd2dISkE1Zlp6aEoxSC9HeDlX?=
 =?utf-8?B?QWhidk5ISUxtZHBEbFZsUS9JYmJYZTNic2U5MEhRWkFQbEV0K1BjWCs2RERk?=
 =?utf-8?B?MXhqVzFxNVdoek5kdmxLOGV0dW83UTNFeFpXL3g1cC9PZGlKMDFsOXBRSFk5?=
 =?utf-8?B?MTlxQmFqOFJJbUw1a2hXRm9FVEdTK1V1WTZEK2FmMXo4TW1SRExwNUc0OXdw?=
 =?utf-8?B?R1hyVVJob1JWa2U4OGZxL3pSeTE0dDU0RUJUbEYyb1hlbW1uQi9UR2ZvUkdL?=
 =?utf-8?B?L0NxUlUzNXMzeVA5c1NhR1VHOEJKaFNCL0VhL2ZieXpETUZvTE1sdmFhdUdF?=
 =?utf-8?B?VDBqYVFjZEZINmprSW1udk12Q1prZURLMzB2U2VQMzlNa3Mxdjl5Q28wMWs1?=
 =?utf-8?B?M0ZPSW4reXhrOGRiV3FPYUdET2NUYXExQUZqM0l4VkRUc092VW5LVWFOWHdX?=
 =?utf-8?B?aU0veG9veDNZNEpJeFo5WDc0ckpGRlJjaDN4YlhSSVRJZWVYU2VISTNTWGpm?=
 =?utf-8?B?M2J2bkNpK1NmU1pvUTRKZ24zblZqc04wdmFONmIvRDllUlN6SHFzZ0pZV3ky?=
 =?utf-8?B?YkdLWmd0SndkL3hiZm1IUkU5WDMraWNIL1dWazdaMFBIZjAxbFJuRWhWNldh?=
 =?utf-8?B?RXBocmFWckQ2aVZJS1pFUzV0dXdmRHBKK3dsNGV2b0o0MzdZdXh2R29TYUVt?=
 =?utf-8?B?dmZma1pHVmFjZW5lTWlWdTJ4TkduU24vQkpKdDhldmJBY3N4b1VxOWU2SC9N?=
 =?utf-8?B?TFBVVzlsWXE5REY5VFJkM2lhKzZCYkFZWGpQRlRUS1JTVjZBQURReXZ2TFhI?=
 =?utf-8?B?dklNVUd4V1RHWEh5OWUydkZVdWtuT1F3MjVOSnZGV2RTNHpUcWJDS2w1cmtK?=
 =?utf-8?B?UERmTk45dzRlbnZhZm8zZ0dNSnc3K25qK0lVSldMcXRLcTAwUG1ZR1EvWndS?=
 =?utf-8?B?cEE0S0YzcnZka3VKaUl5MFE5U3JrUkdBaTJLclBaS2pUYk1JWkgrYXZiSGRU?=
 =?utf-8?B?V0VYQW1JV0QxUlJlNHQxb3VxTGl1a3FZMVhLS2tLMzFNQUF2S3kvYnNUMXNu?=
 =?utf-8?B?NjVJSm9DTXkxSDhjbEpBVmt5T25yODlRQTRUK08vVGNzRGVQSjFhUXd2Ym1m?=
 =?utf-8?B?TExjK2F5SVVyQ3oxSFFrUHFBNGlEbnkzeEx5OTVlL0pKcGZ4YXZ6Z2hQLzEx?=
 =?utf-8?B?SjRtb0NTVUxlY09OcElFaGRUTkZWNW5nODFHbmNEM0QzeUtINUxVRmszd1dj?=
 =?utf-8?B?TmJwT3JjS1pFdzlHdGhkbmtFSHBiK1Rqamd1c0NaVVFEUUtEblk1VXBCRFA4?=
 =?utf-8?B?UW9lOVQ4bFFabms5YkYweEVPdjlSRGFZUGlMNDhnVjFXSkprSDBkK3pVOFBp?=
 =?utf-8?B?N2E1b2hMYTdvb1YwRmN4bmtTU2h0dFpVZkJQM3hUOExJby90RlRxdzJoUTRK?=
 =?utf-8?B?TElkN2dTVVArdkVZYjNJWnhkMW1IMUp4S3NiVU8zWlJPdGtVanJQalFMa2tT?=
 =?utf-8?B?VDV6d0sydVphcDcrb1hvN1lCSlVTbVJhUWcwN0tUTXlWUkNkN2J6T0NOam5t?=
 =?utf-8?B?R3FiL0VRdk9XYmVoMGNYeC9xUkhIaG9ERkJNcDYxTHdZSVcweVA5VlJ0QTJm?=
 =?utf-8?B?ZmpJUkZDQTlVcTk0UjlIOFZPRGh4MGZaUURMcVFHWXdGVCtyUE44a1V1SXlO?=
 =?utf-8?B?bjJhUEJiTDBGY1pTK2hscUJPSmd0TGFFb3dWWXhlallVMHZjZVdFK3Ryc0Vh?=
 =?utf-8?Q?27fR4iNYVIYHLEoviRzC87Jxgs6j8XlsS9r3TV4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB8086.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a2R0NkRQVndNWGFKamRaQ2dadisrSGpMUVpaUkh5dE5jWC9Md21uU1VzMXN5?=
 =?utf-8?B?TWVXMVdIRmNpVzA2bTJFbHpsRjloSXNnbXpYVHdjajNORDhFOTMzRlp6eXRF?=
 =?utf-8?B?SWlQUzUralZjWStyRnE2SXVNaFJKNVRsbHdCcHQvSUJPMUhHcXIzR3NLNXdV?=
 =?utf-8?B?VnIwVzY4cUxNZm9OK05XSDMreTJnOVJSY0F1TWhiM2NVb2psM0lSVGJxVUtm?=
 =?utf-8?B?ZnFaZERYd1BkWjNjRUU4anc5cUJZZGRRZW9ZTHFGd1pJRmx3M2NFdWlUb1Ba?=
 =?utf-8?B?alhUNkt1M0hpVDhFQnZVV3pXUVBFK0kwTEhDWU9jNlUyR0NXazhLK096RVRH?=
 =?utf-8?B?ajBvaVRlSjlPT3dPd2toenBFVUY1YjhUT1hBOXo4Z0phbzV2TTVJM0hrM3Y1?=
 =?utf-8?B?QWF2eEJwMStaTGhqV0l3ek85VWh2dklhNGhPN1FYT1lnNzNvMzFUTkZzc2NN?=
 =?utf-8?B?bWs0M2l5YmZzSUpKQVJIaStXV1RnZHhjVTQxUFBmZDRIVXFFOEMvTGs4TmJ1?=
 =?utf-8?B?SWxFajQvT3VGUjR6SThHZWo0dXNrcmRRKzZPaVQ0WXF6VzNVOGowSUdKeHIr?=
 =?utf-8?B?SExxcE03RkJXSHJESHF0blNzeTBJcjhUYzRvcHF4M1dMcmtkT0dkaVRncTYv?=
 =?utf-8?B?MEQ2dUs5ZXIxaXdwWlR6d3F3c1o5aVpSMTBaMWdJcUxzVHRpNnNieHdwUHA2?=
 =?utf-8?B?eThlS25VS2ZjNXVUc0s4Q21YQXVTeXVSanRoTDZrMmZiSWhaenBrOEhtbDUx?=
 =?utf-8?B?UStIMnJZREtFL1pqRGtQc29Tb01qclRIZ0lyNFFHaVc2eE5mb1h5blZpdXFL?=
 =?utf-8?B?UDlzalFrUFB6eEZPSVY0dzkxZmgvY0pCb041YWZBczdJQUtHNlgxd0xEN1NE?=
 =?utf-8?B?Q1FVT3d1eGVCM1g3NFc4a2VBWmpkSDY5Z3F6WXdwNTBqNjRJYnRNQUdZNUxi?=
 =?utf-8?B?WmhOTFplSC9SYmhSUEs1R3BkM1lhN0RpeXNrYnNLT0pzbVh1dlJRMTlhdDZC?=
 =?utf-8?B?Q2o1OVg1bE9SUTVORVR3dlp3TGR1a0QxMXRBdGVYMk1VcU9BNGxVRUIwZFJS?=
 =?utf-8?B?d3NCcG5rcXdIZ05GbWc2bjVPdEtQL3R1UUF6MWppanQyRUt5aFN0aVJsWHd3?=
 =?utf-8?B?aStPQTFWeVlzWDJYd0pLeFVQdTcvUjBlUk9ycDEyOGd4dHdCNEhFREJSeEMz?=
 =?utf-8?B?U3B6T0lvYmY5bk8zQkVGVlRWQUs1MkMxRzdWS2s5dE53ckx2bWlnY2kzTXc5?=
 =?utf-8?B?UkR3RWNVZE02K0FtQ1B6ZWxnSEsycFRtZFg3ajQ4eVBRcjFCZkx6blJhTHdU?=
 =?utf-8?B?YmJ1VlRIZ011WmIxakhraFhRY1NsajYyM09kRnMzUURRR2h0UkI2RVlVTHJv?=
 =?utf-8?B?SHF4OURnL0RNNnFTVFcwdk91Vk5lNldSQ3lkamdsZTJaY3ZobEMzbHZVcG8z?=
 =?utf-8?B?cmdlSGE1Qk10Skc1b05ybTN6LzRLeklidUdsMjVXdFVrVE5WN2FuaUR6SFBm?=
 =?utf-8?B?MENWelNxZjJFdmxOcDlmKytmWHlWd3piSkxqdzN5UU9NakVmMU41ZDVhR2ow?=
 =?utf-8?B?bVV2YWhkTHBhSUcwSDhOWGpFZ1BoZWRhZWxjY3N0blFIVWRmcGpkWDJNOXZF?=
 =?utf-8?B?UXF0eEwyVTY3VGJlUzJxS3FyNmZYV3JhNWxCbVBIVEdOQ09XSkh0RHF5c2Ni?=
 =?utf-8?B?bkVndUNSUDNqR3AzWlBvdTdLS2s2ODk4SkpBQkNFUTlRbGRUWmhLd3NCd3pB?=
 =?utf-8?B?TmZiL2tVZTMxa2xOeVBTc0dMZHRkVmI5enhqZkQyelRzc0hxNUkzNzgvWnNY?=
 =?utf-8?B?Sy9XeU1LbTk1QUtBeVdKSnFHV2x6MTBJRmFSbDIxQ1B2eTNhb1V2VnMxTEJ3?=
 =?utf-8?B?bk5OSW9vcHhsNVVUbTRXNWthZDRBK3RpbytTeVNOcHF2bmRtaUdpZmEyYXNj?=
 =?utf-8?B?R0JkNjNRamFWRE5LcVhkd1kwQUtLaFZwaDdMT1pFTEUyNUJFVG04SGFFZlJ2?=
 =?utf-8?B?enA0Z3puTHh5NW9LT1FUcHB6ZG44KzBaM2dSTEhvajRDT3BlbUJMMVBVL3Ny?=
 =?utf-8?B?RWdqajllOHUrR3lrRC8wTzVYaHpYbjJyVFI5MmovcDc2Q28xU01zNUVnSHNR?=
 =?utf-8?B?ZVpPNHZpOXQzSnJSSGFEcXl4TmlXSndLTjNUNTNOU3NyUXdpUG5VVTI3N2VL?=
 =?utf-8?Q?Ra3awPjvmXZLVQ+kGJAyTTs=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edafd31c-0d31-4526-4ccf-08dcffeca38a
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB8086.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Nov 2024 11:58:20.2372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O/9/zDFhh5BTAXUFnpXu2wAcBwKIhd9htWSz1zU/MHhEuK2VwOh09ooxDfayVEwHy8wThtzpRR0ntrAM18tgvLeCqmF20573FZCrC4/emX8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731067105; x=1762603105;
 h=message-id:date:subject:to:references:from:cc:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5Hpizrswvs6R4pCv0eQnUA/U6j5P1mNDqtXsAzp7+MQ=;
 b=LgZW/qD/lzwQVUsxSe/EjQim4Nbu+e4FSaEO0100tqsjZlRnyVVfKyFG
 LK+IOKiUVjHEPfcRpCKnpT088QC9ZCsueMcq+Jl4zp893B52yIaEC99WX
 /x7Afc+npI3Z0WHLi0lN4SfCNx0lH5BYhtZtD/S6Cd41JV+cwLXop4gHi
 yoAp4Eq9G05Ct6MZajteW+5yJAD5I47fLzyyDIhXJ/PnWyi/qRQsZ2ubO
 SQQ87OV6pt35LCsbDaMjZv0Uot0F3e3GR/agnWvZyaoXVDKrkeo+r6IR7
 eXgT5fpg3PWt7MXInnd+bq9EMJe3KtPz76hkTjtjDd6D6p5rBw7SqBEi0
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=LgZW/qD/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] Expected effects of layoffs on driver Intel
 Wired Ethernet driver development?
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

On 11/7/24 19:49, Tony Nguyen wrote:
> 
> 
> On 11/6/2024 10:07 PM, Paul Menzel wrote:
>> Dear Intel Wired Ethernet Linux Kernel driver folks,
>>
>>
>> It looks like some developers are not working for Intel anymore – like 
>> Sasha Neftin. I assume this is a result of layoffs from the news [1]. 
>> Is this true, or was the team *not* affected by the layoffs, and 
>> developers just moved on by themselves?
>>
>> If it was due to layoffs, could you please share, how the team was 
>> affected and how Intel is going to make sure, that driver developments 
>> continues as before, so customers know what to expect?
> 
> Hi Paul,
> 
> I don't believe I can share that information. However, all our supported 
> drivers will continue to be developed and supported.
> 
> For our client drivers, Vitaly can assist.
> 
> Thanks,
> Tony
> 
>> Kind regards,
>>
>> Paul
>>
>>
>> [1]: https://www.theverge.com/2024/8/1/24210656/intel-is-laying-off- 
>> over-10000-employees-and-will-cut-10-billion-in-costs
>>       "Intel is laying off over 15,000 employees and will stop ‘non- 
>> essential work’",  Aug 1, 2024, 10:14 PM GMT+2
Maintenance and development of Ethernet cards, SW included, is essential
for Intel, if only because we make/want to continue to make a profit in
this area. So nothing changes in the grand scheme of things.

At lower level there were/will be soon some layoffs, attrition, and
internal movement, that affect some valuable individuals we all will
miss. But we plan to deliver same or better quality of our support for
customers, engagement in the upstream, and long term health of our
drivers code.
