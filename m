Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4AC32DFD56
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Dec 2020 16:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7F23D86E43;
	Mon, 21 Dec 2020 15:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gzSqZgWCYMt4; Mon, 21 Dec 2020 15:17:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16F7086E01;
	Mon, 21 Dec 2020 15:17:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8742E1BF391
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 806FF8765B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 02WHPfEcbiej for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Dec 2020 15:17:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2DC9B8764D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Dec 2020 15:17:13 +0000 (UTC)
IronPort-SDR: wpm3MmEQXB0QL89TyNfvnj1/j/pe4suE7iuzPxhdu9kKQBvM/IV7zwDLJvo6GUshHq1rIiJjL3
 FEciNnLqywjg==
X-IronPort-AV: E=McAfee;i="6000,8403,9841"; a="163460861"
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="163460861"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2020 07:17:12 -0800
IronPort-SDR: uAFdZf5ZrYCbx20TLr5Ss0/1AFtfY7EFfzKLCVS3guNdi3s5sBEKOLpORIXHnfRA9QvdDTteNB
 aHNx+pkQ1GWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,436,1599548400"; d="scan'208";a="560300969"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 21 Dec 2020 07:17:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:17:11 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 21 Dec 2020 07:17:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 21 Dec 2020 07:17:11 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 21 Dec 2020 07:17:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cJyep7O6gbJqRA1F7fR1FV6Wv/9v/zrknb/OCFLtLF+uR8SZDtw8bOXq2YmA4KGFn2gVR9NSGur3PAcvGNCW3/gLoLb8YY9ws7u8vI28CCfkLp/h1u/PitrismP3U6AJfPj6MeExSysTrIgaXvUFEkD8X0Ios5RIS61FX8EU7udKRLgkE9I2tPcmQ+Ul+QSy/f+SKfdXNa/cJlgkxp0awYxSB+pKGb+3m36yx8QA4Dq8rV61osH2T2kIZOZb6TNiFFUqiiXcvwA+YNg9JRAC3K+e/wqOljoi8ZMim3qF7kYroJWdrINtzJT6upoCLSFklEoDLxe50v/uTTshQ3qLkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2KctM4dv+iz/An2UEvm9ZI13nu0ckdMDcnyzOpA9W1s=;
 b=NLpb5Pn5h1uGENRI+9XhL1FABHGw6vmPfAKIl86iOrANfzK+G8hIjGmPyPR8ZnipkZfoD0U0SqjY3ZSRPKA7Q+ZYuXey33tyxI4rJ0BnRm7KAdjjDVJZXbWG0MGdilMN1Lwf2RdUWaj1mr2zisohM6Q5IRwWJLvbHYc1s8xBxnkFwfh/bx8MMeS8xAmzOGlbr6osn2yNERTGpEuctuKLa6EDHTFiydtYMw4dBXcKKXv5QKLc6346kxt0zrs1BL0Qk+FLRmusD+yMWlgnusDftI8b5CjbKiIkPhi/QesfrIxxlhHisgtmd9q2l/9FVV320FeOnZfeQP3pgkpNAY95Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2KctM4dv+iz/An2UEvm9ZI13nu0ckdMDcnyzOpA9W1s=;
 b=HtyqaJrtbUnnEkXMs4B27Jyk+9TwRkPKLy05xNRWRWus8dX1oG9gjphobzjxPDNmKeo+HUa5Q63QpKORFE80FbaDgStDZPD1zzU7A7iwQ4lLMWTe4NaZlzasVpbhs+T9P4kDo/GjxPkccjJe0ZMzxA+VESwvVkny6wOTIolU2jk=
Received: from BYAPR11MB3606.namprd11.prod.outlook.com (2603:10b6:a03:b5::25)
 by BYAPR11MB3400.namprd11.prod.outlook.com (2603:10b6:a03:1a::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3676.25; Mon, 21 Dec
 2020 15:16:47 +0000
Received: from BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911]) by BYAPR11MB3606.namprd11.prod.outlook.com
 ([fe80::d8c2:b311:7658:7911%6]) with mapi id 15.20.3676.031; Mon, 21 Dec 2020
 15:16:47 +0000
From: "Fujinaka, Todd" <todd.fujinaka@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, Ben Greear <greearb@candelatech.com>
Thread-Topic: [Intel-wired-lan] ixgbe: 5.10.0 kernel regression for 2.5Gbps
 link negotiation?
Thread-Index: AQHW16tjjflAe+gUjkiFQYonP9/svqoBqRyQ
Date: Mon, 21 Dec 2020 15:16:47 +0000
Message-ID: <BYAPR11MB3606001E3832B5A04F9787E6EFC00@BYAPR11MB3606.namprd11.prod.outlook.com>
References: <7bb485c3-9556-d9f1-e70f-a4b3a05909c9@candelatech.com>
 <BYAPR11MB3606E48BA821185142354D67EFC30@BYAPR11MB3606.namprd11.prod.outlook.com>
 <3bcba0ca-8f3b-8428-861a-86aaff1688b6@molgen.mpg.de>
 <c54c8f2c-a295-c691-466e-07ae8f41b0ac@candelatech.com>
 <3c8510fb-af8c-b5f9-2af1-64584a667ac8@molgen.mpg.de>
 <BYAPR11MB36060F3889C66AE55092DA01EFC20@BYAPR11MB3606.namprd11.prod.outlook.com>
 <8635a2db-0d38-c088-321b-27bc4bb21ec4@candelatech.com>
 <MN2PR11MB3614FD0C52705864C05EFDF8EFC20@MN2PR11MB3614.namprd11.prod.outlook.com>
 <07a977b0-c3f9-4cbe-482e-350d8b42cda7@molgen.mpg.de>
In-Reply-To: <07a977b0-c3f9-4cbe-482e-350d8b42cda7@molgen.mpg.de>
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
x-ms-office365-filtering-correlation-id: b99feba6-1be1-4db3-80d4-08d8a5c36f2b
x-ms-traffictypediagnostic: BYAPR11MB3400:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB34005C84F79FDDD1169EE055EFC00@BYAPR11MB3400.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cgfRZh9dYGvZ72oZdS0Bfb/1EizasPEeejRPR416b820zhTdrz3pBN05xhsuN10u2blmyLFGfJTfA3mFItWJGhQLa+4infaT8xcZ+J21oY4hNF21hireKFTV72iYDJUG+hK5Ziz5aQmvlUBK6uWGF1dy6Y8ybb/MpfgQRYOQiezhdfe/qbfsxBG/YnP4NzVo7HjTLMnoqfbV5it/P3dLLNeJwHwv9KmUDJq1jRp0ELB+NZ3RdFKvPKOTD8NuClZ+GuWfBoX9rFvLk5pzZvX5bXn2f7X2vVY8ySk+2LKCBbZSxk5sCXjm2q3i3GnPcYAoP5yHiGx+JjyyH7U18BJtGcxHc65gKb0CFLhX/hWIDPiconUs/gOk7dEDyr0xDPTyDfOfXmL4QEwLJ33ZrMntaA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3606.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39860400002)(346002)(136003)(376002)(366004)(52536014)(83380400001)(186003)(2906002)(66446008)(66946007)(7696005)(54906003)(8936002)(26005)(8676002)(9686003)(33656002)(86362001)(4326008)(316002)(53546011)(71200400001)(66556008)(66476007)(55016002)(478600001)(64756008)(6506007)(110136005)(107886003)(5660300002)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?VUF5V0tTTlBGVU83TkRQZm9YWjZlcW5yNjM5eUFtSGRlUDBYWEowRGczRzda?=
 =?utf-8?B?OTZ1dGRvWW5jMm1zNE1nTmlTZm4xNWR3ckNVZ1lDRzBIWnUwSEEwQ1F1b3U1?=
 =?utf-8?B?bmN1RXZkZm1RNzBIM21USGs0QnBGcVFhSmpuQW8zdHhRR1RKQzNtL2Z4RjJ0?=
 =?utf-8?B?WmhEa29ScFBOVXdLdVl3Ris4OFEzMnhNWHg4U000NnJjZHFPYnBYQkZQMWdP?=
 =?utf-8?B?ZE1QeEpVSzdjeWRTMlVwMTFiTGRWakVIQ0tBLzhuVmJ4cTYvU2Fna2xSRE9O?=
 =?utf-8?B?RXJOM3M2KzhKRmd0SjV0Uy9vSGRmelNacGtLWGJ0QkIxcFFLUDdNaDNYeVpC?=
 =?utf-8?B?cjVaTEVIMktnN2lQQ1BoQVY4bDgzRjM4UHZidnpQT1RrcS81ekY3VklKYitL?=
 =?utf-8?B?K3ZMOFNDck9ta2R0aGhtalpOTXFZMStUbitQNUFZSDErcGVwcEtOalVCNm9T?=
 =?utf-8?B?QllaamdEY1A1d2EwREJnYXBNNGFQSTRldEswV21QaGdHRnhPbnVnRFJNTjlW?=
 =?utf-8?B?ZTlPTlRNOEQrVlhFL1ZTZVM5N0dOTHU1Vk44MjZJa1MyNXBYQldQMFBuTWp0?=
 =?utf-8?B?TkxFQUhFNXRQckdVMEljMEtPc2d4ODhuRDJJc20xS05YYWRHR1VETFBDT2kz?=
 =?utf-8?B?NzN6eVBUTWtTbWM1NzE5NUM5aHdFakxCaHBiWXZ5MCsvcnU4Njc1L0IrMkdL?=
 =?utf-8?B?ZEhPd0tnZHYvcGp1dEs4dXVGOVFHc0RaNHkxK3dBR1ZNRjlWZU5jRVVDYlk0?=
 =?utf-8?B?Z1c4NWYwMHVnUFcwRXMvK2lCZ3pRa09mb0ZrWG5hN3VaNnNSMThmUm9OM1pk?=
 =?utf-8?B?NEhHcGtOMEVrMDZTckNvMkU1L0FKdVduaUEzRkxDbDNheWJzNk5KV3N1dmF4?=
 =?utf-8?B?NXg5ZEg1Y0ZTMTZuM2svRDc4ZytrV1Q1SUNHYTNxTXBSYmdRcmdwTXBqcGlx?=
 =?utf-8?B?Mnc4eTI0N1QzcmcxNkJ4TDFsR0JUSy80SE1aYnVRNTg4akFzOEl4d0RqdmdM?=
 =?utf-8?B?QUxiYTVTbHFKa1NEblFPMjdxRVYwUGsyUGo5N1F6Wk83VmhYMVpSUUd1K0hV?=
 =?utf-8?B?YWYwQUVOSjJ4TEMybFZNYkt6Z0k0cURBVUlSQVl5Sk42QlBDQWVTVUJ1V3FR?=
 =?utf-8?B?UGVVQnNQY3NvcVJKUEQwVytEbFlENjQwQkQyeFRreGN4SU9qMUVmMGJkOEcw?=
 =?utf-8?B?UG1tRlUwMUNieVc1aS95U004VUc5ekM0QWh0eXNaZlFBQVNIZzMxTlhDQnkw?=
 =?utf-8?B?YUhSTmdJNVF3ditVQ0FKL1grNitHOTJtWlZsTkwwMnlMc1o1RG1zelZ3c1Fr?=
 =?utf-8?Q?nZg/evGWmzCe8=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3606.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b99feba6-1be1-4db3-80d4-08d8a5c36f2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Dec 2020 15:16:47.4103 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QwVmULFk2VNmUm1tIbzINy8M/3q+DStxioWupvTI13j7tDA0W59RYEBNi1zM8g2e6lyR3W1DhzYMVJH2LSiPdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3400
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSB3b3VsZCBsaXN0ZW4gdG8geW91IG9uIExpbnVzJyBsaXN0LCBidXQgdGhpcyBpcyBJbnRlbC13
aXJlZC1sYW4uDQoNClRvZGQgRnVqaW5ha2ENClNvZnR3YXJlIEFwcGxpY2F0aW9uIEVuZ2luZWVy
DQpEYXRhIENlbnRlciBHcm91cA0KSW50ZWwgQ29ycG9yYXRpb24NCnRvZGQuZnVqaW5ha2FAaW50
ZWwuY29tDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBQYXVsIE1lbnplbCA8
cG1lbnplbEBtb2xnZW4ubXBnLmRlPiANClNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMjEsIDIwMjAg
NzoxMCBBTQ0KVG86IEZ1amluYWthLCBUb2RkIDx0b2RkLmZ1amluYWthQGludGVsLmNvbT47IEJl
biBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbkBs
aXN0cy5vc3Vvc2wub3JnOyBHcmVnIEtIIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz47IExp
bnVzIFRvcnZhbGRzIDx0b3J2YWxkc0BsaW51eC1mb3VuZGF0aW9uLm9yZz47IEJyYW5kZWJ1cmcs
IEplc3NlIDxqZXNzZS5icmFuZGVidXJnQGludGVsLmNvbT47IE5ndXllbiwgQW50aG9ueSBMIDxh
bnRob255Lmwubmd1eWVuQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFu
XSBpeGdiZTogNS4xMC4wIGtlcm5lbCByZWdyZXNzaW9uIGZvciAyLjVHYnBzIGxpbmsgbmVnb3Rp
YXRpb24/DQoNCkRlYXIgVG9kZCwNCg0KDQpJIGtpbmRseSBhc2sgeW91IGFnYWluLCBwbGVhc2Ug
ZG8gbm90IHRvcC1wb3N0LiBJdOKAmXMgaW1wb2xpdGUsIGFuZCBtb3JlIGltcG9ydGFudGx5LCBp
dCB3YXN0ZXMgdGhlIHJlYWRlcnMgdGltZSBhcyBpdCBsb29zZXMgY29udGV4dCwgYW5kIHJlc3Vs
dHMgaW4gbWlzdW5kZXJzdGFuZGluZ3MuDQoNCkFtIDE5LjEyLjIwIHVtIDE3OjE5IHNjaHJpZWIg
RnVqaW5ha2EsIFRvZGQ6DQo+IFRoaXMgaXMgYSBiYWQgY2FzZSB3aXRoIG5vIGlkZWFsIHNvbHV0
aW9uLiBEZXRlY3RpbmcgdGhlIGNhc2UgaXMgbm90IA0KPiBwb3NzaWJsZSBhcyBhdXRvbmVnb3Rp
YXRpb24gaGFwcGVucyBpbiB0aGUgaGFyZHdhcmUgd2l0aG91dCBzb2Z0d2FyZSANCj4gaW52b2x2
ZW1lbnQuDQo+IA0KPiBPbmUgc29sdXRpb24gd2FzIHRvIHVwZGF0ZSB0aGUgc3dpdGNoIGZpcm13
YXJlIGZvciB0aGUgYSBzd2l0Y2ggdGhhdCANCj4gaXMgaXMgdGhlIGxpbmsgcGFydG5lciB0aGF0
IGdpdmUgdXMgdGhlIG1vc3QgdHJvdWJsZS4gVGhlIGlzc3VlIA0KPiBhcHBlYXJzIHRvIGJlIGlu
IGNvbXBldGluZyBvciBoYWxmLWltcGxlbWVudGVkIHN0YW5kYXJkcy4gMi41RyBhbmQgNUcgDQo+
IHdlcmUgaW5pdGlhbGx5IG5vbi1JRUVFIHN0YW5kYXJkcyB0aGF0IGRpZmZlcmVudCBtYW51ZmFj
dHVyZXJzIGhhY2tlZCANCj4gb250byAxRyBpbiBkaWZmZXJlbnQgd2F5cy4gV2UgaW1wbGVtZW50
ZWQgaXQgdG8gb25lIG9mIHRoZSBzdGFuZGFyZHMgDQo+IHdoaWNoIHNob3VsZCBiZSBpbnRlcm9w
ZXJhYmxlLCBidXQgdGhlIGNvcm5lciBjYXNlIG9mIHRoZSANCj4gd2lkZWx5LWRlcGxveWVkIHN3
aXRjaCB3aWxsIHRha2UgdGhlIGxpbmsgZnJvbSAxMEcgdG8gMUcgd2l0aCBubyANCj4gYXV0b21h
dGVkIHdheSB0byBmaXggaXQuDQoNClRoYW5rIHlvdSBmb3IgdGhlIGJhY2tncm91bmQsIHdoaWNo
IHNob3VsZCBoYXZlIGJlZW4gaW4gdGhlIGNvbW1pdCBtZXNzYWdlLg0KDQpDYW4geW91IHBsZWFz
ZSB0ZWxsIHVzIHRoZSBwcm9ibGVtYXRpYyBzd2l0Y2ggbmFtZSBhbmQgdGhlIHByb2JsZW1hdGlj
IGZpcm13YXJlIHZlcnNpb24gYW5kIHRoZSBvbmUsIHdoZXJlIHRoaXMgaXNzdWVzIGlzIGZpeGVk
Pw0KDQo+IFVwZGF0aW5nIHN3aXRjaGVzIG1lYW5zIGEgbG90IG9mIGRvd250aW1lIGZvciBhIGxv
dCBvZiBkYXRhY2VudGVycyBhbmQgDQo+IHRoZSBPRU1zIHdlIGRlYWwgd2l0aCB3b3VsZCBub3Qg
YWNjZXB0IHRoYXQgYW5zd2VyLg0KDQpXZWxsLCB0aGVuIHBsZWFzZSBkaXNjdXNzIHRoZSBwcm9i
bGVtIGFuZCBwb3NzaWJsZSBzb2x1dGlvbnMgb24gdGhlIG1haWxpbmcgbGlzdC4gQnJlYWtpbmcg
b3RoZXIgcGVvcGxlcyBzZXR1cHMgaXMgdW5hY2NlcHRhYmxlLiBBIExpbnV4IGtlcm5lbCBydW50
aW1lIHBhcmFtZXRlciB3b3VsZCBiZSBvbmUgc29sdXRpb24sIHlvdXIgY3VzdG9tZXJzIGNvdWxk
IGhhdmUgdXNlZC4NCg0KPiBPdXIgc29sdXRpb24gd2FzIHRvIGRpc2FibGUgMi41RyBhbmQgNUcg
YnkgZGVmYXVsdC4gVGhpcyBmaXhlcyAxMEcgDQo+IGxpbmtpbmcgYXQgMUcgb24gdGhhdCBzd2l0
Y2gsIGJ1dCAyLjVHIGFuZCA1RyB3aWxsIGxpbmsgYXQgMUcgYnkgDQo+IGRlZmF1bHQuIEFuZCwg
YXMgSSBzYWlkLCBJJ3ZlIGhhZCB2ZXJ5IGxpdHRsZSBjb250YWN0IHdpdGggcGVvcGxlIA0KPiB1
c2luZyAyLjVHIGFuZCA1RyBhbmQgSSdtIHRoZSBndXkgb24gYWxsIHRoZSBtYWlsaW5nIGxpc3Rz
Lg0KDQpVbmZvcnR1bmF0ZWx5LCBhIGxvdCBvZiB1c2VycyBhcmUgbm90IG9uIHRoZSBtYWlsaW5n
IGxpc3QuDQoNCj4gSSBhcG9sb2dpemUgZm9yIG1ha2luZyB5b3VyIGxpZmUgaGFyZGVyLCBidXQg
aXQgc2VlbXMgbGlrZSBpdCdzIGp1c3QgDQo+IHlvdSBzbyBmYXIuIFBhdWwgc2VlbXMgdG8gYmUg
YXJndWluZyB3aXRoIG1lIGp1c3QgZm9yIHRoZSBmdW4gb2YgaXQuDQoNClBsZWFzZSBrZWVwIHRo
ZSBkaXNjdXNzaW9uIHJlc3BlY3RmdWwsIGFuZCBkbyBub3QgaW5zdWx0IG90aGVycy4NCg0KVW5m
b3J0dW5hdGVseSwgYXQgd29yayB3ZSBoYXZlIG5vdyBiZWVuIGJpdHRlbiBzZXZlcmFsIHRpbWVz
IGJ5IHJlZ3Jlc3Npb25zIHVwZGF0aW5nIHRvIHRoZSBjdXJyZW50IG1haW5saW5lIExpbnV4IGtl
cm5lbCwgY2F1c2luZyBmcmljdGlvbnMgaW4gdGhlIHRlYW0gYWJvdXQgd2hhdCBMaW51eCBrZXJu
ZWwgdG8gdXNlLg0KDQpJIGFtIG1pc3NpbmcgYSBzdGF0ZW1lbnQgYnkgeW91LCBhY2tub3dsZWRn
aW5nIHRoYXQgdGhlIGNvbW1pdCBhbmQgdGhlIHdob2xlIGNvbW11bmljYXRpb24gd2FzIGEgYmln
IGZhaWwsIGFuZCBob3cgeW91IHdpbGwgZml4IHRoZSByZWdyZXNzaW9uLiANCkFkZGl0aW9uYWxs
eSwgYW4gYW5hbHlzaXMgd291bGQgYmUgbmljZSwgd2hlcmUgdGhlIHByb2Nlc3MgZmFpbGVkIOKA
kyB3aHkgd2FzIHRoZSBjb21taXQgbWVzc2FnZSBpbmNvbXBsZXRlIGFuZCB3aHkgZGlkIHRoZSB0
ZXN0IChUZXN0ZWQtYnkNCnByZXNlbnQpIG5vdCBzcG90IHRoZSBpc3N1ZSDigJMgYW5kIGhvdyB0
byBpbXByb3ZlIGl0IHRvIGF2b2lkIHN1Y2ggYSBzaXR1YXRpb24gaW4gdGhlIGZ1dHVyZS4NCg0K
DQpLaW5kIHJlZ2FyZHMsDQoNClBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
