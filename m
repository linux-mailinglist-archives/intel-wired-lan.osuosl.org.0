Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5DD109215
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Nov 2019 17:44:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBED786483;
	Mon, 25 Nov 2019 16:44:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Utz8uTJVWIBK; Mon, 25 Nov 2019 16:44:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77FBA861E7;
	Mon, 25 Nov 2019 16:44:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D87D81BF298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 16:44:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D3A962012D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 16:44:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k9qG-YtcMIuX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Nov 2019 16:44:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by silver.osuosl.org (Postfix) with ESMTPS id EF86C20117
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 16:44:37 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id s71so13655293oih.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Nov 2019 08:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AvmJGu0+9BVqN/CUBtyW4HCFThFz2I1sLKj0UkqtpSA=;
 b=WEAHLDM/NBuLzAHzgmWrYT54j96SFFQNzcnAJZRaKcEK66zx+AuBNx6Zz4/duWTBt8
 3veGnuXHm0nbyxYIau6cE3Kmgjub9eOe+inCSkr5so2XGL28ZcIoohwn6n/dz7/zTy0X
 L85kNMdWE1Ah5HGo5lc67sohCIaIpCWDc7dsdWSKOMd+V7b8OGsOvk5c15/0klh4jJl8
 OAI4n+G/A7FyZXI12uvwMcN0MN6D6CgEz438z78+jC5ngkec3C1MZiRwj4F/dfrSxKs/
 sjXYnjyxVSWm84NVli/uNKt6xmZiZBfBDdZafaR+5S0EGlltAm8+qQDey7RLnPnB0DwE
 bNxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AvmJGu0+9BVqN/CUBtyW4HCFThFz2I1sLKj0UkqtpSA=;
 b=khJrWoUaG4I6HnH1fmZonF2IDPhcHri/OHs164GgD6EM86SHht/5TF2F1E4q5wAYIR
 5F0UZ5we6DC1UZkkkpSXmolTfcCIYp4icZc2Dy8ivJAECZF32qd1p32S9228dsGKUqrz
 0a1JkU/6Gl4ga62oRFWSLWJUijBbYpESXy8R5jSZ3OuAct3enUCmipuQ8jfrXGk5JUrU
 Hk2+qmVQUDwH17i+ShOjAoybepzgafJZ62aX6eO/xp610lFPqZ/6rVBKP43NjTgKTTfd
 AtjfLbvTOxop4kUK3is7+PKR5ccTrRQ0fyu/RdMkBczt1pyUnDREaTz11U4qFfk2I7Dh
 robQ==
X-Gm-Message-State: APjAAAVGJpnA2smgQAeMbCvSfOH/mkV52G5XxDhCxrtCZeGxCKIfe4X5
 3UzVqEBcsTlVokFuWrLkieNiUb+auaFqIjUGd9g=
X-Google-Smtp-Source: APXvYqzocJxj8eHINvlBv++gnJtYeltGdEJTWRjtRQwYJg6sG/05+lW0yW34tem7KRkkh+/n7wBWd25840i+5VznsDs=
X-Received: by 2002:aca:c753:: with SMTP id x80mr22536632oif.115.1574700277010; 
 Mon, 25 Nov 2019 08:44:37 -0800 (PST)
MIME-Version: 1.0
References: <1573243090-2721-1-git-send-email-magnus.karlsson@intel.com>
 <adee745d-6522-309d-a944-7a54869ac945@mellanox.com>
In-Reply-To: <adee745d-6522-309d-a944-7a54869ac945@mellanox.com>
From: Magnus Karlsson <magnus.karlsson@gmail.com>
Date: Mon, 25 Nov 2019 17:44:26 +0100
Message-ID: <CAJ8uoz2xsdEqy5OoK_GRLZ8+nX1TdOPQAQ+pCrgELjSX6uw3+Q@mail.gmail.com>
To: Maxim Mikityanskiy <maximmi@mellanox.com>
Subject: Re: [Intel-wired-lan] [PATCH net 1/2] i40e: need_wakeup flag might
 not be set for Tx
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
Cc: "maciejromanfijalkowski@gmail.com" <maciejromanfijalkowski@gmail.com>,
 "maciej.fijalkowski@intel.com" <maciej.fijalkowski@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Saeed Mahameed <saeedm@mellanox.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "bjorn.topel@intel.com" <bjorn.topel@intel.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Tariq Toukan <tariqt@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Nov 25, 2019 at 4:40 PM Maxim Mikityanskiy <maximmi@mellanox.com> wrote:
>
> Hi Magnus,
>
> On 2019-11-08 21:58, Magnus Karlsson wrote:
> > This happens if there is at least one
> > outstanding packet that has not been completed by the hardware and we
> > get that corresponding completion (which will not generate an
> > interrupt since interrupts are disabled in the napi poll loop) between
> > the time we stopped processing the Tx completions and interrupts are
> > enabled again.
>
> > But if this completion interrupt occurs before interrupts
> > are enable, we lose it
> Why can't it happen for regular traffic? From your description it looks
> to me as if you can miss a completion for non-AF_XDP traffic, too. Is
> there any detail that makes this issue AF_XDP-specific?

It can happen for regular traffic too, but it does not matter in that
case since the application is not dependent on getting a notification
on completion. The only thing that will happen is that there is some
memory and HW descriptors being used for longer than necessary. It
will get completed and reused next time there is some Tx action.

In the cases where it matters, the skb path code has feature that arms
a later interrupt. I need to introduce something similar for the
AF_XDP ZC path.

/Magnus

> Thanks,
> Max
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
