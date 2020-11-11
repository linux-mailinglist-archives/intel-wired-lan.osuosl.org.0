Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DAA8B2AE967
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Nov 2020 08:11:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 696AE2046D;
	Wed, 11 Nov 2020 07:11:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5OsvcuPH+GZK; Wed, 11 Nov 2020 07:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 26C6E22D24;
	Wed, 11 Nov 2020 07:11:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AEB301BF390
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 07:11:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A98FD86591
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 07:11:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SZxrLuvSm4th for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Nov 2020 07:11:50 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 33DFB864D0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Nov 2020 07:11:50 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5af465.dynamic.kabel-deutschland.de
 [95.90.244.101])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 09FF620646221;
 Wed, 11 Nov 2020 08:11:47 +0100 (CET)
To: sven.auhagen@voleatech.de, anthony.l.nguyen@intel.com,
 maciej.fijalkowski@intel.com, kuba@kernel.org
References: <20201019080553.24353-1-sven.auhagen@voleatech.de>
 <20201019080553.24353-4-sven.auhagen@voleatech.de>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <fc1f6aad-b587-25e2-0632-ea43f1032aad@molgen.mpg.de>
Date: Wed, 11 Nov 2020 08:11:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <20201019080553.24353-4-sven.auhagen@voleatech.de>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net v3 3/6] igb: XDP extack message on
 error
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
Cc: nhorman@redhat.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, brouer@redhat.com, davem@davemloft.net,
 sassmann@redhat.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Sven,


Am 19.10.20 um 10:05 schrieb sven.auhagen@voleatech.de:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> Add an extack error message when the RX buffer size is too small
> for the frame size.
> 
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> ---
>   drivers/net/ethernet/intel/igb/igb_main.c | 12 +++++++-----
>   1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 0a9198037b98..088f9ddb0093 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2824,20 +2824,22 @@ static int igb_setup_tc(struct net_device *dev, enum tc_setup_type type,
>   	}
>   }
>   
> -static int igb_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
> +static int igb_xdp_setup(struct net_device *dev, struct netdev_bpf *bpf)
>   {
>   	int i, frame_size = dev->mtu + IGB_ETH_PKT_HDR_PAD;
>   	struct igb_adapter *adapter = netdev_priv(dev);
> +	struct bpf_prog *prog = bpf->prog, *old_prog;
>   	bool running = netif_running(dev);
> -	struct bpf_prog *old_prog;
>   	bool need_reset;
>   
>   	/* verify igb ring attributes are sufficient for XDP */
>   	for (i = 0; i < adapter->num_rx_queues; i++) {
>   		struct igb_ring *ring = adapter->rx_ring[i];
>   
> -		if (frame_size > igb_rx_bufsz(ring))
> +		if (frame_size > igb_rx_bufsz(ring)) {
> +			NL_SET_ERR_MSG_MOD(bpf->extack, "The RX buffer size is too small for the frame size");

Could you please also add both size values to the error message?

>   			return -EINVAL;
> +		}
>   	}
>   
>   	old_prog = xchg(&adapter->xdp_prog, prog);
> @@ -2869,7 +2871,7 @@ static int igb_xdp(struct net_device *dev, struct netdev_bpf *xdp)
>   {
>   	switch (xdp->command) {
>   	case XDP_SETUP_PROG:
> -		return igb_xdp_setup(dev, xdp->prog);
> +		return igb_xdp_setup(dev, xdp);
>   	default:
>   		return -EINVAL;
>   	}
> @@ -6499,7 +6501,7 @@ static int igb_change_mtu(struct net_device *netdev, int new_mtu)
>   			struct igb_ring *ring = adapter->rx_ring[i];
>   
>   			if (max_frame > igb_rx_bufsz(ring)) {
> -				netdev_warn(adapter->netdev, "Requested MTU size is not supported with XDP\n");
> +				netdev_warn(adapter->netdev, "Requested MTU size is not supported with XDP. Max frame size is %d\n", max_frame);
>   				return -EINVAL;
>   			}
>   		}
> 


Kind regards,

Paul


PS: For commit message summaries, statements with verbs in imperative 
mood are quite common [1].

 > igb: Print XDP extack error on too big frame size


[1]: https://chris.beams.io/posts/git-commit/
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
