Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9239943FC64
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 14:35:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F34180F12;
	Fri, 29 Oct 2021 12:35:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-K6zPCsjaWj; Fri, 29 Oct 2021 12:35:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C5AA780F09;
	Fri, 29 Oct 2021 12:35:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9BF491BF2A7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8737F80F0A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:34:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aFY-mwKZMTGe for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 12:34:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8295580F09
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 12:34:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="228112099"
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="228112099"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 05:34:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,192,1631602800"; d="scan'208";a="466508611"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 29 Oct 2021 05:34:53 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 05:34:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 05:34:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 05:34:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 05:34:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B4fywg5ZPxWkZaskD1Xump6ciSk9lFBt9NQduhWrUVXT1PhXl7Il/8HCpJUKBbSoqFUfMwAGh3N4SttpVTrBaNA5yLjZOMXZsQxU3clF+XqTg6e6d663A6blb8cFXNdoheS62Cgk0EUCveunuZ4N1IQ9MMB1Q4glGU9ZS0DbSgMpL+IIpJOfBPet4ePK4fjsGCaR2ZkYQ+4L/ZeqxsphSayFa/eiKvDyBbn6LlKLRsurnfoOoeHjwyDK65sPdqCVKGILcbwwmQgaLDzNXv6HKrwvBsDmsuMHexwOe6r7fyIZJyJxgLt1KzwK5/m1+IXdbRx6y5nGIJ0ODwdfZFMvzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SS89SC74O+YAaoccvzzDjefrlWpdzj83Xgx8QOH5F9M=;
 b=WKNYn2Y3kjRwlTIXHvgCextgRSVQTvBhym7pnvUNGxHZqStgdKJB14mM/bbJ6xgPGnTNCDfU5HSfU9AaL7/pG73INlT8SxJWaYObwtA66y+RpurHbClWggkRHuco29IoMiDlAVWYdIuCThAcaS+vk7jb8jBW5sfvJbRnNWXgcFJa29p2HtmixdZAuZZioKy/Q2bLdJcs/R99kLjLSPrrloUlxLaiUyA2nNNp71G9XOp6wWvLqwjifXZhttgNaIL1lVcWbzi0Brwcvf8QzYo4tFo/1pShHerdfuY/2JAJQZK+yntro2qXOYqVPL6QRPLk1ur48i86Ge43mwIrXGPRCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SS89SC74O+YAaoccvzzDjefrlWpdzj83Xgx8QOH5F9M=;
 b=w2wAQVJFmDvkzmaf5shrvCVXDv7DxMmSxVJq5BxkCOt62zAWSeZRDHYeOLmCzp/51/3ArSML6f2uxYMk1xBVuZPS6/UnR1+ku4pifFgQdF+vR5RP1U2hSopUHaUig0g1dU0//szmSiT7fYSmO9Zcq64VBWIk9Re9xFEGE4uTlAI=
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by MWHPR11MB1309.namprd11.prod.outlook.com (2603:10b6:300:20::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.15; Fri, 29 Oct
 2021 12:34:50 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::64cc:431e:ab08:2898%6]) with mapi id 15.20.4649.017; Fri, 29 Oct 2021
 12:34:50 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: Hide bus-info in ethtool
 for PRs in switchdev mode
Thread-Index: AQHXyosgGUH5bB8IE0iEYFywSjSdSKvp7XwA
Date: Fri, 29 Oct 2021 12:34:50 +0000
Message-ID: <MW3PR11MB4554A9256F7C8A90871BD8FF9C879@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20211026155624.17106-1-marcin.szycik@linux.intel.com>
In-Reply-To: <20211026155624.17106-1-marcin.szycik@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17e10402-a1a6-4e1d-a015-08d99ad88045
x-ms-traffictypediagnostic: MWHPR11MB1309:
x-microsoft-antispam-prvs: <MWHPR11MB13097B3AE026C448D75DE6BD9C879@MWHPR11MB1309.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Qmv/mtwuZJEL6xfm0/uOCQ1oJlY5o7m7Gr4NMeOjgJAAKAUgB5JJ5HtyOloApz52R3c3BG53Zj0KCpxyle5DmHgEYbcX5z+fnxL7cUZmtZ4dw8uk1slw4b8Z49DVrKcPvbYACsHlbPZwKoZNDkLzgIMzoFSgznwYnSuJZBsQBb9T53DdB8XUothOk0IMTr6r2D/7m1tOdpsPTLBygi3SXAvV9VwysbiS5UjPQA5+hlxR4ykz9TOC3aXzZTdGkGsO74rTXjrnv6ryEPORqhpWGT7LdjC2EoXp7EebpzYcs8EuAS83sbI45dO3aJRwd8acc7KBndYsG1VAXzXguz7wEWYialTtzGk0DZcp1Ob8eHITrI6JLGSvKKBt6exg77GKjNJTLsRMLNlExrVRADsqBMbcuZNKSVjGGboVjbgAI73Qtc0Dzr0rUAZDPxby7n2r723Tm+mRG9V/pFBvPAYap3flSvwv5M7s4jlwLU0hx/P572aI8NSEJGcrnNqAbpHENKF9bDIAeRqHUpccixrgB41Hnun/tRYBzBz1A801sgF3ZGLK26s+nR1exqymMdyzmGxUu0LQBFY1BZsfP0/WAJ5Sq2oXk2luih5mb9DZwhQBSNeDSbSBpqs6orvwj00PR/ofVU3dByDSyPv2HLg3pUFbrNsRFuZRN1fuA9KZwC2hFjdusg428tSs/DznR3SM3Ku3bq2xKj4Lqi/ADPSYgw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66446008)(7696005)(9686003)(52536014)(6506007)(66556008)(55016002)(64756008)(71200400001)(110136005)(316002)(26005)(8936002)(8676002)(5660300002)(83380400001)(76116006)(186003)(508600001)(86362001)(38070700005)(122000001)(33656002)(82960400001)(38100700002)(66476007)(2906002)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OQ1WimYM/5KbA+btW37mubU+lv0Cs0o0Y+fk78AiC2q+3cPwRTsN6/upsKrG?=
 =?us-ascii?Q?U64ls+fmUeKWGuDEDP+DhBtP2glUcczB6P6hGIfil9DgJ1RkGYiPX460xUjV?=
 =?us-ascii?Q?eC16xdm1WyT9A5ZrPPOnX51rb+BFB/YRtIsur3Y8xIWgFEIPWG/Im2v9Tzpa?=
 =?us-ascii?Q?oz2dg26y4I0nKalrbHJWoN830S0nUOmK5T0RFGgG1JY0+6umZY5Bem3eV3XO?=
 =?us-ascii?Q?iIH5aC4Js8hZhr3EmRxkqLUU0S7c0zMTvddP91PY7wc+X9BEZeQ4/TEcsOzk?=
 =?us-ascii?Q?37cTRYoB3aYfcomyF4fczhN7FqbcYpEOeEWcUhUwdCHyWswnMJG5k9+bWiyi?=
 =?us-ascii?Q?kF/grd9kjVZ1S/k36NjLOFGX5h5ZpSprXa71cOaCbqxvf+XqEwDw/MgPH0gx?=
 =?us-ascii?Q?W20d9P8m9kRBXX3MBcFYr0G8j0MkRe6jTRkNcX2v2kl8ryPv34ydDipF1n/A?=
 =?us-ascii?Q?1j8Y36XA7wMgXXxrt6nXyV/2rlvXEg79tfTGo8Ha0Rovi7cvq6ZzVqsNGzq+?=
 =?us-ascii?Q?SZzoM4eqGYXv+TwPqAz7KdOPQsnRHPSeyZufPcnPUwlrgCYgAamqqu1gmmQT?=
 =?us-ascii?Q?C/nmpJiH5ZKMXzM3zOnwgp6TuTcy9H9rYojR6VZY7u4iWFarjAS8cRRb4a0d?=
 =?us-ascii?Q?OOdjqcMm+ursePM3VP2akQafBlifjRSGm3pKapVsDxBsCrz2x28nMisRW5OR?=
 =?us-ascii?Q?XFsCqnAe8ECkCV6+4+9M8a6brMDRX/54Mh05EcZajZ4AW+U2CFBp5Y74lLc6?=
 =?us-ascii?Q?Stub6Xn2Ez95boFVePZf3jCfczY2ZbvAbblHA7IgZzDY7y9nyYHWgv1r7+07?=
 =?us-ascii?Q?sCrjjUjRzN0JIfU3w8XbBU5lNHgGpzMfXvLtles/FJglid4egFVItvOAFMTF?=
 =?us-ascii?Q?fplF5A59KHlfIUto/fnVorzi+0ucnJkKAq6W4eSzW7QRl1xSjwt1ao8BYkIP?=
 =?us-ascii?Q?JWQz5wDgtsTojfKVbGWb/6cPWHtP4zs9qPGN5rIzCRpPjGgLY5aNWnBO8Bwq?=
 =?us-ascii?Q?pdOhmANpBTomjVtKK8u2eSFq+z5nkzr6QMK7f0fqEiItQ6fBFhnF+NOn65Ju?=
 =?us-ascii?Q?25Nnx+5xnvrdKn/DwFUcR+VwB4d9DTuKsUwPx5l6R9qQ+foTx4RLXDV8/NgK?=
 =?us-ascii?Q?/WFy75Bbx9DV/69r2BnjmAt7834+KFdBjFMXPQveV5vPf/pV/Zqkgds/0Xc6?=
 =?us-ascii?Q?zQQ1trOmXiaYxBoE4wn1BbrfqLNn2C6aTCE3vojMA77+DPvEeOdwNhxwzb8b?=
 =?us-ascii?Q?jCauPOwkEnP2lfbHogNkM7NN7BEcFHAc/Rki9/vUUT6sFFdQPTkTNPM7WYul?=
 =?us-ascii?Q?DhosphO+7M4nmUzvOz0cA5zbcfPHncEXbrxaMKA79+1EbplRDm7wDpqrAuee?=
 =?us-ascii?Q?7ZWGmF1ueOsiYVCy4gdEbnaKwr4YdgLsDFY+fUtQJaA8n0bDy8V1BWxt2B4l?=
 =?us-ascii?Q?83mp3ktaeTUSGVa61q+J+Zbth+1bTWgg7UMInX8zZn/5onEwuQHWTEXqyu7O?=
 =?us-ascii?Q?wAONwLFfB/BXCH0E/ClS1rNN8FmNiZEPdT4j2U+GmappaZhZdaMzo9mEyjt+?=
 =?us-ascii?Q?TaF2s8Xbhnqyj5D9aHWS/hJjZgNMQCHcMpnLRKaKtwVlcnVFowG6aLry/SEz?=
 =?us-ascii?Q?HDScXyu1U9ZaBOTtPXzFlkSpprpFq5XdbNaq5t04t2ET4lEDztIocItVJAUS?=
 =?us-ascii?Q?GvHQUg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e10402-a1a6-4e1d-a015-08d99ad88045
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 12:34:50.4817 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uIAwsIXwKiTeeTmf9qq8EKuPLMPFiHYF/l9year3OBthOv0yUu758vQzEcoEgdIvhPw5C1df8utg9U5OVmYW0u3CtKt0Ui2FLTo5j++8hHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1309
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Hide bus-info in
 ethtool for PRs in switchdev mode
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

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Marcin Szycik
>Sent: Tuesday, October 26, 2021 9:26 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next] ice: Hide bus-info in ethtool for PRs
>in switchdev mode
>
>Disable showing bus-info information for port representors in switchdev
>mode. This fixes a bug that caused displaying wrong netdev descriptions in
>lshw tool - one port representor displayed PF branding string, and in turn one
>PF displayed a "generic" description. The bug occurs when many devices show
>the same bus-info in ethtool, which was the case in switchdev mode (PF and
>its port representors displayed the same bus-info). The bug occurs only if a
>port representor netdev appears before PF netdev in /proc/net/dev.
>
>In the examples below:
>ens6fX is PF
>ens6fXvY is VF
>ethX is port representor
>One irrelevant column was removed from output
>
>Before:
>$ sudo lshw -c net -businfo
>Bus info          Device      Description
>=========================================
>pci@0000:02:00.0  eth102       Ethernet Controller E810-XXV for SFP
>pci@0000:02:00.1  ens6f1       Ethernet Controller E810-XXV for SFP
>pci@0000:02:01.0  ens6f0v0     Ethernet Adaptive Virtual Function
>pci@0000:02:01.1  ens6f0v1     Ethernet Adaptive Virtual Function
>pci@0000:02:01.2  ens6f0v2     Ethernet Adaptive Virtual Function
>pci@0000:02:00.0  ens6f0       Ethernet interface
>
>Notice that eth102 and ens6f0 have the same bus-info and their descriptions
>are swapped.
>
>After:
>$ sudo lshw -c net -businfo
>Bus info          Device      Description
>=========================================
>pci@0000:02:00.0  ens6f0      Ethernet Controller E810-XXV for SFP
>pci@0000:02:00.1  ens6f1      Ethernet Controller E810-XXV for SFP
>pci@0000:02:01.0  ens6f0v0    Ethernet Adaptive Virtual Function
>pci@0000:02:01.1  ens6f0v1    Ethernet Adaptive Virtual Function
>pci@0000:02:01.2  ens6f0v2    Ethernet Adaptive Virtual Function
>
>Fixes: 7aae80cef7ba ("ice: add port representor ethtool ops and stats")
>Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_ethtool.c | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
