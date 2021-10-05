Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A2F42316B
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Oct 2021 22:15:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93CC2606EB;
	Tue,  5 Oct 2021 20:15:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TQj47OPLOyD4; Tue,  5 Oct 2021 20:15:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 722EB606BF;
	Tue,  5 Oct 2021 20:15:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 99B721BF315
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 20:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87F75606BF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 20:14:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U_I4dP70aKKC for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Oct 2021 20:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3881D60646
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Oct 2021 20:14:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="205966305"
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="205966305"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 13:14:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,349,1624345200"; d="scan'208";a="521984640"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 05 Oct 2021 13:14:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 13:14:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 5 Oct 2021 13:14:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 5 Oct 2021 13:14:52 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Tue, 5 Oct 2021 13:14:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oauo9Uoqti3Em6dHyWkcHpjC9v3z8fdod/hMgPo6qaCdhwpELIAdiNrJKBNQAnp0jZW0fi85QSF3iNEeiGdUk/Cqvtp5X9RD45QkpzmBxWUjjuluwA7ieBwAh3UFhJGf5U7yE2dbsuMD9T1G+jIQooSSEn65LrRofmA1ohGH7NdP0j3TbQUJ2iCd/T+IqbiHv7CJ3rTEj0KSKvPE1rqRCrzah/fNJIxBVTrA+DV3B3CW1ILKP/kI+tVZB68mr9gMlSZCaP82BMd/bW7OI+3A4Y6hYfCkB/cgrXVFq5DvujJHz4ri2R46W+7Jt0ml1hCHuGl2y53SLOS4DQz4sUjRZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vp4yfiMEwhAsGtzM1nPRGw3KFLTg/NS6lEGFQqEG7TM=;
 b=CUGi0k7B6qav+jCRBa+vGsiLz6OoZrEslHEDt/RLO2DPqU2QZJ/QYjfjgMwphWPy0qiZ10AfTrnyUvjbELJPVTqvimXxJ4qe12q21y0hNoRjVFW+aTrGcZBT3ojV+RnqhuKQCyM1sNfKw9t7G9nR9pbuPE0QXlstVZAX/Au/sevDL4+S+c781/br3UehF9ZAD4DkPQBx1iAYDC5tgDu47R07n7eelMxqmdhvDT5X120fQmdZecm+h02LhlghlOvu9ewkCMs0WU0jpO1W/kirHJqimqXPK6qYbJhBx1UYc7aWd5h5UlvubZqH9X4d89DezVXqPu3w0q9pcOfqECbh9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vp4yfiMEwhAsGtzM1nPRGw3KFLTg/NS6lEGFQqEG7TM=;
 b=Ag/5eYQXWkPtlePHdHTkWxW+qqh21m0WeoM2GjQP+5jM8d4ol+ARJKA3X++hZ/+WN76V/1zMWwc97fnK0Ia4ND/LH2G8CwTiWgV0kT34OdXNSk0795Sfpw3QgLzyZR3B+lHmYtPHREOYk28ChpoJT7NYBzNakBuF7Nyh2vta/gQ=
Received: from MW3PR11MB4764.namprd11.prod.outlook.com (2603:10b6:303:5a::16)
 by CO1PR11MB4835.namprd11.prod.outlook.com (2603:10b6:303:9e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.15; Tue, 5 Oct
 2021 20:14:51 +0000
Received: from MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::38c9:1b72:5f97:6304]) by MW3PR11MB4764.namprd11.prod.outlook.com
 ([fe80::38c9:1b72:5f97:6304%3]) with mapi id 15.20.4566.022; Tue, 5 Oct 2021
 20:14:51 +0000
From: "Venkataramanan, Anirudh" <anirudh.venkataramanan@intel.com>
To: "Maloszewski, Michal" <michal.maloszewski@intel.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] iavf-linux: Fix reporting when
 setting descriptor count
Thread-Index: AQHXsEq5b2CPOTBQC0KSG+w/lLKDUKuxPSUAgBOosoA=
Date: Tue, 5 Oct 2021 20:14:51 +0000
Message-ID: <b1c06b44e13d88e0a42056d5e06b90f82facce01.camel@intel.com>
References: <20210923071452.21975-1-michal.maloszewski@intel.com>
 <5437f421-e935-6484-4f8b-ed6751e9bae1@molgen.mpg.de>
In-Reply-To: <5437f421-e935-6484-4f8b-ed6751e9bae1@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6229d690-3b6f-432e-93da-08d9883cc9d3
x-ms-traffictypediagnostic: CO1PR11MB4835:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB483544C0CAF47E379C4221A890AF9@CO1PR11MB4835.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rpSL49U/bdmu3qYN7xSxB187HYfHZhIWIz7056Jlq4yFZUR6YV7YRCY0VXReJ0sNds4U5Q622U3ExsfRUaXbquJRwVMVaTbXwql1EcpecrOxnbhmB3lp0GyiuaPCLtNmXnNDONdUW09lIZi9/XVc6Moi1NypUm3BohLuq9TdWXnkHr+WAuzPoEajQBBMvYpmztGl3PcVWXuDWzUwqlWc7Uqy0Qb1+4lAzTB2WZbZ/tr39/yWiMPYOIOnCQmitnSFKG5zf8arEbU8GdLIxlGud5S3DwWhTgVTs7c9y6cSr++gu4nQgMgRrezD2vVNbHC4T/xJB1mqDGN5mHp09Q8t1N6hvdv8MCkZM+tuW3EuqmiRAUX1qKtBEGv2SvpG/0+w6C5DQt3LZgi0EPTPs7yHgzi14kP/Pj270EvP5xcRhlQIk7rj9RQyALBjuAJdCrAHUeEqKhDbdUG6Hqtpdx80/j0vZgBijz1r/sSWnPA22hYam9T3a1CFyk/HNXCnSt6dyeOaNzh15EB/qLFH9TYTY8+cTSg2eN4kqlfSOKC5/1icGT5S8CiXhvUnn+xmCbsYRvUUYS6lPfZfNaGoxuzvjUlK9hEDW1IFHw3Uli3aSQC3Jlg5T7q7lGHQQOjVlv4Cu4GBsXTP+0CqT0bEJLehIiXm3S+vSC1sizGQQahn50ihnI4YFQ739n+HpEwsQgO116Yz3aebfV7mzPJU/ehSpWzcEqXH9GvScwvawHfazr2Tr8Vs6wrt3nhkQSqLr/XEygYmBnw4A6weqV42Ket2MqykI0P0EFXQek56FxxtCqE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4764.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(71200400001)(76116006)(66476007)(508600001)(6506007)(66556008)(122000001)(8936002)(6486002)(966005)(38100700002)(66946007)(66446008)(2906002)(36756003)(86362001)(8676002)(4326008)(186003)(2616005)(83380400001)(5660300002)(38070700005)(316002)(26005)(110136005)(64756008)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SnhLcmNFVW14WTllaWI1ZzJ2RGlZbTlTR3czVjNteEdxeXNBR20wa1pVdGxj?=
 =?utf-8?B?VXJVdVp5UDRWUUY5M0RUbW4vM21wWkx4Q0JCdWF4UzRkeDhvd2w2K3RrYnNL?=
 =?utf-8?B?a1pRcGk4eGI2QlNORWhtWDRsSC9rVXUvcVFSYWhJc3V5cHc4Z1A3dWorTDd6?=
 =?utf-8?B?emRScE40Rm40WGZYc2hzMGZvdnlsNXpPRUdqTS9nZnJvdXJnNXVoR29xdEFz?=
 =?utf-8?B?MkFmNDVSQ2NaR252MmR4amp2WGswYU9wYnRQMmQ0NnNpdlJ4UXJMcm05STQv?=
 =?utf-8?B?aFcvY0IwVGpTdDVVT2JuejI3U2d4WUsvT2RjYkRUd3hLMytkT0hzbzFaVGR5?=
 =?utf-8?B?eDBuak13czRTdUwwMVVWR1VCMmpJVFBLa0YwQlNQdzd0SGFFMGJ2elI4dWJm?=
 =?utf-8?B?OUdKWmE1aEh3UGEvd0tPdUZkL2pMRTcyQk9PSmVONDhJMk9kdjc1NTMxc2py?=
 =?utf-8?B?bHBkcy9OQmYyaFNTclZzcG56dUt1UTljTFZwRUo4SEcrUjlnVkVhNmIzdkZO?=
 =?utf-8?B?UnVGT28vWGNjeWlRbnI0R0VnOVZLOHRNQk40Z2lBeUxtK3U1R2c5OGNJd3ZI?=
 =?utf-8?B?KzBaMXJFdjZMSTkySE1tdUhUc2xrc0NNWXYwNW45OCsycHVhbDNsMGpSaWhK?=
 =?utf-8?B?VHRLYXI4M0dIcWVuTXh0V2JwTk9PaXVqNEZ1QXZpaEczNk9WQVBmcjA2MXJa?=
 =?utf-8?B?amNSRXR4b3QxTzhkM2cyNitrSVplTzAxR01DcHRBbUhxYWJoSm43RUVic2pD?=
 =?utf-8?B?d2dQNXg1aDQzLy9PSWRpV09YSU95MTZpVnRPeUg4M1lnRzRFNSt6UXNqUnhK?=
 =?utf-8?B?UDliZTZLUDVnWjFKdE4xWUhPUHgxMnF2c3hidjZBTjhNRjh2eWpOcE5JZHZL?=
 =?utf-8?B?S084N01JUGJCRlVHVjBUdzJkcGNKYVl6NHRQeS8vbDhxUFRJaXdEa3NsaWFI?=
 =?utf-8?B?eDMrRFdFUkRrR1dHTWxZTk42aVg3ZS9PZDBFbUVxclhZY2R4RS83aEpCcUYv?=
 =?utf-8?B?K1V0ZkZ2V1JsMkI0V0JkTkU3encvbGtpZHFVUFNLM3lERVU2bXMreU1ZZkEv?=
 =?utf-8?B?MGlpLzEySjdTdGxWU3ZobzRNOFVmODdxWm5MM083Rm9WNGVpVmhHWXRoekNR?=
 =?utf-8?B?TXF0VXVQTGIvRW9aWERyRVBacUl1a000ejhpSzJxRis3UUY3M0NKMENvRzdv?=
 =?utf-8?B?UlFqLzU2K0xmZkFicGhSak84RDNqRXNaNXMvUXl3dWRGYmFONzBnbkVXSTNp?=
 =?utf-8?B?SXh1cnBVS1FrT0F6YjQzUkpXWHlBRTVBSzB5Sy9pbFBuckRmcFltdE5nS1FK?=
 =?utf-8?B?YVhtN2o1WjhUbkJYYjBxTExTRWlKdUp5Q2tPTTRQck16K0tEckZCRUlSaUk0?=
 =?utf-8?B?a2RNZUFGWGprRTJjT3JGZnlJWHZHdXdtNEM5UDVCREFvR1FDQ3M1cjgwSnhj?=
 =?utf-8?B?Vm0zQVBLalRtU1RmWVJMQnpxaEpmRDNsWHJiSUhhb29LeXkvTWdyYVdCbFNY?=
 =?utf-8?B?OE8yUmpGdzdHV3ZPbWxiQzFoU2VZY3Y0SmJod1p6c251K01PNlpnVmFhNDls?=
 =?utf-8?B?ektSMHFrM2tTOE1uVitzN3huQitUa2htM3pjK2lJS2ZyK2c3ZFluejZJckgx?=
 =?utf-8?B?NUxVcExmVXg3WVI0cUo2a3UwcjRib2FINURiZ0ttZm5mVjByUVB0RGZxUERI?=
 =?utf-8?B?VHZlRmxoN1NMeS9ScjlLZHlxdERleHROOVYxMTdUdXFYY2ZueHp3dzhNRnFG?=
 =?utf-8?B?a3V6djhxbE5GbnFoaWVtVWVGL21TTTBwNVNTSHZNcnRzcGRpQzIyenhzajRO?=
 =?utf-8?B?ZVh2N1FxdzVXY0Y2ZTVVZz09?=
Content-ID: <B0C0656CB45DDD4EA61298D99754BEB4@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4764.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6229d690-3b6f-432e-93da-08d9883cc9d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2021 20:14:51.3554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 52Y4Xp/1wRVIGeic2jU0yMWvBpItVGIiwUSQTqQ358iBqvdIwQQ2T/stYXiPp+Ih/e9o8cIdzqqlGszScQqIZXuZexlaYyzDiszZGyXdRVGHIVfkgRnRrDD+IVPK7qQq
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4835
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] iavf-linux: Fix reporting when
 setting descriptor count
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

T24gVGh1LCAyMDIxLTA5LTIzIGF0IDA5OjQ0ICswMjAwLCBQYXVsIE1lbnplbCB3cm90ZToNCj4g
RGVhciBNaWNoYWwsDQo+IA0KPiANCj4gQW0gMjMuMDkuMjEgdW0gMDk6MTQgc2NocmllYiBNaWNo
YWwgTWFsb3N6ZXdza2k6DQo+ID4gaWF2Zl9zZXRfcmluZ3BhcmFtcyBkb2Vzbid0IGNvbW11bmlj
YXRlIHRvIHRoZSB1c2VyIHRoYXQNCj4gPiANCj4gPiAxLiBUaGUgdXNlciByZXF1ZXN0ZWQgZGVz
Y3JpcHRvciBjb3VudCBpcyBvdXQgb2YgcmFuZ2UuIEluc3RlYWQgaXQNCj4gPiDCoMKgwqAganVz
dCBxdWlldGx5IHNldHMgZGVzY3JpcHRvcnMgdG8gdGhlICJjbGFtcGVkIiB2YWx1ZSBhbmQgY2Fs
bHMNCj4gPiBpdA0KPiA+IMKgwqDCoCBkb25lLiBUaGlzIG1ha2VzIGl0IGxvb2sgYW4gaW52YWxp
ZCB2YWx1ZSB3YXMgc3VjY2Vzc2Z1bGx5IHNldA0KPiA+IGFzDQo+ID4gwqDCoMKgIHRoZSBkZXNj
cmlwdG9yIGNvdW50IHdoZW4gdGhpcyBpc24ndCBhY3R1YWxseSB0cnVlLg0KPiA+IA0KPiA+IDIu
IFRoZSB1c2VyIHByb3ZpZGVkIGRlc2NyaXB0b3IgY291bnQgbmVlZHMgdG8gYmUgaW5mbGF0ZWQg
Zm9yDQo+ID4gYWxpZ25tZW50DQo+ID4gwqDCoMKgIHJlYXNvbnMuDQo+ID4gDQo+ID4gVGhpcyBi
ZWhhdmlvciBpcyBjb25mdXNpbmcuIFRoZSBpY2UgZHJpdmVyIGhhcyBhbHJlYWR5IGFkZHJlc3Nl
ZA0KPiA+IHRoaXMNCj4gDQo+IFBsZWFzZSByZWZlcmVuY2UgdGhlIGNvbW1pdC4NCg0KVGhhdCdk
IGJlIGNvbW1pdCBmY2VhNmYzZGE1NDYgKCJpY2U6IEFkZCBzdGF0cyBhbmQgZXRodG9vbCBzdXBw
b3J0IikuDQoNCj4gDQo+ID4gYnkgcmVqZWN0aW5nIGludmFsaWQgdmFsdWVzIGZvciBhbmQgbWVz
c2FnaW5nIGZvciBhbGlnbm1lbnQNCj4gPiBhZGp1c3RtZW50cy4NCj4gDQo+IFZhbHVlcyBmb3Ig
d2hhdD8NCg0KVGhpcyBzaG91bGQgaGF2ZSBiZWVuIA0KImJ5IHJlamVjdGluZyBpbnZhbGlkIHZh
bHVlcyBmb3IgZGVzY3JpcHRvciBjb3VudCIuDQoNCj4gDQo+ID4gRG8gdGhlIHNhbWUgdGhpbmcg
aGVyZS4NCj4gDQo+IOKApiBieSBhZGRpbmcgdGhlIGVycm9yIGFuZCBpbmZvIG1lc3NhZ2VzLg0K
DQpOb3QgbmVjZXNzYXJ5IElNSE8sIGdpdmVuIHRoYXQgdGhlIGNvbW1pdCBtZXNzYWdlIGRvZXMg
ZXhwbGFpbiB0aGUNCmlzc3VlIGJlaW5nIGFkZHJlc3NlZC4NCg0KPiANCj4gPiBUaXRsZTogaWF2
Zi1saW51eDogRml4IHJlcG9ydGluZyB3aGVuIHNldHRpbmcgZGVzY3JpcHRvciBjb3VudA0KPiAN
Cj4gVGhpcyB0YWcgaXMgbm90IG5lZWRlZCwgaXMgaXQ/DQoNClllYWgsIHRoaXMgaXMgc29tZSBl
eHRyYSBjb21taXQgbWV0YWRhdGEgZnJvbSBvdXIgaW50ZXJuYWwgcmVwby4gVGhpcw0Kc2hvdWxk
IGhhdmUgYmVlbiByZW1vdmVkIGJlZm9yZSB0aGUgcGF0Y2ggd2FzIGhpdCBJV0wuDQoNCk1pY2hh
bCwNCg0KUGxlYXNlIHJlbW92ZSB0aGlzIGxpbmUsIGFuZCBhbHNvIGNoYW5nZSB0aGUgdGl0bGUg
ImlhdmYtbGludXg6IEZpeA0KcmVwb3J0aW5nIHdoZW4gc2V0dGluZyBkZXNjcmlwdG9yIGNvdW50
IiB0byBiZSAiaWF2ZjogRml4IHJlcG9ydGluZw0Kd2hlbiBzZXR0aW5nIGRlc2NyaXB0b3IgY291
bnQiDQoNCkFuaQ0KDQo+IA0KPiA+IEZpeGVzOiAxMjljZjg5ZTU4NTYgKCJpYXZmOiByZW5hbWUg
ZnVuY3Rpb25zIGFuZCBzdHJ1Y3RzIHRvIG5ldw0KPiA+IG5hbWUiKQ0KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFuaXJ1ZGggVmVua2F0YXJhbWFuYW4gPCAgIA0KPiA+IGFuaXJ1ZGgudmVua2F0YXJhbWFu
YW5AaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE1pY2hhbCBNYWxvc3pld3NraSA8bWlj
aGFsLm1hbG9zemV3c2tpQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoCAuLi4vbmV0L2V0aGVy
bmV0L2ludGVsL2lhdmYvaWF2Zl9ldGh0b29sLmPCoMKgwqAgfCA0Mw0KPiA+ICsrKysrKysrKysr
KysrLS0tLS0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgMzIgaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2lhdmYvaWF2Zl9ldGh0b29sLmMNCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lhdmYvaWF2Zl9ldGh0b29sLmMNCj4gPiBpbmRleCA3Y2JlNTliZWUuLmNiZmM4ZDA3YSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfZXRodG9v
bC5jDQo+ID4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWF2Zi9pYXZmX2V0aHRv
b2wuYw0KPiA+IEBAIC02MTIsMjMgKzYxMiw0NCBAQCBzdGF0aWMgaW50IGlhdmZfc2V0X3Jpbmdw
YXJhbShzdHJ1Y3QNCj4gPiBuZXRfZGV2aWNlICpuZXRkZXYsDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oGlmICgocmluZy0+cnhfbWluaV9wZW5kaW5nKSB8fCAocmluZy0+cnhfanVtYm9fcGVuZGluZykp
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJTlZBTDsNCj4g
PiDCoCANCj4gPiAtwqDCoMKgwqDCoMKgwqBuZXdfdHhfY291bnQgPSBjbGFtcF90KHUzMiwgcmlu
Zy0+dHhfcGVuZGluZywNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJQVZGX01JTl9UWEQsDQo+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUFWRl9NQVhfVFhE
KTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBuZXdfdHhfY291bnQgPSBBTElHTihuZXdfdHhfY291bnQs
DQo+ID4gSUFWRl9SRVFfREVTQ1JJUFRPUl9NVUxUSVBMRSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKg
aWYgKHJpbmctPnR4X3BlbmRpbmcgPiBJQVZGX01BWF9UWEQgfHwNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmluZy0+dHhfcGVuZGluZyA8IElBVkZfTUlOX1RYRCB8fA0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoCByaW5nLT5yeF9wZW5kaW5nID4gSUFWRl9NQVhfUlhEIHx8DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIHJpbmctPnJ4X3BlbmRpbmcgPCBJQVZGX01JTl9SWEQpIHsNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV0ZGV2X2VycihuZXRkZXYsICJE
ZXNjcmlwdG9ycyByZXF1ZXN0ZWQgKFR4OiAlZA0KPiA+IC8gUng6ICVkKSBvdXQgb2YgcmFuZ2Ug
WyVkLSVkXSAoaW5jcmVtZW50ICVkKVxuIiwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJpbmctPnR4X3BlbmRpbmcsIHJpbmctPnJ4
X3BlbmRpbmcsDQo+ID4gSUFWRl9NSU5fVFhELA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUFWRl9NQVhfUlhELA0KPiA+IElBVkZf
UkVRX0RFU0NSSVBUT1JfTVVMVElQTEUpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm4gLUVJTlZBTDsNCj4gPiArwqDCoMKgwqDCoMKgwqB9DQo+ID4gKw0KPiA+
ICvCoMKgwqDCoMKgwqDCoG5ld190eF9jb3VudCA9IEFMSUdOKHJpbmctPnR4X3BlbmRpbmcsDQo+
ID4gSUFWRl9SRVFfREVTQ1JJUFRPUl9NVUxUSVBMRSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYg
KG5ld190eF9jb3VudCAhPSByaW5nLT50eF9wZW5kaW5nKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBuZXRkZXZfaW5mbyhuZXRkZXYsICJSZXF1ZXN0ZWQgVHggZGVzY3JpcHRv
ciBjb3VudA0KPiA+IHJvdW5kZWQgdXAgdG8gJWRcbiIsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgbmV3X3R4X2NvdW50KTsNCj4gPiDC
oCANCj4gPiAtwqDCoMKgwqDCoMKgwqBuZXdfcnhfY291bnQgPSBjbGFtcF90KHUzMiwgcmluZy0+
cnhfcGVuZGluZywNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBJQVZGX01JTl9SWEQsDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgSUFWRl9NQVhfUlhEKTsN
Cj4gPiAtwqDCoMKgwqDCoMKgwqBuZXdfcnhfY291bnQgPSBBTElHTihuZXdfcnhfY291bnQsDQo+
ID4gSUFWRl9SRVFfREVTQ1JJUFRPUl9NVUxUSVBMRSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgbmV3
X3J4X2NvdW50ID0gQUxJR04ocmluZy0+cnhfcGVuZGluZywNCj4gPiBJQVZGX1JFUV9ERVNDUklQ
VE9SX01VTFRJUExFKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAobmV3X3J4X2NvdW50ICE9IHJp
bmctPnJ4X3BlbmRpbmcpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5ldGRl
dl9pbmZvKG5ldGRldiwgIlJlcXVlc3RlZCBSeCBkZXNjcmlwdG9yIGNvdW50DQo+ID4gcm91bmRl
ZCB1cCB0byAlZFxuIiwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBuZXdfcnhfY291bnQpOw0KPiA+IMKgIA0KPiA+IMKgwqDCoMKgwqDC
oMKgwqAvKiBpZiBub3RoaW5nIHRvIGRvIHJldHVybiBzdWNjZXNzICovDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoGlmICgobmV3X3R4X2NvdW50ID09IGFkYXB0ZXItPnR4X2Rlc2NfY291bnQpICYmDQo+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIChuZXdfcnhfY291bnQgPT0gYWRhcHRlci0+cnhfZGVz
Y19jb3VudCkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIChuZXdfcnhfY291bnQgPT0gYWRh
cHRlci0+cnhfZGVzY19jb3VudCkpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgbmV0ZGV2X2RiZyhuZXRkZXYsICJOb3RoaW5nIHRvIGNoYW5nZSwgZGVzY3JpcHRvcg0KPiA+
IGNvdW50IGlzIHNhbWUgYXMgcmVxdWVzdGVkXG4iKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHJldHVybiAwOw0KPiA+ICvCoMKgwqDCoMKgwqDCoH0NCj4gPiDCoCANCj4g
PiAtwqDCoMKgwqDCoMKgwqBhZGFwdGVyLT50eF9kZXNjX2NvdW50ID0gbmV3X3R4X2NvdW50Ow0K
PiA+IC3CoMKgwqDCoMKgwqDCoGFkYXB0ZXItPnJ4X2Rlc2NfY291bnQgPSBuZXdfcnhfY291bnQ7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKG5ld190eF9jb3VudCAhPSBhZGFwdGVyLT50eF9kZXNj
X2NvdW50KSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5ldGRldl9pbmZv
KG5ldGRldiwgIkNoYW5naW5nIFR4IGRlc2NyaXB0b3IgY291bnQNCj4gPiBmcm9tICVkIHRvICVk
XG4iLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGFkYXB0ZXItPnR4X2Rlc2NfY291bnQsIG5ld190eF9jb3VudCk7DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPnR4X2Rlc2NfY291bnQgPSBuZXdfdHhf
Y291bnQ7DQo+ID4gK8KgwqDCoMKgwqDCoMKgfQ0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAobmV3X3J4X2NvdW50ICE9IGFkYXB0ZXItPnJ4X2Rlc2NfY291bnQpIHsNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbmV0ZGV2X2luZm8obmV0ZGV2LCAiQ2hhbmdpbmcgUngg
ZGVzY3JpcHRvciBjb3VudA0KPiA+IGZyb20gJWQgdG8gJWRcbiIsDQo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYWRhcHRlci0+cnhfZGVz
Y19jb3VudCwgbmV3X3J4X2NvdW50KTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgYWRhcHRlci0+cnhfZGVzY19jb3VudCA9IG5ld19yeF9jb3VudDsNCj4gPiArwqDCoMKgwqDC
oMKgwqB9DQo+ID4gwqAgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChuZXRpZl9ydW5uaW5nKG5l
dGRldikpIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGFkYXB0ZXItPmZs
YWdzIHw9IElBVkZfRkxBR19SRVNFVF9ORUVERUQ7DQo+ID4gDQo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QNCj4gSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5vc3Vv
c2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
