Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A9B9B193F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Oct 2024 17:38:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F939812C3;
	Sat, 26 Oct 2024 15:38:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mnhPfr8HyFnM; Sat, 26 Oct 2024 15:38:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5BA2F812E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729957087;
	bh=Vxn+LZ4pnA2ForOyFeBAWcXhqjDmr8BMWQeDzXfeQDI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=nzc5kv+DtG0yzZXAb3fK8CVeaYKHJlr1WK6uLjGMVEAtwItH2pFKv41D2tM9DephZ
	 I07xtXrgSULRfIAMMeWy6q50LHfiQnjjBCghjifGboeysfjzegM1sHIzmiiV60/B8u
	 aGHRTTjlVbDxQrKNKpnZ+q1Pktw65J1VstDkx0rX1U/CA+Dn/j7wjj+Ojqozd4U6wt
	 mq8aLlQogdq3HNtwKr3NGoUaj+MkfiFwQASRnLXrLeSPgSgHQcpkNKglmhNgzvamL5
	 7kxVk/so9fIYrsI6UJlr204TPag2JW2fed3zypbUE8hM/Co00RxZcaq/oruhd4+dY9
	 UyOBO9ot/H7sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5BA2F812E5;
	Sat, 26 Oct 2024 15:38:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 125F85C1E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2CE06062C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UKbghJpaO46g for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Oct 2024 15:38:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 21A21605D8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 21A21605D8
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 21A21605D8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Oct 2024 15:38:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 9C494A401E6;
 Sat, 26 Oct 2024 15:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0F5BC4CEC6;
 Sat, 26 Oct 2024 15:37:58 +0000 (UTC)
Date: Sat, 26 Oct 2024 16:37:56 +0100
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <20241026153756.GM1507976@kernel.org>
References: <20241026041249.1267664-1-yuehaibing@huawei.com>
 <20241026041249.1267664-4-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241026041249.1267664-4-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729957082;
 bh=kfIY95pLBR/QjZ2VU50kuWXzRCaY64hreBQnX/RCywY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=l4loFfCDaJRcni7y7zwoZH4ivEXGqEwmWul+6KClw86Um9/PtqHtjzImuR2iSnhlb
 fpoR853BTYJ41Zl7T27EFEPbLnxt9FZPZ3twhiawjpJuFArX/2cvUZc/LShQ9iqu/q
 xnqvpJ5f2kD6rFdemk02bAIr9/64ZMF2uag27ubVXiRyayXIqQHm4AKL9Ll1xPHZ6e
 gzVBspRiUh3XuSjSALbdkxPqxLWN8t63pGvWw8c3HWfYSkydCEEYCnNW2MLh/2YpXi
 rBn8GyDJ9luZIKLh9vVJ5VInoGuh7AaQgCk6gvBner2zmcisABzvatxnkOFSwZShBq
 vl8TLYj56+P+g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=l4loFfCD
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 3/4] ixgbe: Fix passing 0
 to ERR_PTR in ixgbe_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com,
 maciej.fijalkowski@intel.com, hawk@kernel.org, daniel@iogearbox.net,
 jithu.joseph@intel.com, przemyslaw.kitszel@intel.com, john.fastabend@gmail.com,
 ast@kernel.org, linux-kernel@vger.kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com, kuba@kernel.org,
 bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 26, 2024 at 12:12:48PM +0800, Yue Haibing wrote:
> ixgbe_run_xdp() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> ixgbe_clean_rx_irq(). Remove this error pointer handing instead use
> plain int return value.
> 
> Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

Reviewed-by: Simon Horman <horms@kernel.org>

