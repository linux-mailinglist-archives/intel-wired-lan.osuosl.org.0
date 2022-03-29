Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84C6F4EACC7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Mar 2022 14:00:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFB6084269;
	Tue, 29 Mar 2022 12:00:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YqFlwe1Fgpuo; Tue, 29 Mar 2022 12:00:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E1E1881B60;
	Tue, 29 Mar 2022 12:00:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 169E51BF33A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 12:00:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0231D40B1B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 12:00:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gxbRJ3_BtN3R for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Mar 2022 12:00:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1E82D40B0B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Mar 2022 12:00:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648555207; x=1680091207;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W97RVxU6FU90i0ZBblRp2YTYj4F8zwDfNEJUFaHimOo=;
 b=a1NV1fAM4+I2OeF8tq5M/F/iSTnU44OvcyCSQlTzbEGwsmPSj0waJSu5
 1ql2YHlqR6OhplZOQVCvAWLjIn8lQrswQIH++h4XKRDxsfvxMPNJQPPMv
 y+fzbpMe8EJzcmovqQ6aXHh56gRZoDhNazXsO6/ljUlvy0vgcgLb7cx+o
 QrPipfqBivQUxhM/T3g4RkddaDG2KN4rBBzDAN3cUFuJ3x+lybbjcKvww
 uM3CJGQD5zjTwF/8QjHuyPjBfoYeqe4S6blUjNl7SxoCEJA24PFZm2uUt
 e08Ul4OFaJD2rNoKrl2ZVRpZ4JnSFtgGoUtoUCA6+UCKPhbPF0xnSOZ9g g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="256808269"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="256808269"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 05:00:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="604737288"
Received: from boxer.igk.intel.com (HELO boxer) ([10.102.20.173])
 by fmsmga008.fm.intel.com with ESMTP; 29 Mar 2022 05:00:01 -0700
Date: Tue, 29 Mar 2022 14:00:01 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <YkL0wfgyCq5s8vdu@boxer>
References: <20220329102752.1481125-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220329102752.1481125-1-ivecera@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix logic of getting XSK
 pool associated with Tx queue
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
Cc: Song Liu <songliubraving@fb.com>,
 Krzysztof Kazimierczak <krzysztof.kazimierczak@intel.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 John Fastabend <john.fastabend@gmail.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Yonghong Song <yhs@fb.com>,
 Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 mschmidt@redhat.com, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>, poros@redhat.com,
 "open list:XDP \(eXpress Data Path\)" <bpf@vger.kernel.org>,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Mar 29, 2022 at 12:27:51PM +0200, Ivan Vecera wrote:
> Function ice_tx_xsk_pool() used to get XSK buffer pool associated
> with XDP Tx queue returns NULL when number of ordinary Tx queues
> is not equal to num_possible_cpus().
> 
> The function computes XDP Tx queue ID as an expression
> `ring->q_index - vsi->num_xdp_txq` but this is wrong because
> XDP Tx queues are placed after ordinary ones so the correct
> formula is `ring->q_index - vsi->alloc_txq`.
> 
> Prior commit 792b2086584f ("ice: fix vsi->txq_map sizing") number
> of XDP Tx queues was equal to number of ordinary Tx queues so
> the bug in mentioned function was hidden.
> 
> Reproducer:
> host# ethtool -L ens7f0 combined 1
> host# ./xdpsock -i ens7f0 -q 0 -t -N
> samples/bpf/xdpsock_user.c:kick_tx:794: errno: 6/"No such device or address"
> 
>  sock0@ens7f0:0 txonly xdp-drv
>                 pps         pkts        0.00
> rx              0           0
> tx              0           0
> 
> Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
> Fixes: 792b2086584f ("ice: fix vsi->txq_map sizing")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Thanks for this fix! I did exactly the same patch yesterday and it's
already applied to bpf tree:

https://lore.kernel.org/bpf/20220328142123.170157-5-maciej.fijalkowski@intel.com/T/#u

Maciej

> ---
>  drivers/net/ethernet/intel/ice/ice.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index b0b27bfcd7a2..d4f1874df7d0 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -710,7 +710,7 @@ static inline struct xsk_buff_pool *ice_tx_xsk_pool(struct ice_tx_ring *ring)
>  	struct ice_vsi *vsi = ring->vsi;
>  	u16 qid;
>  
> -	qid = ring->q_index - vsi->num_xdp_txq;
> +	qid = ring->q_index - vsi->alloc_txq;
>  
>  	if (!ice_is_xdp_ena_vsi(vsi) || !test_bit(qid, vsi->af_xdp_zc_qps))
>  		return NULL;
> -- 
> 2.34.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
