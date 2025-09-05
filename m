Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C149B456CB
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Sep 2025 13:46:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DEF3281E4D;
	Fri,  5 Sep 2025 11:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j94-8G4Unuc8; Fri,  5 Sep 2025 11:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FA1281E54
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757072810;
	bh=JcI7J/uFU7ZbOWMskXtXz4JhTFXRbwFYqBfmihbiEYQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fyLNfj6mDBjo73wIjiHIVmSq3kpptHuVL671lsGalKzdU+oeY+Wyxrq2tQsqBqUsV
	 LhTxw8RAqY66zn6dB7GckV5kl4D9apQtuMls/98SuzJ/+sP67OUdU3nvAcii1IOxsu
	 nF7fK5+8LSxpK/k4EuuPS8jpwNCvo1WVF4pS5vE6g6iaFo8jPJXpgdjD4ucj7Wyssu
	 4+lGxAyfRAw8S4ebgMklrUs67BbYnkboC20K1uwVrJ+cvsOX5szqFmOgYUaOaXCgy6
	 Sb7WwDV9TX6Qc0+glu8z+81kpwmYqwm9CcbIhW52hmHSLrxTnVLcR9t8qzZ0gyk6Xw
	 mhrUGVKQtGtyg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7FA1281E54;
	Fri,  5 Sep 2025 11:46:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F2C4C111
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:46:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4DF960C15
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:46:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2UHIN7f3GIkg for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Sep 2025 11:46:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 077A960BFB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 077A960BFB
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 077A960BFB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Sep 2025 11:46:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 46A7D41AB5;
 Fri,  5 Sep 2025 11:46:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35EB3C4CEF1;
 Fri,  5 Sep 2025 11:46:45 +0000 (UTC)
Date: Fri, 5 Sep 2025 12:46:42 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: mheib@redhat.com, intel-wired-lan@lists.osuosl.org,
 przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Message-ID: <20250905114642.GA551420@horms.kernel.org>
References: <20250903214305.57724-1-mheib@redhat.com>
 <20250903214305.57724-2-mheib@redhat.com>
 <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <efb80605-187f-4b80-8ba9-8065d1b9e9d0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757072807;
 bh=CQXpXgZZAjbSz/XACaaYW80rCegWQbY8lTjj3A2yTbE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JXGu8hwq8INQAbNsAe6XM5RbpbVLA5z8WHVWtn8B7X7ijBTwIVtQlo8lcpSX2vycC
 S3UWQtU4dwgzIiqapTJ3wv80M6+XcW2bn+3XM+V3Y9HSoaNg7MVVoZsaHVYAdrHPaT
 KQeTec3DtRD9FcYR/BRKOLs+xEGsabTqgVY0IDvcWVS13oY44N6Y8VJnMe7oZBR0Ap
 e8acNoNJKjY53fsCd2/YvrfJoJFMsNgvvSdft13KW2QGlnpGYPBB6A0JfsTke9xhfT
 A1O757AFU/oW9VqkyWzA276iH4COhRDPMSwfNvJZEHMw/xeNFLuxZzxVFYWk9zwrAG
 dLIGiOoFK+U1Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=JXGu8hwq
Subject: Re: [Intel-wired-lan] [PATCH net-next, v3,
 2/2] i40e: support generic devlink param "max_mac_per_vf"
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

On Wed, Sep 03, 2025 at 03:25:40PM -0700, Jacob Keller wrote:
> 
> 
> On 9/3/2025 2:43 PM, mheib@redhat.com wrote:
> > From: Mohammad Heib <mheib@redhat.com>
> > 
> > Currently the i40e driver enforces its own internally calculated per-VF MAC
> > filter limit, derived from the number of allocated VFs and available
> > hardware resources. This limit is not configurable by the administrator,
> > which makes it difficult to control how many MAC addresses each VF may
> > use.
> > 
> > This patch adds support for the new generic devlink runtime parameter
> > "max_mac_per_vf" which provides administrators with a way to cap the
> > number of MAC addresses a VF can use:
> > 
> > - When the parameter is set to 0 (default), the driver continues to use
> >   its internally calculated limit.
> > 
> > - When set to a non-zero value, the driver applies this value as a strict
> >   cap for VFs, overriding the internal calculation.
> > 
> > Important notes:
> > 
> > - The configured value is a theoretical maximum. Hardware limits may
> >   still prevent additional MAC addresses from being added, even if the
> >   parameter allows it.
> > 
> > - Since MAC filters are a shared hardware resource across all VFs,
> >   setting a high value may cause resource contention and starve other
> >   VFs.
> > 
> > - This change gives administrators predictable and flexible control over
> >   VF resource allocation, while still respecting hardware limitations.
> > 
> > - Previous discussion about this change:
> >   https://lore.kernel.org/netdev/20250805134042.2604897-2-dhill@redhat.com
> >   https://lore.kernel.org/netdev/20250823094952.182181-1-mheib@redhat.com
> > 
> > Signed-off-by: Mohammad Heib <mheib@redhat.com>
> > ---
> 
> This version looks good to me. With or without minor nits relating to
> rate limiting and adding mac_add_max to the untrusted message:
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>

Thanks, I'm very pleased to see this one coming together.

Reviewed-by: Simon Horman <horms@kernel.org>

> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > index 081a4526a2f0..6e154a8aa474 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
> > @@ -2935,33 +2935,48 @@ static inline int i40e_check_vf_permission(struct i40e_vf *vf,
> >  		if (!f)
> >  			++mac_add_cnt;
> >  	}
> > -
> > -	/* If this VF is not privileged, then we can't add more than a limited
> > -	 * number of addresses.
> > +	/* Determine the maximum number of MAC addresses this VF may use.
> > +	 *
> > +	 * - For untrusted VFs: use a fixed small limit.
> > +	 *
> > +	 * - For trusted VFs: limit is calculated by dividing total MAC
> > +	 *  filter pool across all VFs/ports.
> >  	 *
> > -	 * If this VF is trusted, it can use more resources than untrusted.
> > -	 * However to ensure that every trusted VF has appropriate number of
> > -	 * resources, divide whole pool of resources per port and then across
> > -	 * all VFs.
> > +	 * - User can override this by devlink param "max_mac_per_vf".
> > +	 *   If set its value is used as a strict cap for both trusted and
> > +	 *   untrusted VFs.
> > +	 *   Note:
> > +	 *    even when overridden, this is a theoretical maximum; hardware
> > +	 *    may reject additional MACs if the absolute HW limit is reached.
> >  	 */
> 
> Good. I think this is better and allows users to also increase limit for
> untrusted VFs without requiring them to become fully "trusted" with the
> all-or-nothing approach. Its more flexible in that regard, and avoids
> the confusion of the parameter not working because a VF is untrusted.

+1

> >  	if (!vf_trusted)
> >  		mac_add_max = I40E_VC_MAX_MAC_ADDR_PER_VF;
> >  	else
> >  		mac_add_max = I40E_VC_MAX_MACVLAN_PER_TRUSTED_VF(pf->num_alloc_vfs, hw->num_ports);
> >  
> > +	if (pf->max_mac_per_vf > 0)
> > +		mac_add_max = pf->max_mac_per_vf;
> > +
> 
> Nice, a clean way to edit the maximum without needing too much special
> casing.
> 
> >  	/* VF can replace all its filters in one step, in this case mac_add_max
> >  	 * will be added as active and another mac_add_max will be in
> >  	 * a to-be-removed state. Account for that.
> >  	 */
> >  	if ((i40e_count_active_filters(vsi) + mac_add_cnt) > mac_add_max ||
> >  	    (i40e_count_all_filters(vsi) + mac_add_cnt) > 2 * mac_add_max) {
> > +		if (pf->max_mac_per_vf == mac_add_max && mac_add_max > 0) {
> > +			dev_err(&pf->pdev->dev,
> > +				"Cannot add more MAC addresses: VF reached its maximum allowed limit (%d)\n",
> > +				mac_add_max);
> > +				return -EPERM;
> > +		}
> 
> Good, having the specific error message will aid system administrators
> in debugging.

Also, +1.

> One thought I had, which isn't a knock on your code as we did the same
> before.. should these be rate limited to prevent VF spamming MAC filter
> adds clogging up the dmesg buffer?
> 
> Given that we didn't do it before, I think its reasonable to not hold
> this patch up for such a cleanup.
> 
> >  		if (!vf_trusted) {
> >  			dev_err(&pf->pdev->dev,
> >  				"Cannot add more MAC addresses, VF is not trusted, switch the VF to trusted to add more functionality\n");
> >  			return -EPERM;
> >  		} else {
> 
> We didn't rate limit it before. I am not sure how fast the VF can
> actually send messages, so I'm not sure if that change would be required.
> 
> You could optionally also report the mac_add_max for the untrusted
> message as well, but I think its fine to leave as-is in that case as well.

I'm not sure either. I'm more used to rate limits in the datapath,
where network traffic can result in a log.

I think that if we want to go down the path you suggest then we should
look at what other logs fall into the same category: generated by VM admin
actions. And perhaps start by looking in the i40e driver for such cases.

Just my 2c worth on this one.

> 
> >  			dev_err(&pf->pdev->dev,
> > -				"Cannot add more MAC addresses, trusted VF exhausted it's resources\n");
> > +				"Cannot add more MAC addresses: trusted VF reached its maximum allowed limit (%d)\n",
> > +				mac_add_max);
> >  			return -EPERM;
> >  		}
> >  	}
> 



