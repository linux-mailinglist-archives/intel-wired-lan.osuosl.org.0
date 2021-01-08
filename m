Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D92B22EF50E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 16:45:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 858648538A;
	Fri,  8 Jan 2021 15:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KNlZAaQnODR6; Fri,  8 Jan 2021 15:44:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C954E86DE7;
	Fri,  8 Jan 2021 15:44:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 472331BF3EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 11:18:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41D3387318
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 11:18:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5VtN35Zvfr2K for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 11:18:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 329FF8721F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 11:18:55 +0000 (UTC)
IronPort-SDR: FTYXMKrLLgzLEhlethHHHIW8BHS7MC6DsmKoTzCSB0rQheMzqdFoeUyzvtFyw7quPZX0KMDZ9K
 LlWDSFgEedfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9857"; a="177678555"
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="177678555"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 03:18:53 -0800
IronPort-SDR: C+Mabh5YbClQzjns9CZompS6WvuWYafBVnc2QIlD3VmG8Cna8nsTacQjW8XmRc2cWeB8TjX8gO
 e18ofZOOF5PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,330,1602572400"; d="scan'208";a="362308078"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 08 Jan 2021 03:18:53 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Jan 2021 03:18:52 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 8 Jan 2021 03:18:52 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 8 Jan 2021 03:18:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSgfUuZ6E23zp2xk0UYAYMO/vLyK2tpnGObR6W+0l5u5/FHBDdedHlkj7MyzeW0ESR2BJN4FZefXT9zPD27lLKH4UtAYtB5jL+TnszN91TKHJ3AdDoEIBSrOFWOZ4kPgyizGWRXzUVx2zWokePnl55y6Fcm3WEEzhX9bWQ9qk5HTwXNMtIYIBx8RP8qVKYJK1k1t4byN5z/KxokFqi0GFQflhq1rGNYbMPl87827wkg160xrQUPhsacYcH0y5Lt0tA4OJnY/Sn5ZoE8bg10W3HtXtETvZ18/J5ruPF5sN40GcrS3fOgLOBq1oDcIakVpgnjxxEzcS2vg0ow/kDLPrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTG8gF1qc09INsMFR4PTmitAT8bG+JBOEILr6ps/9WM=;
 b=CkKo69Kw3kqcl6YBIdh4g7J4IrRHN4flVmS/xJvjDEUyXh61MabY0xcqkO3n7puNPmfynhtH6Q0czYDWoXNzIya7iOFJs0g3J2h+MR8HwqMxG4FAvyvePWdUpKkSWg3kHHejfO0me+7mOLp7Rpu8PdicpFV9880S6+9Q7NKEJO8P6IXU+AUtMVAsaHpD0MEJSwskhVF+qkp9HHF/FF9KCdYj1ZNSGC3Ev/15KdEreq1MW9UCz5GiBusE5elBSEZ7q5K5DJmF5xtlzEQFze3wUM6U98QuDfTYDs4304n+Bm2En/epfRfWsZUF3LEtRZSAnoJoees0pmrUURB1a5RXxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vTG8gF1qc09INsMFR4PTmitAT8bG+JBOEILr6ps/9WM=;
 b=gkrb7LqPwB4/S4+KyX1qYP1wcUDdKMG9ETv3TOaSc+Fp63/oJxt2HXGM26hbjQzGY+LvBpNqLPj1tBlEBnxysJT8EaTVNQWvtHx6szvPu/b8fxA9YV8t9HBNx8iFNxeJBzQ3aCRRuAoORs2LtuCxTjJFuPbW91L+z4g+U9Nd3HA=
Received: from CY4PR11MB1621.namprd11.prod.outlook.com (2603:10b6:910:10::10)
 by CY4PR11MB1575.namprd11.prod.outlook.com (2603:10b6:910:10::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Fri, 8 Jan
 2021 11:18:43 +0000
Received: from CY4PR11MB1621.namprd11.prod.outlook.com
 ([fe80::d1a:c861:e317:cc15]) by CY4PR11MB1621.namprd11.prod.outlook.com
 ([fe80::d1a:c861:e317:cc15%10]) with mapi id 15.20.3742.009; Fri, 8 Jan 2021
 11:18:42 +0000
From: "Rybak, Eryk Roch" <eryk.roch.rybak@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, Paul Menzel
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
Thread-Index: AQHW1U5AEU0nu1Zg80m2g9FtVxVhx6oadC6AgAGQHgCAAa21EA==
Date: Fri, 8 Jan 2021 11:18:42 +0000
Message-ID: <CY4PR11MB162177CD462300F781703059BFAE0@CY4PR11MB1621.namprd11.prod.outlook.com>
References: <20201218165255.6393-1-eryk.roch.rybak@intel.com>
 <e983a9eb-3d87-8fb4-3221-1f012e04d5a6@molgen.mpg.de>
 <20210107092828.GA30484@ranger.igk.intel.com>
In-Reply-To: <20210107092828.GA30484@ranger.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.109.15]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 445a59fa-1be0-44b7-b4af-08d8b3c72855
x-ms-traffictypediagnostic: CY4PR11MB1575:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB15756F3DF0EE20857A9A1BE9BFAE0@CY4PR11MB1575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +DhZDZY4vdNs54YHzaAW19kwnjEHrXH4tC4vsS3jBsAMAVMKYYsO7NKL3CyYyNZP/oMXrgewiL9iw778ptuYUu6kOlq29yx0hRPRjJy0GA/OvZZqNdLzW7mAdDpr4UuC0ZcQa2oRqe7TC34t9kqaTZ1TtY2qoUucSf2cyXe49adfJSYZm32z0sVppWpM+xQyuC3p/odSov2wl+/AfS/F7Md8FVEwESc6fqWGw/B95YTnFxPLKoNY1yvRQhd9wB+Pxtua6bEafP7bzcJg12ZfFjlZUEoxsBLdq7NLIGzJbP+s9jQvdNnDj8OdWdyig+PLt5mMKfJRi+XornorIAUiuVko6tyykR9ZtlBQdgQxCuRWfQFQIh1WyaLOBqQCfd1EBeIxpOMwv8N+by90kOr81PywcV3HyOGeBZgd1RgpwQNtVFXDoWISwFO6fNQoiHTsIGAVglFQW5oxvySss+c7lZMv0qX2WZ+KsrNg2HgOMW9hWBEWjdhktuefCzsg/t23slGHX4XQ7honqj7LmtfGfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(376002)(136003)(366004)(39860400002)(66556008)(64756008)(76116006)(66446008)(66946007)(6506007)(66476007)(33656002)(5660300002)(186003)(316002)(110136005)(8676002)(26005)(4326008)(7696005)(15650500001)(8936002)(71200400001)(86362001)(55016002)(52536014)(9686003)(966005)(2906002)(478600001)(83380400001)(309714004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?UFJqYWJ6bWMyNk5KeE4yKzNPa0FNNW5Ba1c0ZzV2NHdhWkRXd29YTHlGeUxR?=
 =?utf-8?B?dldUbERSR05JSVZEdVhDZXM3R05QOW03K0g3aWJlenlPcSs4b3BaSVM5UitF?=
 =?utf-8?B?ZUhFSHRwWjN0emE0aGhqemV6UHp1Y2xnUUEyTWZLNU1VMk9yT0xNZkgzdk9j?=
 =?utf-8?B?VTJIMm1MQWtVNXZ0Ti9hVkhVOHBXcUhleGNWeHJSVnVULzFIVmpldGduZ2JX?=
 =?utf-8?B?Y3ZnTnlXSmxRNXJkY0hVMTd0MVJmRFM2bmx2VThwcjRtL0tLS0xLR2RWQkUy?=
 =?utf-8?B?QjI3ZXk3a0lGeFBYMmQ1Nm4zQ0tDZndhRnJDYUN5eXMyb2psMTFUUzVCdnY4?=
 =?utf-8?B?cUpZYUJwTTZ5R2JvZ3lXaHJGajVNRTlQdGhSZm4xdFZQSU1sc1QyaEpsblNu?=
 =?utf-8?B?NjZnQUt6QTg4RmtIdDRtWWVEajhsbzZCNDF0eXJrZDhsdEdPd0RCL2xUbDhm?=
 =?utf-8?B?U1dqSzN0VU9TRytYVG8wS2NRTFRQdmVjUVNXbUg4M3ZaYnF3aE5DRys5T1A2?=
 =?utf-8?B?dnh6SkJmdG1iN0M4RWFFWXhaNDk2UGs4QzVGaWxib1FYTmIyeUsrSERzUFVr?=
 =?utf-8?B?RDc2NTVYc1JkNWx3eWxpbWJEM0FGeThxR3ZqWlcvbUg5UWh3RGkwalRBa3o0?=
 =?utf-8?B?bERoN0FFWkI2YnhmOWZ5WlQ1WGlYL2FDRFJhbUwycDZLdDFuZEdCR3p4MTF2?=
 =?utf-8?B?MVNLVEs5V1Rlc0JIK1M1QllaM3czQWNXNDVrdm5qVUhGZC9BOWpMaURJTmV5?=
 =?utf-8?B?S1MwWm9jeWNIRHVNT2g5eWFGWGN1MHVza1lqdzdtM1ZFdU5UWFUrVFZrMkJ0?=
 =?utf-8?B?RGpqZmFwVi9VQmd1NGlMMjVmNHNhc0cvdEM2NkJsTDVTSFBVc0xQczVBY0pU?=
 =?utf-8?B?c20xdkZ4MHcvK0FXVzZjMHIwSlpmVHlXVG8rSnhYbWlnR3BJR1oxcDl2bXVG?=
 =?utf-8?B?eVhtandsZ3ZESzJwR0IyWWtBMkhoZ3BHSFpUcmMraGZZV1F4RzdBUEltUUhM?=
 =?utf-8?B?dzNZZTF3Zzd6Zzg0ZkJFY3hDK2NsZjZJVU1QaVFQbWZWMk1jNWIwejBrRjk1?=
 =?utf-8?B?dUZQdjVneGpBYTRJMUplTkptbitrVVJlYU5CUm1MNkt1YlFLaTQyd1BockQ4?=
 =?utf-8?B?cEk4RXRrSmxYZU1sa3Y2cHJGaCt4ZFlsRWx0cnE5Qmoxa0tPbzBYZHAwWmdk?=
 =?utf-8?B?eVEwaE9BQW45Mm1kdTJlZ0lzd0hWVnA4SStaZmh2ZVAyYXNMRjZ1K1ZhM3dH?=
 =?utf-8?B?QzJuOUg2Y3ltWTQrQlRCdFhDQWpwZkFUTVhVT1ZKK01vZmVVQVVMa0JYTWZ0?=
 =?utf-8?Q?2G3SS0RwfDMdE=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 445a59fa-1be0-44b7-b4af-08d8b3c72855
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2021 11:18:42.8734 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 612DzCTmmDgZavpvjeQJFJuHDuU/bzGzIOD8vwjkZIszY34spGA4+SLBo1q8ywhQbV043lFv6Uz2X8nIqduY6cHUqUcO2Nj/Nur+twgUZyk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1575
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Fri, 08 Jan 2021 15:44:56 +0000
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Add error message when MTU on
 device is out of the range
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

Pi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogRmlqYWxrb3dza2ksIE1hY2llaiA8
bWFjaWVqLmZpamFsa293c2tpQGludGVsLmNvbT4gDQo+U2VudDogVGh1cnNkYXksIEphbnVhcnkg
NywgMjAyMSAxMDoyOCBBTQ0KPlRvOiBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRl
Pg0KPkNjOiBSeWJhaywgRXJ5ayBSb2NoIDxlcnlrLnJvY2gucnliYWtAaW50ZWwuY29tPjsgaW50
ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCj5TdWJqZWN0OiBSZTogW0ludGVsLXdpcmVk
LWxhbl0gW1BBVENIXSBpNDBlOiBBZGQgZXJyb3IgbWVzc2FnZSB3aGVuIE1UVSBvbiBkZXZpY2Ug
aXMgb3V0IG9mIHRoZSByYW5nZQ0KPg0KPk9uIFdlZCwgSmFuIDA2LCAyMDIxIGF0IDEwOjM2OjIz
QU0gKzAxMDAsIFBhdWwgTWVuemVsIHdyb3RlOg0KPj4gRGVhciBFcnlrLA0KPg0KPkVyeWssIHlv
dSBzdGlsbCBoYXZlbid0IHNwZWNpZmllZCB0aGUgdHJlZSB0aGF0IHRoaXMgcGF0Y2ggaXMgc3Vw
cG9zZWQgdG8gbGFuZCAobml0IC0gaXQgd2lsbCBiZSBuZXQtbmV4dCA6KSkNCj4NClN1cmUgSSB3
aWxsIGFkZCB0byB0aGUgc2Vjb25kIHZlcnNpb24gb2YgcGF0Y2gsIHRoYW5rcyBmb3IgaGludC4N
Cj4+IA0KPj4gDQo+PiBBbSAxOC4xMi4yMCB1bSAxNzo1MiBzY2hyaWViIEVyeWsgUnliYWs6DQo+
PiANCj4+IE1heWJlIGEgc2hvcnRlciBzdW1tYXJ5Og0KPj4gDQo+PiA+IGk0MGU6IExvZyBlcnJv
ciBmb3Igb3ZlcnNpemVkIE1UVSBvbiBkZXZpY2UNCj4+IA0KPj4gPiBXaGVuIGF0dGVtcHRpbmcg
dG8gbGluayBYRFAgcHJvZyB3aXRoIE1UVSBsYXJnZXIgdGhhbiBzdXBwb3J0ZWQsIA0KPj4gPiB1
c2VyIGlzIG5vdCBpbmZvcm1lZCB3aHkgWERQIGxpbmtpbmcgZmFpbHMuIEFkZGluZyBwcm9wZXIN
Cj4+IA0KPj4gTml0OiBJbXBlcmF0aXZlIG1vb2QgY291bGQgYmUgdXNlZCBpbnN0ZWFkOiBBZGQg
cHJvcGVyIOKApg0KPg0KPisxLCB0aGFua3MgUGF1bCENClRoYW5rcyBndXlzLCBleHBlY3QgYmV0
dGVyIGNvbW1pdCBtZXNzYWdlIGluIG5leHQgdmVyc2lvbiBvZiB0aGlzIHBhdGNoLg0KPg0KPj4g
DQo+PiA+IGVycm9yIG1lc3NhZ2UuDQo+PiANCj4+IFBlcnNvbmFsbHksIHdoZW4gYWRkaW5nIG5l
dyBsb2cgbWVzc2FnZSwgSSBmaW5kIGl0IG5pY2UgdG8gc2VlIHRoZW0gaW4gDQo+PiB0aGUgY29t
bWl0IG1lc3NhZ2UgdG9vLg0KPj4gDQo+PiA+IFNpZ25lZC1vZmYtYnk6IEFya2FkaXVzeiBLdWJh
bGV3c2tpIDxhcmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+DQo+PiA+IFNpZ25lZC1vZmYt
Ynk6IEVyeWsgUnliYWsgPGVyeWsucm9jaC5yeWJha0BpbnRlbC5jb20+DQo+PiA+IC0tLQ0KPj4g
PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMgfCAxMSArKysr
KysrLS0tLQ0KPj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pDQo+PiA+IA0KPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaTQwZS9pNDBlX21haW4uYyANCj4+ID4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
NDBlL2k0MGVfbWFpbi5jDQo+PiA+IGluZGV4IDYzMDI1OGUuLjRmZGVmMDAgMTAwNjQ0DQo+PiA+
IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV9tYWluLmMNCj4+ID4g
KysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX21haW4uYw0KPj4gPiBA
QCAtMTI5MzMsOSArMTI5MzMsMTAgQEAgc3RhdGljIG5ldGRldl9mZWF0dXJlc190IGk0MGVfZmVh
dHVyZXNfY2hlY2soc3RydWN0IHNrX2J1ZmYgKnNrYiwNCj4+ID4gICAgKiBpNDBlX3hkcF9zZXR1
cCAtIGFkZC9yZW1vdmUgYW4gWERQIHByb2dyYW0NCj4+ID4gICAgKiBAdnNpOiBWU0kgdG8gY2hh
bmdlZA0KPj4gPiAgICAqIEBwcm9nOiBYRFAgcHJvZ3JhbQ0KPj4gPiArICogQGV4dGFjazogbmV0
bGluayBleHRlbmRlZCBhY2sNCj4+ID4gICAgKiovDQo+PiA+IC1zdGF0aWMgaW50IGk0MGVfeGRw
X3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAqdnNpLA0KPj4gPiAtCQkJICBzdHJ1Y3QgYnBmX3Byb2cg
KnByb2cpDQo+PiA+ICtzdGF0aWMgaW50IGk0MGVfeGRwX3NldHVwKHN0cnVjdCBpNDBlX3ZzaSAq
dnNpLCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2csDQo+PiA+ICsJCQkgIHN0cnVjdCBuZXRsaW5rX2V4
dF9hY2sgKmV4dGFjaykNCj4+ID4gICB7DQo+PiA+ICAgCWludCBmcmFtZV9zaXplID0gdnNpLT5u
ZXRkZXYtPm10dSArIEVUSF9ITEVOICsgRVRIX0ZDU19MRU4gKyBWTEFOX0hMRU47DQo+PiA+ICAg
CXN0cnVjdCBpNDBlX3BmICpwZiA9IHZzaS0+YmFjazsNCj4+ID4gQEAgLTEyOTQ0LDggKzEyOTQ1
LDEwIEBAIHN0YXRpYyBpbnQgaTQwZV94ZHBfc2V0dXAoc3RydWN0IGk0MGVfdnNpICp2c2ksDQo+
PiA+ICAgCWludCBpOw0KPj4gPiAgIAkvKiBEb24ndCBhbGxvdyBmcmFtZXMgdGhhdCBzcGFuIG92
ZXIgbXVsdGlwbGUgYnVmZmVycyAqLw0KPj4gPiAtCWlmIChmcmFtZV9zaXplID4gdnNpLT5yeF9i
dWZfbGVuKQ0KPj4gPiArCWlmIChmcmFtZV9zaXplID4gdnNpLT5yeF9idWZfbGVuKSB7DQo+PiA+
ICsJCU5MX1NFVF9FUlJfTVNHX01PRChleHRhY2ssICJNVFUgdG9vIGxhcmdlIHRvIGVuYWJsZSBY
RFAiKTsNCj4+IA0KPj4gQ291bGQgeW91IHBsZWFzZSBhbHNvIHByaW50IG91dCBib3RoIHZhbHVl
cz8gTWF5YmUgKHVuc3VyZSBhYm91dCB0aGUgdW5pdHMpOg0KPj4gDQo+PiAgICBNVFUgb2YgJXUg
Ynl0ZXMoPykgdG9vIGxhcmdlIHRvIGVuYWJsZSBYRFAgKG1heGltdW06ICV1IGJ5dGVzKQ0KPg0K
Pk5vLCBleHRhY2sgZG9lcyBub3Qgc3VwcG9ydCBwcmludGYtbGlrZSBmb3JtYXQgc3BlY2lmaWVy
cywgdW5mb3J0dW5hdGVseSA6PA0KPg0KPk1heWJlIHdlIGNhbiBkb3VibGUgdGhlIG1lc3NhZ2Ug
YW5kIGhhdmUgYSBzZXBhcmF0ZSBkZXZfaW5mbygpIGluIGhlcmU/DQoNCklNSE8sIGRvdWJsZSB0
aGUgbG9nIG1lc3NhZ2UgaXMgbm90IHRoZSBiZXN0IHNvbHV0aW9uIGhlcmUuIEhvd2V2ZXIsIEkg
c3VnZ2VzdCB0byBwcmVwYXJlIHN0cmluZyBvbiBzdGFjayBlYXJsaWVyIGFuZCBzZW5kIGl0IGFz
IGV4dHJhY2sgdGhlbi4NCldoYXQgZG8geW91IHRoaW5rIGd1eXMsIE1hY2llai9QYXVsPw0KDQo+
DQo+PiANCj4+IA0KPj4gS2luZCByZWdhcmRzLA0KPj4gDQo+PiBQYXVsDQo+PiANCj4+IA0KPj4g
PiAgIAkJcmV0dXJuIC1FSU5WQUw7DQo+PiA+ICsJfQ0KPj4gPiAgIAkvKiBXaGVuIHR1cm5pbmcg
WERQIG9uLT5vZmYvb2ZmLT5vbiB3ZSByZXNldCBhbmQgcmVidWlsZCB0aGUgcmluZ3MuICovDQo+
PiA+ICAgCW5lZWRfcmVzZXQgPSAoaTQwZV9lbmFibGVkX3hkcF92c2kodnNpKSAhPSAhIXByb2cp
OyBAQCAtMTMyNTQsNyANCj4+ID4gKzEzMjU3LDcgQEAgc3RhdGljIGludCBpNDBlX3hkcChzdHJ1
Y3QgbmV0X2RldmljZSAqZGV2LA0KPj4gPiAgIAlzd2l0Y2ggKHhkcC0+Y29tbWFuZCkgew0KPj4g
PiAgIAljYXNlIFhEUF9TRVRVUF9QUk9HOg0KPj4gPiAtCQlyZXR1cm4gaTQwZV94ZHBfc2V0dXAo
dnNpLCB4ZHAtPnByb2cpOw0KPj4gPiArCQlyZXR1cm4gaTQwZV94ZHBfc2V0dXAodnNpLCB4ZHAt
PnByb2csIHhkcC0+ZXh0YWNrKTsNCj4+ID4gICAJY2FzZSBYRFBfU0VUVVBfWFNLX1BPT0w6DQo+
PiA+ICAgCQlyZXR1cm4gaTQwZV94c2tfcG9vbF9zZXR1cCh2c2ksIHhkcC0+eHNrLnBvb2wsDQo+
PiA+ICAgCQkJCQkgICB4ZHAtPnhzay5xdWV1ZV9pZCk7DQo+PiA+IA0KPj4gPiBiYXNlLWNvbW1p
dDogZDJjMmJiYWQ5M2I4MTgwMjA2NTdhODIxMjFhMTQ3ZTlhY2UxMjMwZA0KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IEludGVsLXdpcmVkLWxh
biBtYWlsaW5nIGxpc3QNCj4+IEludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnDQo+PiBodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4NCi0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpJbnRlbCBUZWNobm9sb2d5IFBvbGFuZCBzcC4geiBvLm8uCnVsLiBTb3dhY2tpZWdv
IDE3MyB8IDgwLTI5OCBHZGFzayB8IFNkIFJlam9ub3d5IEdkYXNrIFBub2MgfCBWSUkgV3lkemlh
IEdvc3BvZGFyY3p5IEtyYWpvd2VnbyBSZWplc3RydSBTZG93ZWdvIC0gS1JTIDEwMTg4MiB8IE5J
UCA5NTctMDctNTItMzE2IHwgS2FwaXRhIHpha2Fkb3d5IDIwMC4wMDAgUExOLgpUYSB3aWFkb21v
IHdyYXogeiB6YWN6bmlrYW1pIGplc3QgcHJ6ZXpuYWN6b25hIGRsYSBva3JlbG9uZWdvIGFkcmVz
YXRhIGkgbW9lIHphd2llcmEgaW5mb3JtYWNqZSBwb3VmbmUuIFcgcmF6aWUgcHJ6eXBhZGtvd2Vn
byBvdHJ6eW1hbmlhIHRlaiB3aWFkb21vY2ksIHByb3NpbXkgbyBwb3dpYWRvbWllbmllIG5hZGF3
Y3kgb3JheiB0cndhZSBqZWogdXN1bmljaWU7IGpha2lla29sd2llayBwcnplZ2xkYW5pZSBsdWIg
cm96cG93c3plY2huaWFuaWUgamVzdCB6YWJyb25pb25lLgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0
dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IgdGhlIHNvbGUg
dXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRl
bmRlZCByZWNpcGllbnQsIHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwg
Y29waWVzOyBhbnkgcmV2aWV3IG9yIGRpc3RyaWJ1dGlvbiBieSBvdGhlcnMgaXMgc3RyaWN0bHkg
cHJvaGliaXRlZC4KIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
