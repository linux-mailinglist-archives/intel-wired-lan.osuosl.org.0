Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0483098E9
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Jan 2021 00:50:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 07ABC203B8;
	Sat, 30 Jan 2021 23:50:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1TwKQkYD82lM; Sat, 30 Jan 2021 23:50:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 70707203D4;
	Sat, 30 Jan 2021 23:50:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED91A1BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 23:50:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E8FCF86A8A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 23:50:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5GIwhWgUxw83 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Jan 2021 23:50:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
 by whitealder.osuosl.org (Postfix) with ESMTPS id F2FB486A31
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Jan 2021 23:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=U5UQwbMv+3uVjns01SLw/Dx/LPEia7UMhIebOpf7RQc=; b=QrtH0n+yPLbnjiOE//mqTzj+Be
 IG1AMuHV84knwev+UQe60851Cpl+FPPJxJ8YET2Ah+Izq78JpVBh8Imv8WV/C2Ytz25FulF3/sFzK
 sA2ZM5mYIpDAx4NbkRLA2/TJoKiBvMFgTp2KfMakSesf4xNXA+uyZpNSH9eCk/WsgX0rUxsszowrd
 riqjp6IQdrhWsB0svOpi5deDvy9ujUWHzw7HKjg3XTGWDNH6stIlrP1EJ6AJbK0O0N/CL5dqInFd9
 Em60zIlVc3d2jNRrYhvoYyftbnMWyZ0YlnY5PxL+G1zG6FlftAZ19aSH+dd6mgzUX49YWnidUARyT
 TQTzJsBA==;
Received: from [2601:1c0:6280:3f0:d7c4:8ab4:31d7:f0ba]
 (helo=merlin.infradead.org)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6004-0007jA-So; Sat, 30 Jan 2021 23:49:57 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 30 Jan 2021 15:49:49 -0800
Message-Id: <20210130234949.21090-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] csky: change a Kconfig symbol name to fix
 e1000 build error
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
Cc: Guo Ren <guoren@linux.alibaba.com>, Randy Dunlap <rdunlap@infradead.org>,
 Guo Ren <guoren@kernel.org>, intel-wired-lan@lists.osuosl.org,
 linux-csky@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000's #define of CONFIG_RAM_BASE conflicts with a Kconfig symbol in
arch/csky/Kconfig.
The symbol in e1000 has been around longer, so change arch/csky/
to use DRAM_BASE instead of RAM_BASE to remove the conflict.
(although e1000 is also a 2-line change)

Not tested: I don't have a build toolchain for CSKY.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Reported-by: kernel test robot <lkp@intel.com>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: Guo Ren <guoren@linux.alibaba.com>
Cc: Guo Ren <guoren@kernel.org>
Cc: linux-csky@vger.kernel.org
---
IMO "CONFIG_" namespace should belong to Kconfig files, not
individual drivers, but e1000 isn't the only driver that uses
CONFIG_ symbols.

 arch/csky/Kconfig            |    2 +-
 arch/csky/include/asm/page.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20210129.orig/arch/csky/include/asm/page.h
+++ linux-next-20210129/arch/csky/include/asm/page.h
@@ -28,7 +28,7 @@
 #define SSEG_SIZE	0x20000000
 #define LOWMEM_LIMIT	(SSEG_SIZE * 2)
 
-#define PHYS_OFFSET_OFFSET (CONFIG_RAM_BASE & (SSEG_SIZE - 1))
+#define PHYS_OFFSET_OFFSET (CONFIG_DRAM_BASE & (SSEG_SIZE - 1))
 
 #ifndef __ASSEMBLY__
 
--- linux-next-20210129.orig/arch/csky/Kconfig
+++ linux-next-20210129/arch/csky/Kconfig
@@ -314,7 +314,7 @@ config FORCE_MAX_ZONEORDER
 	int "Maximum zone order"
 	default "11"
 
-config RAM_BASE
+config DRAM_BASE
 	hex "DRAM start addr (the same with memory-section in dts)"
 	default 0x0
 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
