Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3C34CAF42
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Mar 2022 21:00:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEA5D8175C;
	Wed,  2 Mar 2022 20:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IK6T7_ZHnL6C; Wed,  2 Mar 2022 20:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B33C681427;
	Wed,  2 Mar 2022 20:00:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2B1161BF2F2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 132F5812F1
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ia46rSpsY-1h for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Mar 2022 20:00:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B9EB8136C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Mar 2022 20:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646251211; x=1677787211;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QxDq2zGXy9E4kVOO+VLjVahaM6PhxNLi23FpQ784F5s=;
 b=izCXA+Z7SXhLva2LdXSufC8F4d6qqwU+yKw0sERdz32mFzJ3HAS+PmC5
 n0gxVvg9ajrBNgVJ+k7jg8Sh1u5trzbQVwJgWuJhjaMONHwyqa61SqwI4
 KdY/KVyWiYl/bhQFpNfASrsekQTKMVNhK8gLS3CDj3e/t/Mu/1XQuleIC
 +LWoP4NHr9RtjQ3EiyBbNmairQs0cVG09JWS29y+0z0s14WYDOjhjOIIo
 eG4p5F5ZZAMa1u3HgsCMlyH394/UOZegxVWnVw5ake7DJD4j/JdX62j7L
 sHQdaH+isN/Spvj8U2qHNs/7nNPQaCJkrbit2mDpU/Kn56KCSNt7q+I91 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="278169391"
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="278169391"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 12:00:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,150,1643702400"; d="scan'208";a="641827701"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 02 Mar 2022 12:00:10 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:09 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:09 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 2 Mar 2022 12:00:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 2 Mar 2022 12:00:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=US5JNK7B4jrNIDJf7ZAYj/g3SmHAtYXxLQgMJQv2ChkmSobxxNTF6Is56YU/YOeBtxEaSlOxkxrHHBoebdo4PvOHFm0WEnBqYA+OBsWSNbUr5lo1TKu/4Fqp9DryZFKqZfiLOeMYvCuFmtt7B0XM1cufPkb27QU/8DY/7ns/hw+Xod9IQ+fxV9cItBNDTlZbQR/apFmpfBT1BEj2gFTAv0NQSSo08yOlXDUiK8vIpGl0vFTgoV5+MhxbkPeTDbQ4mWHz2m3mB70GDOELsRhzQ1Q9tKiEkipn4jrSTQvnaGSu8MokMnw8+6F9iGBUKCjqgdA3T5dNX3EmI1fv95lYzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ij8ykM/V9nXIUp4N2+hjeUNjfeT/GNfMk+tZMcu1wnc=;
 b=jaY7wPwoKhA/0CyBnrjGJcOAGBgHtDwyMCbEy1GyeRb5CzPEDT9pmbaFmjPM+PeHBV0Uc6IRR9Pdcw8o6NwvJHazfuCVpozucW6OSyd+ew7Y86WkvvPFwVX7uBQYUDLoVXzQuq3hhReD2IvRbczpfsd86RhACe/fRDOdj3dS0Q+tpVVkO6iljbgcHjB99ypfcdB9QzoZ3FdGTQ8dtngxAokdZVLt+zbzx2S78/2di85n1/MTGTn+Uhq3y0S/xuoYBaQG4tTDnTqZ2A7SajimHxivJx2s9udP+Jx4BnkYzgYq7Rf881DGicV5f3pybxDv6XHPK/XaoCO0GoJEHRKAuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by BN8PR11MB3763.namprd11.prod.outlook.com (2603:10b6:408:8e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 2 Mar
 2022 20:00:05 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::c194:9f26:88a2:b9c0%8]) with mapi id 15.20.5017.027; Wed, 2 Mar 2022
 20:00:05 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [net-next PATCH 13/25] ice: fix incorrect
 dev_dbg print mistaking 'i' for vf->vf_id
Thread-Index: AQHYKExYs+4hxQlpKEKY05xjVnFanqysj48g
Date: Wed, 2 Mar 2022 20:00:05 +0000
Message-ID: <SJ0PR11MB5629F0CD1458FE8FB60EB184AB039@SJ0PR11MB5629.namprd11.prod.outlook.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
 <20220223002712.2771809-14-jacob.e.keller@intel.com>
In-Reply-To: <20220223002712.2771809-14-jacob.e.keller@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.401.20
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20f825df-05b2-4500-67ab-08d9fc873f15
x-ms-traffictypediagnostic: BN8PR11MB3763:EE_
x-microsoft-antispam-prvs: <BN8PR11MB37635D6580DF55F22DAD3A92AB039@BN8PR11MB3763.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fGcKdeHzrzvwFSslKvbQ8zYbZmhrzSs4Rh6IB+G+EHvoT1Wko/ibinOKVyAPsYOGhNLrYGCA9vKfVk1pdkpap2KppOm2nIA0Czw39O3MgrMyO/G/p62rzvnqICwHAHx6hczy8tkjlmUNxZY98GV3CJM9ekcQV0Ml0w0i2wY0GOydSQQV8p6pCUT/y4LLih+EZY5KTF12/1QCq7YXDATsItUlKrEIc7Ukr93oMm6BF2H8Jur2wbjBFWk1p2HmU7ccZ0QbdNTmtV6aD4J+FA/f7+IGFKUOmj0JZUcyp5kWxyrR3ddaCTSURTZNH+rf3HeabRblmIHhdsboPvut61vt313ur3XgAHOiMpdxVcZu28igz8EID2xdxVyjwcbjpTgNPJjtwpgqx3erCJjAf15M8geVSGo+kVdLNEus5sJgIXh5xuo1MjsXImXqQvkPZB8TckxR/M7cnvVBdu4Fqg7PVcF1E4e0ZR6ijFvn0fvb3UmoYwM28Diy/o1in7VCS2fYQDkPGn/NwWH+tEvBlHcXa0LhOf1ltN7Htuly8yErJyesOtQuoknd8oxHvVxOzcQMKfxI/vy6wRwOA7/Wvt84as6SXfLmdVpf2NEAl3rYTwoOEJ2DdYqlBcTRcxiTtrbRS2+/KTtpbIlBPMoLTuVd5MgE+mEoAZ70dTwFosNzCH/Z7wjV7zSngRQHaE5boAXX7PzTIi+83vccn+9LDLOJBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5629.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(508600001)(122000001)(110136005)(86362001)(316002)(82960400001)(5660300002)(52536014)(8936002)(9686003)(55016003)(186003)(26005)(71200400001)(83380400001)(2906002)(38070700005)(6506007)(7696005)(33656002)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VnjoI9DxE0kGRqB2dVQ8dKDuNxUsH90IJSIcCT9Bku2z214S316kt7bzzQUZ?=
 =?us-ascii?Q?EiJL3mh+jJ2TmFZao8gJNPINoQyqNpjGT+n81b/KYShfGrQtLjEov8HKis+Z?=
 =?us-ascii?Q?yIOK1q8vAftbop4pGB4vb07+83vlg24xZ9DF9MEaQ47NROxXi49ZpbIQErdb?=
 =?us-ascii?Q?UYKgjE1wZsWw/rjQxEuy8z/vi/BjupJ8YgKgi2c1kY3KCuyoNEk8VpG+XmmV?=
 =?us-ascii?Q?Dhi6AjMr1WqGJACwIfyxCy1G6teYHjovQNnMQPjax9JYxllIDs6eWdQJ7NQH?=
 =?us-ascii?Q?3f5WEtkYkYh7YScBzTfN0Xa4rb/RIVGgP2l8RGV0T46fnrgFJJn5yyLs7lT/?=
 =?us-ascii?Q?5lBZ+XKZYI8Jjn6mua/FszaRt1yu+np+6xwUNQ5GOs3lFGnrp4ycnGrtvIA8?=
 =?us-ascii?Q?D30Xg7acrUPe5hmlJi0JZ6ISJzq/nzmr5PofPF5p+eAMAw13l2mMSUpSFNXz?=
 =?us-ascii?Q?uD1C3xOUak0kebvhuTL5t3JvTXqZ31WSWQWK6Hd7NzHr7aCs1PLyj1yEsW18?=
 =?us-ascii?Q?3G4nLNzl82EF2YbNHdcE9ub1yyJjAw9HSjc/6x7tFACfqBYGHBW7vAQYK/BO?=
 =?us-ascii?Q?aYfUR8KCraBGT2yr5YLXysSgbcw1TMFvfyRti8Rnd7t4HNZRRyWcJX1njZZx?=
 =?us-ascii?Q?3O4OvOzz4iDLOLN0N6g2SWbfKII7GdOEChLlowMMG1Cdmn8hnGXF+WWnzXXe?=
 =?us-ascii?Q?9/iskgtQn1jZlBVC2R3K/uLlc+rzX4+XX9M1SWA+KdXKfenYCshe5JAL3eEw?=
 =?us-ascii?Q?k7J5aInYySx3OpK0T6ecNehQjuhArg4Z0oISY6BKHfohaa67AWYOCGKmcjt7?=
 =?us-ascii?Q?soZOtuT8xpjw1QYnj0MBLylknQJIy0L+88OMF2FmXR/ZlPuVSfXLG1tN+lU8?=
 =?us-ascii?Q?4kL3OWJyZlHrH8QtEJWUNOmPiGx1QsmnLxBefwtbqjBUV1mNEYMRjThjRRdT?=
 =?us-ascii?Q?2l0yYaeS4wgvfACnGJN9zojf299//nLMkfEyITzoPvt3uj8Ie8dxYYKuxI1F?=
 =?us-ascii?Q?55Hstn8VcZ8rL/eXdA2lCdL8iuKPE/mE+Wd5Gu4ZKgUvpCWstmPcm/utVr1f?=
 =?us-ascii?Q?XhgTcMQidDtsMEqLQvI0veHc46h1/cPcvSQ6ln36HMH4piP+LpwgJRlN1MzU?=
 =?us-ascii?Q?STOd0iL9eRUzk8mh00ykdfuYrjVm4whvux8FCa+F3KAlHVZhTxLvxBNDJc1W?=
 =?us-ascii?Q?tDWsL6h5e/brkJ9mufduWDI8ZDRAmaQ/oXtNACKciA0Z/jn3IDwe9dbXMRM/?=
 =?us-ascii?Q?eE/dgg9QUiOJmGYgtKO5aIS+Xn5+hbP55TzERh/spKtOQgC7HLp1ZTsbWSKK?=
 =?us-ascii?Q?I65rB1gz7A5xfZKmQ4+ODRSTcsRQ0UEfVqLVLoRNTeg5YqFeLzzqXLhQrsy+?=
 =?us-ascii?Q?VdL5LpRG2C+dlyiydx39QfaL5eYKoGg/EIE0fLg3ONIQMaaJIsNgzSNNbBRw?=
 =?us-ascii?Q?IhyT4bEL10E32bY5l3H+SIbCPpJGz6J0TwUx8FU/v0/mcZPeI8bx+CpdFpVx?=
 =?us-ascii?Q?rfub8RcARie6sGy3VnG+Q8fVLxLNi0mtTrVSEzFHHJchi68VQbYfikbNhJNk?=
 =?us-ascii?Q?P/61YiXK7U5hnp6NbxAOnpsIMfpU9TvDSEpD/HqnEVK27ODeROSHgTJKPeXW?=
 =?us-ascii?Q?mKlmrWYku5nmSIG8vgR1yG35uRl5O6umsV++dj7E5KXy5jQH93v+n+M7jca9?=
 =?us-ascii?Q?0rqNkw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20f825df-05b2-4500-67ab-08d9fc873f15
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2022 20:00:05.8006 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kfnBUp5qvaDNGH8b5nkZXurETEv9TrM2Lx2T3m5P8BWlZbhXqHgZ0676TSONqcIOQ8wK58T2xI6NEmufLdvqGPumhcC8EfsrbkZLbLmlibc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3763
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net-next PATCH 13/25] ice: fix incorrect
 dev_dbg print mistaking 'i' for vf->vf_id
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
> Sent: Wednesday, February 23, 2022 1:27 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [net-next PATCH 13/25] ice: fix incorrect dev_dbg
> print mistaking 'i' for vf->vf_id
> 
> If we fail to clear the malicious VF indication after a VF reset, the dev_dbg
> message which is printed uses the local variable 'i' when it meant to use vf-
> >vf_id. Fix this.
> 
> Fixes: 0891c89674e8 ("ice: warn about potentially malicious VFs")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_sriov.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c
> b/drivers/net/ethernet/intel/ice/ice_sriov.c
> index 2f74fcf51c2c..91d106528b66 100644
> --- a/drivers/net/ethernet/intel/ice/ice_sriov.c
> +++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
> @@ -1381,7 +1381,8 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
