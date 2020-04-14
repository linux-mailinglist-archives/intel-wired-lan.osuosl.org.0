Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E7D1A891D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Apr 2020 20:20:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8F5A221FF8;
	Tue, 14 Apr 2020 18:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9uZ8+Xa8j9-S; Tue, 14 Apr 2020 18:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E40821546;
	Tue, 14 Apr 2020 18:20:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 978A91BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 10:16:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F06E847D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 10:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AVL_d3hJACP2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Apr 2020 10:16:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B734084713
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2020 10:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586859412;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mtn8Wer36F66lv1oVM1/nLcmPFI938b9NPEjtqQ2+fs=;
 b=G58GvTEr+UE2jj1R4WiJ8IlWzipgvc5lYZ028eG5CVnQIH86i2hDjdMTD/X4vh+rrXyuwD
 68V5E+HHifWaXWotLU/6UGEGPzxftVSL0U8rHQ3IgJFLv5pENSUGRa4J//DUPtmppMft/C
 jhBjVw56KDia/9h5mrWVvwKUw5DHXI8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-380-AZfUOMCuO--X4173cUufdw-1; Tue, 14 Apr 2020 06:16:47 -0400
X-MC-Unique: AZfUOMCuO--X4173cUufdw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3B3DDDBB1;
 Tue, 14 Apr 2020 10:16:45 +0000 (UTC)
Received: from carbon (unknown [10.40.208.6])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A1C3D5C1B0;
 Tue, 14 Apr 2020 10:16:34 +0000 (UTC)
Date: Tue, 14 Apr 2020 12:16:33 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: David Miller <davem@davemloft.net>
Message-ID: <20200414121633.0461ece4@carbon>
In-Reply-To: <20200408.144845.783523592365109446.davem@davemloft.net>
References: <158634658714.707275.7903484085370879864.stgit@firesoul>
 <158634676645.707275.7536684877295305696.stgit@firesoul>
 <20200408.144845.783523592365109446.davem@davemloft.net>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Tue, 14 Apr 2020 18:20:42 +0000
Subject: Re: [Intel-wired-lan] [PATCH RFC v2 26/33] i40e: add XDP frame size
 to driver
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
Cc: willemdebruijn.kernel@gmail.com, ilias.apalodimas@linaro.org,
 zorik@amazon.com, lorenzo@kernel.org, netdev@vger.kernel.org, toke@redhat.com,
 brouer@redhat.com, gtzalik@amazon.com, saeedm@mellanox.com,
 intel-wired-lan@lists.osuosl.org, dsahern@gmail.com, sameehj@amazon.com,
 bpf@vger.kernel.org, borkmann@iogearbox.net, alexei.starovoitov@gmail.com,
 akiyano@amazon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 08 Apr 2020 14:48:45 -0700 (PDT)
David Miller <davem@davemloft.net> wrote:

> From: Jesper Dangaard Brouer <brouer@redhat.com>
> Date: Wed, 08 Apr 2020 13:52:46 +0200
> 
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > index b8496037ef7f..1fb6b1004dcb 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
> > @@ -1507,6 +1507,23 @@ static inline unsigned int i40e_rx_offset(struct i40e_ring *rx_ring)
> >  	return ring_uses_build_skb(rx_ring) ? I40E_SKB_PAD : 0;
> >  }
> >  
> > +static inline unsigned int i40e_rx_frame_truesize(struct i40e_ring *rx_ring,
> > +						  unsigned int size)  
> 
> Please don't use inline in foo.c files.  I noticed you properly elided this in
> the ice changes so I wonder why it showed up here :-)

Yes, I know I should not do this.  It got here by copy-paste accident,
as I first had ixgbe function in a header file, and later I decided to
move this into the ixgbe C-file, but I had already copy-pasted this
into i40e driver ;-)

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
