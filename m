Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE132D299A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 12:13:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B4C5286457;
	Tue,  8 Dec 2020 11:13:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TptZrKcq-jAP; Tue,  8 Dec 2020 11:13:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFC6D869BB;
	Tue,  8 Dec 2020 11:13:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 657541BF834
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5DAA88759B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:13:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pohp88ozbvqQ for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 11:13:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F38AD874EE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 11:13:45 +0000 (UTC)
IronPort-SDR: cqBQ8u1XipZQ4KqwsZUMkh7uruz2vMlZ8WS2qq5XE0b2Smq3sKZ/2l98LdII/Adkq3HpMdcr6a
 Gkq9gG6tJwfg==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="171300061"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="171300061"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:13:44 -0800
IronPort-SDR: oGsO8Rng6jJRTK4hokOra+vegp3PezQURqMP85Ort+CWNVrJmLuYS7ExYWgqQcN7S9kxaihg5m
 XQn9AgW8vZdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="540226789"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 08 Dec 2020 03:13:44 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 03:13:44 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 03:13:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 03:13:43 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 03:13:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N4t1al9F7rofcn3DmrtV+OrOH1KdBx1GkMzAE3zTK+svVSpjgf88xYbzkT221jWcPyvKIhMfNX9f3OQ3MEsOXvDQfUNep9xhSnHKP9Ac+O+DG3raUls5j3m8stMSyOe/PANSRKtxg1IipcrKbjkKsxtxMMf5t3D1LDCU4z4HNQ4RBd11lutb+TqJAb6Cue1d4SGUKByHew+owMSXz/lAP3/HsyfyRJ8OHj3hYGKBLEsgW/3XveHVnpvA34LD2q2kp9peeblEuaYOrCdn6fUn4KjXh2k/kmcSq7BsGTT6VpsqtqGXDLZuCZt5+S4j5m6H6NbRiydSnlJ/SWgH4GCn6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwQfdnI/oX5/4hirzhKQVw9I6MZqm96oYXW6Kru1tRg=;
 b=m5GqrOTbG+CnOBtNb46P1et7ll3AJrPAT3TmlMDksH0VNUdVazsP0fH76aFJwlS2rcPqlnDMs+jEZDqByRKBuwLDzEbmVsMlVZ30aXeZDT30oP+Jg9TCmrun1Dtxf2QMkivURV/0bv7W7e053TeK/RsxhR0nazKzsBg+YPnABEMrNEoMKGRvTmAHHE7whitD3NTUOU7Un9KPcDJXD4c3ekc14XULJVlmiag3hUjM2Lvv4NZqn8o6g1kiYjWlb/PFTsGMLGEdFnPviRJiQTpV8l6FS7x71rhdBC1a/LrGBXIjKhqjQh+wXwKEmPI1rLMboV5Yl15s7jvb16thAimiZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iwQfdnI/oX5/4hirzhKQVw9I6MZqm96oYXW6Kru1tRg=;
 b=qunrcCXsnsWW1cFjjCqmzLel2sHcNuJPpLOy7z81A4SoslHk41A0Le9EGs6hkzorpH4UnU2mLIqu8S+y0km04pttZSJ+HOk+ufOKhv+JkXjC4fsnqrgGpE4JPNdEczkdZMuHMcs4Z6iqR4KFpGQGrpusAWSmTP5O+f3v4MMSwXM=
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by DM5PR11MB1355.namprd11.prod.outlook.com (2603:10b6:3:b::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3632.18; Tue, 8 Dec 2020 11:13:42 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c1a5:4e25:6:934f]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c1a5:4e25:6:934f%5]) with mapi id 15.20.3654.012; Tue, 8 Dec 2020
 11:13:42 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: Paul Menzel <pmenzel@molgen.mpg.de>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v8] i40e: add support for PTP external
 synchronization clock
Thread-Index: AQHWzUjc2qylRfrc6E+NUY0gRQ92g6ntBaKAgAAFjGA=
Date: Tue, 8 Dec 2020 11:13:42 +0000
Message-ID: <DM6PR11MB461075E6A409F14BFFC4FE22F3CD0@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <3dcb78c0-b4cf-8686-20d6-3cd766e7fb1a@molgen.mpg.de>
 <20201208154119.106511-1-piotr.kwapulinski@intel.com>
 <16512022-0b85-5b60-6767-f9b9b6e9cb9f@molgen.mpg.de>
In-Reply-To: <16512022-0b85-5b60-6767-f9b9b6e9cb9f@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.111.165]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: edeef5bc-737d-4a48-2dd0-08d89b6a5253
x-ms-traffictypediagnostic: DM5PR11MB1355:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB13552595E9F05FC78DD09B0EF3CD0@DM5PR11MB1355.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: k7k+hvK+BkFd44fga3phyuUotSTwD3JBTRktDeYHfk27YTE/+YFqC2cvQISP2O3TGDvAV5vdG8Aj6cTDqZAYMKj0tMYhYaeDR/MOPkURfVZYHuH7daJfuU2sza7/JQHeTzXsVlF9Fb+T8ePE2N7xno06fdV6i+AdmbhWoZQTK+JqzxtIMqXpozJpJMtfJeKoAj8VYC7VJpdnW28LBVOMfb0qeWo9o5cNAySG1B5p1L0D8HzOPU9veDTlVlbxF4FHKEWUS6YBtzRmsXUk9jH1ltk/rW9lX457EMJlms1O3eht+MOUmcylo4IV43jF9vXp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(39860400002)(346002)(396003)(136003)(8936002)(4744005)(316002)(71200400001)(76116006)(55016002)(54906003)(7696005)(6506007)(86362001)(107886003)(8676002)(4326008)(110136005)(53546011)(52536014)(26005)(2906002)(478600001)(66476007)(9686003)(66446008)(5660300002)(66556008)(186003)(33656002)(64756008)(83380400001)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?ZkVVeUp6QUFpRVdva2Jyam5YdkJHaEllVTBzbXRQaitJU0lXdWg1N1kzeW1R?=
 =?utf-8?B?dlJsWmIrcktUMml0aGN3RVNEaVNRRDc0Q1VGU1NVbHNDa056MWx6clcwemht?=
 =?utf-8?B?MkpQcFRxUThSUk1LWUYwWTF2VHY5WHk1UlBNb0M2QURZTDRyclc5QXlUcHVp?=
 =?utf-8?B?R0xJbWtGcVM1bG8zSnd3VUdVMUZaVDRvaC9FRVJJNTBrRWNCRVYwcVRReGZV?=
 =?utf-8?B?LzExVk5ScDB1Q3grTFhMYTUyQ1VQVFhMbEFuemZNN0FMZlRuV0h4emFhbDN4?=
 =?utf-8?B?RHpEczBRV3I5c3RLbitIbGtUSyt0NFJuTW9CMXlBSmFQczRQMXU3ZmdNdzBJ?=
 =?utf-8?B?VU1STmIrRjd5OHd6ZW5lOWJ2bUYxL0hwTitXckdtZXF2bjFYWjVSd2UyQjIv?=
 =?utf-8?B?NGdvYXE0MEtTQlYrTExFUXVyakVZQW9GdFZGcXlqNXNIL0c5U01NRUtiMVli?=
 =?utf-8?B?L0p3bnk0VkRMay94b2VqdFZZS1RFN2wvNG9zc1lnZUtoWHZaZTREcVFFd1d3?=
 =?utf-8?B?Y2gxek9xQUpDQ1RXcWZSVWZ5Z1I3clFnZlZLOUExQ1J3SXMyYkRjeFVzc2hK?=
 =?utf-8?B?UzRDa2ZydGIra1lMMXJJMitLTDJWQjB0TklBRFVPZzArWUYxQXNKZXoxSFpr?=
 =?utf-8?B?bnNSc1JkY0FhR21FVS80VXRsbHNxd2V4Q0NKOTFFSXdwUCtYbkNDay91MHdL?=
 =?utf-8?B?MEVGRzFjUlV0S0lVTmcxVnhLcXRWdmI5amZHSFg0MUpuOGF0ZmtjWDd2dVlj?=
 =?utf-8?B?UkJBNElXYlR6WU1uRFZHYVhZc3hpSEFvdVFtTkdybmRHdHorUWxxam9OUEI4?=
 =?utf-8?B?cERXMW91Ti9KaVJhM1JSUTdubmVpd2grSlZsS0tpektPMFRFVGFONlRMYklG?=
 =?utf-8?B?V2ZoT1ZHVHJNSm1xRmc4Z28zRGZZdmt5UHZnM3BId0J0WDlsZlFlMytrM2hq?=
 =?utf-8?B?VWxBNy9oTUJmRTRuZmdFN1dsWEt6dm80b1AzUFExS3RWR1pqMnlGVUNjdTRs?=
 =?utf-8?B?a2FBNjgwVHh1WmxhTDJaaGF6SHpaYW9uamh0ei9MdFE0cC91dU9wRzl3dldq?=
 =?utf-8?B?NmdvU2NlTDRBUWk2OHo1aytONGJYaTBKZU9WamZDU0UrditocmZzWXYxOWRE?=
 =?utf-8?B?cCtqMWNPQ0lEVFppOHJRZ2VXaWMyVWphd2k5VGg2ZmQxTUlVRWxBYnZpUnZK?=
 =?utf-8?B?LzB1VHZvV2phRzloT3hvNVR6enBudkJrUFpmUkx6SEVGYzF5V3pYcEhxT1Mz?=
 =?utf-8?B?QXlLZjFpdFpJaEVUWnNiQ1ZLR3grcXU4NThyZkN5Ump0ZTk4L3MxRXRJR0Fv?=
 =?utf-8?Q?tLNiLCZvr5xAc=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: edeef5bc-737d-4a48-2dd0-08d89b6a5253
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 11:13:42.1821 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4eaVfO9jNY3KnFIvIZhegizDGHQUNDnwMQ5exQgC6dByWYklLvrvhZdnqDDD1kWNDlp2TLgJyhHa/aWe6DYd88yjcF+3mRQ81pzTqDSewH8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1355
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v8] i40e: add support for PTP external
 synchronization clock
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmsgeW91IFBhdWwsDQpJJ2xsIGZpeCBpdCB3aXRoIHRoZSBuZXh0IHBhdGNoLg0KQmVzdCBS
ZWdhcmRzLA0KUGlvdHINCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFBhdWwg
TWVuemVsIDxwbWVuemVsQG1vbGdlbi5tcGcuZGU+IA0KU2VudDogVHVlc2RheSwgRGVjZW1iZXIg
OCwgMjAyMCAxMTo1MiBBTQ0KVG86IEt3YXB1bGluc2tpLCBQaW90ciA8cGlvdHIua3dhcHVsaW5z
a2lAaW50ZWwuY29tPjsgaW50ZWwtd2lyZWQtbGFuQGxpc3RzLm9zdW9zbC5vcmcNCkNjOiByaWNo
YXJkY29jaHJhbkBnbWFpbC5jb207IExva3Rpb25vdiwgQWxla3NhbmRyIDxhbGVrc2FuZHIubG9r
dGlvbm92QGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbSW50ZWwtd2lyZWQtbGFuXSBbUEFUQ0gg
djhdIGk0MGU6IGFkZCBzdXBwb3J0IGZvciBQVFAgZXh0ZXJuYWwgc3luY2hyb25pemF0aW9uIGNs
b2NrDQoNCkRlYXIgUGlvdHIsDQoNCg0KQW0gMDguMTIuMjAgdW0gMTY6NDEgc2NocmllYiBQaW90
ciBLd2FwdWxpbnNraToNCg0KW+KApl0NCg0KWW91ciBwYXRjaCBpcyBmcm9tIHRoZSBmdXR1cmUu
IE9yIGlzIGl0IHlvdXIgc3RyYXRlZ3kgdG8ga2VlcCBpdCBhdCB0aGUgdG9wIG9mIHRoZSBpbmJv
eCBvZiB0aGUgcmVjaXBpZW50cy4gOy0pDQoNCg0KS2luZCByZWdhcmRzLA0KDQpQYXVsDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
