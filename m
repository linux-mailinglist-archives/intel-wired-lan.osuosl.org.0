Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3261A9EB4DF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Dec 2024 16:27:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DFCA60834;
	Tue, 10 Dec 2024 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k2FH5t_1VXk1; Tue, 10 Dec 2024 15:27:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CDCB6607BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733844433;
	bh=JkGC+5blfxmb5N5RD0EkxKR43LRovQ4tu/O9bsONPOQ=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=9AKZO/MgBj1MVxELxGRhKnC/kj/tRsvGx23LiB7i+gEsp0ZfILgHMKMD6Eq5VqJzU
	 6hMKKzhtUhJEygw0+KhKC80bX9AMHyX3HRVFmWGnIswN8Q3g7QayYb1AtYu99STc5V
	 Do/q3gXG2RhjeO5qGcDtRGK1EoFqENhgU/hIV3upjV/zaJl/5cRSHAvUxkkfjyCKIv
	 HfZnZ2fynz09VyNLbtoGpc2HGiLY78rmBM+8K2JUMPoqyjD/BZx8nxzeZWRGfLSc0G
	 Vb5OVvUwAtSA7a9r2ugvzJMVQv3UHWGJekHjCNM0APIJLLh/Y9IItrSmF0LLnzfGcP
	 p1Z4IdrGsPWug==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CDCB6607BD;
	Tue, 10 Dec 2024 15:27:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8F7E0E11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 15:27:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 69F7960786
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 15:27:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aIlvejC0tlyA for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Dec 2024 15:27:11 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=helgaas@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7DF6A6068D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7DF6A6068D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7DF6A6068D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Dec 2024 15:27:11 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 986BC5C55AD;
 Tue, 10 Dec 2024 15:26:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 951F7C4CEE1;
 Tue, 10 Dec 2024 15:27:09 +0000 (UTC)
Date: Tue, 10 Dec 2024 09:27:08 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Gerhard Engleder <gerhard@engleder-embedded.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Message-ID: <20241210152708.GA3241347@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241208184950.8281-1-gerhard@engleder-embedded.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1733844429;
 bh=y4LgmUc7RvEv1C+QAjWWd7i3psGBaMi5PzDvn/ejtlM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=YazBtt3eKTZEioZjvB/7KrOkFFytB879q5nzigXjfa5SVTuNPfHnTydupv0cQ9b+T
 bFkyX5aE5FrURxMDx2nJELOie3VE8VB7+eLxMEcAoVPn4juJI7wrAbnkSBjb+7p35G
 Rq5yuO1hJAvR/RXXQIgZyuo0k1kFSBMNBzruasXWAPNGJDKtlWPL+vzgKHUWCrFT8j
 rn95C+YBIicfGVVCvDB60POEZDKp+rkVcrQOadKqw1wqLdiiGw0bgohuP1HwVfbkZy
 zTp28VM7kVh9NJTk4CUZLG5/Ld9guLS6NsQT9JnJnaEIVYxOvBSHpRilmZRqzmIcpJ
 uZdaW17OzMP+Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=YazBtt3e
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] e1000e: Fix real-time
 violations on link up
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

On Sun, Dec 08, 2024 at 07:49:50PM +0100, Gerhard Engleder wrote:
> Link down and up triggers update of MTA table. This update executes many
> PCIe writes and a final flush. Thus, PCIe will be blocked until all writes
> are flushed. As a result, DMA transfers of other targets suffer from delay
> in the range of 50us. This results in timing violations on real-time
> systems during link down and up of e1000e.

These look like PCIe memory writes (not config or I/O writes), which
are posted and do not require Completions.  Generally devices should
not delay acceptance of posted requests for more than 10us (PCIe r6.0,
sec 2.3.1).

Since you mention DMA to/from other targets, maybe there's some kind
of fairness issue in the interconnect, which would suggest a
platform-specific issue that could happen with devices other than
e1000e.

I think it would be useful to get to the root cause of this, or at
least mention the interconnect design where you saw the problem in
case somebody trips over this issue with other devices.

The PCIe spec does have an implementation note that says drivers might
need to restrict the programming model as you do here for designs that
can't process posted requests fast enough.  If that's the case for
e1000e, I would ask Intel whether other related devices might also be
affected.

> A flush after a low enough number of PCIe writes eliminates the delay
> but also increases the time needed for MTA table update. The following
> measurements were done on i3-2310E with e1000e for 128 MTA table entries:
> 
> Single flush after all writes: 106us
> Flush after every write:       429us
> Flush after every 2nd write:   266us
> Flush after every 4th write:   180us
> Flush after every 8th write:   141us
> Flush after every 16th write:  121us
> 
> A flush after every 8th write delays the link up by 35us and the
> negative impact to DMA transfers of other targets is still tolerable.
> 
> Execute a flush after every 8th write. This prevents overloading the
> interconnect with posted writes.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
> Signed-off-by: Gerhard Engleder <eg@keba.com>
> ---
> v2:
> - remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
> ---
>  drivers/net/ethernet/intel/e1000e/mac.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
> index d7df2a0ed629..7d1482a9effd 100644
> --- a/drivers/net/ethernet/intel/e1000e/mac.c
> +++ b/drivers/net/ethernet/intel/e1000e/mac.c
> @@ -331,8 +331,13 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
>  	}
>  
>  	/* replace the entire MTA table */
> -	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
> +	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
>  		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
> +
> +		/* do not queue up too many writes */
> +		if ((i % 8) == 0 && i != 0)
> +			e1e_flush();
> +	}
>  	e1e_flush();
>  }
>  
> -- 
> 2.39.2
> 
