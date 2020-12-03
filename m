Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEEF2CDCD4
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 18:57:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B47732E347;
	Thu,  3 Dec 2020 17:57:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zF1ZMwWAlAEd; Thu,  3 Dec 2020 17:57:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 17FB12E359;
	Thu,  3 Dec 2020 17:57:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1E2BD1BF41C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:57:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 19C4E8769D
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:57:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qe47SWqSr5Tv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 17:57:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F27D876C7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 17:57:21 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id z5so2943224iob.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 09:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iwy1nxkNzsDK41E799mE0jnVk8uV5OT9jOHPDUmDqGM=;
 b=XoGEqufjqR3vkKZT6ohzTPHbYmQAEVrHwYWzKYVvuLrOnSG8qoPYZPMXRb/ZTV3+iM
 RFurA0Ji6TS47Z0GDIxGe5VtthNe510Edv7GZzMEej0XHD2l787mHzOkNms2m3qDcJMr
 zncZ3s4rmSlNTQqL1ZYTKd44SsHsjZfxo1H7x9Mf972v2F71ymXgMCjyhBZ5MAgCiZX4
 vF575s198IrH3oNRbIzmPIJqFivvO0Wnai2nACci34alJDGINGpU2o6cPiDkjBVGGkge
 t265fNI59yiryjJPNblz2LL95xlBbemJVqMeq+r0fdumnZI01qV7spshjQPGhwyJTbRI
 IrIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iwy1nxkNzsDK41E799mE0jnVk8uV5OT9jOHPDUmDqGM=;
 b=kJOOpIUKNUxme+K9sxAR6zxZZeupk2Qp6tX5Vd4hgw37zRWdv3RT4fzKgWbKa6B7gC
 mzT0bP/V0M3+KrX83RstNNHhaUIUeBzhFnStPH9kt2IisyEOd7mh0DmlqHcH9xhZDfj7
 xq3MnJAaERuNtdQW0b8NXKEYcKeWRPTKhGEppj9QgEX12YYMrRQiWYYlTWVF4ZCfM+vd
 AKTO2FfFurerRXRzH9RNhXKaOW8jfTwTvT2W1POteRvBkBiO/XyXWfAg6CadpGPrZGgR
 z70RXD6ccSjDt3wa7kwC1Xz8eO52baWicBRHCyI4oZyQx9NtSHDP+XSyny5QkgwTI1CW
 bzFw==
X-Gm-Message-State: AOAM532+P3mFBl0g5l1CQuI8wtlx7tEN/T4BK4d3/2/EacNy1qhLXcAQ
 YXUIBoyKUx5dFBJRqoK1DCwdLBwBglDT2MK+26w=
X-Google-Smtp-Source: ABdhPJwaPzSY4DqfjK75ViVJg/XJ88Har94J8tA+MecYJ1lx7QosnvxbdvszOgZKPN9eBNSFUvegAOpgiaZ4u9JdKhE=
X-Received: by 2002:a05:6602:152:: with SMTP id
 v18mr361343iot.187.1607018240352; 
 Thu, 03 Dec 2020 09:57:20 -0800 (PST)
MIME-Version: 1.0
References: <20201203133236.222207-1-andrew@daynix.com>
In-Reply-To: <20201203133236.222207-1-andrew@daynix.com>
From: Alexander Duyck <alexander.duyck@gmail.com>
Date: Thu, 3 Dec 2020 09:57:09 -0800
Message-ID: <CAKgT0UeoKDcDeMMG7KGMSKXP26txrwNuc73HKFPa57y=Vuo-kg@mail.gmail.com>
To: Andrew Melnychenko <andrew@daynix.com>
Subject: Re: [Intel-wired-lan] [PATCH v2] e1000e: Added ICR clearing by
 corresponding IMS bit.
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
Cc: intel-wired-lan <intel-wired-lan@lists.osuosl.org>, qemu-devel@nongnu.org,
 "Michael S. Tsirkin" <mst@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 3, 2020 at 5:00 AM Andrew Melnychenko <andrew@daynix.com> wrote:
>
> Buglink: https://bugzilla.redhat.com/show_bug.cgi?id=1707441

So the bugzilla seems to be reporting that the NIC operstate is being
misreported when qemu has configured the link down. Based on the
description it isn't clear to me how this patch addresses that. Some
documentation on how you reproduced the issue, and what was seen
before and after this patch would be useful.

> Added ICR clearing if there is IMS bit - according to the note by

Should probably be "Add" instead of "Added". Same for the title of the patch.

> section 13.3.27 of the 8257X developers manual.
>
> Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
> ---
>  hw/net/e1000e_core.c | 10 ++++++++++
>  hw/net/trace-events  |  1 +
>  2 files changed, 11 insertions(+)
>
> diff --git a/hw/net/e1000e_core.c b/hw/net/e1000e_core.c
> index 095c01ebc6..9705f5c52e 100644
> --- a/hw/net/e1000e_core.c
> +++ b/hw/net/e1000e_core.c
> @@ -2624,6 +2624,16 @@ e1000e_mac_icr_read(E1000ECore *core, int index)
>          e1000e_clear_ims_bits(core, core->mac[IAM]);
>      }
>
> +    /*
> +     * PCIe* GbE Controllers Open Source Software Developer's Manual
> +     * 13.3.27 Interrupt Cause Read Register
> +     */
> +    if ((core->mac[ICR] & E1000_ICR_ASSERTED) &&
> +        (core->mac[ICR] & core->mac[IMS])) {
> +        trace_e1000e_irq_icr_clear_icr_bit_ims(core->mac[ICR], core->mac[IMS]);
> +        core->mac[ICR] = 0;
> +    }
> +
>      trace_e1000e_irq_icr_read_exit(core->mac[ICR]);
>      e1000e_update_interrupt_state(core);
>      return ret;

Changes like this have historically been problematic. I am curious
what testing had been done on this and with what drivers? Keep in mind
that we have to support several flavors of BSD, Windows, and Linux
with this.

> diff --git a/hw/net/trace-events b/hw/net/trace-events
> index 5db45456d9..2c3521a19c 100644
> --- a/hw/net/trace-events
> +++ b/hw/net/trace-events
> @@ -237,6 +237,7 @@ e1000e_irq_icr_read_entry(uint32_t icr) "Starting ICR read. Current ICR: 0x%x"
>  e1000e_irq_icr_read_exit(uint32_t icr) "Ending ICR read. Current ICR: 0x%x"
>  e1000e_irq_icr_clear_zero_ims(void) "Clearing ICR on read due to zero IMS"
>  e1000e_irq_icr_clear_iame(void) "Clearing ICR on read due to IAME"
> +e1000e_irq_icr_clear_icr_bit_ims(uint32_t icr, uint32_t ims) "Clearing ICR on read due corresponding IMS bit: 0x%x & 0x%x"
>  e1000e_irq_iam_clear_eiame(uint32_t iam, uint32_t cause) "Clearing IMS due to EIAME, IAM: 0x%X, cause: 0x%X"
>  e1000e_irq_icr_clear_eiac(uint32_t icr, uint32_t eiac) "Clearing ICR bits due to EIAC, ICR: 0x%X, EIAC: 0x%X"
>  e1000e_irq_ims_clear_set_imc(uint32_t val) "Clearing IMS bits due to IMC write 0x%x"
> --
> 2.29.2
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
