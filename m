Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCFF4C7005
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:49:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A712081C6F;
	Mon, 28 Feb 2022 14:49:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ONfk0d8q2cLC; Mon, 28 Feb 2022 14:49:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 947B981346;
	Mon, 28 Feb 2022 14:49:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6A8411BF349
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:07:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60C9F817AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5gytPiJPmtdx for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 12:07:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com
 [IPv6:2a00:1450:4864:20::630])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 56C09817AA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 12:07:02 +0000 (UTC)
Received: by mail-ej1-x630.google.com with SMTP id p14so24251525ejf.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 04:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mpq6EOSgaJN9TDHyutZ1vk7Ts/tQX7VWZG2tuQLEVnE=;
 b=P6Qm9QV+tKwfj02RvG70Y6RM578oBE7xk1h9xLRDl0Phoeno/cOg2X5jGG320h7a80
 51RqQzzCwbkind1CCh/PsD+YJ2xLuw3nTu9DY+Zris5SVOV1FI+8DsU52Jy5KlVydcNu
 G0XxThLJxiMxymk0pHTiYIUYA6Uj3RhvFK2FvOkFF3qdetV9R5zYggWzNl+ojj1OXKZf
 MkNjwD1Q29EHNb+3aSEEQSq9r3HlkkV49QyRIpbAEX1BAYg/I0l3VyVoctyp9PVfLMdm
 3mwm8jDaSc7WWe042oo4mIB/QOs4nHzHS6+i8MWcrLd/SBvvylJKxoeMQwrp3MTt3slq
 2wxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=mpq6EOSgaJN9TDHyutZ1vk7Ts/tQX7VWZG2tuQLEVnE=;
 b=FLbtQcl+amEjlX8jmMrEOYo4vPxMHGvAR1mfTrPJk4P55tzI34wwGEE1BRkpvFtzrj
 Vw47Qp9D5uAlSSPSWi4omY+QSfDLrZ6f4k8QFsMyopAyQxlmgkhOY1y763aGpnQj2R3G
 6jFBfQm28nBpmhjMQAwDGKgRSfRpbjuvu7HIj0NqcW8ullEvjLpxLzctPSg+MC8R8wNw
 w/W04PxJDj63Z73i2OqEslsiV5g+/V8z3b4rKik65T7/YkD6x6lqoYsV3N0FBAiTUASs
 W6sM9J/dMGlRJw3eo8+cKlGgYpN9RlOLPFS9yxIaVtciUgmAC6IDGtCLsJK0os3LqQb5
 C0jQ==
X-Gm-Message-State: AOAM5305I8zDwQVk9R8or5/zwPiK8QyC6UD69jdAyZz5UOI1HeExr/sF
 ZpLkD3iPpBysoIdIyCJ6fCM=
X-Google-Smtp-Source: ABdhPJw3Wj1NaKaNlFGnSPXqnbDgppea1F4wGZoXZbWDfwDJgXssQhrPLcI1GM9ROPIg4DuPtt07Tg==
X-Received: by 2002:a17:907:248a:b0:6ce:e03c:e1df with SMTP id
 zg10-20020a170907248a00b006cee03ce1dfmr14689906ejb.258.1646050020495; 
 Mon, 28 Feb 2022 04:07:00 -0800 (PST)
Received: from smtpclient.apple ([2a02:8109:9d80:3f6c:957a:1d13:c949:d1f3])
 by smtp.gmail.com with ESMTPSA id
 d23-20020a1709067a1700b006d0ebe4af89sm4282959ejo.20.2022.02.28.04.06.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Feb 2022 04:07:00 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 15.0 \(3693.60.0.1.1\))
From: Jakob Koschel <jakobkoschel@gmail.com>
In-Reply-To: <Yhyv42ONIxTj04mg@kroah.com>
Date: Mon, 28 Feb 2022 13:06:57 +0100
Message-Id: <79FCD5F4-0EBA-4E3F-8B3F-D450BBA10367@gmail.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com> <Yhyv42ONIxTj04mg@kroah.com>
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailer: Apple Mail (2.3693.60.0.1.1)
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: Re: [Intel-wired-lan] [PATCH 2/6] treewide: remove using list
 iterator after loop body as a ptr
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
Cc: alsa-devel@alsa-project.org, linux-aspeed@lists.ozlabs.org,
 linux-iio@vger.kernel.org, nouveau@lists.freedesktop.org,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, dri-devel@lists.freedesktop.org,
 Cristiano Giuffrida <c.giuffrida@vu.nl>, amd-gfx@lists.freedesktop.org,
 samba-technical@lists.samba.org, linux1394-devel@lists.sourceforge.net,
 drbd-dev@lists.linbit.com, linux-arch <linux-arch@vger.kernel.org>,
 linux-cifs@vger.kernel.org, kvm@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev, "Bos,
 H.J." <h.j.bos@vu.nl>, Jason Gunthorpe <jgg@ziepe.ca>,
 intel-wired-lan@lists.osuosl.org, kgdb-bugreport@lists.sourceforge.net,
 bcm-kernel-feedback-list@broadcom.com,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>,
 Nathan Chancellor <nathan@kernel.org>, linux-fsdevel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 linux-block@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-f2fs-devel@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> On 28. Feb 2022, at 12:20, Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> On Mon, Feb 28, 2022 at 12:08:18PM +0100, Jakob Koschel wrote:
>> If the list does not contain the expected element, the value of
>> list_for_each_entry() iterator will not point to a valid structure.
>> To avoid type confusion in such case, the list iterator
>> scope will be limited to list_for_each_entry() loop.
>> 
>> In preparation to limiting scope of a list iterator to the list traversal
>> loop, use a dedicated pointer to point to the found element.
>> Determining if an element was found is then simply checking if
>> the pointer is != NULL.
>> 
>> Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
>> ---
>> arch/x86/kernel/cpu/sgx/encl.c       |  6 +++--
>> drivers/scsi/scsi_transport_sas.c    | 17 ++++++++-----
>> drivers/thermal/thermal_core.c       | 38 ++++++++++++++++++----------
>> drivers/usb/gadget/configfs.c        | 22 ++++++++++------
>> drivers/usb/gadget/udc/max3420_udc.c | 11 +++++---
>> drivers/usb/gadget/udc/tegra-xudc.c  | 11 +++++---
>> drivers/usb/mtu3/mtu3_gadget.c       | 11 +++++---
>> drivers/usb/musb/musb_gadget.c       | 11 +++++---
>> drivers/vfio/mdev/mdev_core.c        | 11 +++++---
>> 9 files changed, 88 insertions(+), 50 deletions(-)
> 
> The drivers/usb/ portion of this patch should be in patch 1/X, right?

I kept them separate since it's a slightly different case.
Using 'ptr' instead of '&ptr->other_member'. Regardless, I'll split
this commit up as you mentioned.

> 
> Also, you will have to split these up per-subsystem so that the
> different subsystem maintainers can take these in their trees.

Thanks for the feedback.
To clarify I understand you correctly:
I should do one patch set per-subsystem with every instance/(file?)
fixed as a separate commit?

If I understand correctly, I'll repost accordingly.

> 
> thanks,
> 
> greg k-h

thanks,
Jakob Koschel

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
