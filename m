Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALTcAORLemkp5AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1C4A72A4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jan 2026 18:48:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8F9F8274F;
	Wed, 28 Jan 2026 17:48:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KnGjCS4UvLVn; Wed, 28 Jan 2026 17:48:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1DF8682784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769622497;
	bh=zCWHtnAUuclWnTdmenrTwfOPi1Tl8t89ZnhH4FCvsn8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QBlZTu0Y9hYSv0WVyf+1qt4RfBxLTbtGljCM4b8yBXJiK63+2mYCOITeVey64OWxE
	 HiX5fome5dzGM1j6me5g8p7IdI0/DBpy60sETFXdxxhrJL8GmdSvHQnmlR9far8IoK
	 SzDHFiQD+xnf1g4+trtGV2UkDpHb8Sr69ykrYCWPhoWFOG4FP/H3MBGFoM5ApxtGTe
	 dl5vj5xDIrg2iazIaYPgYkQDSueLeRzZ0XeQCyB9EDEv0LN0lVtAAkaALuqMHJgRye
	 22gpHYM3T+PSRuy1VDWlwfgXUfcLZjix5ecnI5zUkBBT/VgX24Tvsdiw1hG5J1iHP9
	 3pn+KlmcoFJAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1DF8682784;
	Wed, 28 Jan 2026 17:48:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 2FF82118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 149A240510
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gufy2BgkmaXw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jan 2026 17:48:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 07C1D40600
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07C1D40600
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 07C1D40600
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 17:48:13 +0000 (UTC)
X-CSE-ConnectionGUID: NaI2x79XRX6X4igFGmv1WA==
X-CSE-MsgGUID: tvpLIvCgSV6A2VnuLdQfAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11685"; a="70898036"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70898036"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:13 -0800
X-CSE-ConnectionGUID: PRDxr9HcRKmm0FzH+IdAjw==
X-CSE-MsgGUID: lrwdD5c6TY6cyZLwU3TFig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="213196952"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 09:48:11 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:10 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 28 Jan 2026 09:48:10 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.37) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 28 Jan 2026 09:48:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yRWjaO2VW2fiLKv1m0PnC0qD0Y74gqVOCxws4UzpWVE3IE7Rc1ithXOoKKRWC1No6mm+xdJY07Xo5f31k2ghJ1y4YeerGASFmKpmzC5cL27lZYNLI/A6nhQt0BOkS3SmZoBUhi2QmWpCs7A5f8GKX527TF39SsGNCoJLAeeOuP7U2B9lbXDo03dHrNNNKNlhXqgxH4Twq176SdDfugEF+Gafj8iAgH+CdWEFB9s5IsSDonzu0i4PUPiF6+0i8B8mDPoQdq35VX+W9kuFJtBE0oG6UywyifeqR4LQ85xPuPRj9wcUZruWZoHD2WwSbWHkrsVk1Nlqzkhy9A2oO+F3ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zCWHtnAUuclWnTdmenrTwfOPi1Tl8t89ZnhH4FCvsn8=;
 b=K3rIckI/LvOB9H7hfisbqsfhIQBrJmOEGrYHwYcWYCt4SkLIYXF7b1E1LLqtDNl7juyqYxuvcPVjZmIEkk9r1dhBawR37lCvXMMT/cLcuYJOzxU1J3JfG/HRkmXauFQsiG9IzHA5/LXKddCQc8eZSd2VDTN0sSWJfcwcLrGWwgVXK4XqFsP1rjoQFkd5iYIXdjy+3/ffLDmEcuB6k5cYicl5JPeiywjwI9Cpg+xftmDlHAXKXVGTUzxizSDOoUdhTG9NqN1Qi8ft2FUBmASB4DCHwRv3SR+azGWikwtfpHdLLXoHZAb780tm5m9kfmwlOdqsMefcae3QzyyrkbCo1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by DS4PPF4B1ECA5EA.namprd11.prod.outlook.com (2603:10b6:f:fc02::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.7; Wed, 28 Jan
 2026 17:48:07 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9542.010; Wed, 28 Jan 2026
 17:48:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Jonathan Corbet
 <corbet@lwn.net>, Linux Doc Mailing List <linux-doc@vger.kernel.org>
CC: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Randy Dunlap <rdunlap@infradead.org>, "Stephen
 Rothwell" <sfr@canb.auug.org.au>
Thread-Topic: [Intel-wired-lan] [PATCH v2 16/25] docs: kdoc_re: better show
 KernRe() at documentation
Thread-Index: AQHckHZujMj8Q7S+f0Svcm3nBiYL+bVn25DQ
Date: Wed, 28 Jan 2026 17:48:07 +0000
Message-ID: <IA3PR11MB8986564EFE9504AB4A59E14AE591A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <cover.1769617841.git.mchehab+huawei@kernel.org>
 <56e007be74d8572c7c695d811e72e70447c466aa.1769617841.git.mchehab+huawei@kernel.org>
In-Reply-To: <56e007be74d8572c7c695d811e72e70447c466aa.1769617841.git.mchehab+huawei@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|DS4PPF4B1ECA5EA:EE_
x-ms-office365-filtering-correlation-id: 14dbee24-6bff-4bfd-606d-08de5e95655d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7416014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OUlRRmpOK1I5eDhnZFpuV2VtSGlqU09ra3BtSGNzUTcwbEljUkFRTVFiTEZK?=
 =?utf-8?B?NDJFYTNXMjVjSXVObHJKbTVBRXNBTjhneHo2MlpTL1hqU3gyWVVyOFZYa1JV?=
 =?utf-8?B?c3UyVFFmRXBMa0VlQXVwdDRLdTRVd3dtK0lteG5xakNjN1lDK3ZpaE0wQks1?=
 =?utf-8?B?K3g4MnkwaWhJSDRLNmtCbVNlQWxkcEdRYTkxTVRuS2tFdGxKcXk5NUJsVzFz?=
 =?utf-8?B?b0ltQ1RrbEJsNmRIOVdWMEtBaHNGbWZtZkdrT2V5S3dDakdGeVJ3ZTBrMS9N?=
 =?utf-8?B?cnV6aWNiQkg5MVBZR3VCTHVNRjI5eWxTTmVyczkySGNrWTIyOE5uZHlsamox?=
 =?utf-8?B?K0tmVGpQWlFqYnRMbDBxM2hRMC95dFA3VnZoQTEwQiszYzI5YnQzeGNwYUUr?=
 =?utf-8?B?WENmZGZ0cnZCazkwUzZKNFBsS09TM2JxV3NiZXFMcHdHM2VxWkZNNyt0eDdS?=
 =?utf-8?B?eW9mcmdoellNbFVZeDJhSjUvTEJqSnc5ZlF6ZTl1L09YQ1MyMGZVTFdRTHV2?=
 =?utf-8?B?akhFMHp1Qy92eUdkQ0NWL2R2Yks5VkRNUTVnWWV1WFgxS1pxZTljRTFEN2JG?=
 =?utf-8?B?czQ5YUdXb1h4enBBTmUzUnQ5Z0p2U2JxdFpyWWxpb1pzUUJFVFBacE56NGxo?=
 =?utf-8?B?MzdiK3k3eWVoUk4xUnR3R0U4WEU0U1ZTT0J3NTlhTDN6UWhvOGZjVzY5YzZZ?=
 =?utf-8?B?ZWNRczZDNkljNGJPY3dPSTJJSXF4ZkRtWVpEQzRRWjRKSjg3eC9sdy9CMDdW?=
 =?utf-8?B?WUFIMEdIUXNSaDNWeEFDbDJPYnd4MVlrYUZYWnY5MnBtVHY3dlBCOHZwWkJU?=
 =?utf-8?B?TE1hMTVkU1phNjN4ZWNRUVpEZExpTWtnbGJIUG9adjlIRk1xMFFTSm5jNU1X?=
 =?utf-8?B?dER1T3dvUldJSHJ1elEwYzF3UHRONEJudlhUZnBUTlVsVXZCOWxCMWo0Y0xM?=
 =?utf-8?B?bjNNT1I1SlBMZjNxM0M1Z2t6KzgvaTd3dlhNS0d3cUxRSUd5OXBQaHgyMmxw?=
 =?utf-8?B?Um51ajZyNno3Wi9jRUJxUC8xYkRyNW1saWNOVWplSW9xWmtRVDFveFFBUUpR?=
 =?utf-8?B?eG5vRWlqVzJkaFk2RWhDV0JHT3BTMnAvT0VvQXdTYjhzTHp3OTlIeTdUaWUr?=
 =?utf-8?B?ZUJ1SDRQOHVMSDlkdm92MnZQNGsvQXJUUkUrem1ac0ZaSXBSSHp5YlcrN0kr?=
 =?utf-8?B?azhlNTgwdlRiY1Y2K2dQUHVzOStHaHc1ZzNYdFMwSlA4c2pmbFJKdkNIY09F?=
 =?utf-8?B?WkZqdmUwdFhENkxMTnFZdHl2M1dkUm8yaTlFSDhMVktZWXl4dElRQlhzaXhm?=
 =?utf-8?B?eEszd1dFanY2SjlYOTZuZHFadzQ3MG1pekxQZEZWcHFlSjVIMng1OU1IRG1w?=
 =?utf-8?B?Q1dMVStPY0ZpaVZycmZINEw3bWhUdW1WbVlrZ1U2RTVsNHlyZHZ2S0YwSngw?=
 =?utf-8?B?YWJ6NkF2UVBiUDJZNGZxWDFqcUxuZ0xCalNpMlpTVWxuOFpFODB2aUh6MmQ1?=
 =?utf-8?B?ZWZ6ZFdwbUVHdkFwR1ZZTGxhUTBoTDFWME4rVTFvS1l0VkN5Y1h5SFByVlYv?=
 =?utf-8?B?dFlmNTdneGh3dWxiWUwwdWJsQ29TTmtrU3NRbzByYXZOb3RGSHBmQkt2cUR5?=
 =?utf-8?B?b1lSSUd0ZXVjQVo3dGZ2cnlYbnhhb1NkZWlNTzh5TTZza0U3ZmJmZnNQK0hj?=
 =?utf-8?B?NmZpbHJPaVJjSGxaYzRXTUEyVGk2OGlJdHRtMy9VdWxpOUI0MzZZVC8rTjls?=
 =?utf-8?B?T21BSmpFNHkyc1E3d0M0dmRBQlFkWFRZY1ZDcEtBcy8wUWlMTldkVm5zSi9i?=
 =?utf-8?B?SjgyMHd5ajEycUIxRHhkdE9pYkd5bEpnby9lakM2OS8yWHg0bmtlR3UrUVE4?=
 =?utf-8?B?dUVSOFpidWNoeVZVa29IL09ubWhxN3A1eGMvaEpIZkcxbXpXRmlwaGpabFpT?=
 =?utf-8?B?aDNtTzdjeTVHSFNnZDNaVjJFU1NTZTJCaW5kaUNJUHk4UmRsb2RrQXJNOVBX?=
 =?utf-8?B?QVl0ZUFoVmd2cVdNQ2VlRkV5RUJtV0phRnhGZ1E5SWE1ek1VMDEzaTV6Wmor?=
 =?utf-8?B?TmhhcHhPWFdoSHV3TDhnZFBBT1VRU0JmV0VZaGlMc3hYSmNycEJONlFMUTd2?=
 =?utf-8?B?c3NIcURXY04zdk5wMEVmQXVUVy8wRDVZMkRXSzUzQWp5SjRUUWdxU0FzTVBm?=
 =?utf-8?Q?yLa7cQ944e+3SYJmw40suw4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7416014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1VZMW90OXhRSlBYZGxTSTU5dUNOVGlFREt5UTU4WXBsWWMrZG1oNzh5a1Zx?=
 =?utf-8?B?bU83V3dtUjJvVlQ5T2ZJN2wyNndOSTl3L2JIQlNFQWFjdE1HVGxMUjNBSTJF?=
 =?utf-8?B?dWhpbnZtSzgyWVEvbHNwa25pKzgzalNBcWVJUS9NNmd2ekJ6SnJBeG5zeDRN?=
 =?utf-8?B?VWkyelEySWdibFM1QlMxTTFEbzhiQnh6NzZ3M1JWNkZBbHUrbzYxeWNBdjYy?=
 =?utf-8?B?aDl0dGhoOXpzTVlBNENuUEYyeXRud1h5RXFHck9VbWpCT3VyOXU0NE5hWUda?=
 =?utf-8?B?RWorVWRGWjd5MXlydDB6bCtqVTdJbG5GN21CVCsraDNmVC9IZG9QdysrN21t?=
 =?utf-8?B?cmVyMVZGNC90ZlJHTG01Rng0SjAxd0g5cGpHcDUxNGJSb1FTejBNR1RuQ0Zt?=
 =?utf-8?B?UkliSDhDNUVTRWRDSmE2T3g0L0ZRNDlMTFcyRVZsSHRLRVNDc0xrQ2EzRno3?=
 =?utf-8?B?N2x1aTk1NDU5SkZhT0xhY1BnWUhyb1BNWlZkZ3R1bWFkdUpPNkVyZDEvSjRs?=
 =?utf-8?B?UGxnVUNPc0UxMG15dDRBclRGQVFoYy9XMnkwNEcrYm95ckk5YzFGRzJsTFVU?=
 =?utf-8?B?akZYelNKSVdiSjhFSDFITldVY1o3cGU4dU5LRS9nK1RIK0xVSHpYVnc1OVBI?=
 =?utf-8?B?dmFqWEg4VS9hQzJLeENvUSs3TWY3VDVhR2Q3TzVUcGU0eEJLNVQveEY3czU2?=
 =?utf-8?B?bXk3N1ZDR281ckNtM3VNTzNScy9qdXNyV3EyNXNkR3dIc0VNOHRCbXhIcmtG?=
 =?utf-8?B?NWhyRm1PVEdtd1JPOHQvWm91ZjJha3duVUNFQVpWV3UzdnRtNEVRNmJYVWhn?=
 =?utf-8?B?ZWZYTkd5Q2cyQyszNEFBbnU2V211Y09iQVNKa2dRU2p4dUVSNUtDTnRGcFIy?=
 =?utf-8?B?SlNKcDk2SUVEcFlDT1hxc1o4dnIxc1VwbWhBRFk2eWdVeXdWS2tMUVdXRkV1?=
 =?utf-8?B?RFd1UTNPanhhYkZQS1kyQnhROHp2d2I4SktNSm5wdGZFcmFvQWtEK3VPUlRh?=
 =?utf-8?B?ZUVIeWxjZ01WSTV0OUlIdWk3MERzU3g5dFlOZkFjQ01JdDFnaFFmNUdYanFv?=
 =?utf-8?B?ZE0rY3BaT0hPTkhPVDAwWlkyTFJBd1UxUjU3Yml2WlJNY2tjTTU5Z2Y1Wlo1?=
 =?utf-8?B?cHZLZTZxTkxQRzRFWWQ3TDErc05TSCszbzNRaVFRQUlIYlFrTXJWOEQ2VXJP?=
 =?utf-8?B?elJjMUtrRWl3SGNaS3hPMG1lRW16SDBsU3pIQjlBREJNOHlwUmJ6N3FuM1hz?=
 =?utf-8?B?b25wdFBZMVJjZ0V4YkwvVTNvMi9CYlhraUc4YU9jdHkydVVpL0xkb0ZlcjN3?=
 =?utf-8?B?S2FpcnRSQVZCREczTVBka0JDa2ZVOGtwUU95dStQWHR3bTVaOFdQOHBGams4?=
 =?utf-8?B?MlliaFlYZFZma2ZSQnA5Qkw4S1REbmdTN0hWYmxhRGVZWHJmZUUwa2x6dTRJ?=
 =?utf-8?B?d2lpZnFNT0FZK0VMS041Y1Y5dUZvbWpHWHpxN0JLc3M5RzMrVHJGaDhrbGhl?=
 =?utf-8?B?dnllMVdzdFA3SzhUaGs1M3RYbHk2WE94RzdHenhuN2RxN0dkTlU3OGpONm41?=
 =?utf-8?B?TGdQNlpiUEtBU25JTWovSTdOTk9xaUtWWWNoczZGVU8xZG0xTDI3VEtrK3Y0?=
 =?utf-8?B?cUdYUjZ6eTd4N3h2VUFMMXhZOGZINmVBODRuOURraU5TcEZsU05JbW9ERGlt?=
 =?utf-8?B?NDlmQmxZZEw3RWJoeENtY2xUNm9lZVA1SmZkWlM2T1o5c1BoQkdsUGtGdWVn?=
 =?utf-8?B?RElRdVQ3TlZxUWRGZUlRdjhVV1ZJU0xlZVdCd2Z4Rk9ucTJIdFR2dEJuYVJ1?=
 =?utf-8?B?Si9ZalhMOEJnYU1YS0hMaHdjT1RQZ2NGdXRGSXJXbDBwSW5MU0xja2tEblVI?=
 =?utf-8?B?bnR4aWJ2bWJWem9FZnRLVEZreC9WUDZEWStmczZvaWlveld0eUxBRzN4OXBL?=
 =?utf-8?B?cHBiSkF1N0Y4dUlLN1lWWnd6eWxmbGgvbXhnbkUxcHI0TnpTMTVvd0s3aHFU?=
 =?utf-8?B?U09jdkZPdjY0T09YM2V2QUdQU3RqNk1WSSszWTNGM0RZTjRxNkozSW9WVDVN?=
 =?utf-8?B?Znp5aFlnaW1yUWN6SDgyV3lCZ2FUdVo0Z3crQ09KbEZQdnFGUmpyUTI3eEJw?=
 =?utf-8?B?bFIvYk9Qa1ZoTlpaSC9hTHlodmRDY252MTI3SnhBVWp5VGNNM0lZOWhIRGR5?=
 =?utf-8?B?bTljZFEyOS9zV2w3YTdjUndXYWk1TEdBSjI5blVobjNTNnhzWXNPUUFhV2hm?=
 =?utf-8?B?amN4bUt5QlhmbXNHYVR5ZVJyakpmbmdEM2ZkVVR6TmZXT0FlMFJMdjlMcWZL?=
 =?utf-8?B?KzBmSVhHSCt6bUNKRkRydmIzVmdaODI5eEVsYjF6b1p2VXl5WjhNZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14dbee24-6bff-4bfd-606d-08de5e95655d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 17:48:07.6623 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /uJMW1rCjvsc/c/WkK/RGYY9ti5aQ3ZWKi+mj5L8A313ooyM76le9hUVjMAPzft3oKlDlfAw4N61wYckRZMOrNlacEM4HNFzqR8uITwekbE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF4B1ECA5EA
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769622494; x=1801158494;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zCWHtnAUuclWnTdmenrTwfOPi1Tl8t89ZnhH4FCvsn8=;
 b=RBDLSi098Flvxpm/TaO8n+ECZXbwfSHIpXH4z2QizWf3euVUwnIKvDil
 Bqxarlb188dShvhkNr335i9VqGjwIQ97m620/9x3y0iQgq0hk6HlFvp/z
 Wb4ziQYDBlD+eabmCRjzP0k3Ah4Ij4gUb8kleCIJE6iX5S9JkdfaBkHAC
 EXsaaZqGu4uM9pkJw7xK4RmqPAMMPO660/Z1H7B/7dOGyzKna62gxp//H
 fcXoU4uj+KmZvcz+VCWkjgxvxY0p2Kg4n01HosJmQR34xnClaOVD3k8O4
 Jgkr50yUz40OK+G5ViK9hp7sQntUUpjoXkRBqlws1rHkHFG+dzpV6Vnvj
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=RBDLSi09
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 16/25] docs: kdoc_re: better show
 KernRe() at documentation
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:mchehab+huawei@kernel.org,m:corbet@lwn.net,m:linux-doc@vger.kernel.org,m:bpf@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:netdev@vger.kernel.org,m:peterz@infradead.org,m:rdunlap@infradead.org,m:sfr@canb.auug.org.au,m:mchehab@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,huawei];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,auug.org.au:email,osuosl.org:email,osuosl.org:dkim,lwn.net:email,infradead.org:email,IA3PR11MB8986.namprd11.prod.outlook.com:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns]
X-Rspamd-Queue-Id: 3F1C4A72A4
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTWF1
cm8gQ2FydmFsaG8gQ2hlaGFiDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAyOCwgMjAyNiA1
OjUwIFBNDQo+IFRvOiBKb25hdGhhbiBDb3JiZXQgPGNvcmJldEBsd24ubmV0PjsgTGludXggRG9j
IE1haWxpbmcgTGlzdCA8bGludXgtDQo+IGRvY0B2Z2VyLmtlcm5lbC5vcmc+DQo+IENjOiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+Ow0KPiBicGZAdmdl
ci5rZXJuZWwub3JnOyBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgbGludXgtDQo+
IGtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IG5ldGRldkB2Z2VyLmtlcm5lbC5vcmc7IFBldGVyIFpp
amxzdHJhDQo+IDxwZXRlcnpAaW5mcmFkZWFkLm9yZz47IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBp
bmZyYWRlYWQub3JnPjsgU3RlcGhlbg0KPiBSb3Rod2VsbCA8c2ZyQGNhbmIuYXV1Zy5vcmcuYXU+
DQo+IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCB2MiAxNi8yNV0gZG9jczoga2Rv
Y19yZTogYmV0dGVyIHNob3cNCj4gS2VyblJlKCkgYXQgZG9jdW1lbnRhdGlvbg0KPiANCj4gdGhl
IF9fcmVwcl9fKCkgZnVuY3Rpb24gaXMgdXNlZCBieSBhdXRvZG9jIHRvIGRvY3VtZW50IG1hY3Jv
DQo+IGluaXRpYWxpemF0aW9uLg0KPiANCj4gQWRkIGEgYmV0dGVyIHJlcHJlc2VudGF0aW9uIGZv
ciB0aGVtLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIDxtY2hl
aGFiK2h1YXdlaUBrZXJuZWwub3JnPg0KPiAtLS0NCj4gIHRvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3JlLnB5IHwgNSArKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rvb2xzL2xpYi9weXRob24va2RvYy9r
ZG9jX3JlLnB5DQo+IGIvdG9vbHMvbGliL3B5dGhvbi9rZG9jL2tkb2NfcmUucHkNCj4gaW5kZXgg
MTg2MTc5OWYxOTY2Li5mMDgyZjgyYmFkNjcgMTAwNjQ0DQo+IC0tLSBhL3Rvb2xzL2xpYi9weXRo
b24va2RvYy9rZG9jX3JlLnB5DQo+ICsrKyBiL3Rvb2xzL2xpYi9weXRob24va2RvYy9rZG9jX3Jl
LnB5DQo+IEBAIC01Miw3ICs1MiwxMCBAQCBjbGFzcyBLZXJuUmU6DQo+ICAgICAgICAgIHJldHVy
biBzZWxmLnJlZ2V4LnBhdHRlcm4NCj4gDQo+ICAgICAgZGVmIF9fcmVwcl9fKHNlbGYpOg0KPiAt
ICAgICAgICByZXR1cm4gZidyZS5jb21waWxlKCJ7c2VsZi5yZWdleC5wYXR0ZXJufSIpJw0KPiAr
ICAgICAgICBpZiBzZWxmLnJlZ2V4LmZsYWdzOg0KPiArICAgICAgICAgICAgcmV0dXJuIGYnS2Vy
blJlKCJ7c2VsZi5yZWdleC5wYXR0ZXJufSIsDQo+IHtzZWxmLnJlZ2V4LmZsYWdzfSknDQo+ICsg
ICAgICAgIGVsc2U6DQo+ICsgICAgICAgICAgICByZXR1cm4gZidLZXJuUmUoIntzZWxmLnJlZ2V4
LnBhdHRlcm59IiknDQo+IA0KPiAgICAgIGRlZiBfX2FkZF9fKHNlbGYsIG90aGVyKToNCj4gICAg
ICAgICAgIiIiDQo+IC0tDQo+IDIuNTIuMA0KUmV2aWV3ZWQtYnk6IEFsZWtzYW5kciBMb2t0aW9u
b3YgPGFsZWtzYW5kci5sb2t0aW9ub3ZAaW50ZWwuY29tPg0K
