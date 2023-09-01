Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0813790318
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Sep 2023 23:17:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4EF1140603;
	Fri,  1 Sep 2023 21:17:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4EF1140603
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693603056;
	bh=3gO5tECbqlFAqGeAvjVve7US+JKtP1jbuRDBus7Tf5k=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=rCSvrCFFFXqPzrqfoUAPTPi2+RcsrYcq3e/JR+xsRMj717quBW2v68+6KDvzeGUVz
	 gc9wXhFwtLl3SGBGvW/HOzbU7z3HyoJTGIAdsqHoMg6H0ebHrlsTph6d2MUaNo++D4
	 5iqypuu1a5mXRaW5gwLndu0iankt8czQx1y63BlpRBi9dOiZgb8YvnKPnXhqJlGPAJ
	 w/a6ffzuNt3D/GpqrOGotyRzhvO29sWLO1/K5ewWVEnx/Kc+ae3JhGsFAdUzTDf9b/
	 os6eTJ4nPqtMXiNzrgXyfCn+J5ylhht8SYAQ5x6U3nT8Fl9KscijEpJA0C4myA3BD8
	 PIUQUT+3+xLEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LJCoOIs5aigR; Fri,  1 Sep 2023 21:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2C23A400AC;
	Fri,  1 Sep 2023 21:17:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2C23A400AC
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B447A1BF475
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 21:17:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 86896420E3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 21:17:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86896420E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C2iAQMqDBvjz for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Sep 2023 21:17:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4B8FD420AE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Sep 2023 21:17:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4B8FD420AE
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 05F3E61AF0;
 Fri,  1 Sep 2023 21:17:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1954EC433C8;
 Fri,  1 Sep 2023 21:17:27 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Fri,  1 Sep 2023 14:17:18 -0700
Message-ID: <20230901211718.739139-1-kuba@kernel.org>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693603047;
 bh=Me0Z5gtD3X+vFlIiVu0e2+D0btlRSRW4qCN3xpDjeHE=;
 h=From:To:Cc:Subject:Date:From;
 b=I9gT0CzyxOb4cWviUs4e+rVXO6nuSjRS9HZ2v3AUrZG5VHlUGB3W8yajwuCS5d9Li
 8MNXQAMbA6kgNvE/DryPex7m08UrIwcSLjSVVf8xjGbsdKL/tTWf2GQW0nSE0eJRug
 rfrS7qvYUP1SD4Q2lmbLnMz0MWxOYVi9Rn3NOLfPQ0IbgUbUTkDQwTb0lypnDYSW4k
 ZBw03AsquhIsW5EGLh2/VFv/75J2MMSzjrCBmmhflf8RNHaf/rxQ0NmbljjC9mur2t
 28i9uDmmrplgFTNsRrMJblMDg3vNjTkdKZ3RAlgMvc6G3TSO5bmwHSzOmivNlXOqqn
 OnyoN2DNuX8Pg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=I9gT0Czy
Subject: [Intel-wired-lan] [PATCH net] docs: netdev: update the netdev infra
 URLs
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
 edumazet@google.com, intel-wired-lan@lists.osuosl.org,
 workflows@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>, pabeni@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Some corporate proxies block our current NIPA URLs because
they use a free / shady DNS domain. As suggested by Jesse
we got a new DNS entry from Konstantin - netdev.bots.linux.dev,
use it.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
CC: corbet@lwn.net
CC: workflows@vger.kernel.org
CC: linux-doc@vger.kernel.org

CC: intel-wired-lan@lists.osuosl.org

Please LMK if the old URLs pop up somewhere, I may have missed
some place. The old patchwork checks will continue to use the
old address but new ones should link via netdev.bots...
---
 Documentation/process/maintainer-netdev.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/process/maintainer-netdev.rst b/Documentation/process/maintainer-netdev.rst
index db1b81cfba9b..09dcf6377c27 100644
--- a/Documentation/process/maintainer-netdev.rst
+++ b/Documentation/process/maintainer-netdev.rst
@@ -98,7 +98,7 @@ If you aren't subscribed to netdev and/or are simply unsure if
 repository link above for any new networking-related commits.  You may
 also check the following website for the current status:
 
-  https://patchwork.hopto.org/net-next.html
+  https://netdev.bots.linux.dev/net-next.html
 
 The ``net`` tree continues to collect fixes for the vX.Y content, and is
 fed back to Linus at regular (~weekly) intervals.  Meaning that the
@@ -185,7 +185,7 @@ must match the MAINTAINERS entry) and a handful of senior reviewers.
 
 Bot records its activity here:
 
-  https://patchwork.hopto.org/pw-bot.html
+  https://netdev.bots.linux.dev/pw-bot.html
 
 Review timelines
 ~~~~~~~~~~~~~~~~
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
