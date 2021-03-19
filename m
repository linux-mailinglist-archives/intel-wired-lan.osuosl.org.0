Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A89341C05
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Mar 2021 13:15:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EA6440125;
	Fri, 19 Mar 2021 12:15:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j4OBjOXIjfvl; Fri, 19 Mar 2021 12:15:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3BAA24011B;
	Fri, 19 Mar 2021 12:15:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CB3A1BF32B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:15:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EBE804DDE7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:15:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lPJYJegH2BQ6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Mar 2021 12:15:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14F2D4ED86
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 12:15:01 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 x7-20020a17090a2b07b02900c0ea793940so6638984pjc.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Mar 2021 05:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yfSg09eDrchIT/UwJzNK832U/gMwlaFSxHeBUAIORfw=;
 b=kfkdr9IpNqfXqhfwrgiCuaAf1q/faBvEq+SivCvEas5lqUWXYVP13boXnShLjzU3T/
 4IQCijSWiyZgGXcxruuYnRYwcZ9pajwi+NKUDtzdg0SJpNKCfXylknlB5mn89+LQqdp9
 0dFTvVF7PsDds+phWl1vmLE5bYe2R1tdITk/IcpjKfiXb9t73wwumVDHIDajIrien5oZ
 iJcspmtaEvK9KMF0k09XBVkz0YoYhxT/xjqtSiSkAXvpQUmfT8x+gTc0HnB+LoYxnX4S
 fIbnQNJU0JaaZ+s8perUBcwrrRAUpE66tYgoD2WEgkh6H+2Y6bxZS5XmubsD4/7SQ8Pw
 DJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yfSg09eDrchIT/UwJzNK832U/gMwlaFSxHeBUAIORfw=;
 b=dYk91V15d61bzV5iJqilJwGKW80hTZNko7bdjq2vlc1Pz/ys0rmukRVg6KuBa9rC7W
 zZhZwEZu/NBqJ0u0G/NhGCzBMOGEZAGIgbdTWYSO49lLHuJ6FZ8Kw40eJFkxUWplav+h
 BTiS0Hm3cBpe683CE7GL+0ButXKsAUq1bi8MavHJfAHzJ9TURWiDboZJnyQ6ZgyLFk6U
 ZoyHxKCaiyB1p5jchZZc97T30ThQLnV89c0zlVlUghUtr6umgBrEz5Eaklc0z5sr4F9w
 2vjWywplhwe2HBAq4A7gIvCAeHTNKIK5zJGP7iAHU+kRMnN1lSBdWms4iYK3q56gYN8a
 5Org==
X-Gm-Message-State: AOAM533/7MwnLcaK3OSSINQDYQ+fw+A03HV528VpI0Kd57xWS1UTeSJK
 DZbTd7lwm8okT5FYpsw2yy5/IJop9Kq9cLTjuaA=
X-Google-Smtp-Source: ABdhPJymNrL5ukw+vFfzWxFFqPNvtUCfPS6B7YJORd9LJy/iRnZ+Xniwqk7In2/dqIb5FRWkKPVy8RIjaxUvtPX8z5I=
X-Received: by 2002:a17:902:bf92:b029:e6:bc0:25ac with SMTP id
 v18-20020a170902bf92b02900e60bc025acmr14569333pls.49.1616156101426; Fri, 19
 Mar 2021 05:15:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210319094410.3633-1-magnus.karlsson@gmail.com>
 <20210319110023.GA20353@ranger.igk.intel.com>
In-Reply-To: <20210319110023.GA20353@ranger.igk.intel.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Fri, 19 Mar 2021 13:14:50 +0100
Message-ID: <CAJ8uoz3DPRaVswLZ58dTKJ6uJO1pZ6--XhnFFZ1seA8RvSgMVg@mail.gmail.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH intel-net] i40e: fix receiving of
 single packets in xsk zero-copy mode
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
Cc: Network Development <netdev@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Sreedevi Joshi <sreedevi.joshi@intel.com>, "Karlsson,
 Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 19, 2021 at 12:10 PM Maciej Fijalkowski
<maciej.fijalkowski@intel.com> wrote:
>
> On Fri, Mar 19, 2021 at 10:44:10AM +0100, Magnus Karlsson wrote:
> > From: Magnus Karlsson <magnus.karlsson@intel.com>
> >
> > Fix so that single packets are received immediately instead of in
> > batches of 8. If you sent 1 pss to a system, you received 8 packets
>
> pps?

Arghh, yes it should be pps, i.e. packets per second. I wonder what pss is?

> > every 8 seconds instead of 1 packet every second. The problem behind
> > this was that the work_done reporting from the Tx part of the driver
> > was broken. The work_done reporting in i40e controls not only the
> > reporting back to the napi logic but also the setting of the interrupt
> > throttling logic. When Tx or Rx reports that it has more to do,
> > interrupts are throttled or coalesced and when they both report that
> > they are done, interrupts are armed right away. If the wrong work_done
> > value is returned, the logic will start to throttle interrupts in a
> > situation where it should have just enabled them. This leads to the
> > undesired batching behavior seen in user-space.
> >
> > Fix this by returning the correct boolean value from the Tx xsk
> > zero-copy path. Return true if there is nothing to do or if we got
> > fewer packets to process than we asked for. Return false if we got as
> > many packets as the budget since there might be more packets we can
> > process.
> >
> > Fixes: 3106c580fb7c ("i40e: Use batched xsk Tx interfaces to increase performance")
> > Reported-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> > Signed-off-by: Magnus Karlsson <magnus.karlsson@intel.com>
>
> Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>
> > ---
> >  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > index fc32c5019b0f..12ca84113587 100644
> > --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> > @@ -471,7 +471,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >
> >       nb_pkts = xsk_tx_peek_release_desc_batch(xdp_ring->xsk_pool, descs, budget);
> >       if (!nb_pkts)
> > -             return false;
> > +             return true;
> >
> >       if (xdp_ring->next_to_use + nb_pkts >= xdp_ring->count) {
> >               nb_processed = xdp_ring->count - xdp_ring->next_to_use;
> > @@ -488,7 +488,7 @@ static bool i40e_xmit_zc(struct i40e_ring *xdp_ring, unsigned int budget)
> >
> >       i40e_update_tx_stats(xdp_ring, nb_pkts, total_bytes);
> >
> > -     return true;
> > +     return nb_pkts < budget;
> >  }
> >
> >  /**
> >
> > base-commit: c79a707072fe3fea0e3c92edee6ca85c1e53c29f
> > --
> > 2.29.0
> >
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
