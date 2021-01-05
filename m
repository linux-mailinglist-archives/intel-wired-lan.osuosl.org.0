Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B642EA93C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Jan 2021 11:54:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6586286F97;
	Tue,  5 Jan 2021 10:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6mRpJcDxCRD1; Tue,  5 Jan 2021 10:54:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78B9F86F9C;
	Tue,  5 Jan 2021 10:54:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 09E2C1BF23F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 10:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 04F1886D37
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 10:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zxHeluy7ADIG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Jan 2021 10:54:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1167386727
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Jan 2021 10:54:49 +0000 (UTC)
IronPort-SDR: ApPxPGmX4Qr/oaIHoP/gKeafoY3iK0OthvEBtnj0AxcSLDrD57jvm3Cl0fTYsmb65LFPpKmKmT
 JE51y1NG0odg==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="195618585"
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="195618585"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2021 02:54:48 -0800
IronPort-SDR: 30oyVbHENKFjjTu+fmrJvvZkCtZgu4yXEKHrmFW2idZk2RCN+d5iOz39rjhTnEj7X7mVhZpYjp
 llZgpEdSKgpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,476,1599548400"; d="scan'208";a="565423517"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP; 05 Jan 2021 02:54:48 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Jan 2021 02:54:47 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 Jan 2021 02:54:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 5 Jan 2021 02:54:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 5 Jan 2021 02:53:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k8JAcNEAZ9KP29wXezIzGp0a0Oug4uSYHd3jIHeajRQhacbf8pNnl42RQ8VxVjWY8ZQIADoZsNBwV9b4RXcLcTxfJARxR6gFuFLPw6ZKz1R1WIVz7UHQyol8kSKpuGHnBRN88AXVZd/UQbLPF8gE5/ot7MHmhBFbecRHvWumVcsP/FhJAaF/b+Q70+NBLukDwGDATvhlksBhhsNb2BrcgFx0jB2h8j59hMZ7Oe5w5ctlE2dMQWXOh6ML/173oq2INnjScVaC/kBvBxPOif2yCmNTm++UV4nwWirfOURkICjBDjjpVwNK6yZeocQ3nDbhN0U8ftfbBHACXr49ZSjefw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fzy6oWfOYKusanc//FtpPomUWWRKlyVWD8NA459J2Z4=;
 b=fcGzRyd/ocEmapOKsugMBVrUdOBG3vINbnauz9vNXD2ZSBRCnoWHZ3AEMvPhcPMlgkdgsCuJJ0X9r2ryWqhLYB3w8wZFvsKzIvH7AQ2KaMCe9NLx1zA0Kvll+lP3vJOTA0+CuPoWQ2QYk9C3df6YHlLbijBCQN0g/OJl9CbeDJDK2KbV6MmqkwD4oHxWwlfBei5kyi2y6Ag03GLOHTu6OuPvYLt2bMB/0gOUkyR1i6PiTHuOTUOI1n0lDXtvd7+SNbz2PJRmv4d4j8veMnnJfQb4M+JyeXnkgU9KGuedEGPmaNuGCdQ1M2xhRp34X4pKruFs2r6UWRBwv8EaL/2nXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fzy6oWfOYKusanc//FtpPomUWWRKlyVWD8NA459J2Z4=;
 b=krghzudndzZHKwK8wCQQqa07fw5jgksnE6K9wZM2XRUsh4XxwMruFWmy9StZ0mxHjfMPg7/FohP1W7ohI57X4S6wDuFZU59Fu7PY00pVVR8YxNVIl556gOh5U9TdGUjNNKwxR7ZcymT47+wnSqHBV61+6cG8TAYMBadoz3h3epE=
Received: from BL0PR11MB3524.namprd11.prod.outlook.com (2603:10b6:208:73::21)
 by BL0PR11MB3153.namprd11.prod.outlook.com (2603:10b6:208:6b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Tue, 5 Jan
 2021 10:53:03 +0000
Received: from BL0PR11MB3524.namprd11.prod.outlook.com
 ([fe80::917b:e6f9:97df:a7fc]) by BL0PR11MB3524.namprd11.prod.outlook.com
 ([fe80::917b:e6f9:97df:a7fc%6]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 10:53:03 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS
 structures
Thread-Index: AQHW3UgM36kxGgstW0u4yELwTXKWi6oY5xXw
Date: Tue, 5 Jan 2021 10:53:02 +0000
Message-ID: <BL0PR11MB35241617E21D17136107E0D187D10@BL0PR11MB3524.namprd11.prod.outlook.com>
References: <20201228103633.11621-1-mateusz.palczewski@intel.com>
 <CAKgT0Uf-Exy1qhZYhKTe=mWf6i8L-FcaUYT0zGnyVWDq-pnfqw@mail.gmail.com>
In-Reply-To: <CAKgT0Uf-Exy1qhZYhKTe=mWf6i8L-FcaUYT0zGnyVWDq-pnfqw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.112.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e46f9d48-657c-4399-77bd-08d8b168133d
x-ms-traffictypediagnostic: BL0PR11MB3153:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB315358A25B26FC252E6AF6F287D10@BL0PR11MB3153.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: chdXbu8h4U6lR9s87v5ZzAqUW64UvxYqXjofAv4pU1vnqRHcb7EPfBq6Qf13xgEQmMk2yN7p9EWSOzQW3w6EIvwSKqZESAbyOA6Q6vB8JFyPaGRjf6WDpcZGYCDeANw+t7tt31YAFFg6YVv12ocSVni2ebMPYuH+++AhmkbWDxg1zUR/PpEAehYnu0ziHpum4arbObvMbTmjdX5dOoBjCm9iQpOHM98pcpZ1h/aJeLPhe4VXAgFHaJ1phtCH1Hk2OvD2IrFF2w3AZ7Q+pygU7n67wqh+1MfILiy0z4vxz4e5gjx50P+5O8C2j4s535jLCAU71FXoPhdccXUP7mDCYCxYWFQRcOSkILjbL//7QZAHUM0Y/PmZXdVbXaDKLxVVNM6zHyVQEVvTjTC2CYEjeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3524.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(376002)(396003)(346002)(39860400002)(366004)(64756008)(5660300002)(186003)(316002)(86362001)(66476007)(6506007)(71200400001)(2906002)(66446008)(107886003)(8936002)(66556008)(66946007)(76116006)(54906003)(478600001)(8676002)(55016002)(33656002)(4326008)(52536014)(7696005)(53546011)(83380400001)(6916009)(9686003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?NVZqMGhUQVhLMEh1cHZUV1lTL1psYTdlRDNKY3RpbDVLd2FHNlhzZ0lZeml3?=
 =?utf-8?B?Z0JkVVFQa3JiemwxTXdQamlFeXFzTWx6T013NHdqYVFNVldkdkY2Vk53cEFO?=
 =?utf-8?B?UUZhR1RncWdqMU9uQTlxeXhudXd4QzQvb3FjK3RaVXB0d2ZzMzlEMXZDS2F3?=
 =?utf-8?B?NU9GeVlxL2Vsb25ETWlhTWFhdU9VWmt1VVZJcEFNRE91UzRHblZlWGtuajJZ?=
 =?utf-8?B?QmR0eVBlVWNRSklVTDhGRjVMOE1qM2VoMlEvSnQvUFZzWVBUd2ZKUW8rMk5i?=
 =?utf-8?B?K1VzUkpmelZ3RFhrTndMdE1JTkdiOGVtR0N0NllpNExIcElSVzNtVytKU1lE?=
 =?utf-8?B?ZkdsMlRDc1Nmb29lMi9DLzRrdzNibkxOTzB6MmV1UkVwYU9sdzc1WlVCem9o?=
 =?utf-8?B?dGlnS3AwdyswZElZME1HaE9wQ09ENlhDRkh5RnUxN1FuNEN6eG1NSFRJNVV6?=
 =?utf-8?B?Sm4rclNWSEdWTVJ6L1FuUTl2UC84dyt1SnJHajNMTEF3Q25uNmlJWUExeis3?=
 =?utf-8?B?YTRrN0U2QXdBbU05dDNldG0vcFpUUkl2cnVrMzJVeStLNzhUWEozVDVGTzJZ?=
 =?utf-8?B?b0RTcXlpaGE2Z002MGtWc21XQXpUZHFSYitkOS9iVTJkTThocDNoZGFFUUdE?=
 =?utf-8?B?VWpOcysvdjhrdFRVSE80NDlSSit3OVpYVncweHh1Wk1iV3ZTU1hwdjJwK0ZE?=
 =?utf-8?B?Z3pUVFF5WlNuemU3S2ZmWVFHVTBKY0hlUzlFN1ZYQy82eWZrejRoN1JuNjJY?=
 =?utf-8?B?bDNXam5JQzJ6MStBWG4yTVgybWdVUHVxNTZlNzdJL04yYURsT2pTa1RtMkhv?=
 =?utf-8?B?eGFlRTZJOUdPcnBsTzltMkZScDFFWVRxOUJ0MHRmK1pFcWpWTkdhV3hoZWJp?=
 =?utf-8?B?VlhGSnQvaXp1Q3NPcmw4OWx3OUdyazA1TU9vWG85dUp5T0RmRWl4RUFsNU8x?=
 =?utf-8?B?R2lGaW9Mck92aGdoZFdpOEhkbWRQbzRzWS8vUkdBVWNKeThVcTJyalRJdVdO?=
 =?utf-8?B?OFVmeUZPZXU2aHNUNG1STGFhTHhyeEVaaS85TGZIcGt1bjlJYkM3UklTZlRj?=
 =?utf-8?B?MG00SVBRWHd0M2JMbjlhMGZqTUlHSCtES3FjMVk5T3RuZnBZOENUWnJhUFd1?=
 =?utf-8?B?Q0J2dkNURVgzcjZ1aFFaMHRNR3BIMDRHNGpFWHUxNmhDZTdVbHVNOTRaeVRL?=
 =?utf-8?B?Ti92eU80WnRwTFhUWDZLbXBPOTVCbUJrNU0rZWpiT2pYTkVlQjBZWFhITlNK?=
 =?utf-8?B?anU1WUJFZjAvLzYzb0R4NTdlM2pIZHJRQW9tdjQwRDgveUV6N1ZZWWxMUVBF?=
 =?utf-8?Q?KbYUkfI4hThZk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3524.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e46f9d48-657c-4399-77bd-08d8b168133d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jan 2021 10:53:02.9526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IZAZEobsECBbxz9lbqYUOXvdsFRzrQaliCKg6WUWXonWdYDAyuTUQhVrSiMaeee62JFnxnONTEGQCnRVSfq/mPfCltgUtdWZlVPeDBY/QPY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3153
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS
 structures
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
Cc: "Ciosek, NorbertX" <norbertx.ciosek@intel.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8sIA0KTm8sIGl0IHdpbGwgbm90IGJyZWFrIGFueSBmdW5jdGlvbmFsaXR5IG9mIHRoZSBp
bi10cmVlIGRyaXZlcnMuIFRoaXMgcGF0Y2ggZml4ZXMgY29tbWl0IDY1ZWNlNmRlMDExNCAoInZp
cnRjaG5sOiBBZGQgbWlzc2luZyBleHBsaWNpdCBwYWRkaW5nIHRvIHN0cnVjdHVyZXMiKSB3aGlj
aCBhZGRlZCBwYWRkaW5nIGluIHRoZSB3cm9uZyBwbGFjZSBvZiBib3RoIHN0cnVjdHVyZXMgYXMg
a2V5L2x1dCBmaWVsZHMgc2hvdWxkIGJlIGF0IHRoZSBlbmQuIERyaXZlcnMgY29kZSBhc3N1bWVz
IHRoYXQgc2l6ZSBvZiBib3RoIGlzIGVxdWFsIHRvIDEgYW5kIGFsbG9jYXRlcyBtZW1vcnkgd2l0
aCAoc2l6ZW9mKHZpcnRjaG5sX3Jzc19sdXQvdmlydGNobmxfcnNzX2tleSkgLSAxICsgKGFycmF5
IHNpemUpKS4gQ2hhbmdpbmcgbHV0WzFdL2tleVsxXSB0byBmbGV4aWJsZSBhcnJheSBtZW1iZXJz
IGx1dFtdL2tleVtdIGlzIHBvc3NpYmxlIGJ1dCB0aGlzIHdpbGwgcmVxdWlyZSBtb3JlIGNoYW5n
ZXMgaW4gdGhlIGRyaXZlcnMgYXMgY29tcGlsZXIgY2Fubm90IGd1YXJhbnRlZSB0aGF0IHNpemUg
b2YgdGhlc2UgZmllbGRzIHdpbGwgYmUgMS4gVGhlc2UgbW9kaWZpY2F0aW9ucyBzaG91bGQgYmUg
ZG9uZSBpbiBvdGhlciBjb21taXQuDQoNClJlZ2FyZHMsDQpNYXRldXN6IFBhbGN6ZXdza2kNCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFsZXhhbmRlciBEdXljayA8YWxleGFu
ZGVyLmR1eWNrQGdtYWlsLmNvbT4gDQpTZW50OiBwb25pZWR6aWHFgmVrLCAyOCBncnVkbmlhIDIw
MjAgMTk6MzQNClRvOiBQYWxjemV3c2tpLCBNYXRldXN6IDxtYXRldXN6LnBhbGN6ZXdza2lAaW50
ZWwuY29tPg0KQ2M6IGludGVsLXdpcmVkLWxhbiA8aW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9z
bC5vcmc+OyBDaW9zZWssIE5vcmJlcnRYIDxub3JiZXJ0eC5jaW9zZWtAaW50ZWwuY29tPg0KU3Vi
amVjdDogUmU6IFtJbnRlbC13aXJlZC1sYW5dIFtQQVRDSCBuZXQgdjFdIHZpcnRjaG5sOiBGaXgg
bGF5b3V0IG9mIFJTUyBzdHJ1Y3R1cmVzDQoNCk9uIE1vbiwgRGVjIDI4LCAyMDIwIGF0IDI6MzYg
QU0gTWF0ZXVzeiBQYWxjemV3c2tpIDxtYXRldXN6LnBhbGN6ZXdza2lAaW50ZWwuY29tPiB3cm90
ZToNCj4NCj4gRnJvbTogTm9yYmVydCBDaW9zZWsgPG5vcmJlcnR4LmNpb3Nla0BpbnRlbC5jb20+
DQo+DQo+IE1vdmUgImtleSIgYW5kICJsdXQiIGZpZWxkcyBhdCB0aGUgZW5kIG9mIFJTUyBzdHJ1
Y3R1cmVzLg0KPiBUaGV5IGFyZSBhcnJheXMgb2Ygc2l6ZSAxIHVzZWQgdG8gZmlsbCBpbiB0aGUg
ZGF0YSBpbiBkeW5hbWljYWxseSANCj4gYWxsb2NhdGVkIG1lbW9yeSBsb2NhdGVkIGFmdGVyIGJv
dGggc3RydWN0dXJlcy4NCj4gUHJldmlvdXMgbGF5b3V0IGNvdWxkIGxlYWQgdG8gdW53YW50ZWQg
Y29tcGlsZXIgb3B0aW1pemF0aW9ucyBpbiBsb29wcyANCj4gd2hlbiBpdGVyYXRpbmcgb3ZlciB0
aGVzZSBhcnJheXMuDQo+DQo+IEZpeGVzOiA2NWVjZTZkZTAxMTQgKCJ2aXJ0Y2hubDogQWRkIG1p
c3NpbmcgZXhwbGljaXQgcGFkZGluZyB0byANCj4gc3RydWN0dXJlcyIpDQo+IFNpZ25lZC1vZmYt
Ynk6IE5vcmJlcnQgQ2lvc2VrIDxub3JiZXJ0eC5jaW9zZWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGluY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5sLmggfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9pbmNs
dWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oIA0KPiBiL2luY2x1ZGUvbGludXgvYXZmL3ZpcnRjaG5s
LmggaW5kZXggYWM0YTFkMy4uNDQ5NDVkNiAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9saW51eC9h
dmYvdmlydGNobmwuaA0KPiArKysgYi9pbmNsdWRlL2xpbnV4L2F2Zi92aXJ0Y2hubC5oDQo+IEBA
IC01MjksOCArNTI5LDggQEAgc3RydWN0IHZpcnRjaG5sX2V0aF9zdGF0cyB7ICBzdHJ1Y3QgDQo+
IHZpcnRjaG5sX3Jzc19rZXkgew0KPiAgICAgICAgIHUxNiB2c2lfaWQ7DQo+ICAgICAgICAgdTE2
IGtleV9sZW47DQo+IC0gICAgICAgdTgga2V5WzFdOyAgICAgICAgIC8qIFJTUyBoYXNoIGtleSwg
cGFja2VkIGJ5dGVzICovDQo+ICAgICAgICAgdTggcGFkWzFdOw0KPiArICAgICAgIHU4IGtleVsx
XTsgICAgICAgICAvKiBSU1MgaGFzaCBrZXksIHBhY2tlZCBieXRlcyAqLw0KPiAgfTsNCj4NCj4g
IFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNiwgdmlydGNobmxfcnNzX2tleSk7IEBAIC01Mzgs
OCArNTM4LDggQEAgDQo+IFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNiwgdmlydGNobmxfcnNz
X2tleSk7ICBzdHJ1Y3QgDQo+IHZpcnRjaG5sX3Jzc19sdXQgew0KPiAgICAgICAgIHUxNiB2c2lf
aWQ7DQo+ICAgICAgICAgdTE2IGx1dF9lbnRyaWVzOw0KPiAtICAgICAgIHU4IGx1dFsxXTsgICAg
ICAgIC8qIFJTUyBsb29rdXAgdGFibGUgKi8NCj4gICAgICAgICB1OCBwYWRbMV07DQo+ICsgICAg
ICAgdTggbHV0WzFdOyAgICAgICAgLyogUlNTIGxvb2t1cCB0YWJsZSAqLw0KPiAgfTsNCj4NCj4g
IFZJUlRDSE5MX0NIRUNLX1NUUlVDVF9MRU4oNiwgdmlydGNobmxfcnNzX2x1dCk7DQoNClRoaXMg
bWFrZXMgYWJzb2x1dGVseSBubyBzZW5zZS4gSXNuJ3QgaXQgZ29pbmcgdG8gYnJlYWsgY29tcGF0
aWJpbGl0eSB3aXRoIGV4aXN0aW5nIGRldmljZXMgdGhhdCBhbHJlYWR5IGhhdmUgdGhlIG9sZCBk
ZWZpbml0aW9ucz8gSWYgdGhlIGtleSBhbmQgbHV0IGFyZSBtZWFudCB0byBiZSBkeW5hbWljYWxs
eSBhbGxvY2F0ZWQgaXQgZG9lc24ndCBtYWtlIHNlbnNlIHRvIGhhdmUgaXQgc2l6ZSAxLiBEZWZp
bmluZyB0aGVtIHdpdGggYSBsZW5ndGggb2YgMSBpcyBpbmNvcnJlY3QgZm9yIGhvdyB0aGVzZSBh
cmUgaGFuZGxlZCBpbiB0aGUga2VybmVsLiBJdCBqdXN0IGxvb2tzIHdyb25nIGFzIG15IGZpcnN0
IGluc3RpbmN0IHdhcyB0byBhc2sgYWJvdXQgd2h5IHlvdSB3b3VsZCBkZWZpbmUgYW4gYXJyYXkg
b2Ygc2l6ZSAxPyBZb3Ugc2hvdWxkIGJlIGRlZmluaW5nIHRoZSBrZXkgYW5kIGx1dCB3aXRob3V0
IHNpemUsIHNvICJrZXlbXSIgYW5kICJsdXRbXSIuIFRoYXQgaXMgaG93IHdlIGRlZmluZSBkeW5h
bWljYWxseSBhbGxvY2F0ZWQgZmllbGRzIGF0IHRoZSBlbmQgb2Ygc3RydWN0dXJlLg0KDQpJZiB0
aGUgbHV0IGFuZCBrZXkgYXJlIHN1cHBvc2VkIHRvIGJlIGR5bmFtaWNhbGx5IGFsbG9jYXRlZCB5
b3Ugc2hvdWxkbid0IGhhdmUgdGhlIHBhZCBhdCBhbGwuIFlvdSBzaG91bGQgcmVtb3ZlIGl0IGZy
b20gdGhlIHN0cnVjdHVyZXMgaW4gcXVlc3Rpb24uDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSW50ZWwgVGVjaG5v
bG9neSBQb2xhbmQgc3AuIHogby5vLgp1bC4gU293YWNraWVnbyAxNzMgfCA4MC0yOTggR2Rhc2sg
fCBTZCBSZWpvbm93eSBHZGFzayBQbm9jIHwgVklJIFd5ZHppYSBHb3Nwb2RhcmN6eSBLcmFqb3dl
Z28gUmVqZXN0cnUgU2Rvd2VnbyAtIEtSUyAxMDE4ODIgfCBOSVAgOTU3LTA3LTUyLTMxNiB8IEth
cGl0YSB6YWthZG93eSAyMDAuMDAwIFBMTi4KVGEgd2lhZG9tbyB3cmF6IHogemFjem5pa2FtaSBq
ZXN0IHByemV6bmFjem9uYSBkbGEgb2tyZWxvbmVnbyBhZHJlc2F0YSBpIG1vZSB6YXdpZXJhIGlu
Zm9ybWFjamUgcG91Zm5lLiBXIHJhemllIHByenlwYWRrb3dlZ28gb3RyenltYW5pYSB0ZWogd2lh
ZG9tb2NpLCBwcm9zaW15IG8gcG93aWFkb21pZW5pZSBuYWRhd2N5IG9yYXogdHJ3YWUgamVqIHVz
dW5pY2llOyBqYWtpZWtvbHdpZWsgcHJ6ZWdsZGFuaWUgbHViIHJvenBvd3N6ZWNobmlhbmllIGpl
c3QgemFicm9uaW9uZS4KVGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29udGFp
biBjb25maWRlbnRpYWwgbWF0ZXJpYWwgZm9yIHRoZSBzb2xlIHVzZSBvZiB0aGUgaW50ZW5kZWQg
cmVjaXBpZW50KHMpLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50LCBwbGVh
c2UgY29udGFjdCB0aGUgc2VuZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllczsgYW55IHJldmlldyBv
ciBkaXN0cmlidXRpb24gYnkgb3RoZXJzIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuCiAKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFu
IG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9z
dW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
