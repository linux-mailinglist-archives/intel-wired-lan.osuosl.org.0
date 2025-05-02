Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 29097AA6E53
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 May 2025 11:39:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA2BA41605;
	Fri,  2 May 2025 09:39:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0hdcWndQC498; Fri,  2 May 2025 09:39:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 216CD41612
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746178797;
	bh=//GMkQzxZC0KMpU8i+Shvim8+jbl8o7IVgZ1cwJWIwc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6mrtV4wknQYLAWyEeU+mK7AIrU9SFzOLChx9dhHipf/Qt7bG+qirG2mxPDA6wsSU5
	 3s955lsBzIzD/6E3pTe7X5+utZeWGF7T865xWqdifta8wl66z9BU+LQuyCL8Z3k5xW
	 p5L2kspm1bM0m9uiuuhvVyLIKK727Ttlql9JQSlCobq+eQ9QQ03PuYBVDXosiEvdA7
	 yCzlJKh2cRIKfJyRhjOJPhqTRF/X6OWoR1aMoO8/lTGLx8iN7NSpR0uU2ozPh2pXBB
	 PplfJzywCGovKRWXWpfb7KJXzQ+et7iKuYSzCHF/5V8ykpTuif4Ip5FjzZOJWMXJB8
	 4UCrkNZwJcxHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 216CD41612;
	Fri,  2 May 2025 09:39:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6FFCE229
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:39:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 554F060B9F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:39:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v4U2VEtvz8NG for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 May 2025 09:39:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 55518607A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55518607A8
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 55518607A8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 May 2025 09:39:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3FA9160007;
 Fri,  2 May 2025 09:39:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27526C4CEE4;
 Fri,  2 May 2025 09:39:43 +0000 (UTC)
Date: Fri, 2 May 2025 10:39:41 +0100
From: Simon Horman <horms@kernel.org>
To: Brian Vazquez <brianvv@google.com>
Cc: Brian Vazquez <brianvv.kernel@gmail.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, David Decotigny <decot@google.com>,
 Anjali Singhai <anjali.singhai@intel.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 emil.s.tantilov@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>,
 Josh Hay <joshua.a.hay@intel.com>, Luigi Rizzo <lrizzo@google.com>
Message-ID: <20250502093941.GG3339421@horms.kernel.org>
References: <20250501170617.1121247-1-brianvv@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250501170617.1121247-1-brianvv@google.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746178788;
 bh=OTcU+TyYte9xshVPz57Q6Apwcs2oIlxw0u2RikVAXJ8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F/qS5AeO3aUkgzYbtK422mwKQ8LGFgid2UYoNMG4Ql9L9yVYEedacS7T5dVHaFHSj
 R1IRASQL0gusPIM5WdsMxwG47IsOj5gNacezG/2G0pdDDvyIrf+gmqpQM8BxUnia7x
 xUlRARHT8okKYTivPae0gR394TpXZT9ucnvgSBpDO8ocV2c2JGOKjth4BHlab7EQ3o
 84P5LZ5Zoayx0KmXUeXTaJop5UERRT5HUNkhsdnKEB13JsJ9utMyUJUhXQRTUPyVVe
 Fkqy5iM6n+fdeF9jQY/1uASQ8W0dPsT0nfMjTdSXB54PzBbiYNJU3jjx9Txn2hWxpx
 wCZUbdLa/DiLw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=F/qS5AeO
Subject: Re: [Intel-wired-lan] [iwl-net PATCH v3] idpf: fix a race in txq
 wakeup
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

On Thu, May 01, 2025 at 05:06:17PM +0000, Brian Vazquez wrote:
> Add a helper function to correctly handle the lockless
> synchronization when the sender needs to block. The paradigm is
> 
>         if (no_resources()) {
>                 stop_queue();
>                 barrier();
>                 if (!no_resources())
>                         restart_queue();
>         }
> 
> netif_subqueue_maybe_stop already handles the paradigm correctly, but
> the code split the check for resources in three parts, the first one
> (descriptors) followed the protocol, but the other two (completions and
> tx_buf) were only doing the first part and so race prone.
> 
> Luckily netif_subqueue_maybe_stop macro already allows you to use a
> function to evaluate the start/stop conditions so the fix only requires
> the right helper function to evaluate all the conditions at once.
> 
> The patch removes idpf_tx_maybe_stop_common since it's no longer needed
> and instead adjusts separately the conditions for singleq and splitq.
> 
> Note that idpf_tx_buf_hw_update doesn't need to check for resources
> since that will be covered in idpf_tx_splitq_frame.
> 
> To reproduce:
> 
> Reduce the threshold for pending completions to increase the chances of
> hitting this pause by changing your kernel:
> 
> drivers/net/ethernet/intel/idpf/idpf_txrx.h
> 
> -#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 1)
> +#define IDPF_TX_COMPLQ_OVERFLOW_THRESH(txcq)   ((txcq)->desc_count >> 4)
> 
> Use pktgen to force the host to push small pkts very aggressively:
> 
> ./pktgen_sample02_multiqueue.sh -i eth1 -s 100 -6 -d $IP -m $MAC \
>   -p 10000-10000 -t 16 -n 0 -v -x -c 64
> 
> Fixes: 6818c4d5b3c2 ("idpf: add splitq start_xmit")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Josh Hay <joshua.a.hay@intel.com>
> Signed-off-by: Brian Vazquez <brianvv@google.com>
> Signed-off-by: Luigi Rizzo <lrizzo@google.com>
> ---
> v3:
> - Fix typo in commit message
> v2:
> - Fix typos
> - Fix RCT in singleq function
> - No inline in c files
> - Submit to iwl-net and add Fixes tag

Thanks Brian,

This version looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

