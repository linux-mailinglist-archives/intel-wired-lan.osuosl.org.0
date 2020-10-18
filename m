Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 907572917A1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Oct 2020 15:37:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0A318226EA;
	Sun, 18 Oct 2020 13:37:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QaGDopQfhoJt; Sun, 18 Oct 2020 13:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58ED3227AA;
	Sun, 18 Oct 2020 13:37:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89B861BF38E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:37:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AE60872B7
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:37:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Coiq2p1GjPVp for <intel-wired-lan@lists.osuosl.org>;
 Sun, 18 Oct 2020 13:37:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 88896871A2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 18 Oct 2020 13:37:48 +0000 (UTC)
IronPort-SDR: x8ryzjzgwGb325Pwe+Zun4uBljPBssljTlcJwF4VpT36nY7PKme+0TmAEr6rmDpLq7JP99WUk5
 eZMBb/nEYBlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9777"; a="231086911"
X-IronPort-AV: E=Sophos;i="5.77,391,1596524400"; d="scan'208";a="231086911"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2020 06:37:43 -0700
IronPort-SDR: GzW+tQO0+IwkIuNWvc/fMMZ2P/vWDPzxdnDd666kL8+SUZR0oPDcCd8lf2L0QIllQnSHNjxJtk
 LaG3zYhL48Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,391,1596524400"; d="scan'208";a="347123180"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga004.fm.intel.com with ESMTP; 18 Oct 2020 06:37:40 -0700
Date: Sun, 18 Oct 2020 15:28:42 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: sven.auhagen@voleatech.de
Message-ID: <20201018132842.GA34104@ranger.igk.intel.com>
References: <20201017071238.95190-1-sven.auhagen@voleatech.de>
 <20201017071238.95190-7-sven.auhagen@voleatech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201017071238.95190-7-sven.auhagen@voleatech.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-wired-lan] [PATCH v2 6/6] igb: avoid transmit queue
 timeout in xdp path
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 17, 2020 at 09:12:38AM +0200, sven.auhagen@voleatech.de wrote:
> From: Sven Auhagen <sven.auhagen@voleatech.de>
> 
> Since we share the transmit queue with the slow path,
> it is possible that we run into a transmit queue timeout.
> This will reset the queue.
> This happens under high load when the fast path is using the
> transmit queue pretty much exclusively.

I'm kinda not leaning towards slow/fast path distinction here, IMHO it
would be better to state that transmit queues are shared between network
stack and XDP, but that's just a rant.

> 
> By setting the transmit queues trans_start variable to jiffies
> in the two xdp xmit functions we avoid the timeout.

Probably a few more words of explanation would help here, specifically I
would say that netdev_start_xmit() sets trans_start to jiffies which is
later utilized by dev_watchdog(), so to avoid timeout, let stack know that
XDP xmit happened by bumping the trans_start within XDP Tx routines.

> 
> Signed-off-by: Sven Auhagen <sven.auhagen@voleatech.de>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index 55e708f75187..4a082c06f48d 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -2916,6 +2916,8 @@ static int igb_xdp_xmit_back(struct igb_adapter *adapter, struct xdp_buff *xdp)
>  
>  	nq = txring_txq(tx_ring);
>  	__netif_tx_lock(nq, cpu);
> +	/* Avoid transmit queue timeout since we share it with the slow path */
> +	nq->trans_start = jiffies;
>  	ret = igb_xmit_xdp_ring(adapter, tx_ring, xdpf);
>  	__netif_tx_unlock(nq);
>  
> @@ -2948,6 +2950,9 @@ static int igb_xdp_xmit(struct net_device *dev, int n,
>  	nq = txring_txq(tx_ring);
>  	__netif_tx_lock(nq, cpu);
>  
> +	/* Avoid transmit queue timeout since we share it with the slow path */
> +	nq->trans_start = jiffies;
> +
>  	for (i = 0; i < n; i++) {
>  		struct xdp_frame *xdpf = frames[i];
>  		int err;
> -- 
> 2.20.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
