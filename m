Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E6F735015
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jun 2023 11:29:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7967961110;
	Mon, 19 Jun 2023 09:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7967961110
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687166952;
	bh=5cz6XoZ3odM0/wZa6M/z0kFoOymDMv9/QNjLZ5Wz8SA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4t7uq5pPK+1V4UBn6aCk0VzEijAgB7QJX0f1U8l76pnq+2JKy48trrhSZw8emYrHW
	 IOkcf2IMC5upHRtVVBNufuYKfQfq6BBXj0Aks+A+MAncZPKz0BbOghiKGNiTxrTkoI
	 qxVm7Si7TBj/COQCkfmseKhJTQxUKF9A20H1VJSrgxWbge0F16KomdddBw4ocBmfrF
	 pJfRVUiuSSaOadq2mbabnE1YtLREBJ8CR5AFGMeenqj3Gj8VG/M6nP8hje9Ve6vBaQ
	 n7RzohO2W4yF0OiGpZLlCUOqVgvLVQE0Hfm8GqZtkVACXB5BVT858PbGz4qECCdjn9
	 t9s5406XkWhyA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QVuT-P9mnaDa; Mon, 19 Jun 2023 09:29:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 61E14605EA;
	Mon, 19 Jun 2023 09:29:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 61E14605EA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 481461BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:29:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F76581A9C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:29:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1F76581A9C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkxMZwYP6Ae8 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jun 2023 09:29:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D6F281A5F
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D6F281A5F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jun 2023 09:29:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="339925887"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="339925887"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2023 02:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10745"; a="826534478"
X-IronPort-AV: E=Sophos;i="6.00,254,1681196400"; d="scan'208";a="826534478"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 19 Jun 2023 02:29:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:29:04 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 19 Jun 2023 02:29:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 19 Jun 2023 02:29:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 19 Jun 2023 02:29:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DhQrAGv0oi28NlALCMoydlUfM76SjjxVfy81W0RWiLAJuUQQQj86FoB4OKFTSYSww72EQqqpZ/5LUVuSAIYpKjoWBNqq4c/h9VeH3SUBwCLuEhCB8y3MdcW5PpvNwpQzox/mjH0gAuPo49CoQAx4F3SqGXO+vUnp43talzh1oC1Lo7vrkNUxBVaEpztNPclUtKc/7jz1I9w6X+mT9lYQj7Alkslrlk1qnIk9awBYbKr9VTkVEkcOC1fEWCS7XlnIgZtizIjz3848eVDEszwXGd9RVUjnVMF8xFTKe7kIfpblysciIOEZhbvStbhsqZVic7sbnZT8VxNPHXDB5WxUzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UABopsPiVsQYkEadKeXJsaCE/U4Euzrokv9z0eGUj/U=;
 b=AYVBfdBQteMVlIj5YqwJgaAA5FC41FBNCB1YV3tE2/QiF28UdHvZOxmI//qcKGHPi307MnljY+M7eQO5qvw+PDHPVS3u/FT6bWuglMygtai/LVFFPSk39FZmtdGJaQlHfJ7dOjNGji3dM7ueuXWkzjHXONAiavBZ4ObMqJq25XY2IhARBZJB46xmmsThd22DNa8mFwkGj9NsgedVbBBYaUQ7bD6afwyUDTHuSrde+m/vJY5F+yrqWr9LnEcsOXiWSLjtUBCVCHvcjR8cNm/FjGM7RfmKYepAV7qLOEdZDlBspUa8mtsO1k8TSOzJfaokR7AWPnorJhH/UnEAxfIWSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by MN0PR11MB6256.namprd11.prod.outlook.com (2603:10b6:208:3c3::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 09:29:00 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::fcef:c262:ba36:c42f%4]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:29:00 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v5 12/12] ice: add tracepoints
 for the switchdev bridge
Thread-Index: AQHZneAq66Y2nWFr1EGPuDbBbhcM4q+R5SWA
Date: Mon, 19 Jun 2023 09:29:00 +0000
Message-ID: <PH0PR11MB50134C697D32E4DC559B6B2D965FA@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
 <20230613101330.87734-13-wojciech.drewek@intel.com>
In-Reply-To: <20230613101330.87734-13-wojciech.drewek@intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|MN0PR11MB6256:EE_
x-ms-office365-filtering-correlation-id: 17511f77-30c9-4fd3-8efc-08db70a79d1d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DelFis30rts7DH5jFRHVCoVAQqoBN3Ngq7CpukWHJD7iT75u8cvJabeDa8dtnGfA8hzxgJGLnlAozXVcHye1aT5PbN+saynbKP22UcCGJ3tqIdV79dGO7ay+L3Btu+P+bemlLu2Vq1H2f/b9mxDgQPpsL3bIm/XmtKGVij4wDX4PK/craNKOb5E1ZuweA8h+mk26YH8jFrDUGQino0MvlykxsGtCAfqxnxQDBegTnqxs9QPLRiAvEWvU+KfN2cFZ3YKJntp4xyi8igX7p/pSjARDCorRKaO33EK4ahCocbcTbMu3H6X7Gp486VCqdBibgVgYtUPdQTvQgVHL5mE2hL+tOfSDbuAFGUCIMW51MVsTCC0Xz/Ec99Q6WYI0tVeLP2XKp3nK/jNMd6ZIWUitUd0uNIRo9lGPRylL20SilbSoHxWu2zSM857nEhGlpX////c0n2zb6t+tGg+gmxSmSkxeJ+mvKH98Ct6s342cKYBboldjkNMTwoxybYYf39YLq0D03xJgbJw97HLEw9Iab8ZE5ndBYANaJi7dMrPGUCOX0MosuYbjr3eA172Du6c2Bz3d53hKw5YwyCwei+rw7/GTcOYxFJPicTKYfNaGcUyAGrAH5AgyeWxjhONPyxkZ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199021)(52536014)(33656002)(86362001)(41300700001)(8676002)(8936002)(38070700005)(5660300002)(66446008)(64756008)(66556008)(66476007)(66946007)(316002)(82960400001)(38100700002)(122000001)(83380400001)(186003)(9686003)(26005)(6506007)(53546011)(71200400001)(76116006)(4326008)(478600001)(54906003)(110136005)(4744005)(2906002)(55016003)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ru2OXvdX9w8IuX3GQ+psL6psjyr+tF9OoBuK78XRWcJjrQ6tSn0XmEQxsfZ1?=
 =?us-ascii?Q?liZIVYme4wD4dkQKias2mZaCWHlPzQ8jtPscHUwEVysfYVUa3az0oHeIBUhw?=
 =?us-ascii?Q?VgtAV96/yu4Uyw9YSKLgaN7cOC0zGDuuUbby4ScGIjNDlLlRGbvl/i1biaqx?=
 =?us-ascii?Q?e8y5jJBC3p3WpwzihGXW0KT58kZdXN7ajknsTw8qGdTK/Se3UQ3BAb9o3dM7?=
 =?us-ascii?Q?UFeFWna8PTu2gWrY9CMdPc4pqxZrYh7pVfvephYcZSALWi0C4V4C3xWe8TcH?=
 =?us-ascii?Q?l5Nn2IIxmAkCpAS67kSB8Wz3J+mLAtgAwNhJeKWu9MNfOiNvK49iZ3/qmDxD?=
 =?us-ascii?Q?KLjzEJHlkJqbnaWLuK73Re6Y/lHYtuN1PZ3BX2ZSHzuVg2o9rZqj26Qil/mJ?=
 =?us-ascii?Q?hv9E8sx8sV8SEzeS5EuxgEYLBrGap3Im4VPxAfeJz2dYvh9fe4Gg5pz0ylGp?=
 =?us-ascii?Q?D4NAC6PVtT1O+d8DW50ryHdESuAdRP7N3GUAunJF81uf4s5Wafx7pDr0vkZD?=
 =?us-ascii?Q?h3Q318oGQFM0lskW+EvpK/lnewc7KHPui21oibnYKU5HJLRvwjuA6nTwWODe?=
 =?us-ascii?Q?6sxuYqEuQqTzI5tUnwGrMGDEvoIxJB/XS2NM9pgpRZl0ZfjqfvGNDrdMeV3E?=
 =?us-ascii?Q?8ihh84yfnZjeZ1ba/78i+0RnYHscOeK3hQ6mj5XuFK/l13Xhi6ze4o3Q6xoJ?=
 =?us-ascii?Q?BM0I2MAocnLB5cbibeQ9IIhXm17PuqHQ+1gPnkKZltVUlzMz362f+B0jE38h?=
 =?us-ascii?Q?BjwJN0M/tR3fXFv/ZYOTFtzVbemhYgQ/I59CveXik81AwzePbLrPJEH1Cqem?=
 =?us-ascii?Q?0QwgIiWremdjX5r/fG9FTl+qu16oY1VnRbRQ0yYCeUx8dOo/lNn/vt9sWYYs?=
 =?us-ascii?Q?kZksQNGpauJJuya9Y5o3i9oLupDjJ40ecebTN9K1xyrdUCJeGy7D78mAdMyJ?=
 =?us-ascii?Q?5ffn+63ujst2cNPxcgC9BtfJF1IaKSwH7gbaX9kaNbxfqtniFEt15qFpAdR+?=
 =?us-ascii?Q?KYJ9nF0+WP9RPAbdM0KiLxAobEqCGufYu17xUYBioqVd0lDAxvsrDH/zmsuc?=
 =?us-ascii?Q?6q5hqZzWCqLzIoSpxfFNepxSSeYTHbETmcTGqIF6aK030chR9E5xy0JarWMA?=
 =?us-ascii?Q?46wNGfemB7EmSLa+u1K0sRa53gK0jbp7Xuk76sYqyRxLeDbg4Q49VvgegAva?=
 =?us-ascii?Q?ZnLvSerAgKByau/+dWz1ixUACEJN1ePK4BbqhLEMWyfd9sme1ThjdZyvK94x?=
 =?us-ascii?Q?HlO8Ec7Pehais/Bb0L3IShR4W14wQWj/Tyl2qvmvlmrZkDJLC+EuqYINq/AV?=
 =?us-ascii?Q?+fBRNOjH6D/KsRHOV7kWozEfTp0JmrVgtSFiuuxFLrergBO4sbHQmBXxCIOy?=
 =?us-ascii?Q?fQymIuEf1Xsgz/1DjwhvwAvRED8NS4jGEcTH1+NloxNyzIPnTlZQEAr1Q0qz?=
 =?us-ascii?Q?NyM5MlOCEpDOswKl1IQTqXVF8x0w6v7kjjGtqoEADS9Fz/Esb49oVffcfMv1?=
 =?us-ascii?Q?XwfS9VLTIXw1Sez+VglNQkA5WNnYlIyAYT/FfmllO6qaLTtLmSZ0rO8qqsDt?=
 =?us-ascii?Q?cDdzfE053mo5QAcBlX/cCehM0at4q9eyvJkcZ9AGVVRdhg5jJP1Li18O7BmQ?=
 =?us-ascii?Q?Cw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17511f77-30c9-4fd3-8efc-08db70a79d1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2023 09:29:00.0417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 83UFUNDA5mFV+NUzGXLE33yBs5o3cmvRhB9WaCaHL92tzhOosVoWI/XxPy5gicIw1sWRr8YcOgnz8C6zDfB9JT8pnZHySjnbDwMHEhyp39A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687166946; x=1718702946;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HVO/irHHh8osk94fesnSIAuYbJ3NR6S/XQlB4En8va0=;
 b=mtT8GvabfJE8HnFLClMnB79ZLPodjcgIIxDPyK94r4BWex5eLwuuPwMu
 vMI47pYiYwK8zV2gim0o0e7AS90A9a1dCxtRgmXKKMrPpEiskX2phvq4+
 ES/C95zSN+6zJ6QSI1fBSwTOFXWWoQciMiqaWbG2mv+HERF7ke1Ptr6kg
 rOVKsKt38XbeyLYW5rZ4W7BqbHhBpN2vpd3vRPHH+IHnQq7SB/aHmHuuu
 0B6rO9Ork2e8PIbmsRDSYJ5H/hAj4uhLk1BLvkk1TNLlrrC9b5kwwF49p
 uU/UFfjyo4WzlA6vh2lIqyzk5Miv1xzJv4e8u9xhviFQv9Mp+jsTALRTD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mtT8Gvab
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 12/12] ice: add
 tracepoints for the switchdev bridge
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
Cc: "simon.horman@corigine.com" <simon.horman@corigine.com>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Wojciech Drewek
> Sent: Tuesday, June 13, 2023 3:44 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: pmenzel@molgen.mpg.de; netdev@vger.kernel.org;
> simon.horman@corigine.com; dan.carpenter@linaro.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v5 12/12] ice: add tracepoints for
> the switchdev bridge
> 
> From: Pawel Chmielewski <pawel.chmielewski@intel.com>
> 
> Add tracepoints for the following events:
> - Add FDB entry
> - Delete FDB entry
> - Create bridge VLAN
> - Cleanup bridge VLAN
> - Link port to the bridge
> - Unlink port from the bridge
> 
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_eswitch_br.c   |  9 ++
>  drivers/net/ethernet/intel/ice/ice_trace.h    | 90 +++++++++++++++++++
>  2 files changed, 99 insertions(+)
> 
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
