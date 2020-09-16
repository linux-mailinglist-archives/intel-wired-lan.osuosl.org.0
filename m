Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFBA26CFAD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Sep 2020 01:33:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55CAA2E157;
	Wed, 16 Sep 2020 23:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Psg2hTwfjQZn; Wed, 16 Sep 2020 23:33:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C5002E154;
	Wed, 16 Sep 2020 23:33:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D4E8E1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 23:33:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD36686C2F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 23:33:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0XT4HdX6IV6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Sep 2020 23:33:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1160686C2B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Sep 2020 23:33:39 +0000 (UTC)
IronPort-SDR: JhZ95bMKfnOfM2imx3DcluyAcyTkiV+OvgpGxkzRu/0EatLNmnIGJRlqNcpNKN0Hwb7T89j5jA
 6V/xqgpdAgug==
X-IronPort-AV: E=McAfee;i="6000,8403,9746"; a="139596660"
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="139596660"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 16:33:38 -0700
IronPort-SDR: lMb2K7/dMp6XKK9j3YRuLkJWrsgkyCgJSuh2AwA+1IFyiPPvTVGERyMJ2c8Z322iWUcD9oZ1kj
 niCg0Xs/Kypg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,434,1592895600"; d="scan'208";a="331896850"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 16 Sep 2020 16:33:38 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 16:33:38 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 16 Sep 2020 16:33:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 16 Sep 2020 16:33:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QvU71V4GnP4r1QLwgWhH/7AB9YYKe4QUgb6X+CZZgEOOVuFqluwMayfVAnllhKYPXbXjqkF426axwCO7o5ADQgYqPjsdIhIJXgdzC3MY/pPHwlLKljEUysIDf09+IB0MpA5uLQS0Cv8btRJ4fUwAE9gEGmyCC4ICHAFpSfGdJ0OdCUnZ6QYHgomh1nqnjxPM305A5FwejZrsmyXdavgTz91Qhkvt1EE7GHhnRPUlPG8U+MoN5zBmtHJFFiI0htBUsmqTzgwYrIcMb9AtqMSPW+zTKRXqS/AzBvA82MLQNqkatxK3zhCOkQdtiDALzg319Ah/Rt1Gad6VDOGr+RDmOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gAd9M+l4HilqZXsQvctkSJifVyU7V5axE15VuoGhpzY=;
 b=P8KRGpV5WQ+s92sVKKDnnpDB8014G0eR8s5/24w5nhxQUx0K55gvLiZOlDm4LAsAObn8m9iCntVm+2zrOlALZk/iNHvJUpg9+NgpLtHlgpSV77n8x/eBSicN4rQ7NOdiav7NfXkAmVipZmOHGH/74LGvwocyO81FMRPSubowWWha+APdEPsMllEMzWPyMIsMCfCcQNi2/X1wxYdyITGo+sjdzEol0K92t60Hup5WMAXl6d/+IwQHo0FnCyUlAGlY61YdnIs+yvgPTaeJvrcxNTcAWTyEC4jKusTH3PCEu0fhvaCIrTSFtPHictEqEW2nbtQZ+f9CeeTa43psYs4gfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gAd9M+l4HilqZXsQvctkSJifVyU7V5axE15VuoGhpzY=;
 b=IxTSLwU55yj+lbRcOGmvGpQn4wTOSaRN+hW6HjvNnmCIztjHeJD08KHYDHSgfP5pB5pNbIRAE2gTGHPwDofbKFYDp1xLcaKt0r6QJEQaI6xXuGMl1K6XO8KC3h8xmcatwS6FZDWod7duQ3bnW8QdEP/w7zFElqD49JBxfTtsTc0=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2542.namprd11.prod.outlook.com (2603:10b6:805:60::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3391.11; Wed, 16 Sep
 2020 23:33:31 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7147:6b91:afe3:1579%3]) with mapi id 15.20.3370.019; Wed, 16 Sep 2020
 23:33:31 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
Thread-Index: AQHWimmzARaHEwMTi02NAPmPiZxWy6lpQ4EAgAKrO4A=
Date: Wed, 16 Sep 2020 23:33:30 +0000
Message-ID: <5757947b94e63238c8dfc04288323e8d73f1b58d.camel@intel.com>
References: <20191010101539.37043-1-sasha.neftin@intel.com>
 <b97d6390-2226-ef51-d87b-736aa6e7189a@molgen.mpg.de>
 <292c4e24-9efb-0057-6d50-2b8c72456215@intel.com>
In-Reply-To: <292c4e24-9efb-0057-6d50-2b8c72456215@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 920d0d53-ac9e-4b50-abd0-08d85a98ebe4
x-ms-traffictypediagnostic: SN6PR11MB2542:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB25425823EA24C952E6717EFBC6210@SN6PR11MB2542.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Rf0PufQXeH+vMCtFyQHzIwMmVsXTomySq0z1p2938JvrvsYiOUe5oF71DwxAegcuoVKzkOSEOGPdjYzvgOH+fPrSy9lKEAmP1leniv5iAkOryPjJ7/FtvC74CT1h17yNc5NIMOIXe0yeA/lq/Am/ajxNJMaAo1nYVZekEGCOJ1IAzgkAmwjpUTOkspeX6Q8KQv8zbTwpkHktmO9XzkyubXUhA1VuiuAvt+VbXAnbSYPytWFab2woidkhEw7rarOkvuewKY3NmKOh9g6cYi1l76I3/1LlUwJg4CkuWslTOZ3TgS4s/yjhz+4GEKMtUZfjZnS9NdEejL/lrSsG63BOSWF/XB62WQYEwmYVGY3wITFppEYnvQ8SMK5cgNLkWijK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(346002)(366004)(376002)(39860400002)(136003)(66556008)(66476007)(76116006)(64756008)(66446008)(107886003)(36756003)(26005)(316002)(4326008)(8936002)(6486002)(186003)(2616005)(110136005)(54906003)(478600001)(83380400001)(53546011)(66946007)(91956017)(71200400001)(8676002)(6506007)(5660300002)(86362001)(6512007)(2906002)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: BtbQywwqcznOk6dXc7MgUsmR23uVVSppXdwapd/g7FEEbGOEIsuGGBtlR6ULCLiQ6dhZo37OZiy8FDhXWATXo2oqNS7GPcHzf/g3oLuEnty8c6+/byegIT607jblz4rZ8kKjbJMHXBjjBLlXqB6ALSrszxjPyAmySvYj63W7mjrKWc5WPpeBkm/lGmG8QtSAIhIFc082+IphE2FPPnOK9+mDrg8nmH8uAB+go+qQ5sfojcqYmt/2f6TUc7Wy7y+ceufVdbRTblEDFiP1Lm/jet0B2aHuRdQ+z0R6+MqjNMZmXWpME9tvjo+u4SDL5mdwJzbaXgTK9mwOyugM5B3Z/4ZonuuE+BUmojwdhuAO7ZwPkBYZXh7Ud/n7LCKNKILRq8CN6M8lb6uBxNe2UkA5nDN0mqw3l6VyTQm1Wnq0rUGHP/HH/4nygElInV14R4M3ud85KJw3540I2FObC0viYtiPxDDVz2H9AozcLN0/6dRVh+gkJhgmc63ZufwL6TzWNj6iGWNImxzulrGeNoW6Nzipz1qN6aC1uOILOKb6wAlSzxq21w0EAngrDOdWJ6L9U36bnbMUenV2kXnXNrv4ri1SJabFqqCghIM0WcgIh1hcD4nIU29+E1PzazO+ssclQOYfZJz7kU4+0uvSvDua2g==
Content-ID: <16EDC9D532A38547A376E52698BE7909@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 920d0d53-ac9e-4b50-abd0-08d85a98ebe4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2020 23:33:31.0157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ERQLNRU/M7s41AtPyd4M/sLhVmVjrSPqT+DsHp+/VFlOb2GEepboiHfdyj9Wa7bvGsy4zOjUfctkAa9w5joxWbDLeQ40KuK1ogYasUYpabk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2542
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] e1000e: Add support for Comet Lake
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
Cc: "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCAyMDIwLTA5LTE1IGF0IDA5OjQ4ICswMzAwLCBOZWZ0aW4sIFNhc2hhIHdyb3RlOg0K
PiBPbiA5LzE0LzIwMjAgMTA6MzUsIFBhdWwgTWVuemVsIHdyb3RlOg0KPiA+IERlYXIgU2FzaGEs
IGRlYXIgSmVmZiwNCj4gPiANCj4gPiANCj4gPiBBbSAxMC4xMC4xOSB1bSAxMjoxNSBzY2hyaWVi
IFNhc2hhIE5lZnRpbjoNCj4gPiA+IEFkZCBkZXZpY2VzIElEJ3MgZm9yIHRoZSBuZXh0IExPTSBn
ZW5lcmF0aW9ucyB0aGF0IHdpbGwgYmUNCj4gPiA+IGF2YWlsYWJsZSBvbiB0aGUgbmV4dCBJbnRl
bCBDbGllbnQgcGxhdGZvcm0gKENvbWV0IExha2UpDQo+ID4gPiBUaGlzIHBhdGNoIHByb3ZpZGVz
IHRoZSBpbml0aWFsIHN1cHBvcnQgZm9yIHRoZXNlIGRldmljZXMNCj4gPiA+IA0KPiA+ID4gU2ln
bmVkLW9mZi1ieTogU2FzaGEgTmVmdGluIDxzYXNoYS5uZWZ0aW5AaW50ZWwuY29tPg0KPiA+ID4g
LS0tDQoNCjxzbmlwPg0KDQo+ID4gVGhpcyBsYW5kZWQgaW4gTGludXggNS41LCBhbmQgd2Ugd291
bGQgcmVhbGx5IGxpa2UgdG8gc2VlIGl0IGluIHRoZQ0KPiA+IDUuNCANCj4gPiBzdGFibGUgc2Vy
aWVzLiBBcyBpdOKAmXMganVzdCBhZGRpbmcgbmV3IFBDSSBkZXZpY2UgY29kZXMsIHRoaXMNCj4g
PiBzb3VuZHMgDQo+ID4gZWFzaWx5IGRvYWJsZS4NCj4gPiANCj4gPiBXaGF0IGlzIHRoZSBwcm9j
ZXNzIG9mIGdldHRpbmcgaXQgaW50byB0aGUgc3RhYmxlIHNlcmllcz8gSQ0KPiA+IHJlbWVtYmVy
IHRoZSANCj4gPiBuZXQgc3Vic3lzdGVtIGhhdmluZyBhIGRpZmZlcmVudCBwcm9jZXNzIHRoYW4g
anVzdCBhZGRpbmcgYENDOiANCj4gPiBzdGFibGVAdmdlci5rZXJuZWwub3JnYCwgd2hpY2ggaXMg
dG9vIGxhdGUgZm9yIHRoaXMgYW55d2F5LCBhcw0KPiA+IGl04oCZcyANCj4gPiBhbHJlYWR5IGlu
IExpbnVz4oCZIG1hc3RlciBicmFuY2guDQo+IA0KPiBUb255LCBjYW4geW91IGhlbHAgaGVyZT8N
Cj4gKElmIEkgcmVjYWxsIGNvcnJlY3RseSBHcmVnIEtyb2FoLUhhcnRtYW4gb3duIHRoZSBzdGFi
bGUgdmVyc2lvbg0KPiBkb21haW4pDQoNCkkndmUgbWFkZSB0aGUgcmVxdWVzdCBzZWUgaWYgdGhp
cyBjYW4gYmUgYWRkZWQgdG8gNS40IHN0YWJsZS4NCg0KVGhhbmtzLA0KVG9ueQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
