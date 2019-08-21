Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADF596EBF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Aug 2019 03:17:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1F35F234B3;
	Wed, 21 Aug 2019 01:17:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mbq6HmiLJubv; Wed, 21 Aug 2019 01:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 245D5231A1;
	Wed, 21 Aug 2019 01:17:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9089D1BF31B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 01:17:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8BAEB230A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 01:17:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vXUjmjx7hEnE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Aug 2019 01:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by silver.osuosl.org (Postfix) with ESMTPS id A6DC422FF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Aug 2019 01:17:12 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id z3so1351840iog.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Aug 2019 18:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kZWHrTprV1/7KUdKW3G6OHYWGjOaGD0IoU996R//irc=;
 b=PW/FNmKOjoHqHBgeKuzcejPrWtquvNRR8hFw19cBinEnE7gl0RdKyYw2XhZFsMK5l8
 jSWcbl+meQnv7sxj8jqKKU3UIX3V+6MXUy8oV7zb9opsXDeeAi4xDzQRHCGUp6E7iFrN
 8bWY7qXYx+av2KfejCyBNsCYm3VxnL7YaA6eajUZ3RFxY6mAR/YLmt003MKqW0/tIbX1
 qcLZKcc7MA7q9HnC9CmAv6ZQxtd3J9rVvcvNdIWPW4hm+wlvNikXZqVM4e7cOCiD4/vZ
 DnA2tCTB5rUV7i43BoOjjvGGEWYorK7nKtvSlDicQz7tL3nrLpg8pa1gaUgFwVF2TwCF
 nYdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kZWHrTprV1/7KUdKW3G6OHYWGjOaGD0IoU996R//irc=;
 b=hAcoXpSUSQydKrjHigfTYR+dh1G4DgMFSCCCtXA1h93ubOwFwCLj9QjZlP8iBfW09n
 wYK5KndWzyrBhfENPQNUBgiShGiwLV1FQMvyYJU5jDhz8qN++QXA6m0SVmebFU2Gp30+
 3ht+aycJjn5txO6O7HpPGD2gtY4HlW2F6a6p2EejSluw5RP/vACQZobXW96eZjyveRNJ
 OUXN7tCYjpPSf6mnW6cyhHBQuAVz1avSLx3d7oar6p10t3bcxYKE3Om5fFre7z+3cnVv
 Mrt186PaycHANozLUOXnhvYICu4s7Cq57zqsbDwbt0ufnfUjIpexB5/3ofLvtnawZ+X/
 Ioug==
X-Gm-Message-State: APjAAAVP4YkaDHW7qF08W+3PFR3dDHSqVjsM8mSnx4mB5ZBWT4r6z5AC
 XQcnLNZ2lNMQV16n63U/AXk7aB4A2CnIJT0LFHo=
X-Google-Smtp-Source: APXvYqwKPD7A/87E2z38qYXby7iIyyIj1fffBmYKZ1eCq5AuMAqrR+2V+Rth31D1/5dIoKoaLHfgabFG9o2gT1w9NOY=
X-Received: by 2002:a5d:8b47:: with SMTP id c7mr24228155iot.42.1566350231784; 
 Tue, 20 Aug 2019 18:17:11 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190820151644eucas1p179d6d1da42bb6be0aad8f58ac46624ce@eucas1p1.samsung.com>
 <20190820151611.10727-1-i.maximets@samsung.com>
 <CAKgT0Udn0D0_f=SOH2wpBRWV_u4rb1Qe2h7gguXnRNzJ_VkRzg@mail.gmail.com>
 <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
In-Reply-To: <625791af-c656-1e42-b60e-b3a5cedcb4c4@samsung.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Tue, 20 Aug 2019 18:17:00 -0700
Message-ID: <CAKgT0Uc27+ucd=a_sgTmv5g7_+ZTg1zK4isYJ0H7YWQj3d=Ejg@mail.gmail.com>
To: Ilya Maximets <i.maximets@samsung.com>
Subject: Re: [Intel-wired-lan] [PATCH net] ixgbe: fix double clean of tx
 descriptors with xdp
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
Cc: Jakub Kicinski <jakub.kicinski@netronome.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 William Tu <u9012063@gmail.com>, LKML <linux-kernel@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>, bpf@vger.kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Eelco Chaudron <echaudro@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 20, 2019 at 8:58 AM Ilya Maximets <i.maximets@samsung.com> wrote:
>
> On 20.08.2019 18:35, Alexander Duyck wrote:
> > On Tue, Aug 20, 2019 at 8:18 AM Ilya Maximets <i.maximets@samsung.com> wrote:
> >>
> >> Tx code doesn't clear the descriptor status after cleaning.
> >> So, if the budget is larger than number of used elems in a ring, some
> >> descriptors will be accounted twice and xsk_umem_complete_tx will move
> >> prod_tail far beyond the prod_head breaking the comletion queue ring.
> >>
> >> Fix that by limiting the number of descriptors to clean by the number
> >> of used descriptors in the tx ring.
> >>
> >> Fixes: 8221c5eba8c1 ("ixgbe: add AF_XDP zero-copy Tx support")
> >> Signed-off-by: Ilya Maximets <i.maximets@samsung.com>
> >
> > I'm not sure this is the best way to go. My preference would be to
> > have something in the ring that would prevent us from racing which I
> > don't think this really addresses. I am pretty sure this code is safe
> > on x86 but I would be worried about weak ordered systems such as
> > PowerPC.
> >
> > It might make sense to look at adding the eop_desc logic like we have
> > in the regular path with a proper barrier before we write it and after
> > we read it. So for example we could hold of on writing the bytecount
> > value until the end of an iteration and call smp_wmb before we write
> > it. Then on the cleanup we could read it and if it is non-zero we take
> > an smp_rmb before proceeding further to process the Tx descriptor and
> > clearing the value. Otherwise this code is going to just keep popping
> > up with issues.
>
> But, unlike regular case, xdp zero-copy xmit and clean for particular
> tx ring always happens in the same NAPI context and even on the same
> CPU core.
>
> I saw the 'eop_desc' manipulations in regular case and yes, we could
> use 'next_to_watch' field just as a flag of descriptor existence,
> but it seems unnecessarily complicated. Am I missing something?
>

So is it always in the same NAPI context?. I forgot, I was thinking
that somehow the socket could possibly make use of XDP for transmit.

As far as the logic to use I would be good with just using a value you
are already setting such as the bytecount value. All that would need
to happen is to guarantee that the value is cleared in the Tx path. So
if you clear the bytecount in ixgbe_clean_xdp_tx_irq you could
theoretically just use that as well to flag that a descriptor has been
populated and is ready to be cleaned. Assuming the logic about this
all being in the same NAPI context anyway you wouldn't need to mess
with the barrier stuff I mentioned before.

- Alex
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
