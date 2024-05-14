Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D32258C4C43
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2024 08:28:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B16F828B5;
	Tue, 14 May 2024 06:28:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id biHDRjwaSX9b; Tue, 14 May 2024 06:28:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DD1982784
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715668084;
	bh=/QzcngRfEHPfe6/RwNL6NJfU39zhtGP+T1+Iskrzqd4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nXaQR5dAcLHic0Sf+CP0QhEZ61OXvp/1zx5NwTAqJpTWd+CbgtVud5SBifgeo3lQ+
	 5MY83qoJJA6lcje2nSPnYjc6buPyVbRKxJYIoMHzwdnGthL+01W9pgy9bUyMXms8XG
	 +S/tyVWn/y8mPs9evqr0iknoYn9Z2IAG6/uZhCgTBvW1GRJuq0xqLUWQQuAy/SN2Kz
	 VJZBfqaI9aKn8ttDhpfidjzATiMB84Solnt4TG3lCEtJ+0HF4A3tzALzCHNcfAgOx/
	 r4khVUMToboLvxSjezzc8h/9PDONgyFFjlkCI+9K5cu2h8Mt8pHDFmBXdxPFPE+5Fv
	 jh9Ll+cjTnjPA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DD1982784;
	Tue, 14 May 2024 06:28:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E99171BF38D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:27:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D4E9E60AC1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:27:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a1UPO6mB-1bp for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2024 06:27:58 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2C3A560ABE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2C3A560ABE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C3A560ABE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2024 06:27:57 +0000 (UTC)
X-CSE-ConnectionGUID: zOPOdW7ZRA6aCMVYssDTLw==
X-CSE-MsgGUID: 6VSV96h9Rn+TgcIxPx9c8w==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="11847427"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="11847427"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 23:27:57 -0700
X-CSE-ConnectionGUID: c/U7QafnSAiVHGH/v6KDnw==
X-CSE-MsgGUID: M26YKeuXQC2oV9oJNWM6EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35125409"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 23:27:54 -0700
Date: Tue, 14 May 2024 08:27:22 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Simon Horman <horms@kernel.org>
Message-ID: <ZkMESjRIQc2fHF6M@mev-dev>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
 <20240513083735.54791-4-michal.swiatkowski@linux.intel.com>
 <20240513160551.GP2787@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240513160551.GP2787@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715668078; x=1747204078;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5m+xGYlMBwxNRJDWZERhtAnbSDV3/VyF/8EZ/X++y9w=;
 b=QDYdqOSiQEiwS0MQAkKX7juRTkG8LcGoy5+HYn0dUkNG961X05DkDVCa
 3A+/iTLvFE6cO6gny93IA4yD2tYJmiBddC9BUNpXIWu1+XhWDvYjqtqja
 H5dXSdZuErfLYhGjE5NiInqm5BEEqh6S0ncVsmJnXYiM2/Uz0bjFG3oyz
 0gXYe//RBooVoXpZ3NjSjXJlyHorgmLxYURiPQpINNoveVeruIYK2wJbB
 izgtcky46+PHB7J/U+aenVVIrseq7NTsr1V4KAUVKNC1QjRV18dvMrEFh
 qZcG8AXRVaIYFXbhauQSUzzecs8VZHBTJEew0NTdkymIlcszUGldLwP9D
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QDYdqOSi
Subject: Re: [Intel-wired-lan] [iwl-next v2 03/15] ice: add basic devlink
 subfunctions support
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

On Mon, May 13, 2024 at 05:05:51PM +0100, Simon Horman wrote:
> On Mon, May 13, 2024 at 10:37:23AM +0200, Michal Swiatkowski wrote:
> 
> ...
> 
> > diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > index 9223bcdb6444..f20d7cc522a6 100644
> > --- a/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > +++ b/drivers/net/ethernet/intel/ice/devlink/devlink_port.h
> > @@ -4,9 +4,42 @@
> >  #ifndef _DEVLINK_PORT_H_
> >  #define _DEVLINK_PORT_H_
> >  
> > +#include "../ice.h"
> > +
> > +/**
> > + * struct ice_dynamic_port - Track dynamically added devlink port instance
> > + * @hw_addr: the HW address for this port
> > + * @active: true if the port has been activated
> > + * @devlink_port: the associated devlink port structure
> > + * @pf: pointer to the PF private structure
> > + * @vsi: the VSI associated with this port
> 
> nit: An entry for @sfnum should go here.
> 

Thanks, will add it

> > + *
> > + * An instance of a dynamically added devlink port. Each port flavour
> > + */
> > +struct ice_dynamic_port {
> > +	u8 hw_addr[ETH_ALEN];
> > +	u8 active: 1;
> > +	struct devlink_port devlink_port;
> > +	struct ice_pf *pf;
> > +	struct ice_vsi *vsi;
> > +	u32 sfnum;
> > +};
> 
> ...
