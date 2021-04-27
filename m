Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DEBAB36CF8C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Apr 2021 01:22:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B4B560A48;
	Tue, 27 Apr 2021 23:22:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h9SwNsESCchi; Tue, 27 Apr 2021 23:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C701605F1;
	Tue, 27 Apr 2021 23:22:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C12671BF278
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Apr 2021 23:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id AE5BC4030A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Apr 2021 23:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FhfecrkV4VQE for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Apr 2021 23:11:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 625A7402FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Apr 2021 23:11:45 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id h8so31819825edb.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Apr 2021 16:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8MeAGMfgeHTcQrWCgz7DMd0TFO2Z0W2VrqifAfSumtY=;
 b=YElXGtLO0eaPVfSw7qtth17uaWiS3c0e27OcmZ/qifGI8BGUtgjFYV45BkoTXp6RPw
 Ykzi7Wb+LIJjXb4c08wB+4Q0yUKCWEOJ+THzFtDk4gCLNhAcNCgIEaAhC16E46BIzIST
 9ZyLe43IEyZw5Voy/TRAx7WPi3qxwwCeHZlcPfufanPsrS8dHB4U3OT00c3WERTT+LEb
 ZMmVhqE+tlOj+QCH0krNUq2y7AFQOfnzazCC6RqHWmJO6R4GZpOFS7JP60rFz4RgBBta
 LH9w4WTWc+8GuU0PzyMO1kipFfMZFRe8vvAVm4MN18ttIjtMNq3ol2aaEb7oAwpTLoGz
 W1rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8MeAGMfgeHTcQrWCgz7DMd0TFO2Z0W2VrqifAfSumtY=;
 b=mWuoDZB2PGpDbBmg/3hsPqjBzFbOvscRiBNGLRJfzM9rb08g1ioNqYWMlyafyiG6wr
 6zSESDbwPUDDwOp+RjgrP8msRRNkVC+K2j28piCnU2gdi4oLQfZm2gAu0pyHbi2c6gG8
 YLxLyE5IdpkbsKB+ebxNOGKf964IrSl+Z9eBdbnsQAFb4TYeQ53/uGPJsIbSf0sTdoKG
 qbriZzy8dlX/mD42MyPi+4nRW3se1mqhvvZvh4MhhYgq2vwD51N86vYjOl7/sgKo7PMs
 w6ZLnaJnQfWqtcfSoCbmYP8cC7D410/bOLd8lZtUIb1zrIyzC1Y6t1qkd7SpyZCBm/5b
 k42w==
X-Gm-Message-State: AOAM532wKMrg9NNTtBt1nn6o+SpN1gDBAYMo32nF6qyFTgCxnJvrlqjo
 XYZgKRwHCpwzLqYiWB3CfFQZKDndCueZo5PRmc8=
X-Google-Smtp-Source: ABdhPJy1gAiGY7j2SqdaeZxWCcUiGKuryp/um0G4op6vO3r/nLkSv2PhTkJ16EnwwSEisg8Rc8OBTbLND1RBmGYd3J4=
X-Received: by 2002:a05:6402:447:: with SMTP id
 p7mr7183878edw.89.1619565103532; 
 Tue, 27 Apr 2021 16:11:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAMfj=-YEh1ZnLB8zye7i-5Y2S015n0qat+FQ6JW7bFKwBUHBPg@mail.gmail.com>
 <871rax9loz.fsf@kurt>
In-Reply-To: <871rax9loz.fsf@kurt>
From: Tyler S <tylerjstachecki@gmail.com>
Date: Tue, 27 Apr 2021 19:11:32 -0400
Message-ID: <CAMfj=-ZzOLog6NQvgpThSOy_5od_dY4KHd0uojxRxaWQA9kKJg@mail.gmail.com>
To: Kurt Kanzenbach <kurt@linutronix.de>
X-Mailman-Approved-At: Tue, 27 Apr 2021 23:22:46 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v2] igb: Fix XDP with PTP enabled
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
Cc: richardcochran@gmail.com, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, bigeasy@linutronix.de, ilias.apalodimas@linaro.org,
 ast@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.org, lorenzo@kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Apr 26, 2021 at 10:15 AM Kurt Kanzenbach <kurt@linutronix.de> wrote:
>
> On Sun Apr 25 2021, Tyler S wrote:
> > Thanks for this work; I was having trouble using XDP on my I354 NIC until this.
> >
> > Hopefully I have not err'd backporting it to 5.10 -- but I'm seeing
> > jumbo frames dropped after applying this (though as previously
> > mentioned, non-skb/full driver XDP programs do now work).
> >
> > Looking at the code, I'm not sure why that is.
>
> I'm also not sure, yet.
>
> Can you try with version 3 of this patch [1] and see if there are still
> issues with jumbo frames? Can you also share the backported patch for
> v5.10?
>
> Thanks,
> Kurt
>
> [1] - https://lkml.kernel.org/netdev/20210422052617.17267-1-kurt@linutronix.de/

Sorry, I didn't see v3.  I can confirm that v3 fixes the issue I was
seeing with jumbo frames.

The only part of the patch that differs for 5.10 is the hunk I'll
include inline.  Thanks again for your work!

Cheers,
Tyler
@@ -8720,11 +8716,22 @@ static int igb_clean_rx_irq(struct
igb_q_vector *q_vector, const int budget)
                dma_rmb();

                rx_buffer = igb_get_rx_buffer(rx_ring, size, &rx_buf_pgcnt);
+               pktbuf = page_address(rx_buffer->page) + rx_buffer->page_offset;
+
+               /* pull rx packet timestamp if available and valid */
+               if (igb_test_staterr(rx_desc, E1000_RXDADV_STAT_TSIP)) {
+                       timestamp = igb_ptp_rx_pktstamp(rx_ring->q_vector,
+                                                       pktbuf);
+
+                       if (timestamp) {
+                               pkt_offset += IGB_TS_HDR_LEN;
+                               size -= IGB_TS_HDR_LEN;
+                       }
+               }

                /* retrieve a buffer from the ring */
                if (!skb) {
-                       xdp.data = page_address(rx_buffer->page) +
-                                  rx_buffer->page_offset;
+                       xdp.data = pktbuf + pkt_offset;
                        xdp.data_meta = xdp.data;
                        xdp.data_hard_start = xdp.data -
                                              igb_rx_offset(rx_ring);
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
