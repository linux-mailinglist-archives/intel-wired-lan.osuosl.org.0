Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 131414C6FFE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B7A47823AA;
	Mon, 28 Feb 2022 14:48:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n3qzIXq4CT8B; Mon, 28 Feb 2022 14:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CFAC98196A;
	Mon, 28 Feb 2022 14:48:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E57001BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:31:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0E6F40979
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:31:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=codewreck.org header.b="RT/IL34Z";
 dkim=pass (2048-bit key) header.d=codewreck.org header.b="E7ShsxTd"
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-Z626VdyQ7U for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:31:17 +0000 (UTC)
X-Greylist: delayed 00:08:38 by SQLgrey-1.8.0
Received: from nautica.notk.org (ipv6.notk.org [IPv6:2001:41d0:1:7a93::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B94D84090A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:31:16 +0000 (UTC)
Received: by nautica.notk.org (Postfix, from userid 108)
 id 0946CC027; Mon, 28 Feb 2022 12:22:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646047355; bh=nbIjFrzgDVTmB4SrJnZGd7fIFmdwChwe2lL83Uag4us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RT/IL34ZMb4wE13ecGpP0cPYfvUALLBHI3h+Nwqjk6un5A9pkdgT4k1/FqMlC2j9j
 5rXnbfX9CeRpV2BF45XH/gyMBAIlLBsJthcQL9g53J0izMt9+z9BAyzbfmHq+6LfSX
 iY61zvlTrG45WH2waKu+VWh33WBy571UkxI0mCXre32lMHSogGum3oUpiCiQjYBFm0
 UrVmOxcDfy2+XRbr8yw+xW4xvsCb62na1mVOfycyKoB6ejlKrB2T4jQrMTugRWsRaP
 9QmdpahZrSpqJLY1nBe2woUd/0EuRh0B46d3WvFe6/e41bNLFb+98ZtIxTmDiQp/ER
 KjOOwgzjanHhA==
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 6162EC009;
 Mon, 28 Feb 2022 12:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1646047353; bh=nbIjFrzgDVTmB4SrJnZGd7fIFmdwChwe2lL83Uag4us=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E7ShsxTdVoGEbpDYFF27HXnsiskOzo+90fWYK/YK/pcgewcio/aI2ukKBbk8Ggf8c
 PSXNNRohBAnroHDgJmzD26WOCBS51v3CgaeWJoVRlz3gzi1Wk2c722FgVeG9ZC8Gq1
 VxeMBZJsJJ2s49Z0zkRuzCFT0FdEMmJ4Jlg8so5xUNkI1Pmhr9T77hNpqbhc5MUSIm
 Vf9CZqLUP+U5LMthWxqmxcIfa+qcI6C/HHTtBGWVbD6UPJLDQeI2MK30nqaJN3mP3G
 MxeZ4iTWnejwYcukxHfaPz9ZlYf9Zxp1r7k3O+mRBYZR8EPZsNImCl3hToWu78+1r5
 3QpJ5t/64l3TQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 8186bc45;
 Mon, 28 Feb 2022 11:22:16 +0000 (UTC)
Date: Mon, 28 Feb 2022 20:22:01 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Jakob Koschel <jakobkoschel@gmail.com>
Message-ID: <YhywWTEIY7UnCYtL@codewreck.org>
References: <20220228110822.491923-1-jakobkoschel@gmail.com>
 <20220228110822.491923-7-jakobkoschel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220228110822.491923-7-jakobkoschel@gmail.com>
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: Re: [Intel-wired-lan] [PATCH 6/6] treewide: remove check of list
 iterator against head past the loop body
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

This is a bit more work (and a lot more noise), but I'd prefer if
this were split into as many patches as there are components.

I'm not going to review the parts of the patches that don't concern me,
and if something turns out to be a problem later one (it shouldn't but
one never knows) it'll be much easier to revert or put the blame on an
individual smaller commit than on this...

With that being said, ultimately I don't care that much and will leave
that to people who do :)

Jakob Koschel wrote on Mon, Feb 28, 2022 at 12:08:22PM +0100:
>  net/9p/trans_xen.c                            | 11 +++--

This 9p change looks good to me.

Reviewed-by: Dominique Martinet <asmadeus@codewreck.org> # 9p

-- 
Dominique
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
