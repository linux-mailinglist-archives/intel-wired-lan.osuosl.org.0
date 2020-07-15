Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 664222216BC
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2020 23:02:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 139278AF11;
	Wed, 15 Jul 2020 21:02:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id miZDwL32G-LP; Wed, 15 Jul 2020 21:02:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 514908B09F;
	Wed, 15 Jul 2020 21:02:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03F4E1BF40F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:02:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F38FB8AD61
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:02:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m+rXBfA9Q63D for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2020 21:02:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com
 [209.85.222.173])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5358A8AD5B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 21:02:38 +0000 (UTC)
Received: by mail-qk1-f173.google.com with SMTP id j80so3311978qke.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2020 14:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HcfXxbBjcw3eikcKaHhGf3FP9CedzkXPE03UeYpW8LE=;
 b=Wj6l20fjxQ8R+Vhf46pRwzbxVVX119XU+nBT6IRaazceCrTvuJpV2vJ0NCXg0fotL7
 KEWSqi8NKfGw6BO1k1CVvGt6Jfm/wd0ox4+pP1ZLgxf6lH8N5dDB9A5U1FqBfCtjrDXr
 dRZSW4c0T8ySzNWcQXs+Eu27/nO47dhTYmghp4Q/JYusXec2L5nSKf7/VaWyit+eoaxk
 9sc1C59U9KffNkW0cE9xniNeVnYQXpvo/R+MNpingIEv2BGgBvLqXhyIk99+yy9T6OHy
 mF+uwuHW8QHsBNqqz4BArrqbiOMOZBKadrKLs/UdePy/R3F6SVjBv92NrDF/pUKO1eoM
 jjxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HcfXxbBjcw3eikcKaHhGf3FP9CedzkXPE03UeYpW8LE=;
 b=Eto+kCaesNVZq6yS3qyfF+XURY0vogXMKvKK9xQFRX8eY5dxsU90VuUfLlV5YpAto+
 4uSOjHz4P2/xk4fG0UKoZ9YsxtJ4rMEGWimD9/ApvBnzP8HVmEec6Z8n5BmBswBxTdMt
 bQevP6Q89KUmFXf8K3JQKnrlqwYuCgcGEpgMMysA1Oe5+cgCbJRBfaT1D68dvb4q2zkn
 /tV6UlVI+d9ZfFgvM3vNm0Dgege9N0wWkw3CA6GFwceBCxtDbUpglTok32HPxMhnaaES
 dTXL5NegP4xX6AL728qga7bLjs1+gJNoG/h7RnNzlkIaHaUSR7XrV0xq6u/kmIJDKX69
 KE/w==
X-Gm-Message-State: AOAM531/dal6hSZggr6DH9oGqhTR0mgEBZDiTBozYOV7T2rnoMigRlQp
 oPFZDGg1Cfyk8j8PENxC5TkLqyro4uhi2AHti+Q=
X-Google-Smtp-Source: ABdhPJzJEdgRD7OM7T75wCnwDyWz3IR/qibDggVnEsd5Dnnuh8oDLjBshSOYOf9PIPRHNPLdx3A2TwDhu02UUd3XJ7M=
X-Received: by 2002:a37:6449:: with SMTP id y70mr951760qkb.435.1594846957080; 
 Wed, 15 Jul 2020 14:02:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAA85sZvKNXCo5bB5a6kKmsOUAiw+_daAVaSYqNW6QbSBJ0TcyQ@mail.gmail.com>
 <CAA85sZua6Q8UR7TfCGO0bV=VU0gKtqj-8o_mqH38RpKrwYZGtg@mail.gmail.com>
 <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200715133136.5f63360c@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 15 Jul 2020 23:02:26 +0200
Message-ID: <CAA85sZu09Z4gydJ8rAO_Ey0zqx-8Lg28=fBJ=FxFnp6cetNd3g@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [Intel-wired-lan] NAT performance issue 944mbit -> ~40mbit
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
Cc: Linux Kernel Network Developers <netdev@vger.kernel.org>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 15, 2020 at 10:31 PM Jakub Kicinski <kuba@kernel.org> wrote:
> On Wed, 15 Jul 2020 22:05:58 +0200 Ian Kumlien wrote:
> > After a  lot of debugging it turns out that the bug is in igb...
> >
> > driver: igb
> > version: 5.6.0-k
> > firmware-version:  0. 6-1
> >
> > 03:00.0 Ethernet controller: Intel Corporation I211 Gigabit Network
> > Connection (rev 03)
>
> Unclear to me what you're actually reporting. Is this a regression
> after a kernel upgrade? Compared to no NAT?

It only happens on "internet links"

Lets say that A is client with ibg driver, B is a firewall running NAT
with ixgbe drivers, C is another local node with igb and
D is a remote node with a bridge backed by a bnx2 interface.

A -> B -> C is ok (B and C is on the same switch)

A -> B -> D -- 32-40mbit

B -> D 944 mbit
C -> D 944 mbit

A' -> D ~933 mbit (A with realtek nic -- also link is not idle atm)

Can it be a timing issue? this is on a AMD Ryzen 9 system - I have
tcpdumps but i doubt that they'll help...

> > It's interesting that it only seems to happen on longer links... Any clues?
>
> Links as in with longer cables?

Longer links, as in more hops and unknown (in this case Juniper) switches/boxes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
