Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 526F52DFD64
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:20:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 12AF787785;
	Mon, 21 Dec 2020 15:20:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ydHoLeuyBLEq; Mon, 21 Dec 2020 15:20:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06C1487662;
	Mon, 21 Dec 2020 15:20:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6E8C1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D02352152C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8FU6gwZOeJ2P for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:20:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 79D182152A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:20:09 +0000 (UTC)
IronPort-SDR: HwAc1Norzo923kWW95l3KlAR6gcUa1/SH6BfZaD6E/RYRvApNiz8YVyL5HHPrRoW76zpX+h59R
 wAjUrzUYZzLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="194166998"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="194166998"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 07:20:09 -0800
IronPort-SDR: QY9kQdR4y1USPyngoveYbP9IPjzfT1OP0l+JkxseTctOtN5RiDXeJ6znAJdtq3pU13DDconc3F
 EcPgd/3G1TNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="389086213"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 21 Dec 2020 07:20:08 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:20:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Dec 2020 07:20:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Dec 2020 07:20:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MkOFLfeYQYMqaj7ycMw2Nzul0/27V2R8Lu2SrOMdZ3FoNLKtqxUPkkDLwaxTL+suNsHDKQ9z7FFhiT3QyNkgfydVmjQvpRPQ/zdvOJgR358mIu+bSoKwpknVHBCsM1m+VJHGzZwucvlyPl+HgF0mF+9yLpzMzNyBv1JDSSTLxOM+Mo2K6npqybl180x7NKtnvDcEznTn8/k/U+TNty0DJXG0pKDZPR0rgqq25kmBsHNiIiEjcQQbBr7hcPL3gFLtDNN8Ik6nGR+K0yOubvw/F0LlCoSK0ppDAYGAOI13Z0v+CFXo3aHG7YyzDblxU0uK3Gi215z64IxtfHH8/ImaSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o0K+3Nq9WYy3qoR9hX6tmELZSBGDmGEGVcnOz2AZIak=;
 b=e06hz1s/pF0oUDI5etMlI2UXTNDuGR49arf9DX4VJ3hJ/dg/e16HYiuax6vB4vEwfGxG29bT5k1Y/F7ry3eLAqLi5Od8A8TO/bkeXztoDPhDc2ibbt/L9Ksd3s7/LDTH5e1XY1GVRBXGbp6GAVPHgDJFtHeSsc3ToZfC2LJHEjdkV+3l7BFtgJshARIkHHW79+85BsCrYcoywQlwpIav711D36lKb8lDcUcfG+Vky4uJnGB4A3LmZPEVzLXBjQNJFUAeBSQk/Dano0qTc6yqDBiHkhEDN34g+/CZMEXm4oiidxtp2spSFxpOQsKAsy42Dqi8p7iNcLmi3LBgb4650g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=o0K+3Nq9WYy3qoR9hX6tmELZSBGDmGEGVcnOz2AZIak=;
 b=Klq9nfl8m+aKhK3yU2CLIlMFHRBL8dzI1WBvVd1MM8HIVZ8qP46nevaZ2G+8rcnbWtDBaciCfVwuFqsiooVh3N4Z/howMrk0MNihJfeJUap77HInKCDw0uDeHhlz4OhGAv1rKUq/P4+hJrhJh5FcGMcO8h8SOQNP8tqazw982nQ=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BY5PR11MB4321.namprd11.prod.outlook.com (2603:10b6:a03:1bf::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.33; Mon, 21 Dec
 2020 15:20:04 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3676.031; Mon, 21 Dec 2020
 15:20:04 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Ben Greear <greearb@candelatech.com>, Paul Menzel <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
Thread-Index: AQHW1WmC/9lZetFbe0W6vQgdg2EdV6n9PE7AgAAE+ICAADjoAIAAA24AgAAMYICAAAwigIABATNggAALUACAAwnwsA==
Date: Mon, 21 Dec 2020 15:20:04 +0000
Message-ID: <BYAPR11MB3606A702240D0A1614AA6585EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <2108932e-ee2e-cadf-52cd-0cd11a6aeba4@candelatech.com>
In-Reply-To: <2108932e-ee2e-cadf-52cd-0cd11a6aeba4@candelatech.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: candelatech.com; dkim=none (message not signed)
 header.d=none;candelatech.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.115.69.8]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bb3f32e0-d5d1-4d05-5df9-08d8a5c3e489
x-ms-traffictypediagnostic: BY5PR11MB4321:
x-microsoft-antispam-prvs: <BY5PR11MB432176292B15E73D4B7C5B3CEFC00@BY5PR11MB4321.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2582;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bgG0NNdJjMYwqoISe7STt1hkWJ1myhNPsE7IPfPQ4sPwQmUpf4VSNo8iFODRy3/qDV3nCAzOjFMTX4LBlPCZQRBkuzFoFXILzOt6Uo5Kf5VUaIxF9Ygxel8tbZ5HJ10iy1j33KKC8tm5AYGyCziWvCFo1g1/PRWtqinY47nQjx0ug6slE4AnjDH8yGLeDYHBX49h1v+/ypkoHPj9htX3JhPW92Cy0QIb3xqIHGQAGfVpktxDpzeouzH4qRwEaFxFaVYWXA3CXcyFHKr3Xcs2Cr0aIYg51TawKlE3W4lvhvOozUdlyMwwtL5qAyluqfp8N6Ohi/+aZPxmMo4911b/zTaLu5Cyc295noU7yEeUsCwwQmgz0wQFHsWbUmDTNGol2YGkVntPpvh098b+1Nk4BZp57RIWBYenKBf6WQIfUsniq+IQyDtGWDe6e44nDWZEuWG0XEYhjr96iQkQcYc1OqJOHnj5ZJnDqwNNBZUOsEnONTCXRKrVFdI76yPl40lI/TRhf6KqEl6tfUcbJtPqcQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(366004)(39860400002)(376002)(396003)(66476007)(66556008)(64756008)(478600001)(66446008)(53546011)(66946007)(7696005)(76116006)(86362001)(83380400001)(6506007)(26005)(316002)(55016002)(5660300002)(9686003)(8676002)(33656002)(966005)(4326008)(8936002)(71200400001)(110136005)(186003)(2906002)(52536014)(54906003)(18886065003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?QzM3bkg1T0R6Y0xMRjBzUEgrRWJBWU1WekVsSUxzVmtqZjVJWHRDYlp4Unc3?=
 =?utf-8?B?Z0xIdkZuaWJEQXVoNmpYVjdkMkpHeUR3NW1mMXpKOUlZOTJET1BscjduMVlk?=
 =?utf-8?B?L3lqVlc0ZHZvK3ZPSGVwUjIxcCswWldSc0NyOHljZkR4ZVVTZWhYR0EwbXhL?=
 =?utf-8?B?VjRIdmFHUGRNbk1UcEpETlJYUlJPSFEwekpQUmhxZG9JcXo1UXdldEhRUU5H?=
 =?utf-8?B?NllsK1dtTVE2dW9rQmlvZldLY2o4bGV4NElRYmVjT0RsM1R1L0MrV3ZPR1U3?=
 =?utf-8?B?dU5BQURzcHcwU1VQLzJ1THRnRkI1RHE2UmhPSnFZTnJ2b1dBbkVFZlVObmpq?=
 =?utf-8?B?cUxaRTMram9yWmhIS05QRTk4NVBRN2JHcFpUYTlJSU95TXVaM1NML2FYWWpj?=
 =?utf-8?B?cTRrUjVtMmN0b2gxNWtWYXZPcUxQL3VkdTdXbkNPTThIVkEyUWRrdXI5SDNh?=
 =?utf-8?B?ZE9qYmdJVGhGZSt5WTlaWEVrMXJuclhoYWRHNGhFcFR1MVFVZTAvdkxwTWh5?=
 =?utf-8?B?Ti9DMTZBMWczODB2UCt6TjZYODFRQTF0NktidHVjdGxldmdzSWQ1dDN5NlBV?=
 =?utf-8?B?M0JPcURYTlg4aW1ZdlkxSGRyWmM3N0VxNVQ2VHp6djlHNEp4T3daZGYvcXoy?=
 =?utf-8?B?eVhRYU9rRFBneW4xM3Frald5anNxM2FXVEU1Zy81RnFQcEdyM001ZkZsbGxu?=
 =?utf-8?B?RUpuUThTS1k3bjdMd21ScFh4dnEyT2lIMTNxYm5mcjJZQjUxRFJnSVRub2dr?=
 =?utf-8?B?aUc1RmJmem9seTF6UjdGNGprcXVnOUtwSWF2V2FEL1U1VEU3emxFUFFsMjlQ?=
 =?utf-8?B?Sm1UUDdWVy9ySVNUL252K05EWDRIQWQybmxZdFVoS3B1T2ZLa1VTNmxhdE5B?=
 =?utf-8?B?R2UvVEpCM0tDaG9jelZmWmZ0MXBDZXZUMzJWNUtqbXNLZFp1THJiYldvUDQw?=
 =?utf-8?B?ano1SC9WTllCOW8xT0dtZEVoaGVxR3ptSC9LQXJBb3lBdlQ5K3liVXNzSE5G?=
 =?utf-8?B?Qzd2T1UzMndTRGY4bWdVWjlSTThKQzZLcHROcitFMU5QaG85VmpXeFUxQWRl?=
 =?utf-8?B?aXNoaDlMWjNkVnlFRnF4dDdMY1plUGxpY0d5WlcvYjNieXN5USs1Q1NleWl6?=
 =?utf-8?B?eTk3T2o3OXZncXJoYzBORDN2T3Jab1JiNWgrdS9lYTRsa2Z6M2s0ZjdmSkhw?=
 =?utf-8?B?Vnd5SzFFbU1aN1dPMS9jd0ZEL2V2TVBQOGNXejFzZDNHOGo4ZTVKNTJnaXhZ?=
 =?utf-8?B?M05weGhRUTRGU1RIRXN6THJxUis5clErTVo2K29wTWtFUTMzc0k4R1pIdzdQ?=
 =?utf-8?Q?0YuXunnyQztlw=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb3f32e0-d5d1-4d05-5df9-08d8a5c3e489
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2020 15:20:04.3399 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ft0aHbp4h676rE8Bhop8fLypC5sceCDh9R8d+4WSVjeOKB3ODVx6cUhYYrKg19KnwdUXFW3v0Vn6LhLUlLFbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4321
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tm9wZS4gVGhlIHRpbWluZyBvZiB0aGUgUEhZcyBtZWFucyB0aGUgc3dpdGNoIHRpbWVzIG91dCB3
aGlsZSB3ZSdyZSB0cnlpbmcgMi41RyBhbmQgNUcgYW5kIHRoZSBzd2l0Y2ggZ29lcyB0byBpdHMg
ZGVmYXVsdCBsb3dlc3Qgc3BlZWQgb2YgMUcuIFRoZW4gd2UgZ28gdG8gMUcgYW5kIGJ5IHRoYXQg
dGltZSBib25kaW5nIGlzIGJyb2tlbiBpbiBzZXZlcmFsIG9mIHRoZSBjYXNlcyB3ZSByYW4gaW50
by4NCg0KQmFzaWNhbGx5LCB3ZSBjYW4gaGF2ZSB0aGF0IHN3aXRjaCB3b3JrLCBvciB3ZSBjYW4g
aGF2ZSAyLjVHIGFuZCA1RyBvbiBieSBkZWZhdWx0LiBOb3QgYm90aC4gQW5kIHNpbmNlIHdlJ3Jl
IHNlbGxpbmcgYSAxMEcgZGV2aWNlIHdpdGggb3RoZXIgc3BlZWRzIGFzIGEgYm9udXMsIHdlJ3Jl
IHByaW9yaXRpemluZyB0aGUgaGlnaGVzdCBzcGVlZC4gVGhhdCBwbHVzIHRoZSB2ZXJ5IGhpZ2gg
cHJvZmlsZSBjdXN0b21lcnMgd2hvIHdhbnRlZCB0aGlzIHNvbHV0aW9uLg0KDQpUaGUgc29sdXRp
b24gZm9yIG9uZSBjYW1wIG9yIHRoZSBvdGhlciBpcyB0byB1c2UgdGhlIGV0aHRvb2wgY29tbWFu
ZCBhdCBib290IChJJ3ZlIGZvcmdvdHRlbiBleGFjdGx5IHdoYXQgdGhhdCB3YXMpIGJ1dCB0aGUg
aGlnaCBwcm9maWxlIGN1c3RvbWVycyByZWZ1c2VkIHRvIGRvIHRoYXQuIFNvdW5kcyBsaWtlIHlv
dSdyZSByZWZ1c2luZyBhcyB3ZWxsPw0KDQpUb2RkIEZ1amluYWthDQpTb2Z0d2FyZSBBcHBsaWNh
dGlvbiBFbmdpbmVlcg0KRGF0YSBDZW50ZXIgR3JvdXANCkludGVsIENvcnBvcmF0aW9uDQp0b2Rk
LmZ1amluYWthQGludGVsLmNvbQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTog
QmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVjaC5jb20+IA0KU2VudDogU2F0dXJkYXksIERl
Y2VtYmVyIDE5LCAyMDIwIDg6NDggQU0NClRvOiBGdWppbmFrYSwgVG9kZCA8dG9kZC5mdWppbmFr
YUBpbnRlbC5jb20+OyBQYXVsIE1lbnplbCA8cG1lbnplbEBtb2xnZW4ubXBnLmRlPg0KQ2M6IGlu
dGVsLXdpcmVkLWxhbkBsaXN0cy5vc3Vvc2wub3JnOyBHcmVnIEtIIDxncmVna2hAbGludXhmb3Vu
ZGF0aW9uLm9yZz4NClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSA1LjEwLjAga2VybmVs
IHJlZ3Jlc3Npb24gZm9yIDIuNUdicHMgbGluayBuZWdvdGlhdGlvbj8NCg0KT24gMTIvMTkvMjAg
ODoxOSBBTSwgRnVqaW5ha2EsIFRvZGQgd3JvdGU6DQo+IFRoaXMgaXMgYSBiYWQgY2FzZSB3aXRo
IG5vIGlkZWFsIHNvbHV0aW9uLiBEZXRlY3RpbmcgdGhlIGNhc2UgaXMgbm90IHBvc3NpYmxlIGFz
IGF1dG9uZWdvdGlhdGlvbiBoYXBwZW5zIGluIHRoZSBoYXJkd2FyZSB3aXRob3V0IHNvZnR3YXJl
IGludm9sdmVtZW50Lg0KPiANCg0KU28sIGFmdGVyIGl0IG5lZ290aWF0ZXMgdG8gMi41LCB3aGF0
IGhhcHBlbnM/ICBEbyB5b3Ugc2VlIGxvdHMgb2YgbG93LWxldmVsIGNyYyBlcnJvcnMgb3Igc2lt
aWxhcj8NCk1heWJlIHlvdSBjYW4gdXNlIHRoYXQgdG8gZGV0ZXJtaW5lIGxpbmsgaXMgYmFkIGFu
ZCBmb3JjZSBpdCBiYWNrIHRvIDFHYnBzIGFuZCByZS1uZWdvdGlhdGUgbGluaz8NCg0KKEFuZCB3
aXRoIG5pY2UgdmlzaWJsZSB3YXJuaW5nIGluIGRtZXNnIGFib3V0IHdoYXQgaXMgZ29pbmcgb24p
DQoNCj4gT25lIHNvbHV0aW9uIHdhcyB0byB1cGRhdGUgdGhlIHN3aXRjaCBmaXJtd2FyZSBmb3Ig
dGhlIGEgc3dpdGNoIHRoYXQgaXMgaXMgdGhlIGxpbmsgcGFydG5lciB0aGF0IGdpdmUgdXMgdGhl
IG1vc3QgdHJvdWJsZS4gVGhlIGlzc3VlIGFwcGVhcnMgdG8gYmUgaW4gY29tcGV0aW5nIG9yIGhh
bGYtaW1wbGVtZW50ZWQgc3RhbmRhcmRzLiAyLjVHIGFuZCA1RyB3ZXJlIGluaXRpYWxseSBub24t
SUVFRSBzdGFuZGFyZHMgdGhhdCBkaWZmZXJlbnQgbWFudWZhY3R1cmVycyBoYWNrZWQgb250byAx
RyBpbiBkaWZmZXJlbnQgd2F5cy4gV2UgaW1wbGVtZW50ZWQgaXQgdG8gb25lIG9mIHRoZSBzdGFu
ZGFyZHMgd2hpY2ggc2hvdWxkIGJlIGludGVyb3BlcmFibGUsIGJ1dCB0aGUgY29ybmVyIGNhc2Ug
b2YgdGhlIHdpZGVseS1kZXBsb3llZCBzd2l0Y2ggd2lsbCB0YWtlIHRoZSBsaW5rIGZyb20gMTBH
IHRvIDFHIHdpdGggbm8gYXV0b21hdGVkIHdheSB0byBmaXggaXQuDQo+IA0KPiBVcGRhdGluZyBz
d2l0Y2hlcyBtZWFucyBhIGxvdCBvZiBkb3dudGltZSBmb3IgYSBsb3Qgb2YgZGF0YWNlbnRlcnMg
YW5kIHRoZSBPRU1zIHdlIGRlYWwgd2l0aCB3b3VsZCBub3QgYWNjZXB0IHRoYXQgYW5zd2VyLg0K
PiANCj4gT3VyIHNvbHV0aW9uIHdhcyB0byBkaXNhYmxlIDIuNUcgYW5kIDVHIGJ5IGRlZmF1bHQu
IFRoaXMgZml4ZXMgMTBHIGxpbmtpbmcgYXQgMUcgb24gdGhhdCBzd2l0Y2gsIGJ1dCAyLjVHIGFu
ZCA1RyB3aWxsIGxpbmsgYXQgMUcgYnkgZGVmYXVsdC4gQW5kLCBhcyBJIHNhaWQsIEkndmUgaGFk
IHZlcnkgbGl0dGxlIGNvbnRhY3Qgd2l0aCBwZW9wbGUgdXNpbmcgMi41RyBhbmQgNUcgYW5kIEkn
bSB0aGUgZ3V5IG9uIGFsbCB0aGUgbWFpbGluZyBsaXN0cy4gSSBhcG9sb2dpemUgZm9yIG1ha2lu
ZyB5b3VyIGxpZmUgaGFyZGVyLCBidXQgaXQgc2VlbXMgbGlrZSBpdCdzIGp1c3QgeW91IHNvIGZh
ci4gUGF1bCBzZWVtcyB0byBiZSBhcmd1aW5nIHdpdGggbWUganVzdCBmb3IgdGhlIGZ1biBvZiBp
dC4NCg0KV2VsbCwgd2hlbiB0aGluZ3Mgd29yaywgbm8gb25lIHRhbGtzIGFib3V0IGl0LiA6KQ0K
DQpBcmUgeW91IGFibGUgdG8gZGV0ZXJtaW5lIHRoYXQgcGVlciBpcyBhZHZlcnRpc2luZyAyLjUs
IGFuZCBsb2NhbCBOSUMgaXMgZm9yY2VkIHRvIDFHLCBhbmQgdGhlbiBwdXQgYSB2aXNpYmxlIHdh
cm5pbmcgaW4gZG1lc2cgYWJvdXQgdGhpcyBjYXNlIGFuZCBsaW5rIHRvIGhvdyB0byBlbmFibGUg
Mi41LzVHIHJhdGVzPyAgVGhhdCBtaWdodCBoZWxwIHBlb3BsZSByZWFsaXplIHdoYXQgaXMgZ29p
bmcgb24uICBBbmQgd2hlbiB5b3UgZG8gdGhpcyBjb21taXQsIHB1dCBhIGxvdCBvZiBub3RlcyBh
Ym91dCB3aHkgYW5kIGFib3V0IHdoYXQgY29tbWl0IGNoYW5nZWQgdGhpbmdzIHNpbmNlIGl0IGlz
IG5vdCBhdCBhbGwgb2J2aW91cyBmcm9tIHRoZSBvcmlnaW5hbCBjb21taXQgbWVzc2FnZS4NCg0K
VGhhbmtzLA0KQmVuDQoNCj4gDQo+IFRvZGQgRnVqaW5ha2ENCj4gU29mdHdhcmUgQXBwbGljYXRp
b24gRW5naW5lZXINCj4gRGF0YSBDZW50ZXIgR3JvdXANCj4gSW50ZWwgQ29ycG9yYXRpb24NCj4g
dG9kZC5mdWppbmFrYUBpbnRlbC5jb20NCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+IEZyb206IEJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPg0KPiBTZW50OiBG
cmlkYXksIERlY2VtYmVyIDE4LCAyMDIwIDQ6NDcgUE0NCj4gVG86IEZ1amluYWthLCBUb2RkIDx0
b2RkLmZ1amluYWthQGludGVsLmNvbT47IFBhdWwgTWVuemVsIA0KPiA8cG1lbnplbEBtb2xnZW4u
bXBnLmRlPg0KPiBDYzogaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmc7IEdyZWcgS0gg
DQo+IDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCj4gU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIDUuMTAuMCBrZXJuZWwgcmVncmVzc2lvbiBmb3IgMi41R2JwcyBsaW5rIG5lZ290
aWF0aW9uPw0KPiANCj4gT24gMTIvMTgvMjAgNDowOSBQTSwgRnVqaW5ha2EsIFRvZGQgd3JvdGU6
DQo+PiBXaGF0IGRvIHlvdSBjb25zaWRlciBhIHJlZ3Jlc3Npb24/IEhhdmluZyB0byBlbmFibGUg
Mi41RyBhbmQgNUcgdXNpbmcgZXRodG9vbCB3aGljaCBjYW4gYmUgZG9uZSBhdCBib290IHRpbWU/
DQo+Pg0KPj4gV2UgaGFkIG1vcmUgdGhhbiBhIGZldyBkYXRhY2VudGVycyB3aXRoIGlzc3VlcyBi
ZWNhdXNlIG9mIGNvbXBldGluZyBzdGFuZGFyZHMuIEkgY2hlY2tlZCB3aXRoIG91ciBtYXJrZXRp
bmcgcGVvcGxlIGFuZCwgb24gdGhlIHdob2xlLCBubyBvbmUgY291bGQgdGhpbmsgb2YgYSBsYXJn
ZSBudW1iZXIgb2YgMi41RyBvciA1RyBjdXN0b21lcnMuDQo+Pg0KPj4gV2UgaGFkIHNldmVyYWwg
ZXNjYWxhdGlvbnMgZnJvbSBtYWpvciBPRU1zIGFuZCB0aGlzIHdhcyB0aGUgc29sdXRpb24gdGhl
eSB3YW50ZWQuDQo+Pg0KPj4gV2UgY29uc2lkZXIgdGhpcyBuZWNlc3NhcnkgZm9yIGludGVyb3Bl
cmFiaWxpdHkuDQo+IA0KPiBDYW4geW91IGRldGVjdCB0aGlzIGNhc2Ugc29tZWhvdyBhbmQgYXV0
b21hdGljYWxseSBmYWxsLWJhY2sgdG8gMUdicHM/DQo+IA0KPiBGb3IgbXkgb3duIHB1cnBvc2Vz
LCBJIHdpbGwganVzdCBoYWNrIHRoYXQgY29tbWl0LCBidXQgaXQgaXMgbGlrZWx5IHRvIGJlIGNv
bmZ1c2luZyB0byBvdGhlciBwZW9wbGUgd2hvIGhhZCBhIHN5c3RlbSB0aGF0IHdvcmtlZCBhdCAy
LjUgcHJldmlvdXNseSBhbmQgdGhlbiBzdWRkZW5seSBpdCBpcyBzbG93ZXIuICBUaGVyZSBpcyBu
byBlYXN5IHdheSB0byBrbm93IGZyb20gdGhlIHN5bXB0b20gdGhhdCB5b3UgbmVlZCB0byBkaWcg
dXAgYW4gb2JzY3VyZSByZWFkbWUgYW5kIHJ1biBhbiBvYnNjdXJlIGV0aHRvb2wgY29tbWFuZC4N
Cj4gDQo+IFRoYW5rcywNCj4gQmVuDQo+IA0KPj4NCj4+IFRvZGQgRnVqaW5ha2ENCj4+IFNvZnR3
YXJlIEFwcGxpY2F0aW9uIEVuZ2luZWVyDQo+PiBEYXRhIENlbnRlciBHcm91cA0KPj4gSW50ZWwg
Q29ycG9yYXRpb24NCj4+IHRvZGQuZnVqaW5ha2FAaW50ZWwuY29tDQo+Pg0KPj4gLS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj4+IEZyb206IFBhdWwgTWVuemVsIDxwbWVuemVsQG1vbGdlbi5t
cGcuZGU+DQo+PiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE4LCAyMDIwIDM6MTkgUE0NCj4+IFRv
OiBCZW4gR3JlZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT47IEZ1amluYWthLCBUb2RkIA0K
Pj4gPHRvZGQuZnVqaW5ha2FAaW50ZWwuY29tPg0KPj4gQ2M6IGludGVsLXdpcmVkLWxhbkBsaXN0
cy5vc3Vvc2wub3JnOyBHcmVnIEtIIA0KPj4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPjsg
Tmd1eWVuLCBBbnRob255IEwgDQo+PiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFu
ZGVidXJnLCBKZXNzZSANCj4+IDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IFR5bCwgUmFk
b3NsYXdYIA0KPj4gPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPjsgTG9rdGlvbm92LCBBbGVrc2Fu
ZHIgDQo+PiA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBNY2xlYW4sIEFydGh1ciBG
IA0KPj4gPGFydGh1ci5mLm1jbGVhbkBpbnRlbC5jb20+OyBTa2FqZXdza2ksIFBpb3RyWCANCj4+
IDxwaW90cnguc2thamV3c2tpQGludGVsLmNvbT4NCj4+IFN1YmplY3Q6IFJlOiBbSW50ZWwtd2ly
ZWQtbGFuXSA1LjEwLjAga2VybmVsIHJlZ3Jlc3Npb24gZm9yIDIuNUdicHMgbGluayBuZWdvdGlh
dGlvbj8NCj4+DQo+PiBbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQ0KPj4NCj4+IEFt
IDE5LjEyLjIwIHVtIDAwOjA3IHNjaHJpZWIgQmVuIEdyZWVhcjoNCj4+PiBPbiAxMi8xOC8yMCAx
MTo0MyBBTSwgUGF1bCBNZW56ZWwgd3JvdGU6DQo+Pg0KPj4+PiBBbSAxOC4xMi4yMCB1bSAyMDoy
NyBzY2hyaWViIEZ1amluYWthLCBUb2RkOg0KPj4+Pj4gWWVzLCBhbmQgSSdtIHBsdWdnaW5nIHRo
ZSBob2xlIGluIHRoZSBSRUFETUUgcmlnaHQgbm93LiBIZXJlJ3MgdGhlIA0KPj4+Pj4gcHJvcG9z
ZWQgdGV4dDoNCj4+Pj4+DQo+Pj4+PiBBZHZlcnRpc2VtZW50cyBmb3IgMi41RyBhbmQgNUcgb24g
dGhlIHg1NTAgd2VyZSB0dXJuZWQgb2ZmIGJ5IA0KPj4+Pj4gZGVmYXVsdCBkdWUgdG8gaW50ZXJv
cGVyYWJpbGl0eSBpc3N1ZXMgd2l0aCBjZXJ0YWluIHN3aXRjaGVzLiBUbyANCj4+Pj4+IHR1cm4g
dGhlbSBiYWNrIG9uLCB1c2UNCj4+Pj4+DQo+Pj4+PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRp
c2UgTg0KPj4+Pj4NCj4+Pj4+IHdoZXJlIE4gaXMgYSBjb21iaW5hdGlvbiBvZiB0aGUgZm9sbG93
aW5nLg0KPj4+Pj4NCj4+Pj4+IDEwMGJhc2VURnVsbMKgwqDCoCAweDAwOA0KPj4+Pj4gMTAwMGJh
c2VURnVsbMKgwqAgMHgwMjANCj4+Pj4+IDI1MDBiYXNlVEZ1bGzCoMKgIDB4ODAwMDAwMDAwMDAw
DQo+Pj4+PiA1MDAwYmFzZVRGdWxswqDCoCAweDEwMDAwMDAwMDAwMDANCj4+Pj4+IDEwMDAwYmFz
ZVRGdWxswqAgMHgxMDAwDQo+Pj4+Pg0KPj4+Pj4gRm9yIGV4YW1wbGUsIHRvIHR1cm4gb24gYWxs
IG1vZGVzOg0KPj4+Pj4gZXRodG9vbCAtcyA8ZXRoWD4gYWR2ZXJ0aXNlIDB4MTgwMDAwMDAwMTAy
OA0KPj4+Pj4NCj4+Pj4+IEZvciBtb3JlIGRldGFpbHMgcGxlYXNlIHNlZSB0aGUgZXRodG9vbCBt
YW4gcGFnZS4NCj4+Pj4NCj4+Pj4gV2hhdCBjb21taXQgaW50cm9kdWNlZCB0aGlzIHJlZ3Jlc3Np
b24uIFBsZWFzZSBiZWFyIGluIG1pbmQsIHRoYXQgDQo+Pj4+IHRoaXMgY29udHJhZGljdHMgTGlu
dXjigJkgbm8tcmVncmVzc2lvbiBwb2xpY3ksIGFuZCB0aGUgY29tbWl0IHNob3VsZCANCj4+Pj4g
dGhlcmVmb3JlIGJlIHJldmVydGVkIGFzIHNvb24gYXMgcG9zc2libGUuDQo+Pj4NCj4+PiBMb29r
cyBsaWtlIGl0IGlzIGF0IHRoZSBlbmQgb2YgdGhpcyBwYXRjaCwgdGhvdWdoIHRoZSBkZXNjcmlw
dGlvbiANCj4+PiBkb2Vzbid0IG1lbnRpb24gY2hhbmdpbmcgZGVmYXVsdHM6DQo+Pj4NCj4+PiBD
b21taXQgYTI5NmQ2NjVlYWUxZThlYzY0NDU2ODNiZmI5OTljODg0MDU4NDI2YQ0KPj4+IEF1dGhv
cjogUmFkb3NsYXcgVHlsIDxyYWRvc2xhd3gudHlsQGludGVsLmNvbT4NCj4+PiBEYXRlOsKgwqAg
RnJpIEp1biAyNiAxNToyODoxNCAyMDIwICswMjAwDQo+Pj4NCj4+PiAgICDCoMKgwqAgaXhnYmU6
IEFkZCBldGh0b29sIHN1cHBvcnQgdG8gZW5hYmxlIDIuNSBhbmQgNS4wIEdicHMgc3VwcG9ydA0K
Pj4+DQo+Pj4gICAgwqDCoMKgIEFkZGVkIGZ1bGwgc3VwcG9ydCBmb3IgbmV3IHZlcnNpb24gRXRo
dG9vbCBBUEkuIE5ldyBBUEkgYWxsb3cgdXNlDQo+Pj4gICAgwqDCoMKgIDI1MDBHYmFzZS1UIGFu
ZCA1MDAwYmFzZS1UIHN1cHBvcnRlZCBhbmQgYWR2ZXJ0aXNlZCBsaW5rIHNwZWVkIG1vZGVzLg0K
Pj4+DQo+Pj4gICAgwqDCoMKgIFNpZ25lZC1vZmYtYnk6IFJhZG9zbGF3IFR5bCA8cmFkb3NsYXd4
LnR5bEBpbnRlbC5jb20+DQo+Pj4gICAgwqDCoMKgIFRlc3RlZC1ieTogQW5kcmV3IEJvd2VycyA8
YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPg0KPj4+ICAgIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBU
b255IE5ndXllbiA8YW50aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+DQo+Pj4NCj4+PiBUaGFua3Ms
DQo+Pj4gQmVuDQo+IA0KPiANCj4gLS0NCj4gQmVuIEdyZWVhciA8Z3JlZWFyYkBjYW5kZWxhdGVj
aC5jb20+DQo+IENhbmRlbGEgVGVjaG5vbG9naWVzIEluYyAgaHR0cDovL3d3dy5jYW5kZWxhdGVj
aC5jb20NCj4gDQoNCg0KLS0NCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPg0K
Q2FuZGVsYSBUZWNobm9sb2dpZXMgSW5jICBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbQ0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
