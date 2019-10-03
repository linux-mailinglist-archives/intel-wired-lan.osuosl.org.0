Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC66C9595
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Oct 2019 02:25:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2C9B787F5C;
	Thu,  3 Oct 2019 00:25:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QCUGQrKGFy2W; Thu,  3 Oct 2019 00:25:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E5E787F71;
	Thu,  3 Oct 2019 00:25:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7DDBB1BF96B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 00:25:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7A0B785618
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 00:25:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B7ThHRAUR8da for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Oct 2019 00:25:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from shards.monkeyblade.net (shards.monkeyblade.net [23.128.96.9])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0893080EC2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Oct 2019 00:25:27 +0000 (UTC)
Received: from localhost (unknown [IPv6:2601:601:9f00:1e2::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E3C1B155283C1;
 Wed,  2 Oct 2019 17:25:26 -0700 (PDT)
Date: Wed, 02 Oct 2019 17:25:26 -0700 (PDT)
Message-Id: <20191002.172526.1832563406015085740.davem@davemloft.net>
To: j.neuschaefer@gmx.net
From: David Miller <davem@davemloft.net>
In-Reply-To: <20191002150956.16234-1-j.neuschaefer@gmx.net>
References: <20191002150956.16234-1-j.neuschaefer@gmx.net>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Wed, 02 Oct 2019 17:25:27 -0700 (PDT)
Subject: Re: [Intel-wired-lan] [PATCH] Documentation: networking: device
 drivers: Remove stray asterisks
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
Cc: corbet@lwn.net, netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 drivers@pensando.io, snelson@pensando.io
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jonathan Neusch=E4fer <j.neuschaefer@gmx.net>
Date: Wed,  2 Oct 2019 17:09:55 +0200

> These asterisks were once references to a line that said:
>   "* Other names and brands may be claimed as the property of others."
> But now, they serve no purpose; they can only irritate the reader.
> =

> Fixes: de3edab4276c ("e1000: update README for e1000")
> Fixes: a3fb65680f65 ("e100.txt: Cleanup license info in kernel doc")
> Fixes: da8c01c4502a ("e1000e.txt: Add e1000e documentation")
> Fixes: f12a84a9f650 ("Documentation: fm10k: Add kernel documentation")
> Fixes: b55c52b1938c ("igb.txt: Add igb documentation")
> Fixes: c4e9b56e2442 ("igbvf.txt: Add igbvf Documentation")
> Fixes: d7064f4c192c ("Documentation/networking/: Update Intel wired LAN d=
river documentation")
> Fixes: c4b8c01112a1 ("ixgbevf.txt: Update ixgbevf documentation")
> Fixes: 1e06edcc2f22 ("Documentation: i40e: Prepare documentation for RST =
conversion")
> Fixes: 105bf2fe6b32 ("i40evf: add driver to kernel build system")
> Fixes: 1fae869bcf3d ("Documentation: ice: Prepare documentation for RST c=
onversion")
> Fixes: df69ba43217d ("ionic: Add basic framework for IONIC Network device=
 driver")
> Signed-off-by: Jonathan Neusch=E4fer <j.neuschaefer@gmx.net>

Jon, how do you want to handle changes like this?

I mean, there are unlikely to be conflicts from something like this so it
could simply go via the documentation tree.

Acked-by: David S. Miller <davem@davemloft.net>

I could also take it via net-next, either way is fine with me.

Just let me know.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
