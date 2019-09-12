Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AAE2B1475
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Sep 2019 20:33:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id BBDC22207F;
	Thu, 12 Sep 2019 18:33:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q7PtrpNTMBz9; Thu, 12 Sep 2019 18:33:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 15758204BD;
	Thu, 12 Sep 2019 18:33:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6878E1BF847
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 602C5861F1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7ARiDjJxIZT6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Sep 2019 17:53:58 +0000 (UTC)
X-Greylist: delayed 00:05:27 by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3436C861EE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 17:53:58 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id u72so13849677pgb.10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Sep 2019 10:53:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=BFrqsYYd6MX03SxV2fPIiM9iN/ZjIu0itl7xUsVpP4M=;
 b=QVWHBAwNh6/PmMctl818/tps3xA0OQXWLLAm8PP8eVrQ0xKkGyuIrvrLgibZ8dw12a
 aXYCcA9YjXvS4DO+QAZN97DtZC001vdcqWSvOzT994OP7T92JM8nym/sCcaDQj74t7Gc
 o2Nz1/CYF26+enlgKyLGwbdYpfw1MF6N3nCogSwSalvLMJdA3Y+4G8o/Do9bM8J8qLo0
 BVeSIOkOACp9FUdD35WG1Mh2UiShnbW8gl5B72gcmW3NIql/ykgyUP/LduDBQKwNHOBh
 4E9j6wkQtPNypqBp3H+1RVHCYMtOzjyUVRYADHTRrqpPZwr9YskL/u/6IAqQK0gb2E29
 cBfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=BFrqsYYd6MX03SxV2fPIiM9iN/ZjIu0itl7xUsVpP4M=;
 b=lb3KXh80k64QaIw8TiSRBwFE/yr6MbxV2UXMGQfLUeXbYla6iefTxDBnE/n+VivTkf
 a1Sy1IlcGJ2Bkyt0v7Qi0AKmPQRQq1flwa56KYLIbvn0VW9CFfGINcB3oV5SIjy1xUTu
 tWxs6XbM7B0DNOjE/Ys7zoY+/bdHEKtQ0G7o7ihuRxVzA8wQYJmOzHASpKhuXMMJyjkD
 6A45O6eJKTAiuOroM/qth9LDZ6cWKOxnEwrGpjQCHdX02br5J9ggqO97DbXJQFjwsMyT
 Y9LYF4DFCPFxHy9pfR20MYtGuXfDdsvNDjOd8AHlwf5EmMt53sg2HCbbrQG1Ciuib9ZB
 7Dqg==
X-Gm-Message-State: APjAAAVZwwDy5ODjqbg4QlR/e7hGC5DXK3k3Q7GTw4UtWLMc4VFWXWZo
 en1MHt6BLrVp/dwdC25Y65Vziw==
X-Google-Smtp-Source: APXvYqwrBHIDGyBOJMmex5fGXu0uCiALFzaPVz+7iLD6f8pBcOy83uGyJUSS3gIJwsmDZwtreSVFew==
X-Received: by 2002:a17:90a:170e:: with SMTP id
 z14mr1442198pjd.119.1568310510505; 
 Thu, 12 Sep 2019 10:48:30 -0700 (PDT)
Received: from Shannons-MacBook-Pro.local ([12.1.37.26])
 by smtp.gmail.com with ESMTPSA id z29sm40246355pff.23.2019.09.12.10.48.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 10:48:29 -0700 (PDT)
To: Steffen Klassert <steffen.klassert@secunet.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20190912110144.GS2879@gauss3.secunet.de>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <72fa19de-0a53-bb95-5f63-1990221c6190@pensando.io>
Date: Thu, 12 Sep 2019 18:48:25 +0100
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20190912110144.GS2879@gauss3.secunet.de>
Content-Language: en-US
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
Cc: netdev@vger.kernel.org, Michael Marley <michael@michaelmarley.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 9/12/19 12:01 PM, Steffen Klassert wrote:
> The ixgbe driver currently does IPsec TX offloading
> based on an existing secpath. However, the secpath
> can also come from the RX side, in this case it is
> misinterpreted for TX offload and the packets are
> dropped with a "bad sa_idx" error. Fix this by using
> the xfrm_offload() function to test for TX offload.

Acked-by: Shannon Nelson <snelson@pensando.io>

>
> Fixes: 592594704761 ("ixgbe: process the Tx ipsec offload")
> Reported-by: Michael Marley <michael@michaelmarley.com>
> Signed-off-by: Steffen Klassert <steffen.klassert@secunet.com>
> ---
>   drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 9bcae44e9883..ae31bd57127c 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -36,6 +36,7 @@
>   #include <net/vxlan.h>
>   #include <net/mpls.h>
>   #include <net/xdp_sock.h>
> +#include <net/xfrm.h>
>   
>   #include "ixgbe.h"
>   #include "ixgbe_common.h"
> @@ -8696,7 +8697,7 @@ netdev_tx_t ixgbe_xmit_frame_ring(struct sk_buff *skb,
>   #endif /* IXGBE_FCOE */
>   
>   #ifdef CONFIG_IXGBE_IPSEC
> -	if (secpath_exists(skb) &&
> +	if (xfrm_offload(skb) &&
>   	    !ixgbe_ipsec_tx(tx_ring, first, &ipsec_tx))
>   		goto out_drop;
>   #endif

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
