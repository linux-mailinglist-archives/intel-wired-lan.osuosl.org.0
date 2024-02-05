Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3D849894
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Feb 2024 12:13:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC13241743;
	Mon,  5 Feb 2024 11:13:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC13241743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707131628;
	bh=XKxakwHPyS2XoHn/ERK+AeaLjAbtEyNowJVlriqJt5w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nvV5iEf70fVb7p6/NC52K0Q0jwrqv5Pw/2jcoawiemVCRNXO3dFxgh6zj3cnIfBak
	 xclyqpDq36YdgwtTmmgGaLG5QXsdmz0Gtb/5Uq+vm2BcicElXybqHkRGYaSI3k/Wzz
	 ANeTgnRa65RQDSqly0Yx9K+kRLyu/tlsSkkMimh8sEOrWiJ2RJCxFFxhENKKJywgWi
	 hwfD9H02f2SIior9pShU7X4CyZQhBNVtwoyG94y6+jDeS0wxeH4lI0KrarfPnIyWHc
	 CjuGHT4sSY4xmqeJHd3dpIVX4txKHLtx9oN7bto7fKN3JHAUOzZDIg636RLedh3m7x
	 M8N9QyNN0exFg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lTyv4LZIhTLk; Mon,  5 Feb 2024 11:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 96A9940168;
	Mon,  5 Feb 2024 11:13:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 96A9940168
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3B4B01BF281
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F28440266
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1F28440266
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uC0bxhXjTkBh for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Feb 2024 11:13:37 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8298A418B1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Feb 2024 11:13:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8298A418B1
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 59BF060FEC;
 Mon,  5 Feb 2024 11:13:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D77B6C433C7;
 Mon,  5 Feb 2024 11:13:34 +0000 (UTC)
Date: Mon, 5 Feb 2024 11:13:32 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20240205111332.GH960600@kernel.org>
References: <20240201154219.607338-1-maciej.fijalkowski@intel.com>
 <20240201154219.607338-2-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201154219.607338-2-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707131616;
 bh=qiyJcgmXr99ZarDMYq7VLCkuujzBIzl3EqIkNIzXRhw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sn8jNGpHH/MLlXJThUYm7xb917OyH2VY7m8M+bLEnFKBBiNHS8qFqbhsXjq59pcR9
 NvrTIwhjXOLBN1yHFdzOdv/BW8KDn5Uu3TaQcJI+3gpSYN2i+GmGR8rpeuyHyOn1Xc
 mz87kxGDILwXHkhhFzneKT6NXnzCwvRdzl60lJH6GI7iUY7rXL+k2J8NCxJnmZQYOG
 SWC63lCXTpon7o10Qt3XnQ7tDkePAkaxSQSLi5y04roI88m7tu4bvfX4tQjoCbOqDS
 1WAAoHcctsj/QHT5K3e5x6VPe2cNVym8R/iU9tNL+BDPtSrStCP0DpIeyWEK1EJ1L/
 il8NId+MlPWEw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=sn8jNGpH
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] i40e: avoid double
 calling i40e_pf_rxq_wait()
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
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 04:42:18PM +0100, Maciej Fijalkowski wrote:
> Currently, when interface is being brought down and
> i40e_vsi_stop_rings() is called, i40e_pf_rxq_wait() is called two times,
> which is wrong. To showcase this scenario, simplified call stack looks
> as follows:
> 
> i40e_vsi_stop_rings()
> 	i40e_control wait rx_q()
> 		i40e_control_rx_q()
> 		i40e_pf_rxq_wait()
> 	i40e_vsi_wait_queues_disabled()
> 		i40e_pf_rxq_wait()  // redundant call
> 
> To fix this, let us s/i40e_control_wait_rx_q/i40e_control_rx_q within
> i40e_vsi_stop_rings().
> 
> Fixes: 65662a8dcdd0 ("i40e: Fix logic of disabling queues")
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

