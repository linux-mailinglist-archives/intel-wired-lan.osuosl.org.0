Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 720B6502920
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Apr 2022 13:57:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD7AA61111;
	Fri, 15 Apr 2022 11:57:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-ULP-E-9Hrv; Fri, 15 Apr 2022 11:57:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EF2F6110C;
	Fri, 15 Apr 2022 11:57:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E3F01BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:57:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 58B4E419DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4kpnz1fE5-LM for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Apr 2022 11:57:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E6BA419A5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Apr 2022 11:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650023861; x=1681559861;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=FNA9/8L/1AumCTg9rH/YL8vSCjGd3gBAewmpfCcHNGY=;
 b=dWxY7xE5xfPXu9RudRhZ5Ipts094JJUtWRFKB9gF6Fql9JiHjqmQLx/u
 4cJRnq/BnvC5Ead/9SNJnRcdiWJABgWL/stRZx9ZdUQo0Z5sWiLUfzyfB
 aE6bCJhBMPvdOyHp7i4LTD3qWWaDPn5NSm6JSb7NmH9YN/quWy7QqSPig
 ao87P82leavRLQAJOy7myhUOes6HyQT2EMRE+h/BGeMiiy2UzABp2MH4F
 rAhFbGv2lw9JxAHlgIdJ9eIBVcLt+kwRndbUhGZwFvIwK3Zo/vy6vEk2w
 ldV3UiBVF7U50u3DoTHOZEABgkvbMEnGHHjauvw7V94f5GM5YtsgtUUuc g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="263320123"
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="263320123"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 04:57:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,262,1643702400"; d="scan'208";a="646039797"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by FMSMGA003.fm.intel.com with ESMTP; 15 Apr 2022 04:57:37 -0700
Date: Fri, 15 Apr 2022 13:57:37 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <YlldsfrRJURXpp5d@boxer>
References: <20220413072259.3189386-1-ivecera@redhat.com>
 <YlldFriBVkKEgbBs@boxer>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YlldFriBVkKEgbBs@boxer>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Protect vf_state check by
 cfg_lock in ice_vc_process_vf_msg()
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
Cc: Fei Liu <feliu@redhat.com>, netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett@pensando.io>, open list <linux-kernel@vger.kernel.org>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 15, 2022 at 01:55:10PM +0200, Maciej Fijalkowski wrote:
> On Wed, Apr 13, 2022 at 09:22:59AM +0200, Ivan Vecera wrote:
> > Previous patch labelled "ice: Fix incorrect locking in
> > ice_vc_process_vf_msg()"  fixed an issue with ignored messages
> 
> tiny tiny nit: double space after "
> Also, has mentioned patch landed onto some tree so that we could provide
> SHA-1 of it? If not, then maybe squashing this one with the mentioned one
> would make sense?

Again, Brett's Intel address is bouncing, so:
CC: Brett Creeley <brett@pensando.io>

> 
> > sent by VF driver but a small race window still left.
> > 
> > Recently caught trace during 'ip link set ... vf 0 vlan ...' operation:
> > 
> > [ 7332.995625] ice 0000:3b:00.0: Clearing port VLAN on VF 0
> > [ 7333.001023] iavf 0000:3b:01.0: Reset indication received from the PF
> > [ 7333.007391] iavf 0000:3b:01.0: Scheduling reset task
> > [ 7333.059575] iavf 0000:3b:01.0: PF returned error -5 (IAVF_ERR_PARAM) to our request 3
> > [ 7333.059626] ice 0000:3b:00.0: Invalid message from VF 0, opcode 3, len 4, error -1
> > 
> > Setting of VLAN for VF causes a reset of the affected VF using
> > ice_reset_vf() function that runs with cfg_lock taken:
> > 
> > 1. ice_notify_vf_reset() informs IAVF driver that reset is needed and
> >    IAVF schedules its own reset procedure
> > 2. Bit ICE_VF_STATE_DIS is set in vf->vf_state
> > 3. Misc initialization steps
> > 4. ice_sriov_post_vsi_rebuild() -> ice_vf_set_initialized() and that
> >    clears ICE_VF_STATE_DIS in vf->vf_state
> > 
> > Step 3 is mentioned race window because IAVF reset procedure runs in
> > parallel and one of its step is sending of VIRTCHNL_OP_GET_VF_RESOURCES
> > message (opcode==3). This message is handled in ice_vc_process_vf_msg()
> > and if it is received during the mentioned race window then it's
> > marked as invalid and error is returned to VF driver.
> > 
> > Protect vf_state check in ice_vc_process_vf_msg() by cfg_lock to avoid
> > this race condition.
> > 
> > Fixes: e6ba5273d4ed ("ice: Fix race conditions between virtchnl handling and VF ndo ops")
> > Tested-by: Fei Liu <feliu@redhat.com>
> > Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_virtchnl.c | 38 +++++++++----------
> >  1 file changed, 17 insertions(+), 21 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > index 5612c032f15a..553287a75b50 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
> > @@ -3625,44 +3625,39 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
> >  		return;
> >  	}
> >  
> > +	mutex_lock(&vf->cfg_lock);
> > +
> >  	/* Check if VF is disabled. */
> >  	if (test_bit(ICE_VF_STATE_DIS, vf->vf_states)) {
> >  		err = -EPERM;
> > -		goto error_handler;
> > -	}
> > -
> > -	ops = vf->virtchnl_ops;
> > -
> > -	/* Perform basic checks on the msg */
> > -	err = virtchnl_vc_validate_vf_msg(&vf->vf_ver, v_opcode, msg, msglen);
> > -	if (err) {
> > -		if (err == VIRTCHNL_STATUS_ERR_PARAM)
> > -			err = -EPERM;
> > -		else
> > -			err = -EINVAL;
> > +	} else {
> > +		/* Perform basic checks on the msg */
> > +		err = virtchnl_vc_validate_vf_msg(&vf->vf_ver, v_opcode, msg,
> > +						  msglen);
> > +		if (err) {
> > +			if (err == VIRTCHNL_STATUS_ERR_PARAM)
> > +				err = -EPERM;
> > +			else
> > +				err = -EINVAL;
> > +		}
> 
> The chunk above feels a bit like unnecessary churn, no?
> Couldn't this patch be simply focused only on extending critical section?
> 
> >  	}
> > -
> > -error_handler:
> >  	if (err) {
> >  		ice_vc_send_msg_to_vf(vf, v_opcode, VIRTCHNL_STATUS_ERR_PARAM,
> >  				      NULL, 0);
> >  		dev_err(dev, "Invalid message from VF %d, opcode %d, len %d, error %d\n",
> >  			vf_id, v_opcode, msglen, err);
> > -		ice_put_vf(vf);
> > -		return;
> > +		goto finish;
> >  	}
> >  
> > -	mutex_lock(&vf->cfg_lock);
> > -
> >  	if (!ice_vc_is_opcode_allowed(vf, v_opcode)) {
> >  		ice_vc_send_msg_to_vf(vf, v_opcode,
> >  				      VIRTCHNL_STATUS_ERR_NOT_SUPPORTED, NULL,
> >  				      0);
> > -		mutex_unlock(&vf->cfg_lock);
> > -		ice_put_vf(vf);
> > -		return;
> > +		goto finish;
> >  	}
> >  
> > +	ops = vf->virtchnl_ops;
> > +
> >  	switch (v_opcode) {
> >  	case VIRTCHNL_OP_VERSION:
> >  		err = ops->get_ver_msg(vf, msg);
> > @@ -3773,6 +3768,7 @@ void ice_vc_process_vf_msg(struct ice_pf *pf, struct ice_rq_event_info *event)
> >  			 vf_id, v_opcode, err);
> >  	}
> >  
> > +finish:
> >  	mutex_unlock(&vf->cfg_lock);
> >  	ice_put_vf(vf);
> >  }
> > -- 
> > 2.35.1
> > 
> > _______________________________________________
> > Intel-wired-lan mailing list
> > Intel-wired-lan@osuosl.org
> > https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
