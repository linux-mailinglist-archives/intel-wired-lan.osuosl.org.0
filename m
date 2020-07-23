Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1606122A478
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:23:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3F5F892B3;
	Thu, 23 Jul 2020 01:23:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R0jUv176m8b9; Thu, 23 Jul 2020 01:23:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A53E2892AA;
	Thu, 23 Jul 2020 01:23:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C39C1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 660ED86DEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6fbMyfe_MVUI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:23:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AB59486DE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:16 +0000 (UTC)
IronPort-SDR: F7bgbWK2kHYiTztwyQI/rE6SrFnW8yYOr6wYXq7QMDg9Ae+8ZmJ02JfA6X6g6Dmnl7nvjiKPi4
 YAy7o7hZ8viQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="130521880"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="130521880"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:23:15 -0700
IronPort-SDR: alnr+wB7JxY1et1Q40LeXtiq+f2/lQWd0BpUfUJWkEWcKLXmEeoBOUR9P7mZZg2dbrWKakpc6L
 2K3x4BjkNiOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="288474217"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 22 Jul 2020 18:23:15 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:23:15 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:23:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Wed, 22 Jul 2020 18:23:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rork5hj9aSN+6UqKFn2WGLuvW1TWN1Qv2vWvaLFf08IAaisDnbGAzxa01GKX7j/tB0Ueu/DvSwCoHcdQDLbaT07118y7+xNyPkZPCFwtskL8We+MbABtWc/UqVHxOCK9c1m+gFv73o5I3fqGrsXO3+61ddAV1J/ly+T4WG5RLe/kH2ucZRXXNET4JK7b/EbnhCqYP97j3R8vcpmePHDtXjdWz7yc7msnycdpiyouU9unb4L3EEc89mkkHXQidk5ReK5LqFRVE9s1KOaEck1GFrThmWdMhsqZvoNaRCHwvL6/X1cFlNugqljtniq7Mr22+Go6u39Xr0nfHEaBHtvUeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEVPVaG+HJNKiNq6MLsQUBxvw3D2TZytm7ZlY5r2gDo=;
 b=HZa+d6shB29ogpu1ffU9uy5CfjO4+ZpIZJSV94hF7kEXn1uYb1tw8GdV6AzXYpLwDr+1wk71m5BcZ+HQpRS7fMt5YxXRft4Lo2kUKvgUzouiJYI4EIpkO90DhlLv6bwaHojLjZfv1eL3c7Hg1nYvzjr7cxTC9icEqTmHMFITF7g0ZJqhPSt+tBzRsL7d7bF+YGrfX6sUaM7vM7xz4ZzW4sGQzfHYzFOWdrubSi+c2mMcfjr01WUVRLvrWpATGHXdN2ZfOb9IHF6N1PLHzIE+UkkIc2cpleG425QvssMq1O2jVi7C3apw5K3Fe1XMW/XVHhRR2fSqMQ/z+v/tggEYxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jEVPVaG+HJNKiNq6MLsQUBxvw3D2TZytm7ZlY5r2gDo=;
 b=O+H0Dql7czuw/QwEwTAe7By5NrnUNmtuDJccWNfVm160M9dnGjq+to1vLP4rlkophxHiKPme6Mx41jYbzDu5AQEt4IdWIa8reR5BLKAl4IPjSXDIQrgwuMixHk9acCG6hQ1YR8E5Fys0dE5uRKpK4SYhXVRun98b9DjkR4VbuoY=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1538.namprd11.prod.outlook.com
 (2603:10b6:405:e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Thu, 23 Jul
 2020 01:23:11 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:23:11 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 12/15] ice: Rename low_power_ctrl
Thread-Index: AQHWVgzkUBlJH5sWwEWAmXqMkahAzqkUc37Q
Date: Thu, 23 Jul 2020 01:23:11 +0000
Message-ID: <BN6PR1101MB21450EA963EAB152481BEC008C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-12-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-12-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c296dc24-2d8d-4df5-79d3-08d82ea6f714
x-ms-traffictypediagnostic: BN6PR11MB1538:
x-microsoft-antispam-prvs: <BN6PR11MB1538CC44E8F66252607AAA9B8C760@BN6PR11MB1538.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:478;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w7wu7ZC5mS+/NN2gOoOgN8oqzK4M68hZjouolswqpBA9fUuiAGJxypCfEdYW3cL0EzeyRvS2idmKW0Vjq8Da8QRrK5E4V7vxAcFcF+38lp2Nn3Ab1yW28U9t8wnXRWFquJ+HVGfftpAA9qJC83koU6InbMXufUeOYmJHzMd9SeVDMFB2sYxoJn15+pS8srG0iNA5/Tg4Fmm5B88NfelatU2MGOgmp5xTm8hktjtZYW55TWvFNbMJ0dc0UlDk974mPgJHX4SPsxYl2wnJFuMxymT8eX9FemzECrb+Y/mDcrAKVi/NZWtrVAlW+May9/5d
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(346002)(366004)(55016002)(8676002)(4744005)(7696005)(5660300002)(33656002)(8936002)(9686003)(478600001)(316002)(83380400001)(66946007)(6506007)(53546011)(52536014)(86362001)(6916009)(71200400001)(2906002)(76116006)(66476007)(66556008)(186003)(26005)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zhsSEW088DQhPx6vFWgngwmX5afA195vZcLt0Vmt6KCWfO+sLByRIliVjx0JnHIkYIp7juvS0ojskMWguCMDN0NtC4Pxc+SDbqAg3YMz6z88VXLQ9ehOXElde6lYdpV1J1NUJ/VF8RXfQ9aqD9hCbQytHBETWGGbi9ZtJgV9uzkK2LPkpHzbxrlSINoAFolFP0FY5hluXoY8FxM+pFh6/otUq8gLusiproFIqj48lqS14tcbI3pq1zBrGUUPVkHQXYWKP9e/G2bDtLAign8Wy4M7VPfKLsilIb4dLwU6a7EZXRqAX+H8AN21v35O8bjpO4PE+yUeZRqBJHKl2nFp7a6I3jJFqawgW20vuATHaMZUXK95njWRkGewatIvTwSPSeouXOtSRMzijEpKLU3Ly3CPCgzXlzj6aEHKZFejNUp0H2zE5HrV16sLwYB2JzHTf/XRY9zZ/BZx0LyZ7LA400LIeSYG4bFmKecK/1Y+xxI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c296dc24-2d8d-4df5-79d3-08d82ea6f714
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:23:11.6059 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LpDZji0Gspaoa8ccaS41+onZqYE5B0XRr7+FffJuXvzYeq6U/qNT3bt+N6OOjf5mbPEdwBMmPJhXLlZiCvWTqdw/IsTHy9+qFC3p4jMMuJg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 12/15] ice: Rename low_power_ctrl
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
> Tony Nguyen
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 12/15] ice: Rename low_power_ctrl
> 
> From: Lev Faerman <lev.faerman@intel.com>
> 
> Rename the low_power_ctrl field to low_power_ctrl_an to be properly
> descriptive of it being an autonegotiation field.
> 
> Signed-off-by: Lev Faerman <lev.faerman@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h    |  4 ++--
>  drivers/net/ethernet/intel/ice/ice_common.c    | 18 +++++++++---------
>  2 files changed, 11 insertions(+), 11 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
