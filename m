Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 098E74A7E42
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 04:13:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C9AA409A6;
	Thu,  3 Feb 2022 03:13:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9JA0m90gxrd9; Thu,  3 Feb 2022 03:13:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A60140997;
	Thu,  3 Feb 2022 03:13:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E7F41BF97D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:13:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8A9F9400E9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:13:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mYF9PPBV9oIn for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 03:13:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 838A0400A9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 03:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643858007; x=1675394007;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HMtawKVbpt+NyUn1dQtOwf+iS5bcW1tfQldx5Ojl2gg=;
 b=h8LMwqrTus/Twk8HLDvMBnAc8KSB1lSsUQnhpRpgA2vd24UEZw2O7HB+
 GOtXwckTrqH4w9/TnCHw8y0yjW/GqWNpG7n3VU2ck+tp6lFxv11LbAzf+
 2tkYVk161xoAtrb5lrdP5FOdaN0q1aIRY69yrz4S5QRlkMqGWCFd5jzLf
 N9rY9V5iwV/Vet2lCxqFoUI1r2NPrDToVbfurEz9USlEVeTiMumDSlcZ2
 n/zuVzvZ9h7lskpvxQb2Gl58EkYLnKxvv4exYGn5PLy0hJLIqiTFSLj6P
 oozetlffx5lxRXSrb4oHkYUOQcST6h/gJn0jeVUHOOvDeeeSfB1/bMI9b g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="235467408"
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="235467408"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2022 19:13:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,338,1635231600"; d="scan'208";a="620368417"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Feb 2022 19:13:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:13:26 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 2 Feb 2022 19:13:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 2 Feb 2022 19:13:25 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 2 Feb 2022 19:13:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BjpCEn9soMr9Re9U9RxPfgt8PDsVz1E1nUbThsH/vd7dyQiIav7gA7jIs5wN7QP89994wwngt/HJVsoYJA+DkVklHsU9XiQQ6nzB2e50/KryS1DsZ4EnEPgzvqsaG5xbTV+VldgWDPoQNAfLYKcT1ntUZP6eUG/k49sGtxO2FcogBJzS538II1pwPu5zW+tCULSo5u76tRE/+la3DB/jb2zvQ1y+k+OS2d6Qmkrhw8vJhboyPuhLpJDCvTvB8+STieaXyZM6amlNdjZNKziQce+eLmzTFsG/vtvtVX/7ByyCEZNpKf52yVtr0lTzDn36XCYSZDJxOYEdP0R2+RfIXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMtawKVbpt+NyUn1dQtOwf+iS5bcW1tfQldx5Ojl2gg=;
 b=Nfq64Fvyv00JZcfF0/2I4nRvFIgpoos7dCUDZXyi9jxWBsOU23FdwgKTmdU+9L/13KWFilnM030bDbJIL+QTpb5EaZ890pRmT0e5gFTG6D8qtKMrKdMsl3DlSeFbtaGlyX/92u/vqQL3DI2pZZnoPymRewE8mPA1RUU+blCn9OrbzEL6OGXpjvXO/WCOPGA+QAsSncT2v70qI0apG2CkZQr6zMia9kWAosp7mcgsH7d3HwuQD3tyM/4Da6B8wCdSTArobP5Jlj7lYaTs6j2aYxraRvj1XLRVaLeb7Ad0JcMvKl2jemwc3z4m7C3dKWOZoHnv8tgS9am+98HA5ib/Yw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB5186.namprd11.prod.outlook.com (2603:10b6:303:95::14)
 by CY4PR11MB0055.namprd11.prod.outlook.com (2603:10b6:910:76::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.19; Thu, 3 Feb
 2022 03:13:05 +0000
Received: from CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1]) by CO1PR11MB5186.namprd11.prod.outlook.com
 ([fe80::3d01:b3b2:d2f0:5be1%5]) with mapi id 15.20.4951.012; Thu, 3 Feb 2022
 03:13:05 +0000
From: "Brady, Alan" <alan.brady@intel.com>
To: Shannon Nelson <shannon.lee.nelson@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 03/19] iecm: add probe and
 remove
Thread-Index: AQHYE97YUqZut7iGPkK2mjTDfNsvKKx/JXMAgAIJeiA=
Date: Thu, 3 Feb 2022 03:13:05 +0000
Message-ID: <CO1PR11MB51863D7008BB8ECB918F7FD98F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-4-alan.brady@intel.com>
 <CAP-MU4ND_ELU3QJj4R42ngc=iDyjchAHp8qudbUii2s8BmCs6A@mail.gmail.com>
In-Reply-To: <CAP-MU4ND_ELU3QJj4R42ngc=iDyjchAHp8qudbUii2s8BmCs6A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4b6b4ac-2657-4e04-c192-08d9e6c3189f
x-ms-traffictypediagnostic: CY4PR11MB0055:EE_
x-microsoft-antispam-prvs: <CY4PR11MB0055F8443181A7E91430DEE08F289@CY4PR11MB0055.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:590;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TJHUHYbEAGMZGlxKbC/g3OMZdCEgcFIaDa2IzCpmI7UJwXQDT8BohhyoMQxabaqiTkF/iaazqxcOx6e0ErKnu+BzIyF9g3YH8YxxiVDvyv4YxMpzeP7OF5ZLCqVTuIijiCc80oGWvxFEoHdJ9EnUnQL1MV/tHG83D3s0yv+QOL1bXIVX8aPsVSou7t8BwGtduKB/41hYD8g5+mwCMuVdqp+CAsBxAfiNprL5G+vy/6b/HxuXVBm91gATQAR9tC3qfA8X1AmlrVd8EX6OnavmAMnLchGhSiHWB50rGKeAqa92qA56HFWSKwdLzpBgpNlrYWA5zmvZnOKiv05oYD1x8MnfqbT9j/lClJFj75IzBiEuPQcWppKqerIQxjajetn66fkm/MEcTwW0eAiWbeVPJu4D/0bgbJ7wTVMu3g4rpacVqm+vlF+joP835LZ8L0KWQeYbg7gwHHqvdVIN6EgA9hb4Ibg0qXbKwDtLc1C77M3ulbHR8jYdYB0CxBvHBr01sXtpT46kl2zXbA7JAFaYfSJp3hjguNdOe9lR73elex2xHmEsWTKu9UgmvGKX2Sy3McG0I+kkBBpjC8EY6TXEjbiLMDZjYILDv8S8D149Qm1HHcO8X3JKvkAHR0UOtVIU/Dgz5ZKW/b8movia/mbiO1AYB5QdJ/Nb9mqUeds/wxcs7/R1dhfNGWbFXGSwBlqF0g5upTgcLtX7YMWWdPz6fK19GUkkUXmo2Fq28GBtJsrYBuAVu2G7iKiNOD9bCVTSz1OSZtTwJ9cNRRu9zK51JMhpAghWWPkDG1pe/VOAEL4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5186.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(66476007)(66446008)(64756008)(66556008)(52536014)(30864003)(76116006)(107886003)(186003)(508600001)(86362001)(6916009)(66946007)(54906003)(5660300002)(966005)(55016003)(316002)(33656002)(8936002)(38100700002)(8676002)(9686003)(122000001)(83380400001)(2906002)(7696005)(4326008)(6506007)(82960400001)(26005)(71200400001)(53546011)(38070700005)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NFlaRHl6d2NwSU92d0dWY1FFYVlHSDJNV3Y0MCtEL3VtR3ZCTmltbis1TEJT?=
 =?utf-8?B?N2V6OGtyZEQwKzJvWkNVSy9veGYxM29raFg5Q3NCWWpmSVFrWHlJMWxWT2Jw?=
 =?utf-8?B?RFNxbnl6VXNSbnBhME5nd2pQc2tpWWhFbEJ0cGJZOC83YS9rZC9STHZBbzlw?=
 =?utf-8?B?RW1sMVZUNlBra1p6K1gwd0FvcmUwb2tJUWdQdDhZdERiUnBjdGp5OGNoTUNN?=
 =?utf-8?B?Wi80ZStKZzczUXU4bzl4bTZGNnlJa2ZFbUZVY3B5ayt5TVhsdnhKSzhQUnZF?=
 =?utf-8?B?ekJWNWtSUWpGZXg0RHF6TzlBVFY5d1VDY0k3bGxGb0FXNnVWMWxZdDAyZnNF?=
 =?utf-8?B?RWNXc1IremZsL2JBMHhXWVlORFlKdG1nMk5rQWp4UHBSaWFxRlJTcm5YNFU0?=
 =?utf-8?B?cEFtWVBkaGdTaEtERWVCMncvTjJndkFvbys3ZGtqcGtlZUlrOEdJSEVmampt?=
 =?utf-8?B?a25EUyt1MWVRcVhrTFZQK2tORTB1czdVZVVYWUt1SUZvUzEybzZBblN2RndM?=
 =?utf-8?B?Nk5oeVBTbHpXaFlyc2FIZ2dTQnhpU2MyMDBWaTRJd0R6K3pLWXJtYVcxVlZk?=
 =?utf-8?B?a25MVzNydEsrZUIwN3dSVHRmSERuVTNTVnc0YU9UN3VaOG05anQyYmI3Q2c5?=
 =?utf-8?B?TE0reG43eFVBNG1JQTN1YytZeGFZeDhpWXZZanFSeENZUUZwL0tHdjVkYTVm?=
 =?utf-8?B?MnllRXA1SnloL1dEN2NJQWExWUJBSUdCRXFFbk5NaXVtY0lIN1I3TjhVRmF3?=
 =?utf-8?B?cE80TEZaTVJaVTlLY0k5aEt5UlkrdXNuZnhHSnpqdy9PRzRSV3BIbC8wbmcx?=
 =?utf-8?B?ZThtL2lYRUdpL2U5OTFPZHJQV013TXIwTTB3YS85RkFyenJUQUVpMExpeDlG?=
 =?utf-8?B?REdrOGtIaktRaGh2RUJxbFc1SzFVVHdKVHptcHg5TENXMzBld2taZWtMMVdn?=
 =?utf-8?B?TkpaZWxiZlo0LytnZXo0bVhsMzJXd2l5OFVLc3dPdldLWmhOZStKcWtxeXZN?=
 =?utf-8?B?dkwxcGxHV2xvTnFHMlIvaStoMzNNQ2xtS1dsUUhMK0Y2aHFaR2NWU0tvKzlt?=
 =?utf-8?B?L1VmNGdMVFE0ZmFKMmpZdW56QktpeWpyVVN6RExEZXpDWlpCeVV2cEFmcFpG?=
 =?utf-8?B?SlNYTHNhK2ZkbEtuWTMwSUNWbXFnMzlxOHk3YkMrQ2t4Y0owNGJtVUZnY3FS?=
 =?utf-8?B?b1ByZExkSklmenloZ3owQU5YZTRzSFIxWXRDMno0M25Ic0JoTjdwNC9OZ1J5?=
 =?utf-8?B?a1pvMkdPYjF2aytPbkhJNWVOOWM0MGJlcWNpRHlRZVZVcDJjRlBUc04wZ1Y0?=
 =?utf-8?B?STYyRWRLVmROYTMraXZQbzUrZ0VvOExKbEVYOWNVbllTM1VHTGJhbDVrVUlT?=
 =?utf-8?B?cGhhczBlbWFJdzlidXEyOUJ6bkVVRm5xWnlTUllhcGpRSVRBQjA0TVF1Q05m?=
 =?utf-8?B?WGRyNS85NEFJSDFsRlFWRmhoRVp1SFpUc2tYbXo3NjJXd1dRSjFITkM0WkYz?=
 =?utf-8?B?a1NsZXM2bFdGR3ZqZTgybUxtNzFmSlEybDBja2Z6ZUpFZ3hlYlpiS2tySlha?=
 =?utf-8?B?T3dKY3NHRU15NWd4d1dHVzlGcVVpZXpjd2pleFUwYlk2UFRCYlN4TlVsODNr?=
 =?utf-8?B?S0RtVkVPUWREMHJWek5rbit2bmNkOVU3dks3eFM5cDNNVzc3ZWNtRUZLdURi?=
 =?utf-8?B?b2dic1pDRGVXTVBSc1ZaRXlkdTQxUjlmVyt0ZlErcno4ZjJHZU5KUGZwa1Fm?=
 =?utf-8?B?cWRRenJVbzZiZWFhQlU3ampIMmtwMWF6N3hWV1Fvb05NVGN0WTdabmNmeXg1?=
 =?utf-8?B?T083NjhmOHpjOUs5QUw4VkpGR2JZdGV6YWhSTVIzZ004ZnVOZVBGL1dmcXJu?=
 =?utf-8?B?clFEaDdBSDZqcGNQN3JCaDM0K1kyMHhScVBLbkwyT2MvNU0xQnZxVll5eGpG?=
 =?utf-8?B?ZmNOM1ZkZVRIMXloMzVoanJGVEg4anBxYU1oVWFNVmpiNUhDMU9aMUVqZzRO?=
 =?utf-8?B?WDY3YUFQTDVNc1RCVmRYaEtmVEhIMjhQaUZxZjNPVk1XY3dEcEdFU0NVakFm?=
 =?utf-8?B?MGMxNVc5a0ZxTnh1OWZJQU13V0U4UTFuYWhqRGFmNlZVMVNpT1g3OU1YNVFl?=
 =?utf-8?B?OU5vblQ0YitwdDNITFBmdHY1TUo0MlBubHJhNmUzN2x0ekVzTE1uc1VyT01Q?=
 =?utf-8?Q?WcR1Z7r+Y6OZ+JVb7odkIHU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5186.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4b6b4ac-2657-4e04-c192-08d9e6c3189f
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 03:13:05.4832 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MHE33m2Fv1GBK27XgJecXahmxD7+tUeB1WxSZioIkmMoe0tAjCENoGIJHw8Dxizo5OmjOCnzVuUuFvUN46U9CA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB0055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next 03/19] iecm: add probe and
 remove
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
Cc: "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Shannon Nelson <shannon.lee.nelson@gmail.com>
> Sent: Tuesday, February 1, 2022 12:02 PM
> To: Brady, Alan <alan.brady@intel.com>
> Cc: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Burra, Phani R
> <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next 03/19] iecm: add probe and
> remove
> 
> On Thu, Jan 27, 2022 at 4:34 PM Alan Brady <alan.brady@intel.com>
> wrote:
> >
> > This adds everything we need in probe and remove as well as a few
> > stubs which will kick off the next step in the init process of device
> > driver coming up.
> >
> > Signed-off-by: Phani Burra <phani.r.burra@intel.com>
> > Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> > Signed-off-by: Madhu Chittim <madhu.chittim@intel.com>
> > Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> > Signed-off-by: Alan Brady <alan.brady@intel.com>
> > ---
> >  drivers/net/ethernet/intel/iecm/Makefile      |   1 +
> >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 231
> ++++++++++++++++++
> >  drivers/net/ethernet/intel/include/iecm.h     | 178 +++++++++++++-
> >  .../net/ethernet/intel/include/iecm_txrx.h    |  33 +++
> >  4 files changed, 442 insertions(+), 1 deletion(-)  create mode 100644
> > drivers/net/ethernet/intel/iecm/iecm_lib.c
> >  create mode 100644 drivers/net/ethernet/intel/include/iecm_txrx.h
> >
> > diff --git a/drivers/net/ethernet/intel/iecm/Makefile
> > b/drivers/net/ethernet/intel/iecm/Makefile
> > index d2d087ac71e9..4f497723419d 100644
> > --- a/drivers/net/ethernet/intel/iecm/Makefile
> > +++ b/drivers/net/ethernet/intel/iecm/Makefile
> > @@ -10,4 +10,5 @@ obj-$(CONFIG_IECM) += iecm.o  ccflags-y +=
> > -I$(srctree)/drivers/net/ethernet/intel/include
> >
> >  iecm-y := \
> > +       iecm_lib.o \
> >         iecm_main.o
> > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > new file mode 100644
> > index 000000000000..e6d0b418a27f
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > @@ -0,0 +1,231 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> > +
> > +#include "iecm.h"
> > +
> > +/**
> > + * iecm_statistics_task - Delayed task to get statistics over mailbox
> > + * @work: work_struct handle to our data  */ static void
> > +iecm_statistics_task(struct work_struct *work) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_service_task - Delayed task for handling mailbox responses
> > + * @work: work_struct handle to our data
> > + *
> > + */
> > +static void iecm_service_task(struct work_struct *work) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_init_task - Delayed initialization task
> > + * @work: work_struct handle to our data
> > + *
> > + * Init task finishes up pending work started in probe.  Due to the
> > +asynchronous
> > + * nature in which the device communicates with hardware, we may
> have
> > +to wait
> > + * several milliseconds to get a response.  Instead of busy polling
> > +in probe,
> > + * pulling it out into a delayed work task prevents us from bogging
> > +down the
> > + * whole system waiting for a response from hardware.
> > + */
> > +static void iecm_init_task(struct work_struct *work) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_deinit_task - Device deinit routine
> > + * @adapter: Driver specific private structue
> > + *
> > + * Extended remove logic which will be used for
> > + * hard reset as well
> > + */
> > +static void iecm_deinit_task(struct iecm_adapter *adapter) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_vc_event_task - Handle virtchannel event logic
> > + * @work: work queue struct
> > + */
> > +static void iecm_vc_event_task(struct work_struct *work) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_probe - Device initialization routine
> > + * @pdev: PCI device information struct
> > + * @ent: entry in iecm_pci_tbl
> > + * @adapter: driver specific private structure
> > + *
> > + * Returns 0 on success, negative on failure  */ int
> > +iecm_probe(struct pci_dev *pdev,
> > +              const struct pci_device_id __always_unused *ent,
> > +              struct iecm_adapter *adapter) {
> > +       int err;
> > +
> > +       adapter->pdev = pdev;
> > +
> > +       err = pcim_enable_device(pdev);
> > +       if (err)
> > +               return err;
> > +
> > +       err = pcim_iomap_regions(pdev, BIT(IECM_BAR0), pci_name(pdev));
> > +       if (err) {
> > +               dev_err(&pdev->dev, "BAR0 I/O map error %d\n", err);
> > +               return err;
> > +       }
> > +
> > +       /* set up for high or low dma */
> > +       err = dma_set_mask_and_coherent(&pdev->dev,
> DMA_BIT_MASK(64));
> > +       if (err)
> > +               err = dma_set_mask_and_coherent(&pdev->dev,
> DMA_BIT_MASK(32));
> > +       if (err) {
> > +               dev_err(&pdev->dev, "DMA configuration failed: 0x%x\n", err);
> > +               return err;
> > +       }
> > +
> > +       pci_enable_pcie_error_reporting(pdev);
> > +       pci_set_master(pdev);
> > +       pci_set_drvdata(pdev, adapter);
> > +
> > +       adapter->init_wq =
> > +               alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> KBUILD_MODNAME);
> > +       if (!adapter->init_wq) {
> > +               dev_err(&pdev->dev, "Failed to allocate workqueue\n");
> 
> checkpatch usually complains about these kinds of messages, but if you're
> going to put them in anyway, you might make them more useful and add a
> bit to each that can tell you which is the one that broke.
> For example, in this one, you might write it as "Failed to allocate init
> workqueue"
> 

I agree it seems excessive, will remove.

> > +               err = -ENOMEM;
> > +               goto err_wq_alloc;
> > +       }
> > +
> > +       adapter->serv_wq =
> > +               alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> KBUILD_MODNAME);
> > +       if (!adapter->serv_wq) {
> > +               dev_err(&pdev->dev, "Failed to allocate workqueue\n");
> > +               err = -ENOMEM;
> > +               goto err_mbx_wq_alloc;
> > +       }
> > +
> > +       adapter->stats_wq =
> > +               alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> KBUILD_MODNAME);
> > +       if (!adapter->stats_wq) {
> > +               dev_err(&pdev->dev, "Failed to allocate workqueue\n");
> > +               err = -ENOMEM;
> > +               goto err_stats_wq_alloc;
> > +       }
> > +       adapter->vc_event_wq =
> > +               alloc_workqueue("%s", WQ_MEM_RECLAIM, 0,
> KBUILD_MODNAME);
> > +       if (!adapter->vc_event_wq) {
> > +               dev_err(&pdev->dev, "Failed to allocate workqueue\n");
> > +               err = -ENOMEM;
> > +               goto err_vc_event_wq_alloc;
> > +       }
> > +
> > +       /* setup msglvl */
> > +       adapter->msg_enable = netif_msg_init(-1, IECM_AVAIL_NETIF_M);
> > +
> > +       adapter->vports = kcalloc(IECM_MAX_NUM_VPORTS,
> > +                                 sizeof(*adapter->vports), GFP_KERNEL);
> > +       if (!adapter->vports) {
> 
> With error messages on all the above allocations, is there any reason they
> aren't here and in the next one?
> 

Probably not a good reason no. Will fix.

> > +               err = -ENOMEM;
> > +               goto err_vport_alloc;
> > +       }
> > +
> > +       adapter->netdevs = kcalloc(IECM_MAX_NUM_VPORTS,
> > +                                  sizeof(struct net_device *), GFP_KERNEL);
> > +       if (!adapter->netdevs) {
> > +               err = -ENOMEM;
> > +               goto err_netdev_alloc;
> > +       }
> > +
> > +       mutex_init(&adapter->sw_mutex);
> > +       mutex_init(&adapter->reset_lock);
> > +       init_waitqueue_head(&adapter->vchnl_wq);
> > +       init_waitqueue_head(&adapter->sw_marker_wq);
> > +
> > +       spin_lock_init(&adapter->cloud_filter_list_lock);
> > +       spin_lock_init(&adapter->mac_filter_list_lock);
> > +       spin_lock_init(&adapter->vlan_list_lock);
> > +       spin_lock_init(&adapter->adv_rss_list_lock);
> > +       spin_lock_init(&adapter->fdir_fltr_list_lock);
> > +       INIT_LIST_HEAD(&adapter->config_data.mac_filter_list);
> > +       INIT_LIST_HEAD(&adapter->config_data.vlan_filter_list);
> > +       INIT_LIST_HEAD(&adapter->config_data.adv_rss_list);
> > +
> > +       INIT_DELAYED_WORK(&adapter->stats_task, iecm_statistics_task);
> > +       INIT_DELAYED_WORK(&adapter->serv_task, iecm_service_task);
> > +       INIT_DELAYED_WORK(&adapter->init_task, iecm_init_task);
> > +       INIT_DELAYED_WORK(&adapter->vc_event_task,
> > + iecm_vc_event_task);
> > +
> > +       set_bit(__IECM_HR_DRV_LOAD, adapter->flags);
> > +       queue_delayed_work(adapter->vc_event_wq, &adapter-
> >vc_event_task,
> > +                          msecs_to_jiffies(10 * (pdev->devfn &
> > + 0x07)));
> > +
> > +       return 0;
> > +err_netdev_alloc:
> > +       kfree(adapter->vports);
> > +err_vport_alloc:
> > +       destroy_workqueue(adapter->vc_event_wq);
> > +err_vc_event_wq_alloc:
> > +       destroy_workqueue(adapter->stats_wq);
> > +err_stats_wq_alloc:
> > +       destroy_workqueue(adapter->serv_wq);
> > +err_mbx_wq_alloc:
> > +       destroy_workqueue(adapter->init_wq);
> > +err_wq_alloc:
> > +       pci_disable_pcie_error_reporting(pdev);
> > +       return err;
> > +}
> > +EXPORT_SYMBOL(iecm_probe);
> > +
> > +/**
> > + * iecm_del_user_cfg_data - delete all user configuration data
> > + * @adapter: Driver specific private structue  */ static void
> > +iecm_del_user_cfg_data(struct iecm_adapter *adapter) {
> > +       /* stub */
> > +}
> > +
> > +/**
> > + * iecm_remove - Device removal routine
> > + * @pdev: PCI device information struct  */ void iecm_remove(struct
> > +pci_dev *pdev) {
> > +       struct iecm_adapter *adapter = pci_get_drvdata(pdev);
> > +
> > +       if (!adapter)
> > +               return;
> > +       /* Wait until vc_event_task is done to consider if any hard reset is
> > +        * in progress else we may go ahead and release the resources but
> the
> > +        * thread doing the hard reset might continue the init path and
> > +        * end up in bad state.
> > +        */
> > +       cancel_delayed_work_sync(&adapter->vc_event_task);
> > +       iecm_deinit_task(adapter);
> > +       iecm_del_user_cfg_data(adapter);
> > +       msleep(20);
> > +       destroy_workqueue(adapter->serv_wq);
> > +       destroy_workqueue(adapter->vc_event_wq);
> > +       destroy_workqueue(adapter->stats_wq);
> > +       destroy_workqueue(adapter->init_wq);
> > +       kfree(adapter->vports);
> > +       kfree(adapter->netdevs);
> > +       kfree(adapter->vlan_caps);
> 
> Where did vlan_caps get allocated?
> 

This probably leaked into this patch as I was breaking down the code into patches. i.e. it doesn't get allocated until a later patch.  Will fix.  Thanks!

> > +       mutex_destroy(&adapter->sw_mutex);
> > +       mutex_destroy(&adapter->reset_lock);
> > +       pci_disable_pcie_error_reporting(pdev);
> > +       pcim_iounmap_regions(pdev, BIT(IECM_BAR0));
> > +       pci_disable_device(pdev);
> > +}
> > +EXPORT_SYMBOL(iecm_remove);
> > diff --git a/drivers/net/ethernet/intel/include/iecm.h
> > b/drivers/net/ethernet/intel/include/iecm.h
> > index f66f0d7db8e7..e19e014e9817 100644
> > --- a/drivers/net/ethernet/intel/include/iecm.h
> > +++ b/drivers/net/ethernet/intel/include/iecm.h
> > @@ -4,7 +4,183 @@
> >  #ifndef _IECM_H_
> >  #define _IECM_H_
> >
> > -#include <linux/etherdevice.h>
> > +#include <linux/aer.h>
> > +#include <linux/pci.h>
> > +#include <linux/netdevice.h>
> > +#include <linux/ethtool.h>
> >  #include <linux/version.h>
> > +#include <linux/dim.h>
> >
> > +#include "iecm_txrx.h"
> > +
> > +#define IECM_BAR0                      0
> > +#define IECM_NO_FREE_SLOT              0xffff
> > +
> > +#define IECM_MAX_NUM_VPORTS            1
> > +
> > +/* available message levels */
> > +#define IECM_AVAIL_NETIF_M (NETIF_MSG_DRV | NETIF_MSG_PROBE
> |
> > +NETIF_MSG_LINK)
> > +
> > +enum iecm_state {
> > +       __IECM_STARTUP,
> > +       __IECM_VER_CHECK,
> > +       __IECM_GET_CAPS,
> > +       __IECM_GET_DFLT_VPORT_PARAMS,
> > +       __IECM_INIT_SW,
> > +       __IECM_DOWN,
> > +       __IECM_UP,
> > +       __IECM_STATE_LAST /* this member MUST be last */ };
> > +
> > +enum iecm_flags {
> > +       /* Soft reset causes */
> > +       __IECM_SR_Q_CHANGE, /* Soft reset to do queue change */
> > +       __IECM_SR_Q_DESC_CHANGE,
> > +       __IECM_SR_Q_SCH_CHANGE, /* Scheduling mode change in queue
> context */
> > +       __IECM_SR_MTU_CHANGE,
> > +       __IECM_SR_TC_CHANGE,
> > +       __IECM_SR_RSC_CHANGE,
> > +       __IECM_SR_HSPLIT_CHANGE,
> > +       /* Hard reset causes */
> > +       __IECM_HR_FUNC_RESET, /* Hard reset when txrx timeout */
> > +       __IECM_HR_CORE_RESET, /* when reset event is received on
> virtchannel */
> > +       __IECM_HR_DRV_LOAD, /* Set on driver load for a clean HW */
> > +       /* Reset in progress */
> > +       __IECM_HR_RESET_IN_PROG,
> > +       /* Resources release in progress*/
> > +       __IECM_REL_RES_IN_PROG,
> > +       /* Generic bits to share a message */
> > +       __IECM_DEL_QUEUES,
> > +       __IECM_UP_REQUESTED, /* Set if open to be called explicitly by
> driver */
> > +       /* Mailbox interrupt event */
> > +       __IECM_MB_INTR_MODE,
> > +       __IECM_MB_INTR_TRIGGER,
> > +       /* Stats message pending on mailbox */
> > +       __IECM_MB_STATS_PENDING,
> > +       /* Device specific bits */
> > +       /* Request split queue model when creating vport */
> > +       __IECM_REQ_TX_SPLITQ,
> > +       __IECM_REQ_RX_SPLITQ,
> > +       /* Asynchronous add/del ether address in flight */
> > +       __IECM_ADD_ETH_REQ,
> > +       __IECM_DEL_ETH_REQ,
> > +       /* Virtchnl message buffer received needs to be processed */
> > +       __IECM_VC_MSG_PENDING,
> > +       /* To process software marker packets */
> > +       __IECM_SW_MARKER,
> > +       /* must be last */
> > +       __IECM_FLAGS_NBITS,
> > +};
> > +
> > +struct iecm_reset_reg {
> > +       u32 rstat;
> > +       u32 rstat_m;
> > +};
> > +
> > +/* stub */
> > +struct iecm_vport {
> > +};
> > +
> > +enum iecm_user_flags {
> > +       __IECM_PRIV_FLAGS_HDR_SPLIT = 0,
> > +       __IECM_PROMISC_UC = 32,
> > +       __IECM_PROMISC_MC,
> > +       __IECM_USER_FLAGS_NBITS,
> > +};
> > +
> > +/* User defined configuration values */ struct iecm_user_config_data
> > +{
> > +       u32 num_req_tx_qs; /* user requested TX queues through ethtool
> */
> > +       u32 num_req_rx_qs; /* user requested RX queues through ethtool
> */
> > +       u32 num_req_txq_desc;
> > +       u32 num_req_rxq_desc;
> > +       u16 vlan_ethertype;
> > +       void *req_qs_chunks;
> > +       DECLARE_BITMAP(user_flags, __IECM_USER_FLAGS_NBITS);
> > +       DECLARE_BITMAP(etf_qenable, IECM_LARGE_MAX_Q);
> > +       struct list_head mac_filter_list;
> > +       struct list_head vlan_filter_list;
> > +       struct list_head adv_rss_list; };
> > +
> > +struct iecm_rss_data {
> > +       u64 rss_hash;
> > +       u16 rss_key_size;
> > +       u8 *rss_key;
> > +       u16 rss_lut_size;
> > +       u32 *rss_lut;
> > +};
> > +
> > +struct iecm_adapter {
> > +       struct pci_dev *pdev;
> > +       const char *drv_name;
> > +       const char *drv_ver;
> > +       u32 virt_ver_maj;
> > +       u32 virt_ver_min;
> > +
> > +       u32 tx_timeout_count;
> > +       u32 msg_enable;
> > +       enum iecm_state state;
> > +       DECLARE_BITMAP(flags, __IECM_FLAGS_NBITS);
> > +       struct mutex reset_lock; /* lock to protect reset flows */
> > +       struct iecm_reset_reg reset_reg;
> > +
> > +       u16 num_req_msix;
> > +       u16 num_msix_entries;
> > +       struct msix_entry *msix_entries;
> > +       struct virtchnl2_alloc_vectors *req_vec_chunks;
> > +
> > +       /* vport structs */
> > +       struct iecm_vport **vports;     /* vports created by the driver */
> > +       struct net_device **netdevs;    /* associated vport netdevs */
> > +       u16 num_alloc_vport;
> > +       u16 next_vport;         /* Next free slot in pf->vport[] - 0-based! */
> > +
> > +       struct delayed_work init_task; /* delayed init task */
> > +       struct workqueue_struct *init_wq;
> > +       u32 mb_wait_count;
> > +       struct delayed_work serv_task; /* delayed service task */
> > +       struct workqueue_struct *serv_wq;
> > +       struct delayed_work stats_task; /* delayed statistics task */
> > +       struct workqueue_struct *stats_wq;
> > +       struct delayed_work vc_event_task; /* delayed virtchannel event
> task */
> > +       struct workqueue_struct *vc_event_wq;
> > +       /* Store the resources data received from control plane */
> > +       void **vport_params_reqd;
> > +       void **vport_params_recvd;
> > +       /* User set parameters */
> > +       struct iecm_user_config_data config_data;
> > +       void *caps;
> > +       struct virtchnl_vlan_caps *vlan_caps;
> > +
> > +       wait_queue_head_t vchnl_wq;
> > +       wait_queue_head_t sw_marker_wq;
> > +       struct iecm_rss_data rss_data;
> > +       s32 link_speed;
> > +       /* This is only populated if the
> VIRTCHNL_VF_CAP_ADV_LINK_SPEED is set
> > +        * in vf_res->vf_cap_flags. This field should be used going forward
> and
> > +        * the enum virtchnl_link_speed above should be considered the
> legacy
> > +        * way of storing/communicating link speeds.
> > +        */
> > +       u32 link_speed_mbps;
> > +       bool link_up;
> > +       int num_vfs;
> > +
> > +       struct mutex sw_mutex;          /* lock to protect vport alloc flow */
> > +       /* lock to protect cloud filters*/
> > +       spinlock_t cloud_filter_list_lock;
> > +       /* lock to protect mac filters */
> > +       spinlock_t mac_filter_list_lock;
> > +       /* lock to protect vlan filters */
> > +       spinlock_t vlan_list_lock;
> > +       /* lock to protect advanced RSS filters */
> > +       spinlock_t adv_rss_list_lock;
> > +       /* lock to protect the Flow Director filters */
> > +       spinlock_t fdir_fltr_list_lock; };
> > +
> > +int iecm_probe(struct pci_dev *pdev,
> > +              const struct pci_device_id __always_unused *ent,
> > +              struct iecm_adapter *adapter); void iecm_remove(struct
> > +pci_dev *pdev);
> >  #endif /* !_IECM_H_ */
> > diff --git a/drivers/net/ethernet/intel/include/iecm_txrx.h
> > b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > new file mode 100644
> > index 000000000000..602d3b3b19dd
> > --- /dev/null
> > +++ b/drivers/net/ethernet/intel/include/iecm_txrx.h
> > @@ -0,0 +1,33 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/* Copyright (C) 2019 Intel Corporation */
> > +
> > +#ifndef _IECM_TXRX_H_
> > +#define _IECM_TXRX_H_
> > +
> > +#define IECM_LARGE_MAX_Q                       256
> > +#define IECM_MAX_Q                             16
> > +/* Mailbox Queue */
> > +#define IECM_MAX_NONQ                          1
> > +#define IECM_MAX_TXQ_DESC                      4096
> > +#define IECM_MAX_RXQ_DESC                      4096
> > +#define IECM_MIN_TXQ_DESC                      32
> > +#define IECM_MIN_TXQ_COMPLQ_DESC               64
> > +#define IECM_MIN_RXQ_DESC                      32
> > +#define IECM_REQ_DESC_MULTIPLE                 32
> > +#define IECM_REQ_SPLITQ_RXQ_DESC_MULTIPLE      64
> > +#define IECM_MIN_TX_DESC_NEEDED (MAX_SKB_FRAGS + 6) #define
> > +IECM_TX_WAKE_THRESH ((s16)IECM_MIN_TX_DESC_NEEDED * 2)
> > +
> > +#define IECM_DFLT_SINGLEQ_TX_Q_GROUPS          1
> > +#define IECM_DFLT_SINGLEQ_RX_Q_GROUPS          1
> > +#define IECM_DFLT_SINGLEQ_TXQ_PER_GROUP                4
> > +#define IECM_DFLT_SINGLEQ_RXQ_PER_GROUP                4
> > +
> > +#define IECM_COMPLQ_PER_GROUP                  1
> > +#define IECM_MAX_BUFQS_PER_RXQ_GRP             2
> > +
> > +#define IECM_DFLT_SPLITQ_TX_Q_GROUPS           4
> > +#define IECM_DFLT_SPLITQ_RX_Q_GROUPS           4
> > +#define IECM_DFLT_SPLITQ_TXQ_PER_GROUP         1
> > +#define IECM_DFLT_SPLITQ_RXQ_PER_GROUP         1
> > +#endif /* !_IECM_TXRX_H_ */
> > --
> > 2.33.0
> >
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
