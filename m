Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 960DE7B6B95
	for <lists+intel-wired-lan@lfdr.de>; Tue,  3 Oct 2023 16:30:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E63641F67;
	Tue,  3 Oct 2023 14:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E63641F67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696343407;
	bh=4lb93Qw9TAhyo7S4WkknqpBVcvKRJXG8Ew2CsaOcvSk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cJxJAEzbv79CHMjDL+5oraWLTGF0D3foqJySG7sCuj+1ZTmKxa0YcOsa5CSPhqq0s
	 ySeYlaxcCUMXlSff0BFHHmGXa9Bsc2d1fy53PwaSfGSx5rrs2cUvRXLLHt90b5onHW
	 WxSj3UmflFBdhrjDjQBtoJUBli5Wjf9Uou5p7G2oG3/O7uvrhskx5rlO+bP++LgNhn
	 NXoK9FL3eKyx9eHdCBHU/TYRKr1uFIhuHFC2A9Jlo/ZHfNFcvgDhJNP6LC3yyRHB+y
	 5m95jexOYId5on2A4sZQqTKnnf5BLyAvfvNzGfecHl5eaxBJkC9TpY82kqsMFIsSCs
	 pEGYhQUqtPsnQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uSoUIqdUznE; Tue,  3 Oct 2023 14:30:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 542E841EBD;
	Tue,  3 Oct 2023 14:30:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 542E841EBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A0C271BF59B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 794C6401AD
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 794C6401AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SXK1UCRqb16s for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Oct 2023 14:29:57 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3DC8C400FE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Oct 2023 14:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DC8C400FE
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="449373438"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="449373438"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2023 07:29:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10852"; a="754457804"
X-IronPort-AV: E=Sophos;i="6.03,197,1694761200"; d="scan'208";a="754457804"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2023 07:29:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 3 Oct 2023 07:29:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 3 Oct 2023 07:29:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 3 Oct 2023 07:29:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z8sZSZOBGRh5VhXYYf+KjfS4moX++QfFqtGt8cxAGkKauYdiGLQz7krBJEeEviT0yfzCRtG+k5LSjornQtcznmp8LYwzEjJo691NTt2aFwg61kJIQHP/DTj0enpN/OIwCRakAr+vCCDkxQ+t0eKGWsuYdNqxb+0AJBzld/ZjYdOocylFZ3KBFGDUnwwDsx8pc3wXKpJ9lsRVWd0NVL7xiOcvoazirMgUD20Q4w5dn0UTZuVUHE2+NXd4YhRLxDYRs/SSFzMF81qj1oYLKIjeB8APmLXdIeWhxVIQpRs8Ws0jbw+OkkGT2cUnJGGgcdtydvov/iUqooxlrOkeOfkoYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dfruEa7S432H3UJwU/3lxHwENWU2BdHuzyQHDjfCNSs=;
 b=f8W6lHqCh9ZvSw2AGKlByJevctx71bjJxqR0KIeHZ10cXYx9VVoGX2gU+/FHctA6dUWkl4y95TyBzkbzfdpMT6vb7Yd20T9Ecl2zjsyKqfhUUZtycOgeH5nOnXEr7vIUmITGXpPwQDHiKwWCdys5doNEcG3B0KpTLI1ggI7nJDFFIu3T1RcLIWJ/XHYkupsdvFTxP2jGzMEsGk7IHyUZ3WC2tuQC6UTuxjqheMUxvqhSWTV9KyoQFiSBhfQEoNUccNeKT5MW7C0P6dUS6vWWoPLkBimrHpUhxoHCmFKD/PPcpWtuArsSyzCxP4PMEOQe5tl0Yh/O0mQJxjwie880ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB6549.namprd11.prod.outlook.com (2603:10b6:8:8e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6813.21; Tue, 3 Oct 2023 14:29:13 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::4c69:ab61:fea5:5a7f%3]) with mapi id 15.20.6813.035; Tue, 3 Oct 2023
 14:29:13 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 3/4] dpll: netlink/core: add
 support for pin-dpll signal phase offset/adjust
Thread-Index: AQHZ8STYBdXle/Bxd0eyxPCX/7DD6LAu+R+AgAebAaCAAA0FgIAAAWUAgAB1LQCAAItBAIAAgqAQ
Date: Tue, 3 Oct 2023 14:29:13 +0000
Message-ID: <DM6PR11MB46573DF9081298B816A215329BC4A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230927092435.1565336-1-arkadiusz.kubalewski@intel.com>
 <20230927092435.1565336-4-arkadiusz.kubalewski@intel.com>
 <4018c0b0-b288-ff60-09be-7ded382f4a82@linux.dev>
 <DM6PR11MB4657AA79C0C44F868499A3129BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRrb87drG7aVrxsT@nanopsycho>
 <eb019ccf-c50b-e9d7-e4e6-f6574f805b49@linux.dev>
 <DM6PR11MB4657DB3C9BC3E1EFE6A2F3389BC5A@DM6PR11MB4657.namprd11.prod.outlook.com>
 <ZRu0OlwKWSmXFOcV@nanopsycho>
In-Reply-To: <ZRu0OlwKWSmXFOcV@nanopsycho>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB6549:EE_
x-ms-office365-filtering-correlation-id: c90329f1-8361-45d0-478d-08dbc41d1dcf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zHXZ2/Z3454bBJtncxGSIUZThIWSv8lXLV2Ak2VFDSgsB9aZs5+pkUWQe/zPeZmcDQ4SVfP4oQ8xhUbVCg5iwyDpinyE8WgpRBMOAH3nD1rlywgaXS+L2NPpR/6hqFin93DDfoEN0p2fRZwIG/zOS7zDPqNy4QgWB4devmYGChHWVmWEKLzIyBGn4r1/j5v6ZD1uiZ2W9ZIgCJIq+tIRBY3A8qMYycHV5onnaqauyixD3Jop/XM1ojHS8xHtvSD//Mpbc04y8FPVAI6LzmDJP6L1ZxD0AIZV9tE8DQzNxbu6B1MhVIJZ4gAKeKeHQsNweWqij0mrllqSbd0PrVBkJ/eCG1ydYFoVJH1UH4asKLwOaQpiT3JE+/kzmJzXkAwLKmTRxENnjkoOwckSnB1K7tNFuUB7G9Tm5y8M4O5LbnqrLFa6l4OOFb7biI5JFIPfsq3DVX9lzSXex0rW3WxaXTvuaUvP0KxgahxS6nykDcciEX1zCh8N1PYz/mhIRnGij6Lm06/qdMgydwU9Xs1CxBnECuZP2g01B3Kjv9Tm+hH4BdZbqe7sIbI4BIOiu/LmK/PhQ1k5Ouludl0lAIl7vGwcaPe4wP6UdZDACJ/q6RI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(376002)(39860400002)(396003)(366004)(136003)(230922051799003)(64100799003)(186009)(1800799009)(451199024)(7696005)(2906002)(9686003)(66446008)(66476007)(4326008)(6916009)(66556008)(54906003)(41300700001)(64756008)(66946007)(316002)(53546011)(6506007)(5660300002)(26005)(83380400001)(8936002)(52536014)(8676002)(38100700002)(38070700005)(71200400001)(82960400001)(122000001)(76116006)(478600001)(86362001)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4kms2Zar2twd1SLvNp+pDZqAtbazeApl/s92YhV4zQDyWlQ5Byj2Mo0zqYaS?=
 =?us-ascii?Q?3gnMgjM4GHU7nJbpTOQ3JbBbnx292wp4t8cyS+i2hB3YrQKN6cLhjY6uCBsD?=
 =?us-ascii?Q?t9+7OnrI7ZomJelfnSFNFHs1d0YGZwk7WpK7pFGoz4ileX9vml1ThLPK4C//?=
 =?us-ascii?Q?Ht7PGXJMg01KQaaAS1FMaJv+kPaE0J2uejFNN4153MwuMdkNejNUPoLahcp1?=
 =?us-ascii?Q?IFG3pQi0CntJN+Q4Sy+uMdLNoVSoSm5vObvIcuhP6c706hyS0EnER5syK2x3?=
 =?us-ascii?Q?bYvbwNQicDWxwe0YKiP3mkKrOIOuwr+KKa8GM6ZLbUSysjKr4HpbstlNaWTp?=
 =?us-ascii?Q?QPY7AF5KBL1GwQUlrzLuMIvq4nZTyUvFYIgvb4aUjUtz9RqFFlxc67vx3JAP?=
 =?us-ascii?Q?0XEcvZyp0BOeUa3Rioy8BafN/9eXFWg2vZ+cl/C8AiKx8ESrqP0/iuyBHLEk?=
 =?us-ascii?Q?wHE1L1Tl0PSt8sGiDA411AAbfpQaASW9AR0DSg42MImSvnVuBnthEoOu+dHj?=
 =?us-ascii?Q?XWaXcP+K9b3e3RwUYfOCEdTuuSwNTVY46DoeZ3Dq7JNd319hvhV11p34oHEY?=
 =?us-ascii?Q?ScpMo0C8OYSiXI24R0t+hImCipCOB35KU3I8I9Xilio+a0gSaI6hVxwMpPas?=
 =?us-ascii?Q?ma5Zf72uQuFXAmjNOIYSQ+I6hGdBCgR494GpDRQZMUn748RPWcJjQn5agMol?=
 =?us-ascii?Q?9Ji1Thb5jQ2FPcgp6sh4SZiUr955SWCiT8OxIAUVcwTJbqbfMQl1x90KtrbG?=
 =?us-ascii?Q?GUFB6Z5Oms7tBeR6IMmp1jsUjkJMOdoRu0G/vk6U2avifG22uMYryP+IheWb?=
 =?us-ascii?Q?w9gz3JZ5Y98YJaHyd0xzC1Kfrrl+2UsbUDrSrYEysGEe4UfvSMG2kTeBJYYe?=
 =?us-ascii?Q?ZwRMHvMc2DHCP0cqiFRhcBM4F2lYBeIS2Xq3eqvoFcHsicoDb0R1sYB42jhp?=
 =?us-ascii?Q?Ru6wMLWGVImzJD1GfrGnKraN6NrneOu1YMoRrvZ1pGRHDlA8OGtX6rJ9nUyd?=
 =?us-ascii?Q?VFV6MJKCjRj6+rL+Do4KXq9oJhEo6OzuSps7RaK54z6a5mXUYvr7OqwDB0+8?=
 =?us-ascii?Q?14omvg/9izrX3VOTx+9LVgp6lFObgZSfINyoMwp8/x6x8OjWxhj/0VYA0aoG?=
 =?us-ascii?Q?v7FAuWojnhD4x+wZhjdw20/akByOevmAqkbqD+qL8ooFOA8nBbIxevqReJ2q?=
 =?us-ascii?Q?/SlpD0I2uQqWiigWC3mO7IQNpScpci8oYIQ3Jz5y3lo7YkqJPWYNAAMisOnr?=
 =?us-ascii?Q?jhaCrDbou2HJnQI7AtF8En7MS29oklLH1oC6wMGGJmFkUq3M7+l5Hm0vhfI7?=
 =?us-ascii?Q?OfIB+qfxX7Fv7FJo/VhIuClCBO0gPTs4Nwy3+GtBPj7K7YLiulOu7UPsMc8a?=
 =?us-ascii?Q?1q9KLtXC/yRpSyDTB8gOo9HX8Uu/J2dxjEAeEso9vvaE41fH7dBqrgdD0WaA?=
 =?us-ascii?Q?tcFou3vc88e0nHNB8R8nnlrlB7T38bHBrTNhjbHA5X/VlmgxD7XZP9rDTXPG?=
 =?us-ascii?Q?48cejNTlzU4aFW+oYc73Vu9kC0rGOw86c7s7WnXNFlpLCsTQo9JNphWGHUGe?=
 =?us-ascii?Q?oii04z+HdA8nKWrtICV5S21TAtkSb9l1jwDcthorZ9fuMxE1sE8udIC20pFY?=
 =?us-ascii?Q?Lg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c90329f1-8361-45d0-478d-08dbc41d1dcf
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2023 14:29:13.5913 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ICmUME7ZHnO1bRB7tmKqfP7FIiUqf1b0kgDWxKpBHLo/HVDbeqivFNXaGmAOS2fbcDNEQBjkdZlTMdX1Y9Wp6TneNvmPkAn0AjlHuqvX/9g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6549
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696343397; x=1727879397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ah2DKyj4GzuJhohPfF/qNAdp/H6XH0UsSS428FnB7Bk=;
 b=G5MzZN/+RKMOqF3xqfr3IgUKZv7KWV5hfTJ26EXLfaZx10mjzhz/OSFN
 33pKiXT8oiv6Ibc7yG26XD448EWw/4XlFYko3wQphPfVN7TUCLjWBjr/7
 0f8mTWOgIKj9hYMrNqxhBqCXOry5KEzyoHJ28WjFr2n6E3EinQhE9ICa2
 wHqOW0KPv/cGYV/uJnzd6qglXhWJtQJZKXwgW7TH4YInUEzAqkWTt/HJs
 gnkeLSb2zJ/7i2Q8muPzQ/QY4/MXeqhUsd80EeLD4fxS+4x6bwuVBZxKQ
 1wUVNs/YveCwqwEgLgxCQ1Bdzld7XCXaGwiATSOM3sVVn/v6Fm9lDKgYY
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G5MzZN/+
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
Cc: Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "kuba@kernel.org" <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jiri Pirko <jiri@resnulli.us>
>Sent: Tuesday, October 3, 2023 8:27 AM
>To: Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
>
>Tue, Oct 03, 2023 at 01:10:39AM CEST, arkadiusz.kubalewski@intel.com wrote:
>>>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>>>Vadim Fedorenko
>>>Sent: Monday, October 2, 2023 5:09 PM
>>>
>>>On 02/10/2023 16:04, Jiri Pirko wrote:
>>>> Mon, Oct 02, 2023 at 04:32:30PM CEST, arkadiusz.kubalewski@intel.com
>>>> wrote:
>>>>>> From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>>>>>> Sent: Wednesday, September 27, 2023 8:09 PM
>>>>>>
>>>>>> On 27/09/2023 10:24, Arkadiusz Kubalewski wrote:
>>>>>>> Add callback op (get) for pin-dpll phase-offset measurment.
>>>>>>> Add callback ops (get/set) for pin signal phase adjustment.
>>>>>>> Add min and max phase adjustment values to pin proprties.
>>>>>>> Invoke get callbacks when filling up the pin details to provide user
>>>>>>> with phase related attribute values.
>>>>>>> Invoke phase-adjust set callback when phase-adjust value is provided
>>>>>>> for
>>>>>>> pin-set request.
>>>>>>>
>>>>>>> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>>>>>
>>>>>> [...]
>>>>>>
>>>>>>> +static int
>>>>>>> +dpll_pin_phase_adj_set(struct dpll_pin *pin, struct nlattr
>>>>>>> *phase_adj_attr,
>>>>>>> +		       struct netlink_ext_ack *extack)
>>>>>>> +{
>>>>>>> +	struct dpll_pin_ref *ref;
>>>>>>> +	unsigned long i;
>>>>>>> +	s32 phase_adj;
>>>>>>> +	int ret;
>>>>>>> +
>>>>>>> +	phase_adj = nla_get_s32(phase_adj_attr);
>>>>>>> +	if (phase_adj > pin->prop->phase_range.max ||
>>>>>>> +	    phase_adj < pin->prop->phase_range.min) {
>>>>>>> +		NL_SET_ERR_MSG(extack, "phase adjust value not
>>>>>>> supported");
>>>>>>> +		return -EINVAL;
>>>>>>> +	}
>>>>>>> +	xa_for_each(&pin->dpll_refs, i, ref) {
>>>>>>> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>>>>>> +		struct dpll_device *dpll = ref->dpll;
>>>>>>> +
>>>>>>> +		if (!ops->phase_adjust_set)
>>>>>>> +			return -EOPNOTSUPP;
>>>>>>
>>>>>> I'm thinking about this part. We can potentially have dpll devices
>>>>>> with
>>>>>> different expectations on phase adjustments, right? And if one of
>>>>>> them
>>>>>> won't be able to adjust phase (or will fail in the next line), then
>>>>>> netlink will return EOPNOTSUPP while _some_ of the devices will be
>>>>>> adjusted. Doesn't look great. Can we think about different way to
>>>>>> apply
>>>>>> the change?
>>>>>>
>>>>>
>>>>> Well makes sense to me.
>>>>>
>>>>> Does following makes sense as a fix?
>>>>> We would call op for all devices which has been provided with the op.
>>>>> If device has no op -> add extack error, continue
>>>>
>>>> Is it real to expect some of the device support this and others don't?
>>>> Is it true for ice?
>>>> If not, I would got for all-or-nothing here.
>>>>
>>>
>>>But nothing blocks vendors to provide such configuration. Should we
>>>rollback the configuration? Otherwise we can easily make it
>>>inconsistent.
>>
>>Good point, in such case rollback might be required.
>>
>>>
>>>I'm more thinking of checking if all the devices returned error (or
>>>absence of operation callback) and then return error instead of 0 with
>>>extack filled in.
>>>
>>
>>Well, what if different devices would return different errors?
>>In general we would have to keep track of the error values returned in
>>such case.. Assuming one is different than the other - still need to error
>>extack them out? I guess it would be easier to return common error if
>there
>
>In this case, it is common to return the first error hit and bail out,
>not trying the rest.
>

OK, so now I see it like this:
-> check if all device implement callback, if not return EOPNOTSUPP;
-> get old phase_adjust
-> if new == old, return EINVAL
-> for each device: call phase_adjust_set, if fails, rollback all previous
   successful attempts and return the failure code
?

Thank you!
Arkadiusz

>
>>were only failures and let the driver fill the errors on extack, smt like:
>>
>>	int miss_cb_num = 0, dev_num = 0, err_num;
>>
>>	xa_for_each(&pin->dpll_refs, i, ref) {
>>		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
>>		struct dpll_device *dpll = ref->dpll;
>>
>>		dev_num++;
>>		if (!ops->phase_adjust_set) {
>>			miss_cb_num++;
>>			continue;
>>		}
>>		ret = ops->phase_adjust_set(pin,
>>					dpll_pin_on_dpll_priv(dpll, pin),
>>					dpll, dpll_priv(dpll), phase_adj,
>>					extack);
>>		if (ret)
>>			err_num++;
>>	}
>>	if (dev_num == miss_cb_num)
>>		return -EOPNOTSUPP;
>>	if (dev_num == err_num)
>>		return -EINVAL;
>>	__dpll_pin_change_ntf(pin);
>>	return 0;
>>
>>??
>>
>>Thank you!
>>Arkadiusz
>>
>>>>
>>>>> If device fails to set -> add extack error, continue
>>>>> Function always returns 0.
>>>>>
>>>>> Thank you!
>>>>> Arkadiusz
>>>>>
>>>>>>
>>>>>>> +		ret = ops->phase_adjust_set(pin,
>>>>>>> +					    dpll_pin_on_dpll_priv(dpll, pin),
>>>>>>> +					    dpll, dpll_priv(dpll), phase_adj,
>>>>>>> +					    extack);
>>>>>>> +		if (ret)
>>>>>>> +			return ret;
>>>>>>> +	}
>>>>>>> +	__dpll_pin_change_ntf(pin);
>>>>>>> +
>>>>>>> +	return 0;
>>>>>>> +}
>>>>>>> +
>>>
>>>_______________________________________________
>>>Intel-wired-lan mailing list
>>>Intel-wired-lan@osuosl.org
>>>https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
