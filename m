Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90A5C440475
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Oct 2021 22:56:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 340A280F8D;
	Fri, 29 Oct 2021 20:56:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HncbfbYvWXoE; Fri, 29 Oct 2021 20:56:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A09D80F7B;
	Fri, 29 Oct 2021 20:56:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D1D611BF83A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C12554020C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PTeX67ng8DWh for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Oct 2021 20:56:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8BDA740200
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Oct 2021 20:56:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10152"; a="217663235"
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="217663235"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2021 13:56:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,193,1631602800"; d="scan'208";a="598355201"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 29 Oct 2021 13:56:14 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:56:14 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 29 Oct 2021 13:56:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 29 Oct 2021 13:56:13 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 29 Oct 2021 13:56:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMGWcdY6Xrtb6A7cfEZASwqfbWJphqNZSjfsT7RWIm3gYC5wDvIi66cKtSCUfT/4Tjp4i+MNbhxlKlzeHUdj2Yf7B1A7FOcdzeebblkqHauPW8FvTOG9pM+GUDvXYhX134pS8znm5CueDokmLvI21jPUnTyiHVRXnh+pBtF3yUynhomyrQutJJTC1H4tU4OuDyZSkFTLGT/4H8qbCECPFoOzDnWSfT/v+IbBj+wR+PBh3eRQ0f+jkIltlTvdHzUN8LvFG5iOQlH1E3l/1QIZ1vlLEJDjfDgCGfV2g5oD7JOmC2xNBA5I92u7cPgrWkFx7cXf8d+jmslIjT6G/cjXdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zn9zcS5UF7Ld+tQGA1nq13O9RggSOfml0lZ7HF6zKgs=;
 b=LLT9mwNIqnl1uFZmHK+s8oLky9z881cl9ibsqgjJkF8Ulin2xJc3Kuc+0HX1y7JwOjFZdk98nRv5202R6kino0FT0ERrk1nMR5y+kgjuAJY4AHDS28hkTjUdkhW3oQhI3J1OHoudEQ7b5zkKeu7AAoMUO2zZbhZW4s4avM8tQo9AfUWjJ64GfZ5eia8EuE0w7+/jG14BnFK5GzjaQ3hekXoHNNTk+3z25RQt1xyK6GHm+rzwHv429ymz6SBFILU6JdLtAShl5QID6rtu5Rs6K0tfruXvDu2oDFFZeLX9fqXCYp254Gv8+618YjtcbN/b1DQPpKxbw1rLETltAnYfAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zn9zcS5UF7Ld+tQGA1nq13O9RggSOfml0lZ7HF6zKgs=;
 b=PpcUzuVUTy/2HRnUf0Jh1B9DUJ8vwLBLiiEb6N9nJ7oQ4QWkDdpY1Z4+HnKuqGTfeJxlzfflM220CTyqtY27HF6AQy+2LaNaaYXAJ7+nOpkPBfjbKd7zxNpJ/TaE9gZZUVynTDP55Tzho+S02BEyYpKXxX0iJJZTInYEAtZmrXw=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by MN2PR11MB4760.namprd11.prod.outlook.com (2603:10b6:208:266::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Fri, 29 Oct
 2021 20:56:07 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Fri, 29 Oct 2021
 20:56:07 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Sornek, Karen" <karen.sornek@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix failed opcode
 appearing if handling messages from VF
Thread-Index: AQHXSM2Y3AzKNDWGekyg41kYiOqhb6vrfRug
Date: Fri, 29 Oct 2021 20:56:07 +0000
Message-ID: <MN2PR11MB42248C45E41DFCB5FDF3F2B982879@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210514094313.133485-1-karen.sornek@intel.com>
In-Reply-To: <20210514094313.133485-1-karen.sornek@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 639472ee-68f4-4c5e-8868-08d99b1e8756
x-ms-traffictypediagnostic: MN2PR11MB4760:
x-microsoft-antispam-prvs: <MN2PR11MB47602FE1C0322965F23D7E6C82879@MN2PR11MB4760.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1265;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mJQF+i0QMD2QbpCOhaYrQReXXvIt6yNW+/cohyFGLREcVAJbvIlj2VB3sakT7MGH+UEKuoVuktCeEyr8u6tJuWpbsLoYGQQPMZLbEuRTdV6eB52fUu137P76MURAHNO+TA+/xtIiovxei8sUas9j8jD+yqpJyYae/lFF9lv4wUI9KR5c9+LEGYBErQPmnRkz7wdkgFVZvOopPwatvSjZhggKyBpuKpmAlfyCfBCdctTziJLooNwUg9H8D0Syc04YIjd/gr5uHRFBksuG6lyjtb4ZLB/uP/er5dMYnCk1poqwnl3Sao4Z0V8UT1SYwl+RKl0zO98ATidmN4sFHIBexTr1131sGci22pPy1qXGrHxVNQAzJ0yKRPfIQBw0Vx9+V2jD/HJ/ujE4283/AuwDFdCkb5Ob4iKSC324z7V6fsq1c6qBQxb+35BgBZ33vBR01y1ZEg4+73k5cRRV1gHf2P/6e8iTz/uoiuuN5EV/l3fTa7ErrPdWGz5nZj0bgiPARDHQrtnDsgG89IRfWL8aEPrBLzmfYHongj6Ci1gerfhjTbZfB0UaaNyBu6lSBz48cA/aVcVh++9h4CNy1p9Y2IIZFHiFfYVeB1/B+DRYH2LUUSwuYtXP+amg0Pi0aUShycBJKdYziGPOdeIsKF0glGhWY3vWoY8Y5njivsxRWojlN++MPxsOqU2vx6H4NGI2hxIOzRWvXemvmuuAa1pQfA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(15650500001)(38070700005)(66446008)(66476007)(53546011)(8676002)(66556008)(64756008)(2906002)(5660300002)(66946007)(8936002)(110136005)(7696005)(122000001)(316002)(6506007)(186003)(76116006)(82960400001)(38100700002)(83380400001)(4744005)(55016002)(9686003)(52536014)(508600001)(33656002)(26005)(71200400001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D8jUbaeGPCNgPBiVBvzHoWGu5r54oEFqunnecC7NGxVzRmSluC//ieNH2YTl?=
 =?us-ascii?Q?qsYHxmr0mRS1eRDWejaxBZpqOOp3sJMStD/Dsb61L+eevtpUTQmWnh318cy9?=
 =?us-ascii?Q?eL+g3ZM84n8wg7xiZTpB+lM2toB2VrbXYxQBSQgeA25OXs5t8g5yxET+Iq0z?=
 =?us-ascii?Q?gle2ryvmRPmUz6U8MYvq9U4Xi/NNk9Uil128vqXGTxJe58H4M/ib1oVAhmRw?=
 =?us-ascii?Q?M9+2Jb3WGLiBEI82bqkfCRDL3ciwbeK4ptJ1M/jHPhMPM5sxFzE9ip7PpUGP?=
 =?us-ascii?Q?YQW/8Gu2K/jikBWhxQ4oNNgz+Y2RRZrug/SgMnbWpMul03VVggjUH3g9kmBZ?=
 =?us-ascii?Q?pKMDtisZJClISAtUby5OskIXs7MPxJSKJozNKe+I85CYuDdFcStMK8QUkT26?=
 =?us-ascii?Q?dagh5Xh/YntZgJZydP7EvsJOByfAr5XI/65oEMEAVHhfpeaBhHeATkMpz7oU?=
 =?us-ascii?Q?BZbVpQMGw9GoCMkxWXBU35moxz3BgaWZ8BFLeRHvOpwJxf6z1HbVWWNH9eXl?=
 =?us-ascii?Q?QN+xuXFs1qMCYHJz2yqSdEUdQOM7+jHawM2rgpzqkoukCtGumzD4/hvwJBvS?=
 =?us-ascii?Q?Zda38vxqi/98aTQMFpcNBUpwqg5RhTNzarBIhsvO5G0cRG+R+YTKXN/dUPCb?=
 =?us-ascii?Q?/7aTzSnBWzuU2WhfBCP5QP/z4595g2oE8vjDqclKrxoz6hDQuI9WSUor5JGV?=
 =?us-ascii?Q?TR4iUtjTFGQqd8ofmSkJVjuPzNnHoWh3aOI7YYIuXrDRJKw7WcvnJCh8IvcH?=
 =?us-ascii?Q?bzxQMNBAw2BWHYV9M3Xvg7EllL4pv/iiQ8TjMVMoZGdzZnyzTdZDaqoHHVO7?=
 =?us-ascii?Q?KZAp7NMNWced7O9vMlbOf+Y8mumstHQYgj5ry0tLBxs3Bs5x8mGYr+l18X86?=
 =?us-ascii?Q?neUsfqnuihZ7fNYxStgXLRdRYkTkmHEMX72ep52WbuyLi+iZH0huOa1aemkt?=
 =?us-ascii?Q?LdEuYjV9Z4SzUYuc7ciUtpEEb0bgzAUJw4M5HawSVXF8s7XC8gRzIz39ZFhr?=
 =?us-ascii?Q?Z+dEeFqlbNKp9a80meldvNhJFmdMizIzm7ixC8oM0X2zqmMGOwxCyUBi3mqK?=
 =?us-ascii?Q?mq2XXvpcumTmtTRXuTdP3U5aWKhhdhgjud3hN3wciV9umevGnLGYdED67QB5?=
 =?us-ascii?Q?ychmbBsuZyXqQbwR1skRYylY2TAU5kgfTZhQTUXsNLjQu15KTGVWiCjuh5c6?=
 =?us-ascii?Q?AG4MD19HZK64kSO5a5JWA1P/ZcpXbVEv3gMqF0dZcwoClemxdcMcMzrOYqWo?=
 =?us-ascii?Q?Kmto/0ikeT+0CvuaCOBmCXcmcsB9FghcKxsW5OHmJL26I4vwOdcPVJRJhnIf?=
 =?us-ascii?Q?5s8kQ2Rh0Z3GCwbU/6oN/y6EwRsG1iH/7Nw1SyKHTOa5jtQ3xHniD8aeTvya?=
 =?us-ascii?Q?NKrGxRingHjuxVG8hA22bEkEuhCKHpOKM/LRqZ40vPvhVSJ1jbkd7l2Mh1xj?=
 =?us-ascii?Q?HrU4Zs+yex1qyjyVZ6OCw1ZTGWB7CcEsRSGdd4O92pmiYpjmP1nz66xm9/73?=
 =?us-ascii?Q?k3ZOP15cPxyvPhxjRF8XlymEkSKoUpMTsEqCfSXdR4OFNCk0eCztB6DBnQX3?=
 =?us-ascii?Q?1ySAXoz7eKt8iJ/voG5ZW94OeS8YTPzRAk/xnaIkwUZuR+qCeqWC9x1I0QAf?=
 =?us-ascii?Q?8ygPVEa0e/wuC5w6P9ZMFx8ujxsZYmxRCeHhgDSi/n/u0KrmV8wii9oYPpH6?=
 =?us-ascii?Q?XeZ80g=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 639472ee-68f4-4c5e-8868-08d99b1e8756
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2021 20:56:07.0435 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JJqFIC2X3de1Ak6JN1krvSwiHDOxwPnmurwzgMkfbnp1Meygk/h0krUN9mZjM4mc5IPqL17WQOeJM4cyjEo8L538/lXYKMtq02NUfHv50Os=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4760
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix failed opcode
 appearing if handling messages from VF
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
> Sornek, Karen
> Sent: Friday, May 14, 2021 2:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Sornek, Karen <karen.sornek@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix failed opcode appearing if
> handling messages from VF
> 
> Fix failed operation code appearing if handling messages from VF.
> Implemented by waiting for VF appropriate state if request starts handle
> while VF reset.
> Without this patch the message handling request while VF is in a reset state
> ends with error -5 (I40E_ERR_PARAM).
> 
> Fixes: 6322e63c35d6 ("i40e: properly spell I40E_VF_STATE_* flags")
> Signed-off-by: Grzegorz Szczurek <grzegorzx.szczurek@intel.com>
> Signed-off-by: Karen Sornek <karen.sornek@intel.com>
> ---
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 70 +++++++++++++------
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |  2 +
>  2 files changed, 50 insertions(+), 22 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
