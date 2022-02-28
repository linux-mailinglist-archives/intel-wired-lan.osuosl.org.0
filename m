Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A784C6A1D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 12:20:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB9E3409E5;
	Mon, 28 Feb 2022 11:20:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VOvyScXJZ-9z; Mon, 28 Feb 2022 11:20:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C163D409D3;
	Mon, 28 Feb 2022 11:20:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 270221BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0FC0E4057C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:20:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SJbJ3dvjRgX for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:20:10 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 299A540195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:20:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id DE71F60F9E;
 Mon, 28 Feb 2022 11:20:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 577DAC340E7;
 Mon, 28 Feb 2022 11:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1646047208;
 bh=TZYI8CoLqZwdjhCp4FIqkyAKtFSpIqtbXR7Aczi5lHQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=C57riiYnEjUdxOZhn04GGyA8PIVDUJ6DJKuCKjTYwuUmTfW6bVKDrs724kyxSBaKx
 RgI2btjN0kChcFl20e7HpTgxlexOr2YrBREdqqTBvDVt/Whdw/5z0V77N814zObmo3
 /EeMG4N6szzw6EaZ5Y2WBm3/aL7Ea4aeZYOpa8Fs=
Date: Mon, 28 Feb 2022 12:20:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jakob Koschel <jakobkoschel@gmail.com>
Message-ID: <Yhyv42ONIxTj04mg@kroah.com>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-3-jakobkoschel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228110822.491923-3-jakobkoschel@gmail.com>
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
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 28, 2022 at 12:08:18PM +0100, Jakob Koschel wrote:
> If the list does not contain the expected element, the value of
> list_for_each_entry() iterator will not point to a valid structure.
> To avoid type confusion in such case, the list iterator
> scope will be limited to list_for_each_entry() loop.
> 
> In preparation to limiting scope of a list iterator to the list traversal
> loop, use a dedicated pointer to point to the found element.
> Determining if an element was found is then simply checking if
> the pointer is != NULL.
> 
> Signed-off-by: Jakob Koschel <jakobkoschel@gmail.com>
> ---
>  arch/x86/kernel/cpu/sgx/encl.c       |  6 +++--
>  drivers/scsi/scsi_transport_sas.c    | 17 ++++++++-----
>  drivers/thermal/thermal_core.c       | 38 ++++++++++++++++++----------
>  drivers/usb/gadget/configfs.c        | 22 ++++++++++------
>  drivers/usb/gadget/udc/max3420_udc.c | 11 +++++---
>  drivers/usb/gadget/udc/tegra-xudc.c  | 11 +++++---
>  drivers/usb/mtu3/mtu3_gadget.c       | 11 +++++---
>  drivers/usb/musb/musb_gadget.c       | 11 +++++---
>  drivers/vfio/mdev/mdev_core.c        | 11 +++++---
>  9 files changed, 88 insertions(+), 50 deletions(-)

The drivers/usb/ portion of this patch should be in patch 1/X, right?

Also, you will have to split these up per-subsystem so that the
different subsystem maintainers can take these in their trees.

thanks,

greg k-h
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
