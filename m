Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5201940167E
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Sep 2021 08:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8D7F640241;
	Mon,  6 Sep 2021 06:39:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gz4twAHm3STn; Mon,  6 Sep 2021 06:39:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 696C240180;
	Mon,  6 Sep 2021 06:39:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 626411BF372
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 06:37:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D51080FC6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 06:37:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9OPF29uVZe5p for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Sep 2021 06:37:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4D01D80F6E
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Sep 2021 06:37:36 +0000 (UTC)
Received: from [192.168.0.4] (ip5f5ae911.dynamic.kabel-deutschland.de
 [95.90.233.17])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C480A61E64784;
 Mon,  6 Sep 2021 08:37:29 +0200 (CEST)
To: Feng Zhou <zhoufeng.zf@bytedance.com>
References: <20210903064013.9842-1-zhoufeng.zf@bytedance.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2ee172ab-836c-d464-be59-935030d01f4b@molgen.mpg.de>
Date: Mon, 6 Sep 2021 08:37:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210903064013.9842-1-zhoufeng.zf@bytedance.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] ixgbe: Fix NULL pointer
 dereference in ixgbe_xdp_setup
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
Cc: duanxiongchun@bytedance.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 zhengqi.arch@bytedance.com, kuba@kernel.org, chenying.kernel@bytedance.com,
 intel-wired-lan@lists.osuosl.org, jeffrey.t.kirsher@intel.com,
 songmuchun@bytedance.com, bpf@vger.kernel.org, wangdongdong.6@bytedance.com,
 ast@kernel.org, davem@davemloft.net, magnus.karlsson@intel.com,
 zhouchengming@bytedance.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Feng,


Am 03.09.21 um 08:40 schrieb Feng zhou:

(If you care, in your email client, your last name does not start with a 
capital letter.)

> From: Feng Zhou <zhoufeng.zf@bytedance.com>
> 
> The ixgbe driver currently generates a NULL pointer dereference with
> some machine (online cpus < 63). This is due to the fact that the
> maximum value of num_xdp_queues is nr_cpu_ids. Code is in
> "ixgbe_set_rss_queues"".
> 
> Here's how the problem repeats itself:
> Some machine (online cpus < 63), And user set num_queues to 63 through
> ethtool. Code is in the "ixgbe_set_channels",
> adapter->ring_feature[RING_F_FDIR].limit = count;

For better legibility, you might want to indent code (blocks) by four 
spaces and add blank lines around it (also below).

> It becames 63.

becomes

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

lead*s*?

> Call trace:
> [exception RIP: ixgbe_xdp+368]
> RIP: ffffffffc02a76a0  RSP: ffff9fe16202f8d0  RFLAGS: 00010297
> RAX: 0000000000000000  RBX: 0000000000000020  RCX: 0000000000000000
> RDX: 0000000000000000  RSI: 000000000000001c  RDI: ffffffffa94ead90
> RBP: ffff92f8f24c0c18   R8: 0000000000000000   R9: 0000000000000000
> R10: ffff9fe16202f830  R11: 0000000000000000  R12: ffff92f8f24c0000
> R13: ffff9fe16202fc01  R14: 000000000000000a  R15: ffffffffc02a7530
> ORIG_RAX: ffffffffffffffff  CS: 0010  SS: 0018
>   7 [ffff9fe16202f8f0] dev_xdp_install at ffffffffa89fbbcc
>   8 [ffff9fe16202f920] dev_change_xdp_fd at ffffffffa8a08808
>   9 [ffff9fe16202f960] do_setlink at ffffffffa8a20235
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

Please describe the fix in the commit message.

> Fixes: 4a9b32f30f80 ("ixgbe: fix potential RX buffer starvation for
> AF_XDP")
> Signed-off-by: Feng Zhou <zhoufeng.zf@bytedance.com>
> ---
> Updates since v1:
> - Fix "ixgbe_max_channels" callback so that it will not allow a setting of
> queues to be higher than the num_online_cpus().
> more details can be seen from here:
> https://patchwork.ozlabs.org/project/intel-wired-lan/patch/20210817075407.11961-1-zhoufeng.zf@bytedance.com/
> Thanks to Maciej Fijalkowski for your advice.
> 
>   drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c | 2 +-
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c    | 8 ++++++--
>   2 files changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> index 4ceaca0f6ce3..21321d164708 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
> @@ -3204,7 +3204,7 @@ static unsigned int ixgbe_max_channels(struct ixgbe_adapter *adapter)
>   		max_combined = ixgbe_max_rss_indices(adapter);
>   	}
>   
> -	return max_combined;
> +	return min_t(int, max_combined, num_online_cpus());
>   }
>   
>   static void ixgbe_get_channels(struct net_device *dev,
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 14aea40da50f..5db496cc5070 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -10112,6 +10112,7 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>   	struct ixgbe_adapter *adapter = netdev_priv(dev);
>   	struct bpf_prog *old_prog;
>   	bool need_reset;
> +	int num_queues;
>   
>   	if (adapter->flags & IXGBE_FLAG_SRIOV_ENABLED)
>   		return -EINVAL;
> @@ -10161,11 +10162,14 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>   	/* Kick start the NAPI context if there is an AF_XDP socket open
>   	 * on that queue id. This so that receiving will start.
>   	 */
> -	if (need_reset && prog)
> -		for (i = 0; i < adapter->num_rx_queues; i++)
> +	if (need_reset && prog) {
> +		num_queues = min_t(int, adapter->num_rx_queues,
> +			adapter->num_xdp_queues);
> +		for (i = 0; i < num_queues; i++)
>   			if (adapter->xdp_ring[i]->xsk_pool)
>   				(void)ixgbe_xsk_wakeup(adapter->netdev, i,
>   						       XDP_WAKEUP_RX);
> +	}
>   
>   	return 0;
>   }
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
