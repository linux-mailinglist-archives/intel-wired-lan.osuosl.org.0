Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 23BA7253ABD
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Aug 2020 01:52:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 81CC4228EF;
	Wed, 26 Aug 2020 23:52:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UYH0yK9+LtwK; Wed, 26 Aug 2020 23:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28D9A22DE3;
	Wed, 26 Aug 2020 23:52:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9CAD81BF5F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 91CEC8833C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:52:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8EAyV9RLgohU for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Aug 2020 23:52:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D768C87EAE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Aug 2020 23:52:06 +0000 (UTC)
IronPort-SDR: oaXvzNyz5a9V1kx3gN5gWSRn1ee0pPsdCXiVMz4MfCiJC94jx+LYKURhM+ASgC8dqgyWXB6uiH
 TKfCBRF3i1UA==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="156404232"
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="156404232"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 16:52:06 -0700
IronPort-SDR: VQBsV7kYzIGAcuevhVk/dfNISTYIFqixiZ3LiODZuG9f30FGR9tV+Z1eZBZxELuU25o6lB1o4V
 Ebk4ot1DeLyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,357,1592895600"; d="scan'208";a="499916077"
Received: from fmsmsx606-2.cps.intel.com (HELO fmsmsx606.amr.corp.intel.com)
 ([10.18.84.216])
 by fmsmga006.fm.intel.com with ESMTP; 26 Aug 2020 16:52:06 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 26 Aug 2020 16:51:52 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 26 Aug 2020 16:51:52 -0700
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (104.47.37.56) by
 edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 26 Aug 2020 16:51:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ku9MfznAp/BbTFPP7C80rmKj3wYfYEwZHNHj8AID6Cw9PF0uP8LYfUO2GZnOi1cNNzHKSiLqnkw5ea4XFCGWgOMgJwiegRYsmGx7ownPV2xfpkCkXg8Y4rbV2c2v19DGhWiZf/8xndmI4whW0VQuoIMa0P7gU4hOYvp+GhvK+9O+QUGpZalrNx0e7TtLP92D/PCgS+qq7D+AfCPJ6Xs2TKLWK/nz9hA5xWFucs2J5/iPHPxywX73HlAiE9z77To1gLlF5EppV6BN+g/TlaUxKJWX/s3mED31yXksE8d9Z1SrG8oRGBQV8Fsjq0WcXVWwJBm/DOjbigZKRcPX1ZZOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4owzKSH5HT7He81DMuGYil7vWVwoKjLUiUvoEPkok8=;
 b=SDWs4GuBtJJD4/5IVKpr/tXcKO8ptKp+LC5lmgR5nk64ohkzzUsH6IJsRPkCgmT1WLmROMMOr1H/H4JBWIGCqxMvB2B6Ikb5/5gYgVmikqm8WcJhjr/pSJS3xBp8+x7e8EItpOIaZDznVqycYYaUwuspJG4PXN3m3Q3DFoU2D+mTkLbkHkebJkv6S4T1qlf4qVYCiV1tfK+dO/01oVyWkf/TXrCkNaY6RN1bXY0N+TffAg6V56da9Fe/PM41m01r7Y+189fD4Fyre/8FG6Z4SlPIfyBNpqlU9LK/6TRkP2zc2+KvuLUYJUxbWNczFyDEqQjtKN7iFXGuoa5PuLAk6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f4owzKSH5HT7He81DMuGYil7vWVwoKjLUiUvoEPkok8=;
 b=ejKp1PbDBD+JbkYJS8M3Sy7j0w3RDH4yJ6QZEg64XddgcXz8ttL3XYg2VcbfcCmMejG+krQ7sTSsaCuO/4dYP6OWKkPhNHB/ejHaCWzlLR7032a8F/HPwKs4Izu+h5x9SG5+w2enV9lBkW/+r5x9rRtLWDepRGb6SrZMnmEyyHQ=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM5PR1101MB2073.namprd11.prod.outlook.com (2603:10b6:4:52::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3305.26; Wed, 26 Aug 2020 23:51:50 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::25c4:e65e:4d75:f45f%7]) with mapi id 15.20.3305.031; Wed, 26 Aug 2020
 23:51:50 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH 1/3] ice: Change ice_info_get_dsn to be
 void
Thread-Index: AQHWdnQC1P0dvZW+ZEeX80dayePjSalLGqpw
Date: Wed, 26 Aug 2020 23:51:50 +0000
Message-ID: <DM6PR11MB28908DC52F1C9F72C7F2DDB5BC540@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200819215838.3834786-1-jacob.e.keller@intel.com>
 <20200819215838.3834786-2-jacob.e.keller@intel.com>
In-Reply-To: <20200819215838.3834786-2-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.215.99]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fab5f1cd-5474-4d98-3977-08d84a1b0071
x-ms-traffictypediagnostic: DM5PR1101MB2073:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB20737D7C3CEEABA66EC9B677BC540@DM5PR1101MB2073.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:773;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p6S2TJ+31nOmw3CLIeE2HUcL7JjIovQHFzF4KZygvf+6GA8uOZyWSQU5qodHSA8PGAdIYe/o6h6Ha68S+BMv+iN8OFhLNG15SGB9u+49EGNncTn8dhrvJmu5ujcptZoB/5WZRmN+3m9qf3T35oIhd7ESv4w35RrcDGOdjnJ7GBfSXGYPMbB7nZPhmP8/FakySo3yeJRVeaPOEgWI8sYsvXmCHoya6+BMpFIe4nLkId87wj8IFbNOgn2FqGZcUY4f2+MeGHIxBHuTJcaFhq9ciUHF3paCmlRPD2BtFwFLNFde8knM85bsR0UkE5R4Hxph1KKxpvnulK2rcNklTJfwHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(366004)(136003)(376002)(39860400002)(346002)(6636002)(86362001)(66476007)(66556008)(64756008)(7696005)(71200400001)(33656002)(53546011)(83380400001)(316002)(26005)(186003)(66446008)(110136005)(6506007)(76116006)(8676002)(9686003)(5660300002)(478600001)(2906002)(8936002)(55016002)(4744005)(52536014)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /3w+SAkO0fk8jk8r50T3FdH8s9Iy9+8jhObZJwVGfFWLc80n0zvkZMc5aoBEyBpta8JbnFsRssacSNB0qMMApUivquS6WLDqWO0l+ie+G8vAcdzg1UM5oLDpSxmupI2cod7gljpco/p6Wb+Wr3vs6bHBv/zAH2anr+gwHid98Li7VklKGuDrc1Xx6FkaEIiixzLTJ6tluVxjRSHsMa7S2SZ0DAG8ZaOss7LfrpdZBO9bfHe5nWYnBCAr4kqfWZdBbEG0M9j3bhW4LuAVgu33lKA5rj0yonLDi1HPcKC1unvNGGaIjzmcHWkrHmbOJXEFXjqxeTA5ixOgasprxjPMwxL002v98gBD2g0HPgTHaoGkVhJEDfocbXw7z67wmR4m/KR3U32XP2Hhi4M5ynvyykWjakKugbhs2NpmRknXaCYsV6zc15gvAjNmypbWdvJaHO4FZuE73JWAN4Oqw+Tnyny6YnWLFs8+QJoC9ZJBxzGYJdBF+PTd9iCcn0tmGn2FFWTxn/zSDkYYbEHQV/THxyPFjYRfz9N+E/muvvxm3RUnN7CcSnV92LIGsis5PxTwpkg37Wlxn41cKqJ0/lbxUcnwbJtVAwkSm3GfMTnPQtQsuhCK3iuWz8e98inMQeGDxUCxGCDl3oOJwxOF/HkIuA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fab5f1cd-5474-4d98-3977-08d84a1b0071
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Aug 2020 23:51:50.4408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iXBSwlWlhUJqkCHGB1JspfIIR7i0FPbHeOP+Lu61pT0xwqvBQEz0LT8iTZLIh+5dUk1R4Hyn8FnbwNIrZ6wiKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2073
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH 1/3] ice: Change ice_info_get_dsn to
 be void
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob
> Keller
> Sent: Wednesday, August 19, 2020 2:59 PM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH 1/3] ice: Change ice_info_get_dsn to be void
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> ice_info_get_dsn always returns 0, so just make it void.
> 
> Signed-off-by: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
