Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0746C2C16AD
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Nov 2020 21:45:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7BC4387040;
	Mon, 23 Nov 2020 20:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5ha0Xg-itw-6; Mon, 23 Nov 2020 20:45:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 25B7B8703E;
	Mon, 23 Nov 2020 20:45:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3903B1BF3D9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 20:39:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 245B5204C9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 20:39:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13BAGnKZHx1Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Nov 2020 20:39:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 2830D204C1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Nov 2020 20:39:10 +0000 (UTC)
Received: from localhost (cpc102334-sgyl38-2-0-cust884.18-2.cable.virginm.net
 [92.233.91.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F8D920727;
 Mon, 23 Nov 2020 20:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606163949;
 bh=yRAHEf2PhY/y2Dh2MAdFhvkDqubov55OW1N5tnXfZe4=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
 b=FiLdvTxoD+lskszIoEcw+md7nnzpJ9Qwnm7S+zf9xluf6HIP4KdKJMa/iI51GOLPa
 ocIpWS0bRSQTTJ9UPSA0Pii8sDUj6STFNq6fGaeW8Th6MZvHRpJVwUjeV8ITteERK3
 KOz9alGiWxV3bdZuK85EGWI5gtevmyqI/dT1XmmI=
Date: Mon, 23 Nov 2020 20:38:46 +0000
From: Mark Brown <broonie@kernel.org>
To: linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <gustavoars@kernel.org>
In-Reply-To: <cover.1605896059.git.gustavoars@kernel.org>
References: <cover.1605896059.git.gustavoars@kernel.org>
Message-Id: <160616392671.21180.16517492185091399884.b4-ty@kernel.org>
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 23 Nov 2020 20:45:07 +0000
Subject: Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through warnings for
 Clang
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
Cc: linux-watchdog@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-atm-general@lists.sourceforge.net, usb-storage@lists.one-eyed-alien.net,
 Nick Desaulniers <ndesaulniers@google.com>, rnel.org@osuosl.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, linux-sctp@vger.kernel.org, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, linux-hardening@vger.kernel.org,
 op-tee@lists.trustedfirmwar, wcn36xx@lists.infradead.org,
 linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net,
 linux-afs@lists.infradead.org, drbd-dev@lists.linbit.com,
 devel@driverdev.osuosl.org, linux-cifs@vger.kernel.org,
 rds-devel@oss.oracle.com, linux-scsi@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-rdma@vger.kernel.org,
 bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com,
 cluster-devel@redhat.com, oss-drivers@netronome.com, linux-mmc@vger.kernel.org,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, Miguel Ojeda <ojeda@kernel.org>,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 linux-media@vger.kernel.org, l@osuosl.org, Kees Cook <keescook@chromium.org>,
 selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, reiserfs-devel@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-block@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 samba-technical@lists.samba.org, linux-fbdev@vger.kernel.org,
 inux-ide@vger.kernel.org, nouveau@lists.freedesktop.org,
 linux-hams@vger.kernel.org, Nathan Chancellor <natechancellor@gmail.com>,
 linux-can@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-hwmon@vger.kernel.org, x86@kernel.org, linux-nfs@vger.kernel.org,
 GR-Linux-NIC-Dev@marvell.com, e.org@osuosl.org, netfilter-devel@vger.ke,
 linux-decnet-user@lists.sourceforge.net, patches@opensource.cirrus.com,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org, dm-devel@redhat.com,
 linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-security-module@vger.kernel.org, keyrings@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-crypto@vger.kernel.org,
 netdev@vger.kernel.org, Joe Perches <joe@perches.com>,
 linux-integrity@vger.kernel.org, GR-everest-linux-l2@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, 20 Nov 2020 12:21:39 -0600, Gustavo A. R. Silva wrote:
> This series aims to fix almost all remaining fall-through warnings in
> order to enable -Wimplicit-fallthrough for Clang.
> 
> In preparation to enable -Wimplicit-fallthrough for Clang, explicitly
> add multiple break/goto/return/fallthrough statements instead of just
> letting the code fall through to the next case.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] regulator: as3722: Fix fall-through warnings for Clang
      commit: b52b417ccac4fae5b1f2ec4f1d46eb91e4493dc5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
