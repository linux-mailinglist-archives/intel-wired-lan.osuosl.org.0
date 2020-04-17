Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B9D1AE5D6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2020 21:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8826D8828E;
	Fri, 17 Apr 2020 19:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H6hp4Fysdz78; Fri, 17 Apr 2020 19:31:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB8D98826A;
	Fri, 17 Apr 2020 19:31:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 588A71BF30C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 19:31:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 502988773D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 19:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F0HsV4fhokwH for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2020 19:31:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6B48687726
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 19:31:23 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id e127so3579913iof.6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2020 12:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n9+lL2n8AucDNjde26Ly/5qWICz+zDBvuPK5kwsgulg=;
 b=fVUkvwBIKudRVG4RCzOMpYiYsWwBD7/EJjmYAWWnViftF0ZA8ItYjZWabl2Wop3/SI
 TTtHva647+yM90MfBS0fdJauivuOor/+RHiKvggi3I80mS1jY2vw23XR10UggTDKf5ua
 JHydrfkVJ4kLeCtahlQeMfbumHYE8PWpq4F5ndwzso4r1wlBHoYVVMuJU6jZHTgxqSaf
 xp7RQLqu5Gh8C+WnHaHQRw1/e5NdkQCanzO7ASYTvybmrXCvwgbdYGVt81Ih9ARdgazb
 jRkiuZN86oC3Jm+WptYy33347O+NfiPCtRQJygRuFF/wKmbtLGmi/q+oP1xf0SYLQCAI
 47gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n9+lL2n8AucDNjde26Ly/5qWICz+zDBvuPK5kwsgulg=;
 b=E1tedZe9ovd+oNYfF0JWFawFi12uZufY1m4JJ/mmV3c0UYbzT3GKeAJMDhvzgDlfyh
 AoUOtYDFTMhIKyy5IsPMBa5QpSy0y34ecgkZg98E5/NwfqI1wPZzJC7wYU6LYbcf2kL/
 8lQHykEk7yze9cTT0qulZJKhRv0qyN31gpNjcD36DpM5vI0sCDRMQ36XkL2fVUIS5bkK
 MZ6o15liLpfNVclp8gJgHKqOtJQfFLkSUz4jltZh3v0Xfn9Fp+jeew7UrQoBxTg4ed63
 ap3yZ5B9W52uXXdtti928wsvQcobGgh4QQXxWKthdFyCjhWsg1fbFaYOwWRfTKnx7eXJ
 d3Wg==
X-Gm-Message-State: AGi0PuaNy7CkVqk13Jnn+XQZKTnazLjskSS9r2e+KjwLUZUVfOLOtULi
 t4RXu6o3MzwYuQnhuh+QFB8hZoWPUPJJ0NEUFo0=
X-Google-Smtp-Source: APiQypK3tNlNQeIPwt+9hUFRkz+NkeaW7pGH6m0IS++XRgKGvjeMMaS7OnJ4iiemNC+v29HXcrxOe9BYCUD6EVfezV4=
X-Received: by 2002:a05:6638:103c:: with SMTP id
 n28mr4710561jan.114.1587151882482; 
 Fri, 17 Apr 2020 12:31:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200417110627.3589435-1-andrew@daynix.com>
In-Reply-To: <20200417110627.3589435-1-andrew@daynix.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Fri, 17 Apr 2020 12:31:11 -0700
Message-ID: <CAKgT0UfSFWu9VRzMY5PTwgzAgaeMx711Lip2hn=jbpyx-pn0uQ@mail.gmail.com>
To: andrew@daynix.com
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: Fixed issue with LSC pending.
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Apr 17, 2020 at 3:39 AM <andrew@daynix.com> wrote:
>
> From: Andrew Melnychenko <andrew@daynix.com>
>
> Bug: https://bugzilla.redhat.com/show_bug.cgi?id=1707441
> The issue was detected with QEMU and doesn't reproduce on Windows guest.
> CTRL_EXT.IAME is disabled by
> rev 0a8047ac68e50e4ccbadcfc6b6b070805b976885:
> "to avoid disruption from potential programs that access the registers
> directly."
> So let's leave it like that and add interrupt pending clearance
> using write to ICR. It fixes the issue when removed cable can't be detected
> by the driver.
>
> Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
> ---
>  drivers/net/ethernet/intel/e1000e/netdev.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
> index 177c6da80c57..064bb4a47131 100644
> --- a/drivers/net/ethernet/intel/e1000e/netdev.c
> +++ b/drivers/net/ethernet/intel/e1000e/netdev.c
> @@ -1898,6 +1898,9 @@ static irqreturn_t e1000_msix_other(int __always_unused irq, void *data)
>         struct e1000_hw *hw = &adapter->hw;
>         u32 icr = er32(ICR);
>
> +       if (!(er32(CTRL_EXT) & E1000_CTRL_EXT_IAME))
> +               ew32(ICR, icr & ~E1000_ICR_INT_ASSERTED);
> +
>         if (icr & adapter->eiac_mask)
>                 ew32(ICS, (icr & adapter->eiac_mask));
>

So this would likely cause more issues then it helps. Specifically,
clearing the ICR should happen with any read of it as long as at least
one bit in the current mask is set, and the write doesn't make any
sense for actual hardware as the INT_ASSERTED bit is not clear on
write. It is cleared when the register is cleared.

I am pretty sure this is a bug in the QEMU side of the implementation,
specifically in e1000e_mac_icr_read
(https://lxr.missinglinkelectronics.com/qemu+v4.0.0/hw/net/e1000e_core.c#L2608).
If you look at section 13.3.27 of the 8257X developers manual
(https://lxr.missinglinkelectronics.com/qemu+v4.0.0/hw/net/e1000e_core.c#L2608)
it has a lengthy explanation about the ICR register in the "Note:"
section where it essentially explains that as long as any bit in the
IMS is set that corresponds to the ICR register value, and the
INT_ASSERTED bit is set then the entire ICR is cleared on read. The
IAME bit triggers something similar but it is based on the IAM
register which is why it worked prior to this patch.

The fix would likely to be to add a bit to QEMU to allow for clearing
the ICR register, or at least any bits from it that are set in the IMS
when it is read.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
