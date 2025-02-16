Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A80BA3736F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Feb 2025 10:41:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5515B83704;
	Sun, 16 Feb 2025 09:41:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Woz-fTqfEFmk; Sun, 16 Feb 2025 09:41:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B00D8378A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739698895;
	bh=gsuGKwyYx1pmWvc0HIpPl86T2+PhP+uyDTsEJFzHJS0=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CFuK9aEoXeOXJI+URzBG3T3hLD9HBR8W6vro6P5obA+CoPt77G3tBrNBLK1eiCQGi
	 uyMY0qmeqtfWyz1uEyA0eIAsczByMklj7pFUvXa45SGu4E6wfkBMcBOrX6q2pRchXq
	 VtsK8Avg5B1QE8XMX6WA/RYXKC5C6QgHl2h3/yK0AUaDqs6fn2+786XstwHkeZZlBR
	 68DMYXoxTRvqg8AYMRA7krklzEWCKpuQ7xfqP3NPYctH4JzMwd3hHDVSjhxFRW/adY
	 LHAXNYnVWSmpFY28JNpGkZhKO9nfrqP2el5XfW83hvJSKAyfAjKYvJbXyyX0ZDs7br
	 GoXoTzKdNvA8g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8B00D8378A;
	Sun, 16 Feb 2025 09:41:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 852C6DE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:41:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55542404B8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:41:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hars8II_EyQg for <intel-wired-lan@lists.osuosl.org>;
 Sun, 16 Feb 2025 09:41:32 +0000 (UTC)
X-Greylist: delayed 440 seconds by postgrey-1.37 at util1.osuosl.org;
 Sun, 16 Feb 2025 09:41:31 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0E01940353
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0E01940353
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:203:375::b4; helo=out-180.mta1.migadu.com;
 envelope-from=yanjun.zhu@linux.dev; receiver=<UNKNOWN> 
Received: from out-180.mta1.migadu.com (out-180.mta1.migadu.com
 [IPv6:2001:41d0:203:375::b4])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0E01940353
 for <intel-wired-lan@lists.osuosl.org>; Sun, 16 Feb 2025 09:41:31 +0000 (UTC)
Message-ID: <647895d9-e8d1-4921-b5ba-b38b2176604e@linux.dev>
Date: Sun, 16 Feb 2025 10:33:59 +0100
MIME-Version: 1.0
To: Leon Romanovsky <leon@kernel.org>,
 Steffen Klassert <steffen.klassert@secunet.com>
Cc: Leon Romanovsky <leonro@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
 Ayush Sawal <ayush.sawal@chelsio.com>, Bharat Bhushan
 <bbhushan2@marvell.com>, Eric Dumazet <edumazet@google.com>,
 Geetha sowjanya <gakula@marvell.com>, hariprasad <hkelam@marvell.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Jay Vosburgh <jv@jvosburgh.net>,
 Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org,
 linux-rdma@vger.kernel.org, Louis Peens <louis.peens@corigine.com>,
 netdev@vger.kernel.org, oss-drivers@corigine.com,
 Paolo Abeni <pabeni@redhat.com>, Potnuri Bharat Teja <bharat@chelsio.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Subbaraya Sundeep <sbhatta@marvell.com>,
 Sunil Goutham <sgoutham@marvell.com>, Tariq Toukan <tariqt@nvidia.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Ilia Lin <ilia.lin@kernel.org>
References: <cover.1738778580.git.leon@kernel.org>
 <d2aa8f840b0c81e33239e2a4b126730ae40864f1.1738778580.git.leon@kernel.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Zhu Yanjun <yanjun.zhu@linux.dev>
In-Reply-To: <d2aa8f840b0c81e33239e2a4b126730ae40864f1.1738778580.git.leon@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1739698448;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=gsuGKwyYx1pmWvc0HIpPl86T2+PhP+uyDTsEJFzHJS0=;
 b=WIwXKc4cQEb51TG/CwdrbH2hCT2cSbMqhW7g1nOVxxTESTWSTiM2ZDE4MY7x1kU34dN1aH
 E2OKQHyN+HtUR5ECvy5reJd8E3fDR9Q4IJcWEIbB2Fg5VHs5uoainSVXmZKHqasdl++Fkr
 +7lfReM1YsKH1fTQlY83mSMd+72hs0k=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=WIwXKc4c
Subject: Re: [Intel-wired-lan] [PATCH ipsec-next 4/5] xfrm: provide common
 xdo_dev_offload_ok callback implementation
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

在 2025/2/5 19:20, Leon Romanovsky 写道:
> From: Leon Romanovsky <leonro@nvidia.com>
> 
> Almost all drivers except bond and nsim had same check if device
> can perform XFRM offload on that specific packet. The check was that
> packet doesn't have IPv4 options and IPv6 extensions.
> 
> In NIC drivers, the IPv4 HELEN comparison was slightly different, but
> the intent was to check for the same conditions. So let's chose more
> strict variant as a common base.
> 
> Signed-off-by: Leon Romanovsky <leonro@nvidia.com>
> ---
>   Documentation/networking/xfrm_device.rst      |  3 ++-
>   drivers/net/bonding/bond_main.c               | 16 +++++---------
>   .../net/ethernet/chelsio/cxgb4/cxgb4_main.c   | 21 -------------------
>   .../inline_crypto/ch_ipsec/chcr_ipsec.c       | 16 --------------
>   .../net/ethernet/intel/ixgbe/ixgbe_ipsec.c    | 21 -------------------
>   drivers/net/ethernet/intel/ixgbevf/ipsec.c    | 21 -------------------
>   .../marvell/octeontx2/nic/cn10k_ipsec.c       | 15 -------------
>   .../mellanox/mlx5/core/en_accel/ipsec.c       | 16 --------------
>   .../net/ethernet/netronome/nfp/crypto/ipsec.c | 11 ----------
>   drivers/net/netdevsim/ipsec.c                 | 11 ----------
>   drivers/net/netdevsim/netdevsim.h             |  1 -
>   net/xfrm/xfrm_device.c                        | 15 +++++++++++++
>   12 files changed, 22 insertions(+), 145 deletions(-)
> 
> diff --git a/Documentation/networking/xfrm_device.rst b/Documentation/networking/xfrm_device.rst
> index 66f6e9a9b59a..39bb98939d1f 100644
> --- a/Documentation/networking/xfrm_device.rst
> +++ b/Documentation/networking/xfrm_device.rst
> @@ -126,7 +126,8 @@ been setup for offload, it first calls into xdo_dev_offload_ok() with
>   the skb and the intended offload state to ask the driver if the offload
>   will serviceable.  This can check the packet information to be sure the
>   offload can be supported (e.g. IPv4 or IPv6, no IPv4 options, etc) and
> -return true of false to signify its support.
> +return true of false to signify its support. In case driver doesn't implement

In this commit, remove the functions cxgb4_ipsec_offload_ok, 
ch_ipsec_offload_ok, ixgbe_ipsec_offload_ok, ixgbevf_ipsec_offload_ok, 
cn10k_ipsec_offload_ok, mlx5e_ipsec_offload_ok, nfp_net_ipsec_offload_ok 
and nsim_ipsec_offload_ok, use the function xfrm_dev_offload_ok to do 
the same work.

But in the file xfrm_device.rst, "return true or false to signify its 
support"?

of --> should be "or"

Thanks a lot.
Reviewed-by: Zhu Yanjun <yanjun.zhu@linux.dev>

Zhu Yanjun

> +this callback, the stack provides reasonable defaults.
>   
>   Crypto offload mode:
>   When ready to send, the driver needs to inspect the Tx packet for the
> diff --git a/drivers/net/bonding/bond_main.c b/drivers/net/bonding/bond_main.c
> index e45bba240cbc..bfb55c23380b 100644
> --- a/drivers/net/bonding/bond_main.c
> +++ b/drivers/net/bonding/bond_main.c
> @@ -676,22 +676,16 @@ static void bond_ipsec_free_sa(struct xfrm_state *xs)
>   static bool bond_ipsec_offload_ok(struct sk_buff *skb, struct xfrm_state *xs)
