Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ED129203F
	for <lists+intel-wired-lan@lfdr.de>; Sun, 18 Oct 2020 23:41:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11C778763B;
	Sun, 18 Oct 2020 21:41:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MQAigyzTx7sM; Sun, 18 Oct 2020 21:41:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5595387639;
	Sun, 18 Oct 2020 21:41:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BBA71BF407
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 21:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 265088702D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 21:01:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vtEQlATuqGnE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 17 Oct 2020 21:01:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1627A86FC8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 21:01:34 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id e22so8480793ejr.4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 17 Oct 2020 14:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QU5tUnKrk3cCgEOM6DUuSpHohPcIoidzngrqxPrVqlg=;
 b=ntIAxdfj5B3UZZJPAO3W3zqpuYJdxZe6wmMN+Cg5+tfh5QjsxLbXR5o2amfdJQ2J48
 +r9G2vZiMs4S/e6t6kNU+/1RisTXP2Yspklt8lksB4PhSQjsUISEYusYJeN2p0XCHoqr
 5tX/QI+fZe3GQZJaviemAIYQlGxoIFC7s6aX8R5MJQLi2SOYJ/keQbrc62HNUeJ8pCOI
 7WYztP0OE4axPIRoGDfVK4aq4k9dPY6fZ69Y4fL3/a70qb0GrKtNhloBSbp9yIhwtpgg
 UECkhdkcAFyI2jUc3qFZfU7NKoc+E1dZJHZxhONiRQFFV//aVnbaYjp+hfJUaNjfh3TU
 ik3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QU5tUnKrk3cCgEOM6DUuSpHohPcIoidzngrqxPrVqlg=;
 b=gX6BNd3u+DxOLrySoL8vvC4j3yNcccrBmp9hI4EcSULayPe/I+C6U+E0SeR1WvOLXq
 cekKIdiANVXs3j/ONMz4jE0x3h5glCg4KFGO1iIOdyXuZTCANjhAVeisHzYC5eGSH5C1
 S/l8Y6ikp6h+9vJ77HUSXY2sLcSRLfP4w3mAfEBPDm6UACV13rzrwjDGgEeDA2tQKV7s
 r2MZAyukFs1E9uEEnan74QUHH/kE9JlkFywsftdQHEzmFTmX8Bu7kwhTbuQXDqJEkCI+
 ywASOD5lafhqrBvQLy3i+5Oz3YExooUkkEoylMcR99LK53Y5lZF72KizI1Y/EV5GMm1F
 Vvmw==
X-Gm-Message-State: AOAM5320hm+5M68b9aepqOaTXPpgvJpTjhwOENZcZqH6uVc8WO+4oxdr
 V1yQr2HcFlm6VEWaG75UDQkFSsvkuKaJwGV4/IcIzQ==
X-Google-Smtp-Source: ABdhPJzde2s6j/g/ekBLPPrgSH2EJqfd3KSDRuhe3Mnzr9w98lVRa6HniOngGCyhNuV4q/eDk1HFvyy/v8IqyEanGTA=
X-Received: by 2002:a17:906:1a19:: with SMTP id
 i25mr9957370ejf.323.1602968492144; 
 Sat, 17 Oct 2020 14:01:32 -0700 (PDT)
MIME-Version: 1.0
References: <20201017160928.12698-1-trix@redhat.com>
In-Reply-To: <20201017160928.12698-1-trix@redhat.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 17 Oct 2020 14:01:22 -0700
Message-ID: <CAPcyv4jkSFxMXgMABX7sDbwmq8zJO=rLX2ww3Y9Tc0VAANY8xQ@mail.gmail.com>
To: trix@redhat.com
X-Mailman-Approved-At: Sun, 18 Oct 2020 21:40:56 +0000
Subject: Re: [Intel-wired-lan] [RFC] treewide: cleanup unreachable breaks
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
Cc: alsa-devel@alsa-project.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 storagedev@microchip.com,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 virtualization@lists.linux-foundation.org,
 "open list:KEYS-TRUSTED" <keyrings@vger.kernel.org>,
 linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, usb-storage@lists.one-eyed-alien.net,
 linux-watchdog@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Linux ACPI <linux-acpi@vger.kernel.org>, intel-wired-lan@lists.osuosl.org,
 industrypack-devel@lists.sourceforge.net,
 Linux PCI <linux-pci@vger.kernel.org>, spice-devel@lists.freedesktop.org,
 MPT-FusionLinux.pdl@broadcom.com,
 "Linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 Linux-pm mailing list <linux-pm@vger.kernel.org>, linux-can@vger.kernel.org,
 linux-block@vger.kernel.org, linux-gpio@vger.kernel.org,
 xen-devel <xen-devel@lists.xenproject.org>, linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, platform-driver-x86@vger.kernel.org,
 linux-integrity@vger.kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Netdev <netdev@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>,
 Linux Wireless List <linux-wireless@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-security-module@vger.kernel.org,
 linux-crypto <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com,
 bpf@vger.kernel.org, ocfs2-devel@oss.oracle.com, linux-power@fi.rohmeurope.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Oct 17, 2020 at 9:10 AM <trix@redhat.com> wrote:
>
> From: Tom Rix <trix@redhat.com>
>
> This is a upcoming change to clean up a new warning treewide.
> I am wondering if the change could be one mega patch (see below) or
> normal patch per file about 100 patches or somewhere half way by collecting
> early acks.
>
> clang has a number of useful, new warnings see
> https://clang.llvm.org/docs/DiagnosticsReference.html
>
> This change cleans up -Wunreachable-code-break
> https://clang.llvm.org/docs/DiagnosticsReference.html#wunreachable-code-break
> for 266 of 485 warnings in this week's linux-next, allyesconfig on x86_64.
>
> The method of fixing was to look for warnings where the preceding statement
> was a simple statement and by inspection made the subsequent break unneeded.
> In order of frequency these look like
>
> return and break
>
>         switch (c->x86_vendor) {
>         case X86_VENDOR_INTEL:
>                 intel_p5_mcheck_init(c);
>                 return 1;
> -               break;
>
> goto and break
>
>         default:
>                 operation = 0; /* make gcc happy */
>                 goto fail_response;
> -               break;
>
> break and break
>                 case COLOR_SPACE_SRGB:
>                         /* by pass */
>                         REG_SET(OUTPUT_CSC_CONTROL, 0,
>                                 OUTPUT_CSC_GRPH_MODE, 0);
>                         break;
> -                       break;
>
> The exception to the simple statement, is a switch case with a block
> and the end of block is a return
>
>                         struct obj_buffer *buff = r->ptr;
>                         return scnprintf(str, PRIV_STR_SIZE,
>                                         "size=%u\naddr=0x%X\n", buff->size,
>                                         buff->addr);
>                 }
> -               break;
>
> Not considered obvious and excluded, breaks after
> multi level switches
> complicated if-else if-else blocks
> panic() or similar calls
>
> And there is an odd addition of a 'fallthrough' in drivers/tty/nozomi.c
[..]
> diff --git a/drivers/nvdimm/claim.c b/drivers/nvdimm/claim.c
> index 5a7c80053c62..2f250874b1a4 100644
> --- a/drivers/nvdimm/claim.c
> +++ b/drivers/nvdimm/claim.c
> @@ -200,11 +200,10 @@ ssize_t nd_namespace_store(struct device *dev,
>                 }
>                 break;
>         default:
>                 len = -EBUSY;
>                 goto out_attach;
> -               break;
>         }

Acked-by: Dan Williams <dan.j.williams@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
