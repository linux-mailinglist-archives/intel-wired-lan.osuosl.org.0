Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C3072458A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 16:17:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7E4E41870;
	Tue,  6 Jun 2023 14:17:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A7E4E41870
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686061040;
	bh=tQyiYEe3kltlobYXpzY4AkUHd9ITRjmL15hdrqM3I9M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lIlxaxd10w+4Tpwtp7Rxa/I/0AW7P1zCw92o6V0xWm+nYtdCayxbWftxDxpkOFBHs
	 5khgrmGVd30nEB5UOgFtTGJLjDXGCuu7s23Qo5lR9csVgiBMbEY9GBeVz2ITzSU/wg
	 ZtcMG/5b3kxwYTLcjJHaYc0UCnR9vu2nc7IO0t26S51mRmeT0YAEotGl2rK/XTSz1U
	 PtJSTyXcJnowuqVaVaoPbOvwA+jytBZIjOKYAyAXcZoFkYdwdSCv/leZbWb81PTI3O
	 cjOraPHLfHUOfEnlRRTpbp96dDP9sESuPXK9+y89pQUdKybKGzowA3f/3E/mp0dPYE
	 ODQPLFjqbmRNQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4-pYc8JL-fzd; Tue,  6 Jun 2023 14:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 29C884182B;
	Tue,  6 Jun 2023 14:17:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29C884182B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1AFCC1BF57C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E646C81FA2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:17:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E646C81FA2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s4N-kivBKLti for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 14:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B9C1881FA3
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B9C1881FA3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 14:17:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="341331322"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="341331322"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 07:16:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="955771152"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="955771152"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2023 07:16:13 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 07:16:13 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 07:16:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 07:16:13 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 07:16:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BGr9HriSME6fse30dqahSHdR6kKjXgJ1D/N4c6z/usZV1qqeXuhN27Ah/ZVNWn+rkUZr4zE/gXcyGcrTu8r4X4JGMbRFBPu3c/MN8piciiGi9nNNyibkIfMiYieWMYj/if/xLvxZx5Qmm0WMn9HXIuuvbTXGa60Ab+VtWgbw24rUwUNIlqc0iy751KDC6EHwJOlPXegoDXOs3Bodj/82+2fCr9AyUeUvGEcoqsp6m4/EyB1iDl84Q3pNGU4ZoKLa/jfJJyeCtOcQsEIBHyE2EteLwiMOTpk5R/hOfjpT0nKv5OQy6vI0W44dvUqM8MonXNpzXphyS5ZWdSDhdwglEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bwRItE8tzKpQORF/5nWRKE1lPwCucy6L/JEJuY69WaQ=;
 b=DyVgeJVZzMClp4V97BQVsOx48V12J6JTvx8177kTbXKEeGOTfS49L9+VqNZWvhbsYCbCEF9P6F+n5x6GQy5nHhXe53/1rYeW3zcgecxyrnkLT/6XZoUi+PiGqiXkyZrHi72qICs0z832nRXp8Mp/8aEmmjT8+zXF2NQfcR42SinrRQQGJGJDUHseqtGRQj9iJKV6daOqsWAe4mQlsihE+ZJqlwLMJWFBb3eoEmYlFc3b3JXB4qYNeP3Nf08rMmG0PSeReK7zjAsaJ7ZSrotFECJK3o9DmJUxriQ4UMR/WtZtJ8b6X1G65s3BWGLjBlcDEldLg8cXSNnvm3t0WFiEFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22)
 by DS7PR11MB6223.namprd11.prod.outlook.com (2603:10b6:8:98::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Tue, 6 Jun
 2023 14:16:10 +0000
Received: from BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::b:fb49:7978:b523]) by BL1PR11MB5288.namprd11.prod.outlook.com
 ([fe80::b:fb49:7978:b523%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 14:16:10 +0000
From: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>
To: "Ma, Aaron" <aaron.ma@canonical.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH] igb: fix hang issue of AER error
 during resume
Thread-Index: AQHZj++rqy21rQuhlU2k6NaCyVGAuq994mNw
Date: Tue, 6 Jun 2023 14:16:10 +0000
Message-ID: <BL1PR11MB528892B7A29A93B5D67548988752A@BL1PR11MB5288.namprd11.prod.outlook.com>
References: <20230526163001.67626-1-aaron.ma@canonical.com>
In-Reply-To: <20230526163001.67626-1-aaron.ma@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5288:EE_|DS7PR11MB6223:EE_
x-ms-office365-filtering-correlation-id: da8d78c2-15ba-4dd3-2a3a-08db669893bf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AVgK40hoF+Mu2melkAYrqbQCF0bSlKlCEOnhc/I6BtzOn6dhTW+QHoFDr3FWw8vs4dNo05eLWdG5feoq200EIMB++8DvEsbL9ERtUQkzfyIGdXvhQ5G+jLp6asdAp6GRNRXWfDbNC+abKnA+Afyb1eolMKhmjR7/LYlDJdBcig/j1uAeo3prrYTBALo5o8AvXh9ksxxsGwbkreErL1f/FkKFIex7CBjs0jw0mClVaobRGXxAaCeX+IgFnpz47TrfkXX4GO9UsVVYmqCX8Dc0Sz9K1n4hJnzfdvGOhp7voNqdgkQ7pXEdFnLrOxFf9spvM0EL3dy0i7yXcClWgggqWl92BZQOl7jXVTCedi/8YIzrGP4Y1rFeIb02uUQZiWLoVHG/MHMBwI6F/ZVPSm0A56snZYH0xw4RGFjEQ21MX58iz3HVHpDhCCuqlTdsscc9Dnr0/GL74g1SzMYi8JSmYS3OaD/aBDXX2xQW3nAKX1XGJJQSja/hS9ey5Ogf9ou6hX0QAn53TZ+W7DaYE7fi7ffjHj3YwVf6mgz07ZbD1X8KKsq2/xsG9wbKeI4OQIKHYHUsWjyy3QAYT1GBIYuNb+08swGRyGPqYFnEATM1vog=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5288.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(396003)(376002)(366004)(346002)(451199021)(7696005)(966005)(38070700005)(71200400001)(9686003)(55016003)(107886003)(26005)(6506007)(83380400001)(66574015)(33656002)(86362001)(186003)(38100700002)(122000001)(82960400001)(110136005)(54906003)(5660300002)(52536014)(316002)(41300700001)(478600001)(66476007)(8936002)(8676002)(64756008)(66946007)(76116006)(4326008)(66446008)(66556008)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?+OeJVACuVAU/JckADxp1i+jhfjBzPST7/+xpbuoS+DuoU7Ns7e1H+MhsyE?=
 =?iso-8859-2?Q?v7zjx4QW2OdhxMpEvXVM5Guiw0Zd2wVKzOPQGlccP6m+f4TKdfDHFTtGRK?=
 =?iso-8859-2?Q?mqXykrgMwzTEIi2b91+AV+dFCLMocqWPgQzv6hOjABctOTKV8z7CrKNmgO?=
 =?iso-8859-2?Q?9Wa97aJ4CDKcuyM/xPv0jVSXQcpj/ij30F7goXAZJO29+3FOCSGtvkVH0t?=
 =?iso-8859-2?Q?RiXQ+7EAGLqALDCmurQfzCAyreVmzLfTNrPX6fPmZWn7LV83nzOyf7zW29?=
 =?iso-8859-2?Q?awdKox765kK3fhlOeR6S43eoHjMhjLt2eoul8QMU790MuO67ANSwgGC930?=
 =?iso-8859-2?Q?ykap7AQhrW/U9JAoSOO/tGkbmOQPqrG85qyJ2/rX2W0V/wRSk+vBE1vL+t?=
 =?iso-8859-2?Q?K1wiLYbW5tT52+/OpzhnuaVt5YIegwCVTaxIFlkXWq88+t756FkoF6aR5u?=
 =?iso-8859-2?Q?zPrZb5JrsZfB62G6fZ6yJQvjkm25+aMcWRADmTUW1UKp1ZalC6YHoNTZG9?=
 =?iso-8859-2?Q?yufU3bwsYLhtw0n2vlfR22hrz1yHcQFRRc1trbzvB1cYk9tCZkarRzyC+h?=
 =?iso-8859-2?Q?HUM202n6Wja+urVm/NMlAbK//1t1HsMR/bQ6pVRUzuwsxUNaw7Nlx1KNfE?=
 =?iso-8859-2?Q?HSuTION8Mla/fXynhZ+BzpvR1Lhqow2VDq5l6+DDoHvqp/Em4FIwFoDNUq?=
 =?iso-8859-2?Q?RYKpllJi16T43+0n+7uySl8O8isRZs7/fTuy+TL8P/e22nR7Q9HZR8QuME?=
 =?iso-8859-2?Q?xhvS7H6OA9C8VN7BVxQURVxFZp0iv2WFkXYnHQqIODDH8X4M0FrbFflc0P?=
 =?iso-8859-2?Q?LknEBOQ3Tt+zaHrEqCgsu0615Fd5H91frZqNkTeUvUxhzcqPGbdas2/J8A?=
 =?iso-8859-2?Q?MxEy8AytKsw/b3pKwo7psf3S86/tzgO7i6MPoLKVflGCA+FfvIZIimznL1?=
 =?iso-8859-2?Q?TO8pMpN39WPncOebWqRJ9ytbVOynotjPnLlzB9k3gRAqm0hZhH6nrr0qr9?=
 =?iso-8859-2?Q?lDZAK2uuOQL+TiOUPYfiSQF40Udgj8+y4uIOGgNUXlcI4hQjNrkzoz1yjN?=
 =?iso-8859-2?Q?cj2RAGqQYRqSUtpTtIx2Xpd6P+xXNT3eBfDi65C8kgDhSbILiPa6Zfdhqh?=
 =?iso-8859-2?Q?Z5ZXQigPLqJV7h+3IXcd7+DUZm4y6wa7sMBrOdW4qYZRcesXZQ7a6FZSA1?=
 =?iso-8859-2?Q?0C+fRJ6wl4SNWoDlMTZ5QCVntsSitwApbVm2Qj7U+YKdTYwzoHsGiDDLtN?=
 =?iso-8859-2?Q?yaaobRA8WueuRC/aTysuEPxrogqxtV0BckYNpa39XNvdEiVkLDlNDoOdxG?=
 =?iso-8859-2?Q?kAeVMLFA+VV5D2l9Ct912AAbunTGBXtFpLSq+3DEFv6mcn/Fjd6Q4US9mN?=
 =?iso-8859-2?Q?oR1Z5BMXzPsZuOiJu+PNPIz11WerpcGIgZi0Y13MLLK+FGiq5tydemiPFB?=
 =?iso-8859-2?Q?9OLqIo8nfpN7CPvH/LSDhsqJzsK+CSIDULWj0UoRxMwTJyqhhLYngyDq3B?=
 =?iso-8859-2?Q?y7I4dNffb44ICzTnNTiHBu8mAFt48Nyq0roI1aXdOi5Cja/KA3iaRFIHi9?=
 =?iso-8859-2?Q?5+cmSRtHI6jirIqdq3CCs39r+AM9Nn6xlMOMA9xk3n/jaDox/G5TJWFQVJ?=
 =?iso-8859-2?Q?DlHo6R9BuQFzqsA+rCRlsnEPRNrr4Og5VI?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5288.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da8d78c2-15ba-4dd3-2a3a-08db669893bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 14:16:10.2544 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HUVZzos/CeL4izEWh1waNlwTU+O23yzAo5xBb0ptDrQdeYwCaK8FsrYd2Ccz3mXLkuoLvAAvP9RsiU5RSmF5Tz/5r4hgCXvmGNPUD+rK2bs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6223
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686061032; x=1717597032;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iCylKNWn08p6CB16CArNT23oGzCoPdWddEJ2vMtAP1c=;
 b=iIDA3ckdS6P8FOgukXMKEtSPKKrBJzVhjWqF96WLHoUDVshnpu9sQPrS
 qtcR1oifA9CUFYpg6nIRCF+z87DNEi9Dns1UKfn77DCFSDSrrwyLpsMUE
 rMeZO5ETU+I1ZOfk2l1wOI9Zj5fThcjjT3OdeDdfOr0yaJ4uuYCO3wlBn
 OTfGTDfF0FdtlTwcVb3TmaJP6gq3JIisJ86n7GRtyqkH9908AJnThQzDr
 TyRbGuQUjuqGc/Tj68KO0zW51X8J4RPoAPquA2yQcXLA0WyhLc7UmPrX8
 wl4y4NL1BhbO94l8FmorYnsS02MbG+rTQPkpqzpOswznj0NUXHLDjSVwt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iIDA3ckd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] igb: fix hang issue of AER error
 during resume
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Aa=
ron Ma
>Sent: pi=B1tek, 26 maja 2023 18:30
>To: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; linux-kernel=
@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, A=
nthony L <anthony.l.nguyen@intel.com>; David S. Miller <davem@davemloft.net=
>; Eric Dumazet <edumazet@google.com>; Jakub Kicinski <kuba@kernel.org>; Pa=
olo Abeni <pabeni@redhat.com>
>Subject: [Intel-wired-lan] [PATCH] igb: fix hang issue of AER error during=
 resume
>
>PCIe AER error_detected caused a race issue with igb_resume.
>Protect error_detected when igb is in down state.
>
>Error logs:
>kernel: igb 0000:02:00.0: disabling already-disabled device
>kernel: WARNING: CPU: 0 PID: 277 at drivers/pci/pci.c:2248 pci_disable_dev=
ice+0xc4/0xf0
>kernel: RIP: 0010:pci_disable_device+0xc4/0xf0
>kernel: Call Trace:
>kernel:  <TASK>
>kernel:  igb_io_error_detected+0x3e/0x60
>kernel:  report_error_detected+0xd6/0x1c0
>kernel:  ? __pfx_report_normal_detected+0x10/0x10
>kernel:  report_normal_detected+0x16/0x30
>kernel:  pci_walk_bus+0x74/0xa0
>kernel:  pcie_do_recovery+0xb9/0x340
>kernel:  ? __pfx_aer_root_reset+0x10/0x10
>kernel:  aer_process_err_devices+0x168/0x220
>kernel:  aer_isr+0x1b5/0x1e0
>kernel:  ? __pfx_irq_thread_fn+0x10/0x10
>kernel:  irq_thread_fn+0x21/0x70
>kernel:  irq_thread+0xf8/0x1c0
>kernel:  ? __pfx_irq_thread_dtor+0x10/0x10
>kernel:  ? __pfx_irq_thread+0x10/0x10
>kernel:  kthread+0xef/0x120
>kernel:  ? __pfx_kthread+0x10/0x10
>kernel:  ret_from_fork+0x29/0x50
>kernel:  </TASK>
>kernel: ---[ end trace 0000000000000000 ]---
>
>Link: https://bugzilla.kernel.org/show_bug.cgi?id=3D217446
>Signed-off-by: Aaron Ma <aaron.ma@canonical.com>

Reviewed-by: Mateusz Palczewski <mateusz.palczewski@intel.com>

>---
> drivers/net/ethernet/intel/igb/igb_main.c | 9 ++++++++-
> 1 file changed, 8 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ether=
net/intel/igb/igb_main.c
>index 58872a4c2540..8333d4ac8169 100644
>--- a/drivers/net/ethernet/intel/igb/igb_main.c
>+++ b/drivers/net/ethernet/intel/igb/igb_main.c
>@@ -9581,14 +9581,21 @@ static pci_ers_result_t igb_io_error_detected(stru=
ct pci_dev *pdev,
> 	struct net_device *netdev =3D pci_get_drvdata(pdev);
> 	struct igb_adapter *adapter =3D netdev_priv(netdev);
> =

>+	if (test_bit(__IGB_DOWN, &adapter->state))
>+		return PCI_ERS_RESULT_DISCONNECT;
>+
>+	rtnl_lock();
> 	netif_device_detach(netdev);
> =

>-	if (state =3D=3D pci_channel_io_perm_failure)
>+	if (state =3D=3D pci_channel_io_perm_failure) {
>+		rtnl_unlock();
> 		return PCI_ERS_RESULT_DISCONNECT;
>+	}
> =

> 	if (netif_running(netdev))
> 		igb_down(adapter);
> 	pci_disable_device(pdev);
>+	rtnl_unlock();
> =

> 	/* Request a slot reset. */
> 	return PCI_ERS_RESULT_NEED_RESET;
>-- =

>2.34.1
>
>_______________________________________________
>Intel-wired-lan mailing list
>Intel-wired-lan@osuosl.org
>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
