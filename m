Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9A4585444
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 19:15:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09A4484114;
	Fri, 29 Jul 2022 17:15:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09A4484114
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659114918;
	bh=oZ3pO8I+MQweJtNv22efkNskehx1huFpm4Zx710yH+Y=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=far+cPnSlFMERcbSgh8Buq6Nivpig3mBYanS9m3OhAhjyNzfr+5oZ4gJjkck3wuLV
	 JsA28+TBxuBrUQKfrSQQ8N27T5oD8+0Dam0hkI3repplShzUZ4dWZAKM1RGcNYi/Il
	 gzF+2JQvglRuyU8c3WggPk3luG6MrnHnRsWyev3gnF812o33vbCVrgQwy/737KO/Hr
	 xzXMmNysEZNPCvP9G+QxrKK/SIbSqQfe8PIGsxsfsIDn9Uqx7gT2qpNaMCa/NMlFWO
	 ndtRiP8LupwuWAcS11IjDAdAzq69O3NCaASbuhcwS4BG6SBI4t54cDdrGZbA/n2qQf
	 fCXhvpgTgqQZQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 41WW7pVfaPQg; Fri, 29 Jul 2022 17:15:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 003B3840EE;
	Fri, 29 Jul 2022 17:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 003B3840EE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1BCD1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:15:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9699841BC3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:15:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9699841BC3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wB4QcdGmZ_OU for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 17:15:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9192141BC1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9192141BC1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 17:15:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10423"; a="271851094"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="271851094"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 10:15:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="847180401"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2022 10:15:09 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 10:15:08 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 10:15:08 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 10:15:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VMilDIdVtkn54+Axqv8gwA9b7TG327CAcUKfCa4op9n/kdk5G8TL+Y8Eqm+sOJiXZzpBB99A7tCObsJP2Rnxzizu3YEMKYapFR6FOR+orfZfTsz4qTbVUBeZabFK4Slpuy5SMwnA8kEnif4jUdpaMGa/oefHG/pQa6XVfqwWIs9lFjfjadcnn/jyqHjHQeaI1qrD0O+lIhZ06n67zpufLtU8xOW2zLuYic5Xvo4drP7/hgT5s48LakONKd2/7PU8ymyJNV5y8wmxp2vOpfHBZ75sImQPROREkXlj3VQBVbViJX0dQ0ktdwH9cWgVnf4J+8Ei25oqmwghHuCyZNIvOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SsuOzNsf4YVnnpQolc2uHVGKP5Ijyypf4O7G/SeJV1M=;
 b=iboyEJnT6e9dQbEaG90C5gb5JKCgmpB9lBYss45ccjm2ViC8IVGs5Q1WJL1ohbt2bFaHof4aOf6aiYpNrrP6dF9Nc2z2SiJgLQQqFJHcNDARgrNkF9fdLM7dP0ZrNpUzO53guIwDxD2ygoQ7nMkoaVngpbAL/CVMwTmoJZOQiEUIlzNxLfqcYu7F0mGbuxaENk8VKqtgW3pFaUNXGZhHW1etW3r3JWGUu7JnKkNWRIJSvQooDi3ADexJsssE9Oolcf8YoL7hsriJb8ke33PaxUBGQwA6WYWGBv7nXhO0LvPUxaeTRKrLTMeZsG2Oh1kIhu+yipbpPpdmbe0i+c7hsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by BN6PR11MB1828.namprd11.prod.outlook.com (2603:10b6:404:103::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.10; Fri, 29 Jul
 2022 17:15:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7504:add2:2794:3ecb%7]) with mapi id 15.20.5458.025; Fri, 29 Jul 2022
 17:15:06 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: Guangbin Huang <huangguangbin2@huawei.com>, "davem@davemloft.net"
 <davem@davemloft.net>, "kuba@kernel.org" <kuba@kernel.org>,
 "edumazet@google.com" <edumazet@google.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "snelson@pensando.io" <snelson@pensando.io>,
 "brett@pensando.io" <brett@pensando.io>, "drivers@pensando.io"
 <drivers@pensando.io>, "Brandeburg, Jesse" <jesse.brandeburg@intel.com>
Thread-Topic: [PATCH net 1/2] net: ice: fix error NETIF_F_HW_VLAN_CTAG_FILTER
 check in ice_vsi_sync_fltr()
Thread-Index: AQHYozV63gOnafqw9kCc8iy7jdrVLq2VIGYA
Date: Fri, 29 Jul 2022 17:15:06 +0000
Message-ID: <SN6PR11MB3229C1758BB46227B085B7BFC6999@SN6PR11MB3229.namprd11.prod.outlook.com>
References: <20220729101755.4798-1-huangguangbin2@huawei.com>
 <20220729101755.4798-2-huangguangbin2@huawei.com>
In-Reply-To: <20220729101755.4798-2-huangguangbin2@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
x-ms-exchange-imapappendstamp: SA2PR11MB4972.namprd11.prod.outlook.com
 (15.20.5482.001)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ca576b7f-701b-4fef-3303-08da7185e25b
x-ms-traffictypediagnostic: BN6PR11MB1828:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: knFmh1iq37bNueHYm80Y2pTd8G9eEq47q6RAs7bsYTrpdoSG8Vl29onukJ3o7k6pyDa5O6lUk9qbxRK0IMiSniBIP07/9lUp1wxCoozr8frwmiJ+50oF1yzln/51Rn+P7Uehcskl+XrfP/DgZOxrshRB8pRr+p5nme/2JbNnIiC29I4N/4n5vFe/VMjpnhJtN0TDVelt/vjECr4lPkqwlOL63+O1x0f/dZpZoF8XlZnu2MKzF6VBrUevllxM56r4OlbrA19MOw3zGy2pUQlgcS38HohI5eHOEExW0VUDiXSOQt4tf3ovqvlkiCAmTcTnIvUaeXcaj89QcK7h6u8mY0YrnY2LKJ/vWVGDXivwpEcfH8rX3uAGJ5nOtbttr4EAzmsbA6LjH5OI4qTCKXJ+S8i9RYhxo9lTiRf/Ubemucyb0RxDRW5Rtl6xa1eZVN2MOnOJn2JV8c4Z1yvqTCTEPcIbnw+c7frtFBH5eONkcFEPFlzISKcvJ9pWMRqNR6GS8EV02WzeDlpFOx1Jq3STnYJesQqGgl+0ahIUSbSjCxpbH8KGOQUpVy3u2S5mXrf2DQOg/g2T3Pf/acuVz/2Ziyo1FFyAlQLMCw3MYGUiiRhkswMZMGe172WqBaOva5PzjGLTnqez+5pCTuJOs2kDKyB/3WBdgj8ohGSWJM82RDNKIoiLc75b8UNRnfX2S9y2eQFxU5zTV3WCohPY1DKc/wAuf21AwG9trWix8jisVceDYEBKs1hI8G2OiX1unsRqy0epCL+GccRzmyX5oUdZGIUFoDJ+IPNY/P34WE/oYxxqkOp46LO2dmJSsJgRuNR0LvEWOsF/X19h5R8wcjUBHQVhoSHZ/amY/O+98cEun4o=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(346002)(376002)(82960400001)(86362001)(83380400001)(38100700002)(38070700005)(66556008)(64756008)(66946007)(76116006)(66446008)(8676002)(55016003)(110136005)(316002)(122000001)(4326008)(921005)(54906003)(6636002)(66476007)(2906002)(5660300002)(6506007)(52536014)(26005)(8936002)(7416002)(9686003)(53546011)(7696005)(33656002)(186003)(478600001)(71200400001)(41300700001)(43740500002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aWlUemlJOWRGcnJoLzdTQTlsK0pMVkZJVHJlV0YvaElwV2xXU00wbFlNVG1G?=
 =?utf-8?B?TjE0NFZxTVNFNitVVG42RjJjTFhGOXp4cmRtSytvU3RRMzQxOVZHSTJ2Snhk?=
 =?utf-8?B?aE9GRHRYaWxUcXphSUdkUmg4STRYV1I0dVRzandEQ2o1TnhrenQxakZZNWhK?=
 =?utf-8?B?UlZoWU9oN0xGNmdZeisra1J6VVFxK0xKQ2poVXJTbGdPWjQ1SkFQRDNtaURp?=
 =?utf-8?B?NzJoV0JXUUZnL010Qk9FZnBuQm9nWWJXWUJraytIa2dvVEgvazNoMytRd1Nt?=
 =?utf-8?B?bERFR3BPeHorTDBLQWtZMEtsQ0c3bzlWcmE3alNoM0doSWxlYU5jWnZzb0Zs?=
 =?utf-8?B?dldJN1A3MHRicjgyTDhBK01wNjEvRjFBa0VYL3ROa3pycVEramZ1a1J0Umt5?=
 =?utf-8?B?aEtTRTZKTnRLeFBDM3A2dmw1bk4vckk2ZWpWTnNOMkFzSGN6dWoyWm9JeGQ4?=
 =?utf-8?B?SS83bGFVSFphOTU5K0VCYVZyQXF4R2NsT0Yrb1d3NU12cXQ1TEJDUGlwRXFO?=
 =?utf-8?B?bEdXNWQzSyt4WldRREZ4dmljb0VXQ0szaHdWQjhrdUtoakxDV2ZJakJOQ2ta?=
 =?utf-8?B?TEUwaUtzWEhSditRKzBXMUVGS0MzdGtRK2RsTEdvaVdLZDQyVHpNNWJiL0pE?=
 =?utf-8?B?aVdIUVgvc29mSS8yMldCYnpwaStwbWl0dVgxV3BkcVNTaHhUQ2tDb3grcTAy?=
 =?utf-8?B?Z3VCKzZWb0xGTVJqSnp3d1NNNEYxUXYyNytOenpUZDdjbTFOSlBNQzRtMDF0?=
 =?utf-8?B?cUQ2cUtVb1I5UGN0TFp3RDRlK29YZUZYcVd5MmtJUElpQUFPWjBCa28zRytO?=
 =?utf-8?B?REFvN3p4VHc2SlQvclNGRTFieXlrWm1OTXI4d01ZWVpzZmRKVnUzL2RacjdN?=
 =?utf-8?B?Y1FpQVBRNzNKTTlBVStKSHk2MVR5UTVlRDRTRG0wSTlYbXFTN3FUM3hBRG9D?=
 =?utf-8?B?OGFGY1FoMzg0ZEJrNE5yWndiRklUSmJyVGZmK2s4amNZMlJwVlVEY21GMUxL?=
 =?utf-8?B?Q0MwWWVFbUorNER0eG1xRERMUVJBTW1iM3k5M2g2bUxYcDFIN2FkZVYwa2Zy?=
 =?utf-8?B?Y04rZzlSVWMxK1d4dTZEUG1IamdrdDlNQ0pBQklEVTFKVTRvNVdlZHlETytO?=
 =?utf-8?B?dmlwQjdSUm1sNWN5LzFmVTFaQzQxREdpUW85SXNTdGlBOG0yZGRTNlN0UXp0?=
 =?utf-8?B?UDBtOG05dGpPR2tTdEpsbjJDSFFyWG9PTlRSMmtFclc5dFBlNU0vdFFlT1Bl?=
 =?utf-8?B?NVFDb1VkS3BQSGQvSWRKUVphd082bFVhNmV4d2hMUE1kdzRHblAwS0s2MmJu?=
 =?utf-8?B?aE1wcllnQXJxNnIxczdqK3pORzIraHRlRDNZZnZXVnZLaUhyeDJFT0hGWUVk?=
 =?utf-8?B?WTlMa3h3NnZKbDVHRk1aSFZjWmtRTDJHTUtiV0hHWmNtRmUvdG8xREJiUTBC?=
 =?utf-8?B?dGpFaVB5SnRYZUZ3N1dCQWJvVHdRVmp0L0xZZUZ2YVhqN3llWGRnbDBmeTha?=
 =?utf-8?B?NWhrVjN4Ym9zN0FJbzZObUNxaFB1SG43QkEvZEhGbzV0WnB5ZGVheElmaEV2?=
 =?utf-8?B?NGhVUHpUMVJManA1RncxOHNVWEhaSlZ0TUdPODloNm5oMktzbUpIcEtKWWRi?=
 =?utf-8?B?Q2tUeDBYNGdtSG0yNUFWUVdiNDFiVTh6a1lyZ1NUN3NEeUVoQ1NBcVl4TXZD?=
 =?utf-8?B?RU9hZUZIZWRQdDBqRmtxUHZnQm1tQ1B3dnl0V2FsOGFJZEVYSm1GenQ5R1Zu?=
 =?utf-8?B?Q1V2VWdma1F4Qm1WMmRrSGJZejIzOGdQQXcxblZselZaMGJOaCtnREZXdnZC?=
 =?utf-8?B?bDlJdHNEZE5Ta1JqUTFXMFBrSlI1MGFwejZmVmduaForUHYwNERrVHJYelFW?=
 =?utf-8?B?WFd0YjMxaTFZZEhGYmNoTEdockJHTnA5NkVSUnVJTWZ5YVNrcXhWOVMrTnFH?=
 =?utf-8?B?NkpFN01oSDk0bnZKazhuQ29jcjZ4cmpLN0JwZlJ2cU5MeFkvQlhiWE1pUnR2?=
 =?utf-8?B?NHVrY2JqZWF2NnJjSnhSTEd2aVJjeDY2MFlMRVFXVzByems2aEw5Q09hMnlR?=
 =?utf-8?B?bitSZFBBN2dsYk1OK1kwcEJ0RTNTSklMK0lNN1JBclFhV1FqM01OV1pLNS9m?=
 =?utf-8?B?Q3J5bHhpVjlwTytmZGF2RFI1eEk0T3JrRnJtUjVBRlNDZTA5TXAxUVZGUFhz?=
 =?utf-8?B?Q3c9PQ==?=
Content-ID: <A6D03D5C079DBA4CAD7C9F84FABD5110@intel.onmicrosoft.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca576b7f-701b-4fef-3303-08da7185e25b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 17:15:06.8094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vTOhl/BxHRDMDy0npRw9DsnvtigEQ6NV+il7okN447XIvt0KODNIhlvwrbJzUTjZmlnnbrV9tFYxKkirjNkmWx+yC/dVHFy4bWdRUDOFYRA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1828
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659114910; x=1690650910;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding:
 mime-version;
 bh=SsuOzNsf4YVnnpQolc2uHVGKP5Ijyypf4O7G/SeJV1M=;
 b=Bzr1HK8fZIQwfsGFJGG1Wbxdvv5z189Uj6eHkn8XUalLg3kVLnSfXm3j
 nEN6JtkLBtnn7YGNuAVSUC+VLS3druYBsWJvA/59z5+nX7+PRC3x1ErZA
 lKsTeuLB3yXvkxMlOfWxpVQ6GpFSk/Fo6KHfrSvUM2umATPC3a8ul2fAu
 VRzBAVVzBPUKHh21xdXUe7n+abMYnvmIUSNly+jasVBpvO/17bysULuO6
 LuAumY73zWxOnyZocQ/83vON+sXJu2aOt+mmavAK+ePh2Gg+vxWhmy+x7
 80iVxCw3j0mgI0cJr0IIEnAiDg7ptGiyEFfXfd3oT2MFbJE1zSllcq6k8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Bzr1HK8f
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] net: ice: fix error
 NETIF_F_HW_VLAN_CTAG_FILTER check in ice_vsi_sync_fltr()
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lipeng321@huawei.com" <lipeng321@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 7/29/2022 3:17 AM, Guangbin Huang wrote:
> From: Jian Shen <shenjian15@huawei.com>
> 
> vsi->current_netdev_flags is used store the current net device
> flags, not the active netdevice features. So it should use
> vsi->netdev->featurs, rather than vsi->current_netdev_flags
> to check NETIF_F_HW_VLAN_CTAG_FILTER.
> 
> Fixes: 1babaf77f49d ("ice: Advertise 802.1ad VLAN filtering and offloads for PF netdev")
> 
> Signed-off-by: Jian Shen <shenjian15@huawei.com>
> Signed-off-by: Guangbin Huang <huangguangbin2@huawei.com>

Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>

> ---
>   drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index 9f02b60459f1..bc68dc5c6927 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -433,7 +433,7 @@ static int ice_vsi_sync_fltr(struct ice_vsi *vsi)
>   						IFF_PROMISC;
>   					goto out_promisc;
>   				}
> -				if (vsi->current_netdev_flags &
> +				if (vsi->netdev->features &
>   				    NETIF_F_HW_VLAN_CTAG_FILTER)
>   					vlan_ops->ena_rx_filtering(vsi);
>   			}
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
