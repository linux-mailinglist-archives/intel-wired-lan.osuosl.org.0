Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 623D2372739
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 May 2021 10:28:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 16E494045F;
	Tue,  4 May 2021 08:28:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3iNNDTmKuXdB; Tue,  4 May 2021 08:28:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6D3B40425;
	Tue,  4 May 2021 08:28:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 56AEB1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 08:28:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4483440136
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 08:28:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wh_Kg_x68mf6 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 May 2021 08:28:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62988400F8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 May 2021 08:28:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620116925;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oCGIoq+q2yEHekhzcWTEQd9G0dS+82wyYCm9Ec+BzMk=;
 b=ErFG8OWZC8YRJNaNUppDIMmp0RK1aTjlnofg6enNHgefvAU0+6PsEmjMXOapvHc/C6shdQ
 I/xKl4pZkU20gBB8pSwYvy496yY0frhKdGCSIyJLDf4FkskbPgQ10bCpOedCvPi/Bwyetc
 3wgGTeoKpiRBonVENNi+YDt/mF+eN0k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-532-O1LMVxDONsGykzhE3i_Ffw-1; Tue, 04 May 2021 04:28:42 -0400
X-MC-Unique: O1LMVxDONsGykzhE3i_Ffw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 741838030D5;
 Tue,  4 May 2021 08:28:39 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 091EA1A866;
 Tue,  4 May 2021 08:28:28 +0000 (UTC)
Date: Tue, 4 May 2021 10:28:27 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20210504102827.342f6302@carbon>
In-Reply-To: <20210503072800.79936-1-kurt@linutronix.de>
References: <20210503072800.79936-1-kurt@linutronix.de>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] [PATCH net v4] igb: Fix XDP with PTP enabled
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
Cc: Richard Cochran <richardcochran@gmail.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Alexei Starovoitov <ast@kernel.org>, Tyler S <tylerjstachecki@gmail.com>,
 brouer@redhat.com, Jakub Kicinski <kuba@kernel.org>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Lorenzo Bianconi <lorenzo@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  3 May 2021 09:28:00 +0200
Kurt Kanzenbach <kurt@linutronix.de> wrote:

> When using native XDP with the igb driver, the XDP frame data doesn't point to
> the beginning of the packet. It's off by 16 bytes. Everything works as expected
> with XDP skb mode.
> 
> Actually these 16 bytes are used to store the packet timestamps. Therefore, pull
> the timestamp before executing any XDP operations and adjust all other code
> accordingly. The igc driver does it like that as well.
> 
> Tested with Intel i210 card and AF_XDP sockets.
> 
> Fixes: 9cbc948b5a20 ("igb: add XDP support")
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>

Thanks for fixing this!

Acked-by: Jesper Dangaard Brouer <brouer@redhat.com>

I expect that we/I will (soon) play with getting this area that is
stored in front of the packet (the XDP data_meta area) described via
BTF.  This way both xdp_frame and AF_XDP can get structured access (e.g.
to the PTP timestamp in this case).

I'll be adding my notes on this project here:
 https://github.com/xdp-project/xdp-project/blob/master/areas/tsn/

Looking forward to collaborate on this with you :-)
-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
