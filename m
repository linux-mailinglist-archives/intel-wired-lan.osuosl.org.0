Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGoOOUjMr2nWcAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:46:16 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E2024694C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 08:46:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9E1260B17;
	Tue, 10 Mar 2026 07:46:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jIOfQMzTtFp; Tue, 10 Mar 2026 07:46:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 470C961511
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773128774;
	bh=/a4wBYkF1UbFyghQjMw+PQc1pq0XihK8NkBLPIQy8kc=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vxWZSmX4GKpIkIXOjf1DaPVsypakZV+Mb96ZCrZ7p3as/lpuhofuWZHqY0xp038S7
	 IqwyP2X0ywe7FN3Alb7EQ8+ntyExJ2hQa9j6yR/uqks4Kil9gwi1F2/Oh4h1muEVFX
	 tWJbrxMHeOApRkDQ+cgAgwYZydxwOlCgxtbRv3W5Q2JRktdB3Mqu+MudmyLs67bhY3
	 Z2IiIJuIMJie3hfZ2ZYxV/5w1IRA/O9Dz0LuAo8+sloxX+g6H+5cttLE+rWG4+slKz
	 JUr8urYVW48kjZ5q5KrHYEGmS0/LoxCCMdwJ53FBk4qM+i9mgMH8fFCb+x8FKYdfuW
	 WF+PXC9O7bW1Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 470C961511;
	Tue, 10 Mar 2026 07:46:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5FB52201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:46:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5185F842C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jybE4Q8d2gUR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 07:46:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 52DF3842C0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52DF3842C0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 52DF3842C0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 07:46:11 +0000 (UTC)
X-CSE-ConnectionGUID: fjPOFrJgRteJMu5oiy7jJg==
X-CSE-MsgGUID: YuTgZ5h+QeavhznyV7/Uvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="76773216"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="76773216"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:46:11 -0700
X-CSE-ConnectionGUID: XsP1ocHQRFSKbqSgZPxY7w==
X-CSE-MsgGUID: 5yTEe/vEQJKvDe8QyeaBcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="219151613"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 00:46:11 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:46:10 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 10 Mar 2026 00:46:10 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.24) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 10 Mar 2026 00:46:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T0odwguxji36K+4u7E+lJhX+aMosYdPgR2KTD7gkz1FQHN86i+tU1FJUnXvhr8hHnLRBnZJ04fesqXKeoXk7yGD1rjdSK5UPGlu4Fi1QfiQrY8vGLbzfYk6RegXdw7DlPOVpaC5RYQ2EhuvR4bjiICMe8S7b4tlmWKckXcF6cH5nqXeI+1Mj457G3qrpuyx6HBlty/ddwo12/kEuThUYPQ+1LsU/4Bqmww3Fk4WWF4IWRzOXeDcxuYU7WGyDgbIt0PehR1KrJJ0bQLYtUIfoa7c1cYuPC5inT7XVT7ft8w1jSt/W48xl8ozyIkz5J3yfeiqeD16373h4IDANtfRO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/a4wBYkF1UbFyghQjMw+PQc1pq0XihK8NkBLPIQy8kc=;
 b=NYEn8e7yLa7ZIAhjjZUWZmo0C5wHaBrnUoMR4zuDzP3P5gqHOQem7oNRDdGAO7vTTdiKX8LIKncpTud1fHXTXE3xMYJCJJR4U1uSivNq0S3Weqg8tF6BZPQpcVDXtmenjMyZ5DlBbEFCnoTbTsBCXqthr1ZVCYTdBmd8hE4PlqnkvRMBfAijwT8pTCqQnQ/j74aso1EVXivA4YLnXQagEXIjdkVfMvLdl41oo9FVPVBtg0CbwmfZwUhvIdaIOQob0XwRKrCPYpvmK36Lv9/cXnYLUVg9D4bCZWe3soSes9kLOPh7s9Kb7LCCXkX4mxPuKw3Pno6gMGnyGgVPX6fJ3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA2PR11MB5161.namprd11.prod.outlook.com (2603:10b6:806:fa::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 07:46:07 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::e6f0:6afb:6ef9:ab5c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 07:46:07 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: Alex Dvoretsky <advoretsky@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>, "stable@vger.kernel.org"
 <stable@vger.kernel.org>, "kurt@linutronix.de" <kurt@linutronix.de>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net 1/3] igb: check __IGB_DOWN in
 igb_clean_rx_irq_zc()
Thread-Index: AQHcra4+M6ORjX+/lkmZIig5o9Yr3bWnaHpw
Date: Tue, 10 Mar 2026 07:46:07 +0000
Message-ID: <IA3PR11MB8986B0F7D87ED2D9D6C1B87FE546A@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20260306211310.1213330-1-advoretsky@gmail.com>
 <20260306211310.1213330-2-advoretsky@gmail.com>
In-Reply-To: <20260306211310.1213330-2-advoretsky@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA2PR11MB5161:EE_
x-ms-office365-filtering-correlation-id: aa79673d-9439-44dd-dc29-08de7e791736
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700021;
x-microsoft-antispam-message-info: yS9HKmURbvPvp4RZIbkErqP7Boaw1g3lIzV0ZaBXPY8j9mYvbNYF3sfhEnfEfrm/GucFKVDOojT/mgTdqxD40WVAy0RtYLWE4Rrc1GeuUwx2l77c8U2YzRg91RJQC38X2NLrDUbUPuo8ct7zgVsDNHl4Mz9W4eUXXQyaIa5/ltDTr7ODKJJRh7IYqyVpY6SF+CRdkPokFUOJW/EiTQGCJHBw/3ns+eM8UCXUe+fYdDwjzLnABl2mCiRRIsT4md810fSsEXm7ueItsEhlJ2Rmk2QMEfkMN8Jf1aCn5lr2Z9qVmb6IHRiOHAbP//yU609MB3vXb7qSwXaFvJ4yjsvZ0+dafZ2i4R9g02SFQj1rMIkuoWO1h3tWMi91udoMS1XDf8rKr6FWUSksMdtrF0Y/IBQ7P/lfmt62VibhKRjEYPM7YCS+LP7pCJUcBB3HZn/2anHw5FT3150+nn7XwvoXcFxlXg8IT79nqjL6O/GrzzaIjCKUBAF890dh4CPEdv6sRJXA9fKfMfJ/qGNwf59VM5a39Lurj/rG16u7msb7m/Y+ovVOKd//WUgbI1Vg8Mgh0t54HTg8mi5PFCQhC2V+sxSrUa87BWOvWsRepM/a2ULhsiaIYPoiGovFe6M7dF+xZVj2GijAjuFaIhOo9lGE3xUWOhqqqPveEIe/Y6xbRTU5engnuSajHH8jLrnF5YhTIXQ/xqhbjTlB3z8QpwRX/3c1FyGySjT0EsdGlzz/HAMo/fjQDZhPTboAoHCcRMX4awLT4NfjC63P/v+KAFuJ4/iWVKbFnyAc0bL1s5ivOeY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZWZHRmh6RDFqeWFjUVFYN2NjOEZTVXZaOXlCbUZ5Z2hSaXZGOFZEY2pPMlla?=
 =?utf-8?B?UUc4cWpjV3p6T0tDZWxnRWdrSHd5K3BrVTlLV051VXNVMG55NVQrY3BYaGdT?=
 =?utf-8?B?MW1Ob2VkdERWbUpNTTRSUm54OGpSOE83OTJ3TEM0cXByaTFVdmcrd3ZpbWFV?=
 =?utf-8?B?L0wwOUloSmVXc1htVEQ3MDZzM00vRndPYWFaTmltS0twMTEycGJ1S3BUUERK?=
 =?utf-8?B?ZU1TWElPOHRRMW9FaU5Zb3l0L2xKeWlGYk5jbXdQLysrS282LzhXZzE4QXJS?=
 =?utf-8?B?UUE0NVQxaW1DUit5VmlkVVRDTExHSXVEdHJLc0dYcUtWYW5adEx2SHFNd3dr?=
 =?utf-8?B?T2ZpN3FRS3ozWlBkVlRYYVNCWVJ5TFEycitzY2djRStyUUpZRSszcnY5UU5N?=
 =?utf-8?B?VGxqa04zSUc4OUVldzUvc0pEWWpOSzV0dWo2TGRCd3pPU1dwL0hzQXU5UGRS?=
 =?utf-8?B?bGVVOWxtRGVxcDNZaWVrcmpEZEYvV2dxaVVLUmJaTkRpN0xDcWlHTFhwMUt4?=
 =?utf-8?B?K3ExViswR212amg0anp6RGtkd0VBVWhYUXFpZU8xc2JOMksxM3Zob0dITDdK?=
 =?utf-8?B?NHY5Y3A1b3UyYXFxSXFPdlVkYi9taWNRTHBUb1pHOUk3eGVDYUNzd1FuRW9Y?=
 =?utf-8?B?d0dESGdSN3RrdmR3ZDNSUDdvb09LdFZBKzRVdWVDRGorelVmMnJrVmVmd0x2?=
 =?utf-8?B?eFFnaHgxUDA5OUFkVXdFMjRNb3hUUmlEeXVrVlJhMnA3MnNSdmx2a2s3bnVw?=
 =?utf-8?B?OXhLL2VQTVVtRnA0MGg2QzZtd09wakFlRU5zT2Q3Vi9hekRmMHRYNVNlcitF?=
 =?utf-8?B?ZmFseE5xQ1BnOEs4ZkJOOTQ2a1N1azlDR1pjVHhCd0hNVjdZVk8wS2Y5cFl4?=
 =?utf-8?B?b0JjeC9Kc21ER21qOXorY1F3MEVKQ2JhQzRrQmZKZHZZNU01VFBkd1UxQXlS?=
 =?utf-8?B?VkxtRTcxTStxcXpGL09HT0tpQllDMGhVT0t6RHpGYUlvL0hrdXoyWVJiTXIv?=
 =?utf-8?B?QzdOenllOGJ2VlFEeTQ3LzdUajRBYUNzajl6UUJUWWw0eENiNko3aHFERXlx?=
 =?utf-8?B?eEJra2M0SkY3REZUc0RCSWpBNFZBck1EcDVaK3hldHgzU05GSVZIcjh0TjB1?=
 =?utf-8?B?ZjhxZnlLbktCYnlUQWRQT1VIS1VUNUtkUFpzR1ZxcmRNRjllMHVGWERqRVpI?=
 =?utf-8?B?TitWNWdwOU4vWnJMNC9laGJHOXRHWGdzUlZzaHJleHhnMm1yUEVFdCtHMzg3?=
 =?utf-8?B?bmFlTDhENEI0NjNMVmc2SWpqSk9Hc1RJZnkrOGsxejR2d1FBazlMTFJsUHhZ?=
 =?utf-8?B?SlRMc0J0RGJmK1JVN0lNMWZDb0FCcTlaNmhsekZETzFEbXRSdjk3U3lnUWFt?=
 =?utf-8?B?cmpTaGthb2JUS2M4VUI5NHFndXFRSUhTR1lrL09NNkVDUmRLMnZPTmcwMmhr?=
 =?utf-8?B?alloSlN0aFlGc3NYUW1SSnl3aGdVVjNuS1lUQmZheVFhaGZVS0R6OWdpWlo3?=
 =?utf-8?B?bllSb0JISVMvaVk0Yi9RbHBUc1U4QVJlYVVYaTN1SjZNMmpGVmNrUTd1cEU0?=
 =?utf-8?B?L2tsOGNmb3pJYm56UVVyc1MzeHI2QzlEOEdFSDBnRG96ZU1pSFp3aXRvL1Js?=
 =?utf-8?B?dDg1aXZxdFR3Mk02N0hHWkhZMXVMNXAxOG1tOW1RQ3M5cmwwWnYzKys2Nks4?=
 =?utf-8?B?OVZZc05RRXFIeVRuWVQwQS9BdEJYeWdQMFlYU3hRTWkxczhMcEU1ZjJkclNW?=
 =?utf-8?B?NDFUR09UVmJSQnZqdWx4TXEzVFNOaW1DcVFXb1JrTDFuSHJQR3o1dU1ybzlB?=
 =?utf-8?B?RUM2ZlQ4TUVtaStjME5pNVRzMkdsZGNUeVplWmgzSlVUL3NoQ09pYTRNaUVk?=
 =?utf-8?B?b2RwcHlGTUxINkdkWk9wWDBnSlVIM1VVTUV6RXVTbGZpZ3VqK2owMUJEVzFm?=
 =?utf-8?B?akFoanMxT0lFcXdheWZLY0pqeXViUW1nY1hBQ1Qwd2lGei8yTXhlZ3EyVFVH?=
 =?utf-8?B?M2RYWGNIK0liMnU3cGxOS3FvcUZDLzFvV05peFVmaENyekxTUlFtcDQxY1Y4?=
 =?utf-8?B?RkRrVzNLczJCbUhnejJZMEE3eG1oMVY1Ym5LRmU4ZDNIeDFkWTg3VXFuamNl?=
 =?utf-8?B?NmRaV3hOczJXU2JaN3p5OGVxek5XWEVheVhaWG4xdnpZRHFyTFAwNlFOaUZi?=
 =?utf-8?B?U2M1b1BISjI2d1V4Mk9Fbi94aitkN1QzSnJaQkpYeDNCTmxEdEp0eXlwZ2oz?=
 =?utf-8?B?YXg2Y0F4OTB0U2RDbEVEeGo0YmFkZHdaZUFuamwrWDg1WlR6M3N3aXorWC9P?=
 =?utf-8?B?aEd0NGZGYmZkd2tITVZhVTZRRjNtdHgwM2JrNVAvVkNiZmtEY1EvODF4cFBr?=
 =?utf-8?Q?XuH3mX1mEPuUJKoE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: tEPF8Ahq3ePIxKmrufj+KPvXqsxg9L5LbwkXHv9QCMHkMmcrhPBIE8KbmixBuAeuWK3W8uLbZ6x7C0LjJC1l55seM2Kf3DwrABHlqHhzHLgpmdabi/TT7Yj772Z/v8YgvrqoGL6erhgeN+gZItYUdNtq8flRc9VpusyAJOGDMSPQb2UgxJOvLZkzU/MnPjv5FJ5Fo0stBztBKZ0t0/5r9t2Aocw6TXXKw7Zxrp9TRXzU+SnRHEBLp1ewmOgw8R/cKzz4gDoTDXHk2XfCbSStIGPwtnLZ9IuzbhOz10ej/pkVEgsQXX/iPUqoHKl8G6jIsDDegOIugp4nIs69PoQuBA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa79673d-9439-44dd-dc29-08de7e791736
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Mar 2026 07:46:07.8334 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZfEfMrParIHiIeMq3e6qii7deZ409s97GGegExRqrowkYWlxt1GALwJ1/axGqtxFkvV6vbvsQOFbyYyYs3hFoy1GMOop7WyH6VUuZkUmNIY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5161
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773128771; x=1804664771;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/a4wBYkF1UbFyghQjMw+PQc1pq0XihK8NkBLPIQy8kc=;
 b=YkCyWfWU0MHgGDoyn/Z2RSfMR+sD8F2akSpEwpxYcb5xiNTMs5UEZR1u
 OlO/j+AFmsFt1/4Wo/WBQDhlV/7xUwcXkIsZSulzi6EB3xkqiC7vOFbXY
 3o6bvN8dU0mA7eG4066pH+gaq+q8zAc5D7xv4v4TPi8QRr9U2YgogyrL+
 CK9ryrAJLuasblobuLmk4QIO1pQlN4S7rz7u59bympB45+lld4I8w7dXv
 IFmn4ibgQRmT7DTmct9n2hJqjYdIBpYpYxNT6s7sEvTDm05EeS68NuC6p
 8jJgWU9T5DLSi0vQSkE4y+r5tUgjlgOpUJ1Vu7ngxG5pAxWq9OIvMhIWs
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YkCyWfWU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/3] igb: check __IGB_DOWN in
 igb_clean_rx_irq_zc()
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
X-Rspamd-Queue-Id: 35E2024694C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:advoretsky@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:stable@vger.kernel.org,m:kurt@linutronix.de,m:maciej.fijalkowski@intel.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,linutronix.de:email,intel.com:email]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtd2lyZWQtbGFu
IDxpbnRlbC13aXJlZC1sYW4tYm91bmNlc0Bvc3Vvc2wub3JnPiBPbiBCZWhhbGYNCj4gT2YgQWxl
eCBEdm9yZXRza3kNCj4gU2VudDogRnJpZGF5LCBNYXJjaCA2LCAyMDI2IDEwOjEzIFBNDQo+IFRv
OiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZw0KPiBDYzogbmV0ZGV2QHZnZXIua2Vy
bmVsLm9yZzsgTmd1eWVuLCBBbnRob255IEwNCj4gPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29t
PjsgS2l0c3plbCwgUHJ6ZW15c2xhdw0KPiA8cHJ6ZW15c2xhdy5raXRzemVsQGludGVsLmNvbT47
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc7DQo+IGt1cnRAbGludXRyb25peC5kZTsgRmlqYWxrb3dz
a2ksIE1hY2llag0KPiA8bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT47IEFsZXggRHZvcmV0
c2t5IDxhZHZvcmV0c2t5QGdtYWlsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLXdpcmVkLWxhbl0g
W1BBVENIIG5ldCAxLzNdIGlnYjogY2hlY2sgX19JR0JfRE9XTiBpbg0KPiBpZ2JfY2xlYW5fcnhf
aXJxX3pjKCkNCj4gDQo+IFdoZW4gYW4gQUZfWERQIHplcm8tY29weSBhcHBsaWNhdGlvbiB0ZXJt
aW5hdGVzIGFicnVwdGx5IChlLmcuLCBraWxsIC0NCj4gOSksIHRoZSBYU0sgYnVmZmVyIHBvb2wg
aXMgZGVzdHJveWVkIGJ1dCBOQVBJIHBvbGxpbmcgY29udGludWVzLg0KPiBpZ2JfY2xlYW5fcnhf
aXJxX3pjKCkgcmVwZWF0ZWRseSByZXR1cm5zIHRoZSBmdWxsIGJ1ZGdldCAobm8NCj4gZGVzY3Jp
cHRvcnMsIG5vIGJ1ZmZlcnMgdG8gYWxsb2NhdGUsIHhza19idWZmX2FsbG9jKCkgcmV0dXJucyBO
VUxMKQ0KPiB3aGljaCBtYWtlcyBuYXBpX2NvbXBsZXRlX2RvbmUoKSByZS1hcm0gdGhlIHBvbGwg
aW5kZWZpbml0ZWx5Lg0KPiANCj4gTWVhbndoaWxlIGlnYl9kb3duKCkgY2FsbHMgbmFwaV9zeW5j
aHJvbml6ZSgpLCB3aGljaCB3YWl0cyBmb3IgYSBOQVBJDQo+IHBvbGwgY3ljbGUgdGhhdCBjb21w
bGV0ZXMgd2l0aCBkb25lIDwgYnVkZ2V0LiBUaGlzIG5ldmVyIGhhcHBlbnMsIHNvDQo+IGlnYl9k
b3duKCkgYmxvY2tzIGluZGVmaW5pdGVseS4gVGhlIDUtc2Vjb25kIFRYIHdhdGNoZG9nIGZpcmVz
IGJlY2F1c2UNCj4gbm8gVFggY29tcGxldGlvbnMgYXJlIHByb2Nlc3NlZCB3aGlsZSBOQVBJIGlz
IHN0dWNrLiBTaW5jZSBpZ2JfZG93bigpDQo+IG5ldmVyIGZpbmlzaGVzLCBpZ2JfdXAoKSBpcyBu
ZXZlciBjYWxsZWQsIGFuZCB0aGUgVFggcXVldWUgcmVtYWlucw0KPiBwZXJtYW5lbnRseSBzdGFs
bGVkLg0KPiANCj4gRml4IHRoaXMgYnkgYWRkaW5nIGFuIF9fSUdCX0RPV04gY2hlY2sgYXQgdGhl
IHRvcCBvZg0KPiBpZ2JfY2xlYW5fcnhfaXJxX3pjKCksIHJldHVybmluZyAwIGltbWVkaWF0ZWx5
IHdoZW4gdGhlIGFkYXB0ZXIgaXMNCj4gZ29pbmcgZG93bi4gVGhpcyBhbGxvd3MgbmFwaV9zeW5j
aHJvbml6ZSgpIGluIGlnYl9kb3duKCkgdG8gY29tcGxldGUsDQo+IG1hdGNoaW5nIHRoZSBwYXR0
ZXJuIGFscmVhZHkgdXNlZCBpbiBpZ2JfY2xlYW5fdHhfaXJxKCkuDQo+IA0KPiBGaXhlczogMmM2
MTk2MDEzZjg0ICgiaWdiOiBBZGQgQUZfWERQIHplcm8tY29weSBSeCBzdXBwb3J0IikNCj4gQ2M6
IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU2lnbmVkLW9mZi1ieTogQWxleCBEdm9yZXRza3kg
PGFkdm9yZXRza3lAZ21haWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lnYi9pZ2JfeHNrLmMgfCAzICsrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfeHNrLmMNCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5jDQo+
IGluZGV4IDMwY2U1ZmJiNWI3Ny4uY2E0YWE0ZDkzNWQ1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9pbnRlbC9pZ2IvaWdiX3hzay5jDQo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfeHNrLmMNCj4gQEAgLTM1MSw2ICszNTEsOSBAQCBpbnQgaWdi
X2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaWdiX3FfdmVjdG9yDQo+ICpxX3ZlY3RvciwNCj4gIAl1
MTYgZW50cmllc190b19hbGxvYzsNCj4gIAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOw0KPiANCj4gKwlp
ZiAodGVzdF9iaXQoX19JR0JfRE9XTiwgJmFkYXB0ZXItPnN0YXRlKSkNCj4gKwkJcmV0dXJuIDA7
DQo+ICsNCj4gIAkvKiB4ZHBfcHJvZyBjYW5ub3QgYmUgTlVMTCBpbiB0aGUgWkMgcGF0aCAqLw0K
PiAgCXhkcF9wcm9nID0gUkVBRF9PTkNFKHJ4X3JpbmctPnhkcF9wcm9nKTsNCj4gDQo+IC0tDQo+
IDIuNTEuMA0KDQpSZXZpZXdlZC1ieTogQWxla3NhbmRyIExva3Rpb25vdiA8YWxla3NhbmRyLmxv
a3Rpb25vdkBpbnRlbC5jb20+DQo=
