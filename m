Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CB668C35F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Feb 2023 17:31:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4F7C41716;
	Mon,  6 Feb 2023 16:31:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4F7C41716
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675701063;
	bh=a754d6IYVj08EMckIvxHXibeunxeC1JP5ijNxOBhYdg=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SgOGRulqaWCbrl3iOOaFyAhgcO1JHmckgH4WL6La5VF1aXX1c5xyKZLBo4K90iJwH
	 /RDxuHcsnRcwXHFqCdodlMoY7p6HlJwgAebfsZ2KgMVT3STEAg7ksCe20PHNp3IPL9
	 nvEJNiPE0BtTcDQGgZsFLF32/oupmqlA1fTRrf+LCPHRULJiqjcMUgDZOez59niHms
	 hzQ8UIIXjalt625wmwpm2PYOTwcEkmozadJOApVUjq3kde/QTAXctdGLkBemGvMHgQ
	 9Mfj/7WH4QX6IfrEZVIaWqAmSICbibRootKA0wtitpNPalLHlpfwdr5xEh1XgVr23P
	 Vh0WAJP5a5cHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZdYgWJvG-34i; Mon,  6 Feb 2023 16:31:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 876E4416E3;
	Mon,  6 Feb 2023 16:31:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 876E4416E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01BE51BF343
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9A96401FD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:01:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9A96401FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12zD44EK0x77 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Feb 2023 15:01:23 +0000 (UTC)
X-Greylist: delayed 00:07:06 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A701640061
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com
 [68.232.153.233])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A701640061
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Feb 2023 15:01:23 +0000 (UTC)
X-IronPort-AV: E=Sophos;i="5.97,276,1669100400"; d="scan'208";a="199507430"
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Feb 2023 07:54:15 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 6 Feb 2023 07:54:15 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.16 via Frontend
 Transport; Mon, 6 Feb 2023 07:54:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUNp6TBhCoeSSvCp1kPi9qA7WAC83AiPmOrh53gd52ygupLNDoUWqdkV5NiPH8DxuL2fQEkIELjHUa24UYIuaOBLGTsV9LsHnODHscg7XWxHtM7ydnFBwQCQVoICYUpYvaAlnJn2FrFT/SLI/A4/y2QECikQqmPd7E3rBE46nIGcvj+AA6444DwPH12aPSrW37X0Gb3y9xiCzJ/CUluWzByKgT1+00+ZZ+L4lhfyj7y3bwcGD48rn54RU25DOtAS1BCEpt9AIHfaP3tEpWZcEmId/bZr13Rx1YjFtEwJOmssURTMGext5zjeHvvFyK9JsmyUDfidI7aDPhxxd5yfpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BFvjYzwvWCbyA9OdvFBC5mh+gBLLWKF0zndj84KHwUw=;
 b=QXW6k12yeeEq2fDdFur0V7mkrlLA7H4O/Oo4Oaa4VLZumaeBgVAlSAUBHekAgYTowuX/aJWaDY2PAKzdFx2GstcIkgAVw6ldK447MoEOzMyyYHpiZLRojU+l6XecmlP8t06tnk8iDUnQdvrnYByUc4dt5wazqM/gVOUtlIQU8TCA26N+lWo6ns1EXaW7I6eJXoXFcn5wMghhlGGnzZgHvYhqCFBqk2tTFgzU65DIhVwtuNUYRfYirkSf7qjYHGz/HEmoyuH9JN3yBBfxdItu7vpXbMgSHuivhoWplblkvWc4rJsX0z1BAVY450umynL3EWiRC10eYmxgocTDEMG5QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from DM5PR11MB0076.namprd11.prod.outlook.com (2603:10b6:4:6b::28) by
 MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.34; Mon, 6 Feb 2023 14:54:13 +0000
Received: from DM5PR11MB0076.namprd11.prod.outlook.com
 ([fe80::33d3:8fb0:5c42:fac1]) by DM5PR11MB0076.namprd11.prod.outlook.com
 ([fe80::33d3:8fb0:5c42:fac1%5]) with mapi id 15.20.6064.031; Mon, 6 Feb 2023
 14:54:13 +0000
From: <Arun.Ramadoss@microchip.com>
To: <olteanv@gmail.com>, <UNGLinuxDriver@microchip.com>,
 <vivien.didelot@gmail.com>, <andrew@lunn.ch>, <f.fainelli@gmail.com>,
 <kuba@kernel.org>, <wei.fang@nxp.com>, <edumazet@google.com>,
 <pabeni@redhat.com>, <o.rempel@pengutronix.de>, <Woojung.Huh@microchip.com>,
 <davem@davemloft.net>, <hkallweit1@gmail.com>
Thread-Topic: [PATCH net-next v5 05/23] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
Thread-Index: AQHZOjI/lcY7X8lCpUePKV0JU6+Pjq7CAVoA
Date: Mon, 6 Feb 2023 14:54:13 +0000
Message-ID: <da3509e4602e28a1cc0d14cfce72db68808f5947.camel@microchip.com>
References: <20230206135050.3237952-1-o.rempel@pengutronix.de>
 <20230206135050.3237952-6-o.rempel@pengutronix.de>
In-Reply-To: <20230206135050.3237952-6-o.rempel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB0076:EE_|MW3PR11MB4764:EE_
x-ms-office365-filtering-correlation-id: c925d7bf-a6cd-4717-7372-08db08520326
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kqHggnBP4aWAYAIvIajNQ0yExpuAylZ819WLxQImzqlOU61pbJtBDPTl7LL9eXmgw+byCwteXWvqKm67zvN3YS2JrCtogKGjoQtlM1GMS6GGaaaiFIA/Uv01FaxvvjxiWyjgUwX6jtear26rzJ9iDFWIwesy5BcU+no2RkZi0f074VCP5vcBsrNng/Yd1ivT9uLg2wFCgSBZa/JpMhs59GVl1Wiw8fQvxa0M0+mgK/VGtQGrzC5kA5ZHfT5kDSEMmXoFe05g+wYUnwJHbHWQ1DK01V+H87/XtxJfmSd+rgb5XAddfoa5fhthYoJTt3nsoE/1R9VEQlFlx96XR7qGi16UUDKD5NrQoBoJodMrcmsnujVG8U61t5h8u252WXGCmukZtng4nMQSEu8focI7GiFoSrSSL0MKcVNPfoBIouBzJ5aoJhFr3Ui+TXAo2Bj+aZA0sGDby7Sw2CnSsNkaCsGygcoqsp7kX6lxRzq/91HpCox5OTSOUgKgPKtRT6sw6GJp8axQYZHQ8NiZ9c6znZ2WRsIqsU7PohE/dFfuMLEFmCcx6AwcgvHVJv5deNgtQ/a+qGBe6y66oVMLQ0QzEJwZ3Yo1RrWw4+wktqnseUq8UAAA/dnt1N5+RgLkOvckBz7rseZ9BGOizYNgUEzywi9Uh+pLZIxxzsrc0kd620rX3jiVDBcN9wRCvLJIXnkLHmEkbrrffVNQC2V1tsMD2Ou65FDo5ZwnAxRzC7WZgJ5iPzE2pXNKxOvC0CHgDema
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB0076.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199018)(8936002)(4326008)(6512007)(8676002)(7416002)(41300700001)(64756008)(66946007)(66476007)(66556008)(186003)(76116006)(5660300002)(66446008)(91956017)(6506007)(2906002)(122000001)(38070700005)(478600001)(6486002)(71200400001)(921005)(83380400001)(54906003)(36756003)(110136005)(86362001)(316002)(2616005)(38100700002)(99106002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UWlZajlBQjBUMmVma1kzWjRTaFk3UHpiemlEeDdFUXNGTWJTZi92b3dVWHg4?=
 =?utf-8?B?WTRjV1V4Z2JiV0tMeEI1WVpnRDhESDVtaGxpR1YxcjY1b20wNFRmdjA2Qlc0?=
 =?utf-8?B?RzdPQ2dhUzh0TTFPRnJiVG02MGdXK1ppODByZ3QvOE0yRUo4SlFZM2ZGT1pp?=
 =?utf-8?B?U25WWnF3NWhHZDR6ZU0wRTczb3hsUUQxekNEQWtkN3JWZWZ6M3FpQTBSQzNL?=
 =?utf-8?B?bzJjckUxamdMQVBwaTY5R0FJWEZPYjhBNWxOWktwcXJQVmdJS2U0Qlh4aThu?=
 =?utf-8?B?eHV3Y0hjVkE4NGZrb3FJSmlWMzVTMFdsT0EycGQwT0xCbjZzVXZ5L25JdVhT?=
 =?utf-8?B?aS9yVmRxNTEzd0Yxd2hGU0pZN0o0emQvc2RQN1ZDelNYczRpS25FLzBVTDFN?=
 =?utf-8?B?c01zaXNWRlE5SjF4R1pxc3UrbjF5SGM2ZDBBQlNQeFNUSTc1aUJvYTRJQUQw?=
 =?utf-8?B?WitKNlV2dGpaZnRhL2ErM3ljR2hwcHZLVno3NE02RjYzcmVCUCtpOU9YM1o4?=
 =?utf-8?B?K3F4LzBTR0kvbGdaUFE1SmZMbDkyMXg1ck05MlpPYWxJWEg0UDFkUkhpV3ZG?=
 =?utf-8?B?VHJ0TFMySHVyVCtwL0lPWGJZcHRxOEZIR25sNWlLdllMR3BWQjE4b3A0clBK?=
 =?utf-8?B?KytKZStDc2NUWU8vVG5UOWU2NnlQR0U1czhqQTNYT2tpakYvUFpsUTJZT1o0?=
 =?utf-8?B?UVVmOUlUM3NFclZ2NUlUWXU0bzhHTFBxOUhKRDNDZ08vNnpOcGVGUis2M2Va?=
 =?utf-8?B?Z1c0RFVNblcxK3VoNkR2Ym4vOTVYb1FhNkw3WDZmY0NORE5zR3B2UlZrRElx?=
 =?utf-8?B?K2tkTTJIdW5FYndkR1RXYlA1ajZOQ25lUHQvRCtHTWlkYmwvY1cyUkMvOE1j?=
 =?utf-8?B?bkp6c1pNd0hFaGRlUUNENkR6akVhcHBpb0J3Q3d5RDFsNkdJWkoxRkpNaWpG?=
 =?utf-8?B?czdMeklnYysxRmdxcDNlNzl2NW4zVUt3cWhhZXlubHZjNXBqVGhEMERORDhM?=
 =?utf-8?B?NkJKMlFLZXM3U0xFNjVCMm5jRWV1MFZyVnFjZ2FpNVF6cW5oTEJrYUFlcEJW?=
 =?utf-8?B?bEtKaU9XK1R0MWtBbkhwbWphVnJySVM2K2ZWWldFcnBSK3FEUktQNmhWblpn?=
 =?utf-8?B?YXlzVVRPTFQ0V2NiYng2b281ODBocE1YZ1dTVlF6WGRUZW8xRjFZNm9na0ZP?=
 =?utf-8?B?aXRWNUtJN3dQcmZTSTBwd3hkQzdFK29MZ2Vzckt0MUo1aDRWSW1RL0ttN3NI?=
 =?utf-8?B?V0ltQ0hWVGlxZXMzdVhqcG9WM2FLMHlyYzVkTG50ek9ZSk1NOVZCRUVHRUd3?=
 =?utf-8?B?ZjJGbDFIN0JiMnpZQXY5VWVlVVVyRHlvYUJiOVpQazkwa1orVGZTSGZTay9K?=
 =?utf-8?B?L3dhT1hzR1FrVGJWa1A2RVhnSzZwbWdZb0M1R0ZsNmJ4WFBnbU1RUnBXSng4?=
 =?utf-8?B?QnZ3Tjlxa2czSmg0eHk2L3R0UjRndzFPcU80WXdld083K3kyazNCdzdOSy9H?=
 =?utf-8?B?eklSTnYwOEVwNmZZdGdieUJXVWx2N2J4NGFCQks0MVdGQSs0V09SeiszbDBN?=
 =?utf-8?B?UE1TUmhGWEJycVVTck5hUDVNbnQrdERRanc5QjlCbUNOT2xDQzdZWHN5d0hp?=
 =?utf-8?B?bldicEVDcmQxWHJBbkpIMzVaQTg2UnY0MUs3c0Y4S25OSHVKaGxHRnhTWDlZ?=
 =?utf-8?B?RllRRWJhZ3gvaUVVVjVhU3pxZkQ2ekc1Rnh3enRmL3ZLa28wQWVaRlZ1TEJT?=
 =?utf-8?B?UTVtTVFFVDdwa1BINlcwRkRJY3d2T256a2lwNGZxcmV1a0pDRGZncUx6VG9y?=
 =?utf-8?B?YTR3cC94WjlPcklNY1dEMi93TEorQnRpWHEyR1d5Mk9vK3lzTnZxZDdDc2Jr?=
 =?utf-8?B?bjUxbXlvTHIvc2Y3Vm95eHBweU1qMTFaVDFpRWJHMnN5dnRobFBqYlpZdGRU?=
 =?utf-8?B?WkJTdEpTSmhaTG1ldVlURkhHOU5wd1NicWlJdUxnd1kxVzJQKy9QK0tpeVpB?=
 =?utf-8?B?ZGJaOUFqcVplOWYvaEJudFZXZ2ZJRVcwWHFDQlNRRERPcFBDT1ptM3FxYWxD?=
 =?utf-8?B?M1ZpclIyeTBDemN4dFE4UStRSVQxbmJxdUxRS2x3a05wUW84enF5SVRwQXEw?=
 =?utf-8?B?ZmZNUmRVTFFFQ2M2bURNeWlCc045ME8zUmU1aWlzdWF1ZzZ1alhvc0tsalJ0?=
 =?utf-8?B?UVNjSnRSdmJhNnBKWFZmS2EwWTVVMW1kRXpROXBESVNTTEpUVm54MzloeDBk?=
 =?utf-8?Q?cyZjHCz9v92N2CV3A82uCGACQr1YKqFu5M6QMbUgsY=3D?=
Content-ID: <1493A5F5CEDD5844A905596578CABFBA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB0076.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c925d7bf-a6cd-4717-7372-08db08520326
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Feb 2023 14:54:13.5780 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ukkWgPhwzj/fnen/c2HNALEcB+ToVhVTeWY5xVxtjNOpHxoCjJxqdWwv/7usnAzdbL1ird3cpjRy8VQ5e3198b8E3Zck2OXYPqMnyKm9v9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4764
X-Mailman-Approved-At: Mon, 06 Feb 2023 16:29:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1675695683; x=1707231683;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=BFvjYzwvWCbyA9OdvFBC5mh+gBLLWKF0zndj84KHwUw=;
 b=WCRoxlAWdNhnFCQgl0mtyfNr5JaWYeVlZHnSOUJyOeS+fGUyhiDWuzVH
 kJCqoGkd8s2EZNniWtOkja5JD4HLldU456HpGw9nydFufay3OBU6je4W3
 E18KyYY26lmm5SB3r8ZElFIJQAwdXRTMsjxUjVvSwHwQ8LikLow8nfCJc
 0TpuNPH3z/2rd+Kz6mxL0+je1H21fyMXZuEUvHd5+ZBMsKhnMKbTxhUkN
 g2xhyjgV6n2g+e+CeSL6gEeZr0AfnUBiik52tCGOeEY6H0GZMerG47oVA
 D6mgBVpMDhe+AGjYIAj9U0lRh35/B+9NUAf91JZSujaOnI5l3py+B581B
 A==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BFvjYzwvWCbyA9OdvFBC5mh+gBLLWKF0zndj84KHwUw=;
 b=lWAzod1j7aJXe21FH5MPJMJyYefuXELFG5QSRHvzT8GmTZy8fw4uX0QaB0YZDnAReuru54y6DRF91ucdn9eCL04+jvPW5u63cE5YH/Ct5QTbFJ0lE3ONswQ1Y856xXU3qcbt3xjNBe6r59MlPv3zFi4HnxDwv6bD9oseQJwnYHc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com
 header.a=rsa-sha256 header.s=mchp header.b=WCRoxlAW; 
 dkim=pass (1024-bit key) header.d=microchiptechnology.onmicrosoft.com
 header.i=@microchiptechnology.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-microchiptechnology-onmicrosoft-com header.b=lWAzod1j
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=microchip.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 05/23] net: phy: add
 genphy_c45_ethtool_get/set_eee() support
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Oleksij,

On Mon, 2023-02-06 at 14:50 +0100, Oleksij Rempel wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> 
> ---
>  drivers/net/phy/phy-c45.c | 235
> ++++++++++++++++++++++++++++++++++++++
>  include/linux/mdio.h      |  58 ++++++++++
>  include/linux/phy.h       |   7 ++
>  include/uapi/linux/mdio.h |   8 ++
>  4 files changed, 308 insertions(+)
> 
> diff --git a/drivers/net/phy/phy-c45.c b/drivers/net/phy/phy-c45.c
> index 3ae642d3ae14..38361df1e669 100644
> --- a/drivers/net/phy/phy-c45.c
> +++ b/drivers/net/phy/phy-c45.c
> @@ -661,6 +661,129 @@ int genphy_c45_read_mdix(struct phy_device
> *phydev)
>  }
>  EXPORT_SYMBOL_GPL(genphy_c45_read_mdix);
> 
> 
>  /**
>   * genphy_c45_read_eee_cap1 - read supported EEE link modes from
> register 3.20
>   * @phydev: target phy_device struct
> @@ -1194,6 +1317,118 @@ int genphy_c45_plca_get_status(struct
> phy_device *phydev,
>  }
>  EXPORT_SYMBOL_GPL(genphy_c45_plca_get_status);
> 
> +/**
> + * genphy_c45_eee_is_active - get EEE supported and status
> + * @phydev: target phy_device struct
> + * @data: ethtool_eee data

Does the comment need to update based on the function parameter.

> + *
> + * Description: it reports the possible state of EEE functionality.
> + */
> +int genphy_c45_eee_is_active(struct phy_device *phydev, unsigned
> long *adv,
> +                            unsigned long *lp, bool *is_enabled)
> +{
> +       __ETHTOOL_DECLARE_LINK_MODE_MASK(tmp_adv) = {};
> +       __ETHTOOL_DECLARE_LINK_MODE_MASK(tmp_lp) = {};
> +       __ETHTOOL_DECLARE_LINK_MODE_MASK(common);
> +       bool eee_enabled, eee_active;
> +       int ret;
> +
> +       ret = genphy_c45_read_eee_adv(phydev, tmp_adv);
> +       if (ret)
> +               return ret;
> +
> +       ret = genphy_c45_read_eee_lpa(phydev, tmp_lp);
> +       if (ret)
> +               return ret;
> +
> +       eee_enabled = !linkmode_empty(tmp_adv);
> +       linkmode_and(common, tmp_adv, tmp_lp);
> +       if (eee_enabled && !linkmode_empty(common))
> +               eee_active = phy_check_valid(phydev->speed, phydev-
> >duplex,
> +                                            common);
> +       else
> +               eee_active = false;
> +
> +       if (adv)
> +               linkmode_copy(adv, tmp_adv);
> +       if (lp)
> +               linkmode_copy(lp, tmp_lp);
> +       if (is_enabled)
> +               *is_enabled = eee_enabled;
> +
> +       return eee_active;
> +}
> +EXPORT_SYMBOL(genphy_c45_eee_is_active);
> +
> 
> 
> --
> 2.30.2
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
