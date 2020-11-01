Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA8C2A2125
	for <lists+intel-wired-lan@lfdr.de>; Sun,  1 Nov 2020 20:35:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68B21877D8;
	Sun,  1 Nov 2020 19:35:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i4lyuNOruiCD; Sun,  1 Nov 2020 19:35:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B4B0877E3;
	Sun,  1 Nov 2020 19:35:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEB3F1BF339
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Nov 2020 19:35:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AA1A3877D8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Nov 2020 19:35:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w0XmCvFegHbw for <intel-wired-lan@lists.osuosl.org>;
 Sun,  1 Nov 2020 19:35:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A733877D4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  1 Nov 2020 19:35:38 +0000 (UTC)
IronPort-SDR: 29hnKcNuYIgpYoTFfTE373g+phTToC5fCgLu9qklu5SfDMgWtcEeHQ1EHR7NVa3hAsNnZ9EjqZ
 PpPLHrR6+7RA==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="168906400"
X-IronPort-AV: E=Sophos;i="5.77,442,1596524400"; d="scan'208";a="168906400"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 11:35:36 -0800
IronPort-SDR: 9h0m5BKkf9cPx477O/kQ6NqawLxiCaSbAFnPPxe56aqaSoeTxpkuT2/pLs9BIgSf6QXxU2Q7Wt
 U2tWnil6I0Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,442,1596524400"; d="scan'208";a="526463612"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga006.fm.intel.com with ESMTP; 01 Nov 2020 11:35:36 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 1 Nov 2020 11:35:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 1 Nov 2020 11:35:35 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 1 Nov 2020 11:35:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2JDwAqsS16B461zrellqbUJgug4yieIo4VfQQj7BC/kA09VBZaeBiJ7uxCxuaJLPhDWb0hSxMiwJ+PMLUMmivcluUhiqAs40WUqPRbx2LKsE/fPRg2i+6JfJmNByhsAtok9Om4MmAoMbVZgbp1/oSMc5OUNM7Kj5mDcUmY5687RPQSTPW8ei/64/YPGeM9fUkeBm5Pv2SiudQQ1TYZx1LtGz9tdNPsym0UiS8Z9Tw8M2wrylWLLwRghzwMHQYREMhir8zmuGb2wAbKVabe4krhuhxd+agmMOkgh5geXXSNWlS383CScAxqkjTP5nC8AZ3ysANzg6xzth9ZNadFjCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7iE7vW5d8vdeDr2Lhsv/x7rWuFmImlt7Y4E49uR+qU=;
 b=VAURSAdTJXlPKjS2UVAeXCUpn/Yd2nf8PL5Q+VEjb9TmU4659LUcYbRybL2OFi+7zeIMLFUNGRb7iL1dbe+LfYcVaMAdm3sgPvyKPkWgSGcYeEbRAoOj1ljcxSCAxdfgHczC0lbN70iC6Pph4r2yXoFE96hIxvtflCdjTWoBvgk5ZZdB+5osthXa9k7u3E031C3eeLDEXapmvUu6IhXf1zq1j+rXfzx92+gvm4fF6bBQjIekKyYSh64qtRT/0WJVvPRm4e3WH4svyg6Or1R2+fo6lrpqYomMwwTNjqBpmk3UWcWiT/bC7zP4c8AeGq0jxI/UdcnSzOju3t8S5kkL9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=O7iE7vW5d8vdeDr2Lhsv/x7rWuFmImlt7Y4E49uR+qU=;
 b=CrZ/X4saqYoIATMaHVXOi3ZEyS2fjR+C6pfcBkcz/PDOuipf88niqkL9ay2nQSsP1YHILMozG7r9zU7+7mdRYHbBdrzWqfk0eSfG8C4jcE8r3+/m4CqldImxghv7yxHclHuVGjSc6v0DGfioXcAy7+M6y49P5s+6MVhoujDb2t8=
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM6PR11MB2939.namprd11.prod.outlook.com (2603:10b6:5:70::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3477.28; Sun, 1 Nov 2020 19:35:34 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::cc8b:e2a1:d3bb:74e8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::cc8b:e2a1:d3bb:74e8%5]) with mapi id 15.20.3499.030; Sun, 1 Nov 2020
 19:35:34 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: JD <jdtxs00@gmail.com>, intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] i40e/iavf bandwidth spikes to 500Gbps &
 returning IAVF_ERR_PARAM
Thread-Index: AQHWruLltDCSGLuIxEaPtgG/+W06DKmzoYuA
Date: Sun, 1 Nov 2020 19:35:33 +0000
Message-ID: <DM6PR11MB4657C3917162CED4AD9377769B130@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <CAMnf+PhD9VJH-db8nssDr9RgyJY6JV7bBL-Yvn2U87gSxfp+mg@mail.gmail.com>
In-Reply-To: <CAMnf+PhD9VJH-db8nssDr9RgyJY6JV7bBL-Yvn2U87gSxfp+mg@mail.gmail.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [5.173.185.244]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 170da7fe-9a18-4f11-5368-08d87e9d4d0b
x-ms-traffictypediagnostic: DM6PR11MB2939:
x-microsoft-antispam-prvs: <DM6PR11MB2939400B574DA3D1616A3D499B130@DM6PR11MB2939.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b/wwNWbCSt1MIueleX4tefaLPfpbCsX5CrizsXKztmKVRAFKO9blZG/psFiQWNOr/T3AFnNj08m1SSeJ0G/gqXZ9xeoihNrM059J2fEx6iBiO7AhATKlwaygywBn4ARRrA0iytHdayC52T3fUTuhXp94j/XkiuMLfcubQO4o3G6iVwJ/TZ8cJ4q9JcezbgBXE/e1q7sBKqxThRaARmHZwJpvzLetkhpyJFr/vMQKtt4G95OJPqV/4MWqwQKytchXZJUsXRYHIWGl9GK2kzSlW4oMGZ5dRyg26BOyQnP9t7G4Xubl4Q1UuKp90JA5ab6a+92u7zHxim8+f3nSb6owIg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(2906002)(186003)(52536014)(26005)(8676002)(8936002)(110136005)(76116006)(316002)(478600001)(83380400001)(5660300002)(66946007)(66446008)(66476007)(9686003)(6506007)(66556008)(71200400001)(7696005)(86362001)(66574015)(33656002)(64756008)(53546011)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: O48bWMmkh/RcvqwYU7s6ILGwAl7r/xYBxpagTHbvNDBL2MYB/8xkwocsYzRNYcvMnfP4ajwEDrlW9lZCLQJdDjSnLS1rVtjKGP/V8NcluSG8181AvRdumUPz+A15EXQRcYwLYfrKNKUOsqcIRjIk+u7KnVQGSVxfpTS3s0acRAU2y/FN9zdg2TSFHIHUmP1IpG+IGZKsA61jEh/3xMk/ejlxv/GS/btH/+Rhpfam9uPxfl9AfB7Q+ierBPlO1BO2QP2+bQ8xxvPePbdykD8tpzJ3pvpuYDgNTO9FR1ktqrTo6Hyf0tb3O1I3cr+CT8Um6pisT5hAZUk/UbjvzgDEte12PEO4V08xBCi4Wn9QXWzDwD6BX1rIxUEda7x1U5CmNwWWpKVZInwBbE29zk06lXemtuDwfdv7/uXTqHsXBRIHyI3UB+uAEL7Xkt+t8YQk+qtGuQWiHvZ4janMiPWe7MDxJK6W6auVKXOKh0DmbTlXYOBmBRGVgv2OQRSLL2OVORkhPdzwd1itCUDwe2vbYIc0d8LsBv04chW4IjtmV2ZLwC/6ePm20/zopNGSE9RIOM7LH2Ub9+CXZa0HgzoFpda109XOksD0qj91tPDLK0YmxKPDnvz9d+oR7oKkeGCDJu67xMiXrr/4fs+L4EV2GQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 170da7fe-9a18-4f11-5368-08d87e9d4d0b
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2020 19:35:33.9542 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FGLKxkcAeB5vmbhk5O1ZRzkgAFGldr/73uYz/oKlfoOemzl/AonPGqUVu+4UuygTt4qI0mdST1VJ/P19eG65EnWFHNnkJSARAJz6LddbCDM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2939
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] i40e/iavf bandwidth spikes to 500Gbps &
 returning IAVF_ERR_PARAM
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

R29vZCBkYXkgSkQhDQoNClRoZSBtZXNzYWdlIHlvdSBoYXZlIHByb3ZpZGVkOiANCmlhdmYgMDAw
MDowMDowNS4wOiBQRiByZXR1cm5lZCBlcnJvciAtNSAoSUFWRl9FUlJfUEFSQU0pIHRvIG91ciBy
ZXF1ZXN0IDE1DQppbmRpY2F0ZXMgdGhhdCB0aGVyZSB3YXMgYSBmYWlsdXJlIHdoaWxlIGNvbW11
bmljYXRpbmcgd2l0aCBwYXJlbnQgUEYgcG9ydC4NCkluIGZhY3QsIGZhaWxlZCBjb21tYW5kIHdh
cyB0cnlpbmcgdG8gZ2V0IHN0YXRpc3RpY3Mgb2YgYSBWRiBwb3J0IGZyb20gcGFyZW50IFBGLg0K
Q29tbWFuZCBoYXZlIGZhaWxlZCwgc28gdGhlIHN0YXRzIHJldHVybmVkIHNoYWxsIGJlIGVxdWFs
IHRvIDAuDQpQcm9iYWJseSBQcm9tZXRoZXVzIGNvbnNpZGVyZWQgdGhlbSB2YWxpZCBhbmQgdGhh
dCBpcyB3aHkgaXQgc2hvd3MgImltcG9zc2libGUiIHN0YXRzLg0KDQpBYm91dCB0aGUgY29tbWFu
ZCBmYWlsdXJlLi4uDQpJdCBpcyByZWxhdGVkIHRvIG9sZCBpc3N1ZSwgd2hlcmUgUEYgYW5kIFZG
IGFyZSBvdXQgb2Ygc3luYyBvbiB0aGVpciBjb21tdW5pY2F0aW9uIGNoYW5uZWwuDQoNClRoZSBp
c3N1ZSB3YXMgYWxyZWFkeSBmaXhlZCBpbiAyLjEyLjYsIHBsZWFzZSB1c2UgdGhlIGxhdGVzdCBk
cml2ZXIgdG8gZ2V0IHJpZCBvZiB0aGUgaXNzdWUgDQoNCkhvcGUgdGhpcyBoZWxwcyDwn5iKDQoN
CkJlc3QgUmVnYXJkcywNCg0KQXJrYWRpdXN6IEt1YmFsZXdza2kNClNvZnR3YXJlIEVuZ2luZWVy
DQpDR8KgRVBHIFNXIElUUMKgTGludXjCoGJhc2UgZHJpdmVyDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBJbnRlbC13aXJlZC1sYW4gPGludGVsLXdpcmVkLWxhbi1ib3VuY2Vz
QG9zdW9zbC5vcmc+IE9uIEJlaGFsZiBPZiBKRA0KU2VudDogcGnEhXRlaywgMzAgcGHFumR6aWVy
bmlrYSAyMDIwIDE4OjMzDQpUbzogaW50ZWwtd2lyZWQtbGFuIDxpbnRlbC13aXJlZC1sYW5AbGlz
dHMub3N1b3NsLm9yZz4NClN1YmplY3Q6IFtJbnRlbC13aXJlZC1sYW5dIGk0MGUvaWF2ZiBiYW5k
d2lkdGggc3Bpa2VzIHRvIDUwMEdicHMgJiByZXR1cm5pbmcgSUFWRl9FUlJfUEFSQU0NCg0KSGVs
bG8sDQoNCk92ZXIgdGhlIHBhc3QgbW9udGggSSd2ZSBvYnNlcnZlZCBzb21lIEtWTSBzZXJ2ZXJz
IGV4aGliaXRpbmcgZXh0cmVtZWx5IGhpZ2ggYmFuZHdpZHRoIGFjdGl2aXR5ICg1MDBnYml0LCB3
aGljaCBpcyBpbXBvc3NpYmxlKS4NClBsZWFzZSBzZWUgdGhlIGF0dGFjaGVkIGdyYXBocyBmcm9t
IFByb21ldGhldXMuIEl0IHN0YXJ0cyBzbWFsbCB0aGVuIHByb2dyZXNzaXZlbHkgZ2V0cyB3b3Jz
ZSBvdmVyIHRpbWUuDQoNCkR1cmluZyB0aGVzZSBzcGlrZXMsIEkgc2VlIHRoZSBmb2xsb3dpbmcg
YXBwZWFyIG9uIHRoZSBLVk0gZ3Vlc3QgYWJvdXQgb25jZSBldmVyeSBtaW51dGUuDQppYXZmIDAw
MDA6MDA6MDUuMDogUEYgcmV0dXJuZWQgZXJyb3IgLTUgKElBVkZfRVJSX1BBUkFNKSB0byBvdXIg
cmVxdWVzdCAxNQ0KDQpBbmQgb24gdGhlIEtWTSBwYXJlbnQsIEkgc2VlIHRoaXMgYWJvdXQgb25j
ZSBldmVyeSBtaW51dGU6DQppNDBlIDAwMDA6ODE6MDAuMDogVkYgMjAgZmFpbGVkIG9wY29kZSAx
NSwgcmV0dmFsOiAtNQ0KDQpUaGlzIGRvZXNuJ3Qgc2VlbSB0byBoYXBwZW4gd2l0aCBhbnkgb2J2
aW91cyBjYXVzZSwgdGhlIG9ubHkgb3RoZXIgdGhpbmcgSSBzZWUgaW4gZG1lc2cgdGhhdCBtYXkg
YmUgcmVsYXRlZCBpcyB0aGUgZm9sbG93aW5nICh3aGljaCBpcyByZXBlYXRlZCBhIGZldyB0aW1l
cyBvdmVyIHNldmVyYWwgaG91cnMsIGJ1dCBub3QgYXQgdGhlIHNhbWUgcmF0ZSkNCg0KdmZpby1w
Y2kgMDAwMDo4MTowYy4zOiBFdmVudCBsb2dnZWQgW0lPX1BBR0VfRkFVTFQgZG9tYWluPTB4MDAw
MA0KYWRkcmVzcz0weGZmZmZmZmZkZjgwNDAwMDAgZmxhZ3M9MHgwMDA4XQ0KDQoNClRoZSBLVk0g
Z3Vlc3QgaXMgcnVubmluZyB0aGUgaWF2ZiBkcml2ZXI6DQpkcml2ZXI6IGlhdmYNCnZlcnNpb246
IDMuOS4zDQoNClRoZSBLVk0gcGFyZW50IGlzIHJ1bm5pbmcgdGhlIGk0MGUgZHJpdmVyOg0KZHJp
dmVyOiBpNDBlDQp2ZXJzaW9uOiAyLjExLjIxDQoNCkknbSBydW5uaW5nIDIgb2YgdGhlIGZvbGxv
d2luZyBOSUMncyBvbiB0aGUgS1ZNIHBhcmVudCBpbiBhIGJvbmRlZCBzZXR1cCAobW9kZSA0LCBo
YXNoIHBvbGljeSAzKzQsIElFRUUgODAyLjNhZCBkeW5hbWljIGxpbmsgYWdncmVnYXRpb24pDQo6
DQpJbnRlbCBDb3Jwb3JhdGlvbiBFdGhlcm5ldCBDb250cm9sbGVyIFhYVjcxMCBmb3IgMjVHYkUg
U0ZQMjggKHJldiAwMikNCg0KQm90aCB0aGUgcGFyZW50L2d1ZXN0IGFyZSBydW5uaW5nIHRoZSBz
YW1lIGtlcm5lbCB2ZXJzaW9uIG9mIDQuMTkuMTA3DQoNCkknbSBub3Qgc3VyZSB3aGV0aGVyIHRo
aXMgaXMgYSBOSUMgaXNzdWUsIGRyaXZlciBpc3N1ZSwgb3Igc29tZXRoaW5nIGVsc2UuIEknbSBo
YXBweSB0byBwcm92aWRlIGFueSBtb3JlIGluZm9ybWF0aW9uIGFib3V0IHRoZSBzeXN0ZW0gb24g
cmVxdWVzdCBpZiBpdCBpcyByZWxldmFudCAocWVtdSB2ZXJzaW9ucywgbW9iby9jcHUvcmFtKS4g
IEkndmUgb2JzZXJ2ZWQgdGhpcyBpc3N1ZSBvbiAzIGRpZmZlcmVudCBLVk0gcGFyZW50cy9ndWVz
dHMgaW4gZGlmZmVyZW50IHJlZ2lvbnMuDQoNCklmIHRoaXMgaGFzIGFscmVhZHkgYmVlbiBmaXhl
ZCBvciBpcyBhIGtub3duIGlzc3VlLCB0aGVuIEkgYXBvbG9naXplLCBidXQgSSBjb3VsZCBub3Qg
ZmluZCBhbnl0aGluZyBieSBzZWFyY2hpbmcgdGhlIG1haWxpbmcgbGlzdCB3LyBteSBjb2RlcyBm
cm9tIGRtZXNnLg0KDQpJZiBhbnlvbmUgY2FuIHByb3ZpZGUgYW55IGluZm9ybWF0aW9uIGFib3V0
IHRoaXMgb3IgYW55IHBvaW50ZXJzIG9uIHRoaXMgb3IgaG93IHRvIG5hcnJvdyB0aGUgaXNzdWUg
ZG93biwgSSdkIGdyZWF0bHkgYXBwcmVjaWF0ZSBpdC4NCg0KVGhhbmsgeW91Lg0KLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tCkludGVsIFRlY2hub2xvZ3kgUG9sYW5kIHNwLiB6IG8uby4KdWwuIFNvd2Fja2llZ28gMTcz
IHwgODAtMjk4IEdkYXNrIHwgU2QgUmVqb25vd3kgR2Rhc2sgUG5vYyB8IFZJSSBXeWR6aWEgR29z
cG9kYXJjenkgS3Jham93ZWdvIFJlamVzdHJ1IFNkb3dlZ28gLSBLUlMgMTAxODgyIHwgTklQIDk1
Ny0wNy01Mi0zMTYgfCBLYXBpdGEgemFrYWRvd3kgMjAwLjAwMCBQTE4uClRhIHdpYWRvbW8gd3Jh
eiB6IHphY3puaWthbWkgamVzdCBwcnplem5hY3pvbmEgZGxhIG9rcmVsb25lZ28gYWRyZXNhdGEg
aSBtb2UgemF3aWVyYSBpbmZvcm1hY2plIHBvdWZuZS4gVyByYXppZSBwcnp5cGFka293ZWdvIG90
cnp5bWFuaWEgdGVqIHdpYWRvbW9jaSwgcHJvc2lteSBvIHBvd2lhZG9taWVuaWUgbmFkYXdjeSBv
cmF6IHRyd2FlIGplaiB1c3VuaWNpZTsgamFraWVrb2x3aWVrIHByemVnbGRhbmllIGx1YiByb3pw
b3dzemVjaG5pYW5pZSBqZXN0IHphYnJvbmlvbmUuClRoaXMgZS1tYWlsIGFuZCBhbnkgYXR0YWNo
bWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIG1hdGVyaWFsIGZvciB0aGUgc29sZSB1c2Ug
b2YgdGhlIGludGVuZGVkIHJlY2lwaWVudChzKS4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVk
IHJlY2lwaWVudCwgcGxlYXNlIGNvbnRhY3QgdGhlIHNlbmRlciBhbmQgZGVsZXRlIGFsbCBjb3Bp
ZXM7IGFueSByZXZpZXcgb3IgZGlzdHJpYnV0aW9uIGJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9o
aWJpdGVkLgogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcK
aHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFu
Cg==
