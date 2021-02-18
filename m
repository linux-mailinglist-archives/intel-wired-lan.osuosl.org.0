Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB0931E380
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 01:28:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A3F9605D1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Feb 2021 00:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fQYs9TFu0kKv for <lists+intel-wired-lan@lfdr.de>;
	Thu, 18 Feb 2021 00:28:17 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id DA5BE605D8; Thu, 18 Feb 2021 00:28:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF18B605C8;
	Thu, 18 Feb 2021 00:28:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A2081BF40F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 00:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 638C487239
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 00:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Mz7CyJs93Av for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Feb 2021 00:28:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 82E1587234
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Feb 2021 00:28:00 +0000 (UTC)
IronPort-SDR: cVpqmbUWGaRMtkmqVNmE5Lk+gdeE6zEIlJKGZlnL7AJkZQ9Yx7hf5aNDwDwyW+atSelXt2j75X
 fao9u3uOboIg==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="244819347"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="244819347"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 16:27:59 -0800
IronPort-SDR: fd5BRv92dJPloGTpysYLZgXDLHFSqcb4kF2QnNf0tuK56h3+IC7xjF5Z8RuLBkZDp7n0bDuHcJ
 +CmHd2JQBdMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="400207797"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2021 16:27:58 -0800
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 16:27:58 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 17 Feb 2021 16:27:58 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 17 Feb 2021 16:27:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ulc7PlYolu/14NtmmHM7KgV1lW8lQ2HeaZ+VU/seQ30GbOMJe99Yn4OysYL92T3c41ZkInrC37n0Rbm+1zpIoZqXnpfYJWZb4SsI9AArIMxLm0gy+ijQRvKlmOf360WKbazGAOSASYpMDkiLGJsnZGqKM+FYJo8x9egBR7nxSBysAQo3ovowfEdMMJCD/x6A3U9SeNDEjJ7wl8fX20ua+BghM1gIb0AoqW+31tdoB/tzzhWR14YagkrydrRKSA8Gu6RNrRoDR+gOfUV9OPsR5dmySfWFwpQcwXlru0Tyoouhf57LsEBlejw9jaKW7Kc2COOBOLbHRaaaGyM8rE0b4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aLWk/EWdIQHLaftGoDkp4lIILBMw7VZYWa5mOwVjB/k=;
 b=AQdnlSYEmONyGqeDTEx4C7WeXSSdQwQI2+os6WDxyu6/Ywncmif16fOgq1zpalfWW+TTL47CZQOgaRQ/VZl7EzsTGgaz6j1l+Tp+LHbFCY5DYbm0bEXdcpZJHObOnXKAvl7U6wh2PfiH4mNxG6ZY4h8fYBw+lMfDDjoRDdgGUo1LC9TCUcqyniCZKYiOUz5UXO9iO4kywMF0gAjCHvcidgjHs03z1ZUI/ejGaSB+GQ+TZn1uEC5nFX8R6Z2of7o+iNVa93mkRH4jPWpaUc7nFb/VSBmTZh1gNOG4RfYNngeTO3Nj0y1+Du7vbQSKJEjrhGMWkvJsQL0mA5vKpMZMUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aLWk/EWdIQHLaftGoDkp4lIILBMw7VZYWa5mOwVjB/k=;
 b=im/sx1ojFu5E6zScVblUwFwpkveurjPJzDp5EJWMb8YO0GUAvTFBuLFCWZufWZy3XLbewOoL52BVsefhVhlpPkjKIDTdOglgvJdKb+DifFgkGDQTw49awF6qW3i+eErRoO0356vPnYnRuYu1+NjKpmcyEJfg0WLZWuNpztnVmd8=
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by CY4PR11MB1959.namprd11.prod.outlook.com (2603:10b6:903:122::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.27; Thu, 18 Feb
 2021 00:27:56 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::a5e0:74e2:598a:b7d7]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::a5e0:74e2:598a:b7d7%3]) with mapi id 15.20.3846.041; Thu, 18 Feb 2021
 00:27:56 +0000
From: "Desouza, Ederson" <ederson.desouza@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable
 auxiliary PHC functions for the i225
Thread-Index: AQHXAOCC3/i4T5n860SqV4Yge4vMLKpZAl2AgAQL9YCAAAlQgA==
Date: Thu, 18 Feb 2021 00:27:55 +0000
Message-ID: <b42bc3f694b5d30f4bee163b65552a5d65d20706.camel@intel.com>
References: <20210212014212.41570-1-ederson.desouza@intel.com>
 <20210212014212.41570-3-ederson.desouza@intel.com>
 <bd0bfa55-de44-82e9-337a-e6254d3a8405@molgen.mpg.de>
 <4a11d17d2b0b2e297de1e42fb76db076e9940712.camel@intel.com>
In-Reply-To: <4a11d17d2b0b2e297de1e42fb76db076e9940712.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2601:1c0:6902:8a70:9eb6:d0ff:fed2:f387]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 06b29ae6-f3ff-4945-87f9-08d8d3a4098a
x-ms-traffictypediagnostic: CY4PR11MB1959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR11MB195938FD4F76A45ECF186F5DF6859@CY4PR11MB1959.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Q1fveHmVsp5V0al30dPk1g1zBjQPFc+OfXmx89IxKd7g8Ld3IVE4OMjXZBMOMIum4oNaC1k/WgIkBc/MVjX1lNko54Zsb4bTSxv1FUWacMtxqi0bFp5Gn2vL6UbiipngMxy+PJ9BbqnP1zEp7+J6i5hpUiONiErdGBPWUecm2zhdqC7LqmXy5Q0ZJPlJVfil5bOm0tKNzUFjoeRTbIcItlU8uzZiFaDnqmnTD0HwrNoto2PD/vbq34vIVnjWTzjs/LSA62ojUj232OtsaX9jIJRZ7SZssBOnXjqV6EiA8mPAQx+D5/Outy0JAsbSlwJHSSLso3FZKUHqYQwpJBCUOjahfenektAD+m8aMpGAO6EtX+2JKpluzcfxVFJrM/A9KK/A4F9WJ87S3RNQyMpQ72B7QQqHk8TrF8xeG03MzHRGL6WL3ErV80zwRVsJpRbsCt3Obr1hnCW+jFfFhbC+espb7vyk5JmXs7OpUMMOh3ON4RGML/NJIyAyWmWzDIX7YA9ot74TuPoX3oWf8ez/wQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(376002)(396003)(136003)(39860400002)(346002)(76116006)(71200400001)(478600001)(110136005)(6486002)(91956017)(6512007)(66476007)(8676002)(86362001)(6636002)(186003)(5660300002)(66446008)(2616005)(2906002)(8936002)(4326008)(64756008)(66946007)(83380400001)(66556008)(36756003)(316002)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?U3lnamhMMmtnSjV1TkQ2dlU5MjNPSkNOY0czUW1XQ1JMSHUvL0o3S1ZoVVZK?=
 =?utf-8?B?ZjQxVUtDVDVnQU1kY21YSDV4SmlHWm5TdFF0Z3NKNTZqd2lxR0ZIbTF0cEVk?=
 =?utf-8?B?YzlKNGdQVnQrZWg4QlJibWljTzZ0MHBQU05hTkptWjNrZVR2N0ZTZm1EREFL?=
 =?utf-8?B?NFRxYnBSSmFMd2xGUmhIQStmY2RScVE5cGxTbVVWU216TS9VNFhqMWJPVlI1?=
 =?utf-8?B?ODF4SlJkRlF0RUU5OVc3RnJ2cEpsY0o4WjhrdGkwT2VLZk0vS1VlTUkySlhF?=
 =?utf-8?B?bytsZGNwdXpRMk9JLzNYOFF3ZmFkQXhjeGZVOVhrZkVmd0F4KzVCWVlwUi8r?=
 =?utf-8?B?U09COUxxazJ0YlhvVGhBa0NWSzAyOGdsVnRtNTBPYlJDZGFKd3lhbDZIeVg2?=
 =?utf-8?B?bFdudWxuY1l3NDZMQzF5ZGdrdWtzajZpSjNMeC9uMDdFbFZ1R1FnQi9BYWVm?=
 =?utf-8?B?WUZ4N1IxbnNCNHZlbmdTREx5blFmaFVucDRTbmlGK1BiSStlaDVTZzhDQ00x?=
 =?utf-8?B?cGN2YXZEWjlWWHA3cTlJTkdMMXZ1bUxQM0RUZDVjK3dkNWJ5b293ZXg1NTVU?=
 =?utf-8?B?cEFWalAyRlZoSFlmaGF5Y2hRVDVJNkxuWWpIMVJxejAyV3VOMGlpVVQrdXZx?=
 =?utf-8?B?Qm1pZmxXWlgwK3Z1OEpHYWVkS0RUQmlqdUkzK0o3T0FLalc4ZnJSQzlFWmFy?=
 =?utf-8?B?SUhyZDV2ajFpdElKZU1BZTdPb3NSTXQwaWJxUkVJazV5OEN1MWsrRlh0SGVu?=
 =?utf-8?B?ZWcwSnhzV2Q5dll2QW5nSkpJaEYwRGtYd0plMTN1NDBSQWp2b1hQb2t5cFlY?=
 =?utf-8?B?V1NTMU5jcFdhT0IxMlZDVEJySWt5ZndYSEE2Ulh5bSt2Z1UxTDJiQWh4R1lK?=
 =?utf-8?B?UlgwemFJdVdmZ0xmUjBwVGEvM3BSTytKb3ZuSjI4ejdDMXBkTGh4S2dGUEYx?=
 =?utf-8?B?SkxhMGVObWYrRXFDVW5iTVEwWElSanZkZFpkcU9rN3NXa1hQVUFTdER4c2t0?=
 =?utf-8?B?c0FYdlV1TkF5ZTdBUnJialE2L0VMWFJXRC9QSW00OWRyNUxZb1dSY0h3aXFk?=
 =?utf-8?B?OEJGNFlqY3NoKzJLREZjYnRmZ1BHdXJyS2FPK2lvVFJMNTFiYXVRKzlWTTMr?=
 =?utf-8?B?a21SVFJNQS8veWVMMlFIZGtUNFVnWlpxckZIcWJZalhmSDJNTjF0akpJOUgx?=
 =?utf-8?B?Nmk2d3pGZmx1MW00dFZrSUtsOU9POXN5Vy9tRW9QWXZaVEowK2toUitxemxs?=
 =?utf-8?B?NXE3Q2gvcStGRkx6allCWllCSUd6UHBpblBnVXN0dnZMUTZFZHZRV1p3UXZl?=
 =?utf-8?B?QWliYmtkUnR0bVRGY2xJT0l2SjhqZEZlN0lkQ1VheGExR0VyaldGN0toZlpX?=
 =?utf-8?B?UVZnREloNEw5eWFTci9OWG9wTFFYbXErZUtxR1QvOHIycnh0NG9aTVc0OFc0?=
 =?utf-8?B?VFYzY0EzWFVXVGQwL0VXbUt4bXpubThrT0xtM0ZmMUlGRjdTVXNpYjVqeEN3?=
 =?utf-8?B?LzVsaE5FYTNUL21iMTlSQVdPZGhBSVV3cUJRS3JKY2cxWE41RWdkemcrbUZV?=
 =?utf-8?B?YmtBRHVNbllsMGxLRHJtSFpoNHFGRldpaTNpNk1YV2ZtZmNiM1JVS2hIRWZi?=
 =?utf-8?B?TmVmOUhXWjlhTGl5ZTlic0xoWm42bno0UVVFNzlWR1FwRTlZcFRLMkVGTE9o?=
 =?utf-8?B?VmZpdGNFK0VXa2d5SXBwY0ROYmtPYTZhWk5zMFUvajlvdHUvbUtUOWIrS1ZJ?=
 =?utf-8?B?SEFJYitmWGowN2IwcjFRNmdxQzd3L2NERWR1U0Z4UllnU24vSjlCdFhFZFRy?=
 =?utf-8?B?NEdkaW5yK1ZFL0sxSDVzSHFkeFV3OXgyVnRlaTYwUnRyMktqTkJBbXU5b04z?=
 =?utf-8?B?elA3NG9BdnVHRkhqc1dweldlK2FWSURKcUpIY2VFTFJDTmc9PQ==?=
Content-ID: <EAB81D0311D9464AA7839104DDC42B6A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06b29ae6-f3ff-4945-87f9-08d8d3a4098a
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2021 00:27:55.9306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dJHTDENpS2qPclF969Y03M2JaY4R53kWQ6xbq9OrsPfRvKVdHZGIieSu8lr38VQcO8K009sDsZIiHdeGVze97Dlu7savMPY0zSbbdd/lkkU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1959
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH next-queue v1 2/2] igc: enable
 auxiliary PHC functions for the i225
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

T24gV2VkLCAyMDIxLTAyLTE3IGF0IDIzOjUzICswMDAwLCBOZ3V5ZW4sIEFudGhvbnkgTCB3cm90
ZToNCj4gT24gTW9uLCAyMDIxLTAyLTE1IGF0IDExOjA1ICswMTAwLCBQYXVsIE1lbnplbCB3cm90
ZToNCj4gPiBEZWFyIEVkZXJzb24sDQo+ID4gDQo+ID4gDQo+ID4gQW0gMTIuMDIuMjEgdW0gMDI6
NDIgc2NocmllYiBFZGVyc29uIGRlIFNvdXphOg0KPiA+ID4gVGhlIGkyMjUgZGV2aWNlIG9mZmVy
cyBhIG51bWJlciBvZiBzcGVjaWFsIFBUUCBIYXJkd2FyZSBDbG9jaw0KPiA+ID4gZmVhdHVyZXMg
b24NCj4gPiA+IHRoZSBTb2Z0d2FyZSBEZWZpbmVkIFBpbnMgKFNEUHMpLiBUaGlzIHBhdGNoIGFk
ZHMgc3VwcG9ydCBmb3IgdHdvDQo+ID4gPiBvZiB0aGUNCj4gPiA+IHBvc3NpYmxlIGZ1bmN0aW9u
cywgbmFtZWx5IHRpbWUgc3RhbXBpbmcgZXh0ZXJuYWwgZXZlbnRzLCBhbmQNCj4gPiA+IHBlcmlv
ZGljDQo+ID4gPiBvdXRwdXQgc2lnbmFscy4NCj4gPiA+IA0KPiA+ID4gVGhlIGFzc2lnbm1lbnQg
b2YgUEhDIGZ1bmN0aW9ucyB0byB0aGUgZm91ciBTRFAgY2FuIGJlIGZyZWVseQ0KPiA+ID4gY2hv
c2VuIGJ5DQo+ID4gPiB0aGUgdXNlci4NCj4gPiA+IA0KPiA+ID4gV2hpbGUgaTIyNSBhbGxvd3Mg
dXAgdG8gZm91ciB0aW1lcnMgdG8gYmUgdXNlZCB0byBzb3VyY2UgdGhlIHRpbWUNCj4gPiA+IHVz
ZWQNCj4gPiA+IG9uIHRoZSBleHRlcm5hbCBldmVudHMgb3Igb3V0cHV0IHNpZ25hbHMsIHRoaXMg
cGF0Y2ggdXNlcyBvbmx5IG9uZQ0KPiA+ID4gb2YNCj4gPiA+IHRob3NlIHRpbWVycy4NCj4gPiAN
Cj4gPiBXaHkgaXMgdGhhdD8gQmVjYXVzZSBpdOKAmXMgc2ltcGxlciB0byBpbXBsZW1lbnQ/IFBs
ZWFzZSBhZGQgdGhlIHJlYXNvbg0KPiA+IHRvIA0KPiA+IHRoZSBjb21taXQgbWVzc2FnZS4NCj4g
DQo+IEkndmUgYXBwbGllZCB0aGlzIHBhdGNoIHNvIHRlc3RpbmcgY2FuIGJlIGRvbmUsIGJ1dCBJ
IGFncmVlIHdpdGggUGF1bC4NCj4gU29tZSBkZXRhaWwgb24gd2h5IG9ubHkgb25lIHRpbWVyIGlz
IGJlaW5nIHVzZWQgd291bGQgYmUgbmljZS4NCj4gDQo+IEFsc28sIHRoZXJlIGFyZSBxdWl0ZSBh
IGZldyBjaGVjay93YXJuaW5ncyBmcm9tIGNoZWNrcGF0Y2ggdGhhdCBsb29rDQo+IGxpa2UgdGhl
eSBjYW4gZWFzaWx5IGJlIHJlbWVkaWVkLg0KDQpTdXJlLCBJJ2xsIGFkZHJlc3MgdGhlIHJldmll
dyBjb21tZW50cyBhbmQgY2hlY2tzIGFuZCBzZW5kIGEgdjIgc29vbi4NClRoYW5rcyBmb3IgdGhl
IHJldmlld3MhDQoNCj4gDQo+IFRoYW5rcywNCj4gVG9ueQ0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
