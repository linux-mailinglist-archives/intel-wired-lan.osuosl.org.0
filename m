Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD590360BA9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Apr 2021 16:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73C7441504;
	Thu, 15 Apr 2021 14:17:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hBm_BlYiJ-1F; Thu, 15 Apr 2021 14:17:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A3019414EE;
	Thu, 15 Apr 2021 14:17:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6252C1BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:51:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5DB6D4016C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:51:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CKs9elxxLC6X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Apr 2021 12:51:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EFD240129
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Apr 2021 12:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618491102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=m+egjn8p3lm4N8WT7Rqz4QHSvGTjGYcB6Au487i0bKQ=;
 b=NmZCHWJTf8Lf9AcR3Fc5yIBRgWvsRDk2S3zSfxc4oyjaSWy6SQ4ddFe3/LTqIkyF8Fjwi6
 A6JNsHIj65OgdFe4sbWW3rBBFPzKBLrZJyVxC67sFhVrvTCEI7mX5rGNpu/lr3w+5k1UHH
 jwMmMbovXczOWvgLiTNOFwKE6cjZpjs=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-593-Cz96uEqYPjG0x8NmQ1PDqg-1; Thu, 15 Apr 2021 08:51:38 -0400
X-MC-Unique: Cz96uEqYPjG0x8NmQ1PDqg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CDF85107ACE6;
 Thu, 15 Apr 2021 12:51:35 +0000 (UTC)
Received: from carbon (unknown [10.36.110.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9436060CE7;
 Thu, 15 Apr 2021 12:51:31 +0000 (UTC)
Date: Thu, 15 Apr 2021 14:51:28 +0200
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20210415145011.6734d3fb@carbon>
In-Reply-To: <874kg7hhej.fsf@kurt>
References: <20210415092145.27322-1-kurt@linutronix.de>
 <20210415140438.60221f21@carbon> <874kg7hhej.fsf@kurt>
Organization: Red Hat Inc.
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Mailman-Approved-At: Thu, 15 Apr 2021 14:16:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: Fix XDP with PTP enabled
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
 Alexei Starovoitov <ast@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 15 Apr 2021 14:16:36 +0200
Kurt Kanzenbach <kurt@linutronix.de> wrote:

> On Thu Apr 15 2021, Jesper Dangaard Brouer wrote:
> > On Thu, 15 Apr 2021 11:21:45 +0200
> > Kurt Kanzenbach <kurt@linutronix.de> wrote:
> >  
> >> When using native XDP with the igb driver, the XDP frame data doesn't point to
> >> the beginning of the packet. It's off by 16 bytes. Everything works as expected
> >> with XDP skb mode.
> >> 
> >> Actually these 16 bytes are used to store the packet timestamps. Therefore, pull
> >> the timestamp before executing any XDP operations and adjust all other code
> >> accordingly. The igc driver does it like that as well.
> >> 
> >> Tested with Intel i210 card and AF_XDP sockets.  
> >
> > Doesn't the i210 card use the igc driver?
> > This change is for igb driver.  
> 
> Nope. igb is for i210 and igc is for the newer Intel i225 NICs.
> 
> |01:00.0 Ethernet controller: Intel Corporation I210 Gigabit Network Connection (rev 03)
> |[...]
> |        Kernel driver in use: igb
> |        Kernel modules: igb

Thanks a lot for correcting me!

I have a project involving i225+igc (using TSN).  And someone suggested
that I also looked at i210 for TSN.  I've ordered hardware that have
i210 on motherboard (and I will insert my i225 card) so I have a system
with both chips for experimenting with TSN.  I guess, I would have
discovered this eventually when I got the hardware.  Thanks for saving
me from this mistake. Thanks!

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
