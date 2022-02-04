Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5B4A97A7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Feb 2022 11:24:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 77FE482735;
	Fri,  4 Feb 2022 10:24:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id htmXduTyvVaZ; Fri,  4 Feb 2022 10:24:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79CCF81DB2;
	Fri,  4 Feb 2022 10:24:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 734511BF34D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F6D140476
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Brt8_EKQlqwA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Feb 2022 10:24:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6E4504020B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Feb 2022 10:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643970242; x=1675506242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QoKPTw6nybtOEo1SW6iDphz0wEQVliSnVw3oEFTxZsw=;
 b=kKZWpRRLju8TxRYTAA9+rqPy+OoYeN0txlOdQNJUiZOoZO5hMq3IiS0D
 pSUzQPtAqZsMklWoMuguMBgLdIAQ7dHRunDFOUXN9HB/FYFzdHvSywl6c
 KbQ+Jpxs8pi7qjQnVHvGrxGg2XJMt6m4MxBXRpyCK6ZTL9OVnNwxXV8jt
 ddkooFDw7eCFa1gdW0oPrC5H8SytfPqi2v01KMAzEFj0ccxLQXVxx+sT4
 IMwahyngQI9n3h51dC9vK7R5xHqaUfXy76aBzsIzli5CEAjkIuNEcJuHM
 mlEuyu4t9ukwGv7dzWCLRQLnn+qMJu7+FMIDkfIT/5LQnytR1H+DMuEhq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="309090537"
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="309090537"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 02:24:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,342,1635231600"; d="scan'208";a="539121334"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga008.jf.intel.com with ESMTP; 04 Feb 2022 02:23:59 -0800
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 214ANwYa024382; Fri, 4 Feb 2022 10:23:58 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
Date: Fri,  4 Feb 2022 11:22:01 +0100
Message-Id: <20220204102202.78134-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <CO1PR11MB51860C64005BE3D05A0D72A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
References: <20220128001009.721392-1-alan.brady@intel.com>
 <20220128001009.721392-19-alan.brady@intel.com>
 <20220128195358.31333-1-alexandr.lobakin@intel.com>
 <CO1PR11MB51860C64005BE3D05A0D72A18F289@CO1PR11MB5186.namprd11.prod.outlook.com>
MIME-Version: 1.0
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
Cc: Pavan Kumar Linga <pavan.kumar.linga@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Phani Burra <phani.r.burra@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Alan Brady <alan.brady@intel.com>

From: Alan Brady <alan.brady@intel.com>
Date: Thu, 3 Feb 2022 03:55:57 +0100

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

It's a pure error here.

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
> > > +}
> > > +
> > > +/**
> > > + * iecm_del_all_adv_rss_cfgs - delete all RSS configuration

--- 8< ---

> > > --
> > > 2.33.0
> > 
> > Thanks,
> > Al

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
