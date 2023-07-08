Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1275174BD1E
	for <lists+intel-wired-lan@lfdr.de>; Sat,  8 Jul 2023 11:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C35B80E02;
	Sat,  8 Jul 2023 09:33:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C35B80E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688808812;
	bh=dwQTo6OaS0cG/PTsMZXPTRy36GghnWSsmXisrISlu+w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ojHSuDSgtrJYgDUs10/9WkCup6eGGoLDmwllBRIvcxTKbu03f7j3+07j+F0n1m3pg
	 iqKsKqTRyIQPR99w6fCyqYm32fxADwh7HSni0Xc2P2IVItBaS7xpIe/V6WFNaOFmFI
	 El6R9pjzUyKp+m3jFi3GV7/xQJvEQJn6jvcpKmIjRuZVGhGIfB8YJDJARtPEYDYzQl
	 N+A7YkVviN/GTzPKJ70cv4DS/0iLq/eBAdEdcf1PNfbLdUHKAqBNIyXp34XNtihiT+
	 jQ/F5JViLicoI5aGjPV0I3nePdYCR3E22jKWsID/wI70xu916S6Sp2Qd7kYZpg/dql
	 ckvL1aDzmb61A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kyofj6mSPWLg; Sat,  8 Jul 2023 09:33:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4EA680AE2;
	Sat,  8 Jul 2023 09:33:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4EA680AE2
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 800091BF588
 for <intel-wired-lan@osuosl.org>; Sat,  8 Jul 2023 09:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6139941505
 for <intel-wired-lan@osuosl.org>; Sat,  8 Jul 2023 09:33:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6139941505
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1vZ1jR3Wb123 for <intel-wired-lan@osuosl.org>;
 Sat,  8 Jul 2023 09:33:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9899414EA
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9899414EA
 for <intel-wired-lan@osuosl.org>; Sat,  8 Jul 2023 09:33:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="394823504"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="394823504"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2023 02:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10764"; a="755454498"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="755454498"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 08 Jul 2023 02:33:22 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Sat, 8 Jul 2023 02:33:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Sat, 8 Jul 2023 02:33:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Sat, 8 Jul 2023 02:33:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XokGRmVV1Z3JEOZNRaYn7LAOklrZ+i4r+AXvkL+kJpSDEbe0PBoywmo9k9dg+rWv63D7Si1tUqwyh/uf08h5HlkLRoC2cAKXWWHPzkeQdzLoFcM8G4gt+j4fIMsEiGYY3FdY6UAtRBlsApkt0848XPfnq8ZZ6l0mWYcjVHoqPFEvBEiEJ3s5AK2VadzXGFcNACjRx8trVUTnm9p2JON1pMad09xyXHmohqYTTWaOFkniUSRsTxXwtgXeZ4rEctIN9Nne3cfTkRGI6/KYYOse9AoblGNiZxawLjsGh4l5M1+EYJLZ6lCKrjMAW7m6CJwzhQWr88BJPufMcFb6iX5j+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pML07FLU/LZqiW12w1hcKbRrSK77MEGIHw/ptvY+iAw=;
 b=eRMsjVuqVntUZRVv9eaYkcYflGLliejEag52RIt9UnsiNLQVYBIpozzm7Hcq/xNgrNfQ6F6rZubOWa6Vs4IQKNZt+HUPQ8ul8jO86YwzFNFU8I8Baduqj0lNO6zEj48ZHMGqayvan3QL+o9O+3sELNRVNAW2kC3FRBdv3c/dEUABq2S6ID93LKz/8IgYAAXvYcDnm1QQ8X5FV1O88vlKA/P7B/BIsa72mrUsIlKgc2Tqnb914YYXocHJdakBXdBe1HXLrGqk9ElUut3zPLTRam4bH9hD1EJxhBHoLqJJsJYPuqfXR5RiFORmpG75QcFGYbnjTsXuwXl2v2140NGipQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.25; Sat, 8 Jul
 2023 09:33:08 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::dfd2:5a47:bfeb:aa2e%4]) with mapi id 15.20.6565.026; Sat, 8 Jul 2023
 09:33:07 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Thread-Topic: [PATCH iwl-net v1] igc: Expose and modify tx-usecs coalesce
 setting
Thread-Index: AQHZsBrYdf06/BCpbE2scM2BX9FJP6+ukR2AgAEI0pA=
Date: Sat, 8 Jul 2023 09:33:07 +0000
Message-ID: <SJ1PR11MB6180553237A4DFB0835529B2B832A@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230706150017.5065-1-muhammad.husaini.zulkifli@intel.com>
 <b6804af0-b19c-8cd9-edb1-470364db4c58@intel.com>
In-Reply-To: <b6804af0-b19c-8cd9-edb1-470364db4c58@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|SA2PR11MB4954:EE_
x-ms-office365-filtering-correlation-id: af4f48e7-0555-4fe6-a990-08db7f9656a4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LH3f7Ax8Zf/Xx67hKcrGCaoBZKXQ0T4RnNttNZyuxE5tqxWr6cecl7saoHPmPimUl5f7+CaFN/ZbcDLSbDRmRxen6zfOYBU+IBRqf0IbTGWfGt/n6S2kLzcIpDS4urcEXsplPJrjjlEKk3hONYuDGYNBhQsE42XalAFWkLSNpymHKK6SbqhV9kFs0cBFoIqS1s2D28KbdAD4VqsilB6b2JyEnSjgmYCRTgz4VQM5anqTY9/SvZ11LHsJKFFCNebHDYo4h80qnx1mLAiVzazdbQMcd/8LqERZxkA2W3gMLqiHKThvy60HhpZtyZ1apuqyZ1jrIXF9NMBtf3CY4OEEB+84eqQgkRbhnZ2ZJR6PgdTS16ayJEdMNZ1HF0DUe/0b0ZwWkZHEU8r6OJEezJD7KxayORca64L7hcKK6gmctfcuTzOFhO4xdckJCxDXETGcAkqJldO4GRdRGaOCv3fduX7zY2HO4xcuLAOFybOMKlpdMoYmHcJ84EHDP3wgJoWNHA0cXP1XfySVUtpl4qxT0Y5hU2ZXH2b7adx0kihWq4IwtxgkKjCLF0drN1KbhqVMxAnRSANDsEh5owkCNuVksSgeySgn2fnaBb7sVVJG6Obx5T31BYkyX1r6RMmtUEvA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(136003)(366004)(39860400002)(376002)(451199021)(478600001)(110136005)(54906003)(7696005)(71200400001)(53546011)(9686003)(6506007)(76116006)(186003)(2906002)(4326008)(64756008)(66446008)(66556008)(316002)(66476007)(41300700001)(52536014)(5660300002)(82960400001)(8676002)(8936002)(38100700002)(122000001)(66946007)(86362001)(38070700005)(33656002)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d1hZdFlJWjVGU2VKRzBGN2l1Mk9CNG1YZFlYaitneVhkSXpRWEM1eVE5MGpm?=
 =?utf-8?B?UGd6MWtzNWV1Z0xuenRyU3RhT3Z0Z0tNdGJLT1BleG5mYmxSaExubDlJZ0ht?=
 =?utf-8?B?SXhNME85UVg3bktDU0pMcjBqL3dvcEEybUpDRG5PSTdrNG1LN0lQTnUwSUxW?=
 =?utf-8?B?MUp4ZHNsS0diTHZYWGNRTzlRUXVnNVpPRlkxMVRHbjZhZU04YmtZalpjaWFF?=
 =?utf-8?B?ZlU5aHJ3SG03WU9aOSswWkNPNWRBSXRHWEZpa0M0NHl3WmREZk9RdGIvbTBt?=
 =?utf-8?B?WUYweldFZUZJV1k1eTJQR0FmeGhOWTlHTEZRaEJCVWVjUWZHWGQ4YS9yKzZN?=
 =?utf-8?B?TWt6bWhwbzlWWGVNRzEweWczZkd4aDUwRktnWDRsc2xVZGZlSmdrNjJPcnB2?=
 =?utf-8?B?c3VnRE93YmRiWjk1TWtqclF3WVpZRjBQYjUxUUx5ZFAvem0vR01iM1R4bkxy?=
 =?utf-8?B?cEYzbUExcFFCbDh3L2ZtcVlyTlNkTWM3RVA2NllBcURNUmRvTXl3L2Q1NWUv?=
 =?utf-8?B?Z01hc0xsd1JTV01HZHRjRS82NGc2ZExWczdhdWFpRnZIUzRRMjV2Q3g2SndU?=
 =?utf-8?B?S3ZWNnZGekU1YjBpYVdFN3ZHSG5oM0IrekVDOCtKaE1DcmpHaWh0djhMdzI2?=
 =?utf-8?B?M2VvenBXekd1czdJL2kySTlxSWV2RTVTS2NHUVIveEJrZllveHVzRlhhYjI1?=
 =?utf-8?B?Qm54MHJCUmlQRmYxQ0R5OEl3bmZ6V2loaTRLOWxtU2JBVURpSmRScC9vL3pK?=
 =?utf-8?B?bkJIZVR1cWVKbUNhUVhFcElmTkt0RHhURW1pd053RWRuRi80NG9vcE9HU3kv?=
 =?utf-8?B?QlhrN3crZ29oU2RtWjRuMS9GLzVoSkZaQkVLbUxsaWVkb1pLQjc5cG5OR1ND?=
 =?utf-8?B?VjIrelJYZjlzSHlVWDRNMktSRXZMUjBFc0hTeUhpUFFhdnBJQkdEOUNldGl4?=
 =?utf-8?B?d2VxOFVnbEdkQWlPRVAzT2UwdzdSeGJXd3RpakI3dVdGeG81dzJRWkRtdVR5?=
 =?utf-8?B?QzhaUjY3MjJtV0lwcUNuU1pXOGFMSnczOVVqQkZ1THU1aWlveTVpcG5zMWJp?=
 =?utf-8?B?djZEcWg5NUNmZERNZUFPeWlidlV0eXI5Y3NrbitEVjNEK0R0U0cvRm9EYUdk?=
 =?utf-8?B?c21hR0N1d3p2N2JWTTdYeXV6NWxpN1hLUnlHOVQ5MkJIQzhIZEFoeUowWjUv?=
 =?utf-8?B?ZjRjSmt3ZHBHVlcxSnFaNS9QQ0VLT0RmcmRTK0hkMXJzeTA5S0g5c21sNGxh?=
 =?utf-8?B?QzYrRDJVbFlaQ3A5SFIxdlRBQnBGdGQzLzJVNjVyWTl2S3pPb1YzT2RUV09V?=
 =?utf-8?B?NWRTUkxqanpucmVNVGdLWEFXY1EvYzBVUVI2QlROanJJWjgraTVybVRDejRT?=
 =?utf-8?B?ZTA3ZnQwNmRiM25ud3E0ajBGN0ptcXJtdFg2VnhhS2VMdDhiano2S2Qzb2VG?=
 =?utf-8?B?WFdZM3ZoWUdMbDJ0cUpTZFBJZFBmeVBDazBzSlVGeStsRlJ3U2k1SlFPOFl2?=
 =?utf-8?B?OE9acDVOelBUcHFWUnRVekVCakZuWW1KcndSVitrQkFBcnQ0NjJSQ2tBN2Zr?=
 =?utf-8?B?QmZjT0pOdEJOWDZRU0dDQlM5UnpiVW9NQTVxTTdEbXY0QUZvbW4yQkFzMnFq?=
 =?utf-8?B?eXBqcjYreSs5OFhWQytuWDMzL1B6TlFIZjcvbDhSejU3bXhDSXN1OFNpbkR3?=
 =?utf-8?B?UHZXNi9xWG16REhKTjhITGVXcHBYNmVPQkl5clF2V1h0alQwN1ZWUi9lREs5?=
 =?utf-8?B?dHNqczgyZHA4Q1pvcytWRWRnOTRnNkt5NGhOdGgrbjZ3VStBTzgxc1RpQzFZ?=
 =?utf-8?B?cDFsem5wRitZVEQ2MUo4OEoybFB0OStTcWRtN2s1bjNIa0U0L1JWSlFpSVV4?=
 =?utf-8?B?eXRTRk1yZjB3bERiQ3RacEFnSEtmUUxBZi9kWVhYWFhwc3lINUlXdVVwRjdy?=
 =?utf-8?B?SU5vU29JOWNoVzIreVc2R2h0eERhRTgrSlRxS1FBRlp2R2szazIvaVF3NFdz?=
 =?utf-8?B?d081eFZ3dHIvQWhSZVlPUkszckZXQXM5UnRTcml2QStFNXVzVHZEcVVsa1BV?=
 =?utf-8?B?U1FhbCt1cmRCNmlGNFVsSlBNSjF2WkZ4Q3o1SHh5aWNsWVZFMTYwNG5Qd3Ew?=
 =?utf-8?Q?7KITf2rcnWdhrwmuuwr79s42y?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: af4f48e7-0555-4fe6-a990-08db7f9656a4
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2023 09:33:07.8267 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qG9bGc9INHjzrTY4AzqluNPV33M3C0lVZmKp5Wn/8wlpYDc47JSKT0m0nbshY96q4kYnHzFh1zjTY3goMl03EByxmr1v8u5Zn2f/yliLTTYeAyqG7uwP9Y5pOlDhiJ7J
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688808803; x=1720344803;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pML07FLU/LZqiW12w1hcKbRrSK77MEGIHw/ptvY+iAw=;
 b=Eny84fHHan9R1wHzVuH3PeVqM8ZHU1eQ3H00KYaDyufO3tWrqh5RNhIa
 cAu2zd6EPyAThJ9kf4lp4S1V3Lkw8V31Pu36AYr5yHflPyKrHUEeomsca
 6O68Ngz9zPww+1YInFKGdF6vERAvjsEDmE8cGdGcmWteUS+8DA+hBBOxO
 qdyAmd7Ff1QsRACTnOtOHRpwt2DNvvlhiAA2L91T06KMHcQNPuKwn6hfZ
 k0AosrK/1u/0yUuUyYYg9xgyqK+/ArcpM901Tdg5HEFsVnAuQY3QB7clO
 xTOkzjmnQT8M6TIvnrFWaQz1H1W+Bq1EwKBlAUDo88/aYXoCh4OFIz7Aj
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Eny84fHH
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1] igc: Expose and modify
 tx-usecs coalesce setting
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Anthony,

Thanks for reviewing.

> -----Original Message-----
> From: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Sent: Saturday, 8 July, 2023 1:30 AM
> To: Zulkifli, Muhammad Husaini <muhammad.husaini.zulkifli@intel.com>;
> intel-wired-lan@osuosl.org
> Cc: Neftin, Sasha <sasha.neftin@intel.com>; Gomes, Vinicius
> <vinicius.gomes@intel.com>; naamax.meir@linux.intel.com
> Subject: Re: [PATCH iwl-net v1] igc: Expose and modify tx-usecs coalesce
> setting
> 
> On 7/6/2023 8:00 AM, Muhammad Husaini Zulkifli wrote:
> > When users attempt to obtain the coalesce setting using the ethtool
> > command, current code always returns 0 for tx-usecs.
> > This is because I225/6 always uses a queue pair setting, hence
> 
> Should there be a follow-on patch to remove 'IGC_FLAG_QUEUE_PAIRS'
> altogether then?

This setting is still been used for certain case.

> 
> > tx_coalesce_usecs does not return a value during the
> > igc_ethtool_get_coalesce() callback process. The pair queue condition
> > checking in igc_ethtool_get_coalesce() is removed by this patch so
> > that the user gets information of the value of tx-usecs.
> >
> > Even if i225/6 is using queue pair setting, there is no harm in
> > notifying the user of the tx-usecs. The implementation of the current
> > code may have previously been a copy of the legacy code i210.
> >
> > This patch also enables users to modify the tx-usecs parameter.
> > The rx-usecs value will adhere to the same value as the set tx-usecs
> > because the queue pair setting is enabled.
> 
> This seems like it should be a seperate patch.

Yes, that is possible. Previously I thought of combining them all into a single patch. 
Let me separate it.

> 
> > How to test:
> > User can set or get the coalesce value using ethtool command.
> >
> > Example command:
> > Get: ethtool -c <interface>
> > Set: ethtool -C <interface>
> >
> > Previous output (using get command):
> >
> > rx-usecs: 3
> > rx-frames: n/a
> > rx-usecs-irq: n/a
> > rx-frames-irq: n/a
> >
> > tx-usecs: 0
> > tx-frames: n/a
> > tx-usecs-irq: n/a
> > tx-frames-irq: n/a
> >
> > New output (using get command):
> >
> > rx-usecs: 3
> > rx-frames: n/a
> > rx-usecs-irq: n/a
> > rx-frames-irq: n/a
> >
> > tx-usecs: 3
> > tx-frames: n/a
> > tx-usecs-irq: n/a
> > tx-frames-irq: n/a
> >
> > Previous output (using set command):
> >
> > root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10 netlink error:
> > Invalid argument
> >
> > New output (using set command):
> >
> > root@P12DYHUSAINI:~# ethtool -C enp170s0 tx-usecs 10
> > rx-usecs: 10
> > rx-frames: n/a
> > rx-usecs-irq: n/a
> > rx-frames-irq: n/a
> >
> > tx-usecs: 10
> > tx-frames: n/a
> > tx-usecs-irq: n/a
> > tx-frames-irq: n/a
> >
> > Fixes: 7df76bd19181 ("igc: Add 'igc_ethtool_' prefix to functions in
> > igc_ethtool.c")
> 
> Please use the commit that introduced the functional problem, not one that
> had no functional change.

Ops. Thank you for pointing that out. Must be a mistake during copy/paste.
It should be this fixes -> " igc: Add ethtool support"

> 
> > Signed-off-by: Muhammad Husaini Zulkifli
> > <muhammad.husaini.zulkifli@intel.com>
> > ---
> >   drivers/net/ethernet/intel/igc/igc_ethtool.c | 46 +++++++++++++++-----
> >   1 file changed, 34 insertions(+), 12 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > index 93bce729be76..1cf7131a82c5 100644
> > --- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > +++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
> > @@ -880,12 +880,10 @@ static int igc_ethtool_get_coalesce(struct
> net_device *netdev,
> >   	else
> >   		ec->rx_coalesce_usecs = adapter->rx_itr_setting >> 2;
> >
> > -	if (!(adapter->flags & IGC_FLAG_QUEUE_PAIRS)) {
> > -		if (adapter->tx_itr_setting <= 3)
> > -			ec->tx_coalesce_usecs = adapter->tx_itr_setting;
> > -		else
> > -			ec->tx_coalesce_usecs = adapter->tx_itr_setting >>
> 2;
> > -	}
> > +	if (adapter->tx_itr_setting <= 3)
> > +		ec->tx_coalesce_usecs = adapter->tx_itr_setting;
> > +	else
> > +		ec->tx_coalesce_usecs = adapter->tx_itr_setting >> 2;
> >
> >   	return 0;
> >   }
> > @@ -910,15 +908,40 @@ static int igc_ethtool_set_coalesce(struct
> net_device *netdev,
> >   	    ec->tx_coalesce_usecs == 2)
> >   		return -EINVAL;
> >
> > -	if ((adapter->flags & IGC_FLAG_QUEUE_PAIRS) && ec-
> >tx_coalesce_usecs)
> > -		return -EINVAL;
> > -
> >   	/* If ITR is disabled, disable DMAC */
> >   	if (ec->rx_coalesce_usecs == 0) {
> >   		if (adapter->flags & IGC_FLAG_DMAC)
> >   			adapter->flags &= ~IGC_FLAG_DMAC;
> >   	}
> >
> > +	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS) {
> 
> This is removed from igc_ethtool_get_coalesce() becuase 'I225/6 always
> uses a queue pair setting', but you add the condition check here?

We still need the IGC_FLAG_QUEUE_PAIRS setting here to configure the interrupt 
moderation because the queue pair option is still used dependent on queue configuration.
If the user changes the value of tx-usecs, rx-usecs will follow similarly.

Thanks,
Husaini

> 
> > +		u32 old_tx_itr, old_rx_itr;
> > +
> > +		/* This is to get back the original value before byte shifting */
> > +		old_tx_itr = (adapter->tx_itr_setting <= 3) ?
> > +			      adapter->tx_itr_setting : adapter->tx_itr_setting
> >> 2;
> > +
> > +		old_rx_itr = (adapter->rx_itr_setting <= 3) ?
> > +			      adapter->rx_itr_setting : adapter->rx_itr_setting
> >> 2;
> > +
> > +		if (old_tx_itr != ec->tx_coalesce_usecs) {
> > +			if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs
> <= 3)
> > +				adapter->tx_itr_setting = ec-
> >tx_coalesce_usecs;
> > +			else
> > +				adapter->tx_itr_setting = ec-
> >tx_coalesce_usecs << 2;
> > +
> > +			adapter->rx_itr_setting = adapter->tx_itr_setting;
> > +		} else if (old_rx_itr != ec->rx_coalesce_usecs) {
> > +			if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs
> <= 3)
> > +				adapter->rx_itr_setting = ec-
> >rx_coalesce_usecs;
> > +			else
> > +				adapter->rx_itr_setting = ec-
> >rx_coalesce_usecs << 2;
> > +
> > +			adapter->tx_itr_setting = adapter->rx_itr_setting;
> > +		}
> > +		goto program_itr;
> > +	}
> > +
> >   	/* convert to rate of irq's per second */
> >   	if (ec->rx_coalesce_usecs && ec->rx_coalesce_usecs <= 3)
> >   		adapter->rx_itr_setting = ec->rx_coalesce_usecs; @@ -
> 926,13
> > +949,12 @@ static int igc_ethtool_set_coalesce(struct net_device
> *netdev,
> >   		adapter->rx_itr_setting = ec->rx_coalesce_usecs << 2;
> >
> >   	/* convert to rate of irq's per second */
> > -	if (adapter->flags & IGC_FLAG_QUEUE_PAIRS)
> > -		adapter->tx_itr_setting = adapter->rx_itr_setting;
> > -	else if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
> > +	if (ec->tx_coalesce_usecs && ec->tx_coalesce_usecs <= 3)
> >   		adapter->tx_itr_setting = ec->tx_coalesce_usecs;
> >   	else
> >   		adapter->tx_itr_setting = ec->tx_coalesce_usecs << 2;
> >
> > +program_itr:
> >   	for (i = 0; i < adapter->num_q_vectors; i++) {
> >   		struct igc_q_vector *q_vector = adapter->q_vector[i];
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
