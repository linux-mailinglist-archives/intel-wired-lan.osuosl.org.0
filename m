Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E277BBF9CB7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Oct 2025 05:11:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BDD660ED4;
	Wed, 22 Oct 2025 03:11:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5l-CRyCzHbWX; Wed, 22 Oct 2025 03:11:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6F5F560EB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761102702;
	bh=1w81N5UwqCcLk9lzNRuUpjETqoES8d1bFB+ZdpugPTA=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=l8CCo6rot+9Zz/SLXknK4YTVPZXVQeY/QZqGtkp2zzcU9fV1FGfzo5L7m6dklbiuD
	 /Jl3UK2m+AIf4hYcyYHwp4rOxGuJECQ4Lyla3FRs/tEpnbTfjTWGkJDuZyNL43gYW2
	 H/Cx+CELeS7RgSfdCNyd3On2BDJJTB/LZSleGjoYqM4krxQV/uJ6MU37nVZq1I8w1q
	 FVArzGS4oDWLIO9rpE+tNLv2I0rqSoJhv41EwdYQzMoLGw8oKcV4CXyWM3GB077qAk
	 +7/bdwqpzDfIPiQx+SmayH+eso77n3KmDFRmQVStVBXg5zG+ozeqeGnFEVgyCd2fBJ
	 rlRkkFaKiboHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F5F560EB4;
	Wed, 22 Oct 2025 03:11:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3899043F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 03:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 145C080D6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 03:11:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qDaUEw188hif for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Oct 2025 03:11:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::12e; helo=mail-il1-x12e.google.com;
 envelope-from=kerneljasonxing@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2B03F80C26
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B03F80C26
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com
 [IPv6:2607:f8b0:4864:20::12e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B03F80C26
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Oct 2025 03:11:39 +0000 (UTC)
Received: by mail-il1-x12e.google.com with SMTP id
 e9e14a558f8ab-430aeaffeaeso28492365ab.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Oct 2025 20:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761102698; x=1761707498;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=1w81N5UwqCcLk9lzNRuUpjETqoES8d1bFB+ZdpugPTA=;
 b=O5FoGWvsL3+hF8yKruXZgZCtCHQg3Y0wKyVTpSisLBquCs9cpfu6YFOs9PaBvtiP++
 SaEqKbr71s0F9WMFwoJqxGW2PfO96TJYSH3OaZqCLq8kLXxz+kwDA+F8iduuHqQzd6KP
 RSA+BaSnYM2ILovkhltH3JtimoD3AKPWOzKnlPxW+qILBApujyusEoEi5yzbntGFUezy
 wPS1/tlGbkFLfaiTNTPjdHq7wZUfmvteBJS1iRDiZ1DZEK8jQDJHB62mENsGZ696JumH
 DiiDBvsb5KU+j0ckJpNbrvqz1ccaFDwcO35cqERg49VXECavcKFih5JJakZ0NglkknyB
 MgHA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWy22DLa016YhnZ62J3vk0onfFRpOYqLyZjk1DL3SXqt1a3pwNA1BkHaWZoiUWspS/zN69qs46il5bYmPRPkhI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwOV74q267K5+sQ8MpziQcuR4WlfmDF/rJvet7LV+sq/XOqbhE1
 gBS6rY+fSAcBBGEVIxRYMgSnEk8/Caowhs00FfIAVh0Ff3VqS1+RcLd8HMXwqDacgVBpqFkbLby
 l/TIWRXZThjhLPU7HjNgnImk7p/Nbr+w=
X-Gm-Gg: ASbGncvOWgMqzFfCVox+m/wk5/pHJCW8ui/eQBzidC7qkgTMNQ4s8yIkl4aHLnh+zej
 Ya+0P3WFT0gsstr85gX58JglJcjh0t6uZmqUdlklJv8TpjF3fC/nts3zwbzzRlne6k1sjbnC4ih
 0ZXvCi+No8Px2KudRGbchrd0SsTJnJuSDenNFz/xxyPFllAcfoMXWPskopeRxFjHttZCbOtSXgB
 WdDMhjsUJEXH7QVQsAnEWPTVFuhYcMG0RbkUb1CGsWqxpCUdf7WlZJC5ElMcjirpLaRX2k=
X-Google-Smtp-Source: AGHT+IHsc5L8H41oQ6pWuGlwc/6nz3oXWi8+Bcroke4DapuC5C0EkQMaKnI90LLtcbQ2XDw0xbZs5GobUsx8JgiIzoU=
X-Received: by 2002:a05:6e02:1689:b0:42d:876e:61bd with SMTP id
 e9e14a558f8ab-430c527fb41mr284123945ab.28.1761102697970; Tue, 21 Oct 2025
 20:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <20251021173200.7908-1-alessandro.d@gmail.com>
 <20251021173200.7908-2-alessandro.d@gmail.com>
In-Reply-To: <20251021173200.7908-2-alessandro.d@gmail.com>
From: Jason Xing <kerneljasonxing@gmail.com>
Date: Wed, 22 Oct 2025 11:11:01 +0800
X-Gm-Features: AS18NWBBSoMIxcuhS-7Wwy3NqCqJITQFYqxcB1a6KZpfmjK1-38rwvJFwSyOIzY
Message-ID: <CAL+tcoCwGQyNSv9BZ_jfsia6YFoyT790iknqxG7bB7wVi3C_vQ@mail.gmail.com>
To: Alessandro Decina <alessandro.d@gmail.com>
Cc: netdev@vger.kernel.org, Maciej Fijalkowski <maciej.fijalkowski@intel.com>, 
 "David S. Miller" <davem@davemloft.net>,
 Alexei Starovoitov <ast@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Daniel Borkmann <daniel@iogearbox.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>, 
 Paolo Abeni <pabeni@redhat.com>, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 Tirthendu Sarkar <tirthendu.sarkar@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, bpf@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1761102698; x=1761707498; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1w81N5UwqCcLk9lzNRuUpjETqoES8d1bFB+ZdpugPTA=;
 b=S3Rd/hVO1BHN7J6ASaGdbVoZA83zh5XYsR+KS9MJ+dfW0OsM04Gu6s3e6i+WuQ5yco
 AiD/rAO5+QVHXr1EwCY4FaDzKFJ7dIOKXOAFlOqQs26elv5K33C0DKjOQwuPV2IwPq37
 WsOIoMDGgysrqzTq8wNpiad87GKDeeh1iknkJKdT0su5dMeNGflBrtF5vGKJrZRq8bQW
 bpbr1ttf445+gj3o098OxW1FncVrf6hmQjSGVuKTGmSOcZhWmdKEmrtVOo8dnAk8dKfy
 VtfNactR6vPbYw/f/s3u0St3UULI0G2X1lpSdJN6MT5CJrf9i3v3loFu68sU6V+tHMlb
 XGNw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=S3Rd/hVO
Subject: Re: [Intel-wired-lan] [PATCH net v2 1/1] i40e: xsk: advance
 next_to_clean on status descriptors
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 22, 2025 at 1:33=E2=80=AFAM Alessandro Decina
<alessandro.d@gmail.com> wrote:
>
> Whenever a status descriptor is received, i40e processes and skips over
> it, correctly updating next_to_process but forgetting to update
> next_to_clean. In the next iteration this accidentally causes the
> creation of an invalid multi-buffer xdp_buff where the first fragment
> is the status descriptor.
>
> If then a skb is constructed from such an invalid buffer - because the
> eBPF program returns XDP_PASS - a panic occurs:
>
> [ 5866.367317] BUG: unable to handle page fault for address: ffd31c37eab1=
c980
> [ 5866.375050] #PF: supervisor read access in kernel mode
> [ 5866.380825] #PF: error_code(0x0000) - not-present page
> [ 5866.386602] PGD 0
> [ 5866.388867] Oops: Oops: 0000 [#1] SMP NOPTI
> [ 5866.393575] CPU: 34 UID: 0 PID: 0 Comm: swapper/34 Not tainted 6.17.0-=
custom #1 PREEMPT(voluntary)
> [ 5866.403740] Hardware name: Supermicro AS -2115GT-HNTR/H13SST-G, BIOS 3=
.2 03/20/2025
> [ 5866.412339] RIP: 0010:memcpy+0x8/0x10
> [ 5866.416454] Code: cc cc 90 cc cc cc cc cc cc cc cc cc cc cc cc cc cc c=
c 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 66 90 48 89 f8 48 89 d1 <=
f3> a4 e9 fc 26 c0 fe 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90
> [ 5866.437538] RSP: 0018:ff428d9ec0bb0ca8 EFLAGS: 00010286
> [ 5866.443415] RAX: ff2dd26dbd8f0000 RBX: ff2dd265ad161400 RCX: 000000000=
00004e1
> [ 5866.451435] RDX: 00000000000004e1 RSI: ffd31c37eab1c980 RDI: ff2dd26db=
d8f0000
> [ 5866.459454] RBP: ff428d9ec0bb0d40 R08: 0000000000000000 R09: 000000000=
0000000
> [ 5866.467470] R10: 0000000000000000 R11: 0000000000000000 R12: ff428d9ee=
c726ef8
> [ 5866.475490] R13: ff2dd26dbd8f0000 R14: ff2dd265ca2f9fc0 R15: ff2dd2654=
8548b80
> [ 5866.483509] FS:  0000000000000000(0000) GS:ff2dd2c363592000(0000) knlG=
S:0000000000000000
> [ 5866.492600] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [ 5866.499060] CR2: ffd31c37eab1c980 CR3: 0000000178d7b040 CR4: 000000000=
0f71ef0
> [ 5866.507079] PKRU: 55555554
> [ 5866.510125] Call Trace:
> [ 5866.512867]  <IRQ>
> [ 5866.515132]  ? i40e_clean_rx_irq_zc+0xc50/0xe60 [i40e]
> [ 5866.520921]  i40e_napi_poll+0x2d8/0x1890 [i40e]
> [ 5866.526022]  ? srso_alias_return_thunk+0x5/0xfbef5
> [ 5866.531408]  ? raise_softirq+0x24/0x70
> [ 5866.535623]  ? srso_alias_return_thunk+0x5/0xfbef5
> [ 5866.541011]  ? srso_alias_return_thunk+0x5/0xfbef5
> [ 5866.546397]  ? rcu_sched_clock_irq+0x225/0x1800
> [ 5866.551493]  __napi_poll+0x30/0x230
> [ 5866.555423]  net_rx_action+0x20b/0x3f0
> [ 5866.559643]  handle_softirqs+0xe4/0x340
> [ 5866.563962]  __irq_exit_rcu+0x10e/0x130
> [ 5866.568283]  irq_exit_rcu+0xe/0x20
> [ 5866.572110]  common_interrupt+0xb6/0xe0
> [ 5866.576425]  </IRQ>
> [ 5866.578791]  <TASK>
>
> Advance next_to_clean to ensure invalid xdp_buff(s) aren't created.
>
> Fixes: 1c9ba9c14658 ("i40e: xsk: add RX multi-buffer support")
> Signed-off-by: Alessandro Decina <alessandro.d@gmail.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_xsk.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/eth=
ernet/intel/i40e/i40e_xsk.c
> index 9f47388eaba5..dbc19083bbb7 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
> @@ -441,13 +441,18 @@ int i40e_clean_rx_irq_zc(struct i40e_ring *rx_ring,=
 int budget)
>                 dma_rmb();
>
>                 if (i40e_rx_is_programming_status(qword)) {
> +                       u16 ntp;
> +
>                         i40e_clean_programming_status(rx_ring,
>                                                       rx_desc->raw.qword[=
0],
>                                                       qword);
>                         bi =3D *i40e_rx_bi(rx_ring, next_to_process);
>                         xsk_buff_free(bi);
> -                       if (++next_to_process =3D=3D count)
> +                       ntp =3D next_to_process++;
> +                       if (next_to_process =3D=3D count)
>                                 next_to_process =3D 0;
> +                       if (next_to_clean =3D=3D ntp)
> +                               next_to_clean =3D next_to_process;
>                         continue;
>                 }
>
> --
> 2.43.0
>
>

I'm copying your reply from v1 as shown below so that we can continue
with the discussion :)

> It really depends on whether a status descriptor can be received in the
> middle of multi-buffer packet. Based on the existing code, I assumed it
> can. Therefore, consider this case:
>
> [valid_1st_packet][status_descriptor][valid_2nd_packet]
>
> In this case you want to skip status_descriptor but keep the existing
> logic that leads to:
>
>     first =3D next_to_clean =3D valid_1st_packet
>
> so then you can go and add valid_2nd_packet as a fragment to the first.

Sorry, honestly, I still don't follow you.

Looking at the case you provided, I think @first always pointing to
valid_1st_packet is valid which does not bring any trouble. You mean
the case is what you're trying to handle?

You patch updates next_to_clean that is only used at the very
beginning, so it will not affect @first. Imaging the following case:

     [status_descriptor][valid_1st_packet][valid_2nd_packet]

Even if the next_to_clean is updated, the @first still points to
[status_descriptor] that is invalid and that will later cause the
panic when constructing the skb.

I'm afraid that we're not on the same page. Let me confirm that it is
@first that points to the status descriptor that causes the panic,
right? Could you share with us the exact case just like you did as
above. Thank you.

Thanks,
Jason
