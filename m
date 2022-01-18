Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 904F3491F38
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jan 2022 07:01:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0CE6E60D4E;
	Tue, 18 Jan 2022 06:01:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ftt5S29dagmt; Tue, 18 Jan 2022 06:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE91B60C10;
	Tue, 18 Jan 2022 06:01:39 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 76E711BF34D
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 06:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D4F580DAB
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 06:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PZfn3J9NrjbB for <intel-wired-lan@osuosl.org>;
 Tue, 18 Jan 2022 06:01:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.wantstofly.org (hmm.wantstofly.org [213.239.204.108])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6CD3980C80
 for <intel-wired-lan@osuosl.org>; Tue, 18 Jan 2022 06:01:34 +0000 (UTC)
Received: by mail.wantstofly.org (Postfix, from userid 1000)
 id F28647F078; Tue, 18 Jan 2022 08:01:30 +0200 (EET)
Date: Tue, 18 Jan 2022 08:01:30 +0200
From: Lennert Buytenhek <buytenh@wantstofly.org>
To: Corinna Vinschen <vinschen@redhat.com>
Message-ID: <YeZXuoRa/39zzoEY@wantstofly.org>
References: <20220117182915.1283151-1-vinschen@redhat.com>
 <20220117182915.1283151-4-vinschen@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220117182915.1283151-4-vinschen@redhat.com>
Subject: Re: [Intel-wired-lan] [PATCH 3/3 net-next v5] igb/igc: RX queues:
 fix DMA leak in error case
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
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jan 17, 2022 at 07:29:15PM +0100, Corinna Vinschen wrote:

> When setting up the rx queues, igb and igc neglect to free DMA memory
> in error case.  Add matching dma_free_coherent calls.
> 
> Signed-off-by: Corinna Vinschen <vinschen@redhat.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  drivers/net/ethernet/intel/igc/igc_main.c | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
> index cea89d301bfd..343568d4ff7f 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -4389,6 +4389,7 @@ int igb_setup_rx_resources(struct igb_ring *rx_ring)
>  	return 0;
>  
>  err:
> +	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  	dev_err(dev, "Unable to allocate memory for the Rx descriptor ring\n");
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 56ed0f1463e5..f323cec0b74f 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -540,6 +540,7 @@ int igc_setup_rx_resources(struct igc_ring *rx_ring)
>  	return 0;
>  
>  err:
> +	dma_free_coherent(dev, rx_ring->size, rx_ring->desc, rx_ring->dma);
>  	vfree(rx_ring->rx_buffer_info);
>  	rx_ring->rx_buffer_info = NULL;
>  	netdev_err(ndev, "Unable to allocate memory for Rx descriptor ring\n");

If the vzalloc() call in igc_setup_rx_resources() fails, and we jump
to 'err' before dma_alloc_coherent() was reached, won't dma_free_coherent()
be called inadvertently here?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
