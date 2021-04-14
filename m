Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF4C35FD59
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Apr 2021 23:36:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A4DDB84427;
	Wed, 14 Apr 2021 21:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7XWwmyp6vUXJ; Wed, 14 Apr 2021 21:36:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1343484431;
	Wed, 14 Apr 2021 21:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B5631BF94D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:36:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01D3D6075E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:36:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HACKLK6L-KyL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Apr 2021 21:36:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 098966072D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Apr 2021 21:36:21 +0000 (UTC)
IronPort-SDR: 88yOVJAHokgExqHeIlL6+wdt5dtp73ILyX6U13HTuo7XJDCAbuKIqYn0apeadkvEUZA/91TWMc
 nf0N6uz194MA==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="191555435"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="191555435"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 14:36:21 -0700
IronPort-SDR: Sdk+wCy+OSq9bZTcE8K6844+E+W4PI7hGcfiRfWff0ToXPLNwv3Ad8imBua5z645I64ceLu3zd
 CoOhXJBtnjkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="461375956"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 14 Apr 2021 14:36:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 14:36:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 14 Apr 2021 14:36:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Wed, 14 Apr 2021 14:36:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Wed, 14 Apr 2021 14:36:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WSmpeFGQbH8GB1425eJjO9YcgWfzKFmeK9wDoD9SfS/o743nOCbZ3AgYno4Kz+tIVDhGThpI4II+oSChZS7AZ93fC6AXMW6rVl8/bh2Wi+Slcl9GRFoK/Cf6us+YbdhdVl6QF3LDDEtEJQYGl0g3xIc3WStNVApwlpth62sIMjSwDHcAfVrGgl2IgHh+03Oq6xH8zcYAcpPQhk5uaQeJhlRm10cnblXhYRWapEP/I65TnyOJ2QByuW5f8Wk+sMLnq56OenwIXZBCZlVr6IAdJIzcYZQ42zCQ77GImxHmjPHpbtLSfS2l7h9idF02YmPlwFQlqwOs0Klf+zglbuHn5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3H9i8Vs/lKE5RIEi4/lCQz6E3EUqpMgZltyEiIYC8yM=;
 b=XzWfDFvHBYxm7HF9Q5aVA6zbwhxygfSzaQP3R28EkzUZ7RsUDx9KNFfVfFOEPuf2fjvDdls7Kl25eGBKcFSv9olyPxmiJXG69EUzDNN2XVduV9NCFxVuQVA7hqrGdOqB6vCdMbChYdWxP7+q4X1pnGRLP+XBIiFNqJOpnXutqpqJMp4GCI73hdwmoiUlnulkD9UxbXwKS+WQtdQf5Iz3fjp0cAdplCENwZHXoclYPodCKioBcykJHhisXVZzYergZiH+8ZAShIRNJEAMQ3boYpmB/bQ5Y/2ZQMHbJlxsdU4O0R52dyq6cHroVsqpOAk1GHyquxwCuZJX/6QIMZ6lvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3H9i8Vs/lKE5RIEi4/lCQz6E3EUqpMgZltyEiIYC8yM=;
 b=s6k7z6qd5xIPjxfb2G/JWXZhh+1Fb8Vp3rDCnQqzVrR8OrMhio1TE/odiyAZgizhFj+VNC8TU3PSQOEmkbxfAUjBKCdj/i+r8GjS5fKxb0TyOX7A7DpPvwGA7GALQs7PwQuw4W0H5H0Ciz2NrK/5UjfnCfFRzsiID82hgyVplUs=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SA0PR11MB4575.namprd11.prod.outlook.com (2603:10b6:806:9b::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.16; Wed, 14 Apr
 2021 21:36:19 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::7ca2:37ff:9cbd:c87c%6]) with mapi id 15.20.4042.016; Wed, 14 Apr 2021
 21:36:18 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart
 auto-negotiation after FEC modified
Thread-Index: AQHXMHAgPhxa502HNU+qRb5/Ch2B2qq0i4aA
Date: Wed, 14 Apr 2021 21:36:18 +0000
Message-ID: <4b49fd986e95b5c3c46cd244a6f8166b23654062.camel@intel.com>
References: <20210413141940.3456-1-mateusz.palczewski@intel.com>
In-Reply-To: <20210413141940.3456-1-mateusz.palczewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cbcc3e4a-12cb-4145-de63-08d8ff8d5712
x-ms-traffictypediagnostic: SA0PR11MB4575:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB457583857484AF5DAE9990D6C64E9@SA0PR11MB4575.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QI8u9kOBZo9kYRwcjM5g7UrYaXDZ0CYy2HLJlzYAM31Jvw0z6x9XaaVfDwRaHdOB0w0nzLIyLAx50sO3rwBS7IetCHTszppMVuH8QOO4vFZq6U+Tjq7sE6IC420m5yMG6MtlBNikRN0dhiVXV5ucXlzaVodImlfieZewgZ2f5vE22TPFEpSynb+3BzF1Qgy/TjHanX3ZydqPrR5jODR7CASavuPVtCMA5IeVdiC/T6tkR2QsLRh9uruBLjVii2vMaCp+XBesEcP5N95g091C8oT23vlnDUiEGUZRDL14tb8S6mMdszSF0Vd7HtaNVJLkZeDgUsGEBA5ImKeG2w8Kt0tn7R0+XvbEW3P6kbIbWFgkVsZUV34lM1yu+PWaGCYbnqgefToN8II3utMmXbxEscaPTNKs5ghUL7LMNhfbLwQ2a1qa+mi6RmkQ7q2hUel+pP+ZsUWI8Vziwy5msOqGFz2XoIZhX3cDpOh29+1osQCtKLgV4NvIM9u9benUiQ3of3zxF7kJylScO3FmZ1BiMEYImC6RSTovANHucFXL5Cs3b6s2TE6st3O3+O5+Au21q2QPpzlc8XwEpFAPtiAfkiRt1J6SKxaSeaZ06Zi3ikb4eaFuQOTt2/JCszxnmkL8xAkBJFDulpFm9tNlDG2XIU5xAGBGWQZYDqjWLBLG6baDydz5jhPeX3IEyfCxQjQ2MuhkZCn9ufHCwY4arLjwMFK0V11E3JQfo3jo7QaO/wI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(39860400002)(376002)(396003)(366004)(26005)(8676002)(76116006)(316002)(186003)(966005)(38100700002)(4326008)(2616005)(8936002)(6636002)(6486002)(4744005)(83380400001)(122000001)(6506007)(5660300002)(2906002)(110136005)(71200400001)(66556008)(64756008)(66476007)(66946007)(36756003)(6512007)(66446008)(91956017)(86362001)(478600001)(107886003)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WFdFR296NE1aTCtoKzk1UVNxUTFScHBPc0VWQWRTOERNZVQ3dWhoS2pCR1Jk?=
 =?utf-8?B?YU92UGptVG14Q3BETWNJTWtmeEZtdkV3MW4wV3hiaEZmZGZkOXZsbXRWRTZ4?=
 =?utf-8?B?WDlpOXRiQklGU2pMMlFXcEFjeDQxR3F4YjlKNEdCaVdCTXJJQVozN3VIR2pK?=
 =?utf-8?B?d2dGbXpya1RHdno0S015dUYrWi9aNG4vU051RWNwNVRBajMyditiU3J3ek1H?=
 =?utf-8?B?N0NsSEtXcGFWK1Q3NWo5M3VwMlRmRUNaaUtEaTE1elFBZys4UFIzY2VueEdP?=
 =?utf-8?B?RTZzcVk3YVlZM1hqRTNWc0I2NnN2ZmVVYk9renE3STBiZjFOcnBja2NUUEow?=
 =?utf-8?B?N0RGTExCWWVRdVpXaTluQ0FBOFl6YlZtOUN3Wmh1NVNiUnpicGNSbURTUm44?=
 =?utf-8?B?bVNiM3hmQzU2d1JHWlRmLzVzVmF0U2JpMTlxVTFuRmN0bmRUamJraUZQamdE?=
 =?utf-8?B?K3VpTFFpT2x4Nzg0WkpWMXVjc2l0UHVjUDRQcXNSWENpOWRjTnFlS0ZLaitx?=
 =?utf-8?B?eEwrSUZvbzdsNWVVdVBtbnlncFFUNHNGS212ellINzdSWnhWZUU5L1JBZmlV?=
 =?utf-8?B?VjgzNXJ1Yk03M3F2ZitrZHF5YTBnODlvQ1o3WjVybnlRMnA4bllyZ3MwKzBi?=
 =?utf-8?B?Z2R5S3VJOUQxSjNkSll2aTJhUkhkRkNONHIvd0NqWVJ0Y2ZzbXc2WE1LSW4x?=
 =?utf-8?B?cHQ4SUZCQUZEUHJYRVJIeUtxSkI2a2xGUVBMUldSZ1NPbE9nSHlDNEsyQXZa?=
 =?utf-8?B?VkxQejJBRzErS2lYUkhpZE85UUlCeTJTeS9XcUY4ZUlycXdZdmRHN1d0SDM1?=
 =?utf-8?B?NVUrS0J0aHYrRGtiR3VPekdLSHhheVI5N3RyKzNmUVNVQjI1b3YzdEpzbnBa?=
 =?utf-8?B?NnVzQWJlc3I4cFV3cURNcUZ0RkpRLzljOFBmQ3VUaWp4VStiY242ek1Obmxw?=
 =?utf-8?B?N0RnRlB0a3pSWG92K01JUHB4VG1mVllvaVE2ZHpSV29LNmsvelNFM0JPQW5N?=
 =?utf-8?B?RzU5MTNac1llUkJwVXIzWEVzQzF4VmtyNTEzSHA4ZDhlVXRyNzJQOGpvcUZs?=
 =?utf-8?B?QTdKbXZ2ZFV4R2xIZVVtRzdlSlRHSGk5VGVoSkI2TnAwemRQaXBnaTE5QkRM?=
 =?utf-8?B?dy9uZUFiNUJpTWdpMVZoeG5RVlpiRVJmQzEzU1dnVFlaVHdEOW9pR2U1RUdY?=
 =?utf-8?B?dlNuNmJaTHBvMEtkclpUTXVVaWdBbjhRUnBtVVZSMnFJRjhaN1hPNWRVaHRU?=
 =?utf-8?B?NXk1b1huTThRRFZSSFJ3aVB6bkJFZCtqd2UxVVpiVXJDd29EYVRIRHllSnkr?=
 =?utf-8?B?aUZRelBHM0htRHd5UkVEVXloL3I1VWZvaGtuQmRrVDNIeGQ2bG9BZ25IZW5v?=
 =?utf-8?B?RnpVUHZzNWRvTGthT3A0NE5WVit1LzdoUVBlcHFTQkN3cGs2Wk41L0ZpNlZq?=
 =?utf-8?B?aGJlZjVTTGFXa3E4V2QvTlplL1VTNUIzTWNnNW8wc1NKcTNGOXlLeklCQ1k1?=
 =?utf-8?B?c2pwczUycTNhTGRBY3JxakZ3T2J6U3RCd1RVNU9jWEh4UU9iKzQ1Qlh5K2dY?=
 =?utf-8?B?SEpZdFI2U2JtYkYvbVRmRksrWlBDQkhLZEtvWWpJMnU5ZGdCZ0p0MFk4OVJq?=
 =?utf-8?B?N2s1QmI1Y3ZvQnBCQlVhbG1zQlpEOGMvT2JNS05hY09QdW1qTjBpejhyamtK?=
 =?utf-8?B?RlE3VVJ2eWo0UlAzT3FMa2IxVlE1R0h5WnAvSWREMFZ5YVBUMldjK1c2eWdx?=
 =?utf-8?Q?eF28I/MEeE2ZVXr1Vv6sjL+cG44nyFp1BW+p8Ll?=
Content-ID: <EAC0FC496A5C194EB831B1ECBCF03278@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cbcc3e4a-12cb-4145-de63-08d8ff8d5712
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2021 21:36:18.8041 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m1fSpD40ICmGmuEn6nmCJcxuMVnBxQBC7q/ErTe8YTUtBEwHKpZyBXDFBcxf/u83OhEYGv+sDjUdXKpyz++nyTlUMG7wEB8TNIhKilL/LWE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4575
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] i40e: fix the restart
 auto-negotiation after FEC modified
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
Cc: "Gawin, JaroslawX" <jaroslawx.gawin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2021-04-13 at 14:19 +0000, Mateusz Palczewski wrote:
> From: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> 
> When FEC mode was changed the link didn't know it because
> the link was not reset and new parameters were not negotiated.
> Set a flag 'I40E_AQ_PHY_ENABLE_ATOMIC_LINK' in 'abilities'
> to restart the link and make it run with the new settings.
> 
> Fixes: 1d96340196f1 ("i40e: Add support FEC configuration for
> Fortville
> 25G")

I've fixed this up but please note that the tag should not be wrapped.

"Do not split the tag across multiple lines, tags are exempt from the
wrap at 75 columns rule in order to simplify parsing scripts."

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

> Signed-off-by: Jaroslaw Gawin <jaroslawx.gawin@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
