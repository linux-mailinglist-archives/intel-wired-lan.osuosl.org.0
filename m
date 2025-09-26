Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB549BA3EC6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Sep 2025 15:41:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03D7A417F8;
	Fri, 26 Sep 2025 13:41:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id slQRmCkqq1Ah; Fri, 26 Sep 2025 13:41:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C90A41800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758894100;
	bh=HBALdPToucMZkY/kTaNwslVy+uGwL9gkKirth4ud+Ck=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2T38J5UGd26e548pUhnTmht2zVUyDAteT9yx4V0Fr+D7u+FzDK5rTl0mfpHXKo5/F
	 bDV/HwhbYi1qv33cwVLmrV9jknebX/xohwswHIWM+Z0O+E8J5xTr99yL2mxjpTuYp7
	 gVfjxqlX/TysWupWW+N90CpZ9zFH6yJeBiM722jCHkT34qQyCl59m8yfXCVh7+HMZy
	 OF6KUbU/zjUGRMbLDdIMO4XterNji26iVQAo5nEkmp5tTN3x13iZURIvyrZP6uI7DJ
	 w+2cUfBo+ZbFYVBzJajYerNtGVJWwq9iK71fQK2me60qEkUMGs28hdDgZSliqlRLwy
	 iiFP5MSezTK9Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7C90A41800;
	Fri, 26 Sep 2025 13:41:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id BC9AC177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 13:41:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE6D684A35
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 13:41:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EMY_1xhucj_4 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Sep 2025 13:41:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0464284A1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0464284A1F
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0464284A1F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Sep 2025 13:41:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 305AE601B9;
 Fri, 26 Sep 2025 13:41:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 903F9C4CEF4;
 Fri, 26 Sep 2025 13:41:35 +0000 (UTC)
Date: Fri, 26 Sep 2025 14:41:33 +0100
From: Simon Horman <horms@kernel.org>
To: Sreedevi Joshi <sreedevi.joshi@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Erik Gabriel Carrillo <erik.g.carrillo@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <aNaYDXAJnq-DkDe3@horms.kernel.org>
References: <20250925153358.143112-1-sreedevi.joshi@intel.com>
 <20250925153358.143112-3-sreedevi.joshi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925153358.143112-3-sreedevi.joshi@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1758894096;
 bh=oWKIqfp8lQ9LsSf/4D8fB8l2/iXkFavKhilsa5N0OHc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CawEyyL0IrIJ6TYwumvGGAQm806W45WPUtpH0Q26SdsRSNe+i6Vj3GAL3i4ExKYSN
 PmfgTlSbcBcrF0N37w9ONT88TnED1GTwlerJ+d+HRqEwcpy35sWFeC9C71P7+uK7OF
 gk1nwpuzYHgxgV4SqdL6Tlg6yliKylH5nHMscQdo+mDi5kaZ8BpvvIShaCG3yu7SR5
 VaCMOQU0FuLcp4gxXaYckvSLRjXDUaagQnt4oVG8Xq6vV/FA2PfKaoUts99mf88Biy
 TvdTTMgYtPcBWIYc0Voc4L0wzLU0i5cRKBZ9jO94urzwlb11zp+ib0aRQJ55Qhc1KU
 y8iDQUMLHfh+A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=CawEyyL0
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix issue with
 ethtool -n command display
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

On Thu, Sep 25, 2025 at 10:33:58AM -0500, Sreedevi Joshi wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c

...

> @@ -184,6 +186,29 @@ static int idpf_add_flow_steer(struct net_device *netdev,
>  	if (!rule)
>  		return -ENOMEM;
>  
> +	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
> +	if (!fltr) {
> +		err = -ENOMEM;
> +		goto out_free_rule;
> +	}
> +
> +	/* detect duplicate entry and reject before adding rules */
> +	spin_lock_bh(&vport_config->flow_steer_list_lock);
> +	list_for_each_entry(f, &user_config->flow_steer_list, list) {
> +		if (f->fs.location == fsp->location) {
> +			err = -EEXIST;
> +			break;
> +		}
> +
> +		if (f->fs.location > fsp->location)
> +			break;
> +		parent = f;
> +	}
> +	spin_unlock_bh(&vport_config->flow_steer_list_lock);
> +
> +	if (err)
> +		goto out;
> +
>  	rule->vport_id = cpu_to_le32(vport->vport_id);
>  	rule->count = cpu_to_le32(1);
>  	info = &rule->rule_info[0];
> @@ -222,28 +247,20 @@ static int idpf_add_flow_steer(struct net_device *netdev,
>  		goto out;
>  	}
>  
> -	fltr = kzalloc(sizeof(*fltr), GFP_KERNEL);
> -	if (!fltr) {
> -		err = -ENOMEM;
> -		goto out;
> -	}

Sorry, but I'm not following why the allocation of fltr is moved.
It seems that the return path, both for error and non-error cases,
would be slightly simpler without this part of this patch.

> +	/* Save a copy of the user's flow spec so ethtool can later retrieve it */
> +	fltr->fs = *fsp;
>  
> -	fltr->loc = fsp->location;
> -	fltr->q_index = q_index;
>  	spin_lock_bh(&vport_config->flow_steer_list_lock);
> -	list_for_each_entry(f, &user_config->flow_steer_list, list) {
> -		if (f->loc >= fltr->loc)
> -			break;
> -		parent = f;
> -	}
> -
>  	parent ? list_add(&fltr->list, &parent->list) :
>  		 list_add(&fltr->list, &user_config->flow_steer_list);
>  
>  	user_config->num_fsteer_fltrs++;
>  	spin_unlock_bh(&vport_config->flow_steer_list_lock);
> +	goto out_free_rule;
>  
>  out:
> +	kfree(fltr);
> +out_free_rule:
>  	kfree(rule);
>  	return err;
>  }

...
