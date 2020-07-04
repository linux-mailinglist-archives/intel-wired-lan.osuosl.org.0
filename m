Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9A6214900
	for <lists+intel-wired-lan@lfdr.de>; Sun,  5 Jul 2020 00:11:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 565C288681;
	Sat,  4 Jul 2020 22:11:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XiCUhHYXsn9C; Sat,  4 Jul 2020 22:11:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 378AE87748;
	Sat,  4 Jul 2020 22:11:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E44531BF429
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 22:11:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DFF81875DD
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 22:11:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id byZc_O4x2v_U for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jul 2020 22:11:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 54230875DA
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jul 2020 22:11:39 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id a6so36635581wrm.4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 04 Jul 2020 15:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZMOjjBuoh2tQ18+I+Ei9Hr4tOOAs3+zliLyALfVwD6w=;
 b=iYtwKXSeaCyMs8CQdm5dxUxBy/F6NPv+0J+jHKk/920RUHkma9y7CgaHI8yroMcpJn
 XI3vajGxGom0c6ZIprj4yZ9195bR9Ptw+OaBC5fuIS69x8nc4qDEfqOuwSqokHUMbUSW
 qeshMSuERqw+tiVwNHW3lm+aySzaNQl+8smrsFrgpKAWgrZskhRpBpwcKZ2vQhsf2dF0
 DqJNFGvtl1Q/pDKfizfABgjdVDni7ZRq0ZcJGHrSy2PtDciCBFgQyq1V0NUuz9PhaT/J
 nouGDXeZE40Xmgd8OEjSZAs3DFBvTBVfg7JIVaOv4VHyYkrCXPQFuotS01j+NJb8LyiX
 Jq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZMOjjBuoh2tQ18+I+Ei9Hr4tOOAs3+zliLyALfVwD6w=;
 b=PghzibDdKrlrodtByN7rzZnaNPhuquLppx3Eu6SCzTBEgvNGxbriPJJqwwohxrQB0t
 o87UB3yBZ/M9FfvPe2BqNJXE8Kz2TkwjbPfDNVgmOdMWsxmbxIslWWZzyx2MMHjeET/3
 kK2JXcZIUMOHt0Q9BO/PdXanLScOAYMsxBBEOp9ew/223ghv2s+p/CmozVFFJ7yxpmFO
 5Y4tuMGF3Jphef2wn5lK4YGI4y5kXXKACW/lZ0OLq0/J7VX77heMvjQRBV3QW1gvdaL6
 ee1T1BmoTp9Z/ye27+witps3AbtV95tUttCVWPnQZVz27ySoUU48wZME38rVZhUyVNcH
 icuQ==
X-Gm-Message-State: AOAM530Irp7TM2F56kxAT9AZbF9C0IUk8LU6gcRHdPQMkPIlACTDk/Oj
 EB9EkwoArDkb5yaLcdgabwhrUU4gP+QtfHNMdLA=
X-Google-Smtp-Source: ABdhPJwk+QowS0xAsT5XIvOxqwz+VBTILCeJa9En5hyRX4Z29zmj+99X4Mi1DUpybnl7Yw8g/F7kk4p8p7SsTeMeA9I=
X-Received: by 2002:adf:ee0b:: with SMTP id y11mr19673009wrn.360.1593900697518; 
 Sat, 04 Jul 2020 15:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <20200703182010.1867-1-bruceshenzk@gmail.com>
 <CAKgT0Uc0sxRmADBozs3BvK2HFsDAcgzwUKWHyu91npQvyFRM1w@mail.gmail.com>
 <CAHE_cOvFC4sjVvVuC-7A8Zqw6=uJP5AAUmZOk5sQ=7bD+ePpgA@mail.gmail.com>
 <CAKgT0UdFPjD5YEBjVxkgCc65muNnxq54QPt3iBzm60QY46BCTA@mail.gmail.com>
In-Reply-To: <CAKgT0UdFPjD5YEBjVxkgCc65muNnxq54QPt3iBzm60QY46BCTA@mail.gmail.com>
From: Zekun Shen <bruceshenzk@gmail.com>
Date: Sat, 4 Jul 2020 18:11:26 -0400
Message-ID: <CAHE_cOtP+BD+6jyBCoADz1CsZaLgKTknE+OFHnDyDPMrwxo=wQ@mail.gmail.com>
To: Alexander Duyck <alexander.duyck@gmail.com>
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

On Sat, Jul 04, 2020 at 12:41:07PM -0700, Alexander Duyck wrote:
> On Sat, Jul 4, 2020 at 9:37 AM Zekun Shen <bruceshenzk@gmail.com> wrote:
> >
> > On Sat, Jul 04, 2020 at 09:05:48AM -0700, Alexander Duyck wrote:
> > > The upper limitation for the size should be 2K or FM10K_RX_BUFSZ, not
> > > PAGE_SIZE. Otherwise you are still capable of going out of bounds
> > > because the offset is used within the page to push the start of the
> > > region up by 2K.
> > PAGE_SIZE can drop the warning, as the dma allocated size is PAGE_SIZE.
>
> Yes, but the point I was getting at is that if you are just going to
> squelch the warning, but leave the code broken then the warning isn't
> of any use and might as well be discarded. Either you limit the value
> to 2K which is what the hardware is expected to max out at anyway, or
> you just skip the warning and assume hardware will do the right thing.
> I'm not even sure this patch is worth the effort if it is just using
> some dummy value that is still broken and simply squelches the
> warning.
>
> Could you provide more information about how you are encountering the
> error? Is this something you are seeing with an actual fm10k device,
> or is this something found via code review or static analysis?
I did not see it on a real device. I got the warning through emulation
and fuzzing, treating dma, mmio and interrupts as input vectors.
My research is on the peripheral/driver boundary.
>
> > > If this is actually fixing the warning it makes me wonder if the code
> > > performing the check is broken itself since we would still be
> > > accessing outside of the accessible DMA range.
> > The unbounded size is only passed to fm10k_add_rx_frag, which expects
> > and checks size to be less than FM10K_RX_HDR_LEN which is 256.
> >
> > In this way, any boundary between 256 and 4K should work. I could address
> > that with a second version.
>
> I was referring to the code in the DMA-API that is generating the
> warning being broken, not the code itself. If you can tell me how you
> are getting to the warning it would be useful.
>
> Anything over FM10K_RX_BUFSZ will break things. I think that is what
> you are missing. The driver splits a single 4K page into 2 pieces and
> then gives half off to the stack and uses the other half for the next
> receive. If you have a value over 2K you are going to be overwritting
> data in another buffer and/or attempting to access memory outside the
> DMA region. Both of which would likely cause significant issues and
> likely panic the system.
I agree. FM10K_RX_BUFSZ is the right boundary in that sense.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
