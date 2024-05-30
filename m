Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D208D4305
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 03:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C7539836C8;
	Thu, 30 May 2024 01:40:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rEWV1_TpCoVt; Thu, 30 May 2024 01:40:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0856083A35
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717033223;
	bh=nVlbmZSk9ZlWTNLCXBBkkLspxDvRdWvhxQdVQ/+wgbc=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Z/MwDu/DVzrjJj/fQ0uplOxZImlGoxcoQ2TUTKwnsDU7zqyvJiE6rk6vUZYvgEqzb
	 8895b0UXjb3moz2c01KkTkZuLkJFXc6aonLaBTwHKYKqk0W7xaCXoonqvrQL3zZIv6
	 aS3F/BuUwL0dSZTxZoRBv5kGF0C2RQVUqgfT8MO6aaVdlm7eLNfPL8yL141Auc/JiO
	 t9bwGbyqsIEeIh/o3BvSFdGTiAhfAM/rdwZKCSHTn+wegm/cLSb6M3s4/0AVpoIJWW
	 0OAEOxNs8lsM8Je5nANfOvraDTYsYfLvhoAe/VRYrEvmGlONCN2iDeUhaskvLWS0iJ
	 Tk7hMFQSdPjxQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0856083A35;
	Thu, 30 May 2024 01:40:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8631D406B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3A1CB4136B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:40:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id O6R_QLDmwhUC for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 01:40:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 49B24403AA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49B24403AA
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 49B24403AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 01:40:19 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C3D1CCE18F6;
 Thu, 30 May 2024 01:40:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9478EC113CC;
 Thu, 30 May 2024 01:40:13 +0000 (UTC)
Date: Wed, 29 May 2024 18:40:12 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240529184012.5e999a93@kernel.org>
In-Reply-To: <20240528134846.148890-12-aleksander.lobakin@intel.com>
References: <20240528134846.148890-1-aleksander.lobakin@intel.com>
 <20240528134846.148890-12-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717033214;
 bh=/a3OkwfELwxb5Ut+MgxOZAlCZBTT6NvlJfjqQmhTdWM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=OVS0zkBChjBRfxjrk8h/Y2AmlnvdB+d8eGeHKJMORQ8Bjl8Xa/rn/45y/Q52ptF7V
 Td7y4bX6N1H8YykoITZLPrmj+d6vPHa1DrqcrRrDsX/l47Z9LwW13399gZftI465pU
 V56yNHpriGlaYYgoEjDD/saXWZiuazVXuJB4zTC+G5n+ZWTBR2HqL8P5Totxofpzn5
 26JOioMSPfyw8J89E6RZIwphvXgp3tOltPD8krCXb2xpKzYmdtwWt00nOzbFD6HJ/e
 EySqqyIOuNHU6aXi/NIcVxeWzErvWXkXovJVoAcJlwLPvZM1CHLjiRXI7bGhVWHen/
 GPyjGMqrwsTVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=OVS0zkBC
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 11/12] idpf: convert header
 split mode to libeth + napi_build_skb()
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
Cc: Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 28 May 2024 15:48:45 +0200 Alexander Lobakin wrote:
> Currently, idpf uses the following model for the header buffers:
> 
> * buffers are allocated via dma_alloc_coherent();
> * when receiving, napi_alloc_skb() is called and then the header is
>   copied to the newly allocated linear part.
> 
> This is far from optimal as DMA coherent zone is slow on many systems
> and memcpy() neutralizes the idea and benefits of the header split. Not
> speaking of that XDP can't be run on DMA coherent buffers, but at the
> same time the idea of allocating an skb to run XDP program is ill.
> Instead, use libeth to create page_pools for the header buffers, allocate
> them dynamically and then build an skb via napi_build_skb() around them
> with no memory copy. With one exception...
> When you enable header split, you except you'll always have a separate

                                    accept

> header buffer, so that you could reserve headroom and tailroom only
> there and then use full buffers for the data. For example, this is how
> TCP zerocopy works -- you have to have the payload aligned to PAGE_SIZE.
> The current hardware running idpf does *not* guarantee that you'll
> always have headers placed separately. For example, on my setup, even
> ICMP packets are written as one piece to the data buffers. You can't
> build a valid skb around a data buffer in this case.
> To not complicate things and not lose TCP zerocopy etc., when such thing
> happens, use the empty header buffer and pull either full frame (if it's
> short) or the Ethernet header there and build an skb around it. GRO
> layer will pull more from the data buffer later. This W/A will hopefully
> be removed one day.

Hopefully soon, cause it will prevent you from mapping data buffers to
user space or using DMABUF memory :(
