Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FFB71A3674
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Apr 2020 17:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D2E4824BB3;
	Thu,  9 Apr 2020 15:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rVc-BWaqjiHb; Thu,  9 Apr 2020 15:01:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0797024BF3;
	Thu,  9 Apr 2020 15:01:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6901BF2BA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 21:48:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 432C684353
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 21:48:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SrpkP4GRlhx3 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  8 Apr 2020 21:48:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B9D738410C
 for <intel-wired-lan@lists.osuosl.org>; Wed,  8 Apr 2020 21:48:50 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id D33C1127D6209;
 Wed,  8 Apr 2020 14:48:46 -0700 (PDT)
Date: Wed, 08 Apr 2020 14:48:45 -0700 (PDT)
Message-Id: <20200408.144845.783523592365109446.davem@davemloft.net>
To: brouer@redhat.com
From: David Miller <davem@davemloft.net>
In-Reply-To: <158634676645.707275.7536684877295305696.stgit@firesoul>
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
 <158634676645.707275.7536684877295305696.stgit@firesoul>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 08 Apr 2020 14:48:47 -0700 (PDT)
X-Mailman-Approved-At: Thu, 09 Apr 2020 15:00:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC v2 26/33] i40e: add XDP frame size
 to driver
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
Cc: willemdebruijn.kernel@gmail.com, ilias.apalodimas@linaro.org,
 zorik@amazon.com, lorenzo@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 gtzalik@amazon.com, saeedm@mellanox.com, intel-wired-lan@lists.osuosl.org,
 dsahern@gmail.com, sameehj@amazon.com, bpf@vger.kernel.org,
 borkmann@iogearbox.net, alexei.starovoitov@gmail.com, akiyano@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesper Dangaard Brouer <brouer@redhat.com>
Date: Wed, 08 Apr 2020 13:52:46 +0200

> diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> index b8496037ef7f..1fb6b1004dcb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> @@ -1507,6 +1507,23 @@ static inline unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
>  	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
>  }
>  
> +static inline unsigned int i40e_rx_frame_truesize(struct i40e_ring *rx_ring,
> +						  unsigned int size)

Please don't use inline in foo.c files.  I noticed you properly elided this in
the ice changes so I wonder why it showed up here :-)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
