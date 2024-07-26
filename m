Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACCC93D6D0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 26 Jul 2024 18:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E61360B66;
	Fri, 26 Jul 2024 16:22:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jbuk6uXTwnxD; Fri, 26 Jul 2024 16:22:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 621DD60B5F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722010945;
	bh=EwRPGjUE7l8Mfk1Ea+fCRoxNXcekBqcBa3z+rZT7eok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ViCumEQ9vw+bWJwQOdOGUYIguxkXhSeuOlqVIOjnv8zs2Xr+4SBxWghqxIzNK6wGe
	 3VgxfqfLdLBYwzYJN/qxP5w4HJiOICPIzJgqEsex9huo2/q4pjYZM8M+t5LNb5azXX
	 0ooV9F+fEtqjnJU+K04pIMmpR5xljSr9bB3nzNZww+mYIhH6aofjOQ/Yua9MLs6Qo6
	 oadNJQr/brOD9mZ8+h7J8MNfTZ1t6Jd+HDBYcama4I6mydMZuT2SZOwx8Fs/8NSR9X
	 nN8Oa+SOIqrB3+rfrUPRlKxieKClrU+a+zpNcM8b2jHe0nHDwVo1ylZCf2E8r4JLlZ
	 yupXZTIyynC1A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 621DD60B5F;
	Fri, 26 Jul 2024 16:22:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4ACB11BF860
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 36E1040F73
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:22:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lOEU_P4EV7zP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 26 Jul 2024 16:22:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 323D740118
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 323D740118
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 323D740118
 for <intel-wired-lan@lists.osuosl.org>; Fri, 26 Jul 2024 16:22:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 8E54ACE181D;
 Fri, 26 Jul 2024 16:22:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 788AAC4AF07;
 Fri, 26 Jul 2024 16:22:16 +0000 (UTC)
Date: Fri, 26 Jul 2024 17:22:14 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240726162214.GQ97837@kernel.org>
References: <20240724134024.2182959-1-aleksander.lobakin@intel.com>
 <20240724134024.2182959-4-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240724134024.2182959-4-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722010938;
 bh=lblTvaDAdZWaoDjm4grsqYSeFcZn4C14e3juMU4I2nA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BbI7viO4hWf6lBQHMjjdE2uCHiBRM7GdPE1YRujJ5Y5kZKTC1B5G/9SgMkhdS00Lk
 vvNhg5bHGqS0v0/YZDlBh7icODIZ8tgRgEMWG0g5MTkTffjnhk6C7y8xH4EMgfg0/V
 +GPfg0tzHfdcjnbfdZ1oU9GgHTFI6NgtygRD6WSZc6tNi3VohLE45GH13QDVLCv4ze
 /YkVIBz1Fzy7d0f6aMgVMDcUxYsG/8HyY/PYfq3lmDoitzGgNwR3VPvIQVhmi/0Upe
 r+TxYTLUjCqtew/bX4u6P5y8UGo0qGdVNmA0b6YaHiaFYj9zG/sUM9+K+7LP7iO1om
 wJguVDg4WEZUw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BbI7viO4
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] idpf: fix UAFs when
 destroying the queues
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
Cc: nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 24, 2024 at 03:40:24PM +0200, Alexander Lobakin wrote:
> The second tagged commit started sometimes (very rarely, but possible)
> throwing WARNs from
> net/core/page_pool.c:page_pool_disable_direct_recycling().
> Turned out idpf frees interrupt vectors with embedded NAPIs *before*
> freeing the queues making page_pools' NAPI pointers lead to freed
> memory before these pools are destroyed by libeth.
> It's not clear whether there are other accesses to the freed vectors
> when destroying the queues, but anyway, we usually free queue/interrupt
> vectors only when the queues are destroyed and the NAPIs are guaranteed
> to not be referenced anywhere.
> 
> Invert the allocation and freeing logic making queue/interrupt vectors
> be allocated first and freed last. Vectors don't require queues to be
> present, so this is safe. Additionally, this change allows to remove
> that useless queue->q_vector pointer cleanup, as vectors are still
> valid when freeing the queues (+ both are freed within one function,
> so it's not clear why nullify the pointers at all).
> 
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Fixes: 90912f9f4f2d ("idpf: convert header split mode to libeth + napi_build_skb()")
> Reported-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

