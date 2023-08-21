Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABAA7826E1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Aug 2023 12:16:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFF0581F3C;
	Mon, 21 Aug 2023 10:16:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CFF0581F3C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692612960;
	bh=TKzOLjFkvUxV1Wsv9kxvyRDlPtoTfgGM0XruCwgYWC8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=2WGh66VJpmSEXpq+kL2Hpd8331VB9Fe/KgG1uWLcg66bOSHW7hHkZ0UTvPTTULjJv
	 ojLy8++Bnb2k/Id9n+5wfZYsqMwNb3beCfwV/G52URtDjxikdYeF+G9oYe7/wjZR0E
	 sL/XfTCYYq1BF/bpYIlO/gdSBtNknaUNeIFNy/7EudzQQBbqk9tC0ipYL6ECcUeCH6
	 lTXzDarZ49oqNgGzK8PVbHMkZp83ihsZc13XH7e+uyWyEtHLwZ6VnhpD2/Ap8K3xjD
	 MonXD5josp8N6IlAKR/sVAFOTLz1rCs0Xot7jgSU1ebsCQbAeBkx/YhWzLn1FYLTrr
	 nyxxA5wWOGywg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id erJ0AC3qL5IT; Mon, 21 Aug 2023 10:16:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB67A81F1F;
	Mon, 21 Aug 2023 10:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB67A81F1F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D00821BF2C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AA88F40A6C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA88F40A6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73N7cyxNRJLW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Aug 2023 10:15:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B291840A65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Aug 2023 10:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B291840A65
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="363711610"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="363711610"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 03:15:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10808"; a="801217306"
X-IronPort-AV: E=Sophos;i="6.01,189,1684825200"; d="scan'208";a="801217306"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga008.fm.intel.com with ESMTP; 21 Aug 2023 03:15:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 03:15:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 03:15:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 03:15:46 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 03:15:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fbVGBqaKDC1F6pfHfYVhaGWl9OSQvvMkrrMN0yEzi+FQqEo6MWAXhJetVLnq8kuS9z4V8wldv7+a+xeiIuQ41OmFlKwOHJJi95arI/x4C01zlGQPrRSyGTqzciwdI/WZ0YgaJLQCw/QezeDL3RVMpmOO7nuRiHg9MfLjfReKymi4yj68a/Pr7QiLhT4p3eLaSy7n7Ekzl9VtZ5ifGKrX9H2jRc5xwG4zGJWVaR4538vzbWhHzf3yRtUqmOAkEE+6ep8VnK1/xooWkiI9HFPVVGJUFlG9yU2Q5gQdPkKwOwoC+iwAQQZ5JEM2kgw4HI/ArLSuHOsetd2M9eqsd2D01A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SiKnIPSI0fQLXIVlpzVMa67Ad1sVQwH+FYWOa4EXAoI=;
 b=ORO5h91EOT6z+lgzWsik/U1eUk6S+58VXDzD2SXoHHBr82g+u9vGFq+a67mYIZlNTqAzNvc5f0uBhHa/0ancACwIwdP2fE7tErdiOZo9OId9zIDsGHnXAL67d5z1FBBNmOC8/MRk/4RjDKNOnoVKrsH/3uulZ7cO5RzlxWwe4WYPywRaquoN1rZAVvFF442/B/4iFCQ+iZ68BWi2M89WTFUrb5Y1kaKE3rQ/EP1VRloIXCwH7aXPpvMkyRPe+2wZF9vnC2IYvgIGT+mMA5l0l3dnYUm3M6+PwOpOVjDsJRT5KdvJXoZG+zsY9C2PDskryrtjzYeQ5wsl0mmI5ImrwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM8PR11MB5687.namprd11.prod.outlook.com (2603:10b6:8:22::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Mon, 21 Aug 2023 10:15:42 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 10:15:42 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>, Jakub Kicinski <kuba@kernel.org>
Thread-Topic: [PATCH net-next v4 2/9] dpll: spec: Add Netlink spec in YAML
Thread-Index: AQHZzI8RrqRf3aKbFEyIwXcwF38l0q/qq3UAgAQtf2CAAFVFAIAAgm8AgATi18A=
Date: Mon, 21 Aug 2023 10:15:41 +0000
Message-ID: <DM6PR11MB4657E60D5A092E9FC05BC9EF9B1EA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-3-vadim.fedorenko@linux.dev>
 <20230814194336.55642f34@kernel.org>
 <DM6PR11MB4657AD95547A14234941F9399B1AA@DM6PR11MB4657.namprd11.prod.outlook.com>
 <20230817163640.2ad33a4b@kernel.org> <ZN8ccoE8X5J6yysk@nanopsycho>
In-Reply-To: <ZN8ccoE8X5J6yysk@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM8PR11MB5687:EE_
x-ms-office365-filtering-correlation-id: bdee2ec8-621a-4ff3-07af-08dba22f933e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NsujpIr+CKwpAvf4CLTmt65KpJmRq/RT08G13k0bFEQ2SBLdOacUF81TfMTsHzcTygnIzYvrbnUnF2aHIJmpkLYNm6yyisyX0xGDHPS8a9bG+HyduPqTWHFWoSDL/QUbRnM4va5SyFmNdOFK0936452Fp3B4CdDeHAMRFl49nEi7N0oFa9McLLrCf8kr6SOlqvWw5lemylY4c0MCySq289Ms7iXExZ36zwZvM8aWvCc7hp9pF99WuSvYImV6cVtlsJX+x2GgCFWjz/seuU91NKjatyyXnx1ITel28GKJaAumvdP8NVpuj9SxblVJEX4KYpg+ElODl4dUS6FVgagAEryHbX381WLWvkIWKt0xLZXBKCYp9p50NO5WdlHIvVVISeqVIGVDSwczA8Thc8FFX/DynAzUCK5ErHR2AwzY9kLjv68K5qeQyZrACAHwHqruU7FMBijCyVFQKY4Cgg/fBLnD+yRE/ETayK03sLtdpQ8OEGlkOW2PrKaXlKFZCCaP9W6LuFeEY06NRrUK2gzF1+YmwUSvKqVEnWkzjSzQOdcbrMQph83CJgauCB1+Z5+g1cD1PuLtaOeyZ94IGsM+VrjYxeHB5G+CQHsDB78HXhndIlq2Klal6QO4iFZy3Rw0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(136003)(396003)(376002)(451199024)(186009)(1800799009)(83380400001)(2906002)(7416002)(7696005)(38100700002)(6506007)(5660300002)(52536014)(33656002)(26005)(86362001)(38070700005)(8676002)(8936002)(4326008)(316002)(9686003)(66946007)(64756008)(66556008)(54906003)(66446008)(66476007)(76116006)(110136005)(82960400001)(478600001)(122000001)(55016003)(71200400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?A8gIOMQJ64fGiPSM47dTlsm393U5LFa0v8YmLnGoHujS73lT4d3Jlpia1pNk?=
 =?us-ascii?Q?mmk5SaC36wfvELZCCSQFZ8ZH9U/H+kVqLHXpb5/pPpyBz0OmGGl9E2o95/Zz?=
 =?us-ascii?Q?G15C+2QiyGUqipwNy1dIPGbJSo2o9zaY6m95u3E+xy7fK+7sLvD2ZiyQeXyy?=
 =?us-ascii?Q?Q2l936SN8oz+Yo2l1q0V+9CMVwzlDnfItqNTk5SoRjZk3Wc7jq9JDGh5dGi5?=
 =?us-ascii?Q?hPkkZC+wiAMBRKNlWUnM+Wrcd39ClhNP9e/Lc7Q7IJRQeI6PR3TDm+fnBbwg?=
 =?us-ascii?Q?w67mD0/fOERwOKfDWgOpchwDIRsdgprWLfRb0dMrpZ74uA7f29l3LdWrzu4a?=
 =?us-ascii?Q?EjTAOJgsQoSUmCKZMY9lsbeVnJdyrHnbMcr0cs0A4f4nAhLEyt0bRXGiHw2J?=
 =?us-ascii?Q?2tCe7l8zSVw/shI6UvMI6y4kFMhYDb8JxHIxp2+9Q7Bs9Gq0Z3Gv6QnWMjBt?=
 =?us-ascii?Q?1l9cgOiER7rQ0J3Ca+D3umNZV6MaTgcY85vW0dFfvZhK5WVh3/nb0H0u7+2Z?=
 =?us-ascii?Q?4dZsN/yUW4BYvKOIi3IZ4mUV9gOjDh6d/bqsRunBlXKsNnWHiFzK3FzjpBw1?=
 =?us-ascii?Q?7xshXoOomejzCJdO6yBKw0L1dkzRdgego7PREDLIfHUmWv5f9zTDxONPnkpN?=
 =?us-ascii?Q?etoCDdQZPCwk7Ialtjmn/DLnPnYsftDg7lIUFIyj6CjJyjoBKJCAS/yA7A/d?=
 =?us-ascii?Q?aXydYnRtgGBY6i3NqonAVwt9WF/Iiglp4+4/zh1RFuNaWLDFKxN/I1B3ermL?=
 =?us-ascii?Q?eg/v70J4yKvUaW+TfK/m7klWpZ1nRTJcSemrdYFLleUVGtE4LiH3jRm1fLHk?=
 =?us-ascii?Q?DHVAGKw2Agk1/2WCJFD9HO3cQ54FRWqUGiUNJB0f491rAEj9JMxuEXAvmAsv?=
 =?us-ascii?Q?O45a0ShMNciQ2yrr0DS5rugF8gcO7DFXbsHl9t80JvVwiEP9nv/v++G51AUU?=
 =?us-ascii?Q?Cm8MLvGmrZva0mWITV4180nESB3qm4I9UPzuS3O76itrmHFm2AaQ5uvkYza6?=
 =?us-ascii?Q?Cdy+rUYQhCyUYINrygo3gaIVPfY9C7XEpprb+DoPAacWVSsipqq9sPS0Xq1N?=
 =?us-ascii?Q?ATto7BbNjQpBMlNbekYDGVW/6wnr/LP5XCNI7neSBGaiPnFzGl9ijAOhu6PP?=
 =?us-ascii?Q?EbU409326JkHYuPFlU12QR3sjs92uJ9gPdqAvQuKPrN42HDWXafM7i9bYnk8?=
 =?us-ascii?Q?ZuOMmPzvi5NV0Ux4JCZTD/yfbli/QVXNU6quT0y9g6303B2rJnIaG3jUjK+L?=
 =?us-ascii?Q?BhRDbQp3hLMG8Tg7I+LTMi0RTaglJ/iuFOWOooFtmQHzxdo7Hpr2a1VmpDoO?=
 =?us-ascii?Q?1Dg7J53hpOaT5ZrHnRYmsjpyxOBA1xM3yvuQsm6XiEC47Tb95OFBQZiexiE8?=
 =?us-ascii?Q?S4/GX4vkHXXOY/lLF9JUsiTLeHjijSoAbD9KRboS1juiG44A3vyE4+UEyJAg?=
 =?us-ascii?Q?BWw0/1sLBRFfsk3TyXuh5aliG6MkfdxtuT59DIZVFnf2xxw3VpsxgL18vr66?=
 =?us-ascii?Q?V7KjLGrOE1j3ZQgxyRyBEgTBCncgU+0BSokzcP28QJY4h7WZvOswtrv/B8Ku?=
 =?us-ascii?Q?mGG5chfNacBuyQG30OQKygkuhiov6B7yh09yNgFUBYH53LwE3IlcaS72Vf3L?=
 =?us-ascii?Q?uw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bdee2ec8-621a-4ff3-07af-08dba22f933e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2023 10:15:42.0273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mGq4nQiGhwkxKOa1kBRap6tcwGueePZf/LexwAiN8ywZSo03HmRJ0umseVUPum56xGOE4wfGzYgskUNX5X7prGUAm0fTiUYakJoglJZgL/E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5687
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692612951; x=1724148951;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fs4jWb4lLnIRQEtt8LOeSFEAjm/xmsJgxN4l/A9k9nM=;
 b=jrSu1BDwjo+MgyPcGjO4BLRNtz2BVKCXJqfxOdf6xK7YKjbrygdfdrLy
 xdhag+GxBrqJ6Cw/AaxLPVknH6RjGLP4FJTZY73NvnKoJe+xb4utEme2n
 mf9lsYx4ma8rqjc0Ci5SvwClya8qqiPN36CHinPu4ifIraR6tqKDOCqih
 fxgjt0fX9JuiFKpHBWDPlQEFH/X0B/kcS2p5+islVl4hIxVgkD4nY86LJ
 nQIrdxDth0xEbDd8O7Eitt24b942qUNuP6gOYcVrfSW3hMlofxzUyMcd+
 l9pd67O3N5pmR3DqcvKk8ueTTalkGd27FxBnVljjl5VX/NWEiqgzJtpnu
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jrSu1BDw
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] dpll: spec: Add
 Netlink spec in YAML
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Olech,
 Milena" <milena.olech@intel.com>, Jiri Pirko <jiri@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Friday, August 18, 2023 9:24 AM
>
>Fri, Aug 18, 2023 at 01:36:40AM CEST, kuba@kernel.org wrote:
>>On Thu, 17 Aug 2023 18:40:00 +0000 Kubalewski, Arkadiusz wrote:
>>> >Why are all attributes in a single attr space? :(
>>> >More than half of them are prefixed with a pin- does it really
>>> >not scream to you that they belong to a different space?
>>>
>>> I agree, but there is an issue with this, currently:
>>>
>>> name: pin-parent-device
>>> subset-of: dpll
>>> attributes:
>>>   -
>>>     name: id
>>>     type: u32
>>>   -
>>>     name: pin-direction
>>>     type: u32
>>>   -
>>>     name: pin-prio
>>>     type: u32
>>>   -
>>>     name: pin-state
>>>     type: u32
>>>
>>> Where "id" is a part of device space, rest attrs would be a pin space..
>>> Shall we have another argument for device id in a pin space?
>>
>>Why would pin and device not have separate spaces?
>>
>>When referring to a pin from a "device mostly" command you can
>>usually wrap the pin attributes in a nest, and vice versa.
>>But it may not be needed at all here? Let's look at the commands:
>>
>>+    -
>>+      name: device-id-get
>>+        request:
>>+          attributes:
>>+            - module-name
>>+            - clock-id
>>+            - type
>>+        reply:
>>+          attributes:
>>+            - id
>>
>>All attributes are in "device" space, no mixing.
>>
>>+      name: device-get
>>+        request:
>>+          attributes:
>>+            - id
>>+        reply: &dev-attrs
>>+          attributes:
>>+            - id
>>+            - module-name
>>+            - mode
>>+            - mode-supported
>>+            - lock-status
>>+            - temp
>>+            - clock-id
>>+            - type
>>
>>Again, no pin attributes, so pin can be separate?
>>
>>+    -
>>+      name: device-set
>>+        request:
>>+          attributes:
>>+            - id
>>
>>Herm, this one looks like it's missing attrs :S
>>
>>+    -
>>+      name: pin-id-get
>>+        request:
>>+          attributes:
>>+            - module-name
>>+            - clock-id
>>+            - pin-board-label
>>+            - pin-panel-label
>>+            - pin-package-label
>>+            - pin-type
>>+        reply:
>>+          attributes:
>>+            - pin-id
>>
>>Mostly pin stuff. I guess the module-name and clock-id attrs can be
>>copy/pasted between device and pin, or put them in a separate set
>>and add that set as an attr here. Copy paste is likely much simpler.
>
>Agreed for the copy.
>
>Honestly, I wound thing that shared ATTR space is fine for DPLL,
>the split is an overkill here. But up to you Jakub :)
>

I prepared some POC's and it seems most convenient way to do the
split was to add new argument as proposed on the previous mail.
After all the spec generated diff for uAPI header like this:

--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -148,7 +148,17 @@ enum dpll_a {
        DPLL_A_LOCK_STATUS,
        DPLL_A_TEMP,
        DPLL_A_TYPE,
-       DPLL_A_PIN_ID,
+
+       __DPLL_A_MAX,
+       DPLL_A_MAX = (__DPLL_A_MAX - 1)
+};
+
+enum dpll_a_pin {
+       DPLL_A_PIN_ID = 1,
+       DPLL_A_PIN_PARENT_ID,
+       DPLL_A_PIN_MODULE_NAME,
+       DPLL_A_PIN_PAD,
+       DPLL_A_PIN_CLOCK_ID,
        DPLL_A_PIN_BOARD_LABEL,
        DPLL_A_PIN_PANEL_LABEL,
        DPLL_A_PIN_PACKAGE_LABEL,
@@ -164,8 +174,8 @@ enum dpll_a {
        DPLL_A_PIN_PARENT_DEVICE,
        DPLL_A_PIN_PARENT_PIN,

-       __DPLL_A_MAX,
-       DPLL_A_MAX = (__DPLL_A_MAX - 1)
+       __DPLL_A_PIN_MAX,
+       DPLL_A_PIN_MAX = (__DPLL_A_PIN_MAX - 1)
 };

So we have additional attribute for targeting either a pin or device
DPLL_A_PIN_PARENT_ID (u32) - which would be enclosed in the nests as
previously:
- DPLL_A_PIN_PARENT_DEVICE (if parent is a device)
- DPLL_A_PIN_PARENT_PIN (if parent is a pin)


I will adapt the docs and send this to Vadim's repo for review today,
if that is ok for us.

Thank you!
Arkadiusz

>
>>
>>+    -
>>+      name: pin-get
>>+        request:
>>+          attributes:
>>+            - pin-id
>>+        reply: &pin-attrs
>>+          attributes:
>>+            - pin-id
>>+            - pin-board-label
>>+            - pin-panel-label
>>+            - pin-package-label
>>+            - pin-type
>>+            - pin-frequency
>>+            - pin-frequency-supported
>>+            - pin-dpll-caps
>>+            - pin-parent-device
>
>The ID of device is inside this nest.
>
>
>>+            - pin-parent-pin
>>
>>All pin.
>>
>>+    -
>>+      name: pin-set
>>+        request:
>>+          attributes:
>>+            - pin-id
>>+            - pin-frequency
>>+            - pin-direction
>>+            - pin-prio
>>+            - pin-state
>>+            - pin-parent-device
>
>Same here.
>
>
>>+            - pin-parent-pin
>>
>>And all pin.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
