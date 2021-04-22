Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E04368925
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Apr 2021 00:53:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6325405A8;
	Thu, 22 Apr 2021 22:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YkNcNrFJYtyf; Thu, 22 Apr 2021 22:53:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DB74340267;
	Thu, 22 Apr 2021 22:53:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 034641BF3F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:53:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E54A440267
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:53:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z58Gf2nmUujq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 22:53:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 569FC40123
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 22:53:39 +0000 (UTC)
IronPort-SDR: feQTPsnFja8Uz227/Qg5gh9MEJT9t+grV73rRHMPPpnWvyHiPb/GtqE7xB52NjaDH1V9tK8eyM
 xYaH9heYb05A==
X-IronPort-AV: E=McAfee;i="6200,9189,9962"; a="192798150"
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="192798150"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 15:53:36 -0700
IronPort-SDR: ATp3RrBoLiEcPHWQ4lQm4e8CvcYyqD+4x4ULu9nMtwn+wFdyv4oVEqjP7l6UmdSwa42+UhMSJv
 g4aeABzhHg+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,244,1613462400"; d="scan'208";a="421546593"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 22 Apr 2021 15:53:36 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:53:36 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Thu, 22 Apr 2021 15:53:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Thu, 22 Apr 2021 15:53:35 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Thu, 22 Apr 2021 15:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lmyBean3Rp88Nw1JfTFG/rzDGqHvgcRDd9Q3wL0Ry49PKwYG6N8B3YhBzeqlyzs+NkLT7Hep+9dpxk5+EdJN5+UbcgQV12lFnFTj3aVXWTvgXOYDyFeqbp6YGin77T+ZNF7PTIwYfwEAStT63nVz0s8INn+fg+4ymSYMAcjZ0JW0UsPnktofIbTLvH7qR8PrLPrAjhEk965inZq3M6LiXxRSVnBBId6QocSUnUIRW9HPaZ9OrYhRQg+J6PkEurUsUk8/fZ2yY8HREfUQTTP5p9cz9n0odBeQ/v22tUnhuuhynTV0wUx5fuT8MqEQwEUmamazx/yj0S8no4UAkJmthg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tNVnC8hGc3Kd9IGctSgUe8Vq5m/cVOg2NfnluBg/7ZE=;
 b=kIIPmP9tcNEUVeool02MDkdcxzBZSD+fXYY0BNtBoYizWDPI0btedH50NT6JDjun5byHXzwfaHSfd7X3FO7ODw4BvZstS0F04J5PyU0Ry2zYfE8gfbJndNRfCC8eRb1b+IkaL5WCGRMT1ALiEN9lPdSFuhUQl5IWlH+Y8S2DGGX1i0jBur/P9sCcZL8lGeRqkLqiLW9MH2pSUBd8CUWemOu6ayG7s/PDk0LT8uR7srssoj0u90qHkLsU4tFprBLoaTJo7bbtuVDnJL4OQg3C4Q8Ejv8uqMuLgQWAgEOxn/nCvCuWNCZ3AeURcHuv0KKRuHGZMM5hpCc03vJKh9XZAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tNVnC8hGc3Kd9IGctSgUe8Vq5m/cVOg2NfnluBg/7ZE=;
 b=Ou7xhr1eKVy6sQHFRrgUjZratX4cBQORO0/z1tS79O1aqKHnCj+6X3r1nMR+0taK8mWCKCScpzDKkBYpEAbYRMuTimREs9L4FeqFjo0Hxi2D6GgnvsJuSsOHEduxe9lDkSkBcgod5vnFzBjZRYSo/V+RLxdAorOorIZ0MiwJ28g=
Received: from MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9)
 by CO1PR11MB5202.namprd11.prod.outlook.com (2603:10b6:303:95::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.20; Thu, 22 Apr
 2021 22:53:34 +0000
Received: from MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212]) by MW3PR11MB4748.namprd11.prod.outlook.com
 ([fe80::a995:ea7a:29cf:d212%5]) with mapi id 15.20.4042.024; Thu, 22 Apr 2021
 22:53:34 +0000
From: "Switzer, David" <david.switzer@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 02/11] intel: remove
 checker warning
Thread-Index: AQHXIdh2r8SLtm3x40O6yFNlm1RF4arBUNbA
Date: Thu, 22 Apr 2021 22:53:34 +0000
Message-ID: <MW3PR11MB47487933E2ED16887625EB67EB469@MW3PR11MB4748.namprd11.prod.outlook.com>
References: <20210326003834.3886241-1-jesse.brandeburg@intel.com>
 <20210326003834.3886241-3-jesse.brandeburg@intel.com>
In-Reply-To: <20210326003834.3886241-3-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.38.40.205]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b5c0157-668d-4c05-1119-08d905e17575
x-ms-traffictypediagnostic: CO1PR11MB5202:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5202EA3B0BFE45683EDE3852EB469@CO1PR11MB5202.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:229;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aW96a1WWAYhZtwAWUPFJdL0Z8D3LiKNh803wf7yjRhWVhgo9XeFtdqeOexccvvq8tYWA1Hl2cDliXnHO8lJ85lBMQtk+y9uYqrQtOtv+6H1Wlsr+oB1fREOAuXmgrzKzO6hRnlSiT0b3suk3ITKrk7a+puNuNEF3iWjoJw4xXzLun9NKK/V9sTn358CfO9/ioaH2e5eQajH1IDv0KI1MPyGDh1/gYKv9StSaFOtON69Rgi2fWqXhOjNWMwHEL5gDiKi7sfJ0bA0n1SWUb1OIyZQJKQTMIyFymF5hdZsTx7YGDI1A2HfZ5ow4om7yVrCcmc3qAl5nVjRfNpE1ahj8Z9iDDxWUNGm2S8iLUs9jMZdy1Aih2Vg40OAVoJ9Yb9O2oSVMuKYmFy22rXs4WRW65YEq8GHpQLqD3Q0LmdFvD+j1wZqmTcJ8QfOZmDiF78iaiFJxYDH4mrtaXqsYaiHaUZ6dDkY0mlDZxazHG/jW/3BIwM6NM+j5rnt+E9PJCx0srJJtxkU4OhytLj3/m+wptN6iE4gRrcTBQTqNTkdtBl3921n3niIw2jFEZepWj8qBPVgGuyZ9djE1WaxK29Zh4u7AGhDSxBv7XtN7/x8inj8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(346002)(366004)(376002)(39860400002)(86362001)(33656002)(8676002)(52536014)(71200400001)(83380400001)(55016002)(478600001)(5660300002)(316002)(110136005)(26005)(2906002)(9686003)(66556008)(66446008)(64756008)(38100700002)(122000001)(76116006)(66946007)(7696005)(6506007)(8936002)(186003)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?oXqCLMJtvsw8mv8iTqRu1QJuf6QARl6DoyTf3FvT8ycmqLtmmFiTT38KFBWl?=
 =?us-ascii?Q?PzJwW7akfjby3qPCgYMhuYjH3dX1BSeA6QsEXrgAaiGipyhOIfzC0TPu/fod?=
 =?us-ascii?Q?MyKeiOEYeDV7xQWxU3s42Wl1yfgizOi6Tn/bc8ZVVtK2VxVNDU2nPJhh0I84?=
 =?us-ascii?Q?OpbfBbaaRXBxTPNEDHt3Ah8jfn8xH05iBo9Sph8uBDU1PSXwkOYvzebbIIcQ?=
 =?us-ascii?Q?HuSbnmWsHuxfPnM+hhcEeydHfCSe0cXogdtWJfUaIObYYvmYmzt+rxdJHS9i?=
 =?us-ascii?Q?fLkx3tVAlOkTt75BrZAr/XLAdj3lM3x+LA9q0PEidA3m82IRUG/Iu+MFzMGo?=
 =?us-ascii?Q?yBTZemUlxFHO6k7E1ao0XRCngm8yR98ZPELmZifnIMGsEusKKCADnbLO5Kyi?=
 =?us-ascii?Q?SJO3zT8ae6xs659M3r80Yi8X3z3WOAG95xcHFQg4D1JTCxssB4hmY7uCR5vh?=
 =?us-ascii?Q?i+363tFdAwvKPQ/deV86ou6QRJ5hBydqby/z2WkT0ev/I8lC+SGnnevjSYdf?=
 =?us-ascii?Q?u0kkJDsshANSFJCfMcrIsIntZW8NOeQDMflydye34lGnCdjh8WW7oCSOnJ80?=
 =?us-ascii?Q?dFe5ftuxX/9nanvjiPNdSF8zr/IFcEdsfYQ1VUPoVTYOXM2i6YZOQ8RpsQqY?=
 =?us-ascii?Q?D3DXVHh9uRJn7J9bMsYCljz+Ig3vmjX9d8tn7XGJQd/2P/wAeZ93PTHUiqib?=
 =?us-ascii?Q?j84IdoklwJ2GjoAk+oZEkFngUHpM6LW1Y+8YSCXHnE++Dm5e0iZg68lSf6Su?=
 =?us-ascii?Q?DAdkn9rl78UJKuYs7xUM2cH74Gfb2GGrUaRmUzqDLP/bAujdIeCh6HitojpK?=
 =?us-ascii?Q?7lNG+iObvR+7E4Z4fDaC8rKw+s8qXQDTW6UB6nwrglAXl5VTqM8Sxgct3BG9?=
 =?us-ascii?Q?urslh675aQhFj++WTrZR6+e+btNr0uuQPAoAu6A/0+Kf3qfzq/WPjdVF1JSM?=
 =?us-ascii?Q?C+DqH+Aiy8NeMiTbkfezrZglPQcg8w/JJyHf4WCFBkNZnfLHWisJ6gur4/qN?=
 =?us-ascii?Q?KgO/Q9l2AKYhI8thz/kuXCWiS7iuqqsDo2gihAfQRgyI1Bbto7wwb+8Qy1ek?=
 =?us-ascii?Q?EcZ32vVlWaqSdUANv0UCvjjO209+ZSlb0VFBayEUP7bz75K7yIByeCEmtv8J?=
 =?us-ascii?Q?AhE6jrywEYXoWn2pdHlu1cwjExIz2hE9L3Vo8KGnqPpaeRcStAz6egrx9m/f?=
 =?us-ascii?Q?IKHuXCOy3+Jc/P6zkF+E3CHFogHWGU0bLyuDjYTYip4eQE3AkACpBnyeZs8V?=
 =?us-ascii?Q?NndxS7tcO7PNAsL3w6m4ub1TVQJrPXsMgh+momOnTUdFmq/JbE5x5nnBqTAG?=
 =?us-ascii?Q?rvk=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b5c0157-668d-4c05-1119-08d905e17575
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2021 22:53:34.4429 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Do3RYBvHbMd2sFmgpElnNG+8iC9SsYCtQ2ObsgeVe4WMlt+on5ya8cPR0dJAOTnBukC/sHXsFwsCuTMEmzjAFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5202
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 02/11] intel: remove
 checker warning
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
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
>Brandeburg
>Sent: Thursday, March 25, 2021 5:38 PM
>To: intel-wired-lan@lists.osuosl.org
>Subject: [Intel-wired-lan] [PATCH net-next v2 02/11] intel: remove checker
>warning
>
>The sparse checker (C=2) found an assignment where we were mixing types when
>trying to convert from data read directly from the device NVM, to an array in CPU
>order in-memory, which unfortunately the driver tries to do in-place.
>
>This is easily solved by using the swap operation instead of an assignment, and is
>already proven in other Intel drivers to be functionally correct and the same code,
>just without a sparse warning.
>
>The change is the same in all three drivers.
>
>Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
>---
>Warning Detail:
>  CHECK   .../e1000/e1000_ethtool.c
>.../e1000/e1000_ethtool.c:516:32: warning: incorrect type in assignment
>(different base types)
>.../e1000/e1000_ethtool.c:516:32:    expected unsigned short [usertype]
>.../e1000/e1000_ethtool.c:516:32:    got restricted __le16 [usertype]
>  CHECK   .../igb/igb_ethtool.c
>.../igb/igb_ethtool.c:834:32: warning: incorrect type in assignment (different
>base types)
>.../igb/igb_ethtool.c:834:32:    expected unsigned short [usertype]
>.../igb/igb_ethtool.c:834:32:    got restricted __le16 [usertype]
>  CHECK   .../igc/igc_ethtool.c
>.../igc/igc_ethtool.c:555:32: warning: incorrect type in assignment (different base
>types)
>.../igc/igc_ethtool.c:555:32:    expected unsigned short [usertype]
>.../igc/igc_ethtool.c:555:32:    got restricted __le16 [usertype]
>---
> drivers/net/ethernet/intel/e1000/e1000_ethtool.c | 2 +-
> drivers/net/ethernet/intel/igb/igb_ethtool.c     | 2 +-
> drivers/net/ethernet/intel/igc/igc_ethtool.c     | 2 +-
> 3 files changed, 3 insertions(+), 3 deletions(-)
>
Tested-by: Dave Switzer <david.switzer@intel.com>
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
