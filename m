Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD146DA60
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Dec 2021 18:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B5AA4064D;
	Wed,  8 Dec 2021 17:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdSkModr5PRu; Wed,  8 Dec 2021 17:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8672A4040E;
	Wed,  8 Dec 2021 17:51:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C95681BF2C5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 17:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C404F81CEF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 17:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rfsXbAyGLI36 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Dec 2021 17:51:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3D52281CDB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Dec 2021 17:51:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="324147903"
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="324147903"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 09:43:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="600842157"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Dec 2021 09:43:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 09:43:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 09:43:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 09:43:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mE/WRxBYQgumFvfRQ5WtvlqzXQADee1n9FVkBYmIndX8ZnEuJaRIP06sJa6D3DjihJ3zNm+lmLezINXkPQy3knJqczEZEkVimxyoEs6JHZK6OKj+3pnXNhS2eNjnX8a+tjoA/5vO2CDPcQzxB0iqRS/DSLCvdOn7P47apR5Ml6BLw15u7+mk6cp6djITucp7uV6Ftpjv6EUxNnzejwg9LzuONrpM/YcvKhgT+VC2bMp1Fc1L84SLhlwHAFkReLAOBfaDp16AbFvkzuYZWmhp2gN1NsWILDFaLsYj8otMCB4gRoZlokXC/TRM+LdrFoPDLr1tccxMX+Mbop6Z5IWugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0gRet7ICLK6WmhzA8hK1K2ICm9znwGKI3tdVkoJ6xCs=;
 b=aSbqWEC75uQ7RaPmJClHcp7y+ziltyAe+ZY2hzaRFOm1BVncPjC2I7UX5ZeZbV5N13OjQrrGyudUBUzQh8n8tPHcvT3cxrJhJWcCryikdDEFbyg3ft/2EwZNZyFrVGJFcr7QsU0mUO1aldVA4SNk/qMY2Nl0H832mDaEXXx9Jd3cQE1+AqFO0OxDgZsEy9H1WyJki+ZQzdRoo72bKQTaIeV+hap/kLFUzFMpX8yfN845/RWyhxVaar6GlgYQ5+ZRFtpZbUKFK9CelUh5rSWNt9UVO7WGdhob3s1v3qDLXRGRF6XwOdhyGXIfbVX7RLmaKPUS1e5vYp8peOIpV5zn8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0gRet7ICLK6WmhzA8hK1K2ICm9znwGKI3tdVkoJ6xCs=;
 b=FOkHZfM4518ekM7B9mB7lcTIiFOZPYJ5SM/6W4xeWUzxD2aJF9b9GJ+4icCRkFj0WNSABCAxPQxButoF9c+E5xH3rIhF22Ruj19LhGw/EGcE7oOVVUgvJ9bSypwX+VQPalkdEUNXLqyPtQ+/iAcnsd9vFwxVLaRursdlNYg95j4=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB3007.namprd11.prod.outlook.com (2603:10b6:805:d6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Wed, 8 Dec
 2021 17:43:47 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::a5ee:3fab:456b:86d8%7]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 17:43:47 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Kolacinski, Karol" <karol.kolacinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH intel-next] ice: add TTY for GNSS
 module for E810T device
Thread-Index: AQHX7Epv1460CtqrR0Wpx9CXOiXwG6wo3XIA
Date: Wed, 8 Dec 2021 17:43:47 +0000
Message-ID: <f68d7a724f366deb5fbb7a1160561c71eb158392.camel@intel.com>
References: <20211208154333.179459-1-karol.kolacinski@intel.com>
In-Reply-To: <20211208154333.179459-1-karol.kolacinski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.40.4 (3.40.4-1.fc34) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0e757c59-8521-4e32-e882-08d9ba7249aa
x-ms-traffictypediagnostic: SN6PR11MB3007:EE_
x-microsoft-antispam-prvs: <SN6PR11MB3007F37477A976276824CA86C66F9@SN6PR11MB3007.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lV2T+hLdwP9yIz6SY3bZkbOZa69yq956kVRsFjJ3QqKL/SK/F2zRvaEKkkSRkilC4TUN2ToXPJEvk8kMi5gT7doAave2CzKrAkrO8wSUdGpJywmk13mhFTawUJ8/nO+XhUX3j2BTdlQKqweyPgC36NYoI79InJSZv2ISuQo21+tg1MoVBwYCnpM39ERP8DSDQOARW44DO0C5DnJeLFmOH4pTACslJzoSv6KZ+/8T/4WFTarQDQZzTi4p9ha0Ef+b+ws1ERwzX9DW66QVhqlc/0NMlf138VeLl5JRItd3LL3nlT0OFXBgMUZEQqu7u4TYNTGi7XDSDPVC7DPep+wHXwVlTobBzCAofHjJJLGK7+r8YXc2OrOZYoSryPrDDJjz5ndirHyDS+4PPMsTSaLdtKIfu86W3deJsMsvF4I5RhdVwDxohKQiOXP26r7wdmHH88mWgaQlV82cZOuEVfsDkPyWGX1/F0i30ZZdKTX4AuhM9xaGk3BZ+kMY3easWxLudeCt70WqZwfLwujVbE06qHN1HwAolzYyE3ePp8tgHPSFOgzEdj8Zz0XDooWYb7uYuBeEnCSddyZAXBvQMnUjIOvQvoFsRq4Ru2K+K3IaHuk16YMxCoL8xDdna8NJnVxO1jmVrjIBT9amqGg0xtzBZ8B/QGLp9iQCMy1oBqU/OrN8dmTjWuWFhCxHvVZ8GzAD1+6OW77TQtGpF0uo7jQHVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(107886003)(6506007)(2906002)(186003)(82960400001)(110136005)(6512007)(71200400001)(4326008)(2616005)(122000001)(508600001)(38100700002)(8676002)(26005)(66556008)(86362001)(38070700005)(66476007)(316002)(5660300002)(66446008)(6486002)(64756008)(36756003)(8936002)(91956017)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QmJiaWs1bmRsQU9BUHIrSHdUY3BNWTNLZ0FZWWd4bWVtbE9wUU9EdnQ4ZE01?=
 =?utf-8?B?YXBMUzl6My9wWkdRUCtuSzIxR0NPdzNOQXZrQkdueVhKTk1KT3dtQUp6R28w?=
 =?utf-8?B?THFmOEtWQmRDalNhK3BLNHNJVG9qSlRHYjlHOWVuNTFEUXI1RkFWR3E0dTdi?=
 =?utf-8?B?ZzQzZlV3ZlIxSk02L3JMRFp5QmxWVk5lZ2pncGtrM0Y3OTBqMWhuazVjbXZH?=
 =?utf-8?B?Sy9SRlptcVBsMlpyZXF6YjgxT3VrVm55YjhxN2swZEZsVm81U3BCNC9LSmdN?=
 =?utf-8?B?b2Z1RitmUlVQaUw3dzVlUnpyaDVuOFNhZyt0M0V1VFY4VFBpYzFsRFQvZS8w?=
 =?utf-8?B?K0ZVSjlOYTBYUWlsT0VuT1JsUmhtbkc4aE1yZVNqdkRQRHM4S1ZLMGFoVTBY?=
 =?utf-8?B?K1BIdnN4NGs4ZWFDNGx2MHFZWktFdmFreVRJWTkrbnpLNURONUJrS0Y2N1VH?=
 =?utf-8?B?dVovODZkR0Z4cCtRS3ptcVRPR0x4THZBRStML21pUlVQOU53QTlaaDB6eXl2?=
 =?utf-8?B?YXBPVlpjVGN0dE0yckNZRzl6eXd1RlNNMVVLUUliam1PQ2lTMS9uSkJ1TGhH?=
 =?utf-8?B?U0VOYW41TUJPWmFRaGZEWTE3aHp6SnBZWVgyYzhwWXdzWVduV0FobkZKZEta?=
 =?utf-8?B?a3hldkxRT2g5cWRDZGZrM01PVkRjMXVBbk16RGRRK1ZRNHQyakE4TSsvRGx4?=
 =?utf-8?B?cVRNU0pQVmlNQTNnOFNDVXhiK1BBL1I1NGxxMERtbFBkV1lVN0dFeWJuUGpD?=
 =?utf-8?B?UFpYVTdKYVJJbzNYVXhQTjdxK0lJcmxmK0J1Mis5eHloV0xhbmNuT0YvWStC?=
 =?utf-8?B?RkdTdmwvSjRYRlRhbzZ3UDRRYjlBeWMzMVJibmtsK1lnZnRFYnhFYmIyeFVy?=
 =?utf-8?B?ZG1GR2REN2hyMmhZR3lyMUNnUWZpZGxISjlHSGtuUG85KytNMHhKZ0t6Q3ZB?=
 =?utf-8?B?MldDMVNZbm90bW1zMnN5am1GaWM3TEdIOVlFK0JNa3Y4Q2xJK25ITUFWcVdF?=
 =?utf-8?B?U01xbytwYllOYmtqRllqejd0VE54blVBSnFKRGVuUHF1MmVGUmRqOHR2dkZU?=
 =?utf-8?B?WElMTXNQaEVwQmV4VkNpajR5Yy9Fa2xPajJBNHlYN3g1ZnlGR1o4SHI3bjU5?=
 =?utf-8?B?ZVdEa2xhcTFRWXlSdEN5NTUxczIvSjN3Vnc2a2d2bzJOL2JsZWpJQTRjRUJk?=
 =?utf-8?B?ekgrUmNqVEhXb2NtOHM1cmk3TVlkblVxZzBNK1Z0L1lCVkVJeDBwbUlGQWFh?=
 =?utf-8?B?aVMwWkpoZFBTNWdxbkg2cFJOd2FkYTZlcmt1MmUyZ1RQcWRXWkc2cGZyYmNy?=
 =?utf-8?B?UmR3OHNweFIzTFNYZ3pYcm9JMmhkanJxS3pYajhQdGNtU21teWdoK05WWDBL?=
 =?utf-8?B?eUdad0U1WDV0SG1DQnhHR1U3Z0VtN1lnTlE3bFFrdjNaZ3ZsQ2VUandUaGhC?=
 =?utf-8?B?UTREak95R2Z1azNjSXZNK0Q3bTZJSnZVR1Zhb3N5L2xXOFZab1h6a3JjU25M?=
 =?utf-8?B?WDBSOEZYa0s1WCtrcFhJUHFod2NsK0ttbkpuNW9zR3NYY0ExSS9oV21icDNQ?=
 =?utf-8?B?L0YyYUlTUDFWVkZkRGg0WU16SFpqM2NaVUxlMnZDMWpXR1N4Z0s4SnI1aXU2?=
 =?utf-8?B?d0d3cVFiWXVzVzFaVEtQYlJ6VXFTejluVDlpU2lYM2pWTHBDV0xJTjBDQTFR?=
 =?utf-8?B?WVBlMk9HQjBSSTV6aCtsS1V4VWJVc3NPRldNT3JMWlc2YkZtcTdrbW83RHhl?=
 =?utf-8?B?aFl1UlRCNndVbGJLRWhxazZ2UEFkL1M4dnBOUFBidkRFNXlHOEM5QkttbzZq?=
 =?utf-8?B?dURNTFcyOHhCSTBvaWIzNWZ5d1E0cGRlakhubEFITzJPaU9zRGtTRDZWZDFT?=
 =?utf-8?B?VDBMekd6WDZPMUY2KzhwNkN1OWNkempoTnNWQWZYaUZFdDFaMDdQa3BkRG5U?=
 =?utf-8?B?VWJ5Y044TVBGRExwMWM3cDVsYmx6NEFMZnBhdEFsSEpFSWJWYzd5b3ZlL3g1?=
 =?utf-8?B?WnkvNEdmYkdGRE1CajBPMDZMQzRhOGZFLzlQem9LVmcyZFA0Ui9SckwzQmRF?=
 =?utf-8?B?UFU1dDllTzRteEpWZEpSWFJuSXg5ZHhuWDhDV20vN1dyOWtjMDJ1cEVaOFFJ?=
 =?utf-8?B?ZDhUaU11dkZHN2VsKzhZSTZid0lWWHA0eWFuZlRUczdSR01yTzRpdU9qRStH?=
 =?utf-8?B?NThuOWNZSkZkTFJjVW5pRTgzcVBuamE1UVB6Nk41aFU2czBVRlBoTEVDRTgr?=
 =?utf-8?Q?MAIs5Opqq90oMNpKXcLV2Cy4R6y8UgON2jVGZoFq3E=3D?=
Content-ID: <0279A933C650C5498C7512DF574498AA@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e757c59-8521-4e32-e882-08d9ba7249aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 17:43:47.3551 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YBSWI/g/4uGiGjzGHoiev3d0PTmuBiUWwN6kxG5q6FeKi0nuu9WfbxGgqVlSDTQrvQox7gyPt3uZUdBU0J2II3KlY5isVFaBnXaxitpZYz8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3007
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH intel-next] ice: add TTY for GNSS
 module for E810T device
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
Cc: "Mishra, Sudhansu Sekhar" <sudhansu.mishra@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCAyMDIxLTEyLTA4IGF0IDE2OjQzICswMTAwLCBLYXJvbCBLb2xhY2luc2tpIHdyb3Rl
Ogo+IEFkZCBhIG5ldyBpY2VfZ25zcy5jIGZpbGUgZm9yIGhvbGRpbmcgdGhlIGJhc2ljIEdOU1Mg
bW9kdWxlCj4gZnVuY3Rpb25zLgo+IElmIHRoZSBkZXZpY2Ugc3VwcG9ydHMgR05TUyBtb2R1bGUs
IGNhbGwgdGhlIG5ldyBpY2VfZ25zc19pbml0IGFuZAo+IGljZV9nbnNzX3JlbGVhc2UgZnVuY3Rp
b25zIHdoZXJlIGFwcHJvcHJpYXRlLgo+IAo+IEltcGxlbWVudCBiYXNpYyBmdW5jdGlvbmFsaXR5
IGZvciByZWFkaW5nIHRoZSBkYXRhIGZyb20gR05TUyBtb2R1bGUKPiB1c2luZyBUVFkgZGV2aWNl
Lgo+IAo+IEFkZCBJMkMgcmVhZCBBUSBjb21tYW5kLiBJdCBpcyBub3cgcmVxdWlyZWQgZm9yIGNv
bnRyb2xsaW5nIHRoZQo+IGV4dGVybmFsCj4gcGh5c2ljYWwgY29ubmVjdG9ycyB2aWEgZXh0ZXJu
YWwgSTJDIHBvcnQgZXhwYW5kZXIgb24gRTgxMC1UCj4gYWRhcHRlcnMuCj4gCj4gRnV0dXJlIGNo
YW5nZXMgd2lsbCBpbnRyb2R1Y2Ugd3JpdGUgZnVuY3Rpb25hbGl0eS4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBLYXJvbCBLb2xhY2luc2tpIDxrYXJvbC5rb2xhY2luc2tpQGludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBTdWRoYW5zdSBTZWtoYXIgTWlzaHJhIDxzdWRoYW5zdS5taXNocmFAaW50ZWwu
Y29tPgo+IC0tLQoKUGxlYXNlIGFkZC9pbmNyZW1lbnQgdGhlIHZlcnNpb24gd2l0aCBjaGFuZ2Ug
bG9nLgoKPHNuaXA+Cgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9p
Y2UvaWNlX21haW4uYwo+IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV9tYWlu
LmMKPiBpbmRleCBlOGI1YmI4MTVkY2YuLjg0YTQ3ZjI1NzZjMyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfbWFpbi5jCj4gQEAgLTU3MCw2ICs1NzAsMTIgQEAgaWNl
X3ByZXBhcmVfZm9yX3Jlc2V0KHN0cnVjdCBpY2VfcGYgKnBmLCBlbnVtCj4gaWNlX3Jlc2V0X3Jl
cSByZXNldF90eXBlKQo+IMKgwqDCoMKgwqDCoMKgwqBpZiAodGVzdF9iaXQoSUNFX0ZMQUdfUFRQ
X1NVUFBPUlRFRCwgcGYtPmZsYWdzKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGljZV9wdHBfcmVsZWFzZShwZik7Cj4gwqAKPiArwqDCoMKgwqDCoMKgwqBpZiAoaWNlX2lzX2Zl
YXR1cmVfc3VwcG9ydGVkKHBmLCBJQ0VfRl9HTlNTKSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWNlX2duc3NfZXhpdChwZik7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChpY2Vf
aXNfZmVhdHVyZV9zdXBwb3J0ZWQocGYsIElDRV9GX0dOU1MpKQo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpY2VfZ25zc19leGl0KHBmKTsKPiArCgpBbiBleHRyYSBieSBtaXN0YWtl
PwoKPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGh3LT5wb3J0X2luZm8pCj4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpY2Vfc2NoZWRfY2xlYXJfcG9ydChody0+cG9ydF9pbmZvKTsKPiAK
wqAKPiBAQCAtNjcyNCw2ICs2NzM1LDEyIEBAIHN0YXRpYyB2b2lkIGljZV9yZWJ1aWxkKHN0cnVj
dCBpY2VfcGYgKnBmLAo+IGVudW0gaWNlX3Jlc2V0X3JlcSByZXNldF90eXBlKQo+IMKgwqDCoMKg
wqDCoMKgwqBpZiAodGVzdF9iaXQoSUNFX0ZMQUdfUFRQX1NVUFBPUlRFRCwgcGYtPmZsYWdzKSkK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGljZV9wdHBfaW5pdChwZik7Cj4gwqAK
PiArwqDCoMKgwqDCoMKgwqBpZiAoaWNlX2lzX2ZlYXR1cmVfc3VwcG9ydGVkKHBmLCBJQ0VfRl9H
TlNTKSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWNlX2duc3NfaW5pdChwZik7
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGlmIChpY2VfaXNfZmVhdHVyZV9zdXBwb3J0ZWQocGYsIElD
RV9GX0dOU1MpKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpY2VfZ25zc19pbml0
KHBmKTsKPiArCgpBbiBleHRyYSBieSBtaXN0YWtlPwoKPiDCoMKgwqDCoMKgwqDCoMKgLyogcmVi
dWlsZCBQRiBWU0kgKi8KPiDCoMKgwqDCoMKgwqDCoMKgZXJyID0gaWNlX3ZzaV9yZWJ1aWxkX2J5
X3R5cGUocGYsIElDRV9WU0lfUEYpOwo+IMKgwqDCoMKgwqDCoMKgwqBpZiAoZXJyKSB7Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMKPiBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRwX2h3LmMKPiBpbmRleCBlYzg0
NTBmMDM0ZTYuLjQ2MzA0NGFlNWZjYyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pY2UvaWNlX3B0cF9ody5jCj4gKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaWNlL2ljZV9wdHBfaHcuYwo+IEBAIC0zMjUwLDYgKzMyNTAsMzkgQEAgaW50IGljZV93cml0
ZV9zbWFfY3RybF9lODEwdChzdHJ1Y3QgaWNlX2h3Cj4gKmh3LCB1OCBkYXRhKQo+IMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gc3RhdHVzOwo+IMKgfQo+IMKgCj4gKy8qKgo+ICsgKiBpY2VfcmVhZF9w
Y2E5NTc1X3JlZ19lODEwdAo+ICsgKiBAaHc6IHBvaW50ZXIgdG8gdGhlIGh3IHN0cnVjdAo+ICsg
KiBAb2Zmc2V0OiBHUElPIGNvbnRyb2xsZXIgcmVnaXN0ZXIgb2Zmc2V0Cj4gKyAqIEBkYXRhOiBw
b2ludGVyIHRvIGRhdGEgdG8gYmUgcmVhZCBmcm9tIHRoZSBHUElPIGNvbnRyb2xsZXIKPiArICoK
PiArICogUmVhZCB0aGUgcmVnaXN0ZXIgZnJvbSB0aGUgR1BJTyBjb250cm9sbGVyCj4gKyAqLwo+
ICtpbnQgaWNlX3JlYWRfcGNhOTU3NV9yZWdfZTgxMHQoc3RydWN0IGljZV9odyAqaHcsIHU4IG9m
ZnNldCwgdTgKPiAqZGF0YSkKPiArewo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBpY2VfYXFjX2xp
bmtfdG9wb19hZGRyIGxpbmtfdG9wbzsKPiArwqDCoMKgwqDCoMKgwqBfX2xlMTYgYWRkcjsKPiAr
wqDCoMKgwqDCoMKgwqB1MTYgaGFuZGxlOwo+ICvCoMKgwqDCoMKgwqDCoGludCBlcnI7Cj4gKwo+
ICvCoMKgwqDCoMKgwqDCoG1lbXNldCgmbGlua190b3BvLCAwLCBzaXplb2YobGlua190b3BvKSk7
Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGVyciA9IGljZV9nZXRfcGNhOTU3NV9oYW5kbGUoaHcsICZo
YW5kbGUpOwo+ICvCoMKgwqDCoMKgwqDCoGlmIChlcnIpCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiBlcnI7Cj4gKwo+ICvCoMKgwqDCoMKgwqDCoGxpbmtfdG9wby5oYW5k
bGUgPSBjcHVfdG9fbGUxNihoYW5kbGUpOwo+ICvCoMKgwqDCoMKgwqDCoGxpbmtfdG9wby50b3Bv
X3BhcmFtcy5ub2RlX3R5cGVfY3R4ID0KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
KElDRV9BUUNfTElOS19UT1BPX05PREVfQ1RYX1BST1ZJREVEIDw8Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBJQ0VfQVFDX0xJTktfVE9QT19OT0RFX0NUWF9TKTsKPiArCj4gK8Kg
wqDCoMKgwqDCoMKgYWRkciA9IGNwdV90b19sZTE2KCh1MTYpb2Zmc2V0KTsKPiArCj4gK8KgwqDC
oMKgwqDCoMKgZXJyID0gaWNlX2FxX3JlYWRfaTJjKGh3LCBsaW5rX3RvcG8sIDAsIGFkZHIsIDEs
IGRhdGEsIE5VTEwpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gZXJyOwoKVGhpcyBjYW4g
YmUgJ3JldHVybiBpY2VfYXFfcmVhZF9pMmMoaHcsIGxpbmtfdG9wbywgMCwgYWRkciwgMSwgZGF0
YSwKTlVMTCk7JwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
