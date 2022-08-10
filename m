Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0170658E776
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 08:57:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F80B4155F;
	Wed, 10 Aug 2022 06:57:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F80B4155F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660114643;
	bh=C7e5i9DZZFmEZxFIsfBDi67NPjMcsFvjRgX8pXxl3f0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lrpM4myOPkid8+rPcLn+tdgwCtl8HKXBd9GBVXxv35gk9R/z4PvtyQzrIPztCBeAE
	 SnVTUPZTZxjUnsE6UP4sxt3cL7l+6qALN6ZtwS32GYRzkosW69EnYZ9geA98PWsNmb
	 z8PkmuQywCOqzW3w2QoIgcUiw+EhzYTJMO4VpCuMPlGExL46e9MGsH7ZXHlwOtHjwe
	 uyGdsWHDb8HxGgH5BPTEEELNw2y6oyi5U2aDmmgSIKG7UioBcoT2AC23pn3LNMZ4b8
	 EgyujhIHGZr5We2F2GQJloAbJeYok0h5W2MTZm3x4ffm5iTVzGKgAHIjIfO3dcI8KK
	 4GpSnI2NRqIIg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CFXF4bOIn65V; Wed, 10 Aug 2022 06:57:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 266CF41503;
	Wed, 10 Aug 2022 06:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 266CF41503
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FCE81BF332
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 484E28142F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 484E28142F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id olYVfgiB-uJK for <intel-wired-lan@lists.osuosl.org>;
 Wed, 10 Aug 2022 06:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 898268142C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 898268142C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 10 Aug 2022 06:57:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="277953271"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="277953271"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 23:57:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="664769641"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 09 Aug 2022 23:57:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 23:57:08 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 23:57:08 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 23:57:08 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 23:57:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fd20/34VQ1yYCBezvQPtGS3oycVHU4mV0+ZvxGReXXH9DmvGDcI1+eE06ZEruic+45TdgDK+j6v8jhXfKJCR9ASPMS2cAd0TUayLOqm0rPzPA+bMNpniRgyCJH0hwNO7epVdaDHVtIUeqqlgOoOCN1zGtIh1LzFqeayN1ybBBUcc04XfsE4HlztAdIAy4rxGdy39vkmiyycxXi857NZqAeoUNZPvehTC+SaBWUV3rT6n8rBel9hci7viR/lud9L7kkOOaHafs8YcHAyxUFD09MHBWN/QSojEEP8SNME8pMCnS1beJ+c/l5vqT63m0ivfzIFPA1k+R8StJpNPypEibA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6JtuzUPMUABkpmpxw8Ey2ikOYUgEtKm743SoFavYLs0=;
 b=eXuSSC0hXGtpj8M9IB95Ona3yTYlRJUyTuW/oHePuTdvB84St9CWOeHADpDWi2PhJ1IXuEPPYefcGzQuufprDDNAyBdgyI0TAJfkJSnMt5strtgD1QvurnEhOobvRPdg1P/ztXjna7ATJm8OSf+DQ18PxwgwD995+oHV9ktJkyIAey3/T6wnwhVIova7tuwGMB325WLRJ4VEtZ+77aZ+naMhXq1RHOKlPSA+7szz0a6eDcVEoQhcSUmbr3/7Qe0ddHtvL1HHy6dJwvFyaNWh/nE3nUdJIIkSuENPQuQ3d2wfjtTgw4JnTpBRXWhk5Sk1B/riTv+GvKt9z4Lf7qmx2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by LV2PR11MB5999.namprd11.prod.outlook.com (2603:10b6:408:17d::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.20; Wed, 10 Aug
 2022 06:57:07 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5504.020; Wed, 10 Aug 2022
 06:57:06 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next v2 5/6] ice: re-arrange some static
 functions in ice_ptp.c
Thread-Index: AQHYog77vV5iOXTYJUyTWrW0mMKMFq2nyIOg
Date: Wed, 10 Aug 2022 06:57:06 +0000
Message-ID: <BYAPR11MB3367CE46693FB9A6634B7F1EFC659@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
 <20220727231602.1625980-6-jacob.e.keller@intel.com>
In-Reply-To: <20220727231602.1625980-6-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7b430d5e-9e33-4d0e-cb00-08da7a9d89f1
x-ms-traffictypediagnostic: LV2PR11MB5999:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qo7IxLrqCQan6bTsnvwqklC1f90gGXObD90gYy7QeUGt/XGvHAAAhvlPnaWxV7Elg0tRtEQPXYHJ7TSVIFxX3+hS+hSZ/UmEWq/+/Dn9CGq8M1tOUVtVXy1DyLGeHdsunBtrrq0Lfo2RN24hChwmGvRDcI+zmgfU9TyNhk+EWFddTgDRs0BMbJlON/YPn2N1uze1OPwXxWcILzj4BN0zrKRgk2l1XE6cQnFdIpv6hpahWdqZHcmHp/A+elyqMwFqX3I64TmwKq8bHJ3Gvz5kNP2RcPKalh1zcmJ8FjjzpvQwhz/rIcHjx1gDnXvfZf02fhVOl0yq21DMDLkJuW6kLLTn81tb/lEE7vM6X1FlyJ5uMwWVpP5m+jiEBZZxwlpjPXNwmDFZ5F0tHmM085KJ+gie9rmwR09v/4TVWLjynup4Z8xUU/IA2/zF9RQ3hYwdnQzF8PMvm8+sYkKuPsIJsWs/hHFWbokDbkWsNGPvZAjBVe3oFLDAWach+d+t+UHO78Wru42Y8aPb9vtnM21XMVTqh1v9fCgIQqoHODNCP9KxwS5AC9QKSUQpxSG+QQe3ZrcQ7BjEztgQGfJ0QWkSr8tpT9WfRLW6f3ac+ldDXb4a0utigXYStv3yGG9pbpTNdnEPU5YDO3ayUHv+UAeQ9oeojH3i03/MWUZjRCmLgtogQjZcg4PhBNarZ+uZNazXbB/G7TDO+dTRFwJ0RVsn6s4jBUE2tvYSGjX+97lp8BmCs2jg91jdLzO97L8pu8pOJeDY7GziO3uFcYMH9adIbWBR8a3x05PA6r+TD3S/s0uEeGjVo2s8M3NOyKecxEjO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(346002)(136003)(39860400002)(376002)(5660300002)(38100700002)(53546011)(26005)(4744005)(52536014)(38070700005)(55016003)(186003)(71200400001)(9686003)(33656002)(41300700001)(6506007)(7696005)(86362001)(478600001)(122000001)(8936002)(316002)(8676002)(2906002)(82960400001)(66556008)(64756008)(66446008)(66476007)(66946007)(83380400001)(76116006)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KMpHfzU87Grv1PzP3BprYEKZEBv5evttV20ecn5etTzDjKY5S0fjqpk7nStr?=
 =?us-ascii?Q?ffin5jM8SiaV9FNc0zFwly4XuYjDVaoylY99WXMQDlt2vioqYIe1PoQRMiDm?=
 =?us-ascii?Q?OH8UpzKQ3ef6Z3s1/LLmnEE4kSLL5LznjtYhLoTlvI7sUIyxC7v/ORh+SOB+?=
 =?us-ascii?Q?fF92eCJoxBY/rM+vq9/DsHrvjLce/AxQWWf7GZC+GYGyyWhYew6CQ8+4sbBR?=
 =?us-ascii?Q?XWIeU6XHrTXMFPsoBHLplbpPcmZdbENwb6LLiKi2/yaw63l1yove6NlCEi2Q?=
 =?us-ascii?Q?GVxsr2m1cj+AP8R6OYBag+srn8GIiuph7GpajDC3y8Gs1ylhrBCIhJi+OwHT?=
 =?us-ascii?Q?FAENgaVWR3d7GVmUJ0Dj8c5Gda6OuKHNPXnmTVDxXGvESib5OT/iFLSXtPhS?=
 =?us-ascii?Q?/h/ddHo0U2AhJBmFHkranIwit0maGNQhKnbg9nCClaxn6wdAkIQveNkre0Gw?=
 =?us-ascii?Q?/81SOWtQ/tmqSFHU2MRE+x8Xx1DwiCj0X95jp4vRQLRBgIVi6KbtL9hoiVan?=
 =?us-ascii?Q?VcQAWd++ANIwohjGBdSTtlV5y2xt18jqFhL2oKTyMgTg/02AnEm0q/Ec9/G/?=
 =?us-ascii?Q?UmM/3VjHOvntu6lCAhjaM9YwBFkYTJ6mNmXImJNkS/U7UrK21u6NfpPlmjvt?=
 =?us-ascii?Q?fOFYoezIUCWWc3va5szcsJQ7R/CAoEEj+s02o44TIDLhoky04rOJppgNyqfJ?=
 =?us-ascii?Q?H0P4jyp56qNF6/7BPJRp99ExtmOWivSK6skJywSUyBEcwgK+iFUSCF0muIHH?=
 =?us-ascii?Q?C2lG3HjYAwLn6DEsaE+0t6x/3U3bkcRkW94V+i/bFizyPHe4zkB+aMVybUna?=
 =?us-ascii?Q?OA2iUIzf/gS15HuMOYZg5qrIclVdHOjbQ3MB8YRQ5jotgQ12qZ4h36nx3dzy?=
 =?us-ascii?Q?10AJaWwNSpHVwYVO8F+BUET4K7PnyJpMvtE/VoN0cvE6W+dZ69WxqM1R1m8b?=
 =?us-ascii?Q?jEKdD/TRfx+fo0VIKwvwAyIvxG+4Zy2NDgdQTU47WwOryHvIB4ZUUgPN6xN8?=
 =?us-ascii?Q?Li8ciS7aCFev6BAQLODYIi/7z9LEO1JQ3yTyoCLGkRRUaXQguQNWOMzx9jL7?=
 =?us-ascii?Q?wjFBhHHjoYCyLuem1XqshCUVerdfVbeQ/ypzvqO5+MbPH3XINpo16JTUZU1h?=
 =?us-ascii?Q?NPs/0iK0Tb8vI+lJlOvrfdTaJ+2rEyiwBdilV3QAXefHYOskCP7PGgYcBNo8?=
 =?us-ascii?Q?TqOiKTPCLgzLW1y0yMzoX0TMT4kkJNXz+tICkmVYD2MBZs18+P/H3l7QTKww?=
 =?us-ascii?Q?z61KDR4VUC9lZCZdq/jp7xOmt4TeZeB9wcgYnO96Ugl7Gb5cF0PkgQ8Upy6W?=
 =?us-ascii?Q?YIesvTIljbbTAlD2lcqhInqeIuFgOMzxJH6i10ozYehmF1bJ4TfB3+36odRY?=
 =?us-ascii?Q?ZpwbjcASeeuXubup1MXqySUpauppQGJpntH2OiiSXfs2v15TCVdXUIrkxfde?=
 =?us-ascii?Q?vtzMPKcTeBHMfsEAPqJYDy1ykKOLrcutRncc9eTlsghGNGBPm6NrJD2toTLg?=
 =?us-ascii?Q?sLzjhDr4Va4zPiHin3jD83LSFP5WRQsc+nUdJhlwAtnhtiymlFutSF9XiQVi?=
 =?us-ascii?Q?+jGBuFQpK0RFAlayz1vNNhfrZ9pBFnFyMJVwbftv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b430d5e-9e33-4d0e-cb00-08da7a9d89f1
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 06:57:06.8969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVgPAROZq2wfyFWFVwtdZYdxKecRaB4n/ldJSsHgUhW2vg3xvTyCSmSYM3XVHq2wQDi/PAw2dy9pR/5JoVpKiQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5999
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660114636; x=1691650636;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HYcj9AlhaeIA/XZDQHRg11azUdv21waK2YA0LoQlK/4=;
 b=E7We+FFO92OYs6izU3XcTVdieQ4TRJJpdfIJFhherhkkrFgyKi+XIgmC
 mKvT4E82/E4Ci+AxlsjlT6hAaXWHKUYoTVtyxEz2Q5sJOVmtmXz2DmR6H
 NGQvhK7mSF892NMLRift3SSxYNANfKNlwNilcFZsx8NhV10ix61UfU4Qo
 3I5fjbOHz5tqOdRWaJtvL57pRgutia+DsahyVqXaMZcKXWNHUy1mVtIka
 skaRuVaKy6XwAMyr6vvPm0bEZD3o9J0Jsk5FCwOMkFhKbDNFIneB9h2t3
 3mNllIaL50d7GNdAbHdBSa5MPBi0YWv3nK0qk2IVXF+8VXfMq/IxHw7ZK
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=E7We+FFO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 5/6] ice: re-arrange some static
 functions in ice_ptp.c
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Thursday, July 28, 2022 4:46 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next v2 5/6] ice: re-arrange some static
> functions in ice_ptp.c
> 
> A following change is going to want to make use of ice_ptp_flush_tx_tracker
> earlier in the ice_ptp.c file. To make this work, move the Tx timestamp
> tracking functions higher up in the file, and pull the
> ice_ptp_update_cached_timestamp function below them. This should have
> no functional change.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 672 +++++++++++------------
>  1 file changed, 336 insertions(+), 336 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
