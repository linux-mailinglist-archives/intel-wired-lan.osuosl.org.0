Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8013F8CA4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 26 Aug 2021 19:04:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 33A1A40734;
	Thu, 26 Aug 2021 17:04:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JrPE8n9C643w; Thu, 26 Aug 2021 17:04:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C77B40738;
	Thu, 26 Aug 2021 17:03:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FF9A1BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 17:03:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F1F6A8276B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 17:03:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R-Pvqpctkr-W for <intel-wired-lan@lists.osuosl.org>;
 Thu, 26 Aug 2021 17:03:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com
 [IPv6:2607:f8b0:4864:20::329])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3CA798105C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 17:03:53 +0000 (UTC)
Received: by mail-ot1-x329.google.com with SMTP id
 a20-20020a0568300b9400b0051b8ca82dfcso4417878otv.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 26 Aug 2021 10:03:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ji2l8jcg46A/WnhV2rmSUQQQmyR8YuNgsAvBjZZkXgU=;
 b=QqtVOuGeSsoKKLJCbLKp1FoCZnmv7B7IEVxL75h7iagpQfChHsJJPdIsvZQ0VQUhTO
 i+AXhEiULKUOgE3Ez6thnLtbtueW4a6jLu2tRZ5wRxJdpuwLTrxLp6ipoxKVGv4siQEH
 OIF2HrjvUA8nSwn/fhZ/G2v0w12dXo6stZVzNXF0YO9UuzoxyBs/J7NJecoQdtAcCtLJ
 44WwCZEIAtnCjTAM2kq/sx1oQEyzBKC/m8D8EjA//Xv3jUnSwZB6L/f+SNzTqNwd6zM2
 NSYL3KxqmhZcIDOrV/vjSU30MX1ag8eZrim6GkQckXo/QbAHklJie+V6LOT2HpkwJmN9
 MilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ji2l8jcg46A/WnhV2rmSUQQQmyR8YuNgsAvBjZZkXgU=;
 b=P+lv1ir5+Ac+4EJY97o06sI8X+Zj3QdZFq0s1vvMI3qoY8ek5V31Evk9bUlAZbBZap
 d5XgXdwBEETAZLDvdewSCAQ/MHj8uuBrXlWL0Qz7bYz+9iR7FwnwtyugBZEu+XrX8nFF
 y9JjJBfS7jRwjHFibh9on/+ldQ4rz6L7OKrPnVFugqsJS6kmIvtHrCYZta4t/mCb7tfx
 z9sjXhLjVZ9lm4HHXC4TXQIM7rMh0hRmv1OxHq+rs4y1dO6p+ksio3K32aZGky55Du4d
 vq5xjgW5mYtriHI83DMWd3zyTsHOdZ8Hs4eYL/z8P9msW+1EpsZOtXU3hRhEbJyhE5eT
 xCpg==
X-Gm-Message-State: AOAM531/NugdL65ASYRRjscupoXPruB/SlYSIecOAY/dWvA5egOiyLmX
 SKvKXJZedl9zhAkEwCQ3tfpUKbV9RzDz6hIPd38=
X-Google-Smtp-Source: ABdhPJxUZ5DK2PNTHVFThXjoRu1Zj+I/cMuF/0Vdmr0TCRbDvsqhzJ7hx9tXjzYK+C0GFC7ykjVjCyiZRluM/fMzEk4=
X-Received: by 2002:a9d:75d5:: with SMTP id c21mr4084684otl.118.1629997432236; 
 Thu, 26 Aug 2021 10:03:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210826141623.8151-1-kerneljasonxing@gmail.com>
 <00890ff4-3264-337a-19cc-521a6434d1d0@gmail.com>
 <860ead37-87f4-22fa-e4f3-5cadd0f2c85c@intel.com>
In-Reply-To: <860ead37-87f4-22fa-e4f3-5cadd0f2c85c@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Fri, 27 Aug 2021 01:03:16 +0800
Message-ID: <CAL+tcoCovfAQmN_c43ScmjpO9D54CKP5XFTpx6VQpwJVxZhAdg@mail.gmail.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH v4] ixgbe: let the xdpdrv work with
 more than 64 cpus
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
Cc: songliubraving@fb.com, kafai@fb.com, Eric Dumazet <eric.dumazet@gmail.com>,
 daniel@iogearbox.net, Jason Xing <xingwanli@kuaishou.com>,
 netdev <netdev@vger.kernel.org>, ast@kernel.org, andrii@kernel.org,
 Shujin Li <lishujin@kuaishou.com>, yhs@fb.com, kpsingh@kernel.org,
 kuba@kernel.org, bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 David Miller <davem@davemloft.net>, LKML <linux-kernel@vger.kernel.org>,
 hawk@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 27, 2021 at 12:41 AM Jesse Brandeburg
<jesse.brandeburg@intel.com> wrote:
>
> On 8/26/2021 9:18 AM, Eric Dumazet wrote:
>
> >> +static inline int ixgbe_determine_xdp_q_idx(int cpu)
> >> +{
> >> +    if (static_key_enabled(&ixgbe_xdp_locking_key))
> >> +            return cpu % IXGBE_MAX_XDP_QS;
> >> +    else
> >> +            return cpu;
> >
> > Even if num_online_cpus() is 8, the returned cpu here could be
> >
> > 0, 32, 64, 96, 128, 161, 197, 224
> >
> > Are we sure this will still be ok ?
>
> I'm not sure about that one myself. Jason?
>
> >
> >> +}
> >> +
> >>  static inline u8 ixgbe_max_rss_indices(struct ixgbe_adapter *adapter)
> >>  {
> >>      switch (adapter->hw.mac.type) {
> >> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> >> index 0218f6c..884bf99 100644
> >> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> >> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_lib.c
> >> @@ -299,7 +299,10 @@ static void ixgbe_cache_ring_register(struct ixgbe_adapter *adapter)
> >>
> >>  static int ixgbe_xdp_queues(struct ixgbe_adapter *adapter)
> >>  {
> >> -    return adapter->xdp_prog ? nr_cpu_ids : 0;
> >> +    int queues;
> >> +
> >> +    queues = min_t(int, IXGBE_MAX_XDP_QS, num_online_cpus());
> >
> > num_online_cpus() might change later...
>
> I saw that too, but I wonder if it doesn't matter to the driver. If a
> CPU goes offline or comes online after the driver loads, we will use
> this logic to try to pick an available TX queue. But this is a
> complicated thing that is easy to get wrong, is there a common example
> of how to get it right?
>

Honestly, I'm a little confused right now. @nr_cpu_ids is the fixed
number which means the total number of cpus the machine has.
I think, using @nr_cpu_ids is safe one way or the other regardless of
whether the cpu goes offline or not. What do you think?

> A possible problem I guess is that if the "static_key_enabled" check
> returned false in the past, we would need to update that if the number
> of CPUs changes, do we need a notifier?
>

Things get complicated. If the number decreases down to
@IXGBE_MAX_XDP_QS (which is 64), the notifier could be useful because
we wouldn't need to use the @tx_lock. I'm wondering if we really need
to implement one notifier for this kind of change?

> Also, now that I'm asking it, I dislike the global as it would apply to
> all ixgbe ports and each PF would increment and decrement it
> independently. Showing my ignorance here, but I haven't seen this
> utility in the kernel before in detail. Not sure if this is "OK" from
> multiple device (with the same driver / global namespace) perspective.
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
