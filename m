Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBC02DEC48
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Dec 2020 01:09:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FC5686BC4;
	Sat, 19 Dec 2020 00:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QeX-l0gVvSOB; Sat, 19 Dec 2020 00:09:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29FF48652A;
	Sat, 19 Dec 2020 00:09:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EBD841BF9B6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:09:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1BE52E368
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:09:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vF-y+5+0SQCe for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Dec 2020 00:09:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C6BF2E35F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Dec 2020 00:09:20 +0000 (UTC)
IronPort-SDR: PH+jzjNyL3n/y0YgmftsKzVgW0bsSXJ01TEInU4G4GNB9+St1mWuARzUpx5IaqRAnyCWqqbEQ8
 VOiFlX3RMMqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9839"; a="260255377"
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="260255377"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 16:09:18 -0800
IronPort-SDR: pEvBN5pbZVSHIg8xASCAkYk65uGM+LYIJLCWBypUERnbiy/1ZlVJTwhPYo5qruPPOMGL/Gb4IB
 aB1v8GBDjMkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,431,1599548400"; d="scan'208";a="354273952"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga002.jf.intel.com with ESMTP; 18 Dec 2020 16:09:18 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Dec 2020 16:09:18 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 18 Dec 2020 16:09:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 18 Dec 2020 16:09:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 18 Dec 2020 16:09:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n2FBGn5Ik5Obmu+Peo6vUdZ5Y4X0qdqGq2Qkp3zYM4O7refg2y3CWDszYZXgUdRHPtwaaB/mi2glsqxwc0F9pCFWNYk/3ZTiH3t6h/Ng47k96pFPuw/4gnea5uZ9rrqKR4uKZPnuCDPDLWENTgyxVnVRM1jP9SSWFND5UOt0tx0bPs0FaVm0V1HGYmUBGWk1upAGRsq5rwXFLNCLO54vTGS4WadWopGnvOYZmP7droW+jFCMUYD563XqCboSnyezUCYPDpjLfsvDG1SPs29lzsBnDYmJYner3+N4ymlcU98aB3Vfkggy4fz1ZDT2bqqw4CJTjMy4p6QJlS6/I3oTFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WJNeNoimFmzEznDt7lGBdqnkvMeSaYtgrOwfRGCgWo=;
 b=lm4XLOyaUnlh9XjmwH7ryuacuVfvYdlIo/3RIUmELgWP2gI6Y84HO+N7F5aHk257PIKLf+13LWO1uUkPbTyVTGMvhDKJARTFhsfOutlFCst5MMXIsnU16IEBckR+zoTu2U45g3aA43LzmlWC/Kx7xXXerkCiuZNkM14YMc3s27uajjOdYDBwOwBeB0zl5j7DDebjCx3aI76B3mntv17LDwI0pNRCOUqA/19wHhR3/WPOQLRs6NYIaGlj6e84XSlYxfakwaejRdidiY0Rw4pAPBv9ukM/JjXQTaQzvBMq5Hrz5T+tf341sM0Maxfazas/K6FBKXQwemIoGBQC2jG/Eg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7WJNeNoimFmzEznDt7lGBdqnkvMeSaYtgrOwfRGCgWo=;
 b=LeUQO1jUPkDHwNMTamNpffiyRHydqABDjMu1PwxjoZjMXjHHqCYtor3wPzSl0oyg9OjusyrtynkbJlUjN48KxHrljQ0lDOpH0lwvPptd+bUzQnMcr8sh7pYplNKz5LenMgoOT7f+5vUaxC/MOAw5bIwbtHAuEZE52v+DJT9fTVk=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by SJ0PR11MB4960.namprd11.prod.outlook.com (2603:10b6:a03:2ac::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.14; Sat, 19 Dec
 2020 00:09:15 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3654.027; Sat, 19 Dec 2020
 00:09:15 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Ben Greear <greearb@candelatech.com>
Thread-Topic: [Intel-wired-lan] 5.10.0 kernel regression for 2.5Gbps link
 negotiation?
Thread-Index: AQHW1WmC/9lZetFbe0W6vQgdg2EdV6n9PE7AgAAE+ICAADjoAIAAA24AgAAMYIA=
Date: Sat, 19 Dec 2020 00:09:15 +0000
Message-ID: <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
In-Reply-To: <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
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
x-ms-office365-filtering-correlation-id: b0f41ed6-bf0f-48b4-cd9e-08d8a3b252a9
x-ms-traffictypediagnostic: SJ0PR11MB4960:
x-microsoft-antispam-prvs: <SJ0PR11MB496065C7990ACD7642096AC7EFC20@SJ0PR11MB4960.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2803;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oXXghnZVSgdf+ccc6PY6m4Bs9ZBzoEZgoGrkx7R4EAm4QcW4+FZj+rySstLysja1Xq4+QmmzVy9PMy+3Y8ZiARc5GCelVjLS+TxbGwGBfxRCC8F7+W1XOE2lZ+7nDHASY9ZxRL70DkQEGM9IIslrBj3830oz0fhNqdRy30eObTkAgO71v/CSWpTSaqszzeQOG7Wwa7x0lBIdk+2JwCldNZx4vRIZXwSB8AVWd7TLaHo+GKrndjgEMB1Purz7EJtX5ZqSzO8OOsxDT3c/jR3ZBN0Bi0CkM2njf0j5BMZsuXRJaicRxtvz0Ra16FDmTdnTgnW0bVU+J3t3leQCI2iuJw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(396003)(366004)(376002)(136003)(110136005)(54906003)(5660300002)(26005)(4326008)(186003)(7696005)(2906002)(86362001)(66476007)(316002)(83380400001)(9686003)(66446008)(66946007)(53546011)(71200400001)(6506007)(52536014)(478600001)(66556008)(8936002)(76116006)(8676002)(33656002)(55016002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?L1dMMlJOeTc1TVhaMU8rdzdsUjJmcW5ZNSszRU1ndllLTzRYMG01RkI0QS9w?=
 =?utf-8?B?UHE1WWFFN2Z3QlluOVlDZnJXNWZ1VXhyUEhTWmVWaWo4QlpOMDNoRzJsdjk5?=
 =?utf-8?B?QlpOZ2lGYWU4bEUxbDBqaFZETkNSQ3ppd3RzU2l0SVYwMXZWMU8rcEw3Q0dn?=
 =?utf-8?B?WXBiZXhIZ2xtVzI1R25TNVdicFJRMDlNOU4zbDZoMkhrNFdacTZta08vdDhC?=
 =?utf-8?B?QzRBWXBscGdoTTc5clNRU1dma3dFcDZwUDNDcm1tYTBOTUFTaW9vSjFOK2pZ?=
 =?utf-8?B?U1VXWVI4UWNhL25wQ3BNdmFXbzM2c3BvMUIvV0JuZUVsSUs1OG8wdkY5STQ3?=
 =?utf-8?B?MDN5eUo4MzAxd2QzTlJQWEVCZFFpMWptT1dXNjlFMjIzT3NjMnV0czRaeE9l?=
 =?utf-8?B?VUxpNWNBZ2xYdXhHVEVuQi9BMzBEcVFMdkwvY2s0ays1RXpKKzdFdXlWUDZS?=
 =?utf-8?B?TlgzQjI0NzlibzkwaVB1dHVWRWVyUnNNcUd5dWdjT2xTZ1lDU3FBZzJuRDFO?=
 =?utf-8?B?L1Y0ZW9Vem9OVG04SjZrSStuVTZ2WXBVeEttNUw0NlpKMlRpVFI5dVN5UnBv?=
 =?utf-8?B?WTN0ZWYrMkNWNzh5ZkludkVSOENNVGtoV05aemNHclZrVVc5a2FhU0hwcEgz?=
 =?utf-8?B?azdrQjUyTFNLOGNuVTA4OE43eGpwZ1NTcUNKTllxNTRQRGo5M2Zrb1NUS1lj?=
 =?utf-8?B?bFYyYTlIMjRLSmRmU2FodER1dzdZRXc1WWNKenVBMFJHb1dWSU5RdXpZdk56?=
 =?utf-8?B?S0FQRnVaZWJNQ0x3R0tTZlRLblJEeTNvd0RtbFUzVVNhUnlsSjhXcVo2eEo2?=
 =?utf-8?B?Q01yaEk4amlmQjRsbVVDU04yaUtESFJ6TFV4dEd4Tm9hclRzVTBDaUVZOHUw?=
 =?utf-8?B?Y3EvYnNDM3NtdTllb202UTdEL0JsQlNoeXdXc29pOG1iNlJXTDQwUU9HUFUv?=
 =?utf-8?B?amljTEhmMUxXZFlFb2FJNmk2cmlKZDJDMk5HS0p0andGRXNlR3ZNNksvWmxt?=
 =?utf-8?B?N3dYUWR3TTVPckUxZmtTUFUrdVVtMTJYYk40NHpjWUdHV1ZKcTdLVTlHWk0r?=
 =?utf-8?B?ditZQXg3bkxXZlV4eEExSmxzOHVHKy9neHhKQkZ0ZG91ODA1V2FVZEs4cVhx?=
 =?utf-8?B?ekJLMElGZjEyQVhIQmgrR3RGWFFPbXV5L1M1K1ZGdElYMkNtRlFLWlV6S2Ja?=
 =?utf-8?B?cGEva3QrLzNMazliY05OOWNqRjhJZ3pFWW9JNHlYUWoxM0lpMWc0cE1lQW0v?=
 =?utf-8?B?Vlc0dURlM1AxYjlQckREYTBiZXRJcEt5aWxRWnhGQVhYbzRGWTFxYXJIUkdW?=
 =?utf-8?Q?+ekJ7KpNOZ5cU=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f41ed6-bf0f-48b4-cd9e-08d8a3b252a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Dec 2020 00:09:15.8641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y8OZM9HVbQBqv9om8S6G6wjhreiWEb+32VXs2uJ7RXE8d+ca58aY0YFDsR7cOljGtnzK0+zF/pEGnXApGfUAKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4960
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

V2hhdCBkbyB5b3UgY29uc2lkZXIgYSByZWdyZXNzaW9uPyBIYXZpbmcgdG8gZW5hYmxlIDIuNUcg
YW5kIDVHIHVzaW5nIGV0aHRvb2wgd2hpY2ggY2FuIGJlIGRvbmUgYXQgYm9vdCB0aW1lPw0KDQpX
ZSBoYWQgbW9yZSB0aGFuIGEgZmV3IGRhdGFjZW50ZXJzIHdpdGggaXNzdWVzIGJlY2F1c2Ugb2Yg
Y29tcGV0aW5nIHN0YW5kYXJkcy4gSSBjaGVja2VkIHdpdGggb3VyIG1hcmtldGluZyBwZW9wbGUg
YW5kLCBvbiB0aGUgd2hvbGUsIG5vIG9uZSBjb3VsZCB0aGluayBvZiBhIGxhcmdlIG51bWJlciBv
ZiAyLjVHIG9yIDVHIGN1c3RvbWVycy4NCg0KV2UgaGFkIHNldmVyYWwgZXNjYWxhdGlvbnMgZnJv
bSBtYWpvciBPRU1zIGFuZCB0aGlzIHdhcyB0aGUgc29sdXRpb24gdGhleSB3YW50ZWQuDQoNCldl
IGNvbnNpZGVyIHRoaXMgbmVjZXNzYXJ5IGZvciBpbnRlcm9wZXJhYmlsaXR5Lg0KDQpUb2RkIEZ1
amluYWthDQpTb2Z0d2FyZSBBcHBsaWNhdGlvbiBFbmdpbmVlcg0KRGF0YSBDZW50ZXIgR3JvdXAN
CkludGVsIENvcnBvcmF0aW9uDQp0b2RkLmZ1amluYWthQGludGVsLmNvbQ0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogUGF1bCBNZW56ZWwgPHBtZW56ZWxAbW9sZ2VuLm1wZy5k
ZT4gDQpTZW50OiBGcmlkYXksIERlY2VtYmVyIDE4LCAyMDIwIDM6MTkgUE0NClRvOiBCZW4gR3Jl
ZWFyIDxncmVlYXJiQGNhbmRlbGF0ZWNoLmNvbT47IEZ1amluYWthLCBUb2RkIDx0b2RkLmZ1amlu
YWthQGludGVsLmNvbT4NCkNjOiBpbnRlbC13aXJlZC1sYW5AbGlzdHMub3N1b3NsLm9yZzsgR3Jl
ZyBLSCA8Z3JlZ2toQGxpbnV4Zm91bmRhdGlvbi5vcmc+OyBOZ3V5ZW4sIEFudGhvbnkgTCA8YW50
aG9ueS5sLm5ndXllbkBpbnRlbC5jb20+OyBCcmFuZGVidXJnLCBKZXNzZSA8amVzc2UuYnJhbmRl
YnVyZ0BpbnRlbC5jb20+OyBUeWwsIFJhZG9zbGF3WCA8cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+
OyBMb2t0aW9ub3YsIEFsZWtzYW5kciA8YWxla3NhbmRyLmxva3Rpb25vdkBpbnRlbC5jb20+OyBN
Y2xlYW4sIEFydGh1ciBGIDxhcnRodXIuZi5tY2xlYW5AaW50ZWwuY29tPjsgU2thamV3c2tpLCBQ
aW90clggPHBpb3RyeC5za2FqZXdza2lAaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtJbnRlbC13
aXJlZC1sYW5dIDUuMTAuMCBrZXJuZWwgcmVncmVzc2lvbiBmb3IgMi41R2JwcyBsaW5rIG5lZ290
aWF0aW9uPw0KDQpbK2NjIFJhZG9zbGF3LCBBbGVrc2FuZHIsIFBpb3RyXQ0KDQpBbSAxOS4xMi4y
MCB1bSAwMDowNyBzY2hyaWViIEJlbiBHcmVlYXI6DQo+IE9uIDEyLzE4LzIwIDExOjQzIEFNLCBQ
YXVsIE1lbnplbCB3cm90ZToNCg0KPj4gQW0gMTguMTIuMjAgdW0gMjA6Mjcgc2NocmllYiBGdWpp
bmFrYSwgVG9kZDoNCj4+PiBZZXMsIGFuZCBJJ20gcGx1Z2dpbmcgdGhlIGhvbGUgaW4gdGhlIFJF
QURNRSByaWdodCBub3cuIEhlcmUncyB0aGUgDQo+Pj4gcHJvcG9zZWQgdGV4dDoNCj4+Pg0KPj4+
IEFkdmVydGlzZW1lbnRzIGZvciAyLjVHIGFuZCA1RyBvbiB0aGUgeDU1MCB3ZXJlIHR1cm5lZCBv
ZmYgYnkgDQo+Pj4gZGVmYXVsdCBkdWUgdG8gaW50ZXJvcGVyYWJpbGl0eSBpc3N1ZXMgd2l0aCBj
ZXJ0YWluIHN3aXRjaGVzLiBUbyANCj4+PiB0dXJuIHRoZW0gYmFjayBvbiwgdXNlDQo+Pj4NCj4+
PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRpc2UgTg0KPj4+DQo+Pj4gd2hlcmUgTiBpcyBhIGNv
bWJpbmF0aW9uIG9mIHRoZSBmb2xsb3dpbmcuDQo+Pj4NCj4+PiAxMDBiYXNlVEZ1bGzCoMKgwqAg
MHgwMDgNCj4+PiAxMDAwYmFzZVRGdWxswqDCoCAweDAyMA0KPj4+IDI1MDBiYXNlVEZ1bGzCoMKg
IDB4ODAwMDAwMDAwMDAwDQo+Pj4gNTAwMGJhc2VURnVsbMKgwqAgMHgxMDAwMDAwMDAwMDAwDQo+
Pj4gMTAwMDBiYXNlVEZ1bGzCoCAweDEwMDANCj4+Pg0KPj4+IEZvciBleGFtcGxlLCB0byB0dXJu
IG9uIGFsbCBtb2RlczoNCj4+PiBldGh0b29sIC1zIDxldGhYPiBhZHZlcnRpc2UgMHgxODAwMDAw
MDAxMDI4DQo+Pj4NCj4+PiBGb3IgbW9yZSBkZXRhaWxzIHBsZWFzZSBzZWUgdGhlIGV0aHRvb2wg
bWFuIHBhZ2UuDQo+Pg0KPj4gV2hhdCBjb21taXQgaW50cm9kdWNlZCB0aGlzIHJlZ3Jlc3Npb24u
IFBsZWFzZSBiZWFyIGluIG1pbmQsIHRoYXQgDQo+PiB0aGlzIGNvbnRyYWRpY3RzIExpbnV44oCZ
IG5vLXJlZ3Jlc3Npb24gcG9saWN5LCBhbmQgdGhlIGNvbW1pdCBzaG91bGQgDQo+PiB0aGVyZWZv
cmUgYmUgcmV2ZXJ0ZWQgYXMgc29vbiBhcyBwb3NzaWJsZS4NCj4gDQo+IExvb2tzIGxpa2UgaXQg
aXMgYXQgdGhlIGVuZCBvZiB0aGlzIHBhdGNoLCB0aG91Z2ggdGhlIGRlc2NyaXB0aW9uIA0KPiBk
b2Vzbid0IG1lbnRpb24gY2hhbmdpbmcgZGVmYXVsdHM6DQo+IA0KPiBDb21taXQgYTI5NmQ2NjVl
YWUxZThlYzY0NDU2ODNiZmI5OTljODg0MDU4NDI2YQ0KPiBBdXRob3I6IFJhZG9zbGF3IFR5bCA8
cmFkb3NsYXd4LnR5bEBpbnRlbC5jb20+DQo+IERhdGU6wqDCoCBGcmkgSnVuIDI2IDE1OjI4OjE0
IDIwMjAgKzAyMDANCj4gDQo+ICDCoMKgwqAgaXhnYmU6IEFkZCBldGh0b29sIHN1cHBvcnQgdG8g
ZW5hYmxlIDIuNSBhbmQgNS4wIEdicHMgc3VwcG9ydA0KPiANCj4gIMKgwqDCoCBBZGRlZCBmdWxs
IHN1cHBvcnQgZm9yIG5ldyB2ZXJzaW9uIEV0aHRvb2wgQVBJLiBOZXcgQVBJIGFsbG93IHVzZQ0K
PiAgwqDCoMKgIDI1MDBHYmFzZS1UIGFuZCA1MDAwYmFzZS1UIHN1cHBvcnRlZCBhbmQgYWR2ZXJ0
aXNlZCBsaW5rIHNwZWVkIG1vZGVzLg0KPiANCj4gIMKgwqDCoCBTaWduZWQtb2ZmLWJ5OiBSYWRv
c2xhdyBUeWwgPHJhZG9zbGF3eC50eWxAaW50ZWwuY29tPg0KPiAgwqDCoMKgIFRlc3RlZC1ieTog
QW5kcmV3IEJvd2VycyA8YW5kcmV3eC5ib3dlcnNAaW50ZWwuY29tPg0KPiAgwqDCoMKgIFNpZ25l
ZC1vZmYtYnk6IFRvbnkgTmd1eWVuIDxhbnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NCj4gDQo+
IFRoYW5rcywNCj4gQmVuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
