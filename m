Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BCFA1D5A43
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2020 21:44:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DBA0689BC2;
	Fri, 15 May 2020 19:44:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4NcF+XE15hvK; Fri, 15 May 2020 19:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88E5C89BEA;
	Fri, 15 May 2020 19:44:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AFF071BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB77089BCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ykajv4lGubNi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2020 19:44:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C587A89BB0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2020 19:44:01 +0000 (UTC)
IronPort-SDR: 3l/9lkcvezmQOjHDSNYbVbZAfY8DnC4G9Qy+PF1/8+aOm7xq38cPbzlmdjTFmWJ9fYG9IC7Mzo
 1294GqX74UuQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 12:44:01 -0700
IronPort-SDR: QMXl13z11ywQSz20WTNQRGN7PeVznqcOlsHOgpGUZmH9Yo5Px5smTB0nGNhclCFA8wqdO5OIGr
 kON4zalXUpQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,396,1583222400"; d="scan'208";a="465008210"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2020 12:44:01 -0700
Received: from fmsmsx114.amr.corp.intel.com (10.18.116.8) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:44:00 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX114.amr.corp.intel.com (10.18.116.8) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 15 May 2020 12:44:00 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.59) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Fri, 15 May 2020 12:44:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G/eqpA8BMttIHo6rvFE++bGH7Xs026F36zTKkt6cAE2ENHdo+SNJ/4tQNNWwDjLxA5IauMLS4gzQ1kdl/fLUjyXb9kpK212NopgiNq+aOy17dK3/bwLsG8BSmT82ziq3vKGkhS68TtasO6rSwTYaL+UFcm0u4+QQRIA2pw1VCdPCZgOzR1DWBSsnoi/+zVDQfApFrCk9BNN0QYIjguZ4UEbH4dVOV0R1wt/2HZU5SURYysxTsoCMz9BkfTy6IGCh4z1qhBYtZkzt/tyQw4lw7NlEh8QSHlXuhnWuj/0S6ZilR4ifkXmrd5ye3cDmQfO11IQW2v0pG3o9aUPPSIqnYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfOaPipUVB4cXHI2orbAcbonbKF5EiIuXIU1GvW2TUo=;
 b=E7qWrod7eBKUl/qu2Mu8Qa0pduJ2oyvZcjP0+AvI9wcYFZ+E5ISt2/BPY09k7MKfR/hkW3GyARgJ7xaK+XGqF3HYctNot/10FLdgJwcGrmg5BjS/X0JKTOzKgOE1148XTy7X5i74Z37C03ZUFe1HA8EgW6TkjfVAck0RymVvpQvEBbo/Y+b7kYpqEQ+AOz3KM1aTQjQb4SBjrCNuO4ObiSQb6iq9PDtEuKJ8Nkzzu2VwdVFUkxlH9vVOaL675hVL9rGi+n8lpKAYYgZHctnnAXuxln47RCaCg1SqT4ANzbLSWSy9QZigbjcf3HdOfDIdD7rIRAsW5DlU1YLFHqzeDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfOaPipUVB4cXHI2orbAcbonbKF5EiIuXIU1GvW2TUo=;
 b=AMyWZ2LunIiRI8l8yRBKoEBPuiZ5LqgC+2taZSlCpiUiO1T3DBSBDqs3B+6GW9NLFYQW2k0ZOPv6hvMS8GVzHaogwGZx7JNA2NK665l5pEvAAwxKU+S6GX51zeB64esDzmUZQyc5PoJeBLky1RSgTkuULeo+frwFvgqVMS8SXvc=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1452.namprd11.prod.outlook.com (2603:10b6:4:9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3000.27; Fri, 15 May 2020 19:43:59 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3000.022; Fri, 15 May 2020
 19:43:59 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S41 05/15] ice: Fix probe/open race
 condition
Thread-Index: AQHWJNHQ8OLTOPZDtUezWJhgxNAayKipl/GA
Date: Fri, 15 May 2020 19:43:58 +0000
Message-ID: <DM5PR11MB165996BB95DBBFFB931A584E8CBD0@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200508004113.39725-1-anthony.l.nguyen@intel.com>
 <20200508004113.39725-5-anthony.l.nguyen@intel.com>
In-Reply-To: <20200508004113.39725-5-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 296978a5-3540-4ac8-fffb-08d7f9084fce
x-ms-traffictypediagnostic: DM5PR11MB1452:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB14522A48B01F0971FA28C64B8CBD0@DM5PR11MB1452.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2657;
x-forefront-prvs: 04041A2886
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IwNykIIkklpGB1PF8367RsyK3OS8xXXJOtu1p71tGRDHUEu8yWBcvNV2V7SgeC+AoHRc3aLkMkoi+RkJQDrHTqs+xRjonPRu/EvMtE03VsE/ZXrA8Oo1g91G9lrYObIk0oaydbZxSC5pPCZhTx4xQZaGtE+Eh+hBNdN0HWtUgI8j7e7tYp6OoxHCQc2iLcw4vA0ewEKR2qAACQhxAep9YosX61CH6mRtcDfsu92rgTB8o2vTYz+jG6mFKyCg09neK7xsy78CkDtJDxHXxQkm1Bi5DVC3dFR8qGsOfzzhUXcXRAZV1w3nln9DyLrx+wMYnAja1UdzkFjMqgZzClCbBrVmWu17eWA8iAK1RMDgKIBi3rxBP7vZeujwbyZ6+QHehoRCWw3O8O3JYcV7zNmERTBGGK9TmaoCTO0ecs9LpXligz8osRw07MuRtjJDN3Jp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(346002)(136003)(366004)(376002)(396003)(39860400002)(110136005)(71200400001)(186003)(26005)(6506007)(7696005)(53546011)(478600001)(316002)(8676002)(76116006)(8936002)(66556008)(64756008)(66946007)(66476007)(66446008)(86362001)(52536014)(33656002)(5660300002)(55016002)(9686003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: iGMh5bW7BLfvCEpnwkAdyP3Jxg9418HaGFeiqGegVIydnAEzYPocITbBH8eLt3DlJr+rBFfzkJI0IPLci7i0iJBMStU55bVFJcoe0jfwd1nXYEibhElbc8omOF/Dfxhwwe/XhaZsGgXxiARo0kMr/UlwvMHBN9KktZ3W0QKHgIYpXhTtun33hmAgZpSon0l7lcoAjI5oHqqcc6XjcOFMOlTm9aIhB2+48iGABkgp7Gn3scmbdIN3NN2ONZzv1W5Rk1URZQuYDwCuD9PsqKZUWJTu1F3qDpoBM3pyn1ja059jV0VIA8NBPniGnXMvNk+HDIL9Yc+9bSZIqMjJ7LsOZQ1sRaBe94XzS2NjZBB1+s0BcLnRwc+g6Rn+SvILvQ/7XnBr3XRr1OLj72azOdzDW6JIvQsFD0qyMS6I41U1aE4tl8biA7zhcqO0btVzrzjgF9aOWTLomBbOiVcbUxlj9VAomkQDayk69dEnsOq3weVxW0OQhQkFMJke0/Q2xeDE
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 296978a5-3540-4ac8-fffb-08d7f9084fce
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2020 19:43:58.8745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uQl4MJPsy1uS/cWQqgfU78YvAOwk+dJFS5BvDkHYnPzOJQ19demtgBsSoM4eLm7N7Fq449ayTFSBFlAU7+iyFl6UWRG3WulT18sNE/bx+c4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1452
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S41 05/15] ice: Fix probe/open race
 condition
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
> Sent: Thursday, May 7, 2020 5:41 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S41 05/15] ice: Fix probe/open race
> condition
> 
> From: Anirudh Venkataramanan <anirudh.venkataramanan@intel.com>
> 
> As soon as the driver registers the PF netdev, userspace utilities like
> NetworkManager try to bring up the associated interface. When this
> happens, the driver may not have finished initializing fully, resulting in a
> bunch of errors in the interface up flow.
> 
> The driver already has a mechanism to indicate if it's not up yet; by setting
> the __ICE_DOWN bit in pf->state, but this bit gets cleared too early in the
> current flow. So clear this bit only when the driver is fully up. Also check for
> the same bit in the ice_open flow, and return -EBUSY if the bit is set.
> 
> Also in ice_open, replace references of vsi->back with a local variable.
> 
> Signed-off-by: Anirudh Venkataramanan
> <anirudh.venkataramanan@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 24 +++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
