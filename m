Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9F33F329C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Aug 2021 19:58:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D1F9A404BE;
	Fri, 20 Aug 2021 17:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86jvsMfXml5A; Fri, 20 Aug 2021 17:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BECA40527;
	Fri, 20 Aug 2021 17:58:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5FDB01BF859
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:58:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D9BE606CF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sBqvZI4Y3Vqv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Aug 2021 17:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05BF3605B2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Aug 2021 17:58:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10082"; a="216820775"
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="216820775"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2021 10:58:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,338,1620716400"; d="scan'208";a="533068590"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 20 Aug 2021 10:58:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 20 Aug 2021 10:58:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 20 Aug 2021 10:58:14 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 20 Aug 2021 10:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l9BJIUOeUYC8b7OMx4AQthHyOFPhel4mO2kkGXJ8bvLrEQ6YSjsKlAIcppPnpYh/owqZPy/W/qvWdvsYBPflsgnNuB40d1nv65KegWjdWOjfFBrbjYis34ucvLX+hp1ym7rFHX/LtvA8zCbKX5cFwpTPXXwCR8rbkjixMAVKnFaJw0GKa2uM8MEJe2/kli1F+BUqJCd6qAdcNBffHOFpz91/+X+XP3z1rXP3vaXN6yrSmfTDvi4hvqP1ZLmJ1Qb3QBFKzUYFnrBNIBTNJ+KeN2AafcP/A25fuZEnyBVlUiyRIp2pSA7F8X2O7W633ja9oJ0cilUVchaj7lhNK7E3pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U52DyHfpt7MyL7tuMZywFDHbjuCHjxrqB+p/sAwAugA=;
 b=a/PIbnqZekeZJO72qyqB4K/1KOaSgfkbZBMwHB46xMTaoW6kxwqz6XFVoizjmPEA8ML/L7SzOh7GCukLmpwt39Yx7wce2RRCa9Gb1gVLr//VbdmxHWa+yl/YwiMfnOglsNRcBQBn/7u7IkbjWTV0bUMpZIhgpCB1anmZwlbWRP/qv9Q4GXrqp8sfFLiu/c6Cx+cA5GZCdTzwgOBzs+erhswceBQfKqEA2OfWVUIQtdW+ldWICIPeU1NuBReZ66Qop9nLRQP+2+LyZAQqCi5i66iKaxbUqCRkqiP3zM0kDqbg4ttkgMkqH388sjjjQ2pZM4n3zVnbbidNuKLcUO3w2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=U52DyHfpt7MyL7tuMZywFDHbjuCHjxrqB+p/sAwAugA=;
 b=PNxNcrqO3mCYqe8wAL2nNFL1oFDtfTuguKHMM8y7dmAWhC0LDHycQn6qN4MswOIl2RZLLlwT0uWc1OAa6mu4s1Q8AIyKbhsNHHlCKc/p9FnFSSvAXgjmW+IiMiYsQ1RXP8HZqf3Q5lPGjUPqNTqORT7cbF3ylHkb/pvNgVq1z0c=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2589.namprd11.prod.outlook.com (2603:10b6:805:53::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.17; Fri, 20 Aug
 2021 17:58:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4436.021; Fri, 20 Aug 2021
 17:58:13 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>, "Brandeburg, Jesse"
 <jesse.brandeburg@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim
 usage and moderation
Thread-Index: AQHXlTC+495i3OO/BEebC0z0u2xw/Kt7Tp0AgAFh6QA=
Date: Fri, 20 Aug 2021 17:58:13 +0000
Message-ID: <86aabb2dd6051305786669ac45ddb9e4d9475bff.camel@intel.com>
References: <20210819192959.590146-1-jesse.brandeburg@intel.com>
 <20210819192959.590146-2-jesse.brandeburg@intel.com>
 <CO1PR11MB48352C797E4F83E105174C67F5C09@CO1PR11MB4835.namprd11.prod.outlook.com>
In-Reply-To: <CO1PR11MB48352C797E4F83E105174C67F5C09@CO1PR11MB4835.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f31870ae-0f4e-46bf-0533-08d96404143f
x-ms-traffictypediagnostic: SN6PR11MB2589:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2589DFC6366EAA96EB17C239C6C19@SN6PR11MB2589.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BHjpbosPnOqX8FLiIIPL6XwOcbIqNqoOfKCJF/7tKj/iT7kqrQWJvSJkpekZdSGHj1+qDyycdaAMeehtNXxo6GkN7UjNtR4hwJwkla1pT8U3Hx3EZW0pWSxFksNzVk9VxGuhqBMDnkPKGWPMCaETzu6hBXEjyMc7B6/80oLOB/kLWmREKagmBAZvqHzKFsXQ3DCtiTjiDgiXUH7Hc5q9xR5cPDn9nUtZciP0uUfguyvx9H5N8PDRrk3j+oGeIY5hgN3gowxalxmVFHImZq9Sd2sx6KsPK0utuAAbnzRLyAVvvHhaaGwpe8fDWFWdk3e7yRYM8RCNHD/W8c5AqD6Bq5GPuZCgjRXaY4sQXuNtqHf3+ZOotka3Es28jr8mBDSoLSdQ1HmhwfC7yXzD3R3NXb0qc7BBDcMSXxK9ublsGJ0fn/kYbslVhZC5KjAXqoqUHo+IBCZ/3tYYB540iHK5XnwYgLd+9ajCHzAABWoEgbU/6BV7wT3XsKm/ZBHloODT5RdgIfJ6bbbV5B9alRVTqk409G0CbMLa+ZKQu2hhO//Wnm9+FizQZTkChrw1jn5UL7030516MopyRpFYVe1EJf98DKSvdtnmey1HcAqmcpmDLKcb8gSRr98w4L5565qGK+knnguW1+P+SQ36YDhD7k0nc8+Ou4aeF+2sDxSA504PhZn7AVC3+JBJQCenw4KS4YCm0soZ34pM9QAWExAFCoRTbOEPUE/ynEvRl8dBfsRz4Rw+yJtUz2jZadh2prRJP5KJNpbtK2m98PBYz/YL0n1DBzOSoh8hjFxVcke1TUbp0qFWogLrl5W/VWNNUvCKUAevio6DCtSqRCWQ23DHkg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(66446008)(76116006)(64756008)(86362001)(83380400001)(66476007)(66556008)(71200400001)(38070700005)(66946007)(6506007)(53546011)(2616005)(110136005)(8676002)(478600001)(966005)(6486002)(91956017)(186003)(2906002)(316002)(26005)(6512007)(5660300002)(36756003)(122000001)(38100700002)(15650500001)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1FOWUJJeVpYc3ZUZlBRaUpNYkZwYUV3Ry83eHZQZU5CWjI3Rk9nVzlCd2pX?=
 =?utf-8?B?SGRMTFZ6Z21CN2hCMzRsK040OVFaVUZaazlHQTFtak02ZlFadVRCTTRSeHhx?=
 =?utf-8?B?RWU3czRsd0I5NjJoZFluMGhUZnhSRmpGK0JWaW9kTktZdktwYkdZYWNUZWdY?=
 =?utf-8?B?aHBtQVhjcGhtYmkrT1FUOGpsRGxsVkZKZ2p6MEt4Zm1OSEhjWlZzSDFxWEty?=
 =?utf-8?B?Zkk3R3VDYjQ5SUNXcU9aaDkyNk1xZStVb0RWMW9IcTNKSWpUUjJWRk1vU3FR?=
 =?utf-8?B?b0llbS9DOFRndW5raFg2eXdMK3RTZjBDQ3FLTy95eWErTTBwOUZwSHJxOFR6?=
 =?utf-8?B?Rk1RVXBlN3hJbEQ0em9ucHJPcFh6OEhzMUxacmx6dkE1NlBibEtRVVNkaDI5?=
 =?utf-8?B?R0FWVDZOV0p0cXlKcDBOcjhXZ1VBRHZCam8wekFKRTZqcU1HRW4vallyRjhD?=
 =?utf-8?B?cS9Lc1JLZ1doaEdxcFIreVpPUktqVkJ5REMyN1BmTGVVelBrRWd6OUF1SFNt?=
 =?utf-8?B?U1NzWFNUZVNyRGVYeWhqRWhYMmhyTmNmUi9ibTN1NU93SjBtQStnd1ZNcE03?=
 =?utf-8?B?MHRLRUM1R0Y2eVJDNUxYMHZGRU50alQ3U1BUSWFjRjB3N0VTUmRibDY1dVQ2?=
 =?utf-8?B?dzFadjFyemE1T3Fud3h1YmZkbmRUVGh6NDQ0ZHY1VjlkMzlVTWI1TDkzblQ1?=
 =?utf-8?B?dFJOTFE3QU42NkdERWs2ek4vOWZzbmtGMCtIcVovVCtLUnNFZE96MVFwVFdV?=
 =?utf-8?B?VVdyWXBvYURZQjgwdmxTWExJeExNTVZEUVB1eVpkaDN0d3ZUQW5nTFl3a0da?=
 =?utf-8?B?RlNjQlFLSkExVnNOMXdjd3V5LzVQbElKRlZUOEhVNnA5Z1FreVNZQ1JiYkY2?=
 =?utf-8?B?K0Z2b1JDaEo3K2JtZGxzRmVpclFUZUg4QUNiZEM5a2FIaVhlcjdTcFREWmhy?=
 =?utf-8?B?aVZWNW9USFBwSDBuNnlHekpucTJJenBtSTlDUXU0RWRseGtxUmlUOTB0ei82?=
 =?utf-8?B?OU9GQU1ZaCtRUHRiQ3ZSK2xQeHNBTU1nZWF5YXA0UzRWeTAvc2E1aUY3dkpo?=
 =?utf-8?B?WVd0MFp0TkE4ZS83WE1wdUtSUEVwdGtDRWJaMmUwWEtndDFtNytIYjNXMTZu?=
 =?utf-8?B?ME5EVHB5M21DZHJTL2lyaUwyOXNwMzdEYnFvRUpNODRUM3ZxaGhLeEttSk1X?=
 =?utf-8?B?bmFoU1FmOUxGQmxzNXNrOTdHanJQYWFIMWw5cVhRSlZyN2YvcU42MVN6TS9F?=
 =?utf-8?B?MkYxQllqc013Zk9Da2F5dzNFUHZMSlpDbU1xajlJeW1oakgrKzJhNWkweVZG?=
 =?utf-8?B?cEw2VG9HdG9MTWZHQURmeGZSbnRaMU9QV3FVbjRQdG5oOFVTbHpsNnhGSEc0?=
 =?utf-8?B?RG5MZjlFQkFrdjlOb1pVemxNeWNObjEvdm5uV013Rks5a2VCRFpEVWc5cFd0?=
 =?utf-8?B?a2xTQ2h1UjJhbUpoRDhlcWIrTW01bWNDckd5dDhJclIzcjAyVi9EVk92WkN4?=
 =?utf-8?B?ZStZQVJ4ZEZBSTc3M0FNYVZzNjhRbm9wWUErdlN5V1NWdzZPM3hkWnJnZFU5?=
 =?utf-8?B?VUlldENEbnlVb1BmQnIwZ01nM0hWSGo2Y2VpSUFGcTBGQmlERms5cVoyb3pQ?=
 =?utf-8?B?SENnS1ZYbXlFSEk1cVRueXN2SlhIM3VDcGhzVE15TW45T3F3LzBHcnBRY1Rr?=
 =?utf-8?B?TmN6K0szSnIzdzl4V3kwbmdLYjJPYzNvZGRTTEcvSW5LdFZwWjA4V3pQck5Y?=
 =?utf-8?B?NEVENThLcnBQckIzdlFFMWtiVUhDRnEva3pFSUlBeTdWSHQwY092by9tWGNu?=
 =?utf-8?B?dW1kQmUza05KaUlkYzhBZz09?=
Content-ID: <44188579DF2D94409F7D3800A9874512@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f31870ae-0f4e-46bf-0533-08d96404143f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2021 17:58:13.0747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DIdvybaNn8U3NIELsQzMgdv9JOFL5TxVcSU5s0wi/1g4UNi0+g42sdNxG87WnFBiQgaXiJKymSzrkt5JDz8utHkAJ12soufX+L8aT2rezcQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2589
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux: update dim
 usage and moderation
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-08-19 at 20:55 +0000, Creeley, Brett wrote:
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On
> > Behalf Of Jesse Brandeburg
> > Sent: Thursday, August 19, 2021 12:30 PM
> > To: intel-wired-lan@lists.osuosl.org
> > Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] ice-linux:
> > update dim usage and moderation
> 
> I think the subject should be "ice: ..." instead of "ice-linux: ...".
> Same
> goes for 2/3 and 3/3.

I agree with Brett. ice, not ice-linux. I was going to fix that up
myself, however, this isn't applying after Maciej's series [1]. It
looked largely due to the split of ice_ring [2], but I didn't see if
there were other conflicts. Could you update and accommodate the
series' changes so it'll apply?

Thanks,
Tony


[1] 
https://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=258748
[2] https://patchwork.ozlabs.org/patch/1518639

> > The driver was having trouble with unreliable latency when doing
> > single
> > threaded ping-pong tests. This was root caused to the DIM algorithm
> > landing on a too slow interrupt value, which caused high latency,
> > and it
> > was especially present when queues were being switched frequently
> > by the
> > scheduler as happens on default setups today.
> > 
> > In attempting to improve this, we allow the upper rate limit for
> > interrupts to move to rate limit of 4 microseconds as a max, which
> > means
> > that no vector can generate more than 250,000 interrupts per
> > second. The
> > old config was up to 100,000. The driver previously tried to
> > program the
> > rate limit too frequently and if the receive and transmit side were
> > both
> > active on the same vector, the INTRL would be set incorrectly, and
> > this
> > change fixes that issue as a side effect of the redesign.
> > 
> > This driver will operate from now on with a slightly changed DIM
> > table
> > with more emphasis towards latency sensitivity by having more table
> > entries with lower latency than with high latency (high being >= 64
> > microseconds).
> > 
> > The driver also resets the DIM algorithm state with a new stats set
> > when
> > there is no work done and the data becomes stale (older than 1
> > second),
> > for the respective receive or transmit portion of the interrupt.
> > 
> > Add a new helper for setting rate limit, which will be used more
> > in a followup patch.
> > 
> > Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_lib.c  |  25 +++++
> >  drivers/net/ethernet/intel/ice/ice_lib.h  |   1 +
> >  drivers/net/ethernet/intel/ice/ice_main.c | 118 ++++++++++++----
> > ------
> >  drivers/net/ethernet/intel/ice/ice_txrx.c |  73 ++++++-------
> >  4 files changed, 130 insertions(+), 87 deletions(-)
> 
> <snip>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
