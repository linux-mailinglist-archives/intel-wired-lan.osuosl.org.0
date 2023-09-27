Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144E47B0815
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Sep 2023 17:23:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A624741ADD;
	Wed, 27 Sep 2023 15:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A624741ADD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695828184;
	bh=uEPdCI8I23wIa6Z6kBtVuRnDxdTQVo65K/Z1DzMx2Mo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0hFGLepNUlDhpr311SmUOZFOrc4C1hIAkhLbO+Qe+L9gowLk+0qpppfDgdmgql7Jz
	 cO9oMXcNsDQfoCzm9sUEnLya0vJTMqgXxm4Kb6/j7VzYZ8Zi5ubUZROA/KF29/XDpL
	 nfIMXhWnhPRtK6smlMRF/Ct9tazdfODP5i+XqGC/yXQbHfX2L7yjv/ZgTNQGRNWfGA
	 s5QTlKqeSI+8Gbwn8G16WEAD/UI3zVabjbJJdVJiFK9SeQD/9EasDUjEljPebyAAj0
	 priOHozsW2CNRVBXUDNba9idyNqtjwGHpMEVOvkZOxsoN8WS57srzXfmQRlu4z3k4j
	 orSduOGcwNzWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CT3A026NXfXd; Wed, 27 Sep 2023 15:23:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7105E4025D;
	Wed, 27 Sep 2023 15:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7105E4025D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 75E691BF286
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 15:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 433CD4225C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 15:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 433CD4225C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lJkKz0hGFxMV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Sep 2023 15:22:56 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 70FBF42148
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Sep 2023 15:22:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 70FBF42148
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="412761357"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="412761357"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 08:22:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="996182121"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="996182121"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 08:22:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 08:22:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 08:22:55 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 08:22:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hdk0Vn6TZRuXXlUYpUjQT41DbwlH4RmSnYlaTfX9skRuZexsTxqprIgVUxf0Jx0fekyHWFC6RO/jDD176nfJiVriUpdbUZ45GS11RamBR1NFjxvRs5VAEChw089aa7d/JdsGVUR2ApAUIuvp8vZMwPVV8CuoHv4ZpP/4SiM/atZNTQlhMAUsagJ1/sv8bvWVGzot3fmY6NtlNSp15hdecKXPuW6CD6RrvhzgW304IZOq19ayLjJBbuIAp4cVA3kS7hKyq/vuKM9lAH9100GueA6e4bsHwZJv+I3po8k/FymbWY6PCwGDfAIlr/R0hWBkqnU4zFf4nZlVgdVt9n/plg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBxfBm3E8Ak585Wq6WHIyI77+3slsMqETOj0wn6Mzh8=;
 b=c7evZP5kH3y/vh8+stAl1m8ehS++edofAlSE2g5MPWEgHcTgqS+i+ON1SA8GeyibLx1H4tMvxYFlwRpbRr8hJ9OK9IXZJ0iFKlIf/fgz8R0+GwJIfsesdwhyUEKNwKuMC1VHhDBqLV/tdYqW3JtFlZ2qRaGKCkM8hPnlyCVCVA9Gy99tilTIFFQWXM2ia+Ri8cstJW56h6PpjIM5VCTN85/h7CjesxFQE+Uy+rg6EkpGJk5chcBg1Em60a30B9KQ5DGW2w750R/U5sQzGpAtgoV0FnBO3ERA/04meUZVZd8gt3wlUGPd/dK3HgiZFdP9CTfOW8Yb1xkuvDAC02J/gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7357.namprd11.prod.outlook.com (2603:10b6:8:136::11)
 by SA3PR11MB7528.namprd11.prod.outlook.com (2603:10b6:806:317::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.28; Wed, 27 Sep
 2023 15:22:46 +0000
Received: from DS0PR11MB7357.namprd11.prod.outlook.com
 ([fe80::4b01:f9bb:f8bb:65f5]) by DS0PR11MB7357.namprd11.prod.outlook.com
 ([fe80::4b01:f9bb:f8bb:65f5%7]) with mapi id 15.20.6813.017; Wed, 27 Sep 2023
 15:22:46 +0000
From: "Rucinska, Monika" <monika.rucinska@intel.com>
To: "e1000-patches@eclists.intel.com" <e1000-patches@eclists.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [ANN] Upstreaming Process Change - Mandatory "reviewed-by" Tag 
Thread-Index: AdnwRfzUkSx9blm4QtanqRcWEaxe4AABSnWA
Date: Wed, 27 Sep 2023 15:22:31 +0000
Deferred-Delivery: Wed, 27 Sep 2023 15:21:41 +0000
Message-ID: <DS0PR11MB7357050A8489A7AB2B76BDA9F4C2A@DS0PR11MB7357.namprd11.prod.outlook.com>
References: <DS0PR11MB7357A4D02D705DFDE6B1EBB5F4C3A@DS0PR11MB7357.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB7357A4D02D705DFDE6B1EBB5F4C3A@DS0PR11MB7357.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7357:EE_|SA3PR11MB7528:EE_
x-ms-office365-filtering-correlation-id: 782b99ac-34c3-4c59-204c-08dbbf6d9a36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dUiPhQkVZdin7QvU1K19th3Z2oOzGxFiKuW2pjbAYMbAqNixcQSgO+h96Ba9QdNU8hxDG4uRrUv/H1p2ip9dAwc07tdvYux94cLvae3DC1VXpNiuixrb8Y3SyQEHYHFIyYoxz8lMTZ+oRh8GwuWuB/uPgxHzPV5ze288s5Ix4wxzss8aWwJ4ULm/YV8020KIXgLz8XLXxeDskWCjMhlrbGvbGV5TKHqQxbK76jmfpP4dXoTKgyBxXIOwXg+hrmuBG2m2aW4Yq0lRa3QeMJCtJgRpZ+aLxDndzVd1ig/DpJZQ6WohzADvJgYiY7MIMo5pmpSAvgosObPkTnFd8M9nCH2SvPgjRNjWDynqH0xaun5QQaSvPeObBWquHuBfBRm0WfSPtx9WhUXJbQHdWKWT5CLl8sLVZSJm3a7vSjjxyAffc2XmN+7HHJGzylkxwSI4TA5Il9rDS8KVjbuSKQk0BKYwa6YsMrgZ/o/7jjmi2Fz27juaU4Mka80gYK2jV5dTOhj8stb27YyFv3ef4gs+o9G9FikU5sNU5jQGQMNdF5HZV6lUA+h3FuU/o4KAo5THG8Zsh912f7aujH/MJOtFl3I185ejBkb6tOSCicPsyXqfj8yI91+TJmatChPMyBZayuDavR45DS+8/2TZEo9Lug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7357.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(346002)(366004)(396003)(136003)(230922051799003)(451199024)(186009)(1800799009)(33656002)(86362001)(55016003)(6506007)(966005)(71200400001)(52536014)(26005)(5660300002)(7696005)(110136005)(9686003)(64756008)(66446008)(66556008)(66476007)(316002)(4743002)(76116006)(41300700001)(8676002)(8936002)(478600001)(66946007)(2906002)(38100700002)(82960400001)(6666004)(38070700005)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?Wu+xegJ+tRc3iSg9DNwTqz9C9gE904symx/601ZjOidU3H5pRB60hxah5V?=
 =?iso-8859-2?Q?gPQRzS1gpnmyf0kSYbNZPpB9XT6ISbAfonQinwa9s460dH65RjpYjf81yG?=
 =?iso-8859-2?Q?VB+m0x3uRkzrY57hkXKfuBlnlC2NuI5OWpLxkxlKvhmmRlQ66xsf8LC/5C?=
 =?iso-8859-2?Q?Ea90KpS15/M+74+qv0FadbRB2G51TKntdOGDW6vJml+0O5SN9+/8dyQDN+?=
 =?iso-8859-2?Q?3HJT5x8IYPPVYIi9Qb0838YG4uYPy9wWRB2h3Bg5eyeJ5d8GSZRl0+I9uC?=
 =?iso-8859-2?Q?LEXbuBi8OQcjAguJE3dDN9VReKRiHDvHrynvm+XwQSYtYnGaahPOyaZtaN?=
 =?iso-8859-2?Q?AM3u1QLvauHzgAoKiYN8MeC5h2y0NC2j1o/4c/wuHxF4QCIs4Cg4h6glfR?=
 =?iso-8859-2?Q?LDUKug9LNy5eSztyGCKBMIiIzKuXZktD8cgb0AxZ0myZzYsImP7lIvC+EA?=
 =?iso-8859-2?Q?agvcv0drQuUh0U7YFkyXVikKNBJebLPxHuxZ1IEgto8G9KYFyFZ47XpMN0?=
 =?iso-8859-2?Q?PX3yumPiYGA9KcMAAjuHTF8/ai7f7PPd2R7uhpMfXndWrht5/D6wxDgwFE?=
 =?iso-8859-2?Q?UH20cUSIU+m3v7QtXcbp0Bq2K2p9aUjvgUfV4n7a8YnF29eRwC15BgFEps?=
 =?iso-8859-2?Q?JwGkELyG7vXke8lO+1LSCMrsVWEMBhwmNgVx9UT4FllBP0AFzn2Cvl9tho?=
 =?iso-8859-2?Q?buv2vPFEm19QW1VGxT+jbLMILgI9EtvkTw6aXjhiJaIBi0bVcQzrNJ7XJa?=
 =?iso-8859-2?Q?Y6uL99Piq2sQpK7RbCtslE8fHlqn/xiZ6ChgadGuF0hPA1Hz3/GyfJMX9H?=
 =?iso-8859-2?Q?1hSFOfROZ87t9pZJ0hNwG0Jt08I9pTx6wykMipurxXoeh+5utI4bKR7nxO?=
 =?iso-8859-2?Q?9MTTrgQ2josOpvj9Yo3D++rBY4kKI4SBI5/rSZr3ByakhP60c4/z5t7Op1?=
 =?iso-8859-2?Q?wFF70cI2msiUyTMHJPwWGUHQJC0nvOQSNxpQrTH7hFgW6XoykfPQ4naRdR?=
 =?iso-8859-2?Q?A25YMmRRZtToxvkcifZIUYQPSPaPUx2lZ7RTE1s/xrc+fu7y4CZ7f4Ov0R?=
 =?iso-8859-2?Q?DyGz8uWlwdsuqbkqNB6+kPp2y1gStECauSb+j9rhBGTzzSiYj0NTzBJA8G?=
 =?iso-8859-2?Q?BzhWWVyTUltUVxFrTXGCgS1uhw/ZP6/LzIGzAxf/servXfyfIpZ38SDgjP?=
 =?iso-8859-2?Q?bWXdllNgAoQ5XpK+yHUMxeuhCa2o0FI7AA5IXnJ0FmQ9fdaEe3ARqOPecZ?=
 =?iso-8859-2?Q?+jjlBmD17bg2uEHpZ802kk/yyheMIWXjbeFdIz3dgynefw4xCC52UOtd6u?=
 =?iso-8859-2?Q?Zz2DCmYvWQcIjX7784BkuWxx+W5UbMIOOLSgYwrZqln3C8F49d1mKpPGhh?=
 =?iso-8859-2?Q?rzaW2DhC27l7OouGgwwS/1j7kl63YKJwtPO6xUwlI1xfjI1DHlQrYBmWcQ?=
 =?iso-8859-2?Q?jmfuD+OOJA2EzLjQnUI1QdnqVn8At439QnVtPhTlXHs+K014pApSVGfGOl?=
 =?iso-8859-2?Q?WzspCnimlNi8Q0SDOL2MDYLIrpPk7IoISqcIq0+Ke4Wj3i/WFGbhyS4fxE?=
 =?iso-8859-2?Q?YOO90Xuh833EV87SedNe41VV+HJj4Mig+wGgXx9FVtvrY5QSUvKNoYww3r?=
 =?iso-8859-2?Q?JlD8E22XiruIjV+rkklOA7PYe1QZTQE5mYYaushe984INy72aP/zh3YA?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7357.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 782b99ac-34c3-4c59-204c-08dbbf6d9a36
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2023 15:22:46.2047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /nesEDc1FrZ9rB1fKfZXILSPF4L2vJYHu1pxj0dEWYehzn+tQoBpZrEWcC/uebAWnZSJZ72fs8pnIKWSvcD6ZSMFAQ+CIKVbCyBIsX0VH2Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7528
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695828176; x=1727364176;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=LvAIrdQ1Cs9qo4aNJfstWcvxWv5Lj2609/V8QqXrEOw=;
 b=hHIqB9UayBxrLBYmOH3qk8cZ4ohNEe+N74Lm+cZ+IINVasqvJSduCczM
 3CjFSU3WoS+voEDYeE3cr73WikWwX411M+4t0XliMEcsjMf4SiFr0pglD
 ylcqVa5Zy2l9RbL3xNvCVnzH+34iZQD+nWzqeBQMsCz6+n30wbyZo0aov
 EI8pq0JSVuRZWPgpEzGt3Fyt1fzzyZs+GwOfRoPZ2C0CN1z7PSGflDc2x
 EF8SpwxdAiN9fBlK+clFWbt+9J+KJ86T28b9ThHDu2qsf5OhCR+IrYryY
 SaVd4IVm84wpv82mE7nTGJZYkb96QNZoEoT0ie1NitmAHcFELb3zV9dKi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hHIqB9Ua
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [ANN] Upstreaming Process Change - Mandatory
 "reviewed-by" Tag
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear e1000 and IWL contributors,

We are implementing a crucial process change to enhance the quality
and efficiency of our upstream development and upstreaming efforts.
Effective immediately, every INTEL/NCIS patch posted to IWL must have
at least one "Reviewed-by" tag, those are provided during e1000 review
process.  Any exceptions to that process must be agreed upon. By adding
the "reviewed-by" tag, we can establish a clear indication that a patch
has undergone careful scrutiny and has received approval from a reviewer.

Key Rules:
1. Mandatory "reviewed-by" Tag: Every patch submitted to e1000
must have at least one "reviewed-by" tag from a reviewer before it is
sent to IWL.  This tag serves as a sign of endorsement and validates
the quality of the patch.
2. Completion within 48 Hours: The review
process should be completed within 48 hours after the patch appears on
e1000, except for large series that may require more time.  We encourage
reviewers to provide timely feedback, ensuring a smooth and efficient
upstreaming process.
3. Continued Tagging in Subsequent Patch Series:
The "reviewed-by" tag should continue to be added to subsequent patch
series for IWL.  This ensures that each iteration of the patch receives
the necessary reviews, even if modifications have been made.

These changes aim to streamline the upstreaming process, improve code
quality, and encourage collaboration among contributors. Please ensure
compliance with these new guidelines.

If you have any questions or need further clarification regarding this
process change, please feel free to reach out to me or any of upstreaming
contact points.  Thank you for your understanding and commitment
to maintaining the highest standards in our upstreaming process.
For more detailed information please follow the link to the Wiki [1]
or to presentation [2].

[1]
https://wiki.ith.intel.com/pages/viewpage.action?spaceKey=3DLADSW&title=3DH=
ow+to+upstream+a+patch
[2]
https://intel-my.sharepoint.com/:p:/p/monika_rucinska/EQs_jci29JlKvDIW1Yb6g=
o0BBNnUf3A_IrVFBfn63ltqmw?e=3DNqRqce

Best regards,
Monika Ruci=F1ska
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
