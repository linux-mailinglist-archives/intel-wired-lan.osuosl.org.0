Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F9B6C9DF5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 27 Mar 2023 10:35:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D10241496;
	Mon, 27 Mar 2023 08:35:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D10241496
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679906116;
	bh=yyQ8b7VwdLqdey0AM5v9tPYqyOA5aeD7R1ey6L9YD4w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SxtWim6gCnLDqJdcV2NDBmNrT6atfVtG2B250tAOoC4+WuO9lrnVxNJz5EhOlxFED
	 efaWwH5KTgEqTzuABAkfav+Xg24diQh6gUqOgn5X5ZjG7gaRhFcgjdeaCiY0sAJs8j
	 po0HL9H8EO4D2guIpqXxSrwYR0ou48QTPokxoUk8rosYhummaj7DL63eoIeZYrnLZd
	 z4iwgqYIvou/3BdpOADleItUNdL7mzdMumeXFc454Xxcwki/bFwhZt0Fi1hc3C8Hvu
	 5YicbzGSWPC9yz8u3qVaizhpHwSMGsFPWRLGKxo5/LdIwgJiTefllbXHZ3ieEHWlIK
	 U/YbSnuKoPwSw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F79vrM3qjBpY; Mon, 27 Mar 2023 08:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 967F7414C0;
	Mon, 27 Mar 2023 08:35:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 967F7414C0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 949841BF2B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 08:35:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6B68D4051C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 08:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6B68D4051C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3lKO3STqijcO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 27 Mar 2023 08:34:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ADD3C400C6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ADD3C400C6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 27 Mar 2023 08:34:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="426473405"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="426473405"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 01:34:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10661"; a="683390490"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="683390490"
Received: from unknown (HELO localhost.localdomain) ([10.237.112.144])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 01:34:56 -0700
Date: Mon, 27 Mar 2023 10:34:47 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: "Liu, Lingyu" <lingyu.liu@intel.com>
Message-ID: <ZCFVJ5qowT/7o8YZ@localhost.localdomain>
References: <20230309024934.151120-1-lingyu.liu@intel.com>
 <ZAsEM+P7D/AfreLY@localhost.localdomain>
 <92a590c8-89d9-76f9-e7fa-5046699fbfe0@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <92a590c8-89d9-76f9-e7fa-5046699fbfe0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679906098; x=1711442098;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=divf2WjbGcqN+YQ7UlIeoUzynU+ftL+ozmX5pXz6J2A=;
 b=MIpB9gii28DSGVxp1LUzn/Cz84+25T9v2/5+ddfFZzSk4DjOOueibgXV
 tqQjUgA+W0x3eq6ifInSuMF39cz51DUMFlf0wUrgeIdIi3Kch5ejXFVIv
 CHa4PNDCzWVEWY9cnZ/7dFqgTayAE0SzEHZepu6g5+Yx/0KLPnR74PJYv
 bRabiYT/jbjl3Tp/w/8iqlj81u+/RRFB03s022cdsvgPcl7PEkCSN1rFz
 6wfMoId5C8P8ELdxGqd1hvQxL3zHtW7NBCZee/QrXFHnCXr6yKDywpIG4
 /F7JCeE9RKhX6wtPdtRsIzn8iaOR6DwyDYWMu3ehY0m6wa5xDvaiGSqOA
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MIpB9gii
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: add FDIR counter reset in
 FDIR init stage
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 14, 2023 at 08:39:09AM +0800, Liu, Lingyu wrote:
> 
> On 3/10/2023 6:19 PM, Michal Swiatkowski wrote:
> > On Thu, Mar 09, 2023 at 02:49:34AM +0000, Lingyu Liu wrote:
> > > From: Junfeng Guo<junfeng.guo@intel.com>
> > > 
> > > This patch added the missing FDIR counters reset process when
> > > FDIR inits. Without this patch, when VF initializes or resets,
> > > all the FDIR counters will not be cleaned, which may cause
> > > unexpected behaviors for future FDIR rule create (e.g., rule
> > > conflict).
> > > 
> > > Fixes: 1f7ea1cd6a37 ("ice: Enable FDIR Configure for AVF")
> > > Signed-off-by: Junfeng Guo<junfeng.guo@intel.com>
> > > Signed-off-by: Lingyu Liu<lingyu.liu@intel.com>
> > > ---
> > > v2: change commit message to apply more to a kernel use
> > > ---
> > >   drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 15 +++++++++++++++
> > >   1 file changed, 15 insertions(+)
> > > 
> > > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > index e6ef6b303222..60c9da4aac1d 100644
> > > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
> > > @@ -541,6 +541,20 @@ static void ice_vc_fdir_rem_prof_all(struct ice_vf *vf)
> > >   	}
> > >   }
> > > +/**
> > > + * ice_vc_fdir_reset_cnt_all - reset all FDIR counters for this VF FDIR
> > > + * @fdir: pointer to the VF FDIR structure
> > > + */
> > > +static void ice_vc_fdir_reset_cnt_all(struct ice_vf_fdir *fdir)
> > > +{
> > > +	enum ice_fltr_ptype flow = ICE_FLTR_PTYPE_NONF_NONE;
> > > +
> > > +	for (; flow < ICE_FLTR_PTYPE_MAX; flow++) {
> > > +		fdir->fdir_fltr_cnt[flow][0] = 0;
> > > +		fdir->fdir_fltr_cnt[flow][1] = 0;
> > > +	}
> > > +}
> > > +
> > >   /**
> > >    * ice_vc_fdir_write_flow_prof
> > >    * @vf: pointer to the VF structure
> > > @@ -1924,6 +1938,7 @@ void ice_vf_fdir_init(struct ice_vf *vf)
> > >   	spin_lock_init(&fdir->ctx_lock);
> > >   	fdir->ctx_irq.flags = 0;
> > >   	fdir->ctx_done.flags = 0;
> > > +	ice_vc_fdir_reset_cnt_all(fdir);
> > I am fine with this change, however, maybe the better place for
> > resetting counters will be when the flows are removed? Or maybe
> > the flow are removed only by hw?
> 
> The flows are removed in ice_vf_fdir_exit(). When VF resets,
> ice_vf_fdir_init() and ice_vf_fdir_exit() is called in pairs.
> While ice_vf_fdir_init() is called when vf entry initializes,
> where these counters should be initialized.
> 

Ok, thanks.

Sorry, I missed the replay :(

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> > >   }
> > >   /**
> > > -- 
> > > 2.25.1
> > > 
> > > _______________________________________________
> > > Intel-wired-lan mailing list
> > > Intel-wired-lan@osuosl.org
> > > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
