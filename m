Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A44EDA6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 15:23:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F12F410A1;
	Thu, 31 Mar 2022 13:23:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sTE8SSEJTKwY; Thu, 31 Mar 2022 13:23:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6DFF241099;
	Thu, 31 Mar 2022 13:23:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5BB071BF28C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:23:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4730B40149
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:23:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QdWgFAGfv9hZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 13:23:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 111554021B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 13:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648733003; x=1680269003;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J4EcOGbfLWwHhQnmbKwaxvYSdKoyUe7QFyqHUfjB7QU=;
 b=fV+TMQJIPv9pDyksIPBNdyXNnhaaIFvn4ZOuKXOhwP7Y3okErwUhj9On
 9bNaTVHtmG9qpikTs626pIaVQB30zEUhORQk7KqeFXlTAwCaIPqZ2jM53
 SZpHovLnAsMXa28C2s874X9qhbRA+uekqK4AIK8h4p9NBRHpcninyqelH
 aXVUg2UZV9PYve0z2VzxOBaqwHFJUZUSHKIxLINx/8qqoh3kQowxZdIGP
 7dVM0zKBigGy7/CMFlgHA6e5nZjkgIvXJSD5evQ72SeTK1LzVBkoiqjEM
 Y3GS5DfrJk0eQ+lX83aBteOJiyhqZ4NotD8M/ND9pMVpDlqYgWbi7Y5ez w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="284754743"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="284754743"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 06:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="695489057"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga001.fm.intel.com with ESMTP; 31 Mar 2022 06:17:25 -0700
Date: Thu, 31 Mar 2022 15:17:24 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <YkWp5JJ9Sp6UCTw7@boxer>
References: <20220331105005.2580771-1-ivecera@redhat.com>
 <YkWpNVXYEBo/u3dm@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YkWpNVXYEBo/u3dm@boxer>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com, brett@pensando.io,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 31, 2022 at 03:14:32PM +0200, Maciej Fijalkowski wrote:
> On Thu, Mar 31, 2022 at 12:50:04PM +0200, Ivan Vecera wrote:
> > Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> > because message sent from VF is ignored and never processed.
> > 
> > Use mutex_lock() instead to fix the issue. It is safe because this
> 
> We need to know what is *the* issue in the first place.
> Could you please provide more context what is being fixed to the readers
> that don't have an access to bugzilla?
> 
> Specifically, what is the case that ignoring a particular message when
> mutex is already held is a broken behavior?

Uh oh, let's
CC: Brett Creeley <brett@pensando.io>

> 
> > mutex is used to prevent races between VF related NDOs and
> > handlers processing request messages from VF and these handlers
> > are running in ice_service_task() context.
> > 
> > Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 10 +---------
> >  1 file changed, 1 insertion(+), 9 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > index 3f1a63815bac..9bf5bb008128 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > @@ -3660,15 +3660,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
> >  		return;
> >  	}
> >  
> > -	/* VF is being configured in another context that triggers a VFR, so no
> > -	 * need to process this message
> > -	 */
> > -	if (!mutex_trylock(&vf->cfg_lock)) {
> > -		dev_info(dev, "VF %u is being configured in another context that will trigger a VFR, so there is no need to handle this message\n",
> > -			 vf->vf_id);
> > -		ice_put_vf(vf);
> > -		return;
> > -	}
> > +	mutex_lock(&vf->cfg_lock);
> >  
> >  	switch (v_opcode) {
> >  	case VIRTCHNL_OP_VERSION:
> > -- 
> > 2.34.1
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
