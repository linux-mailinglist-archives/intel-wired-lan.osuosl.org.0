Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 863DC511444
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Apr 2022 11:23:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 969DC4195A;
	Wed, 27 Apr 2022 09:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZIPmEEI7SDfC; Wed, 27 Apr 2022 09:23:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 451E741940;
	Wed, 27 Apr 2022 09:23:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8C8381BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:23:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7896641940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:23:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4YJywvcBKnT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Apr 2022 09:23:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D18B14186C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Apr 2022 09:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651051428; x=1682587428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ywgAi13LOZbrAFxvPlVkcIPAH5+KXvUaDvoXGBsJfQk=;
 b=U/lcu2Xw+gZWkhwNgxjBdgE28iEyXJtQch7P4R9iVDAc9NvNFJ7gQAP8
 qeN2LyDUtDU2zn57VgYujz0CsOovpyDTeW2KAiJqiGySSXhucTKIpm2yp
 OV+R+TLJtPA2RzXd/ZKNJJdttfuQmhAcYI30vTI9pk7L8vExREpqTubeW
 Kv4LKqXoAy8nVNkQcdsR62gnnYM6JY8XUb88Acjij/Ism70h1klpYHnMq
 gPOODn8Lep0kPL3oBHLGesavDACLQYu0KrnCVYJnoCfwZlA9EYPsGTmpq
 WChjeOmyWFBL+WRYYMcsjO13j3jpxQ5iQAiSruCfKRNcl8aL6GWn1SH8S w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="291022763"
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="291022763"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2022 02:23:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,292,1643702400"; d="scan'208";a="705459665"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2022 02:23:47 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 02:23:46 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 27 Apr 2022 02:23:46 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 27 Apr 2022 02:23:46 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 27 Apr 2022 02:23:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GGDNr0efu/76tykygoayKsI7vrCERgnyduk649NySbraSPOW9K51luWegdvUnZTT2brYy8r11fN3p5UGWWlTp1VeiJzzH9+a2p6Nbcj2aB8mzxEiHOO8ctUtbaoKgtmIZbz1310tnoRC+SYYJ6EEIHLvBdZk3q1r0IP10NQo6xEmYJJil1HlKOJtQMhNNJKw9Qm9Bc7FoOj2C4JDdZld5OWHzZMLf55P3WEXRwokw4FfudddmttySNGcKjhKABekW3NcE4DWSoGhjeFfb4by6LTpPKfXzhtfx3Mr+lfJr02iSaTwdxOEvycwP2GXgBCTbshff2NBLvAE1De+8GlE0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ywgAi13LOZbrAFxvPlVkcIPAH5+KXvUaDvoXGBsJfQk=;
 b=nx2sYkXpBA9N/lkezzKr+V43jE73jGhNIove+6cuXQm/4ODkSMfBkxy4ee/Xrv0dUWhyV9b3PEiZMuXnd83oQYk5w8/TemwPbUvfjnDN4YngStMUnkBa8Z7saY1pX+IvwtJ6HZy6LmMC1CAvIweb2CO2DwzbsJFcftkPDLTqffOVwPJvySvQIJ7YZs6tzrDMKFX9ATEcdFtpWFrjTWa9pELV4wHWzAoEcw1UV9bvg32gYoyJrWJoGfw+hXf+ntThwOor8m+gaQL5QT35TAhvxhAqV/7Xc2oc2nNV2BtZLVPfHzhtfb8iLY+xifNhbnho9to0ON0750PMH5n/D5ah5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5430.namprd11.prod.outlook.com (2603:10b6:208:31e::24)
 by BYAPR11MB2759.namprd11.prod.outlook.com (2603:10b6:a02:c8::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Wed, 27 Apr
 2022 09:23:44 +0000
Received: from BL1PR11MB5430.namprd11.prod.outlook.com
 ([fe80::49c5:bec3:a36:c4e5]) by BL1PR11MB5430.namprd11.prod.outlook.com
 ([fe80::49c5:bec3:a36:c4e5%5]) with mapi id 15.20.5206.013; Wed, 27 Apr 2022
 09:23:44 +0000
From: "Maloszewski, Michal" <michal.maloszewski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix error when
 changing ring parameters on ice PF
Thread-Index: AQHYWZtSzytcRUzlikKavIxySCwGBq0Cp/qAgADVwHA=
Date: Wed, 27 Apr 2022 09:23:44 +0000
Message-ID: <BL1PR11MB54303576E8B98F77C27D3FA686FA9@BL1PR11MB5430.namprd11.prod.outlook.com>
References: <20220426203707.149900-1-michal.maloszewski@intel.com>
 <36cb895d-aa0b-cf4b-7b0a-74bd63b5be67@intel.com>
In-Reply-To: <36cb895d-aa0b-cf4b-7b0a-74bd63b5be67@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.401.20
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8cb90a74-6bb7-48e7-934a-08da282fa042
x-ms-traffictypediagnostic: BYAPR11MB2759:EE_
x-microsoft-antispam-prvs: <BYAPR11MB27596C26148D8DCF5BD5E2AE86FA9@BYAPR11MB2759.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jCclXJzQWuWxz6BS92g3GC4zh78j9O7lvcZxA5yAnepKfxb+wAoGLc3acABsdc4YNopOEMGOV1/A/gxcHKDEmYZwOR8QdR+CskteUO3qFjIrWxR1oMtGpJBP74Di93LzYq7ejb7q10SWuv58/Ld7ROGYuO9/UaC/iWeXdHadKcsgKBrmpp/3tF2BMk2+4k0r592FUWyN6aiVRFoYtkx4svsChqa/v6smiI49UWv98f/se7l3Ogc2XU7CPE35/oYNuabdn4Uf/+RO5mCKiDcpuzgAO45Jm1LWuVApnCOHfkNdsrl02ntqRDI/gTYIfRExpV/RgzJknFnGL8ziH4xt1IQ4u0zOuw0L5sk5a6mQ7Y9k2d9pQcvwfJig7qNSa1GaTnK6HAYfrAaMFOP4/fC2a/ifJHPPFfpatzpsdaMAelyGACSV8STmKGCq9VlivodXpVv5+LlWxB/eS2/ofnKXYSNEz3TqEg7HI/Q7AwiG1M4RieKlEobE50vx2u/STLu26Nh/8wtfYC1cL7g2KXY2tXzlaBVDP1zE95CqvQzmYa+/I9hTPD6vDas7YDAuWlAWnScGs23Uxvbdb2NDHIKUD5UOXaQ9ZZnA/8N8A7YTcaPQLRb6zJxlLahBnmYxo/iOJcPmSUvQxh+R0b2GkOqwxTbtfpj+RfVPq9w5MYzp8E3ZRhPtpAORnE4fKVugY4AoOF6RgNO0zGFIpKTTzYy7D8lGlLyTZGqB4u7FFIeMvNjNRyS7BC63uYTntzD62eajEa9OHhWsz71mad9E7Y4odAVJK0yXL0zjcTWaFPSlg8c=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(33656002)(966005)(122000001)(86362001)(76116006)(71200400001)(8936002)(66574015)(52536014)(508600001)(2906002)(107886003)(55016003)(82960400001)(83380400001)(66946007)(4326008)(5660300002)(8676002)(186003)(66476007)(64756008)(66556008)(66446008)(6506007)(26005)(7696005)(316002)(53546011)(9686003)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2FwcVFWZUdiM1ZpM3NyYk1iNWJUajV3M3Y4SUhLTVl5TkFQZDhGWU9xK3J5?=
 =?utf-8?B?d0ZHMTdjbWRsNnloVGhic3hDZUVyczdtSnBQZDJvRlR2WEViNEdPTnl3Z3RI?=
 =?utf-8?B?czltdTJvRFdsVmRlM25OY0UxelAwWjBmcEpCNVMxK2tIbUFLTktBemlIbWVI?=
 =?utf-8?B?YmtRM0d6Z0pDQXN0QjhUTFRLdVdvUG56RzZFeU5HZlhFOGZJZlE2ZWZTK2tO?=
 =?utf-8?B?WExsVkQ5d3k5eVFZM1N3ZDZWc1J5L2U3V2haR3JFWW5vNWJJaTV6eW5ra1E1?=
 =?utf-8?B?SG5qNFV2N3lPNmtQY0xMVFM5SWxnbEtOTEJYWTZBSHJxWkJWT2JBMmVmbWti?=
 =?utf-8?B?Y01TV0pEaURFUWIxaWVRcko2dGtJYjBiV1BkNHZ4ajQvV3psSm5TUyt4WlNZ?=
 =?utf-8?B?OVlzdkM1YTd0NDJFVEtrK3lXaVMrem1Vc1o1NjM3UUM4YWVpa0N5Z1gyanNE?=
 =?utf-8?B?K2tJQkZUUnhxdkpxNzhMNEZoUnh6VWNNOW81alFESjJ6SGk4cHNLdkFzY1lX?=
 =?utf-8?B?WFBaQ3N5TlRUN3o3UUVoQldjTy9MSHJxTmpPUWFNbHRRclpPU1VCRmJQdlp0?=
 =?utf-8?B?ZHpCTTB5bFF5bXlBeGpZVEdRUVk2R0RzbEY4VGt5MFljUE83K2w3Ry9hcWRE?=
 =?utf-8?B?cStXcVkrWGpwc3NxSjduelVIU2tzSXZUL3lQUk5vTVEyWGo0Qm9NUmZnSnNm?=
 =?utf-8?B?bDF1eEJxSmtobFhBcUhRV3kwTTVRMkFxUTZOYXhIV2FPZWl6UzVSR3RiaEFW?=
 =?utf-8?B?RGNXaTFtOHhyNDRZZ1ExNlhvbmNYN0tjWGhBeFpQdk9GWlRzbkFwQUhReVJS?=
 =?utf-8?B?NkxxYTk0QXlCbEY4Rk9YU2w4aUFJTS9IT25UQWN1WDZSV0xXa0kxNnpXOUhH?=
 =?utf-8?B?bjZVRjgzdC9wM2tuZEJDUlNpQ2RjL1Z3cG5KYUN5STRDNmJvVmZIY1kzTVBV?=
 =?utf-8?B?aDdjOWRRVjkyd1V4T0FaSjBtWEJqOHRlVHV5N2xGNVRHMDdjdEZGanNKYTI2?=
 =?utf-8?B?OVNBbms4MTFTVGdUclZpTC80UjRwcXh5VXRvN25DU0V2aFVLOTR2ci9rOTdH?=
 =?utf-8?B?bjhxNnRjQ0pvNFJRMWVid0k2R1UrODc3bklTM1dybTJwYlZ0YnBpYWJLMVQy?=
 =?utf-8?B?cmJUcjM3Skd5eEZoTkNTT0xYNXEvazVlSG1KbWFUblcyaWluQmJ4SHVaYkM1?=
 =?utf-8?B?RExpRnRHNjUycGJ2a0tGbnRySjhFL2lMQm9rRzJEck1RQTVoQ2hQRGpvWmg3?=
 =?utf-8?B?UmFFWDZCQjFJQiswZEE1cEpteFRhMzlienovcDFjLzJoeG5ZM0N2Mmk0LytD?=
 =?utf-8?B?eE5ia3VHSVNWR2pxTmtPeWlnTlZxWWNCc2NmVEk1VURyR2NuVmFmcVN4Qm5W?=
 =?utf-8?B?czhvQ2tiNm9hU0dyanEyUURraHRVd1NSMTJJZElMMHVFcG1JdjFxWjBEWGln?=
 =?utf-8?B?MGxIeFIxZzZ1MHBlbTlmZWl0eEZVWWJGeE0rT3hJRFdYa3RKWU9paW5rY0VN?=
 =?utf-8?B?Q0gyZFM4WlQxNU8wZTY1VVNiSlNuNHcyRnJJSE1PVitTcHZQMUdVRlJzNmVs?=
 =?utf-8?B?UUJYeFRhN1lHNWlEWkdUQWJaNSs0ajRoNkFTeC9yMXlYRHJpdkxNS2xiWFU0?=
 =?utf-8?B?ZjBkNVZzYm9jYm9PYkV6ejFZNkhYbXRXKzZIb1RIUmh3MlRvUU1jMjFTZVRZ?=
 =?utf-8?B?RDVFeG1aSmcvQXlHTW5uY0JVSk9MM3h2ZWVXMTRvbzkxQU5LdHhuT3RMOE03?=
 =?utf-8?B?QVc2YTN2cHhzV2RrNHQ1WERSOTJTZXpTaktoS3dpb3FXSlZmc3FBNkNPNWJk?=
 =?utf-8?B?eFV6VlRuTEUxQlRkb1pKRVg1N29TRW9ocGxCK1RqOWtDWEZwQWhQb25EVjl2?=
 =?utf-8?B?dmw1WU1uak00UVY3UXdJc3Fna1JibEcwZi9tTWE5R1dtOGtQWFlXWUtiOWI1?=
 =?utf-8?B?WEZlQ1JvTVRPSWVQOVRRNlgzeGFtTHZVQTNOenZndVgrL3g0RWl4dUlDWWhw?=
 =?utf-8?B?SWQyb1pXZ0FQcWh1TUlpRGpRWEEyK3pnZklqWU5jS3lnbnJPSzVlUjZ1eXdt?=
 =?utf-8?B?R21mdmtPUUpKWmlzQ1ZoaFVMZnR6ckMrekJhVXYvMUljNk9RaHRONkJrcVJ6?=
 =?utf-8?B?bEM5TFVjTU13UVphWXp3WFdwKzB6THZaRXcwck1BRHJZSm5heTl3MHVieFc4?=
 =?utf-8?B?Y1QvWEk5aW9EZ2NQaG9xaHIrM2g1Z1FPTW5ZakJ5blJSOTJjQUZMVGZWM0Mx?=
 =?utf-8?B?VGR4OGwrRzJBV051WllSRERFdThsWGY4SUNVRFRFQjR6RGtwRU0zSnRRS3Jk?=
 =?utf-8?B?Q0kyTUM1VnNLbHNMUitHT1VuM0FGeHVkaGpKSVp5TS9VKzR1SnBlUGU4VitN?=
 =?utf-8?Q?QWvaTsNpANaw5VxY=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cb90a74-6bb7-48e7-934a-08da282fa042
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2022 09:23:44.3169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2bf08CpgzaBo5y6M2PoBtMy4B6+8DgLDHFBj/hg/zASm7XGCR8dLmQDKwlZTIk93HRPcj7Ewrjyt1fZIf2xIbC0SWkp50TZpIJM0oYZn0Pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2759
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] iavf: Fix error when
 changing ring parameters on ice PF
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
Cc: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

UGxlYXNlIGRpc2NhcmQgdGhlc2UgY2hhbmdlcy4gSSBhY2NpZGVudGFsbHkgdXNlZCBuZXQtbmV4
dCBpbiBnaXQgcGF0Y2ggZm9ybWF0LCB0aGF0J3Mgd2h5IGl0IGhhcyBiZWVuIHNlbnQgdG8gbmV4
dC1uZXQgaW5zdGVhZCBvZiBuZXQuIEkgd2lsbCBjb3JyZWN0IGl0IGFzYXAuDQoNClRoYW5rcywN
Ck1pY2hhxYIgTWHFgm9zemV3c2tpDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+IA0KU2VudDog
VHVlc2RheSwgQXByaWwgMjYsIDIwMjIgMTA6MzkgUE0NClRvOiBNYWxvc3pld3NraSwgTWljaGFs
IDxtaWNoYWwubWFsb3N6ZXdza2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9z
dW9zbC5vcmcNCkNjOiBTeWx3ZXN0ZXIgRHppZWR6aXVjaCA8c3lsd2VzdGVyeC5kemllZHppdWNo
QGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggbmV0LW5l
eHQgdjJdIGlhdmY6IEZpeCBlcnJvciB3aGVuIGNoYW5naW5nIHJpbmcgcGFyYW1ldGVycyBvbiBp
Y2UgUEYNCg0KDQpPbiA0LzI2LzIwMjIgMTozNyBQTSwgTWljaGFsIE1hbG9zemV3c2tpIHdyb3Rl
Og0KPiBSZXNldCBpcyB0cmlnZ2VyZWQgd2hlbiByaW5nIHBhcmFtZXRlcnMgYXJlIGJlaW5nIGNo
YW5nZWQgdGhyb3VnaCANCj4gZXRodG9vbCBhbmQgcXVldWVzIGFyZSByZWNvbmZpZ3VyZWQgZm9y
IFZGJ3MgVlNJLiBJZiByaW5nIGlzIGNoYW5nZWQgDQo+IGFnYWluIGltbWVkaWF0ZWx5LCB0aGVu
IHRoZSBuZXh0IHJlc2V0IGNvdWxkIGJlIGV4ZWN1dGVkIGJlZm9yZSBxdWV1ZXMgDQo+IGNvdWxk
IGJlIHByb3Blcmx5IHJlaW5pdGlhbGl6ZWQgb24gVkYncyBWU0kuIEl0IGNhdXNlZCBpY2UgUEYg
dG8gbWVzcyANCj4gdXAgdGhlIFZTSSByZXNvdXJjZSB0cmVlLg0KPg0KPiBBZGQgYSBjaGVjayBp
biBpYXZmX3NldF9yaW5ncGFyYW0gZm9yIGFkYXB0ZXIgYW5kIFZGJ3MgcXVldWUgc3RhdGUuIElm
IA0KPiBWRiBpcyBjdXJyZW50bHkgcmVzZXR0aW5nIG9yIHF1ZXVlcyBhcmUgZGlzYWJsZWQgZm9y
IHRoZSBWRiByZXR1cm4gDQo+IHdpdGggRUFHQUlOIGVycm9yLg0KPg0KPiBGaXhlczogZDczMmEx
ODQ0NTA3ICgiaTQwZXZmOiBmaXggY3Jhc2ggd2hlbiBjaGFuZ2luZyByaW5nIHNpemVzIikNCj4g
U2lnbmVkLW9mZi1ieTogU3lsd2VzdGVyIER6aWVkeml1Y2ggPHN5bHdlc3RlcnguZHppZWR6aXVj
aEBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBNYWxvc3pld3NraSA8bWljaGFs
Lm1hbG9zemV3c2tpQGludGVsLmNvbT4NCj4gLS0tDQo+IHYyOiBDaGFuZ2VkIHVubmVjZXNzYXJ5
IHBhcmVudGhlc2VzDQoNClRoaXMgZG9lcyBub3QgYWRkcmVzcyBhbnkgb2YgdGhlIGNvbW1lbnRz
IG9uIHRoZSBuZXRkZXYgcGF0Y2ggWzFdLiBJZiB5b3UncmUgbWFraW5nIGNoYW5nZXMsIGl0IHdv
dWxkIGJlIGdvb2QgYWNrbm93bGVkZ2UgdGhhdCBvbiB0aGUgbmV0ZGV2IHBhdGNoLg0KDQpBbHNv
LCB3aHkgdGhlIGNoYW5nZSBmcm9tIG5ldCB0byBuZXQtbmV4dD8NCg0KVGhhbmtzLA0KDQpUb255
DQoNClsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYvMjAyMjA0MjIxNTQ3NTIuMWZh
YjY0OTZAa2VybmVsLm9yZy8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
