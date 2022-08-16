Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A40595940
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Aug 2022 13:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CB4EA81468;
	Tue, 16 Aug 2022 11:04:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB4EA81468
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660647867;
	bh=aTBs412eJ3l1f0/znbg1RlyvM/0YWurA09rW7vSKmUE=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oyWeuMDRHsmwmEFZI5vnapiP0gfci5ckI/s0P+gBNgAi2+vzgB7OZLJWTuuVWVl3z
	 DuCZ4kEdGUH+UEctIYejcTU3NXdIkt9op5syoVOaOZxXtl02NyyJ90GbEcalOyqYH0
	 jVmbzU7cX3bD5AIwKjEzZ28d2HjY/IE2EGV7eYuCOMtzRsHRWNxxzPoDAX9DySMtuu
	 HWQi56O/4VikCFIsQTN/66T80HKbEL3uN3Ys0GYAx5pQpiLDM4uqh/caD8fjSd7Tg1
	 He2oTJ9lJxNIyqxBzgOmkgd2qO7l1GzaXp5nGZD6BS1AtbW0MX7zsEw0gOQFVGJ4q/
	 h24k7sRkZsp7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ph7RoadExxJY; Tue, 16 Aug 2022 11:04:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0E7E81467;
	Tue, 16 Aug 2022 11:04:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0E7E81467
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACC981BF386
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:04:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9159C40874
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:04:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9159C40874
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WhzIKPv0J9Uc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Aug 2022 11:04:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04F61403CC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04F61403CC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Aug 2022 11:04:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="353933267"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="353933267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 04:04:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="667067270"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 16 Aug 2022 04:04:19 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 04:04:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 04:04:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 04:04:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 04:04:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WIJNwhmYzRPDfeVxXVNsOj8khaNIGcgFAPzwR6vU/C+0y9atJGjHViYYrtPLTrRTvt6gI4ES99W9G9nBz9UDQVh08mt5O4scqpyi4DAIKUm7MCbAZPcGCsuUxibCD1AyOs1Ia3ID914cC/MKbzrIrFBJH/f8W5EciOZRgcAMwRyJNbsbapRW/Av7rs5/S5hrv7n8489KVXrwoHDtA2bN96rhRo0RWSdMcWCnm1zTcUz6oxxPkQrmp1YNftEdl6887Cbr2kU6TwKctaVnqyKfx69v3nYGvorOyXZlvvLXEEWkB6lEmCnRODlqr20uWld9lX2IksEfoAM8nxUBEtvurw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h42KNQ33RgDYh/H7sUcV7u3ZHp25JkgmsS4OZoEb0wo=;
 b=LuQdBGUBpdvWP2ZWiDOi+gdsu/P7XcC3FjVae81abAREX9HER21QmlX4ftPbOZTYnxcvUUWi+9OhfvTZg7cvrtttp+plWn4+wIEYu4SafJ6JHOTKZYb27sLL8FdtHK8qxB1n6L0Kbp76iOVXUCHvTCFeA/6g5IP9LE18BrlbHsAnXCS2odKsApuiN+ZuLw0EQD9CQcw4+/IlhigdGoD/7dWhgJlvNSJFzzuxZ61Zzcm/VSFCQ1mpuNKE/yVSZw5WenVyyfDIhoqtOtvXRfiu5NioWuBYcFgsQ1RJ43sHz3IQn6NWGwA+vVKbGfz4sasqGJfVeuFGVVvd6//zoMR++g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by DM6PR11MB4492.namprd11.prod.outlook.com (2603:10b6:5:201::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Tue, 16 Aug
 2022 11:04:16 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::682f:e9fd:d1d7:f3b9%4]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 11:04:16 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/3] ice: Add additional
 flags to ice_nvm_write_activate
Thread-Index: AQHYrYMs5VjFWUnpq0qQpiRjMXAyt62xZK2Q
Date: Tue, 16 Aug 2022 11:04:15 +0000
Message-ID: <BYAPR11MB3367344CF3D1B142DA3BBCB1FC6B9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220811130535.1053828-1-anatolii.gerasymenko@intel.com>
 <20220811130535.1053828-3-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220811130535.1053828-3-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f86989a8-bae1-4811-e3f3-08da7f770f46
x-ms-traffictypediagnostic: DM6PR11MB4492:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uTyuMD1BsK6IsRG55jdTFxrWeZjLgHYX0TXBRs2Sv7a8rpZI76/cCoywrE4/jHtsef4IOKpFJ8ErXOBrUpH1kyQb1noSwQSaSy4KsBmMHa138qZfl+FH0YRRE6sMJEIygqCH4Tk4HTtTKqMqXV9SAHwNCxCsnfpYJMxoN33tE1PNBwvVAsxJOwOXRkXaJDQXmWFcSIT/Ox+yW2Yeoo3UEDBQx7zYku/gVzhqdAo7HdGLfywRVdHxZZcPyBzOBJ1Hg8oaBNWMz61uAwPfb3e8+KlHTX0JXpilLQlag+gBJK/RVnHLwl1t5VRJwp/2nBpTTuVojdikzP9s6KQloQ1cWTcKIkm9IcVhL9Jf9rrdBb03CLWueor9y6bLwBnoArOpgNNEd4Gu7tAcKx70MuboM/vZX9yMcYM19XknkSANouAi9/KJ+zdNwK4T+04L5aNdj+qBRR6LKAEtm4NtHUPRqexTR3LQcF7DpQdJhSNdzgBKhW0TK5d4q2Xg+YTZtm2SXdku5c8VrPrrtaC3LD8lTzgmPlQtf3kQIX0Msk4c83zKMlM+FdlEcow4d4hGIeOS3kNJauPH7P/8gNiF/8cGlaM+97O3+dvt90yJSh9/sFOc1H5ZZb9Gcc2Mr+TVHgUdAFxxCJ6L7xO04nCm+tS3k7jaN700/zIUcIzq0epX6sPRW75PDRdGdGDhMBkTvxsb5JxBsUKRJaD8npC3Ymq9kpooJSEPZfPi5yijH5RP4KYLdO8Sn3tFF1rYtt8QJlKPOKAZYr/8BAA8NJfLbH3cH5NIlfYZo3805Eq4eZRRY3fUao1icbfcv9nxRaa9O/RT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(366004)(376002)(136003)(346002)(478600001)(71200400001)(38070700005)(86362001)(64756008)(66476007)(66946007)(8676002)(76116006)(4326008)(66446008)(66556008)(110136005)(316002)(55016003)(83380400001)(107886003)(186003)(38100700002)(122000001)(55236004)(82960400001)(41300700001)(53546011)(6506007)(7696005)(26005)(9686003)(2906002)(33656002)(8936002)(52536014)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?z4YdInaUaI0udWk0GhBedJs2LX08unttoJoakODRNfokIEtWNAGmbQMDhDJz?=
 =?us-ascii?Q?6Tl0uJGwnR/k+LpccFjblSPM2WkT93OINjtObzESgqZiwFtESWoFVmpToUlS?=
 =?us-ascii?Q?vv4t25rXBM+KJMCDm85hJa4ySVwHk1Pg2KpouAjQBgR2sZP5Joc9JFb0sd6i?=
 =?us-ascii?Q?5FbJr6BEB3Q4igj5PDcgKpbOlBf07/ja8xYl0UZkZtMczbvA8JdRMw+kUN+f?=
 =?us-ascii?Q?p72S8mbycyhbFlwfxVBqWzZDoo6wNU0UKok6BzPPBX2NExY9WHYWsrURna1U?=
 =?us-ascii?Q?QclnLGvIx+ZDNQvLPYgaQc2mYSvTvxCQ232F55pN5TAKfCGV9xq3/MCQ5DSF?=
 =?us-ascii?Q?xQGgGqjPgTjFbpUa66BdeC1cN3Ek7+A1/BYDksT8FbHZnzZSsAPgtvgJImxV?=
 =?us-ascii?Q?sTDWM6r1tkQ7XtYe2sfPCq4CTeUId27omTWY4+EztMVik/JdDxMXD+jz1M9y?=
 =?us-ascii?Q?ExtOGD50WHIiRlTyA5i5j7zYYFbADD6oB4qVl7ZogxRBovUVfEwBwMr4OjIY?=
 =?us-ascii?Q?bj4t1A/4XE1vsjIR0XK15S/elOIoxcqwgeL0ceRvvzHIkRlkvOoBOcAShnQ1?=
 =?us-ascii?Q?V9/2cSaIjpNS1xeLDvA/+/08PrC/5agPeU46u5VKZla0yyPz09GmENGlZOJA?=
 =?us-ascii?Q?GX3MW+qjvWCQfGrguuB449sZh3veGRtlY8UmcYqe4t0/CxPbumrxibhYn9cw?=
 =?us-ascii?Q?iG6UmCMelmoV5f5NMzKpxYOtc3POrQdQK8dCd8FvJgylhXiKWwwKrMv4+AJ6?=
 =?us-ascii?Q?wTMmY541znenoI8vbp7jDIK7FfPnYlrF07t+sCEyzFABvfYNn1WQzSR4Scnw?=
 =?us-ascii?Q?1afMbZs1yMPgpjNoTtgZtF8wQjgNYRHPTTqR33454eQW8YpW5qJhmyPHH3m2?=
 =?us-ascii?Q?9K6G8SqnTF7U/9hxzPqXL9yognoNn1PYvmqC7+0eMBI9iG14uJ6hkxZA7bAG?=
 =?us-ascii?Q?Gjtmbir8PQsj40eBFEWx50p7GDYvV5ANP0yXROuZmpJ41P9Mm/6O/p58lW/Y?=
 =?us-ascii?Q?/tb6fJtBqi1x0ydsmwc6GDtYrrvneewI8vF6uTEgRXa+Laaym/5VumMndRBx?=
 =?us-ascii?Q?Unc5swemTeyGeiqCxK4GvPr6doctJ8KP3iMviLm6wVlVOI/QoBapOWg9AazN?=
 =?us-ascii?Q?sak0WYXLBLgny93Sdm6kYYtlSYssuvGh6bMzqHQbL8mcWnyiLZGcvSyleXMS?=
 =?us-ascii?Q?nDhg6zjamxqjdLOrS3V2UxxOKbGiyHMXI5Mf1f4Cso0vE9LYBaZHyU2us4k+?=
 =?us-ascii?Q?RCQHyikHDB8JjM+XbBaHy/9o0EYn0f4q3M5wW+nJJIyYByPVxGZZ1SFKco3s?=
 =?us-ascii?Q?FQ+Ewe/dwHA5zsCL1DUBOijw9WM7YgmLrMq648mQ+FxjH744c5hrjtsbNLKg?=
 =?us-ascii?Q?MpE1ye4Z2vqUQeVQp+WgMy/pEhbpJxVeW19dE+TzldwzfcTz1gnYLAeEw6F1?=
 =?us-ascii?Q?DOFUNpJUSky5zBxHyUqHG1RWYWK0DTZc1jPduub2QmWh/Pp7zUGGNbT8O+SD?=
 =?us-ascii?Q?ZjL0y/64NI+400iPN7fGVMxXg4IXSYLGK2otEWnTRJzd77IaZ8xqV3afV36M?=
 =?us-ascii?Q?OdE0VIjFu8mLblWhKEgZdYazd/osJZdCCxS/We8j?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f86989a8-bae1-4811-e3f3-08da7f770f46
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 11:04:16.0017 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 70a8FkwlZQqwAWLjcloEGX0/uXDizW06bkrgq68ibCjZoyUqZzNRdrsUT4sxv/R4G8nSKcNISXo7hClK/2T3fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4492
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660647860; x=1692183860;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WXVRYkeHNp42I0fqFwxr8BxO7H5SlezVY1p8u2wpeyg=;
 b=QH9wMHUN6W1+QndZ2SH9eHfJExEHPCgdFc1ssqvnVbKOjUc5IkdbL+fi
 N5fMN9ySXKPPzV/A18ccSMddGcUNWfkDD4IWAuwZbMpk0boGpsOfvD3uq
 C7PvcesvoI+EoEQ7vgmldbgAujaDI8awTofQolNEU/jcQgjLoqu3OWrsT
 tpV6DxnjmVTuF6a2m5MfiMMGujGdw9EWxQBDb2rClTroI7uqfSIYPRHeR
 JPIX/AUEPoRmdnvXp/h7J8IZi5i/eX39J48WNUqFYsN1vOcwf2gNLKOJB
 cY3rt3jE2AzZGSlVTSrNP14JYoq5R6tsSX/DY6hacBR5xFGWzocuuyIFg
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QH9wMHUN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/3] ice: Add additional
 flags to ice_nvm_write_activate
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Thursday, August 11, 2022 6:36 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1 2/3] ice: Add additional flags to
> ice_nvm_write_activate
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_nvm_write_activate function is used to issue AdminQ command
> 0x0707 which sends a request to firmware to activate a flash bank. For basic
> operations, this command takes an 8bit flag value which defines the flags to
> control the activation process. There are some additional flags that are stored
> in a second 8bit flag field.
> 
> We can simplify the interface by using a u16 cmd_flags variable. Split this over
> the two bytes of flag storage in the structure.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  6 ++++++
>  drivers/net/ethernet/intel/ice/ice_nvm.c        | 13 +++++++++----
>  drivers/net/ethernet/intel/ice/ice_nvm.h        |  2 +-
>  3 files changed, 16 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
