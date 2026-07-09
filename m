Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q8wLN+hrT2rYgQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:37:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2190872F07C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 09 Jul 2026 11:37:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=5vNwiHgZ;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF46960EEE;
	Thu,  9 Jul 2026 09:37:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PS38hgq8X2sn; Thu,  9 Jul 2026 09:37:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDD0160EE9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783589861;
	bh=lLcv+UEZFjTv4dftuP6o0Bf7vf78sru5IeTjn/Q2jE8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5vNwiHgZ9LVkPlYZuXgtckQSDll534q78PSlfIoGUTk4GMqknbCcrAgMCavIIpuB7
	 tZsxLKn6RQkjA2bzQQNRGvci4V18Zf8uwPAp55L07XpzfmRaEadetq6Xp/JI/MXR5d
	 Ob8OluVv5VMwDUoqMfmxgN/OnaTMzi8p0Z0T4tPNjO/lAfFbIneI4hDvN/U51c1PHG
	 0CAM4Ok1D/w8Fpb3gEbd4jcNcLwKxgGEpeRAW3HL/YygdTkJP/YuqqJ4WACP7/umVP
	 kry3OZXmqoBDVDT+BCFlczMWQSfyiEWynlndg0A9sIFyZVKH2xj0C+uYYibY7waF5R
	 DUyNoYNL+6RFw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDD0160EE9;
	Thu,  9 Jul 2026 09:37:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB583320
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:37:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CCF7240D9B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:37:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id duEgFoavpeTa for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Jul 2026 09:37:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C5FBC40D92
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C5FBC40D92
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C5FBC40D92
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Jul 2026 09:37:39 +0000 (UTC)
X-CSE-ConnectionGUID: /ZdBsuuTR46PPdIo//ldpA==
X-CSE-MsgGUID: IgE20p+3QK2MCs8Czic5xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="94872768"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="94872768"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:37:39 -0700
X-CSE-ConnectionGUID: iCs6p57wSs+THQRvS3HzPg==
X-CSE-MsgGUID: vB1FJXyKTISsTjJGmAcwUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="284645756"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 02:37:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:37:38 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 02:37:38 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.27)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 02:37:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y7+cjoK8fBGqlUmfdL+QJ0n+mtBJ9xFNT4R7/ZdwISKkT5SSvtGX3dQSdkor/EK2FBSGKeUPAyUfBchXEnnEe3QS3v4AfLKdxNEFlOnXljfI00mvj5eGGDGrc7xd08tyQTdtA2ExZSypd/wu8bV8bpjzQsWQwVW/DJMXIYIhQBMaJ7rhqBewX2fuihZF6DNzVGjpK11i+dvWhycsEMZoE0Dyvv5mg7SYPqwH8v8p/gTyHxRVnLkfZNDUz762OfB+LAZEo0yzucOOADidDUtZz1Dlha+6RY/4ieU80wxF1l7nynhJtYjz3GfV0tyBdJ3Dh6WIl+oTQu0oBcz3V6vqPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLcv+UEZFjTv4dftuP6o0Bf7vf78sru5IeTjn/Q2jE8=;
 b=B48GMXR7o0LlCvCMBl1kAMvKw7ZHO6gTrGEQaEOGst9PfO+DO+O0TCUC/S3cF76sA0Ng9ojFZTRqekvXnqIAKVQ0iE5/oX7jeyfi+yFnDfwglblxSwQksJoNzW9vl5NjjAoPrxdwaqWmInCjJ4YELyLAUlXfr1TphKYFLzDfSCuYHa76cqkU2JkPcLYQJaXiJ5buU1LSVqY91LxoECIDHJUKks2hEByvQs2sVPzj6PuP7+a+xY4v3I1gikOdTvdG/pOYEvPXrvkEopaJe/VSPnyaTXdseEvmuETfuvRHGm5pP4VnhMH7sp8B5PnoSIxuywCWUB9ujUWmToDRMyZh9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by IA3PR11MB9422.namprd11.prod.outlook.com (2603:10b6:208:57e::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.15; Thu, 9 Jul
 2026 09:37:27 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0181.009; Thu, 9 Jul 2026
 09:37:27 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Simon Horman <horms@kernel.org>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
Thread-Index: AQHdCgYiWmanBfClLkOeQCRi/Q496bZj4wGAgAEV4OA=
Date: Thu, 9 Jul 2026 09:37:27 +0000
Message-ID: <PH0PR11MB59029D8B78557F03143546D3F0FE2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260702091553.57112-6-jedrzej.jagielski@intel.com>
 <20260708170223.1514429-1-horms@kernel.org>
In-Reply-To: <20260708170223.1514429-1-horms@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|IA3PR11MB9422:EE_
x-ms-office365-filtering-correlation-id: 50d6f399-9b78-486d-3f96-08dedd9db06b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|38070700021|3023799007|4143699003|5023799004|11063799006|56012099006|6133799003|18002099003|22082099003;
x-microsoft-antispam-message-info: YbMj0OoacvfBB6AvJxqSnKHPr5wlhHs4wRFh4lE83zsdwsELn7IUB1d8jNPuQarlURCaBd7vMQ2yChbG3J0GPMtkDHseCFK7nKnaXaG6zZh0sJFP5+C90lMTj81A3Z5uefaRDwVNSQMJuwRPgPtqQRTP0voYUQ8rrh1+ZyQvGr68YGqUDHB49IrJcBk/wqH1DrfvfO5z+tsDqlK7giTchylDbjzKOd0sq908wJdWXTiXUGKaAY5vt0851TRpMqg95MzAuxytqrZgBPnDwpILaZgj6ESlIxehaHoPDYB/oaxVjbOs+QgWu3E//sahP0hcLZlldXz3l555iRlrDosbFMtpJoGT+497NfWhzBu6GsAphEbbGxTciqx8+O7XAO3G1n7QvnvImbS9GknRFkGzehoRlDJpOWm8OJWVcHuW3+O9ZacG3MCAbadqaj58uG9VSnykIJjkXj9NpZsG+IBsun7sXfSnQ5iE4BrufiBr0ImfmrFSPkpH53bIO50dYu3qbbpWm0FP4WZKcOa/QsQuMfwt8WIng5BI0JT6ugZ8s1NctEvtDcYHfi8iNk//cTaXqeMBPrzzO1uV5mdDxSpwFnQenCaNFE4IZJwAb1o+h63KrHGoVI2mnCgv1XwOH0cLlTOlX09EOSwGAMp66q10Qqe2zlnDSD9mLivmvtutkes=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(38070700021)(3023799007)(4143699003)(5023799004)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDhndTdUcWRIckxMSmlDbHpaZU5XY3Uva0xyRzlnWllLY24yalBGUnRNNDRL?=
 =?utf-8?B?Rk9scEN0S1VpNDNxMXdRK0JqdGdrNlJCMjViaWJuSjgwNDFuYUFERldRenRL?=
 =?utf-8?B?VWlLY09YbTlOSWJiM3lTMDVrbzN4UU02cU01Q2V6WFVtblhRMWRHbTRrRTBt?=
 =?utf-8?B?VWkxMEorNXBGOTl1QWZsUllrdklIaWFNdG9FaU4zcHpZWVNIN1FVYTN6ZGx4?=
 =?utf-8?B?UXdTa052OWJwdi8vamdreERuVUI0S0dPbEY3d09KeE81RHJieFFjNkMrNmpO?=
 =?utf-8?B?Q1B6SlBSZjNTaXFnbVhqR0xnL2VmRkw4ckhxekNvcTBjZlJyK04xRVJMTmt4?=
 =?utf-8?B?ekZlbjVLOFJBRWxjNExhM0FCaURlbnpMNnBBUnFOWmJLT1JGaS80Z0M5SHd1?=
 =?utf-8?B?V3ZuZ0ZDMXh5d3FKM0twcWJhRElENzE3SGlmRlIxczJISGNUMGM4WWVZUzAr?=
 =?utf-8?B?QVRUTjhtU2NoeFIzTk05WDB4UlIrTWZYWGFpZ0hpeVltcWEvYVdhamU0U3hY?=
 =?utf-8?B?WlVoZkdyc3B6bjJkSFJLUmFqK0Q0U0ZuRVoyTmJiN2UrbkQyeS9CbkJUQVQ0?=
 =?utf-8?B?RHN4YTRZSG5oZlhrVndkYTduYVpUbjh2c0FzaVo5OXlMTUNqRExvMHI1ZG8z?=
 =?utf-8?B?RTlNQkZEeWJHeHoySyt0RFlscGtrUCs2OUtrblIvdXlieEJ0MXZCbzcrMk9i?=
 =?utf-8?B?VXlCOGtac21JVUVBQlVKQnFwejN1NmcrMHZLUjlXVmtCcmhIZmpxaTNWYnhV?=
 =?utf-8?B?VDFzR1RISmc0MjE4U3U1aHBLU1BscXk3NFltcjAyNEh2OWZUN2Z6OGhpK1pj?=
 =?utf-8?B?TTNhQmcvTGZYQnZMYVVzdTdoRnU0aUIyNlh1ajQ1cTZIN0RHOXp2MGNvem4r?=
 =?utf-8?B?aXpwelNzWFp4WEozM29mYkl4dTUyTUM2WjBQMGxmOURqekFEUEZ4MWdySVZB?=
 =?utf-8?B?MEtEc25pSmdWU1M2aDY2ZUFZT0F1bHhjZFJqUkJzY0FwLzR6Z05laVd0SG5z?=
 =?utf-8?B?OEVndzRkQXV5K1BsSWlVNmhUbmVQSUR1T09QTVpJei94LzlueWVTWFBPQmV6?=
 =?utf-8?B?TGRtcmM2MjJ0RnZPeVp5dkQraUtSSjVnQ24xZlJoOG1XeG01R1VwQmpoUEVI?=
 =?utf-8?B?TlBDL0VCWTBMdlZDTTNDWUJ2RmlxYXdqV2s5T1daTUhad3Q5djRNZklIR0pX?=
 =?utf-8?B?cyt1TTJiMWhRNVd0THBtT0YxSDVUYkhic0I0WkRZNmdOVm5FQ3VWclppYWp6?=
 =?utf-8?B?SkVycGQxL2V2ckVlS1FYOWErOTJJdTNtckwyNW5seWovMmRjZG1mVGVsS3Y5?=
 =?utf-8?B?Rjh4WE5pbThmT2FHT3duNjcvWlZtSjlFbTNJeENkNHB0eG5IemNxK3FFaTlO?=
 =?utf-8?B?SktCL3VRUlBqczdNa2xQT3hLWGtvbjVMWDVNWStQbGtuSWxhYng3WDZ6WWxB?=
 =?utf-8?B?ZVcrVUU2VDVnV2grWGptQWJ3eFkxVUJmUFJlRU9sTnRUWFhhc2s0S0Qvd0da?=
 =?utf-8?B?K1UxTFRsamVKQy8zWWxMc0ZTTTQ2U1VZMzdsTVBzaEk3d0lkTjNBZ0FML2tE?=
 =?utf-8?B?eDZVa3lxUW5wTHBQL3NWNkRoSDVwc0pWU3Q2R3phV1ZpUDQ2RHRCTDQvcXU3?=
 =?utf-8?B?d1JwaDBxQjV3dkFTUG53WHhQRUZQbk51UDdOaE1HdG9FMXBVUThEN1hBLzNp?=
 =?utf-8?B?Y1V0dmozcjk2anZ1cjJId251N2wxYiswL050U0VFUGdBV1NJZm9iOVdESDdI?=
 =?utf-8?B?RzFoYzlPRkdEd1FpeURQQ0prciszd2ZING9FUnlpT05IUnpXTWw4ZnZGOHR4?=
 =?utf-8?B?TzJjTk5WcG1ScWlkL2JxTFFYOWZCay9CNy9Na216UHRzd295a0VLekRTZk9a?=
 =?utf-8?B?ZjFrUWNzektVbzJPRDN3b1BLWVRQU2hNaUpEaEQ5MTVESkxwd0thVkNlT1NY?=
 =?utf-8?B?NG1aYllyeFMyeHQ0TWdpQ1hMeWY1MXZDY29VTGFoSEZNaEp0RkViR3FzNTI5?=
 =?utf-8?B?TEhXZ1RjVUF3c1NnLzRvdXFseHBEOHNVOU96anFNTEtHY0RjYTJFd0ViYmxS?=
 =?utf-8?B?WXJQUUt1bjdsay80MW5nc2h6NWtyRzlIakZRUVhOTHRlSnpkT2tRNnRDZ0x2?=
 =?utf-8?B?eHBhd3BHblpiY1AwV2hESXNyYTdWMkRnbE9DOU04YkFub29wcjhoZ3hRcGJX?=
 =?utf-8?B?SjRlYnQvYXltQkc1UC9EMkZxaysyakFBRXZRaGs5ckkrRDVleGZaaUVhejNy?=
 =?utf-8?B?SEFuZzNZeE9KL08vU0dtNFJLbFh5S3p5V0t2ZmVSd0RXUE8vS1lISWtOVmVO?=
 =?utf-8?B?L0dhRFdMYm5PdFJWZk43MGdIYVpyU01YS2RuVzlJMVl1QW02NnlaQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: du6obsznchPwHBCMLE1P6G2junjip89NjIi+Vpbqvx7BG6WEPTk6iyldn2Y2+ojbDDfR8Xrft+U4/haAY2IXIi53A6B1YCWEteXjHswyYqetQBeP91Yg3TtcL1xvo1Kdfc/duxAdF4At0UuYC4TmUlU7tXzzqXAXSs1pChWqTElQqKU1srte5/b8yIF66zbh0h9V2TatujZmjYLYkSQLOQnhpzp0eGTdFncT1+liD/Vu8tEP0yWFJLebl3Qm+CEa6F3WcYYpqoCfkpPUaMEtH/JF7VVj32mMY2aRickM5L/xM3PCkZTsIptz+jM3jaZmOo/HuBVpSeUhPDuhMVK5bA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50d6f399-9b78-486d-3f96-08dedd9db06b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2026 09:37:27.2000 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WhaA+LCswWcizNEqevGwYI1lKd87YCSPm8lIby6chyVy8236M0oH7i4gQ3CJPLFEcG52tZeFFO6p80pRCrCo0Q/jP2NBCoJ9lRBzn0vU8gE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9422
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783589860; x=1815125860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lLcv+UEZFjTv4dftuP6o0Bf7vf78sru5IeTjn/Q2jE8=;
 b=bq6HtB8JK8l3+4xBUKVQ3sPYvl6SZeb4aBe8GQdDB4SozotFwSRJrJWB
 Jtx9jSKrFAGRwz0ehdeHFfuLZ6bgOYcka6OHtldwarCzqCCpw1NXyb4lK
 egppM3gwn/wIbSdXMZeA1JpAqPicAIILDvuDA0wb1C+wRveGavNR86l5c
 54oAKAlxo6uG9c66DFvjzQ/4q/Qro3IIa4+rWYXRKWEKOTP4/MwC6ZYPV
 uVf6hXpCocd7SDsXl+gvJ2rkxBsUGEnIV26kc2eCEVjZ07ArIuwi6Rvqn
 51a9JpVYKAOhA2BRGZy7dxhl2M8dKdXA/dzbiFYkh4f3/rcPfD19JkZkr
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=bq6HtB8J
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 5/6] ixgbe: E610: add MAC
 address runtime refresh
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:horms@kernel.org,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:from_mime,osuosl.org:from_smtp,osuosl.org:dkim,linux.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2190872F07C

RnJvbTogU2ltb24gSG9ybWFuIDxob3Jtc0BrZXJuZWwub3JnPiANClNlbnQ6IFdlZG5lc2RheSwg
SnVseSA4LCAyMDI2IDc6MDIgUE0NCg0KPlRoaXMgaXMgYW4gQUktZ2VuZXJhdGVkIHJldmlldyBv
ZiB5b3VyIHBhdGNoLiBUaGUgaHVtYW4gc2VuZGluZyB0aGlzDQo+ZW1haWwgaGFzIGNvbnNpZGVy
ZWQgdGhlIEFJIHJldmlldyB2YWxpZCwgb3IgYXQgbGVhc3QgcGxhdXNpYmxlLg0KPkZ1bGwgcmV2
aWV3IGF0OiBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4LmRldi9zYXNoaWtvLw0KPi0tLQ0K
Pml4Z2JlOiBFNjEwOiBhZGQgTUFDIGFkZHJlc3MgcnVudGltZSByZWZyZXNoDQo+DQo+VGhpcyBj
aGFuZ2UgcG9sbHMgUkFSMCBlYWNoIHNlcnZpY2UtdGFzayBjeWNsZSBvbiBFNjEwIGFuZCB1cGRh
dGVzDQo+bmV0ZGV2LT5kZXZfYWRkciwgaHctPm1hYy5hZGRyIGFuZCBtYWNfdGFibGVbMF0uYWRk
ciB3aGVuIGZpcm13YXJlIGhhcw0KPmFsdGVyZWQgdGhlIE1BQy4gIEEgcmVmcmVzaCBpcyBhbHNv
IGludm9rZWQgZnJvbSBpeGdiZV9yZXNldCgpIHNvIHRoZQ0KPmFkZHJlc3Mgc3Vydml2ZXMgUkFS
MCBjbGVhcmluZyBkdXJpbmcgaW5pdF9odygpLg0KPg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVy
bmV0L2ludGVsL2l4Z2JlL2l4Z2JlX21haW4uYw0KPj4gaW5kZXggZGY2OThkZGQwOGJlLi5lYjA1
YzJmOTgyZTggMTAwNjQ0DQo+PiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdi
ZS9peGdiZV9tYWluLmMNCj4+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2Jl
L2l4Z2JlX21haW4uYw0KPj4gQEAgLTY0NjQsNiArNjQ2NCwzNiBAQCB2b2lkIGl4Z2JlX2Rpc2Fi
bGVfdHgoc3RydWN0IGl4Z2JlX2FkYXB0ZXIgKmFkYXB0ZXIpDQo+PiAgCX0NCj4+ICB9DQo+Pg0K
Pj4gK3N0YXRpYyB2b2lkIGl4Z2JlX21hY19hZGRyX3JlZnJlc2goc3RydWN0IGl4Z2JlX2FkYXB0
ZXIgKmFkYXB0ZXIpDQo+PiArew0KPj4gKwlzdHJ1Y3QgbmV0X2RldmljZSAqbmV0ZGV2ID0gYWRh
cHRlci0+bmV0ZGV2Ow0KPj4gKwlzdHJ1Y3QgaXhnYmVfaHcgKmh3ID0gJmFkYXB0ZXItPmh3Ow0K
Pj4gKwlpbnQgZXJyOw0KPj4gKw0KPj4gKwlpZiAoaHctPm1hYy50eXBlICE9IGl4Z2JlX21hY19l
NjEwKQ0KPj4gKwkJcmV0dXJuOw0KPj4gKw0KPj4gKwkvKiBmZXRjaCBhZGRyZXNzIHN0b3JlZCBj
dXJyZW50bHkgaW4gUkFSMCBpbiBjYXNlIHRoZSBhZGRyIGhhcyBiZWVuDQo+PiArCSAqIGFsdGVy
ZWQgYnkgRlc7IGlmIHNvLCB1c2UgaXQgYXMgdGhlIGRlZmF1bHQgb25lDQo+PiArCSAqLw0KPj4g
KwllcnIgPSBody0+bWFjLm9wcy5nZXRfbWFjX2FkZHIoaHcsIGh3LT5tYWMuYWRkcik7DQo+PiAr
CWlmIChlcnIpIHsNCj4+ICsJCWVfZGV2X3dhcm4oIkNhbm5vdCBnZXQgTUFDIGFkZHJlc3NcbiIp
Ow0KPj4gKwkJcmV0dXJuOw0KPj4gKwl9DQo+DQo+W0hpZ2hdDQo+Q2FuIHRoaXMgb3ZlcndyaXRl
IGh3LT5tYWMuYWRkciB3aXRoIHRyYW5zaWVudC9nYXJiYWdlIFJBUjAgY29udGVudHMNCj5iZWZv
cmUgdmFsaWRhdGlvbj8gIGl4Z2JlX2dldF9tYWNfYWRkcl9nZW5lcmljKCkgdW5jb25kaXRpb25h
bGx5IGNvcGllcw0KPnRoZSByYXcgSVhHQkVfUkFIKDApL0lYR0JFX1JBTCgwKSB2YWx1ZXMgaW50
byB0aGUgYnVmZmVyIHBhc3NlZCBieSB0aGUNCj5jYWxsZXIgYW5kIGFsd2F5cyByZXR1cm5zIDAu
ICBIZXJlIHRoZSBjYWxsZXIgcGFzc2VzIGh3LT5tYWMuYWRkcg0KPml0c2VsZiBhcyB0aGUgZGVz
dGluYXRpb246DQo+DQo+ICAgIGVyciA9IGh3LT5tYWMub3BzLmdldF9tYWNfYWRkcihodywgaHct
Pm1hYy5hZGRyKTsNCj4NCj5zbyBhbnkgdHJhbnNpZW50IFJBUjAgdmFsdWUgKGFsbCB6ZXJvcyB3
aGlsZSBmaXJtd2FyZSBpcyByZXdyaXRpbmcgdGhlDQo+cmVnaXN0ZXIsIGdhcmJhZ2UgZHVyaW5n
IHRoZSBQQ0kgc2xvdC1yZXNldC9yZXN1bWUgd2luZG93LCBhDQo+bXVsdGljYXN0L3plcm8gcGF0
dGVybiBpbiBmbGlnaHQpIHNpbGVudGx5IGNsb2JiZXJzIGh3LT5tYWMuYWRkci4NCj4NCj5UaGUg
aXNfdmFsaWRfZXRoZXJfYWRkcigpIGNoZWNrIGJlbG93IHByZXZlbnRzIHB1Ymxpc2hpbmcgdG8g
bmV0ZGV2LA0KPmJ1dCBpdCBkb2VzIG5vdCByZXN0b3JlIHRoZSBwcmV2aW91cyBody0+bWFjLmFk
ZHIuDQoNCkxvb2tpbmcgdGhpcyB3YXkgbWFjLmFkZHIgY2EgYmUgdHJlYXRlZCBhcyBhIHNvcnQg
b2YgdHJhbnNpZW50IGJ1Zi4NCkl0IGlzIG5vdCBwcm9wYWdhdGVkIGZ1cnRoZXIgd2l0aG91dCBh
ZGRyIGNoZWNrLCB3aGF0IHdhcyBub3RpY2VkIGluIHRoYXQNCnJlcG9ydC4NClRoZW4gaWYgdHJh
bnNpZW50IHZhbHVlIHdvdWxkIGJlIHJlYWxseSBmZXRjaGVkIGZyb20gdGhlIGRydmljZSByZWdp
c3RlciwNCml0IGlzIGluc3RhbnRseSBvdmVyd3JpdHRlbiBpbiBuZXh0IHNlcnZpY2UgdGFzayBy
dW4gd2l0aCBjb3JyZWN0IGFkZHIgb25jZQ0KcmVnaXN0ZXIgaXMgd3JpdHRlbiB3aXRoIGl0DQoN
Cj4NCj5Db25zaWRlciByZWFkaW5nIGludG8gYSBsb2NhbCB1OCBidWZbRVRIX0FMRU5dLCB2YWxp
ZGF0aW5nIHRoYXQsIGFuZA0KPm9ubHkgdGhlbiBjb3B5aW5nIGludG8gaHctPm1hYy5hZGRyLg0K
Pg0KPkNvbXBvdW5kaW5nIHRoYXQsIGl4Z2JlX2dldF9tYWNfYWRkcl9nZW5lcmljKCkncyBvd24g
Y29tbWVudCBzdGF0ZXMgIkENCj5yZXNldCBvZiB0aGUgYWRhcHRlciBtdXN0IGJlIHBlcmZvcm1l
ZCBwcmlvciB0byBjYWxsaW5nIHRoaXMgZnVuY3Rpb24NCj5pbiBvcmRlciBmb3IgdGhlIE1BQyBh
ZGRyZXNzIHRvIGhhdmUgYmVlbiBsb2FkZWQgZnJvbSB0aGUgRUVQUk9NIGludG8NCj5SQVIwIiwg
YnV0IGluIGl4Z2JlX3Jlc2V0KCkgdGhlIHJlZnJlc2ggcnVucyBiZWZvcmUgaW5pdF9odygpLiAg
Q2FuDQo+dGhpcyBvcmRlcmluZyB5aWVsZCBhIHN0YWxlL2ludmFsaWQgUkFSMCByZWFkIG9uIHRo
ZSByZXNldCBwYXRoPw0KDQpUaGlzIGNvbW1lbnQgaXMgbm90IGxvbmdlciB2YWxpZCBhcyBwcmV2
aW91cyBmYW1pbGllcyBkaWQgbm90IHN1cHBvcnQNCm1hYyBhZGRyIHJ1bnRpbWUgY2hhbmdlIGZy
b20gdGhlIG1nbXQgc2lkZS4gSW4gc3VjaCBjYXNlIGNvbnRlbnQgb2YgdGhlDQpyZWdpc3RlciBp
cyBlc3RhYmxpc2hlZC4NCg0KPg0KPlRoZSBjb3JydXB0aW9uIGlzIHRoZW4gb2JzZXJ2YWJsZTog
YWZ0ZXIgdGhlIHJlZnJlc2ggcmV0dXJucywNCj5peGdiZV9yZXNldCgpIHByb2NlZWRzIHRocm91
Z2ggaW5pdF9odygpIGFuZCBpeGdiZV9tYWNfc2V0X2RlZmF1bHRfZmlsdGVyKCkNCj5tZW1jcHko
KXMgaHctPm1hYy5hZGRyIGludG8gbWFjX3RhYmxlWzBdLmFkZHIgYW5kIHByb2dyYW1zIGl0IHZp
YQ0KPnNldF9yYXIoKSDigJQgYSBjb3JydXB0ZWQgaHctPm1hYy5hZGRyIGNhbiB0aGVyZWZvcmUg
ZW5kIHVwIHdyaXR0ZW4gdG8NCj5oYXJkd2FyZS4NCg0KSXQgd2FzIGFscmVhZHkgaW4gdGhlIEhX
IC0gdGhhdCdzIHdoZXJlIHRoZSBtYWMgYWRkciBpcyB0YWtlbiBmcm9tLg0KDQo+DQo+PiArDQo+
PiArCWlmIChldGhlcl9hZGRyX2VxdWFsKG5ldGRldi0+ZGV2X2FkZHIsIGh3LT5tYWMuYWRkcikg
fHwNCj4+ICsJICAgICFpc192YWxpZF9ldGhlcl9hZGRyKGh3LT5tYWMuYWRkcikpDQo+PiArCQly
ZXR1cm47DQo+PiArDQo+PiArCUFTU0VSVF9SVE5MKCk7DQo+PiArDQo+PiArCWV0aF9od19hZGRy
X3NldChuZXRkZXYsIGh3LT5tYWMuYWRkcik7DQo+PiArCWV0aGVyX2FkZHJfY29weShhZGFwdGVy
LT5tYWNfdGFibGVbMF0uYWRkciwgaHctPm1hYy5hZGRyKTsNCj4+ICsNCj4+ICsJY2FsbF9uZXRk
ZXZpY2Vfbm90aWZpZXJzKE5FVERFVl9DSEFOR0VBRERSLCBuZXRkZXYpOw0KPj4gK30NCj4NCj5b
TWVkaXVtXQ0KPkRvZXMgdGhpcyBsZWF2ZSBody0+bWFjLnBlcm1fYWRkciwgbmV0ZGV2LT5wZXJt
X2FkZHIgYW5kDQo+bmV0ZGV2LT5hZGRyX2Fzc2lnbl90eXBlIGluY29uc2lzdGVudCB3aXRoIHRo
ZSBuZXdseSBwdWJsaXNoZWQNCj5hZGRyZXNzPyAgRXZlcnkgb3RoZXIgTUFDLWhhbmRsaW5nIHNp
dGUgaW4gaXhnYmUgKHByb2JlLA0KPml4Z2JlX3Jlc2V0X2h3X2U2MTAsIGFuZCB0aGUgZXF1aXZh
bGVudCBmbG93cyBvbiA4MjU5OC84MjU5OS9YNTQwL1g1NTApDQo+d3JpdGVzIFJBUjAgaW50byBo
dy0+bWFjLnBlcm1fYWRkci4gIEFmdGVyIGZpcm13YXJlIGFsdGVycyB0aGUgTUFDIGF0DQo+cnVu
dGltZSwgcGVybV9hZGRyIHdpbGwga2VlcCByZXBvcnRpbmcgdGhlIHByZS1jaGFuZ2UgdmFsdWUs
IHNvDQo+Y29uc3VtZXJzIHN1Y2ggYXMgZXRodG9vbCAtUCwgYm9uZGluZyBhbmQgbmV0bGluayBw
ZXJtLWFkZHJlc3MNCj5hdHRyaWJ1dGVzIHdpbGwgcmVwb3J0IHRoZSBzdGFsZSBhZGRyZXNzIHdo
aWxlIE5FVF9BRERSX1BFUk0gaXMgc3RpbGwNCj5hZHZlcnRpc2VkIGZvciB3aGF0IGlzIG5vdyBl
ZmZlY3RpdmVseSBhIHJ1bnRpbWUtYXNzaWduZWQgTUFDLg0KDQpJTUhPIHBlcm1fYWRkcmVzcyBz
aG91bGQgbm90IGJlIGNoYW5nZWQgYXMgdGhlIG5hbWUgc3RhdGVzOyBpdCBjYW4gYmUNCnN0aWxs
IHJlc3RvcmVkIGlmIG5lZWRlZA0KRXZlbiBhZnRlciBtYWMgYWRkciBjaGFuZ2UgdXNpbmcgc29t
ZSBtZ210IHRvb2wsIHRoZSBmYWJyaWMgbWFjIGFkZHINCnN0aWxsIHN0YXlzIHRoZSBzYW1lDQoN
Cj4NCj5bTWVkaXVtXQ0KPlRoaXMgdW5jb25kaXRpb25hbGx5IHRyZWF0cyBSQVIwIChvd25lZCBi
eSBmaXJtd2FyZS9NR01UKSBhcw0KPmF1dGhvcml0YXRpdmUgYW5kLCBvbiB0aGUgbmV4dCBzZXJ2
aWNlLXRhc2sgdGljaywgc2lsZW50bHkgb3ZlcndyaXRlcw0KPmFueSBNQUMgcHJldmlvdXNseSBj
b25maWd1cmVkIHZpYSAiaXAgbGluayBzZXQgZGV2IFggYWRkcmVzcyAuLi4iOg0KPg0KPiAgICBl
dGhfaHdfYWRkcl9zZXQobmV0ZGV2LCBody0+bWFjLmFkZHIpOw0KPiAgICBldGhlcl9hZGRyX2Nv
cHkoYWRhcHRlci0+bWFjX3RhYmxlWzBdLmFkZHIsIGh3LT5tYWMuYWRkcik7DQo+ICAgIGNhbGxf
bmV0ZGV2aWNlX25vdGlmaWVycyhORVRERVZfQ0hBTkdFQUREUiwgbmV0ZGV2KTsNCj4NCj5ObyBs
b2cgbGluZSwgbm8gYXJiaXRyYXRpb24gd2l0aCBhbiBhZG1pbi1zZXQgYWRkcmVzcywgbm8gb3B0
LW91dC4NCj5ORVRERVZfQ0hBTkdFQUREUiBpcyBhbHNvIGVtaXR0ZWQgZnJvbSBhIHBvbGxpbmcg
Y29udGV4dCwgd2hpY2ggbWVhbnMNCj51c2Vyc3BhY2UgKHVkZXYsIE5ldHdvcmtNYW5hZ2VyLCBi
cmlkZ2luZywgYm9uZGluZykgY2FuIHJlY2VpdmUNCj5zcG9udGFuZW91cyBhZGRyZXNzLWNoYW5n
ZSBldmVudHMgb24gRTYxMCB3aXRoIG5vIGNvcnJlbGF0aW5nDQo+YWRtaW5pc3RyYXRpdmUgYWN0
aW9uLiAgU2hvdWxkIHRoZSBjb21taXQgbWVzc2FnZSBkZXNjcmliZSB0aGlzIHVBUEkNCj5iZWhh
dmlvciBjaGFuZ2UgKCJpcCBsaW5rIiBubyBsb25nZXIgcHJvZHVjZXMgYSBwZXJzaXN0ZW50IE1B
QyBvbg0KPkU2MTApLCBhbmQgc2hvdWxkIHRoZXJlIGJlIHNvbWUgZm9ybSBvZiBhcmJpdHJhdGlv
biBvciBsb2dnaW5nIHdoZW4NCj5maXJtd2FyZSBvdmVycmlkZXMgYW4gYWRtaW4tY29uZmlndXJl
ZCBhZGRyZXNzPw0KDQptYWMgYWRkciBhc3NpZ25lZCBieSB0aGUgbWdtdCBpcyBpbmRlZWQgYXV0
aG9yaXRhdGl2ZQ0KYXJiaXRyYXRpb24gaW4gdGhhdCBjYXNlIGlzIG5vdCBhcHBsaWNhYmxlIA0K
DQo+DQo+PiArDQo+PiAgdm9pZCBpeGdiZV9yZXNldChzdHJ1Y3QgaXhnYmVfYWRhcHRlciAqYWRh
cHRlcikNCj4+ICB7DQo+PiAgCXN0cnVjdCBpeGdiZV9odyAqaHcgPSAmYWRhcHRlci0+aHc7DQo+
PiBAQCAtNjQ4MSw2ICs2NTExLDggQEAgdm9pZCBpeGdiZV9yZXNldChzdHJ1Y3QgaXhnYmVfYWRh
cHRlciAqYWRhcHRlcikNCj4+ICAJCQkgICAgIElYR0JFX0ZMQUcyX1NGUF9ORUVEU19SRVNFVCk7
DQo+PiAgCWFkYXB0ZXItPmZsYWdzICY9IH5JWEdCRV9GTEFHX05FRURfTElOS19DT05GSUc7DQo+
Pg0KPj4gKwlpeGdiZV9tYWNfYWRkcl9yZWZyZXNoKGFkYXB0ZXIpOw0KPj4gKw0KPg0KPltIaWdo
XQ0KPklzIGl4Z2JlX3Jlc2V0KCkgYWx3YXlzIGNhbGxlZCB3aXRoIFJUTkwgaGVsZD8gIGl4Z2Jl
X21hY19hZGRyX3JlZnJlc2goKQ0KPnVzZXMgQVNTRVJUX1JUTkwoKSBhbmQgdGhlbiBkaXNwYXRj
aGVzIGV0aF9od19hZGRyX3NldCgpIGFuZA0KPmNhbGxfbmV0ZGV2aWNlX25vdGlmaWVycyhORVRE
RVZfQ0hBTkdFQUREUiwgbmV0ZGV2KSwgYm90aCBvZiB3aGljaA0KPnJlcXVpcmUgUlROTC4NCj4N
Cj5UaGUgZm9sbG93LXVwIGNvbW1pdCAiaXhnYmU6IHRha2UgcnRubCBsb2NrIGJlZm9yZSBpeGdi
ZV9yZXNldCgpIGlzDQo+Y2FsbGVkIiBvbmx5IGNvbnZlcnRzIHRoZSBpeGdiZV9yZXN1bWUoKSBw
YXRoLiAgVGhlIFBDSSBlcnJvci1yZWNvdmVyeQ0KPmNhbGxiYWNrIGl4Z2JlX2lvX3Nsb3RfcmVz
ZXQoKSBzdGlsbCBjYWxscyBpeGdiZV9yZXNldCgpIHdpdGhvdXQNCj5hY3F1aXJpbmcgcnRubF9s
b2NrKCksIGFuZCAuc2xvdF9yZXNldCBjYWxsYmFja3MgYXJlIG5vdCBndWFyYW50ZWVkIHRvDQo+
cnVuIHVuZGVyIFJUTkwuDQoNCmkgYmVsaWV2ZSBpeGdiZV9yZXN1bWUoKSBwYXRoIGNvdmVycyBh
bGwgcmVhbCBzY2VuYXJpb3MNCml4Z2JlX2lvX3Nsb3RfcmVzZXQoKSBwYXRoIGlzIHNvbWV0aGlu
ZyBwdXJlbHkgdGhlb3JldGljYWwgaW1obyANCg0KPg0KPk9uIHRoYXQgcGF0aCwgaWYgUkFSMCBk
aWZmZXJzIGZyb20gbmV0ZGV2LT5kZXZfYWRkciBvbiBhbiBFNjEwLA0KPkFTU0VSVF9SVE5MKCkg
d2lsbCBXQVJOIGFuZCB0aGUgc3Vic2VxdWVudCBuZXRkZXYgYWRkcmVzcyBwdWJsaWNhdGlvbg0K
PmFuZCBub3RpZmllci1jaGFpbiB0cmF2ZXJzYWwgcmFjZSB3aXRoIGNvbmN1cnJlbnQgUlROTC1w
cm90ZWN0ZWQNCj51c2VycyAoU0lPQ1NJRkhXQUREUiwgbm90aWZpZXIgY2hhaW4gKHVuKXJlZ2lz
dHJhdGlvbiwgZXRjKS4gIFNob3VsZA0KPml4Z2JlX2lvX3Nsb3RfcmVzZXQoKSBhbHNvIHRha2Ug
cnRubF9sb2NrKCkgYXJvdW5kIGl4Z2JlX3Jlc2V0KCksIG9yDQo+c2hvdWxkIHRoZSByZWZyZXNo
IGJlIG1vdmVkIHRvIGEgY2FsbGVyLXNpZGUgbG9jYXRpb24gdGhhdCBndWFyYW50ZWVzDQo+UlRO
TD8NCg0KaSBkbyBub3Qgc2VlIHN1Y2ggbmVjZXNzaXR5OyBhbGwgcmFjZSBwb3RlbnRpYWwgcGF0
aHMgYXJlIGNvdmVyZA0KZGVzcGl0ZSB0aGUgb25lIHdoaWNoIGltaG8gaXMgcG9zc2libGUgdG8g
aGFwcGVuIGFsbW9zdCBvbmx5DQppbiB0aGVvcmV0aWNhbCB0aGlua2luZyAtIG5ldGRldiBzdWNo
IGJlIGRldGFjaGVkIGluIHRoYXQgcGF0aCBzbw0KYW55IHBvdGVudGlhbGx5IHJhY2luZyBzZWNv
bmQgc2lkZSBzaG91bGQgbm90IGJlIGFibGUgdG8gb3BlcmF0ZQ0KDQo+DQo+PiAgCWVyciA9IGh3
LT5tYWMub3BzLmluaXRfaHcoaHcpOw0KPj4gIAlzd2l0Y2ggKGVycikgew0KPj4gIAljYXNlIDA6
DQo+PiBAQCAtODY1MSw2ICs4NjgzLDExIEBAIHN0YXRpYyB2b2lkIGl4Z2JlX3NlcnZpY2VfdGFz
ayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+PiAgCQkJaXhnYmVfaGFuZGxlX2Z3X2V2ZW50
KGFkYXB0ZXIpOw0KPj4gIAkJaXhnYmVfY2hlY2tfbWVkaWFfc3VidGFzayhhZGFwdGVyKTsNCj4+
ICAJfQ0KPj4gKw0KPj4gKwlydG5sX2xvY2soKTsNCj4+ICsJaXhnYmVfbWFjX2FkZHJfcmVmcmVz
aChhZGFwdGVyKTsNCj4+ICsJcnRubF91bmxvY2soKTsNCj4+ICsNCj4NCj5bTWVkaXVtXQ0KPldv
dWxkIGl0IG1ha2Ugc2Vuc2UgdG8gaG9pc3QgdGhlIEU2MTAgZ2F0aW5nIG91dCBvZg0KPml4Z2Jl
X21hY19hZGRyX3JlZnJlc2goKSBhbmQgc2tpcCB0aGUgcnRubF9sb2NrKCkvcnRubF91bmxvY2so
KQ0KPmVudGlyZWx5IGZvciBub24tRTYxMCBkZXZpY2VzPw0KPg0KPlRoZSB0eXBlIGNoZWNrIGxp
dmVzIGluc2lkZSB0aGUgaGVscGVyOg0KPg0KPiAgICBzdGF0aWMgdm9pZCBpeGdiZV9tYWNfYWRk
cl9yZWZyZXNoKHN0cnVjdCBpeGdiZV9hZGFwdGVyICphZGFwdGVyKQ0KPiAgICB7DQo+ICAgICAg
ICAuLi4NCj4gICAgICAgIGlmIChody0+bWFjLnR5cGUgIT0gaXhnYmVfbWFjX2U2MTApDQo+ICAg
ICAgICAgICAgcmV0dXJuOw0KPiAgICAgICAgLi4uDQo+ICAgIH0NCj4NCj5zbyA4MjU5OCwgODI1
OTksIFg1NDAgYW5kIFg1NTAgYWRhcHRlcnMgKHdoaWNoIGNvbXByaXNlIG1vc3Qgb2YgdGhlDQo+
aXhnYmUgZGV2aWNlIGZhbWlseSkgYWNxdWlyZSB0aGUgZ2xvYmFsIHJ0bmxfbXV0ZXggZXZlcnkg
c2VydmljZS10YXNrDQo+Y3ljbGUgb25seSB0byByZXR1cm4gaW1tZWRpYXRlbHkuICBTb21ldGhp
bmcgbGlrZToNCj4NCj4gICAgaWYgKGFkYXB0ZXItPmh3Lm1hYy50eXBlID09IGl4Z2JlX21hY19l
NjEwKSB7DQo+ICAgICAgICBydG5sX2xvY2soKTsNCj4gICAgICAgIGl4Z2JlX21hY19hZGRyX3Jl
ZnJlc2goYWRhcHRlcik7DQo+ICAgICAgICBydG5sX3VubG9jaygpOw0KPiAgICB9DQoNCkNhbm5v
dCBpbnRyb2R1Y2UgcnRubCBsb2NraW5nIGludG8gaXhnYmVfbWFjX2FkZHJfcmVmcmVzaCgpIGFz
IHRoaXMNCmNhbiBiZSBhbHJlYWR5IGNhbGxlZCB3aXRoaW4gcnRubC1sb2NrZWQgcGF0aA0KDQo+
DQo+d291bGQgYXZvaWQgdGhlIHJ0bmxfbXV0ZXggY29udGVudGlvbiBvbiBub24tRTYxMCBoYXJk
d2FyZS4NCj4NCj4+ICAJaXhnYmVfcmVzZXRfc3VidGFzayhhZGFwdGVyKTsNCj4+ICAJaXhnYmVf
cGh5X2ludGVycnVwdF9zdWJ0YXNrKGFkYXB0ZXIpOw0KPj4gIAlpeGdiZV9zZnBfZGV0ZWN0aW9u
X3N1YnRhc2soYWRhcHRlcik7DQo=
