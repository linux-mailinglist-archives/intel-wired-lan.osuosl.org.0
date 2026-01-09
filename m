Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 69DFBD07590
	for <lists+intel-wired-lan@lfdr.de>; Fri, 09 Jan 2026 07:10:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E47AD40B2F;
	Fri,  9 Jan 2026 06:10:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3b4W3JZN8pMd; Fri,  9 Jan 2026 06:10:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 44B05409F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767939025;
	bh=eT9H1+7W5UJ1Yd1uPTU/aGPvg8bT3gDBiErApw38868=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QKyia+CvVA3TramUIjJT4a3/fwm7CURMss22P161kAPjRGC3dD56IOyTcuL+FWmFI
	 slypX9ffODXipuVcLhHqWBLFfpoJssX9q+G8z2PvAqbQws8eFXscVIGQ+0V/SWc8ba
	 uSaopP9ewXNGWOfbcWFPr5u2KUNlkv5ydNNQgkrNpY4UWvhukL+02uANYTSqhZ05lj
	 8eaEyluc7YUzhCO+IqiAt8rbT6cdnfpkrboTSRrf9cOo3akxfubN82vfonHgBCFuWA
	 seUiV4oPt4jAL2Csb+xZHtKEIY4Y8fddwvP5BJqRqVf59+jZ/FJ4p7vPNkJu7LPMCx
	 jLsWZmj3EztGQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 44B05409F3;
	Fri,  9 Jan 2026 06:10:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id D2B2B278
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CF8A660E45
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u6AMDN4BWoFu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jan 2026 06:10:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E471060E39
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E471060E39
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E471060E39
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jan 2026 06:10:22 +0000 (UTC)
X-CSE-ConnectionGUID: Et8XUoYzTyiAFfBKdFHKnA==
X-CSE-MsgGUID: mrxRzPhiRFKKW8H+40k1fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11665"; a="80685737"
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="80685737"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:10:22 -0800
X-CSE-ConnectionGUID: B50NsLkVR0S1zZOV1zM9Uw==
X-CSE-MsgGUID: aGA5OWjCQPKsbUoXk7AwvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,212,1763452800"; d="scan'208";a="207871662"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 22:10:22 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:10:21 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 22:10:21 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 22:10:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DiE9c4BJV0TKnaepNXRJ8Ya2gLLkD3nGolTFtkMvLUQ6UDRZUe1Rq8nv6KIv/+xfL4Iz8z5MSj6CeKVFTHfcSBIP5xLdtI6HNMZuFqVl8QeqseoH27daR9CQrzTyYu65Z5OC/41SsdvZ8iCMxr4mSLxDQp5aXDzhPuAcMjNn7kqQpm2s6r6rkuiiYwMziM40Om5V2FhtAIi9/MhHHHNZKYM8tli4+Dt5J9T3/PEsInDK7xBoq+Vj0/Ai2KH5OtGuMCbQSc160xdnmh+s7W/F1cAqhtflRSU/QVBM2kFSyyWSR0rrxVdyuj1EEPOt1PCFu2LTfYiBiXh672Vn904sfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eT9H1+7W5UJ1Yd1uPTU/aGPvg8bT3gDBiErApw38868=;
 b=lKkx4gh3RTdQ+rckenIwEt6fbPOdoCi/vTxQlEhclphqO/u+iMc/49Ijhy5HLkauUr8E+O4NY0GgvCqdcxx7+k9ENBe0WW+tT16FMk1Ow/QIp685/Eu2cTcW8b40BZqPzexMwuMgBArZZtgr9yjpsUCnhyYxvytiYERlNVD0fEYi2BOGnrJfw1zSNQ+GR/iakSW+Ad32ARB0pDC8LHKkBvLwA4FQSg4pG33FN0byfIJ2O0ZLiKmokDH53ZDOl+uNE0IE3gwkt/3uoHuIECQCBwiZ4H3vdVru8o7yH12H56h0YWkTdZK7c//Dhp8qkHcPBpz1OAM7pBiyZPhTBlroLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by PH3PPF6B7063D92.namprd11.prod.outlook.com (2603:10b6:518:1::d2a)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 06:10:19 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9499.002; Fri, 9 Jan 2026
 06:10:19 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, Li Li
 <boolli@google.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Eric Dumazet
 <edumazet@google.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "David
 Decotigny" <decot@google.com>, "Singhai, Anjali" <anjali.singhai@intel.com>,
 "Samudrala, Sridhar" <sridhar.samudrala@intel.com>, Brian Vazquez
 <brianvv@google.com>, "Tantilov, Emil S" <emil.s.tantilov@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 5/5] idpf: skip stopping/opening vport
 if it is NULL during HW reset
Thread-Index: AQHcf3HERhfF3HongUWpx6e0/Jd5U7VJXMiwgAABAdA=
Date: Fri, 9 Jan 2026 06:10:19 +0000
Message-ID: <IA3PR11MB89860A2DFF318912A58FF8E4E582A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260107010503.2242163-1-boolli@google.com>
 <20260107010503.2242163-5-boolli@google.com>
 <IA3PR11MB898636DB7C48DDB28FF88A09E582A@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB898636DB7C48DDB28FF88A09E582A@IA3PR11MB8986.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|PH3PPF6B7063D92:EE_
x-ms-office365-filtering-correlation-id: 8bd386bd-c7d4-4f33-a443-08de4f45c43f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?utf-8?B?YmNESDRzWVJleFd4TTRUZGwyRVAxdFd1SHRSYWhDeUdTMlZqZ1FzRzFpR2VS?=
 =?utf-8?B?WXFBRGtaYWUzck9XNmEyOFJMWWhIQWNLQkFMT2hrT2NEdm5YbmNBVGttUUd4?=
 =?utf-8?B?TnBkeDdteXE4ekppa3VGSkF4YlMwNDZobkNLUm5xcUhOY1JzejJjMXExeDlh?=
 =?utf-8?B?b0V3U2lMUlBGUnlmMFl4cU5BUkI2aGpHWWdDMWF1S0tTT0VBMkxNRFdLcENV?=
 =?utf-8?B?YThoTkRkL2YrYzM0MUI0VkNEYitpazRPeGtaZENVeTQ5Rk5OTWZxOVlldGFP?=
 =?utf-8?B?NDg5QllSS3hzaTd1d0p4QnpRaVRIYnZoL2xMWk5aUjU1U25qUnJPUjEydStJ?=
 =?utf-8?B?R0pKajFhMlNiYnFTc1N3QVZ1SnIxZUZXQTFINFBpbkluY3NUS3dVbWxSTUpB?=
 =?utf-8?B?VWFQVmxxcmxNWWVMTzhwRFZrN3IwZFpqc0E3Qk1VbXhrbmxuVTc0bE9XOUJ0?=
 =?utf-8?B?ZzFmeDlNRmVsT2RyK1lSN0N1L2RPRllrZmo5YVpXYkFjRmlodE5IZjByK2ha?=
 =?utf-8?B?bFIzbzVDZXRQRUtpbVU1OXZGSk5yN2dDL1hDemkrVTE5T29DZHk3ZHZtWUYr?=
 =?utf-8?B?RTdwNUk3cWx1bVd6WENLSnBFLzlLQTdMRTZrbmx6Ty9wQVZYQ3FqUFlxMy8v?=
 =?utf-8?B?RkFDWXZsam16Q0R3djJ2VldRanA0NFNmWW42N1ZOKzF4NDRGZzJWa0hXNk5G?=
 =?utf-8?B?NG5YK29IQUNVZEgxbzdmdkZYM2VMeUNLNHRHUmZLelEzWFhSdDlZVXJqTE4w?=
 =?utf-8?B?Q2hXM1gxMVFneDB6bHluclpLYWdHTzNaR0dzU0pTR1dyU3h5cUc1MXdLL0hP?=
 =?utf-8?B?NUNGSWcvUzNKSWVyRXR3TTBwR1UzcWU2UjVsS29BWEMvZUFiekRIRUFtdGh0?=
 =?utf-8?B?R01kZFJYZ2Ywb001VkdNTzUrK2pBR3lPNFNoQmxIUUxCRFpNcGliMER0UFo3?=
 =?utf-8?B?V2orY2NyWU9hbXp3U2dubmtWMTJ5QXRiRkFUbmtVYzJwY0NFallyYUs5SnY3?=
 =?utf-8?B?cHpJYWlFWnpXNFFHTUJ3enJTNXpGRnVvRTFlcUtKcnJhdG1ZZVhIdWtGV2xS?=
 =?utf-8?B?eEFFVitZR1pLaTlwb0JYN0sva1lrY1ArZ29UZXlqcmk1WTc4cE5FcThHQ1lh?=
 =?utf-8?B?L3hCUVJGemk1WWdCZTBoNy9XeW8wcTBDV25waWVLTGNkc2RETTIwWjBMMHpp?=
 =?utf-8?B?Y2NVTW9OUlpYTnIrWnhHcG4ya2xIUysrSytXdmtJaDI4aFJhVEtTK2lZK2Jk?=
 =?utf-8?B?SS9PS05xTHluWUZkUytPRzhUR1BWUk9iZjhzV2lQeFZvSHpuVUxHSFluaExu?=
 =?utf-8?B?ck1oS2w5cE9PSHdERkVrYmRMSlZEa3IyNGg0bjkxRVh6czNtdGwybjdQM0pF?=
 =?utf-8?B?d0lDY2ZNdEZYUXZ0L3NlRWRNcElmVjNTaTNUaDZlaGxMWEZjaWFrckxMczlT?=
 =?utf-8?B?OHk4OFFwR3hZNi9WcEZubGlWaVpIeGI3ZWhmc1RVYXR1REd4UmIzRW82a2Fa?=
 =?utf-8?B?UWtTVzdTRlpiclRnU0hzVk5pRGF0MC9EeExiOW9MWUttVjBreERoT0lJSmp6?=
 =?utf-8?B?aGVDUlBrWmFveFF0MW9EYmNONHVhd2hoSjlCd0N4L2FQQnRjNll0dW13ZjZY?=
 =?utf-8?B?N2wrKzdtdGJVenRkaVdCU2Fuc09ITS9JUWFiRkF0QTgzNVhEd2hxY3RGc2ls?=
 =?utf-8?B?eU1NV3QxckIrOTFBQ01OWEpsYU9jeUdtWXVjK0JlSHlSSFlPMXZkaHRjaTVy?=
 =?utf-8?B?THB2RlBZcGpaYzVLck9Pak16L2w4eFZ0dlJCRXk4WUV3cEorV1hHN0F2RHpE?=
 =?utf-8?B?c0NxbmRwRnJ2Y0cvTG8zc3JDdktXc2JCSE1wWnlrRG1YSE9ZRmdEd2hpd241?=
 =?utf-8?B?TzJDalA5QTZxQWNzNVBWRTl1ZWc2L3grOHRBejNzYWQrU21IN0I2cGxTbzlr?=
 =?utf-8?B?S2xvVWdORDZETVQwcGxZRkhYZGFia1VCN29HaTQ5K2dVOFFZYi9qc1kya0J4?=
 =?utf-8?B?Z1pxV2lPRUE1UGtYQWdTQmErM0ZITWtLOHNjb01ZNldRZ2E3VXRtR05BTXho?=
 =?utf-8?B?QUZWL2MvSkhscXlyNmhPUEg2TGQ4a2lPbWJmUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2F4d21BeHN1VHp1MFRHZUF1a2duZmtPQ0FHcldYd0VaeUViNDBDT3RvcGJQ?=
 =?utf-8?B?MU5xM0liR0VXVjhIZTBLME1oejZTeFNLV0MxL1Qva2h5bHdwUEhjbW1lU0pB?=
 =?utf-8?B?TUhpN3lqenlybS9oNXhZekZNekhMK2ttT284WTdueFIyQjNUcWgxNHJEMUcv?=
 =?utf-8?B?djZxUklhTGpqc3ZzeXBzOXVINWtXNEVydUw4VDd3ZU5ZZTlkOXgrekRMU0FW?=
 =?utf-8?B?S3lWUEIyNWhEeENIUllNSEIxRitQN1pXUCtqUHVLOFlhMHdHc3E3QWt3c0Vn?=
 =?utf-8?B?cGthNjZpNG9aNEd5ZFAyRHdxcWVtUE5mSmpBSmEydlhmNjhrWUhZdERmZGlR?=
 =?utf-8?B?dnBPVnRrVzRDZmxOOS9KcnFQc1V1aWNhVnNlYXhMZlN1S0VwM2tMV2JibUxT?=
 =?utf-8?B?Ti9NNUxCQnJ0eERxMnU1YWo2R1l1bUp0ZlJmcG1BOHY2OHdxNGhWVFNmQi9J?=
 =?utf-8?B?bFRxV3J1dmpyT2lrZnd3Qjc4TjY3QkdmMGhnSlh3QlE5WTZPb2loMnd2cFBF?=
 =?utf-8?B?Z1Y0dVpMTnI5WndUZ1hvdUlkTWF1cjZHNk92WGhUZ3dQdkc2V0wzKzRzdTZC?=
 =?utf-8?B?VnBKakE5MkpDS2ZoYzlGVGNxWS9EV0VTR0tYSlhYd0lyakY3RzZ6MzhBQ0l6?=
 =?utf-8?B?SjB6dHB3QWV1U2hlTU16M3RyWUpsWmNHeFRoeWpFVHo1WXhJRVBsN2l6RDFu?=
 =?utf-8?B?WVBlbkNlNG90OUtGTzY0dDdHU0ZyNnBScWs0NGxKN3hZQ2tOUG5lMHNseU5G?=
 =?utf-8?B?VU5wNDAyamtJUkZWOWpFMXB2THl1SjB0UXYrQ1hwbHB1MzNyMXU0dmI1Z21P?=
 =?utf-8?B?MHFxdzhkZElHU0tnTHVhY3IxdU9KcmM2TGZxZi95aDBYZGRCTDdxRVgwV1RE?=
 =?utf-8?B?UlpUUHV0d0tXWEVVa2tzQmN6ZFV0RVhjM3VVRnBuY1NQa2tDUmIzSXhEWTJB?=
 =?utf-8?B?MTNUYlR6enFYQTV2akt3TXgvekRnQ2dObDE5Q0ZBU1N0L1JFY1B6a0ZXUW00?=
 =?utf-8?B?dGV4U1pKU1pJQkNIME4xU1p0azdjWWVTaGR4eG5YcStkQk0xL0FnZ2F5K1Jy?=
 =?utf-8?B?QTNSUFZveG43QWlTa29hdlpQUDdEM1d3eE9RK1pEek5pb1ZEbEVLSHp5cGYy?=
 =?utf-8?B?OWR1aHYxaDBCeFN0Z3k4M3QvYjBDYjdGNXkrY2wwSExWcUlEQmFYQVhCUTI1?=
 =?utf-8?B?VjdkeEk5RlFWRVdzSUpjUzZsdjlDRVBtNXdMTEE5OUEzR3RFUGNUT1V0U3RI?=
 =?utf-8?B?dGpwckpHOHBEOTNIYkhRSHNTcW5sNlVNMmNUQWthbTQrU3ZYaEdhZUhsUnpL?=
 =?utf-8?B?RFd0TUNZejhBaGlVdURjZlNNQVk3UWpnYThqWDJocG1aODU5aEpkaDVJNTZY?=
 =?utf-8?B?UDhoU0ZWM1c3cmc4WS9aUEdkWVJvbFFrUGZZN200NUhuLzhBZTRDMEY4U0Rh?=
 =?utf-8?B?bm1ET2N1bXRBMEF0bUcwWkVtVHF1blRObVdnMTVPa3Ywb25DOWRaUmZqZThD?=
 =?utf-8?B?OUZSbS9OQmtjTSt5Sy9NWk5JZ1RRTUZpSXJURXlSSnlUQkYvUjVmdHZLMDho?=
 =?utf-8?B?Nk0zQ0VmZ1BMeklzeTJyaFgxMk1YSjE2RzFJbWdDa2M4enRhZmdrZVd4L2JC?=
 =?utf-8?B?QVFhQkEySjVUQ051ZW9WdU96K0VlQ3N6dTFMMzZ5dFd3OHRyMFNIbHVnV3k2?=
 =?utf-8?B?aVZlLzQrQVMvSjJVM2ZDNmhyU3VzOW5CS1hJL3o1U3hxa0NvNXlZN05NMUxq?=
 =?utf-8?B?eHJST3hHSmU5UlhMUlJDMnUyOXhBTVMxUkg4cDZ6ak5qTHdYamN4Ylcycnd0?=
 =?utf-8?B?NGQyWWRZbTNOTkt4VFlaUWJFTi9rdFFTOThjMDZZTzhXWTlPdm03R0FSTDJ3?=
 =?utf-8?B?Wk1xS1FxTWZXa1dvcERyQzJqMDlDTnZhTjNkYnJWeVhNOXZQWGFaWFB4ZFRT?=
 =?utf-8?B?K1hqU2RaNVcyZk5jWG5vcnl3QndkTGc0UlVvcC9aUEFmTSs5N2RKMWlyZWVC?=
 =?utf-8?B?dXNZQVo2ZU1JQVZsUklWTS9DaHJHMjA3SjVVV1JhbUlldGt0dndsZHdiNG1n?=
 =?utf-8?B?WXp1T0cvcVljM2gvZmI0WlNWUmRoUS8xWkFSbFZ1MmJBQnlRMng3VE9DbHY2?=
 =?utf-8?B?RzFMc2F6OXN6eSsrNC9mZFAybUU5dGtvVEJOTUltc3ZOOHdRVmFlaG1uTGpR?=
 =?utf-8?B?S2RzYWF2bS9yclNIaFIvMVBlbmE1T2xySXluR1NrWnhPT0hxdU1ZUkdHUW0y?=
 =?utf-8?B?VXhjZ1dhZ1FaeHNFVmowdWlENWxnVTNzTnorcmlHb1JRZ2xibjRrem5DUFNB?=
 =?utf-8?B?NFBoOVEwdlJnNEYvdVY1YUdzcGVMQnhxR3JjQWwyeDlGNlE0a2ZRZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8bd386bd-c7d4-4f33-a443-08de4f45c43f
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2026 06:10:19.6566 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RGAG107NRs15vgrgQqgQJFesKk5p+OfTy+Rakks2ustNbbFQ6web2EjKg5dGShrdXOvY+RJY6tvsbpb2HG7hKJITRIFfGtgbiTjigh0hGZg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF6B7063D92
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767939023; x=1799475023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eT9H1+7W5UJ1Yd1uPTU/aGPvg8bT3gDBiErApw38868=;
 b=V0taq2I+d/Uj92Ix/HEdRjcUYVTpTN6KBdCdZbbrQ+Sp0XEQ44ANrKqv
 QutdjJZ6OPH+Um537SVTo42bvt9xuC8dh5m1to8XqcGLUsfhsm+qqTJFU
 Ghoa7fadwIr1GQyMJ5liuxqrfNwArOTaPd3HwrmbV5K1Mq3H6SkwoFRme
 hSsHTcjLylkmFgQl/ekSQ4bsiOfHQctRqfMeKpO/s+JGVQxLHDhNYL2gV
 ov2PwJKfx9OjVacR+bKG3oL2hfWcradOXotqZGift09aHYfq3Fr7dDlA9
 SIVe7+59V9Y4sk2RezK/ayxYtae2brXR3qPYlkJR5M+NyDg4XCrsaZ49Y
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=V0taq2I+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH 5/5] idpf: skip stopping/opening vport
 if it is NULL during HW reset
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgTG9r
dGlvbm92LCBBbGVrc2FuZHINCj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDksIDIwMjYgNzowNyBB
TQ0KPiBUbzogTGkgTGkgPGJvb2xsaUBnb29nbGUuY29tPjsgTmd1eWVuLCBBbnRob255IEwNCj4g
PGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6
ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1s
b2Z0Lm5ldD47DQo+IEpha3ViIEtpY2luc2tpIDxrdWJhQGtlcm5lbC5vcmc+OyBFcmljIER1bWF6
ZXQgPGVkdW1hemV0QGdvb2dsZS5jb20+Ow0KPiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3Ns
Lm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2VybmVsLm9yZzsgbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgRGF2aWQNCj4gRGVjb3RpZ255IDxkZWNvdEBnb29nbGUuY29tPjsgU2luZ2hhaSwg
QW5qYWxpDQo+IDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+OyBTYW11ZHJhbGEsIFNyaWRoYXIN
Cj4gPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT47IEJyaWFuIFZhenF1ZXogPGJyaWFudnZA
Z29vZ2xlLmNvbT47DQo+IFRhbnRpbG92LCBFbWlsIFMgPGVtaWwucy50YW50aWxvdkBpbnRlbC5j
b20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggNS81XSBpZHBmOiBz
a2lwIHN0b3BwaW5nL29wZW5pbmcNCj4gdnBvcnQgaWYgaXQgaXMgTlVMTCBkdXJpbmcgSFcgcmVz
ZXQNCj4gDQo+IA0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206
IEludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuLWJvdW5jZXNAb3N1b3NsLm9yZz4gT24g
QmVoYWxmDQo+ID4gT2YgTGkgTGkgdmlhIEludGVsLXdpcmVkLWxhbg0KPiA+IFNlbnQ6IFdlZG5l
c2RheSwgSmFudWFyeSA3LCAyMDI2IDI6MDUgQU0NCj4gPiBUbzogTmd1eWVuLCBBbnRob255IEwg
PGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgS2l0c3plbCwNCj4gPiBQcnplbXlzbGF3IDxw
cnplbXlzbGF3LmtpdHN6ZWxAaW50ZWwuY29tPjsgRGF2aWQgUy4gTWlsbGVyDQo+ID4gPGRhdmVt
QGRhdmVtbG9mdC5uZXQ+OyBKYWt1YiBLaWNpbnNraSA8a3ViYUBrZXJuZWwub3JnPjsgRXJpYw0K
PiBEdW1hemV0DQo+ID4gPGVkdW1hemV0QGdvb2dsZS5jb20+OyBpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZw0KPiA+IENjOiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJu
ZWxAdmdlci5rZXJuZWwub3JnOyBEYXZpZA0KPiA+IERlY290aWdueSA8ZGVjb3RAZ29vZ2xlLmNv
bT47IFNpbmdoYWksIEFuamFsaQ0KPiA+IDxhbmphbGkuc2luZ2hhaUBpbnRlbC5jb20+OyBTYW11
ZHJhbGEsIFNyaWRoYXINCj4gPiA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPjsgQnJpYW4g
VmF6cXVleiA8YnJpYW52dkBnb29nbGUuY29tPjsNCj4gTGkNCj4gPiBMaSA8Ym9vbGxpQGdvb2ds
ZS5jb20+OyBUYW50aWxvdiwgRW1pbCBTIDxlbWlsLnMudGFudGlsb3ZAaW50ZWwuY29tPg0KPiA+
IFN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCA1LzVdIGlkcGY6IHNraXAgc3RvcHBp
bmcvb3BlbmluZw0KPiA+IHZwb3J0IGlmIGl0IGlzIE5VTEwgZHVyaW5nIEhXIHJlc2V0DQo+ID4N
Cj4gPiBXaGVuIGFuIGlkcGYgSFcgcmVzZXQgaXMgdHJpZ2dlcmVkLCBpdCBjbGVhcnMgdGhlIHZw
b3J0IGJ1dCBkb2VzIG5vdA0KPiA+IGNsZWFyIHRoZSBuZXRkZXYgaGVsZCBieSB2cG9ydDoNCj4g
Pg0KPiA+ICAgICAvLyBJbiBpZHBmX3Zwb3J0X2RlYWxsb2MoKSBjYWxsZWQgYnkgaWRwZl9pbml0
X2hhcmRfcmVzZXQoKSwNCj4gPiAgICAgLy8gaWRwZl9pbml0X2hhcmRfcmVzZXQoKSBzZXRzIElE
UEZfSFJfUkVTRVRfSU5fUFJPRywgc28NCj4gPiAgICAgLy8gaWRwZl9kZWNmZ19uZXRkZXYoKSBk
b2Vzbid0IGdldCBjYWxsZWQuDQo+ID4gICAgIGlmICghdGVzdF9iaXQoSURQRl9IUl9SRVNFVF9J
Tl9QUk9HLCBhZGFwdGVyLT5mbGFncykpDQo+ID4gICAgICAgICBpZHBmX2RlY2ZnX25ldGRldih2
cG9ydCk7DQo+ID4gICAgIC8vIGlkcGZfZGVjZmdfbmV0ZGV2KCkgd291bGQgY2xlYXIgbmV0ZGV2
IGJ1dCBpdCBpc24ndCBjYWxsZWQ6DQo+ID4gICAgIHVucmVnaXN0ZXJfbmV0ZGV2KHZwb3J0LT5u
ZXRkZXYpOw0KPiA+ICAgICBmcmVlX25ldGRldih2cG9ydC0+bmV0ZGV2KTsNCj4gPiAgICAgdnBv
cnQtPm5ldGRldiA9IE5VTEw7DQo+ID4gICAgIC8vIExhdGVyIGluIGlkcGZfaW5pdF9oYXJkX3Jl
c2V0KCksIHRoZSB2cG9ydCBpcyBjbGVhcmVkOg0KPiA+ICAgICBrZnJlZShhZGFwdGVyLT52cG9y
dHMpOw0KPiA+ICAgICBhZGFwdGVyLT52cG9ydHMgPSBOVUxMOw0KPiA+DQo+ID4gRHVyaW5nIGFu
IGlkcGYgSFcgcmVzZXQsIHdoZW4gdXNlcnNwYWNlIHJlc3RhcnRzIHRoZSBuZXR3b3JrDQo+IHNl
cnZpY2UsDQo+ID4gdGhlIHZwb3J0IGFzc29jaWF0ZWQgd2l0aCB0aGUgbmV0ZGV2IGlzIE5VTEws
IGFuZCBzbyBhIGtlcm5lbCBwYW5pYw0KPiA+IHdvdWxkDQo+ID4gaGFwcGVuOg0KPiA+DQo+ID4g
WyAxNzkxLjY2OTMzOV0gQlVHOiBrZXJuZWwgTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlLCBhZGRy
ZXNzOg0KPiA+IDAwMDAwMDAwMDAwMDAwNzAgLi4uDQo+ID4gWyAxNzkxLjcxNzEzMF0gUklQOiAw
MDEwOmlkcGZfdnBvcnRfc3RvcCsweDE2LzB4MWMwDQo+ID4NCj4gPiBUaGlzIGNhbiBiZSByZXBy
b2R1Y2VkIHJlbGlhYmx5IGJ5IGluamVjdGluZyBhIFRYIHRpbWVvdXQgdG8gY2F1c2UNCj4gYW4N
Cj4gPiBpZHBmIEhXIHJlc2V0LCBhbmQgaW5qZWN0aW5nIGEgdmlydGNobmwgZXJyb3IgdG8gY2F1
c2UgdGhlIEhXIHJlc2V0DQo+IHRvDQo+ID4gZmFpbCBhbmQgcmV0cnksIHdoaWxlIHJ1bm5pbmcg
InNlcnZpY2UgbmV0d29yayByZXN0YXJ0IiBpbg0KPiB1c2Vyc3BhY2UuDQo+ID4NCj4gPiBXaXRo
IHRoaXMgcGF0Y2ggYXBwbGllZCwgd2Ugc2VlIHRoZSBmb2xsb3dpbmcgZXJyb3IgYnV0IG5vIGtl
cm5lbA0KPiA+IHBhbmljcyBhbnltb3JlOg0KPiA+DQo+ID4gWyAgMTgxLjQwOTQ4M10gaWRwZiAw
MDAwOjA1OjAwLjAgZXRoMTogbXR1IG5vdCBjaGFuZ2VkIGR1ZSB0byBubw0KPiB2cG9ydA0KPiA+
IGlubmV0ZGV2IFJUTkVUTElOSyBhbnN3ZXJzOiBCYWQgYWRkcmVzcyAuLi4NCiJpbm5ldGRldiIg
LT4gImluIG5ldGRldiINCg0KPiA+IFsgIDE4MS45MTM2NDRdIGlkcGYgMDAwMDowNTowMC4wIGV0
aDE6IG5vdCBzdG9wcGluZyB2cG9ydCBiZWNhdXNlIGl0DQo+ID4gaXMgTlVMTCBbICAxODEuOTM4
Njc1XSBpZHBmIDAwMDA6MDU6MDAuMCBldGgxOiBtdHUgbm90IGNoYW5nZWQgZHVlDQo+IHRvDQo+
ID4gbm8gdnBvcnQgaW4gbmV0ZGV2IC4uLg0KPiA+IFsgIDI0Mi44NDk0OTldIGlkcGYgMDAwMDow
NTowMC4wIGV0aDE6IG5vdCBvcGVuaW5nIHZwb3J0IGJlY2F1c2UgaXQNCj4gaXMNCj4gPiBOVUxM
IC4uLg0KPiA+IFsgIDMwNC4yODkzNjRdIGlkcGYgMDAwMDowNTowMC4wIGV0aDA6IG5vdCBvcGVu
aW5nIHZwb3J0IGJlY2F1c2UgaXQNCj4gaXMNCj4gPiBOVUxMDQo+ID4NCj4gPiBTaWduZWQtb2Zm
LWJ5OiBMaSBMaSA8Ym9vbGxpQGdvb2dsZS5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYyB8IDEyICsrKysrKysrKysrKw0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lkcGYvaWRwZl9saWIuYw0KPiA+IGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaWRwZi9pZHBmX2xpYi5jDQo+ID4gaW5kZXggNTNiMzE5ODk3MjJh
Ny4uYTlhNTU2NDk5MjYyYiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9p
bnRlbC9pZHBmL2lkcGZfbGliLmMNCj4gPiArKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZHBmL2lkcGZfbGliLmMNCj4gPiBAQCAtMTAyMSw2ICsxMDIxLDggQEAgc3RhdGljIHZvaWQg
aWRwZl92cG9ydF9zdG9wKHN0cnVjdCBpZHBmX3Zwb3J0DQo+ID4gKnZwb3J0LCBib29sIHJ0bmwp
DQo+ID4gICAqLw0KPiA+ICBzdGF0aWMgaW50IGlkcGZfc3RvcChzdHJ1Y3QgbmV0X2RldmljZSAq
bmV0ZGV2KSAgew0KPiA+ICsJaWYgKCFuZXRkZXYpDQo+ID4gKwkJcmV0dXJuIDA7DQo+ID4gIAlz
dHJ1Y3QgaWRwZl9uZXRkZXZfcHJpdiAqbnAgPSBuZXRkZXZfcHJpdihuZXRkZXYpOw0KPiA+ICAJ
c3RydWN0IGlkcGZfdnBvcnQgKnZwb3J0Ow0KPiA+DQo+ID4gQEAgLTEwMjksOSArMTAzMSwxNCBA
QCBzdGF0aWMgaW50IGlkcGZfc3RvcChzdHJ1Y3QgbmV0X2RldmljZQ0KPiA+ICpuZXRkZXYpDQo+
ID4NCj4gPiAgCWlkcGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ID4gIAl2cG9ydCA9IGlk
cGZfbmV0ZGV2X3RvX3Zwb3J0KG5ldGRldik7DQo+ID4gKwlpZiAoIXZwb3J0KSB7DQo+ID4gKwkJ
bmV0ZGV2X2VycihuZXRkZXYsICJub3Qgc3RvcHBpbmcgdnBvcnQgYmVjYXVzZSBpdCBpcw0KPiA+
IE5VTEwiKTsNCj4gUGxlYXNlIGRvbid0IGZvcmdldCB0byBhZGQgdHJhaWxpbmcgJ1xuJy4NCj4g
DQo+ID4gKwkJZ290byB1bmxvY2s7DQo+ID4gKwl9DQo+ID4NCj4gPiAgCWlkcGZfdnBvcnRfc3Rv
cCh2cG9ydCwgZmFsc2UpOw0KPiA+DQo+ID4gK3VubG9jazoNCj4gPiAgCWlkcGZfdnBvcnRfY3Ry
bF91bmxvY2sobmV0ZGV2KTsNCj4gPg0KPiA+ICAJcmV0dXJuIDA7DQo+ID4gQEAgLTIzMDEsNiAr
MjMwOCwxMSBAQCBzdGF0aWMgaW50IGlkcGZfb3BlbihzdHJ1Y3QgbmV0X2RldmljZQ0KPiA+ICpu
ZXRkZXYpDQo+ID4NCj4gPiAgCWlkcGZfdnBvcnRfY3RybF9sb2NrKG5ldGRldik7DQo+ID4gIAl2
cG9ydCA9IGlkcGZfbmV0ZGV2X3RvX3Zwb3J0KG5ldGRldik7DQo+ID4gKwlpZiAoIXZwb3J0KSB7
DQo+ID4gKwkJbmV0ZGV2X2VycihuZXRkZXYsICJub3Qgb3BlbmluZyB2cG9ydCBiZWNhdXNlIGl0
IGlzDQo+ID4gTlVMTCIpOw0KPiBQbGVhc2UgZG9uJ3QgZm9yZ2V0IHRvIGFkZCB0cmFpbGluZyAn
XG4nLCBoZXJlIHRvby4NCj4gDQo+ID4gKwkJZXJyID0gLUVGQVVMVDsNCj4gPiArCQlnb3RvIHVu
bG9jazsNCj4gPiArCX0NCj4gPg0KPiA+ICAJZXJyID0gaWRwZl9zZXRfcmVhbF9udW1fcXVldWVz
KHZwb3J0KTsNCj4gPiAgCWlmIChlcnIpDQo+ID4gLS0NCj4gPiAyLjUyLjAuMzUxLmdiZTg0ZWVk
NzllLWdvb2cNCj4gDQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2Fu
ZHIubG9rdGlvbm92QGludGVsLmNvbT4NCg0K
