Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F78DA1A20F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2025 11:43:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 38F3E41E34;
	Thu, 23 Jan 2025 10:43:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l6FN4DUj5EEk; Thu, 23 Jan 2025 10:43:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F0C5414B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1737629013;
	bh=D/WqXxtLsCGyElHF1AzxitL2iMPdio8DMO8OgIsg3Zo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zHW0Q7EO8L+55aVjAH7JWopqVMv/dP42vqZDptHuoS6a8sOim8uG0Ticgd2KkzKZz
	 fX9nYjDVLqXtJSl81pZZLZ7iPhdFiAy5YM2FhgTf+pmOOlpMsDWfAq4147PdNlmszu
	 YP4BZsuiUdwJZpdMbXs1yVIbaKfRR9NdkigCeeJLik0550SsMuGmxkTwimTAozKvPx
	 pT9rsQdNtj7j+3xeN1EmbtO1tRdwkZa7xq1SJcdsjrU/jTpSS9Ly4zFnCGV8PoKvHJ
	 xx6icwSmi3+0wl/yWnPVL8drYGyS+FxRsH51SwGKsxeRulELBVe6Exyk432OKuSbxz
	 EX/NvpNtxMvMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6F0C5414B7;
	Thu, 23 Jan 2025 10:43:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8C20AF08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6D907848B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nHAKqClXb7p7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jan 2025 10:43:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org CB0D0848A0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CB0D0848A0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CB0D0848A0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jan 2025 10:43:30 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C39A85C5489;
 Thu, 23 Jan 2025 10:42:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B340FC4CED3;
 Thu, 23 Jan 2025 10:43:27 +0000 (UTC)
Date: Thu, 23 Jan 2025 10:43:25 +0000
From: Simon Horman <horms@kernel.org>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20250123104325.GK395043@kernel.org>
References: <20250122151046.574061-1-maciej.fijalkowski@intel.com>
 <20250122151046.574061-3-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122151046.574061-3-maciej.fijalkowski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1737629009;
 bh=dGRhaKURQTAwCQirlBEV5EhuzLWRx5fQon9AoRuGIDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UiwVKsH/AVaSZwLZLendFLMiiTkBEo5T5DiMJcqD4Fbmf57g1aXZ+CcViBXN3Zseo
 SCI9RiHYqODBKGcKA95E2UWMIbXB/HtK54C1jRtLyyUFIJSuEVvqQc1dQtU/DicjF0
 vhEyhmWmAI3tk43BVLbXcEuI8obShDBPPZfZ9DCVkR4J9W+oz/XyE4kg3SwXNo03yI
 UTJfQ7IdYtfXpn8+iGZxxhIPKDxjAO17JaBp7tDoMzFPdXm9LDkpgrqJnJ9/QwOvsI
 iQZXJtw75sMpGZrWtkQsMNrPLegWK9YVm0a+Fis/iVlrUiEMxILbRoxLk3hijr1AvI
 8K8P4BM/H9nkA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=UiwVKsH/
Subject: Re: [Intel-wired-lan] [PATCH v4 iwl-net 2/3] ice: gather
 page_count()'s of each frag right before XDP prog call
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
Cc: netdev@vger.kernel.org, xudu@redhat.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 intel-wired-lan@lists.osuosl.org, jmaxwell@redhat.com,
 magnus.karlsson@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 22, 2025 at 04:10:45PM +0100, Maciej Fijalkowski wrote:
> If we store the pgcnt on few fragments while being in the middle of
> gathering the whole frame and we stumbled upon DD bit not being set, we
> terminate the NAPI Rx processing loop and come back later on. Then on
> next NAPI execution we work on previously stored pgcnt.
> 
> Imagine that second half of page was used actively by networking stack
> and by the time we came back, stack is not busy with this page anymore
> and decremented the refcnt. The page reuse algorithm in this case should
> be good to reuse the page but given the old refcnt it will not do so and
> attempt to release the page via page_frag_cache_drain() with
> pagecnt_bias used as an arg. This in turn will result in negative refcnt
> on struct page, which was initially observed by Xu Du.
> 
> Therefore, move the page count storage from ice_get_rx_buf() to a place
> where we are sure that whole frame has been collected, but before
> calling XDP program as it internally can also change the page count of
> fragments belonging to xdp_buff.
> 
> Fixes: ac0753391195 ("ice: Store page count inside ice_rx_buf")
> Reported-and-tested-by: Xu Du <xudu@redhat.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

