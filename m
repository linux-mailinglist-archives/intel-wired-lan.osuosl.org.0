Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9A03C7B22
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jul 2021 03:42:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EA694061C;
	Wed, 14 Jul 2021 01:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MIC6GYrGR2sC; Wed, 14 Jul 2021 01:42:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E72834062F;
	Wed, 14 Jul 2021 01:42:05 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A99A61BF836
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jul 2021 01:42:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8BD2A60658
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jul 2021 01:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lRwaYYgn9Zmz for <intel-wired-lan@osuosl.org>;
 Wed, 14 Jul 2021 01:41:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CDA606062D
 for <intel-wired-lan@osuosl.org>; Wed, 14 Jul 2021 01:41:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="295914933"
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
 d="scan'208,217";a="295914933"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 18:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,237,1620716400"; 
 d="scan'208,217";a="493365623"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2021 18:41:57 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 18:41:57 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 13 Jul 2021 18:41:57 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 13 Jul 2021 18:41:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZ6h6lZNh+wnPK7qgHVuBZWw077CC3vKzLaR2ntZppbHtEFZVWVfoxEZYGf4vCX6DVsqVSrkyv43ceIAlzWgRZ4y2mKU75wDvPhAnumzSuPQ9DnSFCo/Hk07Mb/QN7qi0Jga8Q1DIk4AqrFE1I6BV8BrvpXBfc5Sk/8xRI+tCGAriKvUjn1rfD5Dho49+KyeOiOIBryeRapI5d38cN+sA5Ip4y5U3GizNNleP/SCSc6aED0eX0nsgBxBq4Is7418tY+N/E5aovtDgIAjOe5lOd0o7vevr4hUgOpd/8NnZ0UchT2w4f3Ru9EtQSfq1mFmkbFcpMMk5razR/3VmkgPjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ot8u8YGn5uu06dnfd3c+7zNkDiZYZNHoiUt5eRrJRlE=;
 b=XSMVHBfysh6m6pkPo2HT4Xu9aGQsdHkQ/cgHizCUGBsxEYMwboYl8DHeA1CoOMnFcyaP/yy7s741mwUWj7IqTHilYxSOTMalgpcsQHbCNvUku6tNv7OtfJdayhFwti/bYCZDwhtbjp+XX2SMoH6Jfg29QK9Jysn4QDuL0uM9A2Y981XHqy1HpHyUcHgLMJyESuQMuRq1CJh/MRh1M97azhtNeeYgUwKgRIV8Ps9e90vVA7OhI0idkiAOurvz/iFYy8gI6dVZGKjGQXxBpR5D6IJF+pKyjrpsnik+s+X0cw8DRxtJJyOFQOZYUsfMVM7WMnLijp9HWmLGHazK+BPOVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ot8u8YGn5uu06dnfd3c+7zNkDiZYZNHoiUt5eRrJRlE=;
 b=yPytOVfqvbbwQHNmGh6d/vcmTs3wzBOUuW3pmvtILnghTqjd5Egz9gG/mL/BLxEaVXFmkGsDrBpN4e7C9jFHtYPw0QnSL661uUeuFblE+LH3KkSKHaOEvpZTywM4ZA3jPQoKde+XW4vKvKKnyztN8aDoEAqOJlFuoJT52XKhqqc=
Received: from BYAPR11MB2871.namprd11.prod.outlook.com (2603:10b6:a02:c5::26)
 by BYAPR11MB3799.namprd11.prod.outlook.com (2603:10b6:a03:fb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20; Wed, 14 Jul
 2021 01:41:55 +0000
Received: from BYAPR11MB2871.namprd11.prod.outlook.com
 ([fe80::798c:287e:b562:be7c]) by BYAPR11MB2871.namprd11.prod.outlook.com
 ([fe80::798c:287e:b562:be7c%3]) with mapi id 15.20.4308.027; Wed, 14 Jul 2021
 01:41:55 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>, "intel-wired-lan@osuosl.org"
 <intel-wired-lan@osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Gomes, Vinicius" <vinicius.gomes@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
Thread-Index: AQHXdRyBB4nzBXjO5kqch/j3UwUvR6tBImGAgACWH7A=
Date: Wed, 14 Jul 2021 01:41:54 +0000
Message-ID: <BYAPR11MB2871D56F52DE97BF7DC427BBB8139@BYAPR11MB2871.namprd11.prod.outlook.com>
References: <20210709234516.24753-1-muhammad.husaini.zulkifli@intel.com>
 <76e834f4-195d-3623-0468-3a84daf19ba7@intel.com>
In-Reply-To: <76e834f4-195d-3623-0468-3a84daf19ba7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0fa9beeb-9a26-4c0d-a2e9-08d946688fa3
x-ms-traffictypediagnostic: BYAPR11MB3799:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB37997950FED7AD0644D3F901B8139@BYAPR11MB3799.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PZxqB4yTtm4y3HECBilUZqsUAwjzDn/vQyshu0IcOeQMcrrh2gx3ooVOILbIG9E4CGiNMwkQAqGQSx0WrJAPXySDucyOAragPyAhxOytIBhVD0vdSd8o76FpqlMVrpC0tVcBOq9SZ1ps8uoVp2cdUcbPrEODS+Q1Kssfn6R+wNQw12QAJv241IU1hFHZGxB5tAbZAFtUJJDJSSyQgssBiTtb61JzzU9EYXAOBQ8m8pITngV+6Jm0fgozZHgE0v7Mm6uUkcTdpZjvZrveFb8gmp+KTY+4oecJkMZxbAMEAI+FCAG7ZZAgulGLCYt/hbcD+gKUxUCFfjQLuO1Ui3MCiFfWNReI+o2LcUQYf7Kz5tUi3cQG2STAvYyQbqtjtcJkkE9HZTA1mhHW5gD9iZOwJF78EqkhrzI8Gw+QnVyTq4fzooPxGjE3Av3MmjLrTMKm6cBfGUIdkAeXVP3Re1gaTCT6I3x2Y5xxoOJuclCB6AmfgN0evSwcbhNVxOPgyfeeHot1QVWwZDJSbE7NwPvV+0zaT2J3E9AhsZeqAvxj+MgCJ+blaPKjzvWgeKHT+7an/rCk5fPWms8kW0XUWc8NX6PQSIV8m0eK7nrAG0H0ibq7yjF2edNB5sRDtZvvXmLhzYWowIjruiMTpSECOzv1RAYZjfBm1wPCiBq/wi3gXOX5jjsHczBOjKsLP/RWYMZM7VQdDepLWhnxqF9lAq97Ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2871.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(346002)(39860400002)(366004)(376002)(64756008)(52536014)(6636002)(2906002)(66556008)(66476007)(83380400001)(66946007)(186003)(8676002)(86362001)(76116006)(5660300002)(66446008)(71200400001)(316002)(8936002)(53546011)(122000001)(6506007)(38100700002)(110136005)(33656002)(55016002)(9686003)(478600001)(7696005)(26005)(38070700004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cktDdFkwT004S3N6QThmdUUxSHFXelU1djkwVTE0ZkNtSkJDWW1YL3NzZ3pm?=
 =?utf-8?B?eFY1MHAzUkZuQUhkVUlJRXhWdnh5RXNmYVVzbzI5UFV2ckgyaWdmM2laK3Ra?=
 =?utf-8?B?citYYXRZejd1T05GTngwQ1pZbE5DMzNQaDJNLzBFb0s5N1FDUmtiKzdwNDNU?=
 =?utf-8?B?YTR3SG9IM21sWkx6K2poMnFCT3F3YzlYTE9uaktZa2hzbGlXQWxxbFBncUFC?=
 =?utf-8?B?SjZqMHByb1pCeVZwUnJKelBqVS9hZlRMTHR5dzVhQkJrcjB3b2NZQmZNUVlD?=
 =?utf-8?B?dGh4WkdhNmxTRW5CTXNDV0lTTHZ5S25ZSEZSZXlRUElsT0pmcmV1VFMxQVJ3?=
 =?utf-8?B?OEZ2U1FuM1UybW0wZ25Kdi9lMWRBVjJDNFFwbm02WnNESnRzYmdvV1RabFBJ?=
 =?utf-8?B?TkpvR3pYSnJBQUtvRGN3bCtFTlhOeE10Vm54NHlRMTFDdFVHeHlWS0JDY3hj?=
 =?utf-8?B?aTRjV0hKU3Fzb3RtdU1peUpxOGtuTkNuSmRRa2VpMkg4YW85NDhlVnIwOUs4?=
 =?utf-8?B?L2M4cVBIemxpSmRwYTRPTDhIbnUxOXlMOTNmUHVkTFFFQ00zUCtsTW9WVjgw?=
 =?utf-8?B?eStiV2lVNzZ2N2E5L1NOcTNpalEzMGJwQnprZDRxc3NuN08vMlhZSEFoSEVs?=
 =?utf-8?B?QXlKR3FGSzJPeVlENVpSRW9JakdySlAwaVFKRHBmb1o0c01aWHVHb1BlMEhq?=
 =?utf-8?B?M0ZMN1lZVUdRTmFiNG9jMmpObGhlWk1qR2p6OXZBU2h6M3hGcE1rOWlVNmFR?=
 =?utf-8?B?NmJsRWtiREd4SlRUQ2xINnU3VDlzSnNvLzZOTUtuWTBhaVVkeGRZdENnTFU5?=
 =?utf-8?B?bWhnRDRJR3lLYlZkblVNQjdtQjFUWGdveEJ3bUphRnFodlpRc1kvd2RPdWNw?=
 =?utf-8?B?REtmQzV5VFVIbUlnNlBaeTRzQjJaTTQ3eVh6eHY3YkRwNVNHcTVCdVFWRm5J?=
 =?utf-8?B?R0NkTXBWVHRaUlM0NTdlTW9FWW5mMW80NnZaKy96S3VaM1lzT2xSVE1xSFA0?=
 =?utf-8?B?SWJyOGR6d0w0aGdvS1VEdUl2UTVCckQyWkZJYzFNekhZY3Q3WHRUenpnd2xN?=
 =?utf-8?B?MW1BdFltS1pEWlh2ZWVTYjFMNnZRS2tTRWM4TWl2UGxOMHhmdEZTSmhyUGMv?=
 =?utf-8?B?ejJ3cXZzb3Y1clhZSW1IKzltNHpDeUpqTWEzUjlJQ09pdEdET3krU1d5T2xo?=
 =?utf-8?B?U2lSZVduelBIcS9McE4zTURoNWJxMkwwM0VZMTBGcHpvUjR2WEZBckxFVE0y?=
 =?utf-8?B?TmJQWWo0SUVFQTBHZ2JERXBjVmNrTVhjMlp6YktqZmpoZW5TMUg0VTNzSWha?=
 =?utf-8?B?R0MrR04xNW9FaVZFN0JrYXM2KzhtRDd5dGpvcDhDK3RjNHlaU2lQay8xUW43?=
 =?utf-8?B?V3pnOU1VM0tpeENVbDA5TkxXenV4V0dlaC9MVjdhN0ZpUC9WS3dDSC8wUElj?=
 =?utf-8?B?eitiWFhDNm9pbUMzVjVtQlZXd0pxMnhVZ2s3Z3JvdDg3WTU2WHMydVVoMWRq?=
 =?utf-8?B?Y0hrcHFxMk9DWm41TFVYdmVlWENBK2ZRSCtUTW53WGJiWUFRcGY4U1pqR0Rn?=
 =?utf-8?B?UHNXaWhGUVRnczZwUkJUWkxxVHptRG5EcGR4OWkyV3QyLzh6MUpVUXRRVFlv?=
 =?utf-8?B?cldwWmZNUUl3K2IxbjNRcFhaRXhYcnVRSmVpQkQxaE9VUkJueVJLcGlmaHpm?=
 =?utf-8?B?L0MxaEdYRFRjQ2FrQURzQVYvMzNLSjBnYzdJbFh6SkxYdFl4N0kvSlZRcTFK?=
 =?utf-8?Q?8loXF/mSFNiZatCEn3K8eA8j7SZp5Ke6k1UuG1V?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2871.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fa9beeb-9a26-4c0d-a2e9-08d946688fa3
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jul 2021 01:41:54.8465 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E2CwJXKSyewzBD2ebWIxcXtIBBqqNwwECLvv9b1aK2Vh4Uin8kZPullSp/5JVMg5S9fsEZW+GWi257RJBLNMHXyEq9NrJGF04ZDZAjYeItOi6vwy9ehlC93klPZz53Wt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3799
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1] igc: Increase timeout value for
 Speed 100/1000/2500
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
Content-Type: multipart/mixed; boundary="===============0387342088492210842=="
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

--===============0387342088492210842==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BYAPR11MB2871D56F52DE97BF7DC427BBB8139BYAPR11MB2871namp_"

--_000_BYAPR11MB2871D56F52DE97BF7DC427BBB8139BYAPR11MB2871namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIHNhc2hhIGFuZCBWaW5pY2l1cyEhDQoNCkZyb206IE5lZnRpbiwgU2FzaGEgPHNhc2hh
Lm5lZnRpbkBpbnRlbC5jb20+DQpTZW50OiBXZWRuZXNkYXksIEp1bHkgMTQsIDIwMjEgMTI6NDQg
QU0NClRvOiBadWxraWZsaSwgTXVoYW1tYWQgSHVzYWluaSA8bXVoYW1tYWQuaHVzYWluaS56dWxr
aWZsaUBpbnRlbC5jb20+OyBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZzsgTmd1eWVuLCBBbnRo
b255IEwgPGFudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tPjsgR29tZXMsIFZpbmljaXVzIDx2aW5p
Y2l1cy5nb21lc0BpbnRlbC5jb20+DQpTdWJqZWN0OiBSZTogW0ludGVsLXdpcmVkLWxhbl0gW1BB
VENIIHYxXSBpZ2M6IEluY3JlYXNlIHRpbWVvdXQgdmFsdWUgZm9yIFNwZWVkIDEwMC8xMDAwLzI1
MDANCg0KT24gNy8xMC8yMDIxIDAyOjQ1LCBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpIHdyb3Rl
Og0KDQpBcyB0aGUgY3ljbGUgdGltZSBpcyBzZXQgdG8gbWF4aW11bSBvZiAxcywgdGhlIFRYIEhh
bmcgdGltZW91dCBuZWVkIHRvDQoNCmJlIGluY3JlYXNlIHRvIGF2b2lkIHBvc3NpYmxlIFRYIEhh
bmdzIGNhdXNlZCBieSB1c2luZyBsb25nIFFidiBjeWNsZXMuDQoNCg0KDQpTaWduZWQtb2ZmLWJ5
OiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpIDxtdWhhbW1hZC5odXNhaW5pLnp1bGtpZmxpQGlu
dGVsLmNvbT48bWFpbHRvOm11aGFtbWFkLmh1c2FpbmkuenVsa2lmbGlAaW50ZWwuY29tPg0KDQot
LS0NCg0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFpbi5jIHwgNCArKyst
DQoNCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCg0K
DQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMg
Yi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYw0KDQppbmRleCBjOGFi
ZDdmYjcwZTUuLjk5ZmI1NjQxMjk3ZCAxMDA2NDQNCg0KLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmMNCg0KKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWdjL2lnY19tYWluLmMNCg0KQEAgLTUzMjIsNyArNTMyMiw5IEBAIHN0YXRpYyB2b2lkIGln
Y193YXRjaGRvZ190YXNrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykNCg0KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGFkYXB0ZXItPnR4X3RpbWVvdXRfZmFjdG9yID0gMTQ7DQoNCiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBicmVhazsNCg0KICAgICAgICAgICAgICAgICAg
ICAgICAgY2FzZSBTUEVFRF8xMDA6DQoNCi0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAv
KiBtYXliZSBhZGQgc29tZSB0aW1lb3V0IGZhY3RvciA/ICovDQoNCisgICAgICAgICAgICAgICAg
ICAgICAgIGNhc2UgU1BFRURfMTAwMDoNCg0KKyAgICAgICAgICAgICAgICAgICAgICAgY2FzZSBT
UEVFRF8yNTAwOg0KDQorICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYWRhcHRlci0+dHhf
dGltZW91dF9mYWN0b3IgPSA3Ow0KDQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgYnJl
YWs7DQoNCiAgICAgICAgICAgICAgICAgICAgICAgIH0NCg0KDQoNCkFja2VkLWJ5OiBTYXNoYSBO
ZWZ0aW4gPHNhc2hhLm5lZnRpbkBpbnRlbC5jb20+PG1haWx0bzpzYXNoYS5uZWZ0aW5AaW50ZWwu
Y29tPg0K

--_000_BYAPR11MB2871D56F52DE97BF7DC427BBB8139BYAPR11MB2871namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCWZvbnQtc2l6ZTox
MS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7DQoJY29sb3I6d2hpdGU7
fQ0KYTpsaW5rLCBzcGFuLk1zb0h5cGVybGluaw0KCXttc28tc3R5bGUtcHJpb3JpdHk6OTk7DQoJ
Y29sb3I6Ymx1ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnByZQ0KCXttc28tc3R5
bGUtcHJpb3JpdHk6OTk7DQoJbXNvLXN0eWxlLWxpbms6IkhUTUwgUHJlZm9ybWF0dGVkIENoYXIi
Ow0KCW1hcmdpbjowaW47DQoJZm9udC1zaXplOjEwLjBwdDsNCglmb250LWZhbWlseToiQ291cmll
ciBOZXciOw0KCWNvbG9yOndoaXRlO30NCnNwYW4uSFRNTFByZWZvcm1hdHRlZENoYXINCgl7bXNv
LXN0eWxlLW5hbWU6IkhUTUwgUHJlZm9ybWF0dGVkIENoYXIiOw0KCW1zby1zdHlsZS1wcmlvcml0
eTo5OTsNCgltc28tc3R5bGUtbGluazoiSFRNTCBQcmVmb3JtYXR0ZWQiOw0KCWZvbnQtZmFtaWx5
OkNvbnNvbGFzOw0KCWNvbG9yOndoaXRlO30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10
eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtc2l6ZToxMC4wcHQ7fQ0KQHBhZ2UgV29yZFNlY3Rpb24x
DQoJe3NpemU6OC41aW4gMTEuMGluOw0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9
DQpkaXYuV29yZFNlY3Rpb24xDQoJe3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEt
LVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlk
bWF4PSIxMDI2IiAvPg0KPC94bWw+PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWxheW91dCB2OmV4dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0
YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxi
b2R5IGJnY29sb3I9ImJsYWNrIiBsYW5nPSJFTi1VUyIgbGluaz0iYmx1ZSIgdmxpbms9InB1cnBs
ZSIgc3R5bGU9IndvcmQtd3JhcDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9u
MSI+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6d2luZG93dGV4dCI+
VGhhbmtzIHNhc2hhIGFuZCBWaW5pY2l1cyEhPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImNvbG9yOndpbmRvd3RleHQiPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxkaXYgc3R5bGU9ImJvcmRlcjpub25lO2JvcmRlci1sZWZ0OnNv
bGlkIGJsdWUgMS41cHQ7cGFkZGluZzowaW4gMGluIDBpbiA0LjBwdCI+DQo8ZGl2Pg0KPGRpdiBz
dHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6
My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+PHNwYW4gc3R5bGU9
ImNvbG9yOndpbmRvd3RleHQiPkZyb206PC9zcGFuPjwvYj48c3BhbiBzdHlsZT0iY29sb3I6d2lu
ZG93dGV4dCI+IE5lZnRpbiwgU2FzaGEgJmx0O3Nhc2hhLm5lZnRpbkBpbnRlbC5jb20mZ3Q7DQo8
YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBKdWx5IDE0LCAyMDIxIDEyOjQ0IEFNPGJyPg0K
PGI+VG86PC9iPiBadWxraWZsaSwgTXVoYW1tYWQgSHVzYWluaSAmbHQ7bXVoYW1tYWQuaHVzYWlu
aS56dWxraWZsaUBpbnRlbC5jb20mZ3Q7OyBpbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZzsgTmd1
eWVuLCBBbnRob255IEwgJmx0O2FudGhvbnkubC5uZ3V5ZW5AaW50ZWwuY29tJmd0OzsgR29tZXMs
IFZpbmljaXVzICZsdDt2aW5pY2l1cy5nb21lc0BpbnRlbC5jb20mZ3Q7PGJyPg0KPGI+U3ViamVj
dDo8L2I+IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0ggdjFdIGlnYzogSW5jcmVhc2UgdGlt
ZW91dCB2YWx1ZSBmb3IgU3BlZWQgMTAwLzEwMDAvMjUwMDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4N
CjwvZGl2Pg0KPC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwv
cD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiA3LzEwLzIwMjEgMDI6NDUsIE11aGFt
bWFkIEh1c2FpbmkgWnVsa2lmbGkgd3JvdGU6PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxibG9j
a3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHBy
ZT5BcyB0aGUgY3ljbGUgdGltZSBpcyBzZXQgdG8gbWF4aW11bSBvZiAxcywgdGhlIFRYIEhhbmcg
dGltZW91dCBuZWVkIHRvPG86cD48L286cD48L3ByZT4NCjxwcmU+YmUgaW5jcmVhc2UgdG8gYXZv
aWQgcG9zc2libGUgVFggSGFuZ3MgY2F1c2VkIGJ5IHVzaW5nIGxvbmcgUWJ2IGN5Y2xlcy48bzpw
PjwvbzpwPjwvcHJlPg0KPHByZT48bzpwPiZuYnNwOzwvbzpwPjwvcHJlPg0KPHByZT5TaWduZWQt
b2ZmLWJ5OiBNdWhhbW1hZCBIdXNhaW5pIFp1bGtpZmxpIDxhIGhyZWY9Im1haWx0bzptdWhhbW1h
ZC5odXNhaW5pLnp1bGtpZmxpQGludGVsLmNvbSI+Jmx0O211aGFtbWFkLmh1c2FpbmkuenVsa2lm
bGlAaW50ZWwuY29tJmd0OzwvYT48bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4tLS08bzpwPjwvbzpw
PjwvcHJlPg0KPHByZT4gZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdjL2lnY19tYWluLmMg
fCA0ICsrKy08bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4gMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKTxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPjxvOnA+Jm5ic3A7
PC9vOnA+PC9wcmU+DQo8cHJlPmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2MvaWdjX21haW4uYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYy9pZ2NfbWFp
bi5jPG86cD48L286cD48L3ByZT4NCjxwcmU+aW5kZXggYzhhYmQ3ZmI3MGU1Li45OWZiNTY0MTI5
N2QgMTAwNjQ0PG86cD48L286cD48L3ByZT4NCjxwcmU+LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvaWdjL2lnY19tYWluLmM8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4rKysgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pZ2MvaWdjX21haW4uYzxvOnA+PC9vOnA+PC9wcmU+DQo8
cHJlPkBAIC01MzIyLDcgKzUzMjIsOSBAQCBzdGF0aWMgdm9pZCBpZ2Nfd2F0Y2hkb2dfdGFzayhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspPG86cD48L286cD48L3ByZT4NCjxwcmU+ICZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBhZGFw
dGVyLSZndDt0eF90aW1lb3V0X2ZhY3RvciA9IDE0OzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiAm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsgYnJlYWs7PG86cD48L286cD48L3ByZT4NCjxwcmU+ICZuYnNwOyZuYnNwOyZuYnNwOyZuYnNw
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyBjYXNl
IFNQRUVEXzEwMDo8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4tJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IC8qIG1heWJlIGFkZCBzb21l
IHRpbWVvdXQgZmFjdG9yID8gKi88bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4rJm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7IGNhc2UgU1BFRURfMTAwMDo8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4rJm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7IGNhc2UgU1BFRURfMjUwMDo8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4rJm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7IGFk
YXB0ZXItJmd0O3R4X3RpbWVvdXRfZmFjdG9yID0gNzs8bzpwPjwvbzpwPjwvcHJlPg0KPHByZT4g
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7IGJyZWFrOzxvOnA+PC9vOnA+PC9wcmU+DQo8cHJlPiAmbmJzcDsmbmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsm
bmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsgfTxv
OnA+PC9vOnA+PC9wcmU+DQo8cHJlPiA8bzpwPjwvbzpwPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0K
PHA+QWNrZWQtYnk6IFNhc2hhIE5lZnRpbiA8YSBocmVmPSJtYWlsdG86c2FzaGEubmVmdGluQGlu
dGVsLmNvbSI+Jmx0O3Nhc2hhLm5lZnRpbkBpbnRlbC5jb20mZ3Q7PC9hPjxvOnA+PC9vOnA+PC9w
Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_BYAPR11MB2871D56F52DE97BF7DC427BBB8139BYAPR11MB2871namp_--

--===============0387342088492210842==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

--===============0387342088492210842==--
