Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE43682B5D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Jan 2023 12:24:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6AC3E60743;
	Tue, 31 Jan 2023 11:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AC3E60743
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675164285;
	bh=ys3hzf3RpnqvKdmiiVIpCO05TSH9WLTj+gLpbnTnefM=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CHmX0j7eRcbRDvfNyJ2lhtcF+whRQgkBRAKCyxqpu/qH0GH51TxZR+/eMo1c1uU8s
	 fZx122scZNQOM1S/8u6uy2afCrH5+fbAqP3YPnDdHlUDuN4TLNcfiVCCwk9lhDLdx7
	 IbWScegwNw9RcDjx742LhE7LCfdjJKMw93E3/dKlDRx91uq2ZuzDE/TgZGdCjVxr8k
	 3zGoyIsN55nVHwbTtzO2vh0ifpNICRm2ta2ejQ7SEg2hD64YP5f4894n7jElH/Td79
	 VujaDwxxv9EBCOYgVypF7mSsjY6nFZKhlhFHCN/yZjDefFg6ElAKXuHeNNTdMuvaN4
	 dnSKx8aoUDVWA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ipSkyam01LEL; Tue, 31 Jan 2023 11:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D7866059C;
	Tue, 31 Jan 2023 11:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D7866059C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C4EAC1BF575
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:24:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90DAC81233
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:24:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90DAC81233
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jgi6oBCfqSAa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Jan 2023 11:24:37 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A9748122E
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A9748122E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 11:24:37 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id hx15so21072779ejc.11
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Jan 2023 03:24:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=5yhShQTG17uzw0WRoXPw0Cx2D1Z/lYVkEvXp799OzEk=;
 b=hsuzar9hyfbt5NhEIQeYxIA8PmKdIsTXi5szAiTnTm8ZBvg2C1md+EhvRxob1Z+434
 c+YKKrhlwJKNt8aS+wOqE4u2F0Ugg/G0YeN4FjE7JtAVzViwzq9JMruZCr26/XJFKKnV
 vQRPYZPGhDyieYUu/iqcv3Fasablfhs1SO3gb2UZ2tN1WqwgCisoHaMSGfb5Fd3vMUl2
 qv4Ix/7N4gUdWz37j0BCSQpnWd1R2IBeJ9a/S9CB6nQZDguT5lpi/NzR/gndEbzXYQOc
 ltvji0FP0f052kFcYtcEmEVanAiszCSnWMCOiPjUZLhSo7YSnbPESgTjGWKpO7rcB71r
 zN0Q==
X-Gm-Message-State: AO0yUKWYa0ZlvJ+yU9gMS4pKaZAl1zmEF0Nbj3zdxEFmHz4rL6jDCfSz
 FhNAyxWGxvi1EYHVj5kfuZWcCo6HKg/+BJt5qdg=
X-Google-Smtp-Source: AK7set/Br25oHnhXcuU3UgLhXFHoDyj2IW9wCy+5Mxurk/M9p97GAhQXkCtB/oAnHGLT2tZlN85FUXWQQfctaNgZsbU=
X-Received: by 2002:a17:906:7108:b0:87b:d4df:32bc with SMTP id
 x8-20020a170906710800b0087bd4df32bcmr3543288ejj.303.1675164275273; Tue, 31
 Jan 2023 03:24:35 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <Y9fdRqHp7sVFYbr6@boxer>
 <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
 <192d7154-78a6-e7a0-2810-109b864bbb4f@intel.com>
In-Reply-To: <192d7154-78a6-e7a0-2810-109b864bbb4f@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Tue, 31 Jan 2023 19:23:59 +0800
Message-ID: <CAL+tcoBtQSeGi5diwUeg1LryYsB2wDg1ow19F2eApjh7hYbcsA@mail.gmail.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=5yhShQTG17uzw0WRoXPw0Cx2D1Z/lYVkEvXp799OzEk=;
 b=pENnLJ5+AHsRKrjLpgfnlpghuAYhJOh8LmAs3tw43gQRXZnb4Ch3gAOOdytE0L50E3
 4N1x6xOqpQwmqVEHHnlhd1dwTmn3WsdMYL9cIyt38MMwDBNpMSzog6wwbzbp7uYMCnl3
 h7CfsRUO7GPsODB7ADvzThOMeomLPK7J+SexEnpKbsz1M32eMp3JiHeUieYs5lZ9oi7L
 3IAXZepJ4R+VC13lwz7Km0UzbOmxA37w6qSEmdgmiq43lkaQf4SFG+OnQqPFl7tmr/QW
 L0Ea3ECrE6e2UgYFXhIgfUqlYX+q/pQQP4NyJBI9rQzQmXumvl87uA3uSKp9/3QQkIfX
 LpbA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=pENnLJ5+
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ixgbe: allow to increase MTU
 to some extent with XDP enabled
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
Cc: hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 richardcochran@gmail.com, john.fastabend@gmail.com, jesse.brandeburg@intel.com,
 ast@kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, bpf@vger.kernel.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org,
 Jason Xing <kernelxing@tencent.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 31, 2023 at 7:08 PM Alexander Lobakin
<alexandr.lobakin@intel.com> wrote:
>
> From: Jason Xing <kerneljasonxing@gmail.com>
> Date: Tue, 31 Jan 2023 11:00:05 +0800
>
> > On Mon, Jan 30, 2023 at 11:09 PM Maciej Fijalkowski
> > <maciej.fijalkowski@intel.com> wrote:
> >>
> >> On Fri, Jan 27, 2023 at 08:20:18PM +0800, Jason Xing wrote:
> >>> From: Jason Xing <kernelxing@tencent.com>
> >>>
> >>> I encountered one case where I cannot increase the MTU size directly
> >>> from 1500 to 2000 with XDP enabled if the server is equipped with
> >>> IXGBE card, which happened on thousands of servers in production
> >>> environment.
> >>
> >
> >> You said in this thread that you've done several tests - what were they?
> >
> > Tests against XDP are running on the server side when MTU varies from
> > 1500 to 3050 (not including ETH_HLEN, ETH_FCS_LEN and VLAN_HLEN) for a
>

> BTW, if ixgbe allows you to set MTU of 3050, it needs to be fixed. Intel
> drivers at some point didn't include the second VLAN tag into account,

Yes, I noticed that.

It should be like "int new_frame_size = new_mtu + ETH_HLEN +
ETH_FCS_LEN + (VLAN_HLEN * 2)" instead of only one VLAN_HLEN, which is
used to compute real size in ixgbe_change_mtu() function.
I'm wondering if I could submit another patch to fix the issue you
mentioned because the current patch tells a different issue. Does it
make sense?

If you're available, please help me review the v3 patch I've already
sent to the mailing-list. Thanks anyway.
The Link is https://lore.kernel.org/lkml/20230131032357.34029-1-kerneljasonxing@gmail.com/
.

Thanks,
Jason

> thus it was possible to trigger issues on Q-in-Q setups. AICS, not all
> of them were fixed.
>
> > few days.
> > I choose the iperf tool to test the maximum throughput and observe the
> > behavior when the machines are under greater pressure. Also, I use
> > netperf to send different size packets to the server side with
> > different modes (TCP_RR/_STREAM) applied.
> [...]
>
> Thanks,
> Olek
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
