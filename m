Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 599642DF061
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 17:07:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EA2AA87433;
	Sat, 19 Dec 2020 16:07:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2QU7EJQdli3F; Sat, 19 Dec 2020 16:07:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3F8F28765E;
	Sat, 19 Dec 2020 16:07:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DEECB1BF357
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:07:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D754A874CD
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:07:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yYotDBd8zT1B for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 16:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4B4687433
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 16:07:19 +0000 (UTC)
IronPort-SDR: EA11kdL8fiTRKSVJBsQXued6jWThT9ddjwpJqHk6BYXL5Q4XrpXhHeN8ILCaW2sFtblTN3XEi+
 cRL1G9NrtzHg==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="260310599"
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; d="scan'208";a="260310599"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2020 08:07:19 -0800
IronPort-SDR: N/6qabfnqJOfGfLvOKBaHRpNs6rZHsGQtQ3Vi4lcabaAwJCzPqB0l1Mgk5M/5sewpyAKM3i2YV
 DwZH/D40h19Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,433,1599548400"; d="scan'208";a="414738268"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga001.jf.intel.com with ESMTP; 19 Dec 2020 08:07:18 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 19 Dec 2020 08:07:18 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sat, 19 Dec 2020 08:07:18 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sat, 19 Dec 2020 08:07:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sat, 19 Dec 2020 08:07:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h3C2vKS8KAMNGJKIuKXIDzEf7/z/HYKUChmQ7ut3wDb6pipGJVGoO9gEsApfuUWG4fgPX1b9WaZcgJIJqcG1VIbOpNdsu7gJceW/pzGkyYfgel7ncDJOoIhRXUupRQsQB7qBaoXl5l6r9eoKoKaO1MD9Bzq/29WMFNS9+mGKZolh5O7wCo91MBJkFqvJsJlYU2dHTPziSwo5mlDxREsPoczGDmpXhFLrosYlS41sAdnEVht9WMoLM1ay8BSZFjP4hHVP5kG/+jYsiJVTNHoR8MIXvirQ58zpC49q1Ck60l0uyyvpWvyzNK/Rp04K//DBuD//yfLdCY59LAiY/TNrQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOE9Jr4CQEo1cc5i2IvwMzU02X3klBKPZUqBkgLAk+Q=;
 b=ROVFWVh1YTr3BRH9OtE1i2mc5zQdc6FCOK61daZhIrx0PQLAhsVr87OuYsb3JFot/ln5QvacdImd8QfBHCdkfExQ/3t8WOV0RM304x0EmbltmS/5fh8diOYmrtQFJpb33Q9sslbWn5L1wh4gLB+D14xPb45FWU7JrxMqp9oBvGBg5r//+aLTEyV01GSjgTZeujt5ZWJPOfcEqa6mpSH4511U4FvwvCb7VPomke7/oD4IJ3/4m4lsX1Fwcdt/IC38uikpvkE3Ad9nTrQuMJ4dDnBD4duxVFthwqhZiS+a2eZMzYQ4KY933ndX5egpHPfzY4a4t6c/b2D5pO+ff/HqXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gOE9Jr4CQEo1cc5i2IvwMzU02X3klBKPZUqBkgLAk+Q=;
 b=fUbrmCXM6frDk2Cr31mWrfdzwIjx7+TUNwDf/gicq3335wpALbobUzxSb9VBCFyGD+PQCSCkHRJqXilLxrweBlnbGiKQsc4Wgcsu9y/2SoKmw5aDYc4ZyuFGTdGjGuY128pVeXt1rLZT8+Wz09PuO+4nR/2Rpsl8liWGyOrBz8M=
Received: from MN2PR11MB3614.namprd11.prod.outlook.com (2603:10b6:208:ea::11)
 by MN2PR11MB3999.namprd11.prod.outlook.com (2603:10b6:208:154::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.29; Sat, 19 Dec
 2020 16:07:13 +0000
Received: from MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::61:2bc8:a0b1:11b2]) by MN2PR11MB3614.namprd11.prod.outlook.com
 ([fe80::61:2bc8:a0b1:11b2%5]) with mapi id 15.20.3654.020; Sat, 19 Dec 2020
 16:07:13 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Ben Greear <greearb@candelatech.com>
Thread-Topic: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
Thread-Index: AQHW1dxMNbmdUNls8UiCEbNNvFykd6n+lcTw
Date: Sat, 19 Dec 2020 16:07:13 +0000
Message-ID: <MN2PR11MB361416A8BFB904EC0149C178EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <86fb482f-81b0-8a5f-1580-ed5b6f13c743@molgen.mpg.de>
In-Reply-To: <86fb482f-81b0-8a5f-1580-ed5b6f13c743@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a390b810-6295-4f1b-c891-08d8a438261d
x-ms-traffictypediagnostic: MN2PR11MB3999:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB39992909F5696A858F794AB7EFC20@MN2PR11MB3999.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U4Pixe8vGtlofpOW8rQ75Z6rlcjYGlUUFcwIsQ37aaFmMHW9Qe/np7qkN0kKAGtIRAMfkdCCABzgTCSZ6unqH9xlQapDQDVEhpxi5VjUzSMHzD+J9hK3wsKzJkrzKFWBh9h6mDu+JmeoBdTWC5Y30UPuyxxhRyJRpsMenoW2IiNLklVEM847GNHf1/iTZrSnqh5tkHTBSRV9UlLsoU1hDRTpRlxOm5TXumwfqgFLe96VYFMhGWDrNtHMNjbIt6ZfXVRfFqm5O/3ls6GKrJe0QWie6Ee6i5rK4nLm6U9m5Bf6WiA0qIdkDpZdsS/g5j6BznkTcRXzZweyCFW13thtHMUrrxZRVf7ROOiUHuQJjHRyig9nqortdYHIZDtev9dZr+czc871FBsOpzhrVsWtTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB3614.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(52536014)(4326008)(8936002)(2906002)(6506007)(33656002)(83380400001)(86362001)(53546011)(9686003)(55016002)(107886003)(71200400001)(110136005)(186003)(8676002)(316002)(54906003)(478600001)(7696005)(66446008)(64756008)(66556008)(76116006)(66946007)(5660300002)(66476007)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WkxxaitDakorbk5JZ3k2S2ZOTzQwNVpyM3c5Y1hrRjNLQTZVYVlobFk5dkk1?=
 =?utf-8?B?Wk1CekhROEppNHFtUDZlVTlsRnIxZDlUTHpIYVZiaWpSMXFSVXdzV2UyTTdR?=
 =?utf-8?B?dXNkNGx5dmZTbnNUc1VpcjlIcW9UM0RxVWVXV08xUHlwQ09YWHYzamdQcndP?=
 =?utf-8?B?MEMxcVFZcjcyZVpsM1diN0h2dlpKdWlnMTI0WUtKWVNsNXVDVDVURjBBSkZ2?=
 =?utf-8?B?Y3B5NzBDanhhUTN3RVpqVjgrYnlvcVRrYVYyMjFvaDQvYm1KTy9Mek13NG1H?=
 =?utf-8?B?eWwrQkhxZ24zcEF6eEtQS1dVanZBMGpwNnN3M2JhUGN2U0xpRytyZTd2S1Ax?=
 =?utf-8?B?NVA3TFNuRVlJKzJSenpKNXNTTk9ZdnQrdHc5SHUreHdOb2FSQi9YRVIrbURO?=
 =?utf-8?B?RnI0WDBMOXVGeHo4WGl6UFpER2M1M3pYaHN0VFZLdnJ1cy9KdmV2MmJyc2R1?=
 =?utf-8?B?Q3llQjFMWjZFZGFwS29UVi8yZ3E0ZWgzaGVySFQwMUhxamJlWkhnd1hpeXNM?=
 =?utf-8?B?NWd6OG14OUNMcmFFYkJ0ZkMwNzlhOWFmOFpjTVFpT1Qwd0o0YW9YaENFQkpM?=
 =?utf-8?B?S3NOam16Z2lsalJ5blFXbk8yTUltVXZxWDdTVm1GM3p0cjQ2aHFDeWI5NElN?=
 =?utf-8?B?OXp3RkVYd2xnMk93dGpzRmxwanVvaHhIRmppaXI4RnM5NW5DaW5ycS94QTls?=
 =?utf-8?B?UUNOT3c0WlZNTXQvdzZDY1ZvRUc5Tm9XUE11N0FWNWp4dkFTK0RkN3pJUmly?=
 =?utf-8?B?M2sxN3d1cDJGOCtjZ3J4ZVBRczBZeE1iMWQweUxDaWtsVkxDZ2tPcXBmL1dn?=
 =?utf-8?B?UFFseTYxYTR4THl0bGoyVkRrNkprQnBTTVU5T2NoWW1oeDVNbElIa3hPRC9t?=
 =?utf-8?B?a3JGcFJSaUNUMld1WEIyQzhiZTFGMEc0R24wSEliR2t6REhuSkQwRmtlSE53?=
 =?utf-8?B?MHlvdHUzb1RCMC9JS25QT2h1STVobG9oaksycjBOWUM4MTJ0aTdud2pUSjMw?=
 =?utf-8?B?ME9idSs1QmgrOTJ6MjNZSGkwVmZ6cXE0RWZmQy9lRkhPNElCTzcyZlE2bGxp?=
 =?utf-8?B?YlV3dXZXMmU2M09TRXFnc04xS0RXTHMwczAyeXl2cC9oa2d6ZjF1ZXZHODQy?=
 =?utf-8?B?VlZjT1VyV2FoSjUycG83VEUvcFpYb1Y5UU9tQUg1Z205V05TdTJqTDRaemNa?=
 =?utf-8?B?UmpNaVBMUXBUd3ZDT0I5elFjTXBmVlI3KzgvRTRwb2x1MGJ3SmVDQzBqc1BL?=
 =?utf-8?B?ZkduK003ZXgxRHZaOEYrS2pQT2V0RlJ6d2FEVEJoODBqMXlsaTJDOCtUVEw1?=
 =?utf-8?Q?L975y/cysz/k8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB3614.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a390b810-6295-4f1b-c891-08d8a438261d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2020 16:07:13.6555 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: trP6lrPsnU+ghbJx3tKb8yuZAXvG8zFBhrDnWBOYLdUOfo0Zq2n1wlGTCPzyFGEdIAeQEueCciFr2qqJ3ijcaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
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
Cc: "Tyl, RadoslawX" <radoslawx.tyl@intel.com>,
 Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, Linus
 Torvalds <torvalds@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2VsbCwgYWN0dWFsbHksIHdlIGNvbnNpZGVyZWQgZGVmZWF0dXJpbmcgMi41RyBhbmQgNUcgaW4g
aGFyZHdhcmUuIFdvdWxkIHRoYXQgaGF2ZSBiZWVuIGJldHRlciBmb3IgeW91Pw0KDQpJIGFtIHN0
cmlwcGluZyB0aGUgbWFpbnRhaW5lcnMgYmVjYXVzZSB0aGV5J3JlIG9uIHRoZSBtYWlsaW5nIGxp
c3QgYWxyZWFkeSBhbmQgbXVsdGlwbGUgY29waWVzIG9mIHRoZSBzYW1lIGVtYWlsIG1lYW5zIHRo
ZXkgZ2V0IGFubm95ZWQgYW5kIGxpa2VseSBpZ25vcmUgdGhlIGVtYWlsLg0KDQpBbmQgaWYgeW91
IGRvIHB1dCBpdCBiYWNrLCB3ZSB3aWxsIGxpa2VseSBoYXZlIHRvIGRpc2FibGUgdGhlIGZlYXR1
cmUgaW4gaGFyZHdhcmUgYW5kIGhhdmUgdmFyaWFudHMgdGhhdCBhbGxvdyBpdCBmb3IgdGhlIHBl
b3BsZSB3aG8gbmVlZCBpdC4gWW91IHJlYWxseSB3YW50IHRoYXQgb3V0Y29tZT8NCg0KVG9kZCBG
dWppbmFrYQ0KU29mdHdhcmUgQXBwbGljYXRpb24gRW5naW5lZXINCkRhdGEgQ2VudGVyIEdyb3Vw
DQpJbnRlbCBDb3Jwb3JhdGlvbg0KdG9kZC5mdWppbmFrYUBpbnRlbC5jb20NCg0KLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcu
ZGU+IA0KU2VudDogRnJpZGF5LCBEZWNlbWJlciAxOCwgMjAyMCAxMTo1NSBQTQ0KVG86IEZ1amlu
YWthLCBUb2RkIDx0b2RkLmZ1amluYWthQGludGVsLmNvbT47IEJlbiBHcmVlYXIgPGdyZWVhcmJA
Y2FuZGVsYXRlY2guY29tPg0KQ2M6IEdyZWcgS0ggPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3Jn
PjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEJyYW5kZWJ1cmcsIEplc3NlIDxq
ZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxhbnRob255Lmwu
bmd1eWVuQGludGVsLmNvbT47IERhdmlkIFMuIE1pbGxlciA8ZGF2ZW1AZGF2ZW1sb2Z0Lm5ldD47
IExpbnVzIFRvcnZhbGRzIDx0b3J2YWxkc0BsaW51eC1mb3VuZGF0aW9uLm9yZz47IFR5bCwgUmFk
b3NsYXdYIDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSBpeGdiZTogNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsg
bmVnb3RpYXRpb24/DQoNCkRlYXIgVG9kZCwNCg0KDQpUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHku
DQoNCldoYXQgaXMgdGhlIHJlYXNvbiB5b3Ugc3RyaXBwZWQgdGhlIG1haW50YWluZXJzIGZyb20g
Q2MgbGlzdCBhZ2Fpbj8NCg0KQWxzbywgcGxlYXNlIGFkaGVyZSB0byBtYWlsaW5nIGxpc3QgZXRp
cXVldHRlLCBhbmQgZG8gbm90IHRvcCBwb3N0LCBidXQgdXNlIGludGVybGVhdmVkIHN0eWxlLg0K
DQpGb3IgY29udGV4dDogQ29tbWl0IGEyOTZkNjY1ZWEgKGl4Z2JlOiBBZGQgZXRodG9vbCBzdXBw
b3J0IHRvIGVuYWJsZSAyLjUgYW5kIDUuMCBHYnBzIHN1cHBvcnQpLCBwcmVzZW50IHNpbmNlIDUu
OS1yYzEsIGludHJvZHVjZWQgYSByZWdyZXNzaW9uLCB0aGF0IGxpbmsgbmVnb3RpYXRpb24gbm93
IGRlZmF1bHRzIHRvIDEgR2JwcywgYW5kIGV0aHRvb2wgaGFzIHRvIGJlIHJ1biB0byBlbmFibGUg
aGlnaGVyIHNwZWVkcyAyLjUuDQoNCg0KQW0gMTkuMTIuMjAgdW0gMDE6MDkgc2NocmllYiBGdWpp
bmFrYSwgVG9kZDoNCj4gV2hhdCBkbyB5b3UgY29uc2lkZXIgYSByZWdyZXNzaW9uPyBIYXZpbmcg
dG8gZW5hYmxlIDIuNUcgYW5kIDVHIHVzaW5nIA0KPiBldGh0b29sIHdoaWNoIGNhbiBiZSBkb25l
IGF0IGJvb3QgdGltZT8NCg0KV2VsbCwgTGludXjigJkgbm8gcmVncmVzc2lvbiBwb2xpY3kgc2hv
dWxkIGJlIHdlbGwga25vd24gYnkgTGludXgga2VybmVsIGRldmVsb3BlcnMgYW5kIG1haW50YWlu
ZXJzLg0KDQpQZW9wbGUgY2FuIGFsd2F5cyB1cGRhdGUgdG8gdGhlIG1haW5saW5lIExpbnV4IGtl
cm5lbCwgYW5kIGV4cGVjdCB0aGVpciBzZXR1cCB0byB3b3JrIGFzIHdpdGggdGhlIG9sZCBMaW51
eCBrZXJuZWwuIEV2ZW4gaWYgdGhlIGJlaGF2aW9yIGJlZm9yZSB3YXMgYSBidWcuDQoNCkJ1dCBt
YXliZSBJIGFtIHdyb25nLCBzbyBMaW51cyBpcyBpbiB0aGUgQ2MgbGlzdCBub3cuDQoNCj4gV2Ug
aGFkIG1vcmUgdGhhbiBhIGZldyBkYXRhY2VudGVycyB3aXRoIGlzc3VlcyBiZWNhdXNlIG9mIGNv
bXBldGluZyANCj4gc3RhbmRhcmRzLiBJIGNoZWNrZWQgd2l0aCBvdXIgbWFya2V0aW5nIHBlb3Bs
ZSBhbmQsIG9uIHRoZSB3aG9sZSwgbm8gDQo+IG9uZSBjb3VsZCB0aGluayBvZiBhIGxhcmdlIG51
bWJlciBvZiAyLjVHIG9yIDVHIGN1c3RvbWVycy4NCj4gDQo+IFdlIGhhZCBzZXZlcmFsIGVzY2Fs
YXRpb25zIGZyb20gbWFqb3IgT0VNcyBhbmQgdGhpcyB3YXMgdGhlIHNvbHV0aW9uIA0KPiB0aGV5
IHdhbnRlZC4NCj4gDQo+IFdlIGNvbnNpZGVyIHRoaXMgbmVjZXNzYXJ5IGZvciBpbnRlcm9wZXJh
YmlsaXR5Lg0KDQpBcyB3cml0dGVuLCB0aGlzIGRvZXMgbm90IG1hdHRlciwgYXMgZmFyIGFzIEkg
a25vdy4gWW91IGhhdmUgdG8gZmluZCBhIHdheSB0byBub3QgcmVncmVzcyB3b3JraW5nIHNldHVw
cy4gSXQgYWxzbyBzaG93cywgdGhhdCB5b3VyIHByb2Nlc3Mgc2hvdWxkIGJlIG1vcmUgb3Blbi4N
Cg0KSW4gdGhpcyBjYXNlLCBJIGFtIHBhcnRpY3VsYXJseSB1cHNldCwgdGhhdCB0aGUgY29tbWl0
IGNoYW5nZWQgdGhlIGRlZmF1bHRzIHdpdGhvdXQgYW55IG1lbnRpb25pbmcgaW4gdGhlIGNvbW1p
dCBtZXNzYWdlLCBhbmQgdGhlIGNvbW1pdCBtZXNzYWdlIG1pc3NlcyBhbGwgdGhlIGluZm9ybWF0
aW9uIGFuZCBjb250ZXh0LCB3aGljaCBub3cgdG9vayBhIHdoaWxlIHRvIGdhdGhlciBmcm9tIHlv
dS4NCg0KQWRkaXRpb25hbGx5LCBpbiBteSBvcGluaW9uLCBhZGRpdGlvbmFsbHksIGEgd2Fybmlu
ZyBvciBub3RpY2Ugc2hvdWxkIGJlIHByaW50ZWQgYnkgTGludXggYWJvdXQgdGhpcyBpc3N1ZS4N
Cg0KDQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IFNlbnQ6IEZy
aWRheSwgRGVjZW1iZXIgMTgsIDIwMjAgMzoxOSBQTQ0KPiBUbzogQmVuIEdyZWVhciA8Z3JlZWFy
YkBjYW5kZWxhdGVjaC5jb20+OyBGdWppbmFrYSwgVG9kZCA8dG9kZC5mdWppbmFrYUBpbnRlbC5j
b20+DQo+IENjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgR3JlZyBLSCA8Z3Jl
Z2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50aG9ueS5sLm5n
dXllbkBpbnRlbC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZSA8amVzc2UuYnJhbmRlYnVyZ0BpbnRl
bC5jb20+OyBUeWwsIFJhZG9zbGF3WCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+OyBMb2t0aW9u
b3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBNY2xlYW4sIEFy
dGh1ciBGIDxhcnRodXIuZi5tY2xlYW5AaW50ZWwuY29tPjsgU2thamV3c2tpLCBQaW90clggPHBp
b3RyeC5za2FqZXdza2lAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxh
bl0gNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVnb3RpYXRpb24/
DQo+IA0KPiBbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQ0KPiANCj4gQW0gMTkuMTIu
MjAgdW0gMDA6MDcgc2NocmllYiBCZW4gR3JlZWFyOj4gT24gMTIvMTgvMjAgMTE6NDMgQU0sIFBh
dWwgTWVuemVsIHdyb3RlOg0KPiANCj4+PiBBbSAxOC4xMi4yMCB1bSAyMDoyNyBzY2hyaWViIEZ1
amluYWthLCBUb2RkOg0KPj4+PiBZZXMsIGFuZCBJJ20gcGx1Z2dpbmcgdGhlIGhvbGUgaW4gdGhl
IFJFQURNRSByaWdodCBub3cuIEhlcmUncyB0aGUgDQo+Pj4+IHByb3Bvc2VkIHRleHQ6DQo+Pj4+
DQo+Pj4+IEFkdmVydGlzZW1lbnRzIGZvciAyLjVHIGFuZCA1RyBvbiB0aGUgeDU1MCB3ZXJlIHR1
cm5lZCBvZmYgYnkgDQo+Pj4+IGRlZmF1bHQgZHVlIHRvIGludGVyb3BlcmFiaWxpdHkgaXNzdWVz
IHdpdGggY2VydGFpbiBzd2l0Y2hlcy4gVG8gDQo+Pj4+IHR1cm4gdGhlbSBiYWNrIG9uLCB1c2UN
Cj4+Pj4NCj4+Pj4gZXRodG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIE4NCj4+Pj4NCj4+Pj4gd2hl
cmUgTiBpcyBhIGNvbWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuDQo+Pj4+DQo+Pj4+IDEwMGJh
c2VURnVsbCAgICAweDAwOA0KPj4+PiAxMDAwYmFzZVRGdWxsICAgMHgwMjANCj4+Pj4gMjUwMGJh
c2VURnVsbCAgIDB4ODAwMDAwMDAwMDAwDQo+Pj4+IDUwMDBiYXNlVEZ1bGwgICAweDEwMDAwMDAw
MDAwMDANCj4+Pj4gMTAwMDBiYXNlVEZ1bGwgIDB4MTAwMA0KPj4+Pg0KPj4+PiBGb3IgZXhhbXBs
ZSwgdG8gdHVybiBvbiBhbGwgbW9kZXM6DQo+Pj4+IGV0aHRvb2wgLXMgPGV0aFg+IGFkdmVydGlz
ZSAweDE4MDAwMDAwMDEwMjgNCj4+Pj4NCj4+Pj4gRm9yIG1vcmUgZGV0YWlscyBwbGVhc2Ugc2Vl
IHRoZSBldGh0b29sIG1hbiBwYWdlLg0KPj4+DQo+Pj4gV2hhdCBjb21taXQgaW50cm9kdWNlZCB0
aGlzIHJlZ3Jlc3Npb24uIFBsZWFzZSBiZWFyIGluIG1pbmQsIHRoYXQgDQo+Pj4gdGhpcyBjb250
cmFkaWN0cyBMaW51eOKAmSBuby1yZWdyZXNzaW9uIHBvbGljeSwgYW5kIHRoZSBjb21taXQgc2hv
dWxkIA0KPj4+IHRoZXJlZm9yZSBiZSByZXZlcnRlZCBhcyBzb29uIGFzIHBvc3NpYmxlLg0KPj4g
DQo+PiBMb29rcyBsaWtlIGl0IGlzIGF0IHRoZSBlbmQgb2YgdGhpcyBwYXRjaCwgdGhvdWdoIHRo
ZSBkZXNjcmlwdGlvbiANCj4+IGRvZXNuJ3QgbWVudGlvbiBjaGFuZ2luZyBkZWZhdWx0czoNCj4+
IA0KPj4gQ29tbWl0IGEyOTZkNjY1ZWFlMWU4ZWM2NDQ1NjgzYmZiOTk5Yzg4NDA1ODQyNmENCj4+
IEF1dGhvcjogUmFkb3NsYXcgVHlsIDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4NCj4+IERhdGU6
ICAgRnJpIEp1biAyNiAxNToyODoxNCAyMDIwICswMjAwDQo+PiANCj4+ICAgICAgaXhnYmU6IEFk
ZCBldGh0b29sIHN1cHBvcnQgdG8gZW5hYmxlIDIuNSBhbmQgNS4wIEdicHMgc3VwcG9ydA0KPj4g
DQo+PiAgICAgIEFkZGVkIGZ1bGwgc3VwcG9ydCBmb3IgbmV3IHZlcnNpb24gRXRodG9vbCBBUEku
IE5ldyBBUEkgYWxsb3cgdXNlDQo+PiAgICAgIDI1MDBHYmFzZS1UIGFuZCA1MDAwYmFzZS1UIHN1
cHBvcnRlZCBhbmQgYWR2ZXJ0aXNlZCBsaW5rIHNwZWVkIG1vZGVzLg0KPj4gDQo+PiAgICAgIFNp
Z25lZC1vZmYtYnk6IFJhZG9zbGF3IFR5bCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+DQo+PiAg
ICAgIFRlc3RlZC1ieTogQW5kcmV3IEJvd2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPg0K
Pj4gICAgICBTaWduZWQtb2ZmLWJ5OiBUb255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRl
bC5jb20+DQo+PiANCj4+IFRoYW5rcywNCj4+IEJlbg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
