Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A688EB75F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Oct 2019 19:41:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C94086807;
	Thu, 31 Oct 2019 18:41:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 662R71vt2zGn; Thu, 31 Oct 2019 18:41:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6BED48687B;
	Thu, 31 Oct 2019 18:41:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D859D1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 17:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D305B203E1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 17:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WSk4kMagg6Sb for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Oct 2019 17:48:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 4D4CC2011B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Oct 2019 17:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1572544122;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sarH5n506MjBGVryT20NOT4A+asB36O1i3CqtoZk8ZQ=;
 b=FYQFKthcc8M+1cpkJfgKBzXnmfaPMvCs4iDvM5qiDdtimT973KpAnPtHbH7Jng9pyKJvY1
 nmrW7fYyI0rlcIrDNochSNY6Tm1pKIB8FRxxuB+V41Zod/tSMWMczpngirkuHGgDnYRt4U
 MbJ8WxlzidpafUY9nIVB6CSee0qq4w8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-256-k7ib80AAMcqFTB2eI7Onyg-1; Thu, 31 Oct 2019 13:48:29 -0400
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01CDD800D49;
 Thu, 31 Oct 2019 17:48:28 +0000 (UTC)
Received: from hmswarspite.think-freely.org (ovpn-120-224.rdu2.redhat.com
 [10.10.120.224])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B80E160852;
 Thu, 31 Oct 2019 17:48:26 +0000 (UTC)
Date: Thu, 31 Oct 2019 13:48:25 -0400
From: Neil Horman <nhorman@redhat.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
Message-ID: <20191031174825.GC11617@hmswarspite.think-freely.org>
References: <cf197ef61703cbaa64ac522cf5d191b4b74f64d6.camel@linux.intel.com>
 <20191031165537.24154.48242.stgit@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20191031165537.24154.48242.stgit@localhost.localdomain>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MC-Unique: k7ib80AAMcqFTB2eI7Onyg-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-Mailman-Approved-At: Thu, 31 Oct 2019 18:41:47 +0000
Subject: Re: [Intel-wired-lan] [next-queue/net-next PATCH] e1000e: Use
 netdev_info instead of pr_info for link messages
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
Cc: zdai@linux.vnet.ibm.com, netdev@vger.kernel.org, smorumu1@in.ibm.com,
 intel-wired-lan@lists.osuosl.org, joe@perches.com, davem@davemloft.net,
 sassmann@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Oct 31, 2019 at 09:58:51AM -0700, Alexander Duyck wrote:
> From: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> 
> Replace the pr_info calls with netdev_info in all cases related to the
> netdevice link state.
> 
> As a result of this patch the link messages will change as shown below.
> Before:
> e1000e: ens3 NIC Link is Down
> e1000e: ens3 NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> After:
> e1000e 0000:00:03.0 ens3: NIC Link is Down
> e1000e 0000:00:03.0 ens3: NIC Link is Up 1000 Mbps Full Duplex, Flow Control: Rx/Tx
> 
> Suggested-by: Joe Perches <joe@perches.com>
> Signed-off-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
> ---
> 
> Since Joe hasn't gotten back to me on if he wanted to do the patch or if
> he wanted me to do it I just went ahead and did it. This should address the
> concerns he had about the message formatting in "e1000e: Use rtnl_lock to
> prevent race".
> 
>  drivers/net/ethernet/intel/e1000e/netdev.c |    9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index ef8ca0c134b0..a1aa48168855 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -4720,7 +4720,7 @@ int e1000e_close(struct net_device *netdev)
>  		e1000_free_irq(adapter);
>  
>  		/* Link status message must follow this format */
> -		pr_info("%s NIC Link is Down\n", netdev->name);
> +		netdev_info(netdev, "NIC Link is Down\n");
>  	}
>  
>  	napi_disable(&adapter->napi);
> @@ -5070,8 +5070,9 @@ static void e1000_print_link_info(struct e1000_adapter *adapter)
>  	u32 ctrl = er32(CTRL);
>  
>  	/* Link status message must follow this format for user tools */
> -	pr_info("%s NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
> -		adapter->netdev->name, adapter->link_speed,
> +	netdev_info(adapter->netdev,
> +		"NIC Link is Up %d Mbps %s Duplex, Flow Control: %s\n",
> +		adapter->link_speed,
>  		adapter->link_duplex == FULL_DUPLEX ? "Full" : "Half",
>  		(ctrl & E1000_CTRL_TFCE) && (ctrl & E1000_CTRL_RFCE) ? "Rx/Tx" :
>  		(ctrl & E1000_CTRL_RFCE) ? "Rx" :
> @@ -5304,7 +5305,7 @@ static void e1000_watchdog_task(struct work_struct *work)
>  			adapter->link_speed = 0;
>  			adapter->link_duplex = 0;
>  			/* Link status message must follow this format */
> -			pr_info("%s NIC Link is Down\n", adapter->netdev->name);
> +			netdev_info(netdev, "NIC Link is Down\n");
>  			netif_carrier_off(netdev);
>  			netif_stop_queue(netdev);
>  			if (!test_bit(__E1000_DOWN, &adapter->state))
> 
Acked-by: Neil Horman <nhorman@tuxdriver.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
