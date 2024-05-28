Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 347D38D18D1
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 12:44:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D431140BB4;
	Tue, 28 May 2024 10:43:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GlkVJ4rRAGJd; Tue, 28 May 2024 10:43:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC42940BC7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716893037;
	bh=HeoGSwILJ04pCnIDKh8I4so7PifrbTtVtURUYl1zDmo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3jkwn7+olVwc9mQzZ5Gf+evzWSVlffbC60dCp/l/qTzNXsy603Ue6Pm5rgPSAf3Ib
	 bjWeUPP0dcvyUfGIyJ5vo+dgGB3lvj2yoj0adawq4gXhujdnWqdVZ0sIVpgWAcgIXj
	 QGPy3zSfLZysjM5uamEoEX2MRzZlT51gHAWjsfhPAasiSr7UyY3HP1I+SkyHgPqqtG
	 IJZY37hPEPh/O8+etuZaL1BAhpSAruqnb826lvQeZZH2V0D8b2rLaTJ4c0RQ+CMAPn
	 pfVq20nD1BtN+OFwxZXf2sSiaQDpYq8vtJkNS92VxOc8j2dscXmlE6FpyHIFbryFee
	 fG2NRa8awDFLw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC42940BC7;
	Tue, 28 May 2024 10:43:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB7921D26AA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C718980C32
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h_aH-lKszzXy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 10:43:54 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C3FD380C28
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3FD380C28
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3FD380C28
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 10:43:53 +0000 (UTC)
X-CSE-ConnectionGUID: GlsBPB14SeiYVQuJ+cWLJA==
X-CSE-MsgGUID: lgZTMC6ITHuflisgNaGHig==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13001693"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13001693"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:43:53 -0700
X-CSE-ConnectionGUID: jj070PvSQhKUAU35PmDPIA==
X-CSE-MsgGUID: X5hnXjsSSeulPrJQrCdEKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39470586"
Received: from unknown (HELO mev-dev) ([10.237.112.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 03:43:50 -0700
Date: Tue, 28 May 2024 12:43:02 +0200
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: Ricky Wu <en-wei.wu@canonical.com>
Message-ID: <ZlW1NiQOpf6497Tg@mev-dev>
References: <20240528100315.24290-1-en-wei.wu@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240528100315.24290-1-en-wei.wu@canonical.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716893033; x=1748429033;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=faO5qzmy4SrjD0t39u78b/WW8X2p7Mw4t5HKMKNoD2A=;
 b=G03z/wMtixNL9LJeB5ZPuhQjhP65RM0H3eEzMIDi51ZCxwaplB0GOeZL
 dWFulM/GzuD77LamLekxkvd/62v7mpFC8hLmui7XHH5ceZul0JNYjKbgM
 ZevHl8TnvwBFELSASLuog8LTkKWkp809pYtj6L6xeJ6Ynk4ZMw2y3vMKn
 egzSjdqEJtgav/mkOxpgnyYgFt94p4Xf7fhLkNU6pxq0csTuU3mW1IF9C
 pehsWOHrvBxBLPvdU+FDzJqiTNhzUxgEfvOpv00nXhJj0a6rYhPzNNMlL
 h98dFh30FtdcnP4dz8esOQBLmKlBemN1kY5J7m43zZXhKwxwk301SM7tl
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G03z/wMt
Subject: Re: [Intel-wired-lan] [PATCH] ice: irdma hardware init failed after
 suspend/resume
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
Cc: netdev@vger.kernel.org, rickywu0421@gmail.com, linux-kernel@vger.kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, pabeni@redhat.com, davem@davemloft.net
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, May 28, 2024 at 06:03:15PM +0800, Ricky Wu wrote:
> A bug in https://bugzilla.kernel.org/show_bug.cgi?id=218906 describes
> that irdma would break and report hardware initialization failed after
> suspend/resume with Intel E810 NIC (tested on 6.9.0-rc5).
> 
> The problem is caused due to the collision between the irq numbers
> requested in irdma and the irq numbers requested in other drivers
> after suspend/resume.
> 
> The irq numbers used by irdma are derived from ice's ice_pf->msix_entries
> which stores mappings between MSI-X index and Linux interrupt number.
> It's supposed to be cleaned up when suspend and rebuilt in resume but
> it's not, causing irdma using the old irq numbers stored in the old
> ice_pf->msix_entries to request_irq() when resume. And eventually
> collide with other drivers.
> 
> This patch fixes this problem. On suspend, we call ice_deinit_rdma() to
> clean up the ice_pf->msix_entries (and free the MSI-X vectors used by
> irdma if we've dynamically allocated them). On Resume, we call
> ice_init_rdma() to rebuild the ice_pf->msix_entries (and allocate the
> MSI-X vectors if we would like to dynamically allocate them).
> 
> Signed-off-by: Ricky Wu <en-wei.wu@canonical.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_main.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index f60c022f7960..ec3cbadaa162 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5544,7 +5544,7 @@ static int ice_suspend(struct device *dev)
>  	 */
>  	disabled = ice_service_task_stop(pf);
>  
> -	ice_unplug_aux_dev(pf);
> +	ice_deinit_rdma(pf);
>  
>  	/* Already suspended?, then there is nothing to do */
>  	if (test_and_set_bit(ICE_SUSPENDED, pf->state)) {
> @@ -5624,6 +5624,10 @@ static int ice_resume(struct device *dev)
>  	if (ret)
>  		dev_err(dev, "Cannot restore interrupt scheme: %d\n", ret);
>  
> +	ret = ice_init_rdma(pf);
> +	if (ret)
> +		dev_err(dev, "Reinitialize RDMA during resume failed: %d\n", ret);
> +
>  	clear_bit(ICE_DOWN, pf->state);
>  	/* Now perform PF reset and rebuild */
>  	reset_type = ICE_RESET_PFR;

Looks fine, thanks for the fix. You can add fixes tag and target it to a
net tree.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

> -- 
> 2.43.0
> 
