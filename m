Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACF9B1476
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 20:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2AA8681F70;
	Thu, 12 Sep 2019 18:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ya2fpI3t21MU; Thu, 12 Sep 2019 18:33:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D81183070;
	Thu, 12 Sep 2019 18:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE8891BF847
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:56:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EA31B8758B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v8lpSog86Jlm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 17:56:05 +0000 (UTC)
X-Greylist: delayed 00:05:17 by SQLgrey-1.7.6
Received: from pilot.trilug.org (2098.x.rootbsd.net [208.79.82.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE2168758A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:56:04 +0000 (UTC)
Received: by pilot.trilug.org (Postfix, from userid 8)
 id 500A8169825; Thu, 12 Sep 2019 13:50:46 -0400 (EDT)
Received: from michaelmarley.com
 (cpe-2606-A000-BFC0-90-509-B1D3-C76D-19C7.dyn6.twc.com
 [IPv6:2606:a000:bfc0:90:509:b1d3:c76d:19c7])
 (using TLSv1.2 with cipher ADH-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by pilot.trilug.org (Postfix) with ESMTPSA id 8CED01697EC;
 Thu, 12 Sep 2019 13:50:44 -0400 (EDT)
Received: from michaelmarley.com (localhost [127.0.0.1])
 by michaelmarley.com (Postfix) with ESMTP id 18E69180170;
 Thu, 12 Sep 2019 13:50:43 -0400 (EDT)
Received: from michaelmarley.com ([::1]) by michaelmarley.com with ESMTPA
 id ndTdBXOFel1wLAIAnAHMIA
 (envelope-from <michael@michaelmarley.com>); Thu, 12 Sep 2019 13:50:43 -0400
MIME-Version: 1.0
Date: Thu, 12 Sep 2019 13:50:43 -0400
From: Michael Marley <michael@michaelmarley.com>
To: Steffen Klassert <steffen.klassert@secunet.com>
In-Reply-To: <20190912110144.GS2879@gauss3.secunet.de>
References: <20190912110144.GS2879@gauss3.secunet.de>
User-Agent: Roundcube Webmail/1.4-rc1
Message-ID: <10aeb092a51c85563b37622417de51e3@michaelmarley.com>
X-Sender: michael@michaelmarley.com
X-Mailman-Approved-At: Thu, 12 Sep 2019 18:33:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH] ixgbe: Fix secpath usage for IPsec TX
 offload.
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
Cc: netdev@vger.kernel.org, Shannon Nelson <snelson@pensando.io>,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 2019-09-12 07:01, Steffen Klassert wrote:
> The ixgbe driver currently does IPsec TX offloading
> based on an existing secpath. However, the secpath
> can also come from the RX side, in this case it is
> misinterpreted for TX offload and the packets are
> dropped with a "bad sa_idx" error. Fix this by using
> the xfrm_offload() function to test for TX offload.
> 
> Fixes: 592594704761 ("ixgbe: process the Tx ipsec offload")
> Reported-by: Michael Marley <michael@michaelmarley.com>
> Signed-off-by: Steffen Klassert <steffen.klassert@secunet.com>

Tested-by: Michael Marley <michael@michaelmarley.com>

> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 9bcae44e9883..ae31bd57127c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -36,6 +36,7 @@
>  #include <net/vxlan.h>
>  #include <net/mpls.h>
>  #include <net/xdp_sock.h>
> +#include <net/xfrm.h>
> 
>  #include "ixgbe.h"
>  #include "ixgbe_common.h"
> @@ -8696,7 +8697,7 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff 
> *skb,
>  #endif /* IXGBE_FCOE */
> 
>  #ifdef CONFIG_IXGBE_IPSEC
> -	if (secpath_exists(skb) &&
> +	if (xfrm_offload(skb) &&
>  	    !ixgbe_ipsec_tx(tx_ring, first, &ipsec_tx))
>  		goto out_drop;
>  #endif
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
