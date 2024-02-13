Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 751EA852D1B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 10:55:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 05A384069F;
	Tue, 13 Feb 2024 09:55:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aNwvC-LplOij; Tue, 13 Feb 2024 09:55:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 427E64068E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707818116;
	bh=81DZulvSuZNJ2ydL7wiOxGPKKtq7rQ26jDkH8Wf8v0w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=m0kUQ/IWTLshahOF4nmSMutnFwGzJpTmmgzIrW7F9e2nC0XAiiqTySI6frvHE8ndX
	 8J4tKluV1y/BYN6M0KDmSuoXEhLy1Aexh0DZIFac+IzOzzu2tlNpriRL47fak1QNht
	 5Zkg727Nes+rM/yD0hwJ08O/n30qn2grs9gjxhziheM18fgSlq8avRakhBkGIFn2oG
	 FX8ez5k9o5VRscJq9xmJhRywohSZaSOW3UhfAaWTaNKeIL03lFnbI82g/JprW9CckQ
	 KC/JHwol2uxrjp5ckPKY9QFzXf8HYAoCQZkvk7AQBav9Ri4Y7HW4fSuhX4ow45TIJ1
	 4h4x3nJT1+GXA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 427E64068E;
	Tue, 13 Feb 2024 09:55:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18C461BF20B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:55:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 04220813C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:55:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vQXYZg_bXnnV for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 09:55:13 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0CD75813B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0CD75813B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0CD75813B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 09:55:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="13210522"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="13210522"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:55:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="33646766"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:55:08 -0800
Date: Tue, 13 Feb 2024 10:55:05 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zcs8eSp0R98Ejrce@mev-dev>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-11-michal.swiatkowski@linux.intel.com>
 <ZcsvpByD9n9BR-6D@nanopsycho>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZcsvpByD9n9BR-6D@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707818113; x=1739354113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bweGwSW7+73NAdL702iBH2wxcyPFz80FLUKLmctgKLc=;
 b=iBJot9toG5mw4ElVsdpi/Qc/DgdMqM+nMtLLswqABJkk6ofgh7/DxxrL
 B41Dc5W47DlfxCH9qCseJod+mMBh5adGW75bn9P6RCnAMw59FZzVwX80S
 y/W11YRyLhnEwuV1P4nwcUu4b6hivFYKH/eRyN8Ssme5LWBC2sl+6kwZR
 KpUpxDt1/TnuDm1HEmEyKlNG1rOQmJ/YLQLzd1iAxIaV7csOczmwdB9OC
 h6sE8nZo5Cni69Qyw/lco74Lx+YVoAKD9lHdvQttVRuiau3vb4neSmy5x
 UgRFQlBmpbV30u6VMVCbi7e3F82hcmA9wAiXlPq1PlvZvBKWneMVApjlV
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iBJot9to
Subject: Re: [Intel-wired-lan] [iwl-next v1 10/15] ice: create port
 representor for SF
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 13, 2024 at 10:00:20AM +0100, Jiri Pirko wrote:
> Tue, Feb 13, 2024 at 08:27:19AM CET, michal.swiatkowski@linux.intel.com wrote:
> >Store subfunction and VF pointer in port representor structure as an
> >union. Add port representor type to distinguish between each of them.
> >
> >Keep the same flow of port representor creation, but instead of general
> >attach function create helpers for VF and subfunction attach function.
> >
> >Type of port representor can be also known based on VSI type, but it
> >is more clean to have it directly saved in port representor structure.
> >
> >Create port representor when subfunction port is activated.
> >
> >Add devlink lock for whole VF port representor creationi and destruction.
> >It is done to be symmetric with what happens in case of SF port
> >representor. SF port representor is always added or removed with devlink
> >lock taken. Doing the same with VF port representor simplify logic.
> >
> >Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> >---
> > .../intel/ice/devlink/ice_devlink_port.c      |   4 +-
> > .../intel/ice/devlink/ice_devlink_port.h      |   1 +
> > drivers/net/ethernet/intel/ice/ice_eswitch.c  |  82 ++++++++++---
> > drivers/net/ethernet/intel/ice/ice_eswitch.h  |  22 +++-
> > drivers/net/ethernet/intel/ice/ice_repr.c     | 110 +++++++++++-------
> > drivers/net/ethernet/intel/ice/ice_repr.h     |  21 +++-
> > drivers/net/ethernet/intel/ice/ice_sf_eth.c   |  11 ++
> > drivers/net/ethernet/intel/ice/ice_sriov.c    |   4 +-
> > drivers/net/ethernet/intel/ice/ice_txrx.c     |   2 +-
> > drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
> > 10 files changed, 184 insertions(+), 77 deletions(-)
> 
> Again, please split.

Ok
