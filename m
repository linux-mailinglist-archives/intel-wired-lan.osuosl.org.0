Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4B8324789
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Feb 2021 00:30:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 711D943194;
	Wed, 24 Feb 2021 23:30:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VSLxLKWJ6KZ6; Wed, 24 Feb 2021 23:30:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EAC943137;
	Wed, 24 Feb 2021 23:30:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9F8711BF345
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 23:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8CE884ECAE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 23:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eT0e899dFZOT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Feb 2021 23:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F36514ECAC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Feb 2021 23:30:25 +0000 (UTC)
IronPort-SDR: TCTMFjTCLUvNzofmKka4ilwCCF9GPa5eYihIlXDquVr8Z8f1XDxiDct9hJY911vZPG1U74V5d9
 C2YBMYER7CUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9905"; a="164567840"
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="164567840"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2021 15:30:25 -0800
IronPort-SDR: Gwrrtl2xW6xL09PDaJ73I6yDkpPOSX3Ynasyl18BPrrFdhh02pOL2f3rVL5lLpHbhCTNYCQm1a
 q9teb3T2QJ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,203,1610438400"; d="scan'208";a="391815517"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga008.fm.intel.com with ESMTP; 24 Feb 2021 15:30:25 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Feb 2021 15:30:24 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 24 Feb 2021 15:30:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 24 Feb 2021 15:30:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 24 Feb 2021 15:30:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UNdCmNCgiwgTlmJZBo5IQflAq6pX4OVI1wLuunr5bu6g4GVlfnk1Gd0oGeCUAfDn8vWtxINrwJsAyclYD3LePiyk78zJA6qpbUVnvu5zeV0K+1tou3n9OlnbXO2j3Q9AiJF/s7b3DrrQtf73hXbcA+QdSzkNQvQpdGdXlKP4QmboClBDK3DmGIbQrD5lozOJdq0ei4jH4RF7EbgegJgVu0K1dBE6bgbE/ZofmQJrwWUP/AW6XswjYYRj6WoazaBrkC47It8c90t5wC56E/4FREnSjyv1aXNFzDIOO+ef8MObS70ijd2HNcc86DKn+c8HjjHWfNCtPcOr2HYhQzS5bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAOmYS4Yc03Mr9JFfPDB8DE/ABbAGGrkRHWnM8Ke1Dw=;
 b=ObKNgxetoRWFkf7XL0l8aLqwSI6O1urqnNiu/LabQPjTNCAsz8TDOeLz/W+oSc8jU0+bu57k4WL+wLYUOfU9WaJCtj5/1WmBbDoXSjg6eVGD5LYrSY1fG/Wl6yQWY8tcDa4EcnZAEZQgd241QLlDGTJHZ0VDSNoqB8UnfX00Xmp5Pj+Ual0+693JOg9OD6Z32Qr1nTb2aLV4rJbRegnKcRiXmizeE6wFS+4Xcxw+qs6N9JkioeLuVhFKi5O+mfLvEaQfvFiRYikRyjvEqIf2e2DtnxSiVc2HWX2wZ1vo4bJbyVb9c0mP4kzDhGbr4HlFRsAt1nH9zSL2+8pd+bsMpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAOmYS4Yc03Mr9JFfPDB8DE/ABbAGGrkRHWnM8Ke1Dw=;
 b=spDhXTjow/Atn0SEaFVdpP6DMOszJePz6azPoJpp3kSIzQvkThSoaD2a5T0vnFvF04NUt7foyWuxA0QOXds3beYw3w2LGbygalpSB9s9vpef8R+OGo0VnG3GWhxKqrUygPOVxAkvJ0Y/jtkyyoWXKGVJ13XYsNGQhmrKhwzLL9M=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.19; Wed, 24 Feb
 2021 23:30:23 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::85b7:921c:ff53:696e%7]) with mapi id 15.20.3868.033; Wed, 24 Feb 2021
 23:30:23 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v3] i40e: Fix NULL ptr dereference
 on VSI filter sync
Thread-Index: AQHXCqXOf7ZuHeujl0KnpgoIfXquYqpn9L4A
Date: Wed, 24 Feb 2021 23:30:23 +0000
Message-ID: <7b8565743f5b7b651b402db9617bd96cad8013a9.camel@intel.com>
References: <1614168468-16223-1-git-send-email-michal.maloszewski@intel.com>
In-Reply-To: <1614168468-16223-1-git-send-email-michal.maloszewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d0d0b470-3f21-4295-8adf-08d8d91c287a
x-ms-traffictypediagnostic: SA0PR11MB4542:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB45420AA9692D460FA8C98573C69F9@SA0PR11MB4542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Xz/aeaWlV0s2NWice0rICpEYNuDXBqBfySZy3lJRbkAXDMpioNLSSe2gYAMAJ1S9GFLseFygavQoM1WTMKAN1x6pm7e7AGh5BO8U5giWg/KGRm61TAA4nxRqMDPBLf7v6O1ctZZvFEcvrutqC90TXkJfASHbnKJnAUR6lW3I2yW1sO3Mcx/kzWhgHXBIdmXoLAfkFwrzbr08ClOp0Fxxu7D31+c17nKDYwgF/B15OQl8s9YPx4Ms5paUHVGHf8iBCEEMpAgS99HCDlQc66tzyK/CvZpm2cpXZsoEmKnle0vUQB0iwS/GZ8Mok+2vauFzzyPeKTf2Denr+zD3IZErLh0Kwn2XsbiomVi79ePWWF0zi3qls28Pd0C2hJpfzIlGXNwFSJ5TfUh472suApTN0/fWYlVSQtMrbhWGlitaeqejjdTt3noMZeVr/ebdDzwAKuSUYwWQpARw5DtK9T0HJoZo3GAl2RUVfOtVVGpqRNYcwLjfTFI3ITdXWHVY/KkRSS/yrQt6rO4hdkNpKHFANQ3QXpa+OzuE+a4yzl+aU2A6o80Us+4SxpjhziCT+PDr
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(396003)(346002)(39850400004)(376002)(136003)(478600001)(8936002)(6506007)(2906002)(66574015)(8676002)(83380400001)(316002)(4744005)(6486002)(71200400001)(110136005)(86362001)(66556008)(6512007)(5660300002)(76116006)(91956017)(66946007)(2616005)(186003)(36756003)(26005)(66446008)(66476007)(64756008)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TkJZZzN0dTZ1SUdrY2xFNEVKRk14ZEhQSVBQZWU1V0EyTUNBSGVBQ3IxbHVo?=
 =?utf-8?B?TjVLVWtBSENXWGovNVdIbjgzOGg5NUtDRFRwbGo1d2RPN0syTGVPc09Pdm5w?=
 =?utf-8?B?WEdFRndnR0pBUm9YT2F1Mkh4NEwzdWkySTJLUTEvMU1WbnBHOGt3ZFY4NXMx?=
 =?utf-8?B?cWpyMzdCejBDR09ISHFpR2VvOFQ1K3hFc2N0WVFxdkpaYWVrbFo0dlhobTZj?=
 =?utf-8?B?eDZRRjROWXFhTVplblpra2VTWlE3K2c2VEdIaENTUXA3YjlqUkNlenZuZmc3?=
 =?utf-8?B?LzdyeXREWFlaMUE3ZTlVK1RPeDNOeTRnem9XZkFFcHVJSmY1VytQeG83dHVE?=
 =?utf-8?B?aVMwUDQrbHdEU0NiVWUzaXA1eVgvN0l1cjk2RHk4WlYzREtteXZyL3o3R3BJ?=
 =?utf-8?B?cXRkdFNVckdjMjdUaGQ3QmFCNmQzMnlMU21LVEU1aVBNZDNSY01veXNwZ01F?=
 =?utf-8?B?ZStKenhLQ2txNHUvNFZ0RFcydktOYUZZWEhxZXpWdnZ3dDJpZDZmc2lOaVVK?=
 =?utf-8?B?QXI3VXJBQTFOa0NvQWZCNi8rZFR1NS90NytGNGZ6YTRQVnVHU2RQS1JSaHAx?=
 =?utf-8?B?amRXSEhGN0JVVXFMaGd5dWNaOVhRVjd1bm5WQ0pobDlaa0hQWEZYQWdiTSt2?=
 =?utf-8?B?QkJ0NDQvcHoyZVBtdEVXbzFmdnBDdU5LYnhMTTNnQmJjbFRFandDeWZVaVpw?=
 =?utf-8?B?SFBkMVhWVXRwNkhwRU11QWdtaE03YVVFUkFYOFc2bnNOVC9JQ1dHWDNKTGFj?=
 =?utf-8?B?QWhyUjdveFFRdm9SOXdSNHBmMjB2MkY2US9Qb05kY3dVK1Z3RXBkcjQ5MUdM?=
 =?utf-8?B?MDBhRVZjRDBRbkxtZG5sdDN5NW5xM2JuVXpjMkVmZ2tZTGtBZUpHNVduVE0r?=
 =?utf-8?B?Tm9FR2ltSjJMZHhvN0VuV2s4OEV0dVg0bGVweGtXNzgwZllFV0pxSFE5b2Ni?=
 =?utf-8?B?bEhhdkdMUkMvM3dhbjkrMkpTV3A3eUhWTTFpWGRLc3l4L0QycTV3azVoZ1cr?=
 =?utf-8?B?RUNQRzdOdTFjaXVjVU9MangrTWxWSHlZazhlUklGN1VjV290TDNsOHJ5ZHRC?=
 =?utf-8?B?RWdoSmNncVFNQVhIUzBJbmVVSjhYNkdiTllBRFF2U243U3NYRDBsV0ozTW9G?=
 =?utf-8?B?OUpTQnpCbi8ra1VBV3RRRGpqcEdZVjFEUnJYUlJPYmFQeEFjOVp3TkphWVlE?=
 =?utf-8?B?V3pqT2RydVBSNUJxYVBLRElZK243QWM0bUtXZ3UyQXpkWkg2ZG5nZDZsL2py?=
 =?utf-8?B?bk03TzRzS2x1d3l5d2dTcEh2N3h4cUQ2VHM5Uk9vSk1TUnRaemN4WEJzazZh?=
 =?utf-8?B?b0Z3cXoxSFRjdnY3Q1BUeHdJb3UwTVdpeEsyNThhYnRqUkxLSlJEWmNhMUh0?=
 =?utf-8?B?OE95NWI1aEF2MWpjZllYUnJhbFhHZWx2cUpMS0h4UTFNNVlRc0RTcjc1VnM5?=
 =?utf-8?B?OGZmeTRGSUgwUDhwTkhLZnkzdGR4QnFaV2pJNDdIc3BWcWNlNGhtQmtyNXFw?=
 =?utf-8?B?azJROEFYblNmc0VIRU1GUGFZbmdTK1IyRUxJaldpS2NhbHptdjVkbmxzaXpL?=
 =?utf-8?B?b3p2QmtlUSt0em9EMVFCczlvbkpQbVFBWVBCYlRHdE1NV0toaXFtQlM0VHhp?=
 =?utf-8?B?TnEvWmxxZFVZdlorOHFEUyt4OVhlbi9jSkFCWXp5WUJsL2xRU0d1N2w1WHlM?=
 =?utf-8?B?RVU3R0ZGMVBYVndiNzJzWGF0bHdlalhqa3NPNXFOcEVYczExUVh1TlAvWWZP?=
 =?utf-8?B?NXlITEVyS3pRTlJZaTRLbnNIRnc5WlFXNlJqNld0WHVVNjB4Vys2V3Qyanhj?=
 =?utf-8?B?KzN2NUZVelFQcWQvN1UyQT09?=
Content-ID: <9E9BC784D7D8FB49A1BCDE663EDB6C20@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0d0b470-3f21-4295-8adf-08d8d91c287a
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Feb 2021 23:30:23.3626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zPtb09jaSPSe+l67o6YExyuU9IVAUzkbZB0xwqyoLdkyEn88a4BQxwoXPQR0O2UDH4eCut+iajzGdTQY7HpkeMaFU9GOh2xWJ8O2Yoh3xaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v3] i40e: Fix NULL ptr dereference
 on VSI filter sync
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMDIxLTAyLTI0IGF0IDEyOjA3ICswMDAwLCBNaWNoYcWCIE1hxYJvc3pld3NraSB3
cm90ZToNCj4gUmVtb3ZlIHRoZSByZWFzb24gb2YgbnVsbCBwb2ludGVyIGRlcmVmZXJlbmNlIGlu
IHN5bmMgdnNpIGZpbHRlcnMuDQo+IEFkZGVkIG5ldyBJNDBFX1ZTSV9SRUxFQVNJTkcgZmxhZyB0
byBzaWduYWxpemUgZGVsZXRpbmcgYW5kIHJlbGVhc2luZw0KPiBvZiBWU0kgcmVzb3VyY2VzIHRv
IHN5bmMgdGhpcyB0aHJlYWQgd2l0aCBzeW5jIGZpbHRlcnMgc3VidGFzay4NCj4gV2l0aG91dCB0
aGlzIHBhdGNoIGl0IGlzIHBvc3NpYmxlIHRvIHN0YXJ0IHVwZGF0ZSB0aGUgdnNpIGZpbHRlciBs
aXN0DQo+IGFmdGVyIHZzaSBpcyByZW1vdmVkLCB0aGF0J3MgY2F1c2luZyBhIGtlcm5lbCBvb3Bz
Lg0KPiANCj4gRml4ZXM6IDE3NjUyYzYzMzZmZCgiaTQwZTogcmVtb3ZlIHVudXNlZCBhcmd1bWVu
dCIpDQo+IFNpZ25lZC1vZmYtYnk6IEdyemVnb3J6IFN6Y3p1cmVrIDxncnplZ29yenguc3pjenVy
ZWtAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmIGJ5OiBNaWNoYWwgTWFsb3N6ZXdza2kgPG1pY2hh
bC5tYWxvc3pld3NraUBpbnRlbC5jb20+DQoNCkkgd2VudCBhaGVhZCBhbmQgZml4ZWQgdGhpcywg
YnV0IHlvdXIgc2lnbiBvZmYgaXMgbWlzc2luZyBhICctJw0KDQo+IFJldmlld2VkLWJ5OiBQcnpl
bXlzbGF3IFBhdHlub3dza2kgPHByemVteXNsYXd4LnBhdHlub3dza2lAaW50ZWwuY29tPg0KPiBS
ZXZpZXdlZC1ieTogRmlqYWxrb3dza2ksIFdpdG9sZFggPHdpdG9sZHguZmlqYWxrb3dza2lAaW50
ZWwuY29tPg0KPiBSZXZpZXdlZC1ieTogSmFyb3NsYXcgR2F3aW4gPGphcm9zbGF3eC5nYXdpbkBp
bnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBBbGVrc2FuZHIgTG9rdGlvbm92IDxhbGVrc2FuZHIu
bG9rdGlvbm92QGludGVsLmNvbT4NCj4gLS0tDQo+IHYzOiByZW1vdmVkIGZlYXR1cmVzIG9mIG90
aGVyIHBhdGNoZXMgYW5kIGNoYW5nZWQgcGVybWlzc2lvbnMgdG8gNjY0DQoNClBsZWFzZSBrZWVw
IHRoZSBmdWxsIHJldmlzaW9uIGhpc3RvcnksIG5vdCBqdXN0IHRoZSBtb3N0IHJlY2VudC4NCg0K
VGhhbmtzLA0KVG9ueQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3Ns
Lm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJl
ZC1sYW4K
