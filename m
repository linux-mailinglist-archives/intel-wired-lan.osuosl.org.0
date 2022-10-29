Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBFF611FC0
	for <lists+intel-wired-lan@lfdr.de>; Sat, 29 Oct 2022 05:30:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 463474154D;
	Sat, 29 Oct 2022 03:30:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 463474154D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667014252;
	bh=Umw8/btCo8twFEybiVaeL+gLO+8tJ2vkgJKAXPPIDho=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6ZA0uWmE11oswiU5kcReL4Bi5J7lUdWfRtpJs9yIRKKETX0OQuTdX+0FfIw4DoZ3k
	 vyG2sXrxL1/rykQB4IYpSMXAmfjc7H9YF1tdw9xoGeLRcq2KyyasgBhxdxNti/0K+o
	 YQGJW0U3u/72FzBby1YIDHfv3+PXtYpWTz8+Ge81KdI1N6hywvIasvopzEcr26Q0/s
	 Wdppse4lEq3xa12t43MjF+eTnlbgsUS+lcho4ZI0gN1t8z07vaeSOJKUW+lAhmG4F3
	 S/VL+DXH+zeLHOaNoF2CUpFFeM4ZBxqbJSvnKunfrnlNHV3v8TkLp1PQSwaCZS3MOI
	 GtcvmHouk+qsw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jNmKkGx11NQp; Sat, 29 Oct 2022 03:30:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3BE54148F;
	Sat, 29 Oct 2022 03:30:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A3BE54148F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D67E51BF982
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:30:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD779400F8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:30:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BD779400F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-owc2LFp7zP for <intel-wired-lan@lists.osuosl.org>;
 Sat, 29 Oct 2022 03:30:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 203BD40017
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 203BD40017
 for <intel-wired-lan@lists.osuosl.org>; Sat, 29 Oct 2022 03:30:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="394949044"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="394949044"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2022 20:30:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10514"; a="635520454"
X-IronPort-AV: E=Sophos;i="5.95,222,1661842800"; d="scan'208";a="635520454"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 28 Oct 2022 20:30:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 20:30:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 28 Oct 2022 20:30:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 28 Oct 2022 20:30:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 28 Oct 2022 20:30:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HnajQl3K17qPjX9WZhTZJwx27R4AMdUS5zgjxCV5pLMH28ZQx0vsWVD4eYKEcxGgrPeOxdBhOAXCOczjHVMHEOGnGSwBTVJgPvV32anamyOaNd+0pwQcLQsZ3uZbTsxMNM1HiDUIzRCcQ71VE8MTGo8l5Zrok0tXdCn+6hD9jkPENBxk+nN+nPlSF30WWinCNpBLKuNmzw/RBD27U4DpOOqpBQafasIf063S+sOaRrmcLlpgqeEgRNtmyLBMsr5N0RpYdpqaXQFqYe8PV0WuNBXF4r+LOFkrW1WZ0XPoESyBgJQWtveMyL6uU3r1LZ4S2c2MMYeRXdmUom86ZpmJhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3IcG7NGuJfUu7Ean2AKreiR2vh8HykQBmOS7AXH1llA=;
 b=Bs1cV43QYaCpAt7YlLdzUbOU7gAk8h1JiXy13KjujPgeNBBOHU8Q9AixOfZHfpCiYCNz29xW8CvHmckS2dwX7cHf9U4uXR6F+Q1yt+vu4a21S5gFDGuaqjWQbmkq8EislbAcRxsVTZNKLMi6xVF0rmVSQNwnjUSBF/fVQENiQn4954zNWD+htW4E9k4BGb17OH+9ZKHDgcE8CW9zQVpJrHTzgN1Y3nRIRS70XOb6Qh4z2RkKxqR9pqRd6T4fxC/Kq6ihJT1DTyOOI4itG0NdqiRgfPZUAJZZ2s1lCvGm5D/e4WXWA+7E9GVgwwCNkqJQY4fJm2uqUwnx2H8m8EXYTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Sat, 29 Oct
 2022 03:30:37 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::888:2df7:7c31:e1e5%7]) with mapi id 15.20.5769.015; Sat, 29 Oct 2022
 03:30:37 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: Kees Cook <keescook@chromium.org>, "Ruhl@www.outflux.net"
 <Ruhl@www.outflux.net>, "Ruhl, Michael J" <michael.j.ruhl@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to
 kmalloc bucket size
Thread-Index: AQHY4tOo1jdmYkTk8Ue0EBJawSM6bK4kx9gw
Date: Sat, 29 Oct 2022 03:30:37 +0000
Message-ID: <BYAPR11MB33673DF155DB8935BBFDEA02FC359@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221018092340.never.556-kees@kernel.org>
 <20221018092526.4035344-2-keescook@chromium.org>
In-Reply-To: <20221018092526.4035344-2-keescook@chromium.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|MW4PR11MB6811:EE_
x-ms-office365-filtering-correlation-id: 51a675ac-b11c-49fb-249a-08dab95df24c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cYvakMl/IgHMk84cwwqlP8za/Bj8m8l3VwHY8d8muut72gLlLBEeJ4ueKn+8PWThHv7aCeiG41UQrwTWk+slsDMS7fLbrw2agepHY727iO8GHZYrzQ14GSHut7x5chh+nIyW0+k830mN2/Nd0cg84dtZNA4xgaRO+NGwUdFC/Kkb3wcyfuFnX2TTDZA9A+4V4xPAnispzvPyfpPhdxHyzkTdDltJYqJwhW/KyJqhK3+pFBN84mnYe2yP8wY9inkpm4lZF9lbBbRedleHKvn1hw4D8Ze4cZRSIIaq60HHspDvK7zXrocikX5q6rMNp0PgG9AEEJFDIZNVuz+OxnNw/SKudJGMs5iIkqjTFXZTshoYjQlDL+CndXW/mFSpc9G4DKUqGIKVvOlEFnyYntn/KBLQtrna1QA9TXmKOLeRPtnZy8Rx71dbr2Cl+DEWyoNyqL6EfzoMUz9ZCRweyeBrhEjWNXRK3878oiHxdHNUHak5Pg/9vsqYga4x84gZvjZTZ9X4c4WgURO9iPbsGW79LsHb87qFfxoPafWT7s9ZBo7Po11WZAqe5HFVpM1vtY1oalK7dqEeF5nC96z6X1/nvqPR+4GpIQfAIM2+FCm/ru+U5H7L/KWSRo24eAz25cyfCmgEI3M8B0fe0jCC0ZpmwmcJGEA+mZ63EKQEEYEFuTxUAQ7zLd9xgTZY/+4s7TSavpmFT/l+73F7UYibXRajNg3jgDcI3G24uxtT4VkIZVEagwWqlRrpE8Ehhoa+ymsKkMapcAi0L3aEkyR2WCfTkAWAJzqqWpt0EFhw1+doDDU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(55016003)(83380400001)(82960400001)(7416002)(5660300002)(122000001)(2906002)(86362001)(38100700002)(33656002)(38070700005)(478600001)(186003)(9686003)(53546011)(26005)(71200400001)(110136005)(316002)(76116006)(6636002)(54906003)(41300700001)(52536014)(8676002)(66946007)(4326008)(66446008)(66476007)(64756008)(66556008)(6506007)(7696005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oFus70X6BGfE7ELSFtz5uKYE+n3QshR39ZEdLVdSEZcP6pmZqwx9Gg5Tr23n?=
 =?us-ascii?Q?kcdRgTYtc1vY8II+D064g11vphtc9d4183211dOcU4m0KBLF7NH9Mw/zIIIB?=
 =?us-ascii?Q?WC2Kc7ABaxqet5FZO2j7pjGANyWlRvdiLJh5QL0OP7hukSLrYJSH0UKOJjxT?=
 =?us-ascii?Q?wD+KSuXTLTw73NfBkNBPoL7znRgs2Y96LdMB+D95oHPBWpEl4tGxFnBx5d6c?=
 =?us-ascii?Q?/ZnGcl7r+wwFk3IOzu8jsAn0qBU2UN6TBgO9+z8n6bTuliPWhFln7Q4GgpN5?=
 =?us-ascii?Q?XmhwTgse/o6Vpd7+Xy3qaAQJDetgjhiy33gWNsdBWYX1Wj4dFt4k6kgCTYL1?=
 =?us-ascii?Q?H0VS9UcjXiPbIZk/ymiI+oc1TyR59NxKZg+IfayNZJcphByt/cuPR38dOtYV?=
 =?us-ascii?Q?cgoG7FexRloG8Klkm41rQX3zam0PGeew/csGxCLzry5tRGZtoB2nHQgt1m1+?=
 =?us-ascii?Q?2wIgjOep4zowfz9GsxgWp4M6VvU6XmKgrl5pTAcLAVaptykRj3sbSd28mJjc?=
 =?us-ascii?Q?rJXN8lMYc2scNWsjxpuWIWwBgaVNa9GVSCC7T3LPOdxFrGlmvUPanzOIm7BY?=
 =?us-ascii?Q?GYHOH/gWS5uR+mjsWkkd5YjveYMz6oZ/FPUZ5cc5K+vYPQhx6N+1s959LwUD?=
 =?us-ascii?Q?bMUOHVMePdIx4/rxaMPrxWW0/zdDkuh7HA/TtpuUUVDjKNSle2GApxs53opd?=
 =?us-ascii?Q?yLqyWVN2wFY71+yXSbT07VyTa5T+llXoYCp4RNhjMQTHE4g5w5S/cR0x90n4?=
 =?us-ascii?Q?xz1agacF5VAvJd00qbdZe3NzzB5YSus3mIURffHv63NXXqv1p/TMDiVoVf0y?=
 =?us-ascii?Q?/55t6RgsIqagqpnyT1/+/xCGMfgODtDodcWcrwtj9cyq2Sybzl43uqcGoeGq?=
 =?us-ascii?Q?DT5k83GfJ47jWzrOrjQiunac5qhuQGsHYo9eLKJk18e4MUTl5UhA7mqHhObe?=
 =?us-ascii?Q?vIdy0HbG1KUEEsf/VvVPITIFzr3UTRBFKf5KaBKhkHTP8QqQDxZL8CdI6UF2?=
 =?us-ascii?Q?bEzuy/aV4eZvT/1OQNabnFgL7myqx5qN7a+y+a0WCiCXJlNPPjickB3krdPA?=
 =?us-ascii?Q?8E95i0OquFTuoBR/78bKDA7a81AUmQBaD5lwXaau0JtyBWMq3Tc0TvG4NaiV?=
 =?us-ascii?Q?b6PKMuKYnaBj70iaC3T915+Nk72AEZqmr8lxSS+90nmjgK6oQAlTOruhzxzf?=
 =?us-ascii?Q?xiay0oMwk5y5ppoBfGKrjEG20E9zL3rFjr0uh3+8a88ABomYxQKMI42VuOU/?=
 =?us-ascii?Q?TkCEf9vLHkNC5QNLLanGCNDXCSXMtHTQWt6hyfosxpgjr1i9jXKXPqxkZrKC?=
 =?us-ascii?Q?hjcvFA6IU7N0C7JsxecvkkjQu5tpg+CXvMFg/aI1N9M5hlIp1gVJ3ABgOow/?=
 =?us-ascii?Q?a4go4fIHhpPqhMpTpCvbhY4ZB7gaVpFzTt09Tee3E4+W4MS6IQlW9agL6ome?=
 =?us-ascii?Q?53GekdYu8tsCQWTToYLrZB1hIWg0+ICCnfWDWExNeWOapqgHwNVq/hnatxJt?=
 =?us-ascii?Q?d3b4tTD5glvA8+puOys1JjnS+JJkTTltNq+EHZY6W1cxn+w0TpQYT7+AUNnL?=
 =?us-ascii?Q?3T/54ahjOr93SptN0V5XUmwuVIWsrlnIqFJBpaaA?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51a675ac-b11c-49fb-249a-08dab95df24c
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2022 03:30:37.4051 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UxQ0URJdbXV0hpBz6Oioh3nDZqKETN9AC7JA877RYub79543UPFCcDemN7aAD06Zp+/KgkhXbSNeWaD1AfjafA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667014244; x=1698550244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5vYYMivKA7JUci4cCaR3PhEjMb2G5cjcx/9zr6Gmc+A=;
 b=nbo4BuBduCJZCwAJWVMuQie4RCARJmq5jSVivwuU0Adc6DcPueQr4DOI
 fyU+jN8d1icsct7gXs+D2WDMhLaJk4EZuCua3q/FmM5/y/B/bFgUinOnJ
 GBR2wOla8bUVQxj42Z9Nkq9G6PcKSScM+6L5s1wQtdxefGaIgHLBh9/KZ
 BoXLrz2kuQKAn1JeHO09ixEWbkH2d+DO37WZ6U+iqXswVGwq5j6xtWmcV
 Uzt28iM+REpjPCRHB76OHJPWk5f78FDxwC6NaxvLQ+XXnu8EhDe1wY7Ci
 I0vTjIPTZSoPUbQGb8Aeodfl/kP70iEPQt9AWhxJD82cB4gED789NO/gH
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nbo4BuBd
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to
 kmalloc bucket size
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Kees Cook
> Sent: Tuesday, October 18, 2022 2:55 PM
> To: Ruhl@www.outflux.net; Ruhl, Michael J <michael.j.ruhl@intel.com>
> Cc: Kees Cook <keescook@chromium.org>; intel-wired-lan@lists.osuosl.org;
> linux-kernel@vger.kernel.org; Eric Dumazet <edumazet@google.com>;
> linux-hardening@vger.kernel.org; netdev@vger.kernel.org; Jakub Kicinski
> <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller
> <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH v3 2/2] igb: Proactively round up to kmalloc
> bucket size
> 
> In preparation for removing the "silently change allocation size"
> users of ksize(), explicitly round up all q_vector allocations so that allocations
> can be correctly compared to ksize().
> 
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
