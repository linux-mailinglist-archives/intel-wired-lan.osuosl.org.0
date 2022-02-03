Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBB74A829C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Feb 2022 11:46:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 533DC84030;
	Thu,  3 Feb 2022 10:46:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aItqW0PjIUXS; Thu,  3 Feb 2022 10:46:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B03283FFD;
	Thu,  3 Feb 2022 10:46:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7B7E31BF41F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:46:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 690A283FFD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:46:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LHSkleAZ91xB for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Feb 2022 10:46:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B116083F6A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Feb 2022 10:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643885190; x=1675421190;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/1NvydBuVRKi00fEoM3gLH2R3OEdbbjfeC5xnIBllhQ=;
 b=BkSUVTAvG0VrfefHjKXiXOCvDJZ0COpGO/DmFTN97hw/6qxlPOGvMBj9
 fFmDOIlfZrSnht2C0AifHW84mbN9mAz+BtqI6aJgj71XV2IiF1FEhuN7B
 /nR7KusciNIW/5HZbmcfbEMYoDWZ5AEHDSrnOtmfdRAPK3MNSduP/vSSy
 NIWxRQf5sEJIQqjK+LZ0TGj3p9MB7Ste4iT9Zmj87HkKF/TrESOOP+gjJ
 spVihPRHllhhkHWBrxDrC40Cdau3mrlIAOhaKV3xzy0Fq5FhzKImpqYDL
 WCSz1L5AnR14s1zFvHVW0KGqaz+8/YvHQ4TSUzrJgb7Gvn2gZvTmKGhUp A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10246"; a="272614477"
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="272614477"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 02:46:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,339,1635231600"; d="scan'208";a="538696588"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 03 Feb 2022 02:46:27 -0800
Date: Thu, 3 Feb 2022 11:46:26 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: "Brady, Alan" <alan.brady@intel.com>
Message-ID: <YfuygnSgPRg3jdUl@boxer>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-19-alan.brady@intel.com>
 <20220128195358.31333-1-alexandr.lobakin@intel.com>
 <CO1PR11MB51860C64005BE3D05A0D72A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CO1PR11MB51860C64005BE3D05A0D72A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
Subject: Re: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced rss
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
Cc: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Burra, Phani R" <phani.r.burra@intel.com>, "Chittim,
 Madhu" <madhu.chittim@intel.com>, "Linga,
 Pavan Kumar" <pavan.kumar.linga@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 03, 2022 at 02:55:57AM +0000, Brady, Alan wrote:
> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: Friday, January 28, 2022 11:54 AM
> > To: Brady, Alan <alan.brady@intel.com>
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Wang, Haiyue
> > <haiyue.wang@intel.com>; intel-wired-lan@lists.osuosl.org; Burra, Phani R
> > <phani.r.burra@intel.com>; Chittim, Madhu <madhu.chittim@intel.com>;
> > Linga, Pavan Kumar <pavan.kumar.linga@intel.com>
> > Subject: Re: [Intel-wired-lan] [PATCH net-next 18/19] iecm: add advanced
> > rss
> > 
> > From: Alan Brady <alan.brady@intel.com>
> > Date: Thu, 27 Jan 2022 16:10:08 -0800
> > 
> > > From: Haiyue Wang <haiyue.wang@intel.com>
> > >
> > > Continuing with advanced features this implements what's needed to do
> > > advanced rss.
> > 
> > I'm sorry for not mentioned it before, but most of the series'
> > commit messages are poor and would probably get rejected upstream.
> > If they were explaining at least some very basics, it would be better. Even
> > better if there were explanations of some tricky code that happens time to
> > time.

I agree this should be improved. I don't know if this would be rejected
upstream, but in the future when looking at the commit history it would
just be more convenient for us and future readers if the description would
have more content in it.

> > 
> > >
> > > Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/iecm/iecm_lib.c    | 547
> > ++++++++++++++++++
> > >  .../net/ethernet/intel/iecm/iecm_virtchnl.c   |  71 +++
> > >  drivers/net/ethernet/intel/include/iecm.h     |  73 +++
> > >  3 files changed, 691 insertions(+)
> > >
> > > diff --git a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > index d11413cb438c..baa1e312652a 100644
> > > --- a/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > +++ b/drivers/net/ethernet/intel/iecm/iecm_lib.c
> > > @@ -1013,6 +1013,52 @@ static void iecm_remove_vlan_filters(struct
> > iecm_vport *vport)
> > >  	}
> > >  }
> > >
> > > +/**
> > > + * iecm_remove_adv_rss_cfgs - Remove all RSS configuration
> > > + * @vport: vport structure
> > > + */
> > > +static void iecm_remove_adv_rss_cfgs(struct iecm_vport *vport) {
> > > +	struct iecm_adapter *adapter = vport->adapter;
> > > +
> > > +	if (!iecm_is_cap_ena(adapter, IECM_OTHER_CAPS,
> > VIRTCHNL2_CAP_ADV_RSS))
> > > +		return;
> > > +
> > > +	if (!list_empty(&adapter->config_data.adv_rss_list)) {
> > > +		struct iecm_adv_rss *rss;
> > > +
> > > +		spin_lock_bh(&adapter->adv_rss_list_lock);
> > > +		list_for_each_entry(rss, &adapter-
> > >config_data.adv_rss_list,
> > > +				    list) {
> > > +			rss->remove = true;
> > > +		}
> > 
> > Redundant braces arond an one-liner.
> > 
> 
> Maybe will fix.

? :D this one-liner is not even spread onto multiple lines, right? So why
'maybe' ?

> 
> > > +		spin_unlock_bh(&adapter->adv_rss_list_lock);
> > > +		iecm_send_add_del_adv_rss_cfg_msg(vport, false);
> > > +	}
> > 
> > Invert the condition for -1 indent level.
> > 
> 
> Will fix.
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
