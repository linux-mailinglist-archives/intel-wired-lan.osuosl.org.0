Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4662CB166
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Dec 2020 01:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EDDFE883F2;
	Wed,  2 Dec 2020 00:21:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dw2d6m5CEDp0; Wed,  2 Dec 2020 00:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFA0D883D4;
	Wed,  2 Dec 2020 00:21:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 384C71BF983
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:21:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3306F86CD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:21:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id br2FY3MZ6uok for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Dec 2020 00:21:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BD25686CD2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Dec 2020 00:21:17 +0000 (UTC)
IronPort-SDR: aytJPYkSY9LT2DgmXj/KXuYB32/NV51Gn5cNozGGcar/5IyGwA2zVPbwYxZmhmcp6ftVxTcfZT
 UPcoUiQKaoBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172145875"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172145875"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 16:21:16 -0800
IronPort-SDR: Ut33q1mgxKuPe3O/fRnfc13I/oIoR4RJLpFpK7FIsKGDuAayMZ9H29jsfdzrxB1Gez0nTpGHCo
 j5bMAysUjm6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="365026443"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga004.fm.intel.com with ESMTP; 01 Dec 2020 16:21:16 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 1 Dec 2020 16:21:15 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 1 Dec 2020 16:21:15 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Tue, 1 Dec 2020 16:21:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKcqqBda2Wtf+kN7+l+817jjMLcVh6s5SFL7ZJ5PCW5fe88F/ljSf8lDnMYeGKSk3jb7FgvvrY3Lj96g/1n8iOxBFn486hJIrvedIaI3Hs6skyiH4zjMCHZwGM015gZYHuSdnAtuPw+bhIzuFp2RO7tPUv0A8zxjFQ3+6vV89/xOVtWVY2xQlcbLMrEhsZQUyg0trhs0KVHawQ/pJCwMal5NRR7AeE7aSuenFmVBcQiw/oZVzcp042eBR0eABexeyAEu+nTGYrf/IjBB5H2cu3aL1sbzwlUh7s70yi91d1dUzEC6aDRfatmuJ4Yf04PN+saSllCpz6/M4/NFLrDWGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZjqW0MAn6hpE3yHVVXer42JBEr0ot6T35u0pDqS1hMs=;
 b=ghc5fnbUojsR2zRyWvQy1bW/kEWCEiO8JjSirppPalUuYe8M9sKQUKxIf28S6xcb1f2JrRVTiMwFyH50E72OtLCZt9RK1GJpjnqc+PiG1A+FMT6P0OXqqTsM02IUxrHEihbAS4SC6IyDkGMLheruhU6BIL/UsUMgpvdUUckf01qdr7gYEuo4t99rciO9jtCTA7JkBpXUt8FMrum2Ip4Y8OtO/MQhDQpYcdMtPP/HIM+OgDTGdbL8kQsudQi6sSoUVuAoqOg8QMQGIE3+tCa+1hEnrl9alsIlOMH2RXW6k0Fx5D32lMZFA+e5BWXQ8VhTo69g9PXc1xeSGJC9UTjSdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZjqW0MAn6hpE3yHVVXer42JBEr0ot6T35u0pDqS1hMs=;
 b=m7W+08a+m3NHmH/HHK3gll3gicz75AT8t/EnjB0G+jPb6XyFY7ibayHs6eBdbuj1MCGjWptppvMHL8WDXReNf9i/RxQ8ghblhiybOm8tiESNGs/X9caPckBvsdZ8IW42TkGklXkRZ5QUtiPz+vtmvHF7yA/DDUB/ahZq5OjHT/E=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2927.namprd11.prod.outlook.com (2603:10b6:805:cc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3611.31; Wed, 2 Dec
 2020 00:21:13 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::5c92:dd20:ec58:76da%6]) with mapi id 15.20.3632.017; Wed, 2 Dec 2020
 00:21:13 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>, "Tieman, Henry W"
 <henry.w.tieman@intel.com>
Thread-Topic: [Intel-wired-lan] [net 3/6] ice: update the number of available
 RSS queues
Thread-Index: AQHWv5+m6O2G8FEynU2HToL+gN44dqnibsiAgACUDAA=
Date: Wed, 2 Dec 2020 00:21:13 +0000
Message-ID: <0a2a6f22d55cf548c8cdd244f7485356586a41f5.camel@intel.com>
References: <20201121003835.48424-1-anthony.l.nguyen@intel.com>
 <20201121003835.48424-3-anthony.l.nguyen@intel.com>
 <446e74e7-5e33-0e68-a187-4b114389abef@molgen.mpg.de>
In-Reply-To: <446e74e7-5e33-0e68-a187-4b114389abef@molgen.mpg.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5 (3.28.5-3.fc28) 
authentication-results: molgen.mpg.de; dkim=none (message not signed)
 header.d=none;molgen.mpg.de; dmarc=none action=none header.from=intel.com;
x-originating-ip: [134.134.136.204]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 205498ef-8871-45e5-d88f-08d896582d2f
x-ms-traffictypediagnostic: SN6PR11MB2927:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB29272C3D87510208ED5581A4C6F30@SN6PR11MB2927.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /xSsA+2Gy5JNzRsN+tF2Mc41l82UYPWO9WV+FTy2VavI6Qdd7B94nfTbdtMKIC1v4cVZXQWBHZ/j1HES5gV8uYahFwyy23EUHlATrZlej/J2le+rv2Q1BcC7OCFQUOwPJWrmoGSmt7VGpqH+WEY5hzNTYgzQO/iRb1CeR/OhvypWwqoGYrw+1SebhS6w5FOFEuf4363LLafCe7XCTJr8GIi7UkKZUTN46hfN2AIUKhRzTTMdfqY5MxKfaBVs0+wYrsTMlgcfun9V9PeC28//WOQCpWaVwq5GxcNhPueKXWdXkezRLRABemeNZzl/2h366AsrZDzQfy3H9JaIYbjrUZPMfyfkSrgeKN1Us9yPnuK1MIS0yWELvdF5ijVmIPsF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(346002)(376002)(366004)(39860400002)(66946007)(76116006)(66446008)(8676002)(5660300002)(83380400001)(6636002)(8936002)(36756003)(2616005)(6486002)(186003)(2906002)(86362001)(66556008)(91956017)(64756008)(26005)(66476007)(110136005)(4326008)(478600001)(316002)(6506007)(15650500001)(6512007)(71200400001)(99106002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?R0Z1cDhELy96a004MkQ4T2RueFR1RWFpeDZ1cW43Vnc5UnY5UzZMY1diL0Zo?=
 =?utf-8?B?NzFpalAzcGxFY2ZJTFphYjNBK1JjYkN1YkYvSndJb09VSVJGYlpJQ1FSaWNp?=
 =?utf-8?B?eERuN0M5NGwrQkc1NWxHQllOaVNjdXhuMitaRm4yakdmYnJJblpwSWU0dE12?=
 =?utf-8?B?R2xCaFNKZzBVUkVrSGpvUnRNMkdzdiswMDNaeEIweXRibUVXdVJTbm9La25H?=
 =?utf-8?B?b2ZTazdLKzAreXFvSXAvTjRvWUc0TGlBVFN2MWRPb1VEemprREp0ckJBQlBS?=
 =?utf-8?B?RDljOG9OOFM0enRhUzV4VkNxb2ROOEp1aGdVVHhFVmRUVlVwRklEa0NvVmhM?=
 =?utf-8?B?T1ZZdXJTOGFKV0NsVnBFcDF6TEhaMVFKbnpxdlI0TmdLTDc0d3cyVDQ5SGF4?=
 =?utf-8?B?bmtiblU3NG9yNmdVdjY0alRBT0x0MVk3N3BMb3VhREtPalhaZTdYRFdHelds?=
 =?utf-8?B?ZkVaUmNNRVQ3UVFqMThxeHBrTjVRTWRBdVo3TWVEWGhnNkoyNkpHSFJtOTdk?=
 =?utf-8?B?TGtSeUJFL1hQZEZqdDVzVXZwcU9oWVFtdjRmb2RVSGZ6WEtPblhXQit1dWZU?=
 =?utf-8?B?ZmttOVVXK3VXYk93QlN3aHV5S0svMVBrVHZpcm51Um8wSFZ3bklkeitWSUxJ?=
 =?utf-8?B?QzBPRE0zWWtyLzhBaS9sdVkzZVc4UldWcFdESVVnczltWENkc1EzcjZDNnVV?=
 =?utf-8?B?OVJjQ1dIV3gvT29MTnRjTFhHd1hEYTJzcFF4OG1TWEY2VC9WOWVVaFlxckF6?=
 =?utf-8?B?WUVrRnF1SFVycXo3em1VV3d0N2dScDJtVFh2SUJiSm9GQUdjWG5BaWNZSGlG?=
 =?utf-8?B?U2s2bzdlaExxVUl6ZGxTbjVCT00wS2lBTWV1N2JGUGM5aUNHQnNXWkxmZFFw?=
 =?utf-8?B?TmNLR0dUSnZTMEhWVHd1ZGRQdjdKT3NXWlBoTFVCTFBqZWxHWW8xWGZ0cmVT?=
 =?utf-8?B?aEdhSDBOc3VRS2tuZzltUlRyb3IxZkRIZUpTZ01yVkpUN016QWo4eHZiN0VQ?=
 =?utf-8?B?S3ora2laVlhBdmR0ZmRKRmFVQzBPSW1PMlBsMXBRMEUxWHp1dEpvNEhpOVla?=
 =?utf-8?B?MDQzVkRxZ3ljc2xsUDVCQXVEZC9mU3JkK0xxeWN6LzBHYkxZOEFMNHo0TkZh?=
 =?utf-8?B?eGE3MGJhN1N5SWU4SFo5SURPU0FlbHVVQUJma3BjRVpyWjBkVzU3aWkwTVpF?=
 =?utf-8?B?KzlueUFSOVJkclBZRXZlQ2pNVlBzekZHNVVuSVgyclNoditrQk5GM2xXQWxC?=
 =?utf-8?B?VnliWWUxZkZFUXlJOTRDWU1mbFB2UGs2Z1JTVk45RDk3Q0g0Q2RHN1h2dGFP?=
 =?utf-8?Q?sYid5Gn4YKai94V6uys0CTBx8lwPzh5P/4?=
Content-ID: <E41F2724F2501D4F954AE04AFFB5E306@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 205498ef-8871-45e5-d88f-08d896582d2f
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2020 00:21:13.1164 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0U3zb6SbiUy5EoqIoKEounxFRfRxfW7SVEtabUFjaAji40cglkaEVfy7a89z8K9QxWmWF0e15e1mWNrpJcMpdRYFoDl3y+watzBagTTr4fo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2927
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [net 3/6] ice: update the number of available
 RSS queues
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

On Tue, 2020-12-01 at 16:31 +0100, Paul Menzel wrote:
> Dear Henry, dear Tony,
> 
> 
> Am 21.11.20 um 01:38 schrieb Tony Nguyen:
> > From: Henry Tieman <henry.w.tieman@intel.com>
> > 
> > It was possible to have Rx queues that were not available for use
> > by RSS. This would happen when increasing the number of Rx queues
> > while there was a user defined RSS LUT.
> > 
> > Always update the number of available RSS queues when changing the
> > number of Rx queues.
> > 
> > Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> > Signed-off-by: Henry Tieman <henry.w.tieman@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/ice_ethtool.c | 31 ++++++++++++++-
> > -----
> >   1 file changed, 22 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > index 9e8e9531cd87..8515a3a7515f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
> > @@ -3321,6 +3321,18 @@ ice_get_channels(struct net_device *dev,
> > struct ethtool_channels *ch)
> >   	ch->max_other = ch->other_count;
> >   }
> >   
> > +/**
> > + * ice_get_valid_rss_size - return valid number of RSS queues
> > + * @hw: pointer to the HW structure
> > + * @new_size: requested RSS queues
> > + */
> > +static int ice_get_valid_rss_size(struct ice_hw *hw, int new_size)
> > +{
> > +	struct ice_hw_common_caps *caps = &hw->func_caps.common_cap;
> > +
> > +	return min_t(int, new_size, BIT(caps->rss_table_entry_width));
> > +}
> > +
> >   /**
> >    * ice_vsi_set_dflt_rss_lut - set default RSS LUT with requested
> > RSS size
> >    * @vsi: VSI to reconfigure RSS LUT on
> > @@ -3348,14 +3360,10 @@ static int ice_vsi_set_dflt_rss_lut(struct
> > ice_vsi *vsi, int req_rss_size)
> >   		return -ENOMEM;
> >   
> >   	/* set RSS LUT parameters */
> > -	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags)) {
> > +	if (!test_bit(ICE_FLAG_RSS_ENA, pf->flags))
> >   		vsi->rss_size = 1;
> > -	} else {
> > -		struct ice_hw_common_caps *caps = &hw-
> > >func_caps.common_cap;
> > -
> > -		vsi->rss_size = min_t(int, req_rss_size,
> > -				      BIT(caps-
> > >rss_table_entry_width));
> > -	}
> > +	else
> > +		vsi->rss_size = ice_get_valid_rss_size(hw,
> > req_rss_size);
> >   
> >   	/* create/set RSS LUT */
> >   	ice_fill_rss_lut(lut, vsi->rss_table_size, vsi->rss_size);
> > @@ -3434,8 +3442,13 @@ static int ice_set_channels(struct
> > net_device *dev, struct ethtool_channels *ch)
> >   
> >   	ice_vsi_recfg_qs(vsi, new_rx, new_tx);
> >   
> > -	if (new_rx && !netif_is_rxfh_configured(dev))
> > -		return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
> > +	if (new_rx) {
> > +		if (!netif_is_rxfh_configured(dev))
> > +			return ice_vsi_set_dflt_rss_lut(vsi, new_rx);
> > +
> > +		/* Update rss_size due to change in Rx queues */
> > +		vsi->rss_size = ice_get_valid_rss_size(&pf->hw,
> > new_rx);
> > +	}
> 
> Why not unconditionally call
> 
>      vsi->rss_size = ice_get_valid_rss_size(&pf->hw, new_rx);
> 
> as the function handles the case `new_rx = 0`, right?

Yea, that's right. I will update.

Thanks,
Tony
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
