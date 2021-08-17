Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B643EEB99
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Aug 2021 13:25:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 150C36080B;
	Tue, 17 Aug 2021 11:25:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aqUJi-IsC-lm; Tue, 17 Aug 2021 11:25:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72C62607FC;
	Tue, 17 Aug 2021 11:25:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 410C41BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:25:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2DE30402AC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:25:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bVRwYO9RBZT6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Aug 2021 11:25:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 77AD34032C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Aug 2021 11:25:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10078"; a="215771513"
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="215771513"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2021 04:25:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,328,1620716400"; d="scan'208";a="449226687"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga007.fm.intel.com with ESMTP; 17 Aug 2021 04:25:31 -0700
Date: Tue, 17 Aug 2021 13:10:47 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Feng zhou <zhoufeng.zf@bytedance.com>
Message-ID: <20210817111047.GA8143@ranger.igk.intel.com>
References: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210817075407.11961-1-zhoufeng.zf@bytedance.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix NULL pointer dereference
 in ixgbe_xdp_setup
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
Cc: wangdongdong.6@bytedance.com, linux-kernel@vger.kernel.org, hawk@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 zhengqi.arch@bytedance.com, chenying.kernel@bytedance.com,
 zhouchengming@bytedance.com, jeffrey.t.kirsher@intel.com,
 songmuchun@bytedance.com, kuba@kernel.org, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net,
 magnus.karlsson@intel.com, duanxiongchun@bytedance.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 17, 2021 at 03:54:07PM +0800, Feng zhou wrote:
> From: Feng Zhou <zhoufeng.zf@bytedance.com>
> 
> The ixgbe driver currently generates a NULL pointer dereference with
> some machine (online cpus < 63). This is due to the fact that the
> maximum value of num_xdp_queues is nr_cpu_ids. Code is in
> "ixgbe_set_rss_queues"".

That's a good catch, but we should fix set channels callback so that it
will not allow a setting of queues to be higher than the
num_online_cpus().

Please also include the tree in the patch subject that you're directing
the patch to.

I'd be also thankful if you Cc me on Intel XDP related patches.
Thanks!

> 
> Here's how the problem repeats itself:
> Some machine (online cpus < 63), And user set num_queues to 63 through
> ethtool. Code is in the "ixgbe_set_channels",
> adapter->ring_feature[RING_F_FDIR].limit = count;
> It becames 63.
> When user use xdp, "ixgbe_set_rss_queues" will set queues num.
> adapter->num_rx_queues = rss_i;
> adapter->num_tx_queues = rss_i;
> adapter->num_xdp_queues = ixgbe_xdp_queues(adapter);
> And rss_i's value is from
> f = &adapter->ring_feature[RING_F_FDIR];
> rss_i = f->indices = f->limit;
> So "num_rx_queues" > "num_xdp_queues", when run to "ixgbe_xdp_setup",
> for (i = 0; i < adapter->num_rx_queues; i++)
> 	if (adapter->xdp_ring[i]->xsk_umem)
> lead to panic.
> Call trace:
> [exception RIP: ixgbe_xdp+368]
> RIP: ffffffffc02a76a0  RSP: ffff9fe16202f8d0  RFLAGS: 00010297
> RAX: 0000000000000000  RBX: 0000000000000020  RCX: 0000000000000000
> RDX: 0000000000000000  RSI: 000000000000001c  RDI: ffffffffa94ead90
> RBP: ffff92f8f24c0c18   R8: 0000000000000000   R9: 0000000000000000
> R10: ffff9fe16202f830  R11: 0000000000000000  R12: ffff92f8f24c0000
> R13: ffff9fe16202fc01  R14: 000000000000000a  R15: ffffffffc02a7530
> ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>  7 [ffff9fe16202f8f0] dev_xdp_install at ffffffffa89fbbcc
>  8 [ffff9fe16202f920] dev_change_xdp_fd at ffffffffa8a08808
>  9 [ffff9fe16202f960] do_setlink at ffffffffa8a20235
> 10 [ffff9fe16202fa88] rtnl_setlink at ffffffffa8a20384
> 11 [ffff9fe16202fc78] rtnetlink_rcv_msg at ffffffffa8a1a8dd
> 12 [ffff9fe16202fcf0] netlink_rcv_skb at ffffffffa8a717eb
> 13 [ffff9fe16202fd40] netlink_unicast at ffffffffa8a70f88
> 14 [ffff9fe16202fd80] netlink_sendmsg at ffffffffa8a71319
> 15 [ffff9fe16202fdf0] sock_sendmsg at ffffffffa89df290
> 16 [ffff9fe16202fe08] __sys_sendto at ffffffffa89e19c8
> 17 [ffff9fe16202ff30] __x64_sys_sendto at ffffffffa89e1a64
> 18 [ffff9fe16202ff38] do_syscall_64 at ffffffffa84042b9
> 19 [ffff9fe16202ff50] entry_SYSCALL_64_after_hwframe at ffffffffa8c0008c
> 
> Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for
> AF_XDP")
> Signed-off-by: Feng Zhou <zhoufeng.zf@bytedance.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 14aea40da50f..5db496cc5070 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -10112,6 +10112,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>  	struct ixgbe_adapter *adapter = netdev_priv(dev);
>  	struct bpf_prog *old_prog;
>  	bool need_reset;
> +	int num_queues;
>  
>  	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
>  		return -EINVAL;
> @@ -10161,11 +10162,14 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>  	/* Kick start the NAPI context if there is an AF_XDP socket open
>  	 * on that queue id. This so that receiving will start.
>  	 */
> -	if (need_reset && prog)
> -		for (i = 0; i < adapter->num_rx_queues; i++)
> +	if (need_reset && prog) {
> +		num_queues = min_t(int, adapter->num_rx_queues,
> +			adapter->num_xdp_queues);
> +		for (i = 0; i < num_queues; i++)
>  			if (adapter->xdp_ring[i]->xsk_pool)
>  				(void)ixgbe_xsk_wakeup(adapter->netdev, i,
>  						       XDP_WAKEUP_RX);
> +	}
>  
>  	return 0;
>  }
> -- 
> 2.11.0
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
