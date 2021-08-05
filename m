Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5443E1B58
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Aug 2021 20:31:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D732660A54;
	Thu,  5 Aug 2021 18:31:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rbe5YhI-XD5M; Thu,  5 Aug 2021 18:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC68160789;
	Thu,  5 Aug 2021 18:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4383F1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:30:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 301B7400D0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:30:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eAW-0qTepevf for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Aug 2021 18:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85CE240003
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Aug 2021 18:30:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10067"; a="213955131"
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="213955131"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2021 11:30:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,296,1620716400"; d="scan'208";a="442570528"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 05 Aug 2021 11:30:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 11:30:55 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 5 Aug 2021 11:30:54 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 5 Aug 2021 11:30:54 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 5 Aug 2021 11:30:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HvxVQbf5tBSOBaGq2NlO3c+YzVhhWafQK31AECL4PKfQIpnaqb1Nh1zQmvZ/Afw5+eHmaLRZbnh8LQFsoLp25nfhvKnVq6m6X+Wuu3RnxSKVBPUg/Nn1ZYeUkO3qPdpo2Jp+UAOsgvJXEvARd0vO2tWVcn8Vioh9NSYlfx82nalRBD1LPZrHyhb3QbTMtLdWaupzERHUXHSjMzFnZv824Cu/qBVlPCZoHbqxyG69o5Nv1QG5MnaKGT7FDuqVYn2DHUEnHe9KSd0d+Gai7rtnrLIaf3zunVZjyYS+OLPfIK7Lqg/bVqyaDuirzimInsWqc6G1GL7WcbqGCBJsS9/Log==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGn+s7aUHIvUHA0B4wjwFc3jh/vBf8+TgnCtZH+dzkY=;
 b=lDDpFHvz3DqfM3rmztfKhS4gFLdb3czTjxjOsqaA43QxLcl21Ru0Ev4Ic/6Qaz3qVWCSrpKKWCgXjGMVJjODXrvCWE4hAEV270P1tsF652q3l9mz1RQFyPmYBxoifH9JCuq8YzgGXYvWr4FuuSOJciKoYoTj7Uv4HmsyEA8SSuWoyyIK+5RhlOpU1bnku2kqhMdvomDRcHGk8CVbVLlCKTNDQcKU86pnoxBBs3d/zSNblRR1XhjVi6CI81HENkbXdS9oxAHM+7aRFPP4GeZ/K8LG5lOtBRDrUt4sRnDjf18MzHao2KywKmlD9t9qH2eK2fvtsoMgH/rey31Ptxonmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UGn+s7aUHIvUHA0B4wjwFc3jh/vBf8+TgnCtZH+dzkY=;
 b=YBe1VQwGzoSur0Xhu5vs0Qql2iY9WZl9wXC4fpjCnG11YRRQpHf20d3rf/3Vij6inCa4R25W3ANbszi4nEGSoGauGlLwrUal1TaasZnEj0k2p1lA3REIMUvMOxdUKxQ/ZhYY+CopG1KyQLblpkr39C8CJ+I6eCnHyAEzC07Y37Y=
Received: from CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 by MWHPR11MB1453.namprd11.prod.outlook.com (2603:10b6:301:c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.15; Thu, 5 Aug
 2021 18:30:53 +0000
Received: from CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::b54b:6b78:4a1e:891a]) by CO1PR11MB4835.namprd11.prod.outlook.com
 ([fe80::b54b:6b78:4a1e:891a%9]) with mapi id 15.20.4373.026; Thu, 5 Aug 2021
 18:30:53 +0000
From: "Creeley, Brett" <brett.creeley@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: don't remove netdev->dev_addr
 from uc sync list
Thread-Index: AQHXg/CD44eSUNkrpkyptxvKykXfratkhKeAgADBpoA=
Date: Thu, 5 Aug 2021 18:30:53 +0000
Message-ID: <9e0bce1b48e0c5f6d16757054ca12a8424c75991.camel@intel.com>
References: <20210728203457.325482-1-brett.creeley@intel.com>
 <5a641af5-e3fc-3b7c-6ddd-ef25e3f4a1ad@molgen.mpg.de>
In-Reply-To: <5a641af5-e3fc-3b7c-6ddd-ef25e3f4a1ad@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9820870c-400e-415b-a92a-08d9583f2863
x-ms-traffictypediagnostic: MWHPR11MB1453:
x-microsoft-antispam-prvs: <MWHPR11MB14533CB3D753E4EBC41B5EA8F5F29@MWHPR11MB1453.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o9GctwjT+WWN6Y8jkQP0ZaIfULEKZnHh8T3J6GOTJH14vLNQ1LtNQ0Y8NKn47N+SbTnCfDtaHY7SFRy8dr1o8qPTkpHNS4eF2JS1KBjg2O94mS4vzhOOlseVOhNpUnBqdC705TuF7Mqy0+ZGSLiXvk2ze5et/OwIIDqbwe/qDSrq4s6E4La1hiCbRfjoLt+s5y+OXW4kbIe8k+QF7p92DeO0bFLzaMAKShILxAuc384FfOTtbjEWP7nyw3ptNQJIKk6HtautMDz9WRTLmw+2AkiC4Ruj4J2VvjQ9/QBkFTDb2LvLJ1JOoPcOV+rk/LaDKurkNvRH6eSo+TCNkdCrQ5Mv2xl7e9wUJ+1L9hodrN8Iv7GY164Yuw285QzgKvBP960K6QgtCtQs+dm5WvDi93mFzwetAPSteETLBDHRJxf5XjojNkhu+zl/ozlyMqFqI+bqyLeQxZgf+rT9vjzF3yAhm+OKWGHW1ssWZDxZNJa5OxiU0M34oocXRYzCyBbBt9Af9w2hRkrwYDW+dxzdvncLvVRgxGEBhtKILKrdWtvr8RnUBfi+/V9NFGTeCgktja8KqDQAlSn+YPp0mciliLPpxNFeQJZYvnFEpJPBUONWewa6h3mFDLfT63mUMnIviJW6mN4xunl1PE8uZSRnY9XSgqUrU2JpUWMwnnVPeIEh/dNZ9vbKGeSoIS0JNTYj8UAkyhDwDXdFuaQ9+sV1Wg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4835.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39860400002)(376002)(136003)(346002)(396003)(38070700005)(6916009)(83380400001)(76116006)(66556008)(8936002)(6512007)(6486002)(316002)(86362001)(186003)(66476007)(2906002)(64756008)(4326008)(66446008)(66946007)(91956017)(122000001)(36756003)(8676002)(478600001)(38100700002)(2616005)(6506007)(26005)(71200400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yy8vc1hiKzBTSTlMOXM2TGhPWU51UjdvQU9za2VkY2JjSFFNc1EycERLa2t0?=
 =?utf-8?B?Rkw1VTk4M2JsUVZMaHJ1NW8rVzVXMTlPRnNCZEJ6L2F1VGl6UnlFdjgrT0xE?=
 =?utf-8?B?S2tCcWFlTHlaM1plNFEwSVc1VWtoVDNEVUNOWVhCT2dOakxsbFRlRUtRS1Q1?=
 =?utf-8?B?QzZLYkdXU3Y2Nk9ZeEszc21BWkNuY28zZkxSTnVXS3JBZmltWjAvVzUvYklW?=
 =?utf-8?B?Ui9sSmwvaTQ0VGgxZEVCcGJFK3hXdnl5UG5WczlOOVl2TGp1a0oxNU0xeWw2?=
 =?utf-8?B?NThtV0d4VHlRQnJXajJ3ZXdDQnRtZlJhQnZNRFc1SVZ0TDk1aEwyeGIyMmYv?=
 =?utf-8?B?WDhLMDc5NGtwSFVqTXNMYkx3TE1ub092cTBENUx4R0FQajJrblBUcjVBSkhJ?=
 =?utf-8?B?WURlMitISzNmaTVVWURESEpEandqTzFPaDJmUTU2MFZIaWJkcHFqQ3Z3Z1oz?=
 =?utf-8?B?d29YTFZlVk1TbUV3d3JSZEo4U0ozZVpLZnI4d0g1NVU4bnpxUWdGc0VqNFlH?=
 =?utf-8?B?b3lGaUFkck1PZU5UL2pOSEVVTk52U0tkSVdDS2dxSW5SOFYyMW00SEp3OVZF?=
 =?utf-8?B?cFNlU1A5Nno4TERhQkRpbjlEQTVDdnQxUG5mUXFpMHhUNVlsdHRDMWJoS28v?=
 =?utf-8?B?YUtLNjVaRk5jMndHdHpCdlE3aC9PcXlYcDI2RnJxblN4K2RVQ2pSZEM1TWx5?=
 =?utf-8?B?aHZkSi9WVnFOdllHOHNQRnBMbVlyd2UyNE9WTnJkNkdSRW1LY3JkUWpEVlla?=
 =?utf-8?B?K0VWM01TSFlFN0dza2I5ekZCMU8xMGRYNnY5VGRzNXo3ejFRblZrNjMzRGNO?=
 =?utf-8?B?VGUxNUtFaEZlU1A5Rk5nYzBPcE02bFR3TldKVzhralVKTitIRi9kUzF6VTJG?=
 =?utf-8?B?STJVNEUzMWw2MG9CUkRuLzFHUE4wNkJHcVFnVXlvbGlFQjdYcmhyNnU4am5s?=
 =?utf-8?B?RmtSVWt4WThUUXQrRkU3MFhIcXZFZ3R0TXVTNklNWWh0dmEySUF0dlZWRFRW?=
 =?utf-8?B?U2pET2JabUpLWmhDeHovK0lzUVd2WUZlL0hBRnlKaXZFMjlNMzdtckNDVjdR?=
 =?utf-8?B?OWJhUGgwdmxzVk1KOTA3dGZqalhsQWxidmRMU0ZnUlcreGVlVC91K1gzTlFD?=
 =?utf-8?B?ZDNsYzV2aUdRZnc3aWdGMFRkZFdnSjVGZXFvVFRGTmFvWWMxb2NlRnBraSt3?=
 =?utf-8?B?UjhBQ0kxY1JuTklnMlJXUGNYR3p3VzZ2NXZLeUJHYXNKU1kwQjRzWTNnUkIr?=
 =?utf-8?B?N1U5Y2VlVTBta0JQQnZ4WnduRlZ4WXorMzN1azV5N2lrelNZR21sVHBJeW82?=
 =?utf-8?B?UUVpL0M5RmZwYnR2OHk4QXdEQXBzbmEzakl3alM5U003VXk4S2NpVTRUNDNy?=
 =?utf-8?B?REVRRnVWKzVCL3RHVWFqRmlGMzd1WFRZWmtycDBRS1ZVTHoxTHppdENUZmxZ?=
 =?utf-8?B?bURmWTcwbGM0WEpXUTByemVxcFAyNk1sK0tnRUp6VS8xYkFRQUJyUFNhTklD?=
 =?utf-8?B?ZktmS0pxMThZT3FjQkNzT3hEN2tEQlh3Vm50elpnOGRVOFZlYUhIYlE2OTIr?=
 =?utf-8?B?Nzk2bmMxNjVkVWhnbk9ndlRRbFBlNHRnU1QzeXcyb3FJNGV3ZXpnR0tiUTRT?=
 =?utf-8?B?dUJ6MGg4aXV5MUxSbGFNZWlLUndrRmlYR2h6VnNJZnE5M1VRaTk3RnE2VnRO?=
 =?utf-8?B?WFlmWllZWmhGZnhSbVR1NGxJcHB4MEtOVGEvaTdPaVNxb2I4QzJka1lQY0Js?=
 =?utf-8?Q?tmuDhIjeJ+WT7K1uM/ZuqS0PavgllpATtkJLEiw?=
x-ms-exchange-transport-forked: True
Content-ID: <3BD43B09BD1E9E43A19B02534BAA75CC@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4835.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9820870c-400e-415b-a92a-08d9583f2863
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Aug 2021 18:30:53.2892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JwvdChY29cV1ht51zyfB1GwBjJuWaaSM3gWtzZmtwSMrngQ2kK0nysPJ+IcTI0haYV0+xvtyGSLLe99WElez8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1453
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: don't remove
 netdev->dev_addr from uc sync list
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAyMDIxLTA4LTA1IGF0IDA4OjUxICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4g
RGVhciBCcmV0dCwNCj4gDQo+IA0KPiBBbSAyOC4wNy4yMSB1bSAyMjozNCBzY2hyaWViIEJyZXR0
IENyZWVsZXk6DQo+ID4gSW4gc29tZSBjaXJjdW1zdGFuY2VzLCBzdWNoIGFzIHdpdGggYnJpZGdp
bmcsIGl0J3MgcG9zc2libGUgdGhhdA0KPiA+IHRoZQ0KPiA+IHN0YWNrIHdpbGwgYWRkIHRoZSBk
ZXZpY2UncyBvd24gTUFDIGFkZHJlc3MgdG8gaXRzIHVuaWNhc3QgYWRkcmVzcw0KPiA+IGxpc3Qu
DQo+ID4gDQo+ID4gSWYsIGxhdGVyLCB0aGUgc3RhY2sgZGVsZXRlcyB0aGlzIGFkZHJlc3MsIHRo
ZSBkcml2ZXIgd2lsbCByZWNlaXZlDQo+ID4gYQ0KPiA+IHJlcXVlc3QgdG8gcmVtb3ZlIHRoaXMg
YWRkcmVzcy4NCj4gPiANCj4gPiBUaGUgZHJpdmVyIHN0b3JlcyBpdHMgY3VycmVudCBNQUMgYWRk
cmVzcyBhcyBwYXJ0IG9mIHRoZSBWU0kgTUFDDQo+ID4gZmlsdGVyDQo+ID4gbGlzdCBpbnN0ZWFk
IG9mIHNlcGFyYXRlbHkuIFNvLCB0aGlzIGNhdXNlcyBhIHByb2JsZW0gd2hlbiB0aGUNCj4gPiBk
ZXZpY2Uncw0KPiA+IE1BQyBhZGRyZXNzIGlzIGRlbGV0ZWQgdW5leHBlY3RlZGx5LCB3aGljaCBy
ZXN1bHRzIGluIHRyYWZmaWMNCj4gPiBmYWlsdXJlDQo+ID4gaW4gc29tZSBjYXNlcy4NCj4gPiAN
Cj4gPiBGaXggdGhpcyBieSBtYWtpbmcgc3VyZSB0byBub3QgZGVsZXRlIHRoZSBuZXRkZXYtPmRl
dl9hZGRyIGR1cmluZw0KPiA+IE1BQyBhZGRyZXNzIHN5bmMuDQo+IA0KPiBJcyBpdCBlYXN5IHRv
IHJlcHJvZHVjZT8NCg0KWWVzLCBJIHdpbGwgYWRkIG1vcmUgZGV0YWlscyB3aGVuIEkgcmUtc3Bp
biB0aGUgcGF0Y2guDQoNCj4gDQo+ID4gVGhlcmUgaXMgYSBwb3NzaWJpbGl0eSBvZiBhIHJhY2Ug
Y29uZGl0aW9uIGJldHdlZW4gLnNldF9tYWMgYW5kDQo+ID4gLnNldF9yeF9tb2RlLiBGaXggdGhp
cyBieSBjYWxsaW5nIG5ldGlmX2FkZHJfbG9ja19iaCgpIGFuZA0KPiA+IG5ldGlmX2FkZHJfdW5s
b2NrX2JoKCkgb24gdGhlIGRldmljZSdzIG5ldGRldiB3aGVuIHRoZSBuZXRkZXYtDQo+ID4gPmRl
dl9hZGRyDQo+ID4gaXMgZ29pbmcgdG8gYmUgdXBkYXRlZCBpbiAuc2V0X21hYy4NCj4gPiANCj4g
PiBBbHNvLCBjaGFuZ2UgdGhlIG5ldGRldl93YXJuKCkgdG8gbmV0ZGV2X2RiZygpIHdoZW4gdGhl
IGRldmljZSBpcw0KPiA+IGFscmVhZHkgdXNpbmcgdGhlIHJlcXVlc3RlZCBtYWMgaW4gLnNldF9t
YWMuIFRoZSBkZXZfd2FybigpIHdhcw0KPiA+IGNhdXNpbmcNCj4gPiBhIGxvdCBvZiB1bm5lY2Vz
c2FyeSBub2lzZSB3aGVuIGNvbmZpZ3VyaW5nL3VuY29uZmlndXJpbmcgYnJpZGdpbmcNCj4gPiBh
bmQNCj4gPiBwcm92aWRlcyBubyBiZW5lZml0Lg0KPiA+IA0KPiA+IExhc3RseSwgaW5zdGVhZCBv
ZiB1c2luZyBtZW1jcHkoKSB0byBzYXZlIHRoZSBuZXRkZXYtPmRldl9hZGRyLCB1c2UNCj4gPiBl
dGhlcl9hZGRyX2NvcHkoKSBpbiAuc2V0X21hYy4NCj4gDQo+IEl04oCZZCBiZSBncmVhdCwgaWYg
eW91IHNwbGl0IHRoZSB0aHJlZSBpdGVtcyBvdXQgaW50byBzZXBhcmF0ZQ0KPiBwYXRjaGVzLCAN
Cj4gYW5kIHN1Ym1pdCBpdCBpbiBhIHBhdGNoIHNlcmllcy4NCg0KSSdtIHRoaW5raW5nIHRoYXQg
dGhpcyBpcyBhY3R1YWxseSBhIDIgcGF0Y2ggc2VyaWVzLiBXaXRoIHRoZSBmaXgNCnRvIG5vdCBk
ZWxldGUgdGhlIGRldmljZSdzIGFkZHJlc3MsIHRoZSBuZXRkZXZfd2FybigpIHdhcyBjYXVzaW5n
DQphIGxvdCBvZiBub2lzZS4gQmFzZWQgb24gdGhpcyBJIGJlbGlldmUgdGhhdCB0aGUgbmV0ZGV2
X3dhcm4oKSB0bw0KbmV0ZGV2X2RiZygpIHNob3VsZCBiZSBwYXJ0IG9mIHRoZSBzYW1lIHBhdGNo
IHRoYXQgZml4ZXMgdGhlDQpwcmV2aW91c2x5IG1lbnRpb25lZCBwcm9ibGVtLg0KDQpIb3dldmVy
LCBJIHdpbGwgc2VuZCB0aGUgZXRoZXJfYWRkcl9jb3B5KCkgY2hhbmdlIHRvIG5ldC1uZXh0LyBh
cw0KYSBzZXBhcmF0ZSBwYXRjaCBzaW5jZSBpdCBpcyBub3QgZml4aW5nIGFueXRoaW5nLCBqdXN0
IGEgZ2VuZXJhbA0KaW1wcm92ZW1lbnQuDQoNCkhvcGVmdWxseSB0aGlzIHdvcmtzIGZvciB5b3Ug
YW5kIHRoYW5rcyBmb3IgdGhlIGZlZWRiYWNrIQ0KDQpCcmV0dA0KPiANCj4gDQo+IEtpbmQgcmVn
YXJkcywNCj4gDQo+IFBhdWwNCj4gDQo8c25pcD4NCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
