Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CA7E3B2172
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Jun 2021 21:58:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6FBC140643;
	Wed, 23 Jun 2021 19:58:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OEuDjBaBc_O6; Wed, 23 Jun 2021 19:58:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 20F1D4063E;
	Wed, 23 Jun 2021 19:58:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DB9AA1BF215
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA10E400F2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6y41uEebAxno for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Jun 2021 19:58:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D5D3400A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Jun 2021 19:58:16 +0000 (UTC)
IronPort-SDR: DgiOy0w4NzexHzFAuX/BcKwEi9URYtokmKrzdoNomRP5S9zXQm7UXBmMUb0MqV9C6KftC/uGKy
 AftI2zGMp6qQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10024"; a="268473409"
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="268473409"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2021 12:58:15 -0700
IronPort-SDR: 37q/dAHPuEPQtO3HUdfbiHN7DM26lmeB4+r1TApK08Kte3YfxCPSAQO9zVxynJcfmZu6GlbnC9
 R8JsXA3z0Ymw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,294,1616482800"; d="scan'208";a="556257850"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 23 Jun 2021 12:58:15 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 23 Jun 2021 12:58:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 23 Jun 2021 12:58:14 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 23 Jun 2021 12:58:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OroqPT4Erw397T1XTP4OV1Wgndbaib2e6G1hyfmqa3qep+AjYylM9zOyAfdTHZ/pyG4wRfmRYMTSfA6BSpZc5pi73UFL9080c+Rw33s7tc77bs/L2r4ouERbc3MRWVqHGdxcE/+TsVBmGvPywRHSNIZ1FiP4UHqon8q0qQ7diNRf6eyDR9rchIrmjeJbHlNG10xh6j2Hv7LDW/H0NnfFqVraYxggOYLGIMjWVZhfP0FlUNhl5L2OrudjnhTKhP0auWjHGg8Wnhgj0/IU1VB1ppYIUf/I+kSuXH0aStrh1KNCoOxLT0eORMcqPmQFRIzHS8npN+tD3Dln0QdDbEc/8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dls1Lr8thRul0SQzxjeffIFimF9aUYRQtMaR52B+gqA=;
 b=kxXPb6p1onhHInOk83hLdIC8NN7feNiEj1bzkRpf5PFkEXZdcKSV/pyBoTAiQhgFZD+CCBiZ8RCnlig+aekshQV8HWf5aNeHoEjq7JosqCyf1tjLknmPgM+/FeF0tLu6K1hYI3L9OFn4tAG88+PYgG2eEJa+czjHaz6PWpDjTlOsQvZiaNoDFg7QBL69NoBH21//orYakVz3hOC0Dvt6WCd8mBn5MSkyuxbeswxU0VgfKRBXun6/3Ieo8KxsUACVECcZuqeU/5U8KOjKclqPt/bwanOcEt71JJsBKEHE/68lGM3Np4pQWNikGgo2VoRSqSAosPUhqSj7tRB+CrABrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dls1Lr8thRul0SQzxjeffIFimF9aUYRQtMaR52B+gqA=;
 b=zhrYD6HPANeaqes6T7YEfwwlnthCNKhlNOU8WOU9pYgt9ac2M1fmpx6nnDqTkj2QIw34z7Vp+oHIADrcGjQLpJJN111NL5I24fByP0TiG/d0yFD4CHsO9XxF8ORt2vtEjuKHBIwBkfqUgoQqN3kHqmh1TRf/sq46PQ4POtcwBvk=
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com (2603:10b6:a03:3af::7)
 by SJ0PR11MB5599.namprd11.prod.outlook.com (2603:10b6:a03:3af::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.21; Wed, 23 Jun
 2021 19:58:13 +0000
Received: from SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2]) by SJ0PR11MB5662.namprd11.prod.outlook.com
 ([fe80::58ac:cdd:41f6:93c2%7]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 19:58:13 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP on 5Gb links
Thread-Index: AQHXQ3LGXrTqlk+KnEav23GFLuUmUqsiTS/Q
Date: Wed, 23 Jun 2021 19:58:12 +0000
Message-ID: <SJ0PR11MB56627F70A024E933DCAE0EAFFA089@SJ0PR11MB5662.namprd11.prod.outlook.com>
References: <20210507185625.2651538-1-jesse.brandeburg@intel.com>
In-Reply-To: <20210507185625.2651538-1-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6815261-3528-4fcc-3f51-08d936813bbf
x-ms-traffictypediagnostic: SJ0PR11MB5599:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5599924A96CE561D430D6941FA089@SJ0PR11MB5599.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wl8z0ormqOL/ZOhhDDcqgLdzFpi6nDbKc0XA/4Y4AUyeQA3Yp6jjqEsF89URdgMV08tImTWW04vFgemriCZZdRURVKBPyg5AtX97s26x4ucjfGRqTIN0uihfRNJOZd+drhWfrsQlIptNMwYWXD0O10nqo6OD0qBgYD/gXAZDYUf41ZaJgGL5jPZHyIpFQ22Q5gjn7jwDhnxSxiyDVKBOXTcwVVApZzpt1h86mwadZHW98z+VPJ6CSiS+RN58q784m1LdUeAKql+/cl4CUIVmW+VyJ4HDfNMBhewecPZHPgBoiwppWtPp3xNS7KjjXVSjRBRPHTMA+1F7co10WISNqalk83e4j52vUSOltqSvpftluOfQU8okhFNICmUMI2B1CSCvpH33TB2iK7GimZU0afhr2ByTsf+Y2xoduVEnPV7uMeAifuVyG+Z3oEZoVKDEJiIBZvSGqSJ9DbJVyfwztpgx3Y0eS74y92tFkmuuj5Qw/HxTm9a5NOXdENCfOIBtEQg3X1AXhRlwMao9QH7JN3mNQA3+cjJ10nYih+9s5yvnOYOIGGUz8z2XnBMFmoU4IPkqH1WEFZ+iNkEIN1N+7jmyGlABAqds4BEMOXs0Yo0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB5662.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(136003)(366004)(376002)(346002)(38100700002)(8936002)(33656002)(122000001)(8676002)(86362001)(55016002)(9686003)(66946007)(66446008)(66556008)(6506007)(26005)(76116006)(5660300002)(110136005)(2906002)(83380400001)(7696005)(478600001)(186003)(64756008)(4744005)(316002)(71200400001)(66476007)(53546011)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zocNCnF0UgWsxhk4Mf3JGRICFhona80SWrilX4MiVPFdlc+I4O+qRrr5mfzQ?=
 =?us-ascii?Q?F5rfMt/SB3OCgRzbtmhtCgnmxuhrK71kcUHNHhRUQWzL6Up5jVdcoxmMBWJm?=
 =?us-ascii?Q?T4NLSdaCMPcCucJcsZGYPSVfim1efo1xrN4wFMl2Hb9ZVINRxmnC4Jhr2ORz?=
 =?us-ascii?Q?SD06vCJZEhzH52Uy5zys57xJs1DI8Ub15hnN0PF99/6fa+Z5cck0S9ozZITo?=
 =?us-ascii?Q?1e1yuAlNI0P1H96J6lH38svWL+0ZvEbbUcFrtAWftc8Ip2G2TgG37pvsWeUd?=
 =?us-ascii?Q?XpN0VpT2RyDLmNDOD9ln3Ht8dkHQsSogal2jdxA98ZX6OBOHoXwq0NkDCQcZ?=
 =?us-ascii?Q?1LpZ8/KxWf5Q1tfAmSuVK1ed8YL6L9qJ/7yiKwArNwotyQNAFLCB29wSwZ2T?=
 =?us-ascii?Q?JIX4MaodWjfvRV9Ks0Wp/hoQbdBfniOtPg6fEYTrxqaFaTFIRqsj9rXNBpO+?=
 =?us-ascii?Q?x3zeXeFDo/I3HoMuAHteeKVw5qSgSap5/ZugZu7bEgdsK6xKMRo8XtmB1sL+?=
 =?us-ascii?Q?aMje6GoJeN+horoCT7MNKkCwu9ERoruBLfhuRiT2uvtB8vSdxISsGDKTzfCY?=
 =?us-ascii?Q?94aVWbBJlb9MvF6t5/FH64DWIIPKIPFiE7trQ1b+7t/2iyZ2d3fSPOEnz6Nw?=
 =?us-ascii?Q?FhHrTuM8xRQu/liRvcczc7tkviJwEViB/WKpSwySWoH+OSP1XMK/0lRU/4G+?=
 =?us-ascii?Q?cTsrJDpN9IGaq/PigOLzyfm9xdaONsEofXJWOEWerii51+TOhvnzWza0+XtI?=
 =?us-ascii?Q?MJY0MVil7B/CRs7c8hj519oFIZ2DcNVnVYVY+NlaAs95cr5UvHZp3inh7hJx?=
 =?us-ascii?Q?AKFf3oyNiUJgaVf3DYmzNMmVsPIUNJqWsD2tXqKyHYxmr8LjstPDPWpmhkn0?=
 =?us-ascii?Q?2J3o8P9CbNPEL0ItfAR4hXOJ2vhRtyEaH7n1cd7HpkictkNwYtQxAAsH+T3/?=
 =?us-ascii?Q?7fVzy5Jj32Xlv6tLiC+BbU6JdYB3ORyFizesWGgeHAG/yPMzE+nmbqzhR+X7?=
 =?us-ascii?Q?KegdBQs8zzSxHF0+LW/w661JpxTYAhhCEmTnMzoveV9coRwcyxekJctA5aqy?=
 =?us-ascii?Q?Bpw7iWlR46THaBk6u7YRu6dM6eO8gGVAb9ycBGgoZbVCnugDIexF56AplRuo?=
 =?us-ascii?Q?QBt1kSn0mZFWYa+Pa15qCSiTmyD5CV8bhHV+SXHTgnpVQWfmhmBS+ZUIzYOX?=
 =?us-ascii?Q?niAwm6ouYGBqSyEa7+grDOmb0W/53WuqhnSAiM2ozZtBqqBohyzqSblLwZEq?=
 =?us-ascii?Q?lXu9/T5MH+F1rzb8Jyrhct0ZvlmkUv6evT9WYwcSvTSU0rF2wDrGGwiT6a0m?=
 =?us-ascii?Q?UA7EFNqv/JPT+k3kjeBWsxoE?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5662.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6815261-3528-4fcc-3f51-08d936813bbf
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jun 2021 19:58:12.9332 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gcC6BNcjox6YGZsUoypTo6m9o581QANjAtCeK9SMY0g99DpEL4yymPDTw1IkvJMGm39HT5ypPuTVPwA0RVIodCmjIMoBlOBESaJA0wdvaZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5599
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP on 5Gb links
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jesse Brandeburg
> Sent: Friday, May 7, 2021 11:56 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix PTP on 5Gb links
> 
> As reported by Alex Sergeev, the i40e driver is incremening the PTP clock at
> 10Gb speeds when linked at 5Gb. Fix this bug by making sure that the right
> multiplier is selected when linked at 5Gb.
> 
> Fixes: 3dbdd6c2f70a ("i40e: Add support for 5Gbps cards")
> Reported-by: Alex Sergeev <asergeev@carbonrobotics.com>
> Suggested-by: Alex Sergeev <asergeev@carbonrobotics.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
