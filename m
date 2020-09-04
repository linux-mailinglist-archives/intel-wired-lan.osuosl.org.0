Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B149025D282
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 09:36:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C30402E196;
	Fri,  4 Sep 2020 07:36:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ETNTv-KNzYQs; Fri,  4 Sep 2020 07:36:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 095322E197;
	Fri,  4 Sep 2020 07:36:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACEDC1BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:35:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A7C2986E57
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tInEWLK8UDEA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 07:35:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2CCBB86C24
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 07:35:58 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-8I2tKuALN4GdHpuv0fjZjQ-1; Fri, 04 Sep 2020 03:35:55 -0400
X-MC-Unique: 8I2tKuALN4GdHpuv0fjZjQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0137801AEE;
 Fri,  4 Sep 2020 07:35:53 +0000 (UTC)
Received: from carbon (unknown [10.40.208.42])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0224A18B59;
 Fri,  4 Sep 2020 07:35:43 +0000 (UTC)
Date: Fri, 4 Sep 2020 09:35:42 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Message-ID: <20200904093542.4dc43682@carbon>
In-Reply-To: <05822dfe200c5d581d6a6cad89c1b63bb7a1c566.1599165031.git.lorenzo@kernel.org>
References: <cover.1599165031.git.lorenzo@kernel.org>
 <05822dfe200c5d581d6a6cad89c1b63bb7a1c566.1599165031.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 2/9] xdp: initialize
 xdp_buff mb bit to 0 in all XDP drivers
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
Cc: shayagr@amazon.com, daniel@iogearbox.net, netdev@vger.kernel.org,
 ast@kernel.org, lorenzo.bianconi@redhat.com,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, brouer@redhat.com,
 sameehj@amazon.com, kuba@kernel.org, bpf@vger.kernel.org, davem@davemloft.net,
 echaudro@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu,  3 Sep 2020 22:58:46 +0200
Lorenzo Bianconi <lorenzo@kernel.org> wrote:

> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 0b675c34ce49..20c8fd3cd4a3 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -2298,6 +2298,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  #if (PAGE_SIZE < 8192)
>  	xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, 0);
>  #endif
> +	xdp.mb = 0;
>  
>  	while (likely(total_rx_packets < budget)) {
>  		union ixgbe_adv_rx_desc *rx_desc;

In this ixgbe driver you are smart and init the xdp.mb bit outside the
(like xdp.frame_sz, when frame_sz is constant).   This is a nice
optimization, but the driver developer that adds XDP multi-buffer
support must remember to reset it.  The patch itself is okay, it is
just something to keep in-mind when reviewing/changing drivers.

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
