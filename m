Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B962BFC990
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 16:40:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8250C61090;
	Wed, 22 Oct 2025 14:40:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 28qzUY5xqjJY; Wed, 22 Oct 2025 14:40:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE997610B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761144021;
	bh=QwYTD41bnEDohn/8XOeMJ9X4+HeIBUozBEM2Yuwz+dQ=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7Nuz6zcR4sIgyXV/IIPJ0cnpEbNs87ZgG8L2E3B/96gdY/a+Fp47OEdktXhwIIpnX
	 MwiKNAxPkpgl1xdgIvjr17wt4xHJdQeC30EsnfWQFLwvIjNNmAvaJ38iwbtrG7C3XT
	 XwG00URNsZOAHb3tgTgdBhAR8n0DGTdB2mWgvTSgWnsLJvBYuFhTk42AuoKHs6w/0V
	 HxwCaFlVZxP4hYWAX2S66Jmff0/PiSPg6SYPS37aSaNihsJpuaAwZ2o6zVnYplzlR1
	 dAmPL7h2jeHMbwFkfc/Es8Oq3O8UtawkpgbJnVOPe7oDSPltqJIHH0MFMqP7cQ3ntF
	 kOaYqh7xud3Zw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE997610B3;
	Wed, 22 Oct 2025 14:40:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0E6CB43F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0B2EB82792
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:40:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vM1jbxkPm9Rq for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 14:40:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28DAE8234E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28DAE8234E
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28DAE8234E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 14:40:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3BB2F60209;
 Wed, 22 Oct 2025 14:40:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BACC4C4CEE7;
 Wed, 22 Oct 2025 14:40:15 +0000 (UTC)
Date: Wed, 22 Oct 2025 15:40:13 +0100
From: Simon Horman <horms@kernel.org>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, kuba@kernel.org, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 alok.a.tiwarilinux@gmail.com
Message-ID: <aPjszTp0QCYowpKy@horms.kernel.org>
References: <20251021184108.2390121-1-alok.a.tiwari@oracle.com>
 <20251021184108.2390121-2-alok.a.tiwari@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251021184108.2390121-2-alok.a.tiwari@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1761144017;
 bh=nkhkR23vqQtIHVAcKE96aXuVlmhhYzhUrsNAND0yti8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p64D9qNWqb7aK8J0gfOJV9v/eO5rduNWgM+Lp/Pl+zTqtQwDZHbCWaTsjMVsOR2rO
 Te5JgQfMKBzQN4YUDbaHS3fmgMaR1Z0Zku4r3AzbD1ABdFgf87Z1DYacmS5rvvpxZT
 qKWlX5Db/ceFmmTpYsoLOKhQaipyuPHao6lPtWb9MZhDLgZDWqagKFFJTXTURByyZs
 Zjusj67aSOJvmEA35pdimChD/uZt5PJx22KT/XYMInOIrsK2c+gD2NmJdgOoopITx7
 GSnISG2100shntnbZcfxs3ZL8eutkw7KkZP1gW/3FTk0lzj2/UqsO/SdkCCdl4qftq
 PokvgyP7DvoLw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=p64D9qNW
Subject: Re: [Intel-wired-lan] [PATCH net-next 2/2] idpf: fix typos and
 correct doc comments in idpf driver
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

On Tue, Oct 21, 2025 at 11:40:55AM -0700, Alok Tiwari wrote:

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> index 61e613066140..ffc24a825129 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_singleq_txrx.c
> @@ -1029,7 +1029,7 @@ static void idpf_xdp_run_pass(struct libeth_xdp_buff *xdp,
>   * @rx_q: rx queue to clean
>   * @budget: Total limit on number of packets to process
>   *
> - * Returns true if there's any budget left (e.g. the clean is finished)
> + * Returns number of packets cleaned from this queue

Hi Alok,

Perhaps while this line is being updated it could
also be changed to use "Return:" or "Returns:".

Flagged by ./scripts/kernel-doc -none -Wall

>   */
>  static int idpf_rx_singleq_clean(struct idpf_rx_queue *rx_q, int budget)
>  {
> -- 
> 2.50.1
> 
