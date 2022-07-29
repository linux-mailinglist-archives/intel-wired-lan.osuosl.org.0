Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7BC7584D4F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 10:21:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44AB54016A;
	Fri, 29 Jul 2022 08:21:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44AB54016A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659082910;
	bh=4SaLLMWAn+2GdZD8Hd56XNb/4Eb6/M4WVUf5miKpUjk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Tj//jNdenX8GDR+n6bBSUP8PB66FxOQk2ejf1o2Qfux+DPs/GR5xlK1YUISuQ18Nq
	 8RdzUWLrHsoSlpBLo8/uouoTaRbjuC/W/9xmNJ6W7aTMby9RKULnPwszv0DGSxKsgS
	 DOvNBt4AmK2i3H5jatRk6s0fTU3MyOp3UkIDHd9TqAm0bWmtSaYY8l/GleTIg9SSlO
	 lQ9IVUjBzBvKPUWtGHdkJY55WAj/wxKsYpUCQ51bwM8ZWy/eWOPPNInuQHtDVX/KWt
	 ToHpDppFWwwVD85uzpiJWzUwuQZeJ7rDIMae5ZuAJd08fu82mtyFTL5YcoOVKkD5/X
	 zAIH/BLJ7VMxQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tj5EfuQ7EPtU; Fri, 29 Jul 2022 08:21:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0572340C09;
	Fri, 29 Jul 2022 08:21:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0572340C09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 13D551BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E051783FC7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:21:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E051783FC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LQJVNJ6_RcQF for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 08:21:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5E07B83EE7
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5E07B83EE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 08:21:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="269104790"
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="269104790"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 01:21:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,200,1654585200"; d="scan'208";a="690666382"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Jul 2022 01:21:30 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Fri, 29 Jul 2022 01:21:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Fri, 29 Jul 2022 01:21:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Fri, 29 Jul 2022 01:21:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AftfiY+zYV5Kzsdx4EDYGXfwgsffuQ3340B2ksWZNflblCzESHdg7Cg27YOY64d8bpXgW73SEsPp87UU9C//3lv5JdhvxvscHo43Gp1DgaT3/ZnfGUbL6liYH7WXuYkDPCXRX9MwwMqvw/culGh1dUOq1c4sFx26IiicqmD0fg88x1nNFJdeKxn7OfCncBGwrLrDV/qrpiU6jyts/tdolHKgJAZhgPVQRlR4oLEIp2sZVwqrts4aNvye6P2x/ms0ivU630q+bF2UGhivMtqnblPPzeMCLD4knml5nBUX1uzDRzqclz9sSnJf1+qgv5co98PzL8A+JhMOR/odew/e3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mEQ1TQq4u3qx+U99PRbeVgLX/LhBCDhHMwv4qdj6gCI=;
 b=gcz8faQl5jdCBtHkzXhUNrY6bPdgGNZBvPq/CDo5KCjfG6h9dUVx/2hKICYoWFaSTMjCcH70f9rKJQL7g2+TSEVZ80UBwFOHrtdvO2dsflxgpRfUxQr5Ba/oILa+qv4k+AyDSQanYEBBzhBSWgMckKQk0RySqD9j+D2OFVv0yVwG7liMbVz8hk2eDm50U+8M9QIaVv1sE6jrdVikj68EZc6OG0NhmGGou+6Lqsc7VXaktcbyKW/auGNS56Z7G2sABu3g8Hr0cqq70iLJdt0z7D8hRDAN7N5WeMFcGX0oXjbo5Kjgptx7ccYdqRDrM4UfJpbzOBc3JvhEMq5rlSyncw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB1624.namprd11.prod.outlook.com (2603:10b6:910:8::12)
 by BL1PR11MB5430.namprd11.prod.outlook.com (2603:10b6:208:31e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Fri, 29 Jul
 2022 08:21:23 +0000
Received: from CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6]) by CY4PR11MB1624.namprd11.prod.outlook.com
 ([fe80::6023:b392:54a4:a0a6%12]) with mapi id 15.20.5458.024; Fri, 29 Jul
 2022 08:21:23 +0000
From: "Szlosek, Marek" <marek.szlosek@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: Fix call trace with null
 VSI during VF reset
Thread-Index: AQHYoAGHydvtZ3iVukibHJUu7wU5R62VCDFA
Date: Fri, 29 Jul 2022 08:21:23 +0000
Message-ID: <CY4PR11MB1624551B38E6D022FC194043E6999@CY4PR11MB1624.namprd11.prod.outlook.com>
References: <20220725083243.819236-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20220725083243.819236-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b59ed21b-2b75-4667-aa7f-08da713b52bd
x-ms-traffictypediagnostic: BL1PR11MB5430:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pyMBYglRQGZbxpvroPtvAWDZGIS+4siJLIuGIJOOWQHxriUEVkWmVZifJuSxv2wu+qjDfhSq5i/p4Yzl1yy86UH5hbpzbOhNqdgtIgldz6DcVX5Mbw0EObBXDVBSEqUCaun07V0FUfQJT+ek953KkC0ku8q7b3eHJrEVz2izlJ3GGU6AoCs0muvMpwuy9FZQzLYO840LNnVUHgX7UpwHOjcCK5x8CDERBKhy9SOE7AD4ttOuKVXyaqJ7kF7qnKdp+fzdMTaceQeFZYMd3bHTHGVcfL21MyhKx+8OBn1QrxX3M1LAnD2keqB1U0RCaMA3DaHuy9YpfjoFovHlzd7u9atlTHxLJukJPRkp3WNetW6ABM9+rNh7Dw02KeCfKFwDagC1/8pN5jUkryQ9XbXowZUicUdUJmoEPvXw2273CPBIUnXjFLCR3rm7EJAmBNKeo47MpXN/he7KthquXElI9YeDBhwyHAumaET2XienXoEjno7Aj9fx19nTb+7gpskJM+mvoZ60cxLlhXZocfP9SmkuJyXnEYZHQklccn3QxZQlGwxKzw0eN0UnZsbMyWDI8McQEBlyZVkOM9zPT+fhkNe653NWPgGRn2UHlxQCgbQt+vSDFBOkyGDQJ2EWoule+8ndy1jhZ7jmh0U9PdK3jeSxjL46/hiaAklu6IV141gWnhYHZb+9JZcaxC4vLhqoClOgA+6xQCu6RbIPatD2ujnV8Uv9sMLEQ41B/5VFTs2IzRqGFkvC5qYxq3WIN9+s/gEA9SPfVzpM7rCtLNfDt6mMHDV8FFUxSUYNzNsC/5QrN1myMKO98krCR2ckBUD5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB1624.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(136003)(39860400002)(346002)(376002)(110136005)(71200400001)(54906003)(107886003)(53546011)(316002)(86362001)(45080400002)(55016003)(33656002)(2906002)(76116006)(66946007)(66556008)(66446008)(122000001)(66476007)(4326008)(8676002)(38100700002)(64756008)(83380400001)(38070700005)(6506007)(26005)(7696005)(41300700001)(9686003)(478600001)(186003)(8936002)(52536014)(5660300002)(66574015)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?sYoPJJSTvkrmn1KO4yGVuzGFSpVnIXO0TOvIXvn8guehbArpcpOEytfXj4?=
 =?iso-8859-2?Q?ovciQ+oG+vivznfzW5EjRbsie4uVFG8bZnGS3H/7R8xmbJi0JbUcZZRClp?=
 =?iso-8859-2?Q?ZKSZgzgGWGhEjcxh3bEQMuY6J66uQO4kESGZspmxq+RBK9M+NEPvQ4W6KW?=
 =?iso-8859-2?Q?zaXY/uCZeuHsuvLveesezqcOqa8tuUDxlipGA6MR5oVJrdY7qY+kRDmtTF?=
 =?iso-8859-2?Q?G8NpKfVY3mAIm5ZCcixmendiRMPnEyRvwvEznA/bKg3b1ch9QgR2Xs9bdv?=
 =?iso-8859-2?Q?p8vHYRCv7FvPxzBWy2YAWLOQiGX34XvAHaDWIqtsj1M50t2t/H9lU6Yg/U?=
 =?iso-8859-2?Q?AdS3WMUiFC1o981ul5DFQrJQ1zNmFD+9k6pFYPhgBKnnwTCy+87gYEdmyf?=
 =?iso-8859-2?Q?//cteD6qkRhwEDiRzOgrlUDSmcBRmyOkWCpCv2N7b2AFrUzrV2H4ct1WpX?=
 =?iso-8859-2?Q?pKuoHvSl0kNgKzauM8UANfdZZX70LDs+En/EUVSKMCEmZP3PAtBe70ntqi?=
 =?iso-8859-2?Q?mUcH7PbFzRtlbSTpdoKv44jl04ekyUZHNUvxeIutdNUuT0fzB5uo6//yMb?=
 =?iso-8859-2?Q?cK3WvdSkVgBxFjqcp+6EoRB910nMufdJ5AamrlObMNValGPglzSeV3KnlT?=
 =?iso-8859-2?Q?AfstfZv04USkBiMuTEMWF/bG50h7tMx+ukMVxUjJT5m3lyorpgZmavhSD4?=
 =?iso-8859-2?Q?czXlhMU/n4t7bppN5L8RMF1Tzwfp4tnsF06yRNBLnO+9tL68GDvD6uwNDU?=
 =?iso-8859-2?Q?u24nQlWWlc+oO71ulorp1QsDxDnvFhu+aA/bhI/lpe4OsaYSD0MLXCj81G?=
 =?iso-8859-2?Q?+LVdIO5s/T/lFZr7ZO/HKev43q2X4pxUAfLCxGa5/LdUr/ycJU1f6Y8OGz?=
 =?iso-8859-2?Q?EvNMOSmTKLCMA7/roQ0VyNJ6bnEbS9Z2QqmAL9UXz2d2YwSJkn5waohzM+?=
 =?iso-8859-2?Q?1ALNvfsykP8didjgkVXbK+wT/iQshxc1IuEyiFEtvEB9EHE6jVyMcFWE7r?=
 =?iso-8859-2?Q?WoHFLP+p81saBVWAyENq6ey3SkRuU4PPVtYf0KUGoQcsrlkLu3MXPhT3Wd?=
 =?iso-8859-2?Q?jfhjpnyIUpaGBpGm0cQrzhcI80wtzT+pvHACOWXRopG6BRtcBAo8OREhEk?=
 =?iso-8859-2?Q?egtSbt4xNh4P4xXLIi+xroFNerwzpZdNS/kz9O9XVT2B6sa+d9u6dg4rLa?=
 =?iso-8859-2?Q?2PcTiSkQBjF1UXTq9m2WmJljzBGODBUAHQEXd2oN+cyBclq9nsuA9pYWKr?=
 =?iso-8859-2?Q?Buq7Ons5r2/qyfbl288QohY5s9tmOonZaN4PuSTJUHTAmtjBVguS/Mr16D?=
 =?iso-8859-2?Q?gEQ5/m/7XOULEgjLKC0rUXjYqOUuk19GX5MIcgHUMCMPN4VQo0VCu2cSx8?=
 =?iso-8859-2?Q?UN3EZk5WZJTaak6pe5trb/jtmqv3LcqZy5cohGkTyBVK5u4jF5x5euFFpP?=
 =?iso-8859-2?Q?1/Pddu50qQBpxLuUea2m0ktFN+/AlEYYaI7H2fR0AXEtGNpzDd7e5fZISB?=
 =?iso-8859-2?Q?CqXg2KlCAA+l9qL6OqdSQLm4LX6IXia6nMGnavLB5o89gENArwayVE+jnb?=
 =?iso-8859-2?Q?5FpzOekenHgRuV1Pk33g6eTFSDfiC8MEmORT8BHXCbjf+UG0e2wQIuyDRM?=
 =?iso-8859-2?Q?hoyKWy480puEa8nZIX0GSntVSn4Zv0tYsL?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB1624.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b59ed21b-2b75-4667-aa7f-08da713b52bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2022 08:21:23.1048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sEMng1j3tGhvU6/E0Zv4Aq8Vg+LTEH7LIySSrtnAbOZzSrpVuXHDuFC1v+2bB8DnD5jSCpjN0vTJcRjW6mbqhg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5430
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659082900; x=1690618900;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JBfqRH0CZbPPnwLgBi+EqjgnExLtym7RUUrdkAToLyU=;
 b=Jgp5R6ck2r0RpSpd2pT6TupT/ubWTKiLN4VK6JXrVtHvud0GoYPGIvQs
 AWsKo9+p8J+EJRwq0Q1aLOA9aiYAKmFFn39KnB7cnjBlCxzXsV06inDd2
 g5xz3uVLNW9J0EsqDONXlB1Fgl11otdISWcWUmqHYOleaq6T0l4zpNoxW
 PbxULURQY6pBFVfIzIOIeyGye/mtBTWEBJ5qCZ7mhphe7VzGnPCfazgKF
 sHKUE0PaoQW1lp5PRdYr9rUuakTXH2H3bWp2Mps6UU89/gaJLsZl5Wq2V
 Vi0Bb4CEdsZMa/hceYD9dElUgVV+HbQRnUI5ZqVRF3XQVyJfQLl+ttQKr
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Jgp5R6ck
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: Fix call trace with null
 VSI during VF reset
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
Cc: "Jaron, MichalX" <michalx.jaron@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jedrzej Jagielski
> Sent: poniedzia=B3ek, 25 lipca 2022 10:33
> To: intel-wired-lan@lists.osuosl.org
> Cc: Jaron, MichalX <michalx.jaron@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: Fix call trace with null V=
SI during
> VF reset
> =

> From: Michal Jaron <michalx.jaron@intel.com>
> =

> During stress test with attaching and detaching VF from kvm and
> simultaneously changing VFs spoofcheck and trust there was a call trace in
> ice_reset_vf that VF's vsi is null.
> =

> [145237.352797] WARNING: CPU: 46 PID: 840629 at
> drivers/net/ethernet/intel/ice/ice_vf_lib.c:508 ice_reset_vf+0x3d6/0x410
> [ice] [145237.352851] Modules linked in: ice(E) vfio_pci vfio_pci_core
> vfio_virqfd vfio_iommu_type1 vfio iavf dm_mod xt_CHECKSUM
> xt_MASQUERADE xt_conntrack ipt_REJECT nf_reject_ipv4 nft_compat
> nft_chain_nat nf_nat nf_conntrack nf_defrag_ipv6 nf_defrag_ipv4 nf_tables
> nfnetlink tun  bridge stp llc sunrpc intel_rapl_msr intel_rapl_common
> sb_edac x86_pkg_temp_thermal intel_powerclamp coretemp kvm_intel kvm
> iTCO_wdt iTC O_vendor_support irqbypass crct10dif_pclmul crc32_pclmul
> ghash_clmulni_intel rapl ipmi_si intel_cstate ipmi_devintf joydev
> intel_uncore m ei_me ipmi_msghandler i2c_i801 pcspkr mei lpc_ich ioatdma
> i2c_smbus acpi_pad acpi_power_meter ip_tables xfs libcrc32c i2c_algo_bit
> drm_sh mem_helper drm_kms_helper sd_mod t10_pi crc64_rocksoft
> syscopyarea crc64 sysfillrect sg sysimgblt fb_sys_fops drm i40e ixgbe ahci
> libahci  libata crc32c_intel mdio dca wmi fuse [last unloaded: ice]
> [145237.352917] CPU: 46 PID: 840629 Comm: kworker/46:2 Tainted: G S      W
> I E     5.19.0-rc6+ #24
> [145237.352921] Hardware name: Intel Corporation S2600WTT/S2600WTT,
> BIOS SE5C610.86B.01.01.0008.021120151325 02/11/2015 [145237.352923]
> Workqueue: ice ice_service_task [ice] [145237.352948] RIP:
> 0010:ice_reset_vf+0x3d6/0x410 [ice] [145237.352984] Code: 30 ec f3 cc e9 =
28
> fd ff ff 0f b7 4b 50 48 c7 c2 48 19 9c c0 4c 89 ee 48 c7 c7 30 fe 9e c0 e=
8 d1 21
> 9d cc 31 c0 e9 a
> 9 fe ff ff <0f> 0b b8 ea ff ff ff e9 c1 fc ff ff 0f 0b b8 fb ff ff ff e9 =
91 fe
> [145237.352987] RSP: 0018:ffffb453e257fdb8 EFLAGS: 00010246
> [145237.352990] RAX: ffff8bd0040181c0 RBX: ffff8be68db8f800 RCX:
> 0000000000000000 [145237.352991] RDX: 000000000000ffff RSI:
> 0000000000000000 RDI: ffff8be68db8f800 [145237.352993] RBP:
> ffff8bd0040181c0 R08: 0000000000001000 R09: ffff8bcfd520e000
> [145237.352995] R10: 0000000000000000 R11: 00008417b5ab0bc0 R12:
> 0000000000000005 [145237.352996] R13: ffff8bcee061c0d0 R14:
> ffff8bd004019640 R15: 0000000000000000 [145237.352998] FS:
> 0000000000000000(0000) GS:ffff8be5dfb00000(0000)
> knlGS:0000000000000000 [145237.353000] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [145237.353002] CR2: 00007fd81f651d68 CR3:
> 0000001a0fe10001 CR4: 00000000001726e0 [145237.353003] Call Trace:
> [145237.353008]  <TASK>
> [145237.353011]  ice_process_vflr_event+0x8d/0xb0 [ice] [145237.353049]
> ice_service_task+0x79f/0xef0 [ice] [145237.353074]
> process_one_work+0x1c8/0x390 [145237.353081]  ?
> process_one_work+0x390/0x390 [145237.353084]
> worker_thread+0x30/0x360 [145237.353087]  ?
> process_one_work+0x390/0x390 [145237.353090]  kthread+0xe8/0x110
> [145237.353094]  ? kthread_complete_and_exit+0x20/0x20
> [145237.353097]  ret_from_fork+0x22/0x30 [145237.353103]  </TASK>
> =

> Remove WARN_ON() from check if vsi is null in ice_reset_vf.
> Add "VF is already removed\n" in dev_dbg().
> =

> This WARN_ON() is unnecessary and causes call trace, despite that call tr=
ace,
> driver still works. There is no need for this warn because this piece of =
code is
> responsible for disabling VF's tx/rx queues when VF is disabled, but when=
 VF
> is already removed there is no need to do reset or disable queues.
> =

> Fixes: efe41860008e ("ice: Fix memory corruption in VF driver")
> Signed-off-by: Michal Jaron <michalx.jaron@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> index 7adf9ddf129e..2d6130af1d40 100644
> --- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c

Tested-by: Marek Szlosek <marek.szlosek@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
