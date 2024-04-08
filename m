Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2A489B90E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Apr 2024 09:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ADB2C409E1;
	Mon,  8 Apr 2024 07:48:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ka8ukPTfkeQR; Mon,  8 Apr 2024 07:48:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C546040993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712562517;
	bh=lYa3AETRGu43DEiQhYxZTFZAvQ/cpPANqCuO4mDL3mg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=82yIfbBSiqiiGvysVsFg0RoE9UzMf9lrtgC3akuzSVQm4D+wxLjm8tYR8LcwerQ8v
	 bpfps8tziZ8WqAaXDPxYvwin675o+iaBZjuazyAx7sdu4dM750kfYC5O+o7KqVLOxs
	 MVbGH7ziLckhElrFTFiXbdKbFhjrHblCmIwuVzIq/N4Ri9HvDFGaNE6cDg7SoeinAK
	 Ng8jwy9jCWao/MQh5qbmbL25tRVyV/Ht7dA39FtDHT5ggqpTfzfYfcVYDA6tX1UWuY
	 7NeyRMnWNcA+t07E20rs2ih9kbVx66S6k9qhh8Z+nQUCTN93KtkxghXAvdAcryo1nM
	 TRgOLLFXPLcXQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C546040993;
	Mon,  8 Apr 2024 07:48:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57C991BF489
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 07:48:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 403056058D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 07:48:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n57FXMMAHwse for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Apr 2024 07:48:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org E41A460087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E41A460087
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E41A460087
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Apr 2024 07:48:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B367960E8A;
 Mon,  8 Apr 2024 07:48:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6E45C433C7;
 Mon,  8 Apr 2024 07:48:29 +0000 (UTC)
Date: Mon, 8 Apr 2024 08:48:26 +0100
From: Simon Horman <horms@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20240408074826.GA26556@kernel.org>
References: <20240404160302.3585661-1-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240404160302.3585661-1-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1712562512;
 bh=OyivqxCyCQHaU0TBvZu93VhrYPwd0djlXetBhWNnesg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B5J8RCAsrKzRVEhhwi/e38juo3WpjVWQRnbyNanqNA6q/wEidu68HX91oGo+Wts8M
 HSrpru0oR2wUqZq9D+fZQi6I84bKIyh7Enb7oHQHXWYdlAcylmkepJI1OKJo2scDII
 7o/efqaTf1SyH5XZWL20kh29NdFdsDcTljpDSZIjs8VlSnpwqV0ry3N+ce4m1fp9Z+
 D16nABgcaVDmzyXmXuhbuU+bZkEPTrbPThBBk7MaMb6np+OubsWPXAMM62NcID6MPt
 l4KWRstfel4q0W2nWeYICj5y7GWvzx3pYRowW6oG+TQZXw78gnJX7UUAhBUghxvTSA
 sEBn334ShUFmg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=B5J8RCAs
Subject: Re: [Intel-wired-lan] [PATCH net-next] ip_tunnel: harden copying IP
 tunnel params to userspace
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
Cc: netdev@vger.kernel.org, David Ahern <dsahern@kernel.org>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@linaro.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Apr 04, 2024 at 06:03:02PM +0200, Alexander Lobakin wrote:
> Structures which are about to be copied to userspace shouldn't have
> uninitialized fields or paddings.
> memset() the whole &ip_tunnel_parm in ip_tunnel_parm_to_user() before
> filling it with the kernel data. The compilers will hopefully combine
> writes to it.
> 
> Fixes: 117aef12a7b1 ("ip_tunnel: use a separate struct to store tunnel params in the kernel")
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: https://lore.kernel.org/netdev/5f63dd25-de94-4ca3-84e6-14095953db13@moroto.mountain
> Signed-off-by: Alexander Lobakin <aleksander.lobakin@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

