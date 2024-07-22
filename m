Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C28593914D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 15A5381145;
	Mon, 22 Jul 2024 15:04:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aIQT3ESbEh4c; Mon, 22 Jul 2024 15:04:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F60981137
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660681;
	bh=9d8T8Yfbh9X1bypxH964hBpBuhdwv4RMG9aIGjgGKE0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eLpb0EztZijTvY5ZvH1GbZLKIjuuwJIhks3e9RIVLU8jgBLDa5PiGT23+qOBa6zw4
	 EAQ9/Y48dNlt4yL5J4uVJnlEaB0P8R8N4YePPz8rzIKWC2S4m0XU4S3TTDxoo6wUfe
	 0w9fZZoSZJ12XxbcwR9UACzXgo79eX3AFdmEuHA/ES+Hu8Ffjzy10lARpv0SfuOw6I
	 kr7A4lEcSfOBp6PrF/qf5ZAoZR1m/FjylK1T1mrvQLWEdR2XUvvBfSgu7VqueoxecZ
	 dW/7XzbDYP/UVQ0nDhHIEjcWFHTM+H7IufWvZ33PX+X/B5M9H19g+GV1X2n3G9VioX
	 LFD+Lsp8timuA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F60981137;
	Mon, 22 Jul 2024 15:04:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 22AF11BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0F5B540448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtiQUQhuE_Up for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:04:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B21AB40109
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B21AB40109
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B21AB40109
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:04:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 27C7DCE0B1A;
 Mon, 22 Jul 2024 15:04:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3C558C116B1;
 Mon, 22 Jul 2024 15:04:33 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:04:31 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150431.GK715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-13-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-13-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660674;
 bh=7kkoTuqfC4Oik6634QuQWnmFJIwKloEbGGhIQxEOBhk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Be9pn3q+l/H6+qhD1kJCjzFrlrvkINr5HxkO8Ctlt6QAGi7V1NzJbGFAV/sHkKx2L
 eLKHIMFaAc4TZp4D67EdrViFiFUxRilJqCsOHu9Xd+RdfT8VOPaLsYaLKc3S98N4oD
 Ak80NTs5mNiXijLRAHY/e8CMlBER7+wefsnTE/BnhDctECIDHVdXPjyiCPROIJGPo0
 sVuKEMH8GqDf2irzkFmYiN5XME+L+K3RC5OjQBzEVtZuMjX8ZDdLQ3rZFgW2xSgv7p
 MzGFuqXEmACQm+A8qjjgKyYEuXLd02tmzr6l8YnMBJ8sFrGBUm3J0FG1rC4YDKKUHh
 rb2+1mvZEHEuw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Be9pn3q+
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 12/13] iavf: refactor
 add/del FDIR filters
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Sridhar Samudrala <sridhar.samudrala@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:14PM -0600, Ahmed Zaki wrote:
> In preparation for a second type of FDIR filters that can be added by
> tc-u32, move the add/del of the FDIR logic to be entirely contained in
> iavf_fdir.c.
> 
> The iavf_find_fdir_fltr_by_loc() is renamed to iavf_find_fdir_fltr()
> to be more agnostic to the filter ID parameter (for now @loc, which is
> relevant only to current FDIR filters added via ethtool).
> 
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf.h        |  5 ++
>  .../net/ethernet/intel/iavf/iavf_ethtool.c    | 56 ++-------------
>  drivers/net/ethernet/intel/iavf/iavf_fdir.c   | 72 +++++++++++++++++--
>  drivers/net/ethernet/intel/iavf/iavf_fdir.h   |  7 +-
>  4 files changed, 83 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
> index 23a6557fc3db..85bd6a85cf2d 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf.h
> +++ b/drivers/net/ethernet/intel/iavf/iavf.h
> @@ -444,6 +444,11 @@ struct iavf_adapter {
>  	spinlock_t adv_rss_lock;	/* protect the RSS management list */
>  };
>  
> +/* Must be called with fdir_fltr_lock lock held */
> +static inline bool iavf_fdir_max_reached(struct iavf_adapter *adapter)
> +{
> +	return (adapter->fdir_active_fltr >= IAVF_MAX_FDIR_FILTERS);

nit: these parentheses seem unnecessary.

> +}
>  
>  /* Ethtool Private Flags */
>  

...

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c

...

> +/**
> + * iavf_fdir_del_fltr - delete a flow director filter from the list
> + * @adapter: pointer to the VF adapter structure
> + * @loc: location to delete.
> + *
> + * Return: 0 on success or negative errno on failure.
> + */
> +int iavf_fdir_del_fltr(struct iavf_adapter *adapter, u32 loc)
> +{
> +	struct iavf_fdir_fltr *fltr = NULL;
> +	int err = 0;
> +
> +	spin_lock_bh(&adapter->fdir_fltr_lock);
> +	fltr = iavf_find_fdir_fltr(adapter, loc);
> +
> +	if (fltr) {
> +		if (fltr->state == IAVF_FDIR_FLTR_ACTIVE) {
> +			fltr->state = IAVF_FDIR_FLTR_DEL_REQUEST;
> +		} else if (fltr->state == IAVF_FDIR_FLTR_INACTIVE) {
> +			list_del(&fltr->list);
> +			kfree(fltr);
> +			adapter->fdir_active_fltr--;
> +			fltr = NULL;
> +		} else {
> +			err = -EBUSY;
> +		}
> +	} else if (adapter->fdir_active_fltr) {
> +		err = -EINVAL;
> +	}
> +
> +	if (fltr && fltr->state == IAVF_FDIR_FLTR_DEL_REQUEST)
> +		iavf_schedule_aq_request(adapter, IAVF_FLAG_AQ_DEL_FDIR_FILTER);

It seems that prior to this change the condition and call to
iavf_schedule_aq_request were not protected by fdir_fltr_lock, and now they
are. If so, is this change intentional.

> +
> +	spin_unlock_bh(&adapter->fdir_fltr_lock);
> +	return err;
>  }

...
