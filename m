Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E0616866D9
	for <lists+intel-wired-lan@lfdr.de>; Wed,  1 Feb 2023 14:29:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6864A41908;
	Wed,  1 Feb 2023 13:29:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6864A41908
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675258170;
	bh=i8DtofkD6MKs4Xypy6FXapgYTTGLYsAoZINijhZsMw0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DrkHzkSNBjsDuxEGgpoxUdvcf4lGVCpQ3NDPVWWA5ofkjsrBgpyvzYL5sK7kr53dS
	 pUjWpyrmPcbBGumH6w+x9trxrn1jZorRf0lx3qpYmQBQVlgwzSxvgw2b8eMz6Kf9Hf
	 jvSaxiEApTx00SSv3M+tnzPe0OizHndYolC/YSe2WL9y00faTufYcEwwf/7FW4diEe
	 BhPjLGdl+saILVIkrObl4Rhtj2PsPYN1knF4dF+ZhTG9n3o7ffJayPZb2SIOjZnyqy
	 24u/DxdRs7DFnStXytSbx+2swlEJJE8ckfpky75h+QuWJQMNCLzIXhFlM2bP+SrBdN
	 akrmFvlEWwjZg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMXkvVpuCjrn; Wed,  1 Feb 2023 13:29:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4C46B418F9;
	Wed,  1 Feb 2023 13:29:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4C46B418F9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3129C1BF309
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 13:29:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1076760FB6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 13:29:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1076760FB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZZO5mBK9NCFE for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Feb 2023 13:29:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4CBB60FB0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4CBB60FB0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Feb 2023 13:29:22 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id p26so40199927ejx.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 01 Feb 2023 05:29:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=o5RAqFv4pYOa5JzrxZt0vZ4G4DAREm5CcDv+otFo5eA=;
 b=5+JwYsq6jcsUBw+J139dFmZWlpvhgUnDoRCrT+NGTFEeWFU/DQyKSqbK/MruQWAarK
 EeUVJ8wpc7HZWutbX2sJCMovVwmMlNJ0GUUc6XHTWSZmmAREOgW1JEpRczKexTIZSBUC
 EnupC3rQ/Cy3S7AbZuX8jNAvvQgfP+aAHCkkvRtmYnWacijqwsrmkokmPe7m0mtwsziV
 AGfKpTwG/9s1NR22u5mcQPNUIDATgish5oAa5j7fHvEyHyz0nAUF2a2tTT+1K6GXpuj0
 eDfO0j8/E019z17m8aBFaBpNwUiYm1kohvIIf0g7mHq/Qyf5QSLxskUsbsNEuTR01vQY
 fu5A==
X-Gm-Message-State: AO0yUKVkvXQmOFWaC3X/vcdOcGnDfZqnGEdLnfaizFLeNYxFvHd3pGtH
 /twvcZKIRtnhgw4F4C/VtW/sFd923+gz5BNWtW4=
X-Google-Smtp-Source: AK7set/gpbqxFS5raSbdy7HY4cEfgXV09A04lh/3/z7GW6ctm3ocB6SlI8/7c9gvyGf3I/dbHmBnp9x96j2HSq+CpTw=
X-Received: by 2002:a17:906:560e:b0:86f:9fb1:30a8 with SMTP id
 f14-20020a170906560e00b0086f9fb130a8mr691205ejq.181.1675258160744; Wed, 01
 Feb 2023 05:29:20 -0800 (PST)
MIME-Version: 1.0
References: <20230127122018.2839-1-kerneljasonxing@gmail.com>
 <Y9fdRqHp7sVFYbr6@boxer>
 <CAL+tcoBbUKO5Y_dOjZWa4iQyK2C2O76QOLtJ+dFQgr_cpqSiyQ@mail.gmail.com>
 <192d7154-78a6-e7a0-2810-109b864bbb4f@intel.com>
 <CAL+tcoBtQSeGi5diwUeg1LryYsB2wDg1ow19F2eApjh7hYbcsA@mail.gmail.com>
 <af77ad0e-fde7-25da-dc3f-5d19133addba@intel.com>
In-Reply-To: <af77ad0e-fde7-25da-dc3f-5d19133addba@intel.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 1 Feb 2023 21:28:44 +0800
Message-ID: <CAL+tcoD94KByy-Xz=ZiCt5gXZ0YhOjWU=vrOzRxezwRtuQmcJw@mail.gmail.com>
To: Alexander Lobakin <alexandr.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=o5RAqFv4pYOa5JzrxZt0vZ4G4DAREm5CcDv+otFo5eA=;
 b=Al8L1qZd+si5urgDXLIkXeBFPnzdORNbH95yxab8hD1qvx8Eqal1NU6elIBc0ukEJH
 A98DrQRnm/qhYBbPDzwqu+jnGoUjm+DuxY0NI6p7QPpFvi/q9ZZebFtnfNwnTy3ryNlt
 883Fyb7evIY7lOs8klZOMcGfFVG+Pt1440+q6tzOwrzPYABFaCw0XqJFhpbtPZ/fYbGY
 SL1T8pm87YanZtk1jbAvHWFJLRPHIlmaBu0hN4rpJwPUP4fPwUJMGDeqTk2MtDkWWXVO
 U6vI+80In2Xqjb61seQlZwj1941d9/729RjerPjVboc17rKMH5RQokJ+0tqVMKlaQru6
 toOQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=Al8L1qZd
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

On Wed, Feb 1, 2023 at 7:15 PM Alexander Lobakin
<alexandr.lobakin@intel.com> wrote:
>
> From: Jason Xing <kerneljasonxing@gmail.com>
> Date: Tue, 31 Jan 2023 19:23:59 +0800
>
> > On Tue, Jan 31, 2023 at 7:08 PM Alexander Lobakin
> > <alexandr.lobakin@intel.com> wrote:
>
> [...]
>
> >>>> You said in this thread that you've done several tests - what were they?
> >>>
> >>> Tests against XDP are running on the server side when MTU varies from
> >>> 1500 to 3050 (not including ETH_HLEN, ETH_FCS_LEN and VLAN_HLEN) for a
> >>
> >
> >> BTW, if ixgbe allows you to set MTU of 3050, it needs to be fixed. Intel
> >> drivers at some point didn't include the second VLAN tag into account,
> >
> > Yes, I noticed that.
> >
> > It should be like "int new_frame_size = new_mtu + ETH_HLEN +
> > ETH_FCS_LEN + (VLAN_HLEN * 2)" instead of only one VLAN_HLEN, which is
> > used to compute real size in ixgbe_change_mtu() function.
> > I'm wondering if I could submit another patch to fix the issue you
> > mentioned because the current patch tells a different issue. Does it
> > make sense?
>

> Yes, please send as a separate patch. It's somewhat related to the
> topic, but better to keep commits atomic.
>

Roger that, I will write another patch with your suggestions (labeled
'suggested-by your email address').

Thanks,
Jason

> >
> > If you're available, please help me review the v3 patch I've already
> > sent to the mailing-list. Thanks anyway.
> > The Link is https://lore.kernel.org/lkml/20230131032357.34029-1-kerneljasonxing@gmail.com/
> > .
> >
> > Thanks,
> > Jason
>
> Thanks,
> Olek
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
