Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF66A3385F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Feb 2025 07:58:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 915CD6118E;
	Thu, 13 Feb 2025 06:58:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4BPdNpL9_wpr; Thu, 13 Feb 2025 06:58:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E48966115D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739429934;
	bh=4F5VANmPyXgvr1kxKrwCwoj+uCRsVNio33Ci9p3RiXM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vCpBY6aLLVS2yDLptiQJgKlLK2br6tFyIdkFoDZpco2+emMKzBjlpmKyDkReZ1zYl
	 +BR7L1mtiYGCOpK6RIahlLsXUIdrrd2U2yBEGE/pHZdWuaxFLp2I46xUkIufZZGWfY
	 Qi4bvEz4CdGHdWg1LUVvDn846E9XUsBYeTAVnhMA43I7HBFfxUcA8t9y7AfBPwdrgw
	 tt1ACNZS0XCVS2dAdULJI8KFxMY7W4PYcwyO5JYHEbHBfhG+5lNTtTZo6Wf085aZC1
	 yaq/Pe0zvH+RpCfmbpfOlihgzxfoCvieV80dm7Z+mJADJNX5E8iWGZgwsTfrXIwL7s
	 Frkcq0b/qtfxQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E48966115D;
	Thu, 13 Feb 2025 06:58:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id CCD0412D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:58:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC56F608B4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kWZXc_ihec8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Feb 2025 06:58:52 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E01E1606F6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E01E1606F6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E01E1606F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Feb 2025 06:58:51 +0000 (UTC)
X-CSE-ConnectionGUID: m8kb0SyJTuuD35K0xMO64w==
X-CSE-MsgGUID: NML1lJO6TMKB35savesF5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39818277"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="39818277"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:58:49 -0800
X-CSE-ConnectionGUID: KUJW1hv9RVqsIDMDOXu40g==
X-CSE-MsgGUID: Uu0E+VmgQ9e+/yLUUhvqhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="150223547"
Received: from mev-dev.igk.intel.com ([10.237.112.144])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 22:58:46 -0800
Date: Thu, 13 Feb 2025 07:55:12 +0100
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Wojciech Drewek <wojciech.drewek@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <Z62XUG6JzoD0sGAb@mev-dev.igk.intel.com>
References: <b16e4f01-4c85-46e2-b602-fce529293559@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b16e4f01-4c85-46e2-b602-fce529293559@stanley.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739429932; x=1770965932;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=IuDkSPusWTCLmutvKrUiCtONzQj5Xn2RbA/VhezuVxA=;
 b=SHVBOqRaLQEjouentecf0eiV2j3zV+hTODC9h4VCh21No3/c+MScuUtK
 /VKSw4cenwwFJh1bVE6r8r/hvC7d8TsMZQRYB7aadGOdy+z15SHi72d5y
 o4g9XttTDBg6VGfjt6bJQ6Jezr4ul6rwS4SmguYbfscpqVlGV2cmZbJna
 sYYFEEVjfjl2vJJRhTqxxRKdVCeOmdOEEtFijU430yDIvn0Bm6qtTu+LX
 cFIw8jpFDNx2kK4szvjcfp7N1WES5UYdFT+XgJA1fI6QT5+x0yVom4Ks6
 Lio7JHf5lHHI7QWXuMQWS7W6j/x9yvbSszlMG5tkTGNv2VMZCwqJ1Hyba
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=SHVBOqRa
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next] ice: Fix signedness bug
 in ice_init_interrupt_scheme()
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 13, 2025 at 09:31:41AM +0300, Dan Carpenter wrote:
> If pci_alloc_irq_vectors() can't allocate the minimum number of vectors
> then it returns -ENOSPC so there is no need to check for that in the
> caller.  In fact, because pf->msix.min is an unsigned int, it means that
> any negative error codes are type promoted to high positive values and
> treated as success.  So here, the "return -ENOMEM;" is unreachable code.
> Check for negatives instead.
> 
> Now that we're only dealing with error codes, it's easier to propagate
> the error code from pci_alloc_irq_vectors() instead of hardcoding
> -ENOMEM.
> 
> Fixes: 79d97b8cf9a8 ("ice: remove splitting MSI-X between features")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
> v2: Fix my scripts to say [PATCH net-next]
>     Propagate the error code.
> 
>  drivers/net/ethernet/intel/ice/ice_irq.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_irq.c b/drivers/net/ethernet/intel/ice/ice_irq.c
> index cbae3d81f0f1..30801fd375f0 100644
> --- a/drivers/net/ethernet/intel/ice/ice_irq.c
> +++ b/drivers/net/ethernet/intel/ice/ice_irq.c
> @@ -149,8 +149,8 @@ int ice_init_interrupt_scheme(struct ice_pf *pf)
>  
>  	vectors = pci_alloc_irq_vectors(pf->pdev, pf->msix.min, vectors,
>  					PCI_IRQ_MSIX);
> -	if (vectors < pf->msix.min)
> -		return -ENOMEM;
> +	if (vectors < 0)
> +		return vectors;
>  
>  	ice_init_irq_tracker(pf, pf->msix.max, vectors);
>  

Thanks,
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> -- 
> 2.47.2
> 
