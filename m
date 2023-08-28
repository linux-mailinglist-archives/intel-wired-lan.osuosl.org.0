Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BBC378A99B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Aug 2023 12:06:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7506141715;
	Mon, 28 Aug 2023 10:06:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7506141715
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693217203;
	bh=q3AuCQ7LRhbsWgVmLcEKcq65SsTdl/FcyVreSEshvdw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=KTZG6+fUzGp71HUk9Ngc3OFD55yckbo1YE8MHYIfmfhdNtan/3glru6OBxNGm1vy3
	 CLzIbZgBq1uLf6/Xj5Mm3ZSmJ8sv4x462kI+NPoHSjMJIjRHDSaSmgJ5K+KOThWT7A
	 zRhbhEJuakrwzVjsjE4HU123Aumx/8YRNNmEyQ+HvwOjDx4+yLXvmcY2uFJrD+M7uY
	 Sib9YmCYjMd4f9k5YdVZ1nfwKImFnVQz7y/3v4VQNib5W9VEgOjUnX0ZlUfxuSgwAq
	 A5g/rlH2NzWDUfVADe8xo8YMuuQZccpNjxr8vgc32BYiXtRDjRmXnilbNP93htgfIW
	 OsJIALSRrWBEw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jN5z5XIUBCyf; Mon, 28 Aug 2023 10:06:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3D7424092D;
	Mon, 28 Aug 2023 10:06:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3D7424092D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9709D1BF584
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:06:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E33C404D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:06:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E33C404D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93waaY98RWkA for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Aug 2023 10:06:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B3BC7400CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Aug 2023 10:06:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B3BC7400CF
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="373955856"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="373955856"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 03:06:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861787874"
X-IronPort-AV: E=Sophos;i="6.02,207,1688454000"; d="scan'208";a="861787874"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 28 Aug 2023 03:06:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 03:06:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 03:06:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 03:06:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FBY6qWoY6g2oPh7ikprPBUeEKpYUce5lL8umIIrrdUoBQY4GV+nTFG7nQRXls6yt3ur3iFalLC2ShgjgZmbI30NJKmon7qZBg9lz4KcmVDdPUINtfW3begUL831AyvTakV0zzCG16W3PUt2PuWd4xgVnGMXbPZqDVBl+IVIx5TxIl0K53ae9Raw3EjDQ2ow+Iy1iVZzk/Xqoz0nDKVRZCKQtDMAnRN0cLbhpzytGmS0Hdr39XK7FCdZTbvVfFPKGgKOcdZf7GAza3ju4deJEWgtbwpcx7z8+O2/r31F4WkaUiwk8dvvwZJM2Wsu0TNIYwJHBrDGJHP8cn6NbpgBe4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k8VuEou7F3AHBjXIb31IpXrCNbhyW+VxvR0h97PDnj8=;
 b=bQqzUOVA1SsUhPhR8qMKEFWCjvP0V254EH50d90C66qhzaDbTe+TFkCWGX6LcoGkn9SpmJzceFmin52fmXiHWxEr3UlL98NuTR3wfYKT16XceJ4DgYW3HfCfjkVqiDM8PjaA6Lce63z4SALudQO5WPfpqC71B0ZJMwIKt2Sq/+ITodiFiZytBqCwal4LGS9WiZWR4oPAMcyhp2RVZ0oqG7XKNt/l3YjaGPlj+FFKECpStGtikvx+UYDNHm8qFw35hCs6p+b0refGzbdRx+/2RnIWz2XYJDcfUvdpkAUAnDrnCpyXXpiOjKCZOcTkTIll3z4xhIFZvUEC/2qn0pWFdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN6PR11MB3133.namprd11.prod.outlook.com (2603:10b6:805:d2::14)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.35; Mon, 28 Aug
 2023 10:06:30 +0000
Received: from SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a]) by SN6PR11MB3133.namprd11.prod.outlook.com
 ([fe80::9529:cec2:9640:7f7a%6]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 10:06:30 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Michalik, Michal" <michal.michalik@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: PTP: add clock
 domain number to auxiliary interface
Thread-Index: AQHZwJGgMivExSwc1U6/+ETV4OVdo6//rQvQ
Date: Mon, 28 Aug 2023 10:06:30 +0000
Message-ID: <SN6PR11MB3133AAC53EE3A8D4AA30F6B6BDE0A@SN6PR11MB3133.namprd11.prod.outlook.com>
References: <20230727135037.28472-1-michal.michalik@intel.com>
 <20230727135037.28472-4-michal.michalik@intel.com>
In-Reply-To: <20230727135037.28472-4-michal.michalik@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN6PR11MB3133:EE_|DM4PR11MB5454:EE_
x-ms-office365-filtering-correlation-id: a215c82f-32ef-4da9-cd3f-08dba7ae7352
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SmYgYr3DqiNJBR/0Vx0z85TQ0RMESGnd3fqz1QuIM8o/JOZJ/SrlnApRp2l+4wdAoKBcuns8f9k16GKrm2laGM5g1A4uInuS14lUGqmdP5vbPPOH+yHdPkFIeIrQXb2sQ2HA3ZBSncWhbZ/p6SCg/glI8FJY7hT1sNyJugnuh4ld2OkvfvqrDk4qcJcaPFG26irD20MzjNTIzWqTopxHLwePD+1roFB1zHyXgkZblybz0qnrA/DeehYtUwspb0xCLlTg6p8zOK2lxti3vF02Kw1m0duXuZN7l3LXMNYJ0fK0pTCna3M/5GgOA21Ua8Dx9+/d5sWSvOgYQERbgWYbs5nAIgewloa/Wr8mtrJ5r9B1lHU+rKpch9r86T4NrUO1dao0VKtv2hYCGG6E/7HnhxM3jrrnnzawNeUz4hU7M8Z0ajiWV0HKAXqDZafixE1hus1dCTAQZ0cmQ8mjkXZ+QALEcsPhQp56ilwCR5P9t9kV9lBOrP4De9uLvAAT13d8s0B/ZLWQdMzxOIjElCHMgiiPeGgQn+vmGsXVZIrZsJKJuNqdPmpgT1YNN1Ffq0xwK8XX8ZTc3WJgml0qapMiDZaF0JEIKlK94o0xsXwPSxl4aQL5NlIgEzG9Ct0rOd4i
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3133.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(396003)(376002)(346002)(136003)(366004)(451199024)(1800799009)(186009)(8676002)(8936002)(4326008)(316002)(2906002)(64756008)(110136005)(66446008)(54906003)(66476007)(33656002)(66946007)(66556008)(76116006)(5660300002)(52536014)(41300700001)(53546011)(6506007)(7696005)(26005)(9686003)(107886003)(55016003)(38070700005)(38100700002)(122000001)(478600001)(82960400001)(71200400001)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6vtKB493I5eusjhTFabU6QFrpqjxgXFhy65M1//DtveeF2ZHEKv/TUpJyaxb?=
 =?us-ascii?Q?Dl41kRuA2AnGh9g8OI6mkRBzagzKG3OoQtysHycl/YVbZneOakDajxwmAtyZ?=
 =?us-ascii?Q?+7XDjc291b2aqVa7YlWUUVpXIfJ4LaiGznT8DNyDhu5FmKHkNXqURTuzFxci?=
 =?us-ascii?Q?FZoIoNUzeBZtSI/uySe25Ws/vNpsOg3uWkxJHx+eSrwQAwrHv6ZqVx9LQZ6J?=
 =?us-ascii?Q?bslYEXbXoq4qxuf/fJb5MMxxnsYp0l5oovtNyTArh3PWiJkDhxbbJ6UR/RLk?=
 =?us-ascii?Q?H+fUOq88FyC5vD6rbqAlXeq0r9iogtMadkoTWUU02eIZ9gCWtASsJQabZ9uf?=
 =?us-ascii?Q?lcDIHdc2GO0DdNWdqgZTIPHshNQo1LrOwtMfMowmTAR71QDmgkHF8nHZXlnM?=
 =?us-ascii?Q?DvkD7vpqYbJmJ9rESSG/Es7Zjkml1SXN/dZzMZtxftzvROYCiDKXj5+H7OT8?=
 =?us-ascii?Q?wXk3DeOlPow16MNG1hLHUlOg4qGprGI7LEZaSX2NPzdMnt8LoisuYxtJEPzZ?=
 =?us-ascii?Q?qqQ+QdpC8dVd5YDhaxjN+141PAAWxD/hmfmW6eHszQA1AXrWzlz8mGblLMCq?=
 =?us-ascii?Q?Oy6lQ9/5RYt7jg2bvzfkqVR8NRJul0fCbma4yP3U6aYcwHqYSDyJOava/A8s?=
 =?us-ascii?Q?0THkzZgwuJfmXvCaiU9vxfY9zQvUdDfXIXC1eQm9uxdmCVXdqCMNkxD3mpaU?=
 =?us-ascii?Q?IgKV2WC/0gDUOSQ3aUeKz+0nVBCquT1Db06xgwI1E0MyKL666nOSw03XuA8+?=
 =?us-ascii?Q?n8ojqqKGoMDNIfOOWDhQWHr2GQ9vnqPN5R9Doz6WNalSuJwuOJhQc021UADM?=
 =?us-ascii?Q?IR/UCIWxOG9Pn20Kn3q4EL4g75VDLF0feYMLhFa3XsLho9UiHk95igbfbtG0?=
 =?us-ascii?Q?RuO4XzWE3CcE0OeReHvSR8y+pD9R2TLhmBmOUAfUYSBdVjeOLBGqsdwkgCw8?=
 =?us-ascii?Q?Fbj1pE920sorRaM40RoF2OXLiPwzIK5umJi41FrxPI3rxpjvI/3M1wbWM44N?=
 =?us-ascii?Q?vS28r1WgbMJyPanFa/eTuhRNngTPUii1917Sy9Bj7bEtLZ2ShAapAPQEYPez?=
 =?us-ascii?Q?pPIHWU1JaZlRWvRwOO1qiiOe3ObCqnwA/CXuY34hIYUSwD2fTlsfsltjld/Z?=
 =?us-ascii?Q?RkLsZXZMM8qb4kA+rm1zc+nOMAb6YD5X8L+tdiCgd9GupIQJy88KHYwVKt28?=
 =?us-ascii?Q?62XCRtj6dCL9Bx/UeMX3WSCcsi9fHfPphHWKGBYYeGdZ0XxLBHHYM778Qbhm?=
 =?us-ascii?Q?UhA8SwrXCrvzqzQJGUmTiLGiF4O2msIOEaj1KVYQFnBBqG3Lp4NftGZB6Kum?=
 =?us-ascii?Q?kNOi6B2HwOaxJ1gqKqZhI1smhFBCwGpfeP17+7vkKhiSQ+glDxyHxS+qItvo?=
 =?us-ascii?Q?jxs3sEw4wKOAiIKTGM4X1rOzvBiJH49NUG5+o186iTn9yOOMp/bdmpghztrq?=
 =?us-ascii?Q?vmiWdQxzvfoN4mVsZPMCwKa4MwWz3zwYx10mSD9Y0fr3ULP992k2fZp+ZOb4?=
 =?us-ascii?Q?Y0DVS1Gb9nny02zaBKfZuj5JKSot5O6ZbiKyfWqAfLE8ejgCFQSb3LfM56pL?=
 =?us-ascii?Q?WfmYqtbvnw6SbTzaKpRTr3GgHNuS1raRRU+PVqbbZG/LJccPTD0p6rcj2y8D?=
 =?us-ascii?Q?wg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3133.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a215c82f-32ef-4da9-cd3f-08dba7ae7352
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Aug 2023 10:06:30.3981 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gSgCV8TQ+O7Q8VPuCPorqMKo8ANeoaVs/zPW5QaRTaPAfd0HT9lzhdQyCSTqSPtyiRYiGUUqWLwFN/v6kylCc/HNQM/F6El+rAyiXZceaNF9CAY7S7npm9R0B3wzhSYB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693217195; x=1724753195;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qFTD+1MIYaX8iS4RNzn6xUxQpmtKA/1qKsLCscKaCn4=;
 b=TAyiN16OT85UNtp/qn9zo4SLsnuPZrITUgfP8aVJ5BTjn9xftnZRkeEB
 V9895MeBHS74zrYKsGwLTDqEkuVwE2SOuUeb+xDcs90WXNt60RFIqTEZY
 69vUeyDQL9GyIYMcaRGchCfSChMKv31dMCsOYLtyYZOpcQRjnCwP63iUs
 r/etdvfknymL+PaHDxIM1Qa6fnODgOY7jZAndsaOClaAGKU3f7MLoKKvb
 OI4tmJFbHtTIFplYxSqpGWjzbl/rKhvE7E1IifvUNSJg4hKwIxb8+5F5i
 FMO0JnW06vUWpdwFIcVtpFJOtpCJ+y1lsg/tsj/QPdy0RGQtJeyQH7jiI
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TAyiN16O
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: PTP: add clock
 domain number to auxiliary interface
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
Cc: "Kolacinski, Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Michal Michalik
> Sent: Thursday, July 27, 2023 7:21 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Kolacinski, Karol <karol.kolacinski@intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/4] ice: PTP: add clock domain number to auxiliary interface
>
> The PHC clock id used to be moved between PFs using FW admin queue
> shared parameters - move the implementation to auxiliary bus.
>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Michalik <michal.michalik@intel.com>
> ---
> v2 -> v3:
> * removed tag regarding kernel robot finding
> * remove the ice_aqc_driver_params in separate commit
>
> v1 -> v2:
> * fixed the "static declaration of 'ice_ptp_clock_index' follows non-static
>   declaration"
> * removed no longer required 'ice_aqc_driver_params' params
>
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |   5 -
>  drivers/net/ethernet/intel/ice/ice_ethtool.c    |   2 +-
>  drivers/net/ethernet/intel/ice/ice_ptp.c        | 163 ++++--------------------
>  drivers/net/ethernet/intel/ice/ice_ptp.h        |  11 +-
>  4 files changed, 34 insertions(+), 147 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
