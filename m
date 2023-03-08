Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AFDF6B0BA8
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Mar 2023 15:42:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C9BE640C91;
	Wed,  8 Mar 2023 14:42:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C9BE640C91
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678286568;
	bh=dMgK2lub2fxPE5L0LvK4FwUEx8xBPAim/mgAJ6WbCZA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=iLccjxWlOLoMVT8rTrCKDNX3vbXc7s869dXVvb87fCmkRGptr6qsj1CBrXg1SQbtq
	 Sstp0SEodVtD870eje/g0gKMx2B4Csx3Sc5h1VOrMpWlCjpXLoOn6xgHxSFDj4tSha
	 LhxbD+tLiHMRZYcIJ7KdmBkcC8lFxeLF1Iiwc7tCgSHmWkjaqAXyitIgumuFFhYOOf
	 Agcuc1cO5ZU9cULf9XRWep0/Fyhn3YGuWb/8wyYAkVADsGQE0ecdlJVAWlm6d8oVvo
	 5JZhr1/c52Eg/qWaWxJk4Z8kgYqa52K9vDF2g/b4rNxmSJY5V1/xlyfHahCy/tWSPN
	 rSW5Sqmrn/cPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyaZXAJh8CG3; Wed,  8 Mar 2023 14:42:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B513240297;
	Wed,  8 Mar 2023 14:42:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B513240297
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 141511BF32D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECF3280EC2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ECF3280EC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9BQHy_lhtaOB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Mar 2023 14:42:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A2A8680EBB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A2A8680EBB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Mar 2023 14:42:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="422436943"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="422436943"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 06:42:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="851109527"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="851109527"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP; 08 Mar 2023 06:42:40 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 06:42:39 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 06:42:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mcTMybC7afSWMS2TtwyrvusaEDiqMlKP4te8pfYrAiqjlfqt6+dANE6bKJ9m2zQyX+NC9x8kXdNK4zhGBqcz56WirN12krBiw9yGwCBeQXkdVzk/6/h0bMnnug1mCpk4KYDAHJmz9PFLw6d/qiVL453WX3kbJ3woBVZvAq7RPatKMHIm0CJrCCJGZJl12hCEnWgsohp1J0IDg4IWqDeXCgoGmDlP7IT1VIxuMp5Frarj4rmFisrClMcs32WoWc7Xqy/CNk6INLHwurg7Cdduu6zniXWaDBEYk4nQy6fnhmgYM2itWSZ/lEfGmBTwa+Jc+z5xrv+Bg7gBBQIKdE6vhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zS6MhOH0eC2heIZUDkFLt423nSZKBSl1wIMZk6RIHBQ=;
 b=KfchUdqZHJNDmJZ3oQcudwQeHXj09smpPUzFMIGcUZF1VtxX0XDEnCUXqIrYjsiw360UR87LsxEJ+bp3kf0lId3u4xlDg2VdOQG4A7DmkVqKmzwQ4oUtfwmYDfFPk61HaH3Ilw88dh3G9u58aMj8DGNSOT7rbkTIEu78MnOaCFW579APngT7F9iA7104pLuB3Gt86fSEYs9jmllBrNZ4aTCrkm94H+vLQBfN6YYHOUxb6soBp9EF+U0Y9ziYon44LDQMQ0AJyvzb8o/vwoD0FAraYrgIHJpWfoLqAGDHQy9kc9AweckQoRKxgcPeIg21lltiM5ubfcKXcDZid2IY7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14)
 by DM6PR11MB4722.namprd11.prod.outlook.com (2603:10b6:5:2a7::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 14:42:25 +0000
Received: from CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e]) by CY8PR11MB7364.namprd11.prod.outlook.com
 ([fe80::6100:7667:c884:a26e%9]) with mapi id 15.20.6156.028; Wed, 8 Mar 2023
 14:42:25 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net, v2] intel/igbvf: free irq on the
 error path in igbvf_request_msix()
Thread-Index: AQHY/oy+20ExSb2KsUGnsNVgau5xJa7xNKPA
Date: Wed, 8 Mar 2023 14:42:24 +0000
Message-ID: <CY8PR11MB73645F365FD311EFDCC9DE15E6B49@CY8PR11MB7364.namprd11.prod.outlook.com>
References: <20221122022852.1384927-1-cuigaosheng1@huawei.com>
In-Reply-To: <20221122022852.1384927-1-cuigaosheng1@huawei.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7364:EE_|DM6PR11MB4722:EE_
x-ms-office365-filtering-correlation-id: f5ffc68b-1b46-42b7-fea2-08db1fe3552b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LE9sapxm+qj8zv/9jaPrGJL9GAPXWnBTEjM6Km0UKr+8Ji3r9SLLOULo6Z2kj8VRUv5j2CjwbLNjLh+QmVZxB65pOksaBTUD0BoTlNlRwVCRmU2rAy250C8qo6MwymotJfk4BicRbkblysPOgRDB5Tq7CiRBfwJBWQmjou8ezIYEdi2Rbj6GsUKK3Lj9vUzrqJ/934Y8hlHE3/yV0/CdUTd4RhF9/hT+JQT6VGEwUiFslnJKCYNSpamxdP6+tX7nsHdkaV3fdImskGicP8NW1ZtVWjqvN6UJ2WHx38WXy5P3AEhTHUFYoWNUCErkAmuvw+wVtP0gGTndbh9lq8lhr0VMM3mjwBA+972sSTDP34lXJdzc6GWZ1P/QDFNiGisowgBWUNWIBMRM+HaxMHdWonfzOGEOlpgWSxaNfO24JaCQRCzewDrLh87r6Inj+0VmgS/NWv+5DSkGhwPPfS8EvnDyaXiLSvxnhXZfhSo/R4UTiRbHQJvd1hzQiuHa7Qs0BZUdthMatlJEgLhHz1AHPlt+O6bCbwMZN9rTNhCaDTA5vwjKXfgXmlnaDNpESeaWC9Y14ftr9dlI/OC06dixvT3HEQGfQuuDzRo3lt0dvFuUIiPbL9hcGp/h5izDL+bvMUawWXsKdGjx377nHReQEZuteFfZEHFF3YJPuOcq26RVxXT1vCpHpnG7h4Y0sQ1A/mS4NSMtdF7QusqZhxn51w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7364.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199018)(2906002)(38100700002)(186003)(82960400001)(9686003)(122000001)(55016003)(53546011)(6506007)(38070700005)(26005)(66446008)(64756008)(76116006)(66946007)(33656002)(66556008)(6916009)(478600001)(52536014)(5660300002)(66476007)(8676002)(8936002)(316002)(71200400001)(41300700001)(86362001)(83380400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?P3841OHQCbTs7HHsQh6++/s32gSye9uNFrY/mMkZ0C9jyI0/2hqoITeqhGW4?=
 =?us-ascii?Q?wVzkABqXtBYWd0/3UdjwGplj0uhpM70Io3drfae1dCfIkM0RhYr7iwDkaoFo?=
 =?us-ascii?Q?de+TGqOI4pMGDmmFiD0P5u7vFhsF2PkL8rxGRONWiGXawSn799GuWC5d2Bl6?=
 =?us-ascii?Q?hjvDaY7cMyg9fdrgEtzdlQhkG4BVJU0hFxTVIkm00pFe7b/xssl0cu6BtTU6?=
 =?us-ascii?Q?/1/czkPnASaAl67rSfRy4rkhYzgL3mkifC2eja4IIH9DuPF+Vait4BsGrlgc?=
 =?us-ascii?Q?yXU26XoBBm12tBfiJ9B8Woc9/jMJn1tmE0/++VYc/bq4ZyPvLHLID/3/eP0C?=
 =?us-ascii?Q?SKRAUMkA03QYurLPjVySnTttr3i92XciM8LkSHLFkY5VdFoKZOwsPATbAn1k?=
 =?us-ascii?Q?HtdLN1QZGmc4PeiRcxXcKdoiPyu7UB0UXr+3q4S/Kfq/uxguiv+Vd/6tGMqe?=
 =?us-ascii?Q?lN/kvUkwOY0+Sv1ft9Mdpli3Bw5Jw7F2PAaRMKKEcydCHemAGEdZNZeO5mPi?=
 =?us-ascii?Q?rUbLsGiFrmbfhu0fQduqxpH9k3vZoW9GbfoH/K8A5PVUODjWxih5MJSmAxo9?=
 =?us-ascii?Q?Ji0mWFtJygchnDmchwKiG0nVEF48roQonrhZt3Q9QU4LFG2KSzKknN9+W4TJ?=
 =?us-ascii?Q?fv+Ik5PPq55FnF+o1jrm7eUHE/vJ8LzETB3yeKnTY6hPT13B+zAY5nt/nvdF?=
 =?us-ascii?Q?ODeTuhkwjBZmnr/x7G59Bl85ZecIxPrIwOT7FxorisSDKx3X6IrI3hR+uAfo?=
 =?us-ascii?Q?QhtbIYs07F3/wFGE4A3im8MkS0sfo5qCJ7gFkp2BqkwK+SUznTKDuuBzhk5u?=
 =?us-ascii?Q?J1BzFNKu9We+NU92o8dH1oGBV0vQnmiteVbw8fR7h4OD7ytplyY8i7ehGULJ?=
 =?us-ascii?Q?AGz0xlIyieJPmVPjHsdZ2TZaqe+Ib7TZ8Bdbxl4txvRC8vw4/r84XwKS4dr9?=
 =?us-ascii?Q?Ifm1aLiYZVzzhfk2LZAVqXGL6Zy58DGg90vyBh3KKc7n7vYSvrPflhsIBd10?=
 =?us-ascii?Q?Z3aTfLwJ8u61NJOx6b2oVpIA5DP52rxatTPtJyNtjj+lEpj+qwqB/1fopfpf?=
 =?us-ascii?Q?3u0aiheJpo2OoIcCD+qorPjsxveRKGNlP8ObMWsBNVsSHbAj8YQ4YAZZEsxm?=
 =?us-ascii?Q?LTmhOWDGG9kUD4O8mlXTStEw1SVcxdWTWKroJnssgGo1Biry0cJWVaoRXTld?=
 =?us-ascii?Q?nf3jgJw2G5tryseunMGPooxyeiQUivqjiWMPbXkt2aigTSULGI4uGfTSMe5w?=
 =?us-ascii?Q?yVeRsWIyRQwjeGaejoDXlI3a8i7tC3gbTep/69/rJ+mhKtaoMVr4QiCI5xgz?=
 =?us-ascii?Q?nQUn6fNO4weLDbryxDd6VWPXoieiSGWY1FUaF2zIxmeBp8ecgp99zMzE+0BR?=
 =?us-ascii?Q?CDryzaOqpgBUX1HSMVsmdZ4UxclazcB+TPt5zty4vgBcYXZyQIfC4q4wG4gw?=
 =?us-ascii?Q?p5iKh/qoci8HWBdDDaFaFfHq+fnC2KktdWsYWuLCOkFnCuSoi7GqUX36Hinu?=
 =?us-ascii?Q?Uy4jWjaxbf0BJ9DDQpyAqff5HMgVaZembKYM99WRFJ/kBIEQxuchuzL4iepp?=
 =?us-ascii?Q?REoDs4b12aTfhXDzP5Ta3puQeg2Xo3hsBfWGIT0h?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7364.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5ffc68b-1b46-42b7-fea2-08db1fe3552b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2023 14:42:24.9415 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FCx+dwQiEagfViTwANhgMcGVx9HXfLyBwNfAXH99vzgGNaHCVlsL16704Or/Aus0ONr8h1U3dMcBJ4KS2T664Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4722
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678286561; x=1709822561;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XANW/6gRGJLOqUdnT1OUTvdtYlD6XhG7zb10qYLystQ=;
 b=df20UO2AvymLckZ9LCE6p8oWlsv108iFdhQvILijCMEfquPGCYdAFFPr
 6vB82HOmAYKgcSXgjBXIejdqOxge4ZzDr+67/vdyP82xpIWv8YOxLjWWl
 Iyf1DzBGX8yZ/7H+RTz4djSa8efD9P0DykD8/fvmpD5uvZN0tGo3MWIZW
 XF+4V+kZiGp0w+9flvih0KHPjy5muKgQVWDWizdopRGp4YcBhgPtcvrWy
 ioLNp7Fmgb7pQCsjP4PxacEXdnIkFoQxYsSNv8lL1/eW80LaEKdQocV4x
 /BUiPaIGKJHK5xMSgExNsRwivgYDvrG/RI9BoaVdAbCM5CnDgJzCJo0y0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=df20UO2A
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net,
 v2] intel/igbvf: free irq on the error path in igbvf_request_msix()
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
> Gaosheng Cui
> Sent: wtorek, 22 listopada 2022 03:29
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> alexander.h.duyck@intel.com; jeffrey.t.kirsher@intel.com;
> cuigaosheng1@huawei.com
> Cc: netdev@vger.kernel.org; intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net, v2] intel/igbvf: free irq on the error
> path in igbvf_request_msix()
> 
> In igbvf_request_msix(), irqs have not been freed on the err path, we need
> to free it. Fix it.
> 
> Fixes: d4e0fe01a38a ("igbvf: add new driver to support 82576 virtual
> functions")
> Signed-off-by: Gaosheng Cui <cuigaosheng1@huawei.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> ---
>  drivers/net/ethernet/intel/igbvf/netdev.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igbvf/netdev.c
> b/drivers/net/ethernet/intel/igbvf/netdev.c
> index 3a32809510fc..72cb1b56e9f2 100644
> --- a/drivers/net/ethernet/intel/igbvf/netdev.c
> +++ b/drivers/net/ethernet/intel/igbvf/netdev.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
