Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3EC7939CE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 12:26:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA6B7414F1;
	Wed,  6 Sep 2023 10:26:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AA6B7414F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693995993;
	bh=tFHsyxw2b56nST0ndTxkygl82U5compbFbOf5zWUGRI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3xaPqPpFYqy5hDaSrbnx0Ho31lgQZCGxSQjTnYX1ukIjFWgqqqt3wMx14l3UN4Bdh
	 F0oXXJh6OuUyppa1Gzs1LAz9AIyWS/LW7o7hQq/6t5g1IOUxBh+c0ToSpKENJQ3yxJ
	 sbGYaPPpQRcYbC6Hrlg7nJKJoO47kyQC/erBonILZzRtslnl+YaPcNXKtsiitED8sY
	 yNX8fRdGhCBgdK7AjoGbLe0DzNXBpBQVcvJPecplvpErnOGYy3jxe44raxj/JoAQJc
	 PjsVnCTryihPXgYyPERsNhaWL2hb/bHr+lFfo+p5GTY10R2DPnJUsYyoUo4wscspZR
	 IRnEQpL4o48uA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id V8Npzenn1o7w; Wed,  6 Sep 2023 10:26:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08FFA4011C;
	Wed,  6 Sep 2023 10:26:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 08FFA4011C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C472A1BF2E5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:26:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A92EF82035
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:26:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A92EF82035
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hYAzqWa6aDPG for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Sep 2023 10:26:24 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7311682055
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Sep 2023 10:26:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7311682055
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="380828951"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="380828951"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 03:26:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="884639834"
X-IronPort-AV: E=Sophos;i="6.02,231,1688454000"; d="scan'208";a="884639834"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 03:26:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 03:26:20 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 6 Sep 2023 03:26:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 03:26:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NHvtfsCcOlZGFcznxZDD6YhwyAUkQ4OJQ1MKCrP7iU7tl1OEA2zVUm9E54EnuQ8Eu0BQ2Ah+f+hdtCMK/uLqkGj6FJUBCSeNPzvS/puya0pXduyuRbCsy0rHQJoPuiSg7snJvbgR96SUEStYd4QkFoGq3n6oTnki4AKNIBCFEHt6d6tUoeMWS3zUNHWIEXci9vPsEI2mCOPbsb2d6wLfP4KcR7GYrHhTGpnbBXrUdziZVnYIBNwB/kjRdqOjXdOAM/QAhT/+0RPUla8bv5eskiErhSRz8t1vNnqyeJgx1kWyJPxmcq0TDe0X1DSQgcuALgr62KOAlpALIKBkv4VSgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fuxLw9neIWnPIG4fSJBWdfdL5hAZUmVcwVHzyvRjSfw=;
 b=QUhy8f2UkNvkE8Vo4643dVfBgdjAaxVRU6zqFbhPk1unz7XiF/Pl0bfebw+9DYMI5UaxK9kmoltS4ae94BOEZOCHS9IZDyCx3rOL9iSQtei9QVbc3Soh+OJplJEdXVaoETofXslxITNRKtpOH17QMU7kiRUvGP6ZjM4TS2hcdpL1UDS+/HjcB7qUZ/N5F568iWJrCGvOyPbAkzI1tJcEGeXFftwa+6cAByvPPSMwUwN5wBVkv8KJm4KIetljk9ke+MYj/Cgaa+hMpY31NJMdnlhSsHQLJzN6Pn3V7DEo8FYf7feIPeM8miuSbod8/Bm+vxzwfuYg6rx9+6GJKatAtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DS7PR11MB6246.namprd11.prod.outlook.com (2603:10b6:8:99::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Wed, 6 Sep 2023 10:26:16 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6745.034; Wed, 6 Sep 2023
 10:26:15 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "kuba@kernel.org"
 <kuba@kernel.org>, "jiri@resnulli.us" <jiri@resnulli.us>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
Thread-Index: AQHZ4FDCw1mHMtCJKkeJmPewpnRyjLANcEiAgAAhq0A=
Date: Wed, 6 Sep 2023 10:26:15 +0000
Message-ID: <DM6PR11MB4657497B4D1446F62E3BC5C89BEFA@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230905232610.1403647-1-arkadiusz.kubalewski@intel.com>
 <20230905232610.1403647-4-arkadiusz.kubalewski@intel.com>
 <MW4PR11MB577647EAF2272B22A73131D4FDEFA@MW4PR11MB5776.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB577647EAF2272B22A73131D4FDEFA@MW4PR11MB5776.namprd11.prod.outlook.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DS7PR11MB6246:EE_
x-ms-office365-filtering-correlation-id: bc99a86c-1ca4-4d97-4979-08dbaec3b369
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZNCJ4XJRa4aV29QO8OH4/rr2dnPdg7u3y6jNx+evwB1RFlaE+KOIStS/DaCY6sSOz8HytTU2WMCYhWfwhik8kOqid37g0KM709UeiSUguscyLMn8iirh/6tu5y4HP/cajG2ckeo1yrY3bhARYQ8fFvgTPXlpxzttUfie/haDT1NKuIFvBnTz4yeVhhIbiOKXEqJ9eyX1IY0BfRZjDc/HKnOgCj0KbJsXwPziOyFiaey27E5bZrIt+Gu9C+pTe2LVULQMgf0fUEaAJzQcK2XQqMU8IeZ+ZzYyWqg9gGeT1aFvMMM3ChZaKZz6ygCAWhxPnGvyO+6+sSGn0AAvD4x1s7u2jckRI5NXezP/sQ6wUhvbZVQOOMbfdmyRnLZF+yOpG5e01OGNrBiWiuyzBIHpuv5rwkL0ZQTDoPLgk4DYzk0CrYDITkoJO8J+aO7m+uOPCAGO2Hi2/Wn1QDkuNslnlllRbhdtoQUcFD20yQxlwHj68V7IwM2tj3p29EuVqL+u/RkBZOPnYT0utGd1NEms5ntcjBfPZB+74hx9vIkK9Zv0QT7a+j7ymCpgItnf/kRILSfdfo9MhmE0rS2hj98UWABzH9c3bjk9ABtXdneGKFI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199024)(186009)(1800799009)(122000001)(9686003)(53546011)(7696005)(6506007)(71200400001)(52536014)(33656002)(82960400001)(55016003)(38100700002)(38070700005)(86362001)(2906002)(966005)(83380400001)(478600001)(110136005)(66946007)(316002)(76116006)(8676002)(8936002)(4326008)(5660300002)(7416002)(41300700001)(54906003)(66476007)(66446008)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?osmYYq5bZzNUfYPKMK689rhHHdwc+fkJ64BGEW4qcOS2N68st42J6qmNg8C1?=
 =?us-ascii?Q?Z+sPL+9FayNwda/+n+HMt6FeSPzwbtWHNSOPAJMZZnSDV8OLnZfNQQ/ob8xy?=
 =?us-ascii?Q?Uqc1EpIzT88bUuSfjspzeq3L81BjRg6ngiLeTG6HfmHHHZXazfCacAt8d/3h?=
 =?us-ascii?Q?s+cFIZ4cHIVVDKfuQR9pMWwMG49coYbaLr6XWUIFob7t9BBsI5PdtTmOJUrL?=
 =?us-ascii?Q?HKqWLAccc7LGtW7YH0yLvlRiyhWtTONcEnoHen+nbMMWRLjO/B56hjMSkBWW?=
 =?us-ascii?Q?XPY9pJTa0/hOCUEoGq01brdNptQ7KrMMmfMpmoEIqW+KZwXeumuPvRO/rV4i?=
 =?us-ascii?Q?djILAt6+gy6dS3DlNEZc5kGD45Xh4CGlV2Z4/8CczLTvfUtB+POwiXLSQbU0?=
 =?us-ascii?Q?S/eXDfdXGButRhzed2zkCI7g18TyyhnVOnBrpsg4JT9/OTlMYp4nbtBk07es?=
 =?us-ascii?Q?Q85MlcAGOVh+UfC6aUxsX4csobtUsT/SfBUa9NBPFO5AN6jQ5gJe3kjxI775?=
 =?us-ascii?Q?4jU8zFGcqdNfQUPNpu3xuJlJQIE6AZ+nkxtq6nvpZLwH710/a9g/q5EUtKP6?=
 =?us-ascii?Q?KWkVI9aO3cDIcI1ouXA2NdLDGeBY/ZUFMzOG7PVQuzVOghKL2qGcLakyIw44?=
 =?us-ascii?Q?5No6EZ7Gk2G75O5fubHGGVaVLt7POWodJ+3tY+GpnSXxj7I/FTSlk8Xdln3V?=
 =?us-ascii?Q?FX2EJx9xw/ph1LE8RVR07pPzOBMTxHK7YMxRpt7JZMtR4ruKVNusBQwcxDOf?=
 =?us-ascii?Q?Rdwv8rxLaYcwDOuOCCEaKjVGPsYkwEVRuzgloZSQ5kQzs8k6b+oGfz60f4C7?=
 =?us-ascii?Q?x0pkqrT00Uc3s2kbEMonxfQJ/MMVWNOm6oi9r9EDMn3gI+JFBvlub4T7X4Nm?=
 =?us-ascii?Q?ll034kcBRxCg3IRajlluOatuOTh5PKN+FKMU9xAWGG3i2/QSkLQfpdEYGFhL?=
 =?us-ascii?Q?7T41AMm7ATFWl3Ht3zdUI7r2et2hVcavzOXlMNtPlFeffWWxG/ImtYEt38WK?=
 =?us-ascii?Q?FpDI/uaDwJy2/UINgsdpxEEsisXkCsLXNoBP0k71pj5ZmrEQe1SGcRuSur6K?=
 =?us-ascii?Q?Etpl/SfOc30XKRauTXkjh6qfNuyO+uBZh6odPOjI8ZhFhqnkecyM0LXsSdG/?=
 =?us-ascii?Q?3wbt/XlS0kQIyVGDkHvqJMnxpRnxvYviGqjJrcnHCiZCM4a/mEXEE5Zoev2S?=
 =?us-ascii?Q?i24icFhbhu+ia4n60CUu+gJKlkSYis0J+Sibz6VgkkyQTos+oZvtKMIypz5C?=
 =?us-ascii?Q?wE9q6b4EhY8YTo2KNDoVCByLtvmo/auOXKhHryFhUiaOQmT/87v0VcgYxaAR?=
 =?us-ascii?Q?AUvVJKbJtayv792rdt7Qr0T1gwSSGotcdu8hbKakF7elIt1n7iOYUJYT29H6?=
 =?us-ascii?Q?bJz3W7bLnaup6gfiYq9dQmEZmtA0FRhWEiuRBt2zVWIRb/foaLgor81WoUiI?=
 =?us-ascii?Q?3yRKBKS48hnekyG0zycJuv5ARthLlueSAtpKE8oVE1rqDy7xxT1fS2hnFdlL?=
 =?us-ascii?Q?a8AIyfTDmywMLTCpGiPbW79ImiFhr10z5TiZQiF7fpQ2bAdTL4herSWqZ2wO?=
 =?us-ascii?Q?wJzWls/L4kyW7EMfw9FEi7hSflpI0lQMIHf7gVfygf2QDXjGGSTOFfVENUi1?=
 =?us-ascii?Q?+RC05syHjvtXuSQghJS7J5FP8yO97p8IdK/1JjQpHcdDK2kTHW257vMXTXUN?=
 =?us-ascii?Q?NZsJ3A=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc99a86c-1ca4-4d97-4979-08dbaec3b369
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Sep 2023 10:26:15.4907 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YbAYrgd2iFGn7e7HGx3XjSsiJbKH9/yvVhVjji+v7rMcO1Z75/P91OMdd5BvVSSjzWeadHceKWPseLrwpxyf4fF9tfvqf/xo17f/32VSgEI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6246
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693995984; x=1725531984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WMhnAR1sbMmFu0U79lTBLHtF+yfuj4+7qrkTt5Ldtpg=;
 b=YZa+YDLDhdUA7bZip8fMVO4maHI1W3J+wFkykV6tQqJ2o2tjXMKJTQun
 N7/02s2mm8MFxHcFuaWt7mqlLOWZCbdvLQDbO5LHsqpxLpX/HvnzVKt1V
 YXxc0yA8ESBZmi2PqYtJs3RY4/Wiry+dHlspx2vzCMRyS5TxQ3zryPbMz
 j/18hjhRhXVG6MimXQCfAEk/xadVK4jrjgpV7AGqOC3QHY6WP32bX/orA
 1DF1CeE8rYxo0sIYBZY0EC3XGuN5xlXcFjnK1SaB9d6a3Og4kO0Ytywji
 RSPrEwabMBdtYfTiw3j2oq2leIEZGwBHTPNZI1umCVRGbN9+o2/GMUb9t
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YZa+YDLD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
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
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bvanassche@acm.org" <bvanassche@acm.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Drewek, Wojciech <wojciech.drewek@intel.com>
>Sent: Wednesday, September 6, 2023 10:02 AM
>
>> -----Original Message-----
>> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>> Arkadiusz Kubalewski
>> Sent: Wednesday, September 6, 2023 1:26 AM
>> To: kuba@kernel.org; jiri@resnulli.us; jonathan.lemon@gmail.com;
>> pabeni@redhat.com; vadim.fedorenko@linux.dev
>> Cc: bvanassche@acm.org; netdev@vger.kernel.org; intel-wired-
>> lan@lists.osuosl.org; linux-clk@vger.kernel.org; linux-arm-
>> kernel@lists.infradead.org
>> Subject: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
>> support
>> for pin-dpll signal phase offset/adjust
>>
>> Add callback ops for pin-dpll phase measurment.
>> Add callback for pin signal phase adjustment.
>> Add min and max phase adjustment values to pin proprties.
>> Invoke callbacks in dpll_netlink.c when filling the pin details to
>> provide user with phase related attribute values.
>>
>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>> ---
>>  drivers/dpll/dpll_netlink.c | 99
>> ++++++++++++++++++++++++++++++++++++-
>>  include/linux/dpll.h        | 18 +++++++
>>  2 files changed, 116 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/dpll/dpll_netlink.c b/drivers/dpll/dpll_netlink.c
>> index 764437a0661b..548517d9ca4c 100644
>> --- a/drivers/dpll/dpll_netlink.c
>> +++ b/drivers/dpll/dpll_netlink.c
>> @@ -212,6 +212,53 @@ dpll_msg_add_pin_direction(struct sk_buff *msg,
>> struct dpll_pin *pin,
>>  	return 0;
>>  }
>>
>> +static int
>> +dpll_msg_add_pin_phase_adjust(struct sk_buff *msg, struct dpll_pin *pin,
>> +			      struct dpll_pin_ref *ref,
>> +			      struct netlink_ext_ack *extack)
>> +{
>> +	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>> +	struct dpll_device *dpll = ref->dpll;
>> +	s32 phase_adjust;
>> +	int ret;
>> +
>> +	if (!ops->phase_adjust_get)
>> +		return 0;
>
>Why 0 is returned here? If it's intended, I would put a comment stating
>why.
>Same thing in dpll_msg_add_phase_offset.

The callback is optional, any driver implementing dpll interface doesn't
have to implement this callback and it must not be seen as an error.
Callback that are required are pointed out in documentation:
Documentation/driver-api/dpll.rst

All the optional callbacks are returning this way, I don't see a point
in adding extra comment here.

Thank you!
Arkadiusz

>
>> +	ret = ops->phase_adjust_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>> +				    dpll, dpll_priv(dpll),
>> +				    &phase_adjust, extack);
>> +	if (ret)
>> +		return ret;
>> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST, phase_adjust))
>> +		return -EMSGSIZE;
>> +
>> +	return 0;
>> +}
>> +
>> +static int
>> +dpll_msg_add_phase_offset(struct sk_buff *msg, struct dpll_pin *pin,
>> +			  struct dpll_pin_ref *ref,
>> +			  struct netlink_ext_ack *extack)
>> +{
>> +	const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>> +	struct dpll_device *dpll = ref->dpll;
>> +	s64 phase_offset;
>> +	int ret;
>> +
>> +	if (!ops->phase_offset_get)
>> +		return 0;
>> +	ret = ops->phase_offset_get(pin, dpll_pin_on_dpll_priv(dpll, pin),
>> +				    dpll, dpll_priv(dpll), &phase_offset,
>> +				    extack);
>> +	if (ret)
>> +		return ret;
>> +	if (nla_put_64bit(msg, DPLL_A_PIN_PHASE_OFFSET,
>> sizeof(phase_offset),
>> +			  &phase_offset, DPLL_A_PIN_PAD))
>> +		return -EMSGSIZE;
>> +
>> +	return 0;
>> +}
>> +
>>  static int
>>  dpll_msg_add_pin_freq(struct sk_buff *msg, struct dpll_pin *pin,
>>  		      struct dpll_pin_ref *ref, struct netlink_ext_ack *extack)
>> @@ -330,6 +377,9 @@ dpll_msg_add_pin_dplls(struct sk_buff *msg, struct
>> dpll_pin *pin,
>>  		if (ret)
>>  			goto nest_cancel;
>>  		ret = dpll_msg_add_pin_direction(msg, pin, ref, extack);
>> +		if (ret)
>> +			goto nest_cancel;
>> +		ret = dpll_msg_add_phase_offset(msg, pin, ref, extack);
>>  		if (ret)
>>  			goto nest_cancel;
>>  		nla_nest_end(msg, attr);
>> @@ -377,6 +427,15 @@ dpll_cmd_pin_get_one(struct sk_buff *msg, struct
>> dpll_pin *pin,
>>  	if (nla_put_u32(msg, DPLL_A_PIN_CAPABILITIES, prop->capabilities))
>>  		return -EMSGSIZE;
>>  	ret = dpll_msg_add_pin_freq(msg, pin, ref, extack);
>> +	if (ret)
>> +		return ret;
>> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MIN,
>> +			prop->phase_range.min))
>> +		return -EMSGSIZE;
>> +	if (nla_put_s32(msg, DPLL_A_PIN_PHASE_ADJUST_MAX,
>> +			prop->phase_range.max))
>> +		return -EMSGSIZE;
>> +	ret = dpll_msg_add_pin_phase_adjust(msg, pin, ref, extack);
>>  	if (ret)
>>  		return ret;
>>  	if (xa_empty(&pin->parent_refs))
>> @@ -416,7 +475,7 @@ dpll_device_get_one(struct dpll_device *dpll, struct
>> sk_buff *msg,
>>  	if (nla_put_u32(msg, DPLL_A_TYPE, dpll->type))
>>  		return -EMSGSIZE;
>>
>> -	return ret;
>> +	return 0;
>>  }
>>
>>  static int
>> @@ -705,6 +764,39 @@ dpll_pin_direction_set(struct dpll_pin *pin, struct
>> dpll_device *dpll,
>>  	return 0;
>>  }
>>
>> +static int
>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>> *phase_adj_attr,
>> +		       struct netlink_ext_ack *extack)
>> +{
>> +	struct dpll_pin_ref *ref;
>> +	unsigned long i;
>> +	s32 phase_adj;
>> +	int ret;
>> +
>> +	phase_adj = nla_get_s32(phase_adj_attr);
>> +	if (phase_adj > pin->prop->phase_range.max ||
>> +	    phase_adj < pin->prop->phase_range.min) {
>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>> supported");
>> +		return -EINVAL;
>> +	}
>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>> +		struct dpll_device *dpll = ref->dpll;
>> +
>> +		if (!ops->phase_adjust_set)
>> +			return -EOPNOTSUPP;
>> +		ret = ops->phase_adjust_set(pin,
>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>> +					    dpll, dpll_priv(dpll), phase_adj,
>> +					    extack);
>> +		if (ret)
>> +			return ret;
>> +	}
>> +	__dpll_pin_change_ntf(pin);
>> +
>> +	return 0;
>> +}
>> +
>>  static int
>>  dpll_pin_parent_device_set(struct dpll_pin *pin, struct nlattr
>> *parent_nest,
>>  			   struct netlink_ext_ack *extack)
>> @@ -793,6 +885,11 @@ dpll_pin_set_from_nlattr(struct dpll_pin *pin,
>> struct
>> genl_info *info)
>>  			if (ret)
>>  				return ret;
>>  			break;
>> +		case DPLL_A_PIN_PHASE_ADJUST:
>> +			ret = dpll_pin_phase_adj_set(pin, a, info->extack);
>> +			if (ret)
>> +				return ret;
>> +			break;
>>  		case DPLL_A_PIN_PARENT_DEVICE:
>>  			ret = dpll_pin_parent_device_set(pin, a, info->extack);
>>  			if (ret)
>> diff --git a/include/linux/dpll.h b/include/linux/dpll.h
>> index bbc480cd2932..578fc5fa3750 100644
>> --- a/include/linux/dpll.h
>> +++ b/include/linux/dpll.h
>> @@ -68,6 +68,18 @@ struct dpll_pin_ops {
>>  	int (*prio_set)(const struct dpll_pin *pin, void *pin_priv,
>>  			const struct dpll_device *dpll, void *dpll_priv,
>>  			const u32 prio, struct netlink_ext_ack *extack);
>> +	int (*phase_offset_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_device *dpll, void *dpll_priv,
>> +				s64 *phase_offset,
>> +				struct netlink_ext_ack *extack);
>> +	int (*phase_adjust_get)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_device *dpll, void *dpll_priv,
>> +				s32 *phase_adjust,
>> +				struct netlink_ext_ack *extack);
>> +	int (*phase_adjust_set)(const struct dpll_pin *pin, void *pin_priv,
>> +				const struct dpll_device *dpll, void *dpll_priv,
>> +				const s32 phase_adjust,
>> +				struct netlink_ext_ack *extack);
>>  };
>>
>>  struct dpll_pin_frequency {
>> @@ -91,6 +103,11 @@ struct dpll_pin_frequency {
>>  #define DPLL_PIN_FREQUENCY_DCF77 \
>>  	DPLL_PIN_FREQUENCY(DPLL_PIN_FREQUENCY_77_5_KHZ)
>>
>> +struct dpll_pin_phase_adjust_range {
>> +	s32 min;
>> +	s32 max;
>> +};
>> +
>>  struct dpll_pin_properties {
>>  	const char *board_label;
>>  	const char *panel_label;
>> @@ -99,6 +116,7 @@ struct dpll_pin_properties {
>>  	unsigned long capabilities;
>>  	u32 freq_supported_num;
>>  	struct dpll_pin_frequency *freq_supported;
>> +	struct dpll_pin_phase_adjust_range phase_range;
>>  };
>>
>>  #if IS_ENABLED(CONFIG_DPLL)
>> --
>> 2.38.1
>>
>> _______________________________________________
>> Intel-wired-lan mailing list
>> Intel-wired-lan@osuosl.org
>> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
