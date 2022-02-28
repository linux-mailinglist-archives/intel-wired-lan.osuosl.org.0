Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF214C77B1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 19:27:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7729F410E3;
	Mon, 28 Feb 2022 18:27:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXv0BXikv2-s; Mon, 28 Feb 2022 18:27:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF38D410AE;
	Mon, 28 Feb 2022 18:27:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 95B861BF2CE
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 18:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7D6EB40132
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 18:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KRT5vWcoHFoV for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 18:26:58 +0000 (UTC)
X-Greylist: delayed 00:06:02 by SQLgrey-1.8.0
Received: from relay5.hostedemail.com (relay5.hostedemail.com [64.99.140.38])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3AAA440110
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 18:26:58 +0000 (UTC)
Received: from omf09.hostedemail.com (a10.router.float.18 [10.200.18.1])
 by unirelay11.hostedemail.com (Postfix) with ESMTP id 8480C81766;
 Mon, 28 Feb 2022 18:20:49 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by
 omf09.hostedemail.com (Postfix) with ESMTPA id 5C4272002A; 
 Mon, 28 Feb 2022 18:20:29 +0000 (UTC)
Message-ID: <0be9de3920442df490f01b6fb1c42521c3de6190.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Jakob Koschel
 <jakobkoschel@gmail.com>
Date: Mon, 28 Feb 2022 10:20:28 -0800
In-Reply-To: <20220228112413.GA2812@kadam>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-2-jakobkoschel@gmail.com>
 <20220228112413.GA2812@kadam>
User-Agent: Evolution 3.40.4-1ubuntu2 
MIME-Version: 1.0
X-Stat-Signature: 1e1i8ombnsc3cdkptu3anccezjc89zox
X-Rspamd-Server: rspamout07
X-Rspamd-Queue-Id: 5C4272002A
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+i6vY6IDwHpNq++UEo/5hqvP4PvgQNb4E=
X-HE-Tag: 1646072429-12569
Subject: Re: [Intel-wired-lan] [PATCH 1/6] drivers: usb: remove usage of
 list iterator past the loop body
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
 bcm-kernel-feedback-list@broadcom.com, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergman <arnd@arndb.de>,
 linux-pm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Brian Johannesmeyer <bjohannesmeyer@gmail.com>, linux-block@vger.kernel.org,
 linux-fsdevel@vger.kernel.org,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 v9fs-developer@lists.sourceforge.net, linux-tegra@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-sgx@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, tipc-discussion@lists.sourceforge.net,
 linux-crypto@vger.kernel.org, netdev@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Mike Rapoport <rppt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2022-02-28 at 14:24 +0300, Dan Carpenter wrote:

> a multi-line indent gets curly braces for readability even though
> it's not required by C.  And then both sides would get curly braces.

That's more your personal preference than a coding style guideline.


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
