Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02954778EAA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Aug 2023 14:04:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 928EF41E3D;
	Fri, 11 Aug 2023 12:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 928EF41E3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691755478;
	bh=c2LYVZiYzoI6FPc6WTObDc18BbfmrGf/RjHu2VE4guI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qre8ch6CLhZzcUx76UDOaFBr0KS7Zp86WY06XjDNbe5RrFfiEk545M1hH48xvKEoD
	 eR1dhzmueACtfIEcyHnleKCxGeFHYraNfUGc8TwVg3P42KZLM7LsjC4TV6iUWTkYMM
	 /4uzfs/bPAnC/msxHJYr28wDfPVIIIiblowrz55BZovj65QKMnXP8i3JJfSEL9Nob3
	 ZT9i6iEq5B850wzXNFsUCYv9Gxsih6CTL5BgD1rr71QJjxhELidrK7wJuKeIC/AoF8
	 s3NblAJuV+mJGwm3E5jWpPbPdRwMzK0wJQO3kDXu6WAxbxmDTmCgOUFfYVnzOlB3IO
	 krENyU/npqU5A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBS7ZF97mjMw; Fri, 11 Aug 2023 12:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22CBF41BB1;
	Fri, 11 Aug 2023 12:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22CBF41BB1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBCBA1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:04:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 932B381FE5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:04:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 932B381FE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mmvOvcmZ7wQ1 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Aug 2023 12:04:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3F71D81E21
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Aug 2023 12:04:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F71D81E21
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="375375996"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="375375996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 05:04:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="762178581"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="762178581"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 11 Aug 2023 05:04:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 11 Aug 2023 05:04:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 11 Aug 2023 05:04:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 11 Aug 2023 05:04:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RQV6yBaGUPaU0grlRQLOcGjtOQOVgpIZaxx9mQvGcXKhymOWAQqFFoNvvP4AazwJzY9xe9MdwruRq/44sngHK0NJ7QWL26iiUDjTXoNnPF6ITigf99H2SLPJCl5LhqfI//3NWHQ4OvawzMsbX4mTnsJCgjfS3LwRQa8JpH8C2jDLBBXnpmUVPm5bCM37Oy4bhJF/Q7GE/vI3jXwmSbKyn69PlSaAwihUZ9pbBfCaUvZgyKiX5rlzPkh5NqLlW81czL36dFqC4RahSGS4whXr+o94yx9Ca1k9DH28V2Fl04XtlcocoV8sLTjTTzEkU6p5aS0Ls52LeHyex87aaSuaXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3/7Hl5KRTWsGxwxUKJEp1MzOcEKZzdpmqrbqg0jrQ78=;
 b=lX+mb9iMKoIdqHhqVxBjJtOsaRodAmBKAZQFjyDkgMo6bwqwTaUJvqngq88wrtvqvHAuxV4F3Bz88QBCOu0ISTmoLvbZnXWEp1Ka4YlGn/4sNiN1N84TduZ5oCxFzQPBm2ekVOKABHc5MGAtN7Gw0/udjFCB9Bn3Hd/oSBFHE19x4adCY8OIfaz337ukCRx/NlC8HJnTnAixsn3SWtlCFiHZNZtkH45LhtcFgMyMkclgJ5RHll5SeR+aJoGHqKwefvWmxxtdIdFICyYImJMl9Fz/96EThQ8zWIKh6TqBmJzUALwFMyVKk0GDmn+84l/qspLUaZuyOWiOBmTjFQaj4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM6PR11MB4643.namprd11.prod.outlook.com (2603:10b6:5:2a6::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6678.19; Fri, 11 Aug 2023 12:04:26 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::c3cd:b8d0:5231:33a8%5]) with mapi id 15.20.6678.019; Fri, 11 Aug 2023
 12:04:26 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, Vadim Fedorenko
 <vadim.fedorenko@linux.dev>
Thread-Topic: [PATCH net-next v3 6/9] ice: add admin commands to access cgu
 configuration
Thread-Index: AQHZywpuDwdiCNcDy0Whc5QLgHa0j6/kXt0AgACiFbA=
Date: Fri, 11 Aug 2023 12:04:26 +0000
Message-ID: <DM6PR11MB4657E23C21C2E34C28C56F9B9B10A@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-7-vadim.fedorenko@linux.dev>
 <20230810192102.2932d58f@kernel.org>
In-Reply-To: <20230810192102.2932d58f@kernel.org>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM6PR11MB4643:EE_
x-ms-office365-filtering-correlation-id: be7af36b-ec0d-428c-30c8-08db9a631bff
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QgUBjoSCfjhFlH3PGUNu4oMTSlIoMvJUVmI/sJ09wS46EQbSycjphyfERLQuQU/LOsmn+LNNvS17m36nNQ7Ys5XR5WvnegBFWVDKmIPeo5nygtzIKxYiblfqzhNPl6gJ0bsXeQrWj/bTMYAvgs0CWnzueSNMygp3csI9xeLEI9S2YIibR/NNc3u+B9SIiE6mfP/n9LPjbVbayzEVszC8gLuZIUBlrQHjTQ0HP6eR2kSbhtmJkN58FCYDmwO5a7PjP1K2Q6Q0VQ90pzGLjytKOaKLB9rLc8AmalnAnK6J6yB8X4MdcVQNNZDN+dlag5mw24XrAf9Ec+2pbiNFwNl/DgQB7d+/PPzmmXRUb62YMHK/2AT/8fF+QyhBhHpgnvFMv6A8ibPwNgP9iet5GpNWeifKye1PBTgO4A+b1uc4AzKdfeW++E10/JTUbhd5Jx/oRHVc2IW/FpUwdOm7FlEOkXnBC9hppu7zEcircaluvcnqyH3VHez/3qcaGUU6KoPU4q6fPXI/hsiIyChEHJOKIBSZ36QJmYtwp37jkPLJZj91mJTCqrzQMIfUHkDH+rAVsUQ7R5W/URTVQVeKr78XMOiWz44u0/R12w5enI+Ahoz+gQ4iJZnWKAQ15aH98BA/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(376002)(346002)(136003)(39860400002)(366004)(451199021)(1800799006)(186006)(4744005)(2906002)(52536014)(7416002)(8676002)(8936002)(5660300002)(41300700001)(316002)(66946007)(66476007)(66446008)(66556008)(4326008)(64756008)(76116006)(110136005)(478600001)(71200400001)(7696005)(9686003)(83380400001)(26005)(33656002)(55016003)(6506007)(54906003)(122000001)(38100700002)(82960400001)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?cgZnte33rekRQqbG9J0JVgJV7+ZQ4KSznzm4jdbI94kaOsIVKvAneckcrZiC?=
 =?us-ascii?Q?XXcb+eptU1u3TZl76TshAAKsL/66Sb4ekr6DlYa+5i/f1b2hp/kID7zoShIA?=
 =?us-ascii?Q?HqPunIBDYu65rSdZqS2J6KyYswGJeGaU65IvdEb5WVReKKEV4Vt8DbdaOTeA?=
 =?us-ascii?Q?pcqnHrScq9C1aVVhQxHc39DmyS2O4MyA/F2H+B9SLVsyIo22/wTIlsRo07V2?=
 =?us-ascii?Q?iV4zLMbzmnseHmud/lyJl3QuhuL8IjSS3LUDyZL4oOKUUi9pE/FQmrtIPUEq?=
 =?us-ascii?Q?zYGi3qoosdDKZij7A0WkkuPwrCQNNXbrEZ3cNcA1T1T2NQS23XV3mXH/8QPQ?=
 =?us-ascii?Q?xkpM1v2kR7t5uEJ6VtjeTIFq3JPJ+1n/sIKxmx9kJb+6Gu5TpbPJ7bnx1LlG?=
 =?us-ascii?Q?hXZKFxGqXe6iJ+CcFRiSuJA0GIrBG9NE2cEKig4lCUwJt8av9YjzQ2C9Eemo?=
 =?us-ascii?Q?7Gt4mG09rVL8P3rEZ65mSg7pUUuRDPXzeF5lBMDPK3L7LH0QcknsCC/TxtJ9?=
 =?us-ascii?Q?BkzPmvssukLeLo4b94xQJe88A3Ay+awQwSVQSGvMmzAooYD/hxY2cJ5QZpC3?=
 =?us-ascii?Q?9gCv8nQqGKdmbevjeOTSQjIkhTngMSP6dD8p9kdLNSCXop/Rs+zbrv9tOXaa?=
 =?us-ascii?Q?929kRKC4x+A1yZXTage3287XMqZOPL8unR5mRnFBQhKB8w4Db4axmj3pHMSg?=
 =?us-ascii?Q?gwkAI7ZcZmOhVQwb8R8fu11zdrId0CySt761xhw16SBVPJL0ymPEXM0/OeYq?=
 =?us-ascii?Q?ySxk2tQgwfzSQK09KHt6TNzdrBQgxu/+sSK75xDJmb5YgcJhaP0J3zL8Fv2U?=
 =?us-ascii?Q?POJutr12V6jr2lHTmh8tlMYfDnIFwdY5MtqfGBexA/U20sAbme0Ye27cSLm2?=
 =?us-ascii?Q?fg9ue48dYEevrEkeiUHi1uxIkcDvSlDH+G+oNu4v5TOXDU6RsWwoVu3y/yO/?=
 =?us-ascii?Q?fatClQgdcvmuw5Ty18OsxsbT1djd3L3Mrxcum1L+zeudfKnZNHwP3AyM6SJS?=
 =?us-ascii?Q?UN0W+id/qnyJ++MnLE4wZ/K4FRMlGqbD6CYMAMQU/IK1X+Ji5aJ8MUAnevH3?=
 =?us-ascii?Q?9GxskS5+G5dhhvw7fOo4ZJShluHmTZUfpaskSbx+DFQYM+UyggLxEc7EGcwz?=
 =?us-ascii?Q?G1PaO2QjdcZ9ot6vhUpr1eKlzFBxJMP99IQFMkX8YsFGiBV/xSQUAdxJqsgq?=
 =?us-ascii?Q?ud4wLXfUYYPoxYV1kvXbB55r1eTmZatBZ6A3e3pLX9Nbon8b27KM+NTLW2d7?=
 =?us-ascii?Q?9uMIGcahlR2TCMKUvyLqxbYATTGuwnQ9Us/PJa4Mvns0mOiBC225auRUGzdw?=
 =?us-ascii?Q?MkXpiWpgCU9knbjU2hmgcopouDX8tsgw49VhmbNGcWBEmbqGqLvCD1Yxq+gw?=
 =?us-ascii?Q?ev4wGVwak3kHUOI1NuXWXMkAzG1FfdyfMh425gxLBwAX9F6eu2rbwSyPobr6?=
 =?us-ascii?Q?a1Q8I94I0Lbls7I6wqhIhlNwdt5FkUvvgQZZGmEScYpG24IKAKZSN1QzTy4i?=
 =?us-ascii?Q?GOGwethkIF2jzaJgyMfLQx2Aohmlg6EjwbFgUakuPAOjpEaRuUDLBlbMNqYe?=
 =?us-ascii?Q?J2tR+9ytaAEtSszUQaOwENIVezBJ9yFVivLr/OlcaSrkKHTHyY7OB/wZDH3D?=
 =?us-ascii?Q?wA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: be7af36b-ec0d-428c-30c8-08db9a631bff
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2023 12:04:26.4656 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G9QyhwIr/smx0VukbZTubp5nM4OehPTqJQkL41XU0N6MwWp6GmWaD2vkX8enf+wFG8ZWHhSQiQ0DyYLTcVo8bKqEM6Z2SBaCUieuy4x9i0I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4643
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691755470; x=1723291470;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X5WeupHKUEouF6weUT8JQrDyAm6aUY7dx1thZYTSHrQ=;
 b=gWNw3+JVVIGR1qizX+eizCns6E42DbaA5p9Lwz9Ow0KURZcBrx5bjlnp
 /D16nNbrLr1kAWKr1SVrTESKZlx6+x3T3m+JuQvgnuCJNv34BsrYteqpZ
 Y3OxDRAzEthdGm4kik6fjerSDYwx+srqIo322ocj4Jfh7LsHZCbV5se5T
 wb9FUC8p9gMUhOdDq9zWaMrPSzcWAFyQJaDgjFLOGRkq7mGy7MYG+aqgW
 20OMdjWx821XviwgCSD/O7PP9E5VV1qqmk+TQGIBLwLYRcq6DVZ3TWiQ5
 WdTpWvgmEJUja/kY2sOaBsC+gbjGlxTfCYfykYiM1O2OHgGzeVdBWtiC1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gWNw3+JV
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 6/9] ice: add admin
 commands to access cgu configuration
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, "Olech,
 Milena" <milena.olech@intel.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Jakub Kicinski <kuba@kernel.org>
>Sent: Friday, August 11, 2023 4:21 AM
>
>On Wed,  9 Aug 2023 22:40:24 +0100 Vadim Fedorenko wrote:
>> From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
>>
>> Add firmware admin command to access clock generation unit
>> configuration, it is required to enable Extended PTP and SyncE features
>> in the driver.
>> Add definitions of possible hardware variations of input and output pins
>> related to clock generation unit and functions to access the data.
>
>Doesn't build, but hold off a little with reposting, please hopefully
>I'll have more time tomorrow to review.

Yes, we already find out, it doesn't build when applied to latest net-next/main.
I have prepared a fixes and sent to Vadim, but still waiting for answer if he
could send v4 with those, or if I shall submit them separately.

Thank you!
Arkadiusz
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
