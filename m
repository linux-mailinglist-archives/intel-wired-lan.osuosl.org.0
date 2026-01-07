Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 335B9CFC10A
	for <lists+intel-wired-lan@lfdr.de>; Wed, 07 Jan 2026 06:30:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BDA2C4025A;
	Wed,  7 Jan 2026 05:30:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9AifwBX7tZHS; Wed,  7 Jan 2026 05:30:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 38F5440394
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767763849;
	bh=l4mOBagVO7EYG+2gL3FPTeJnPTfTEpi7+7GUzOFeTI0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n/T9+4IidHV/zdkdRWhNvloUI1u449uNoTIvbcWnUPWAGHcK238RQc2mfnHbneAh/
	 K4gWM+hZnDH5s/DawDeF5QARfqdyWKyiGqKhb78vuMXrowap69gET6NUlu5ogfWgtd
	 d+YyUJA5afVcTmOhUaugggKEMgjFlMBo9K1OdVVwSkXxOgZ8UdW6vux6YDN2R4nyEr
	 UNGmi3qLzpkPYrNviw8HkGxa9XeOiqfYLdnGsa/AAIUEDc5YyeG8ksy/uzjIrlcvne
	 XSjCzhSp6Bi0q2EdirVCKQ7Rn1PtpmcFQG43hdAk7mPGNksbhlPLhVR+O5g9oSOg7Q
	 yFF42CUzN2r6A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38F5440394;
	Wed,  7 Jan 2026 05:30:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 901532A3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 82619810B3
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:30:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id beovnMECZUIU for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Jan 2026 05:30:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org EC11E8112F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EC11E8112F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EC11E8112F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Jan 2026 05:30:44 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af77e.dynamic.kabel-deutschland.de
 [95.90.247.126])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 2E1DB61EB9DD0;
 Wed, 07 Jan 2026 06:30:10 +0100 (CET)
Message-ID: <fba866fa-5ed7-4321-8776-e1585b4c417b@molgen.mpg.de>
Date: Wed, 7 Jan 2026 06:30:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Li Li <boolli@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 David Decotigny <decot@google.com>, Anjali Singhai
 <anjali.singhai@intel.com>, Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Brian Vazquez <brianvv@google.com>, emil.s.tantilov@intel.com
References: <20260107010503.2242163-1-boolli@google.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260107010503.2242163-1-boolli@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH 1/5] idpf: skip getting/setting ring
 params if vport is NULL during HW reset
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

Dear Li,


Thank you for your patch.

Am 07.01.26 um 02:04 schrieb Li Li via Intel-wired-lan:
> When an idpf HW reset is triggered, it clears the vport but does
> not clear the netdev held by vport:
> 
>      // In idpf_vport_dealloc() called by idpf_init_hard_reset(),
>      // idpf_init_hard_reset() sets IDPF_HR_RESET_IN_PROG, so
>      // idpf_decfg_netdev() doesn't get called.

No need to format this as code comments. At least it confused me a little.

>      if (!test_bit(IDPF_HR_RESET_IN_PROG, adapter->flags))
>          idpf_decfg_netdev(vport);
>      // idpf_decfg_netdev() would clear netdev but it isn't called:
>      unregister_netdev(vport->netdev);
>      free_netdev(vport->netdev);
>      vport->netdev = NULL;
>      // Later in idpf_init_hard_reset(), the vport is cleared:
>      kfree(adapter->vports);
>      adapter->vports = NULL;
> 
> During an idpf HW reset, when "ethtool -g/-G" is called on the netdev,
> the vport associated with the netdev is NULL, and so a kernel panic
> would happen:
> 
> [  513.185327] BUG: kernel NULL pointer dereference, address: 0000000000000038
> ...
> [  513.232756] RIP: 0010:idpf_get_ringparam+0x45/0x80
> 
> This can be reproduced reliably by injecting a TX timeout to cause
> an idpf HW reset, and injecting a virtchnl error to cause the HW
> reset to fail and retry, while calling "ethtool -g/-G" on the netdev
> at the same time.

If you shared the commands, how to do that, it would make reproducing 
the issue easier.

> With this patch applied, we see the following error but no kernel
> panics anymore:
> 
> [  476.323630] idpf 0000:05:00.0 eth1: failed to get ring params due to no vport in netdev
> 
> Signed-off-by: Li Li <boolli@google.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_ethtool.c | 12 ++++++++++++
>   1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> index d5711be0b8e69..6a4b630b786c2 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ethtool.c
> @@ -639,6 +638,10 @@ static void idpf_get_ringparam(struct net_device *netdev,
>   
>   	idpf_vport_ctrl_lock(netdev);
>   	vport = idpf_netdev_to_vport(netdev);
> +	if (!vport) {
> +		netdev_err(netdev, "failed to get ring params due to no vport in netdev\n");

If vport == NULL is expected, why log it as an error. What should the 
user do? Wait until reset is done?

> +		goto unlock;
> +	}
>   
>   	ring->rx_max_pending = IDPF_MAX_RXQ_DESC;
>   	ring->tx_max_pending = IDPF_MAX_TXQ_DESC;
> @@ -647,6 +651,7 @@ static void idpf_get_ringparam(struct net_device *netdev,
>   
>   	kring->tcp_data_split = idpf_vport_get_hsplit(vport);
>   
> +unlock:
>   	idpf_vport_ctrl_unlock(netdev);
>   }
>   
> @@ -673,6 +674,11 @@ static int idpf_set_ringparam(struct net_device *netdev,
>   
>   	idpf_vport_ctrl_lock(netdev);
>   	vport = idpf_netdev_to_vport(netdev);
> +	if (!vport) {
> +		netdev_err(netdev, "ring params not changed due to no vport in netdev\n");
> +		err = -EFAULT;
> +		goto unlock_mutex;
> +	}
>   
>   	idx = vport->idx;
>   

Is there another – possible more involved – solution possible to wait 
until the hardware reset finished?


Kind regards,

Paul
