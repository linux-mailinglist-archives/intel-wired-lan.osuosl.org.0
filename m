Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD0299D1E4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Oct 2024 17:21:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78B668116F;
	Mon, 14 Oct 2024 15:21:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7V-lD77_sW0L; Mon, 14 Oct 2024 15:21:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1273581170
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1728919315;
	bh=cjEGbvB+Gk2WgjQzVrxDcv3CTXI9xiLVm+8stz+1Wsc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=neXPcidwfFSU1H4xLDBbqPy6+o3lQ9kIOyoKMdhvbKHHWQVJXK0ZJj5xor5AkgXC1
	 8aAGrhiyjotCKNyOFHEP8Nuuday8vgX9bhvewKvCsO+F7zTU7qPeewhKKnwPoEQWAd
	 hk8iTp1coZvK7V71P7rhJRg/UfLPXMl0z0yPdTn19wSaBsuyaP5ilTmx4BSKede+4R
	 0sIPel60zNZoFDxwV50L6GJJ2okS5KcNj13hmFQUOuDKxoU9U9jl50nJJ59TmT7Pq6
	 5qqA/biuUcIHB1KYbsItv1S2h5VFfYnHFUDFmpM2hVfQYfX+c3rFDAawnEinjOYd9D
	 ANNAE4skGGuRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1273581170;
	Mon, 14 Oct 2024 15:21:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9E3F71BF2F0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 11:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8A9F2402A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 11:00:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1nFT4vVooKLz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Oct 2024 11:00:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=217.140.110.172;
 helo=foss.arm.com; envelope-from=ryan.roberts@arm.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 1AF25402A2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1AF25402A2
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1AF25402A2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Oct 2024 11:00:53 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47DC9169E;
 Mon, 14 Oct 2024 04:01:22 -0700 (PDT)
Received: from e125769.cambridge.arm.com (e125769.cambridge.arm.com
 [10.1.196.27])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 84C1A3F51B;
 Mon, 14 Oct 2024 04:00:49 -0700 (PDT)
From: Ryan Roberts <ryan.roberts@arm.com>
To: "David S. Miller" <davem@davemloft.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Ard Biesheuvel <ardb@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 David Hildenbrand <david@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Greg Marsden <greg.marsden@oracle.com>, Ivan Ivanov <ivan.ivanov@suse.com>,
 Jakub Kicinski <kuba@kernel.org>, Kalesh Singh <kaleshsingh@google.com>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <mbrugger@suse.com>, Miroslav Benes <mbenes@suse.cz>,
 Paolo Abeni <pabeni@redhat.com>, Will Deacon <will@kernel.org>
Date: Mon, 14 Oct 2024 11:58:34 +0100
Message-ID: <20241014105912.3207374-27-ryan.roberts@arm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241014105912.3207374-1-ryan.roberts@arm.com>
References: <20241014105514.3206191-1-ryan.roberts@arm.com>
 <20241014105912.3207374-1-ryan.roberts@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 14 Oct 2024 15:21:53 +0000
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=arm.com
Subject: [Intel-wired-lan] [RFC PATCH v1 27/57] net: e1000: Remove PAGE_SIZE
 compile-time constant assumption
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
Cc: Ryan Roberts <ryan.roberts@arm.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

To prepare for supporting boot-time page size selection, refactor code
to remove assumptions about PAGE_SIZE being compile-time constant. Code
intended to be equivalent when compile-time page size is active.

Convert CPP conditionals to C conditionals. The compiler will dead code
strip when doing a compile-time page size build, for the same end
effect. But this will also work with boot-time page size builds.

Signed-off-by: Ryan Roberts <ryan.roberts@arm.com>
---

***NOTE***
Any confused maintainers may want to read the cover note here for context:
https://lore.kernel.org/all/20241014105514.3206191-1-ryan.roberts@arm.com/

 drivers/net/ethernet/intel/e1000/e1000_main.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000/e1000_main.c b/drivers/net/ethernet/intel/e1000/e1000_main.c
index ab7ae418d2948..cc14788f5bb04 100644
--- a/drivers/net/ethernet/intel/e1000/e1000_main.c
+++ b/drivers/net/ethernet/intel/e1000/e1000_main.c
@@ -3553,12 +3553,10 @@ static int e1000_change_mtu(struct net_device *netdev, int new_mtu)
 
 	if (max_frame <= E1000_RXBUFFER_2048)
 		adapter->rx_buffer_len = E1000_RXBUFFER_2048;
-	else
-#if (PAGE_SIZE >= E1000_RXBUFFER_16384)
+	else if (PAGE_SIZE >= E1000_RXBUFFER_16384)
 		adapter->rx_buffer_len = E1000_RXBUFFER_16384;
-#elif (PAGE_SIZE >= E1000_RXBUFFER_4096)
+	else if (PAGE_SIZE >= E1000_RXBUFFER_4096)
 		adapter->rx_buffer_len = PAGE_SIZE;
-#endif
 
 	/* adjust allocation if LPE protects us, and we aren't using SBP */
 	if (!hw->tbi_compatibility_on &&
-- 
2.43.0

