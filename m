Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AECED2D2B63
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Dec 2020 13:51:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 26B6A2309D;
	Tue,  8 Dec 2020 12:51:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7jpKjZA3Xvdu; Tue,  8 Dec 2020 12:51:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9CA07231CB;
	Tue,  8 Dec 2020 12:51:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 004CC1BF304
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:51:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ECF6A23120
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:51:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NPR7Rhb+Yji for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Dec 2020 12:51:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by silver.osuosl.org (Postfix) with ESMTPS id 849842309D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Dec 2020 12:51:23 +0000 (UTC)
IronPort-SDR: DK9wjQxizCjrd+4ac531avhVjybcr6NImiwSKJglr5JwXGJtfmvcd1Q9+fnlurst1FnJr7dJ9q
 RbmTqkjYoNAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="235481204"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="235481204"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 04:51:17 -0800
IronPort-SDR: U2fkKnM0o8MgYgckyS1OIXZhHcwqMTbVUjl8PuME6MhfB+AGRJAevwa0DSasLhOSWDZcsqa5C1
 46rNRFhhhMYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="437360291"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga001.fm.intel.com with ESMTP; 08 Dec 2020 04:51:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Dec 2020 04:51:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 8 Dec 2020 04:51:15 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 8 Dec 2020 04:51:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fW+snGEDg2zytpC+LTWNbVIaxgWwuqfwbyzSIpWll6+CkAXbkDZEGeUsSUwlFke43WxBMaJXsolNgcBX0kOMrp6Fz7C8/sKc6bIhhYwFjZAOSsveBlFPlxKFC3fhkQeioa5aRn4WEEUKT6thX2oXY6/xxQZFBamPYrpDnOZQUGU5h4CZXmrsXIuAFIjwl3dd/aYFMAabEd1ttVELiAfIwmJLI4KeqTGE7OawdTPLxtIK5+6bTxk5lTSK81CF101+qlJnBSC3fGr0uMbybncZTPZrys1sElk+EvxoPi0IsGwSXXJohEK7TxoNwrmh1A1QUfiVCGwE3p/mmWnJdHqLSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AgPfsWmP4dDa76FKrw/+kzdUla7G5xpJQfpnpbrOwfc=;
 b=n9/vlwvhGJmuMrCB+quN2JX7CWINvV3OW4Q9aHyRKWQddpWIheZMRbr9knGcLLDXn2YDyYP2auZL1tr2hm/IiSloC1swp585Yymq0cNkEm8IrA7UM5qIcgcORriGThEHrIjVFsJUk3z2mna3vkMqyZMPhgFlHqe5c/IZy0RnsHPDJ84nFhtyZYH2Qaosl50hTirRIw4bBZDCvogXvqS5LkO7ASawyzifMd39g7sCbYxb5QXRGKuiTGv2rExu+eDD3J+NdnqAIMF4hPq7MIN0WQPW3HvuPFgLspvKRP8SpsKSj4dYFDbN1XqvYzCUVjCHW2/FYrppDIUv4322ffjkKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AgPfsWmP4dDa76FKrw/+kzdUla7G5xpJQfpnpbrOwfc=;
 b=MO+48vlSdiTH1+AJh07fEbBUcYgMuVz5MQGmK2/Pv86AW2Rw+atYtQPn0R8gf0RRpYPs7XClscUYBhxzquyzZjs/afHt1pDCg2u5EJNys/YGnHT7zin3iA+H8wg4F6GRbiRdQVFAy5YHdIN8YR+fyYgu4XGNRASF86/rT5iAtaI=
Received: from DM6PR11MB4610.namprd11.prod.outlook.com (2603:10b6:5:2ab::19)
 by DM5PR1101MB2283.namprd11.prod.outlook.com (2603:10b6:4:50::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3632.17; Tue, 8 Dec
 2020 12:51:12 +0000
Received: from DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c1a5:4e25:6:934f]) by DM6PR11MB4610.namprd11.prod.outlook.com
 ([fe80::c1a5:4e25:6:934f%5]) with mapi id 15.20.3654.012; Tue, 8 Dec 2020
 12:51:12 +0000
From: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>, "Palczewski,
 Mateusz" <mateusz.palczewski@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: allow controlling PTP
 external clock features
Thread-Index: AQHWwZ8qsyWv3yr+uEiNfJ2OxVgYhKnVu7UAgBeCJ8A=
Date: Tue, 8 Dec 2020 12:51:12 +0000
Message-ID: <DM6PR11MB4610B15B372E2B5AB299936EF3CD0@DM6PR11MB4610.namprd11.prod.outlook.com>
References: <20201123134656.14911-1-mateusz.palczewski@intel.com>
 <20201123134934.GA6202@ranger.igk.intel.com>
In-Reply-To: <20201123134934.GA6202@ranger.igk.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [89.64.111.165]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4e2dc422-0d8e-43cd-f1c1-08d89b77f163
x-ms-traffictypediagnostic: DM5PR1101MB2283:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR1101MB22831A79D3E521DB778DF0C5F3CD0@DM5PR1101MB2283.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iDOy6OSXg8tKlrgmKAMjOu6PRNqw4CWOkCNjqDNY2DxyDRIxqq82wcnM302rPNnMX1NuNdhTi4ClEglZrJ5Pvp0I9kKJIQ6Sp9Ha5pL4GyrDUdlk2I6BWVt2ieyp/XS2aJr6/v7oMmmqdwa+O1+kvycIkhPruAFtOofYIcRqgpICtkSLgt2r+gnt+uHhDnDumgqtpPryViR6hX/UIDkD9WvuX3IkudD4aer8baL+Z/QaWtvizjbdUxe1KYya9SAq++7SvrhNPgeXrnyInrVSbx2ZUhYx3xWIlXcu6lLUbHqlhEgu4415m6UuQ8jIzdB7ENwh3DexFoT9nr3xQCY/9g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4610.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(39860400002)(366004)(396003)(136003)(55016002)(6636002)(186003)(66946007)(6506007)(33656002)(83380400001)(4326008)(66556008)(26005)(9686003)(478600001)(71200400001)(66446008)(5660300002)(2906002)(64756008)(86362001)(66476007)(110136005)(8676002)(52536014)(76116006)(8936002)(316002)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?IpYdX7QkVf2aAwJijFkXf0S2dIfN+bnt5x8sChr+LfBbaXnVJh3/gPty/6ZF?=
 =?us-ascii?Q?flb1y7jOefLfh+fUsBP4/Xw9xH6bdOo5s5U8qH8U1gr9MQubSgHim1v104du?=
 =?us-ascii?Q?FD9sN7Mjm2AFk+e+I6Gv231xIwJhCYSiW/jn8IRk8NN/QQFrUtAvtknPUtyw?=
 =?us-ascii?Q?b/7j2+S8R40atL1VndKu+R+x/f2zptnAfuKHhuH/ngEwU2oPbgDQ17U2oT9A?=
 =?us-ascii?Q?/sd46ojj3HD12uDr2odk/PDKdD50ruH2jLtLRknfI0WOrSae4g2WwkqbJBcV?=
 =?us-ascii?Q?Au3vDBfeBHj62VLgK9URJmp2QqqCCDKd4jz5GbO9czY+iXpai4FC8cy00B2v?=
 =?us-ascii?Q?3zSPScgNHeWWTF3OpPx+CoSe/OkduTLgpklPDrQH/kXx22+6Q4/3onBx1n/E?=
 =?us-ascii?Q?qaptixR5S/0c6pqTWSDHZRiQNXwOaCzcK7jqGKAIBD1/9G1Wwbf/0s6RxJ/5?=
 =?us-ascii?Q?as9H1Ewzxdn2YvTvxLA02/zIErE6KilGug9clrzoyuSMZHwzH11kvqErDE+t?=
 =?us-ascii?Q?9hzl329GCIumXgf0AhoB4zBsEKx6wiYPQVnHqQkm82zbTHv2dSTIYafkmiaa?=
 =?us-ascii?Q?PUdOAd752uy6PdnBboEYrEZ9qD/CzdSEWFYRxnDHY2nrXEggRKos4ooC3krE?=
 =?us-ascii?Q?R4ZuyMeurhKyvSQGFzGo+98LHCDb1Ms2rzQ/AvNfzXN41ntByFIEea/k/Qvn?=
 =?us-ascii?Q?EqF5HxVKcCj8NDJWDB4stM6FAZBgHBaDVougha/Y4qI0JYfX5yliQDQ+sLGF?=
 =?us-ascii?Q?+dxGSXK65FzPBIOoxzuk0NsLUGdXmxCNNjofA9IuH/GQ2IsGC6/UGe4iIOIZ?=
 =?us-ascii?Q?Vl7GT3Q3RE3k4kDQyYBZM44EEMUYhIChI4gE9GV8zQo1PzM49ZFk4/rdLtOJ?=
 =?us-ascii?Q?+qeA1rzqF8saPl8RxB0Lu0NDu6T4e+K4eYUdySbHxXk6gUCIR8oSrzQD/dCO?=
 =?us-ascii?Q?LQLh4cSrNiUi+I8Tk4dTY4MN8utIzwuplI7edUVmEwo=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4610.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e2dc422-0d8e-43cd-f1c1-08d89b77f163
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2020 12:51:12.5132 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TQu/dRwa5UfFJVpMtnscFPMJO/lUjOTHV0ZYXURzu9+lo5uZYOZXqygXPIJBd4XNwdVLGlEq0Q882a0OEuKzXG8rMn0+IjGW2+DYFzBFmyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2283
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: allow controlling PTP
 external clock features
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> On Mon, Nov 23, 2020 at 01:46:56PM +0000, Mateusz Palczewski wrote:
> > From: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > 
> > Provide information what functions are supported by PTP pins and allow 
> > controlling them.
> > Implemented in i40e_ptp_verify() and i40e_pps_configure().
> > Previously it was not possible to control PTP external clock features.
> 
> Why you target that to 'net' tree? it's not a bug fix if you ask me, but a feature implementation.
Thank you for review.
It is intended to go to 'net' tree as all patches related to i40e driver. Isn't it appropriate approach ?
> 
> > 
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_ptp.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c 
> > b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > index 26f583f..6182d42 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
> > @@ -241,7 +241,15 @@ static void i40_ptp_reset_timing_events(struct 
> > i40e_pf *pf)  static int i40e_ptp_verify(struct ptp_clock_info *ptp, unsigned int pin,
> >  			   enum ptp_pin_function func, unsigned int chan)
> 
> I don't see i40e_ptp_verify in the upstream code. Am I missing something?
There is another patch "i40e: add support for PTP external synchronization clock" being reviewed on intel-wired-lan. It was posted some time ago.
> 
> It also looks to me that you only make use of 1 out of 4 functions args.
> This will produce compiler warnings.
It depends on compiler options. I cannot see any warnings on my (default) setup. The interface is fixed and just not all arguments are needed. Other drivers use this similarly.
> 
> >  {
> > -	/* TODO: implement pin checking */
> > +	switch (func) {
> > +	case PTP_PF_NONE:
> > +	case PTP_PF_EXTTS:
> > +	case PTP_PF_PEROUT:
> > +		break;
> > +	case PTP_PF_PHYSYNC:
> > +		return -EOPNOTSUPP;
> > +	}
> > +
> >  	return 0;
> >  }
> >  
> > @@ -486,7 +494,11 @@ static int i40e_pps_configure(struct ptp_clock_info *ptp,
> >  			      struct ptp_clock_request *rq,
> >  			      int on)
> >  {
> 
> Again, 'rq' is unused. Also it looks like it could return void.
For 'rq' please see my comment above.
Please be more detailed about 'returning void' scenario - I cannot see this.
> 
> > -	/* TODO: implement PPS events */
> > +	struct i40e_pf *pf = container_of(ptp, struct i40e_pf, ptp_caps);
> > +
> > +	if (!!on)
> > +		i40e_ptp_set_1pps_signal_hw(pf);
> > +
> >  	return 0;
> >  }

Best Regards,
Piotr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
