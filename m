Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2AAA4004B2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Sep 2021 20:13:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6473583EB8;
	Fri,  3 Sep 2021 18:13:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yZvfTey_SSXL; Fri,  3 Sep 2021 18:13:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E85783EAA;
	Fri,  3 Sep 2021 18:13:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6AF8A1BF321
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:13:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 527AF6156A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:13:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXFXj8cwKzU0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Sep 2021 18:13:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A4C0560729
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Sep 2021 18:13:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10096"; a="280495168"
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="280495168"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2021 11:13:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,265,1624345200"; d="scan'208";a="511560451"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 03 Sep 2021 11:13:10 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 3 Sep 2021 11:13:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 3 Sep 2021 11:13:10 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 3 Sep 2021 11:13:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfMJoFl3KwkSh+pVA8fkTcQOB5F++wuTWZYpLcO/rzsBtFiMlulWfZYfBCBgqViroxFXXyYrkKZOolOeMOHesVpQSwDeXegaL/zoIyyj1kZFc3QQk+Wyt48587mTG8UWUefjR+425tX5Q0ynddo4nbssj30vJ6LE9QKJYxRolpRjNlxoTdjGuTIU5E6JPeWwU6rB79eZWS7A5ns3ZOElAzW3reyLLCIXwb6Yrc/i7qDvGpwAFr/Mi6aBLtUd+d3AesrzhS4U4CwC3AKyR8s2jiHB2fCGgdYEsmUyciNoEkzeDnv1aCFxlO282qrYd2tP2a9/3c0uR4c7lcStLl8KjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=Fy2kASDR6Ka79Jc7z+rbB7oVGLYS+9mzhb64mHRATNk=;
 b=Fi85X84wOKQYKvQ6IEdz4ksGyMoRoQyTz20c5Vrtd8wk81JkmnKthaBT2EoHeMUr5NVs2ad1o3wTQyqfOUR5sy6Akq9PkgVvkGR3X1kC+HD0/U0Xn2H715aRnpdWskzXLzgbBKutPixpR+eKnsFATImBZIDPiLvWX0CjLdAli/72kTHW9pr6j2Hdw8xgLoYPeqqmGTTVZdokP4JsD9Yxc6n7uv51xgTp8kMX9d4IZLJl0N8RVnQkzDZdc0F1DimMcqe8daTbVAgJ9QUPzk5+L5i3Mma7g6glf1UJe48/RYbIDWlDoDEQnSPbWAAKCeLvIApf30kSrbUTJu8V7KWPGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fy2kASDR6Ka79Jc7z+rbB7oVGLYS+9mzhb64mHRATNk=;
 b=yfqD1ZRSVEuZCmo/pc63nYKCCTpe/3d+57d96Hm6Fl7IOmYQ1a7cYi4iUt6GWF69w5cuNTUD++gTGwefwwUoigWeetr8Q5Pos1y2/aXC5fYB5SYp7wVf2LI0hoxSwNy6acIyvTc4U35DLTJfy6vbh6pbvC57+PpdlZ2Tp8Kt3fo=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2704.namprd11.prod.outlook.com (2603:10b6:805:53::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.21; Fri, 3 Sep
 2021 18:13:07 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::4e0:837:41ee:5b42%6]) with mapi id 15.20.4478.021; Fri, 3 Sep 2021
 18:13:07 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation
 scheme
Thread-Index: AQHXn9TDgLn9MstVjUy4VIvi/w57aquSoBoA
Date: Fri, 3 Sep 2021 18:13:07 +0000
Message-ID: <cdaf89f57f9150b13c569259d6a767f9fce8c9f1.camel@intel.com>
References: <20210902082846.49744-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210902082846.49744-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4c1859d7-f7e3-4c86-cbf3-08d96f067b30
x-ms-traffictypediagnostic: SN6PR11MB2704:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27045F81C29D05216C118E89C6CF9@SN6PR11MB2704.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tVBOFr8VVvICmJ5x2wxVPYieX+zmuvqQwHq/qzFOTmRdrqJEB89wRUtDHFi1Uxhr7Bi7/3/l4wZZqHdmlmVIiwoKkiSEyEy91xFOlXXBCVwOs+GjaYdiPlN78esJGMXgfMqtpouR5UQ9E2o9apJuFUSr6jxUYIB7G/AxoleAfD1MvUqEAq25xOYXdyBVXDAZ0vFzITQnRzoQC6XGjPfNRo+r1WMmLZubRqIlWLywC6wSuPPoHP3j8euHWXrZ0Hy9yREX8tftoh07kXQU7fd9oajVsN0aPMDF9D0guROzCFaXOI1uVF9uJUueLJYIQlCU2BBVoaggG9C0w1tvZTmW1CfdgYo0eS7IX6zrQVgCj6DacNR8aEdCwePFAgS0V1xa/fZmsKe3BBfhguIf/zcGqWjcuu/3h1FBiUZS7CQYIij8RuvOnAePPLEVx5o9FGcoplAzoURL6kJHC31OkHt/p9FHMygyFPXvgI3NqOF3vIIGrghN8rvrG7XHXuoaCJ/m32uCnD5WEe0q9O2XsCbhVPYA5VcprLSN/yD3ouv6rNZG9ta20+E2gUQ2TW8eT0DUWcEIZNFnli0wy5TV11HnuQwHHm1NVH1eha9+irdUXbSzeo1FV7Ay71OaDOPutDZt4RDj/wLkXxt4i0VBl+9f1fOlD2q8UiMNNfIBbvYaLd0k7epxiao5ueDuat3dXPaTFgHc+xuLh1CdUTATLPzOHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(86362001)(38070700005)(2906002)(91956017)(38100700002)(36756003)(76116006)(4326008)(6486002)(107886003)(2616005)(83380400001)(66556008)(508600001)(110136005)(64756008)(26005)(316002)(54906003)(186003)(8676002)(8936002)(71200400001)(66946007)(6512007)(66476007)(6506007)(5660300002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eDdZYTZmeVdWaERiMm5LWGE0UFJPS3hNbStlNGJaWFk4TzBIUEp6QVF5Y1o3?=
 =?utf-8?B?ZC8rT1poa2pRVmdVMXBEeUtvV1hJOHl3MGdYY2tscjNUM0pzaUtoWlNoUDM2?=
 =?utf-8?B?bk9jTStLTFBIeDRneEUrSVFNbTgwNS9GV2plQy9DRFZ5aUxEeG1Sek9ER2RE?=
 =?utf-8?B?cHFoWGtjSzVWMXp6aUZCWXM5WlZDMWhnc0xsNW9FaDZKT0dQMHFINlYwVmZU?=
 =?utf-8?B?Z2RTdVYyRmF6TWRRM3I5N1VXb3pxQUszMWtIemREWVpFNlRYVElGNjlRZFpl?=
 =?utf-8?B?Y0EzREo5OWkvdk15bHozZFNlbzF0bGpPaW9qSUpETWxNM0hmaTY5a3JQN0NM?=
 =?utf-8?B?WUprcDVHQTczS0o0RnhEWWpNN2Y0bXYzdTY2bGFnbnBON0xYNW9sclh4eW11?=
 =?utf-8?B?b0NGeUN1Mnd0NTNEQWtrbENGdHk1d1d3L3BGeDJjUFUvZWJVcCtJejk3VG5n?=
 =?utf-8?B?STZwSUlOb1Fyb3JHQ3ZvbEE0dTZBQzIxRkRPeFhoN1RGOHVOWkZKdmxQcThX?=
 =?utf-8?B?MFFmZ3Bic3hrQUJYajRDUGZvWnBVNTl0UWE4aDFWR1NkS05yajFYUXh4Wlgy?=
 =?utf-8?B?YkluUFVKT1R0dlhiYURxblZxQWVaaml5bk04OHJscXB3dDB3Y0ozUVN6UnpU?=
 =?utf-8?B?SERiMXdrdWZSUUVWV3FBUE1IckkrQ0JXUFY2WFF0bnRva0tCZkY4dk1IeE9s?=
 =?utf-8?B?Q0prWWVqN24xaVY3eU5ZQVgrdnpBZDY5bVFZcXRjL21Pa21jazVuYWJieU9S?=
 =?utf-8?B?S3Jxdll1YUc1VGYzODUxR28yc0NZMEJUZGNrMmkwMUsrdjdMN0VCeDhLL29S?=
 =?utf-8?B?djZYVDRrMm9ZQWdPMklPaXJhZ0VtQUlmYzdRS01QYUIzSC9EaHpUcFM4Sisw?=
 =?utf-8?B?a3RnT2g5TE9KWXFnY01yKzlzR3dkd1RmWEIzQ0oxSDJrWHMzNCtieFM5Y0lq?=
 =?utf-8?B?eUl4LytHcUd3OUpXWHJEMWNhZkkwdElFVmJnYURkeXVGZTdNUVhwUE1zdDBT?=
 =?utf-8?B?MnNpYldiVjdXd3pETXVyOUE5eWo4bGcrRW5NbEJBUWZCTjNHK0lvcXBmRGxB?=
 =?utf-8?B?ODliUGNKUEFJUEF2L3ZSalVGUWZ3d3FGcm1INXNvSHlSOE9wRmYvZndmZ0pa?=
 =?utf-8?B?bjdRUXpRd2lqc0NGUlhNSE1ycGZwaUdHUkd5eGY4K0FnaEVSVzAxSjlMR0RO?=
 =?utf-8?B?K1lGNW90VVNNZ283dHNzd3cxZ0RXSjVMTVMxLzNLZ1M5YmdZdEJSSlhESmVQ?=
 =?utf-8?B?a2U2NXNXSVQxdUErU3FvVEpRZW5meFZLSllVZWNoYlp4dEI5M0RValY4cE9K?=
 =?utf-8?B?VjJmaHczQUpqQk80U3JuYXVTTWNVTDZnYmNONERXaEhoM3lIUlJ2dFJBWW5u?=
 =?utf-8?B?eHpzTzZjSnVNemp6R2toR2JIZWsreitLR3VBbjhPY29Edmg5RUJJTTJtM0Mw?=
 =?utf-8?B?Zi9MdzVEZFE5Q3UwMDAyVlJ5czhycU5ZeTZ4K0RNSHM2eHRRNjMxVTFWQlJN?=
 =?utf-8?B?L2lkWS9XOVZaUDJIMi8xZVhxaEQra09Qd2d4RjExaFI3N0dsdjRPL2txNTRL?=
 =?utf-8?B?VVdmamg1OU9wNFkvQ0xqMWZQcUQ4dUpuUHMxdlRmbG5OcG5YSDVESGZMKzJB?=
 =?utf-8?B?bGRXczVHZDdUNWx5MmRHN2hzT2t6OWJIK2pIR002ZXhKc2dRTDFxSDR4emJE?=
 =?utf-8?B?emdMYmJGYjFCd1dGSS95MXpINGx1SUt6cFV5Zmk3VHVqbWU1ZloyZnNqbFVh?=
 =?utf-8?Q?1LUC9wjzwNwFg5WlxUUSY6chGLIjNO6ZT4RW1C3?=
Content-ID: <FF7D299BDA75644D8FFD8ABFF7F7DBF5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c1859d7-f7e3-4c86-cbf3-08d96f067b30
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2021 18:13:07.6028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 71raCLQU9jncRz4aRokhBUpyVktu/hoV5c5uATzyFj4hZr5bG+HYtAPdrfW3dxmaSVcUKzqxaEhujN709OelpAQQodbp1wgbY6jqHnOoP3I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2704
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix queues reservation
 scheme
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>, "Cieplicki,
 LukaszX" <lukaszx.cieplicki@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-09-02 at 08:28 +0000, Jedrzej Jagielski wrote:
> Depending on the CPU count and NVM configuration, PF reset and
> rebuild may fail if more queues are allocated (e.g. attach XDP
> program),
> causes kernel NULL pointer dereference. The issue is that during
> rebuild,
> FDIR VSI's queue pile is not zeroed, despite no VSIs, but PF
> exisiting.
> The change causes all queue pairs released from the queue pile.

This patch doesn't apply. Please fix.

> Fixes: bc7d338fbb3f ("i40e: reinit flow for the main VSI")
> Signed-off-by: Przemyslaw Patynowski <
> przemyslawx.patynowski@intel.com>
> Signed-off-by: Lukasz Cieplicki <lukaszx.cieplicki@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 24
> +++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c
> b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index 000991afcf27..61ec0b6c1d05 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -196,7 +196,7 @@ static int i40e_get_lump(struct i40e_pf *pf,
> struct i40e_lump_tracking *pile,
>  		return -EINVAL;
>  	}
>  
> -	/* start the linear search with an imperfect hint */
> +	/* start from beginning because earlier areas may have been
> freed */

Why the comment change? I don't see any code changes and I'm not seeing
it start from the beginning.

>  	i = pile->search_hint;
>  	while (i < pile->num_entries) {
>  		/* skip already allocated entries */
> @@ -227,6 +227,26 @@ static int i40e_get_lump(struct i40e_pf *pf,
> struct i40e_lump_tracking *pile,
>  	return ret;
>  }
>  
> +/**
> + * i40e_put_all_lump - return a lump of generic resource
> + * @pile: the pile of resource to search
> + *
> + * Returns the count of items in the lump
> + **/
> +static void i40e_put_all_lump(struct i40e_lump_tracking *pile)
> +{
> +	u16 i;
> +
> +	if (!pile)
> +		return;
> +
> +	for (i = 0;
> +	     i < pile->num_entries;
> +	     i++) {

Please compact this and not put everything on its own line.

> +		pile->list[i] = 0;
> +	}
> +}
> +
>  /**
>   * i40e_put_lump - return a lump of generic resource
>   * @pile: the pile of resource to search
> @@ -13966,7 +13986,7 @@ static struct i40e_vsi
> *i40e_vsi_reinit_setup(struct i40e_vsi *vsi)
>  
>  	pf = vsi->back;
>  
> -	i40e_put_lump(pf->qp_pile, vsi->base_queue, vsi->idx);
> +	i40e_put_all_lump(pf->qp_pile);
>  	i40e_vsi_clear_rings(vsi);
>  
>  	i40e_vsi_free_arrays(vsi, false);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
