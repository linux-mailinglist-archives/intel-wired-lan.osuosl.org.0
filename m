Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 421C23C14CB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jul 2021 16:00:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 526E3415C3;
	Thu,  8 Jul 2021 14:00:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0QoBrs9xwuKM; Thu,  8 Jul 2021 14:00:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 212374041A;
	Thu,  8 Jul 2021 14:00:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7E6751BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 02:04:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6A25D41D83
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 02:04:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sotkhY01OMUh for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jul 2021 02:04:14 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com
 [IPv6:2607:f8b0:4864:20::72a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4204141D80
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jul 2021 02:04:14 +0000 (UTC)
Received: by mail-qk1-x72a.google.com with SMTP id s4so4156352qkm.13
 for <intel-wired-lan@lists.osuosl.org>; Wed, 07 Jul 2021 19:04:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=79kwFs/IWOybBEWDpXckF21cEhoS06YNllAgNDTsoVg=;
 b=hVGjXYQsWBZZw7yVg9bUUkTWh/xdX7LlFOHM+hJm2HhfcwAb+nl/0JPaJOTXWJTHQH
 VbAMf9l6tBwOAKkMYIQguuVFEi2LLRDTn77c7pXcr8xn7TASO0f2/PYc1UxC2tAAXX1o
 d1YvFq2qNQ+8NL353gnHQkhwRoRSEK9b1B7IeKR1qRJ1VdZ97U+t9LXi89I8qYvIdsOa
 XSR8lKjTwQ1nqTiZTXC8KM0CyrnnYw4qyQ5XDvZ+lX7quf5g5/PA/uowPeOXcCsdYRk4
 MDykq9kSUMC+IIt3+NuRghd5pSq7pyZ7b/M6OpoRWZhKqft2uBh1x51XyLJcqWcZXEUf
 4Dig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=79kwFs/IWOybBEWDpXckF21cEhoS06YNllAgNDTsoVg=;
 b=FT3BwWTwMFWQQuZmGLDz8doH4g34JVNVSHlz+Mw7Cw0vb4TGe3PTUBCLiE9JAQMi/M
 DAM7A9LKaJhhMBst34kWPqD8M5f9wySsZ0oZQN4VEXhcGBz9CI2PSv5035dHat70QbE5
 X10tyxgZhbnZhYglktsHFvE4XP+5/p4hjf0WUJa9Nvym8LyyP2orkdVAgOn7/MgdAhdf
 Mtiwej/BMu1SWaDO/fkEl7W6puSP6BNIDZ8Bs8DtbLL6D0yXjkRpHsxVrUPoyPONSk//
 AUld+9fKKwlXWBHk0CATIJDMlSS0seY8pUQMSh+FrOUk49JdCsNTjVeX8CbCPEKkKF24
 GqgQ==
X-Gm-Message-State: AOAM532RMafwlVZDM8enz4/4xXkDWJxEkfqQPP2XQ7slyi2AF0zb72/k
 diGv+wUYZ3wbJ0QuSDFcIBZky9HFFQRCXI9rHbY=
X-Google-Smtp-Source: ABdhPJz36Y73BP3gqp3tXPYbQSOgNuHy8oCF6MwJ+BkwlhSi6HtlRN1S+1M4GXUbV3xFm+jrlGDyHZpJD+Pya6GH38g=
X-Received: by 2002:a37:e4a:: with SMTP id 71mr16713996qko.374.1625709853075; 
 Wed, 07 Jul 2021 19:04:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210707215337.lwbgvb6lxs3gmsbb@pali>
 <20210707221042.GA939059@bjorn-Precision-5520>
In-Reply-To: <20210707221042.GA939059@bjorn-Precision-5520>
From: "Oliver O'Halloran" <oohall@gmail.com>
Date: Thu, 8 Jul 2021 12:04:02 +1000
Message-ID: <CAOSf1CGVpogQGAatuY_N0db6OL2BFegGtj6VTLA9KFz0TqYBQg@mail.gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
X-Mailman-Approved-At: Thu, 08 Jul 2021 14:00:17 +0000
Subject: Re: [Intel-wired-lan] [PATCH 1/2] igc: don't rd/wr iomem when PCI
 is removed
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
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 netdev@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pci <linux-pci@vger.kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jul 8, 2021 at 8:40 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> If we add the check as proposed in this patch, I think people will
> read it and think this is the correct way to avoid MMIO errors.  It
> does happen to avoid some MMIO errors, but it cannot avoid them all,
> so it's not a complete solution and it gives a false sense of
> security.

I think it's helpful to classify MMIO errors as either benign or
poisonous with the poison MMIOs causing some kind of crash. Most of
the discussions about pci_dev_is_disconnected(), including this one,
seem to stem from people trying to use it to avoid the poison case. I
agree that using pci_dev_is_disconnected() that way is hacky and
doesn't really fix the problem, but considering poison MMIOs usually
stem from broken hardware or firmware  maybe we should allow it
anyway. We can't do anything better and it's an improvement compared
to crashing.

> A complete solution requires a test *after* the MMIO read.  If you
> have the test after the read, you don't really need one before.  Sure,
> testing before means you can avoid one MMIO read failure in some
> cases.  But avoiding that failure costs quite a lot in code clutter.

It's not that much clutter if the checks are buried in the MMIO
helpers which most drivers define. Speaking of which:

> u32 igc_rd32(struct igc_hw *hw, u32 reg)
> {
>   struct igc_adapter *igc = container_of(hw, struct igc_adapter, hw);
>   u8 __iomem *hw_addr = READ_ONCE(hw->hw_addr);
>   u32 value = 0;
>
>   value = readl(&hw_addr[reg]);
>
>   /* reads should not return all F's */
>   if (!(~value) && (!reg || !(~readl(hw_addr)))) {
>     struct net_device *netdev = igc->netdev;
>
>     hw->hw_addr = NULL;
>     netif_device_detach(netdev);
>     netdev_err(netdev, "PCIe link lost, device now detached\n");
>     WARN(pci_device_is_present(igc->pdev),
>          "igc: Failed to read reg 0x%x!\n", reg);
>   }
>
>   return value;
> }

I think I found where that page fault is coming from.

I wonder if we should provide drivers some way of invoking the error
recovery mechanisms manually or even just flagging itself as broken.
Right now even if the driver bothers with synchronous error detection
the driver can't really do anything other than parking itself and
hoping AER/EEH recovery kicks in.

Oliver
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
