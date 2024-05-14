Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B448C4C47
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 08:28:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 79B79827F0;
	Tue, 14 May 2024 06:28:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QIp0r9mZGJ_D; Tue, 14 May 2024 06:28:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A202F82768
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715668116;
	bh=gT4Nz2jQUqpKWfezzwbivRUFS8SbyTPv/0FnLOpRIzI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CVbDNssx8tKMeIsl9a6jFPkD7n/xs7j37OXZuGidAvVjCxyXxNPv8mn3islFKymky
	 QKMuk9CrLhBb4EvJilxlg4s7DnEOmXbTGchgSzrekx0qErRc1z+5PvlzOxtJQ6WL9n
	 e3D30/RcE0zMeTM2YCUsJxpabpON/bLxsZBBXzI5alJVVSskxGBTnZsXd5b9SdR/gT
	 Q6IRedPuSpqrjeOunQfzCNpXxbNsNIpEuiKAiNd/9OQd4LT0BOZJrp87MiEoU+DjSa
	 MecRARVItFZroutr2aFjZ4FWy7+Xqc/0AixbaIeXdEzR2pE8B0wCOUD43HyW7yQ7xW
	 Yr9DpnzPg45GQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A202F82768;
	Tue, 14 May 2024 06:28:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6EC6A1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:28:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A920401A6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:28:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AuEqnJeoraRi for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 06:28:33 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4199640184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4199640184
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4199640184
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:28:33 +0000 (UTC)
X-CSE-ConnectionGUID: ZGdmQY+LReKhT/cpk457sA==
X-CSE-MsgGUID: 4Z2xuc+CT46YxPxm24yL0g==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="23032217"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="23032217"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 23:28:33 -0700
X-CSE-ConnectionGUID: //F9auJcTIWsJ3JlW9L7eQ==
X-CSE-MsgGUID: wYzLra60TIy7l8Y0KH2v0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="30526862"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 23:28:30 -0700
Date: Tue, 14 May 2024 08:27:57 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZkMEbayPH5ms+Qzc@mev-dev>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-9-michal.swiatkowski@linux.intel.com>
 <20240513160947.GQ2787@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513160947.GQ2787@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715668113; x=1747204113;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uvLtRB2vRXuhGSiN6dmEWnhdZEwKhSyXzmwhQ4T0ths=;
 b=SmuyXb4KkOfhBLg5uXmRoyld1CENjrsw64fJ4gNx0mvp9VTjT940FE2u
 y15h9eh2xsWQWQqGKgL6iC/fnNeCgY1XRSD/bo1l03srXikBthI7uB3Gg
 Cf5vAIPSljiwbFf4dSMI6lIrlZca3eLZi6b8S1IbzJdo3myus0ciODTwW
 kZC1RCZbwQXk7vMq6/Fux4w2vOTrjAX/8L/Hf/KnPWLvUqs1rZA/zC6Bh
 23wtUGPZTZlSWqc9FVmxqx4OPpeymGSoePKrpCiza0F2FGgJURi7n1hP7
 pzdkrNQt4IJLbNfvdThBdw/RA/atI/RazxLBYa5ZHkAf0F5WGE+wiEKpy
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SmuyXb4K
Subject: Re: [Intel-wired-lan] [iwl-next v2 08/15] ice: make reprresentor
 code generic
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 13, 2024 at 05:09:47PM +0100, Simon Horman wrote:
> On Mon, May 13, 2024 at 10:37:28AM +0200, Michal Swiatkowski wrote:
> > Keep the same flow of port representor creation, but instead of general
> > attach function create helpers for specific representor type.
> > 
> > Store function pointer for add and remove representor.
> > 
> > Type of port representor can be also known based on VSI type, but it
> > is more clean to have it directly saved in port representor structure.
> > 
> > Add devlink lock for whole port representor creation and destruction.
> > 
> > Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> > Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> 
> nit: In subject, reprresentor -> representor
> 
> > ---
> >  .../ethernet/intel/ice/devlink/devlink_port.h |  1 +
> >  drivers/net/ethernet/intel/ice/ice_eswitch.c  | 74 +++++++++++-----
> >  drivers/net/ethernet/intel/ice/ice_eswitch.h  | 11 +--
> >  drivers/net/ethernet/intel/ice/ice_repr.c     | 88 +++++++++----------
> >  drivers/net/ethernet/intel/ice/ice_repr.h     | 16 +++-
> >  drivers/net/ethernet/intel/ice/ice_sriov.c    |  4 +-
> >  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  4 +-
> >  7 files changed, 121 insertions(+), 77 deletions(-)
> > 
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > index e4acd855d9f9..6e14b9e4d621 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > @@ -23,6 +23,7 @@ struct ice_dynamic_port {
> >  	struct devlink_port devlink_port;
> >  	struct ice_pf *pf;
> >  	struct ice_vsi *vsi;
> > +	unsigned long repr_id;
> 
> nit: Please add an entry for repr_id to the Kernel doc for this structure.
> 
>      And also the attached field which is added by the last patch
>      of this series.
> 

Thanks, will recheck every field

> >  	u32 sfnum;
> >  };
> >  
> 
> ...
