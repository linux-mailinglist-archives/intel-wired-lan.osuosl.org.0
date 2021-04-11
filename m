Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A4635B1DA
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Apr 2021 07:54:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F48A83A5E;
	Sun, 11 Apr 2021 05:54:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X4Zi8dKRi5xN; Sun, 11 Apr 2021 05:54:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 242BC83A4F;
	Sun, 11 Apr 2021 05:54:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BD061BF5E0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 05:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46DFE402A8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 05:54:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=infradead.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HSp2M7w1fwS6 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Apr 2021 05:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7692040299
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Apr 2021 05:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=SaNBURFA0COj7csdi3RrmkJ1pw97mCX9cbVvlM/9+g8=; b=bIe+F5I1L6nn9iWW8iQEFhxYaD
 Fuz75mOt8HRpbB44011Fsk4+wkhJ4o7BoEXeCszj2O0XcaBRL/yo1+ifZmveaYVSbyh0Wa/1NI5ZH
 Un+n+36mLmLB1ZM4pYIAqbZv6m09IqwRO/kAlp8RzzGkqziFMmn78lcDKr8R7TBLZmuZblGjoDLcs
 azM/+se24lDreM45gtgDRmHwOWe8zUJ683RZ2NPAJvypulwofA3jdzOVzlqxcvcwQM2yHC2oCK1Pa
 3burDeVZtLCsJ/GJPltB8yTrovcsTBT4HJ/eW2iTPHCBYUARpolw7SOQKX5zaFQ3NdVvxurcPD5fE
 0PJmb5jg==;
Received: from [2601:1c0:6280:3f0::e0e1] (helo=smtpauth.infradead.org)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVT2T-002cUV-HL; Sun, 11 Apr 2021 05:53:43 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 10 Apr 2021 22:53:35 -0700
Message-Id: <20210411055335.7111-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH RESEND] csky: change a Kconfig symbol name
 to fix e1000 build error
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
 linux-csky@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

e1000's #define of CONFIG_RAM_BASE conflicts with a Kconfig symbol in
arch/csky/Kconfig.
The symbol in e1000 has been around longer, so change arch/csky/
to use DRAM_BASE instead of RAM_BASE to remove the conflict.
(although e1000 is also a 2-line change)

Now build-tested.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Reported-by: kernel test robot <lkp@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: Guo Ren <guoren@linux.alibaba.com>
Cc: Guo Ren <guoren@kernel.org>
Cc: linux-csky@vger.kernel.org
Acked-by: Guo Ren <guoren@kernel.org>
---
Andrew, please merge.

v2: Add Acked-by: Guo Ren
    Has now been build-tested.

IMO "CONFIG_" namespace should belong to Kconfig files, not
individual drivers, but e1000 isn't the only driver that uses
CONFIG_ symbols.

 arch/csky/Kconfig            |    2 +-
 arch/csky/include/asm/page.h |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20210409.orig/arch/csky/include/asm/page.h
+++ linux-next-20210409/arch/csky/include/asm/page.h
@@ -28,7 +28,7 @@
 #define SSEG_SIZE	0x20000000
 #define LOWMEM_LIMIT	(SSEG_SIZE * 2)
 
-#define PHYS_OFFSET_OFFSET (CONFIG_RAM_BASE & (SSEG_SIZE - 1))
+#define PHYS_OFFSET_OFFSET (CONFIG_DRAM_BASE & (SSEG_SIZE - 1))
 
 #ifndef __ASSEMBLY__
 
--- linux-next-20210409.orig/arch/csky/Kconfig
+++ linux-next-20210409/arch/csky/Kconfig
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
