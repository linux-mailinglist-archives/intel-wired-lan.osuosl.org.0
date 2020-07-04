Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B688E214871
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jul 2020 21:41:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67A3D8839C;
	Sat,  4 Jul 2020 19:41:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u8rHZ2oPp7nM; Sat,  4 Jul 2020 19:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F25DB8844C;
	Sat,  4 Jul 2020 19:41:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 968281BF406
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 19:41:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 91C09870F4
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 19:41:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gbsX4tpd_fas for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 19:41:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE95086B0E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 19:41:18 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id s21so14691647ilk.5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Jul 2020 12:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oaguPC34T7R0o5+DoNQSjRDr1tEmYY+rGX3DoLh4xf8=;
 b=UqQlaqT7Hr64mfOELSvx1Wr9DuwUyUEsOQFLfZLOzCNJEbzYE+7u+wQFpS+2aYI5XU
 JBmMm3PyTEmTUd+hQDkw/w393xyUdgyaaQL+rgpTTTvsUuf0XUxvtP6X9iYLY/LaeuuB
 HI5S3DYdndoix8ToVO30hJjXgLULga2v/wd3m8Syav7o2hfOP9/CAGOOFYBVXhSVIUWr
 czNTCHLDr2U0Bv0Fk6Tkng8KosYcdMZTaJMcBIgDc1jLRknGgrxddMasIUql60sjBffi
 tLaUYWSTq0M3wvGsTJ3bf+u5+C76wUmolpkFPwuomPtOQspzOYGxQdCYtbIZw590E++2
 skwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oaguPC34T7R0o5+DoNQSjRDr1tEmYY+rGX3DoLh4xf8=;
 b=VtmQpLESr+8xABqCOrhC8jwxYwH2lGzYTEuTOx3/2iUIaGSqL+2F/1Wu1PzWH9h/oF
 gqvg5WQIcihgn2KnL5jKaqo/qS6fM7MjB6IEMAuMo0fxyrYGBVlap0GOEw2UEzLmG4Rr
 e6mPhwTPc6sAgsVk0xk8pHp46OpDNzr0OR6VsBluNDVyNNANYSWcHMWXAzyOhBuK9G3b
 LYOc6HgtB0PkHh1/9qRYbH2dZaq9iJ77/0VNo8xMObdPeiWsq7Kc2yq/c7GqGqGHkyFu
 2iSO6rZ068rQljCxqPSBgcvOY9haV1PjzLI8Vz4XZigeoni4XPRrasIA61MKf80KS619
 dj1g==
X-Gm-Message-State: AOAM5319Lz9otmDm+Ccal2Cr3k+crpFxts9kQHwom5qm3ecn8J1ueOpq
 dXQV3Bnzhu4LtRVgxl8zFoXpqXaWw2GoaJJ5AD0=
X-Google-Smtp-Source: ABdhPJxGQ+LYo3TE+w36gxfg8i5q9yhsP7/TsFl8gmY2pnj2YuCnzhl+fTmdgR3HZI5R6GxehmEzDItEiyvIcTdNi8g=
X-Received: by 2002:a92:5a05:: with SMTP id o5mr17808012ilb.237.1593891678038; 
 Sat, 04 Jul 2020 12:41:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200703182010.1867-1-bruceshenzk@gmail.com>
 <CAKgT0Uc0sxRmADBozs3BvK2HFsDAcgzwUKWHyu91npQvyFRM1w@mail.gmail.com>
 <CAHE_cOvFC4sjVvVuC-7A8Zqw6=uJP5AAUmZOk5sQ=7bD+ePpgA@mail.gmail.com>
In-Reply-To: <CAHE_cOvFC4sjVvVuC-7A8Zqw6=uJP5AAUmZOk5sQ=7bD+ePpgA@mail.gmail.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Sat, 4 Jul 2020 12:41:07 -0700
Message-ID: <CAKgT0UdFPjD5YEBjVxkgCc65muNnxq54QPt3iBzm60QY46BCTA@mail.gmail.com>
To: Zekun Shen <bruceshenzk@gmail.com>
Subject: Re: [Intel-wired-lan] [PATCH] net: fm10k: check size from dma region
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
Cc: Netdev <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Jul 4, 2020 at 9:37 AM Zekun Shen <bruceshenzk@gmail.com> wrote:
>
> On Sat, Jul 04, 2020 at 09:05:48AM -0700, Alexander Duyck wrote:
> > The upper limitation for the size should be 2K or FM10K_RX_BUFSZ, not
> > PAGE_SIZE. Otherwise you are still capable of going out of bounds
> > because the offset is used within the page to push the start of the
> > region up by 2K.
> PAGE_SIZE can drop the warning, as the dma allocated size is PAGE_SIZE.

Yes, but the point I was getting at is that if you are just going to
squelch the warning, but leave the code broken then the warning isn't
of any use and might as well be discarded. Either you limit the value
to 2K which is what the hardware is expected to max out at anyway, or
you just skip the warning and assume hardware will do the right thing.
I'm not even sure this patch is worth the effort if it is just using
some dummy value that is still broken and simply squelches the
warning.

Could you provide more information about how you are encountering the
error? Is this something you are seeing with an actual fm10k device,
or is this something found via code review or static analysis?

> > If this is actually fixing the warning it makes me wonder if the code
> > performing the check is broken itself since we would still be
> > accessing outside of the accessible DMA range.
> The unbounded size is only passed to fm10k_add_rx_frag, which expects
> and checks size to be less than FM10K_RX_HDR_LEN which is 256.
>
> In this way, any boundary between 256 and 4K should work. I could address
> that with a second version.

I was referring to the code in the DMA-API that is generating the
warning being broken, not the code itself. If you can tell me how you
are getting to the warning it would be useful.

Anything over FM10K_RX_BUFSZ will break things. I think that is what
you are missing. The driver splits a single 4K page into 2 pieces and
then gives half off to the stack and uses the other half for the next
receive. If you have a value over 2K you are going to be overwritting
data in another buffer and/or attempting to access memory outside the
DMA region. Both of which would likely cause significant issues and
likely panic the system.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
