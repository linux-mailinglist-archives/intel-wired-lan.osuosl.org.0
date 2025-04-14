Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 489AEA886D4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Apr 2025 17:20:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A46660B98;
	Mon, 14 Apr 2025 15:20:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ECmfYhjXo3T; Mon, 14 Apr 2025 15:20:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2F1160642
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744644031;
	bh=C/ObABjOV6tmamGjv9L2Q13+VEF7f80WjKn+a2KmsZU=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wKSKt0JSNGnWyZF/Fpe2xtzS36XqaosDWOvzjjQ/eqFP9YjVAUgxuS/Al9etaXT0t
	 l7qQ2+gh2ioWI8GwhccQs/y5sl5WP3md06lTibnNDxZavPgHkxMZlpForpHMF1HE6H
	 RAmwGp+ofuPyRFFOeYnNHr1P+4s9awKE7dnAIJl2gf3s3ltT6FYky56RPBF0Iktz1u
	 0Y0UvVRpVnmaopFKFzVUhDE7FpNkC1D5SewOzolaFGg3Aphr7Mh5Va2MTQf/JmfWna
	 9qkGr4eTJlHZUaoQD7r/BpXTwzjFJ5frUN6C5ejdTog1zWJ/wPxw/8UI53+99KVSrS
	 Cyz7rcRAalPKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F1160642;
	Mon, 14 Apr 2025 15:20:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 6667E250
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTP id 4A81381F0D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id zPwSfuYs9ZBh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=t-8ch@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9E3A081ECC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E3A081ECC
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp1.osuosl.org (Postfix) with UTF8SMTPS id 9E3A081ECC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Apr 2025 08:34:24 +0000 (UTC)
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
Date: Mon, 14 Apr 2025 10:26:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250414-restricted-pointers-net-v1-5-12af0ce46cdd@linutronix.de>
References: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
In-Reply-To: <20250414-restricted-pointers-net-v1-0-12af0ce46cdd@linutronix.de>
To: Jeff Johnson <jjohnson@kernel.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Brian Norris <briannorris@chromium.org>, 
 Francesco Dolcini <francesco@dolcini.it>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
 Tariq Toukan <tariqt@nvidia.com>
Cc: ath10k@lists.infradead.org, linux-kernel@vger.kernel.org, 
 ath11k@lists.infradead.org, ath12k@lists.infradead.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-rdma@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744619172; l=1442;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=DUG1+lN4hYWTRXUIHu9/uXnn+NTpymOB/TnWz/zGsdo=;
 b=4Oqz6NIxNX2Dv35WuWlxsIW56xiHSeN4apRT/2S8GealXzW3EYzYF9P9h2Mhnx6cG1SWclSLx
 d+XUSmGw7EEAI1exWfEp1WbMYoqGspvBdqwaN+gAowvrX+qdbEJLvEv
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=
X-Mailman-Approved-At: Mon, 14 Apr 2025 15:20:28 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1744619176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C/ObABjOV6tmamGjv9L2Q13+VEF7f80WjKn+a2KmsZU=;
 b=CwLQ96esYh4P4KVCJatZ8Hs44GlzB55o2RFDlB2NnoKBpBTwtnnttXtq6VROizK0QMlx2I
 fdJ7j4gqaLBCoqlkfZ1RXGFlNyiBmJWKENL3vw8Uczt17RPRBi5rxA4Gava5iUDAFYvikp
 QE5M9Z54sDWEXNx5tdtopJ9DVVmmtcwowrh/m0D/S2+B66LoJJ3a6+WPDaej08VijYy+gj
 pOup6JcF7y5Pcc3mwYSDOXBypIIu4AFPIaunhtcjzU8or4EWnQYp44LtnOrIkU7bntJpWC
 NctE2AcFsSHEFFVm1SrRM5+S1R3TygES0fgt3lu+ss6ppElalDk8lhMyfXz0Ag==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1744619176;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=C/ObABjOV6tmamGjv9L2Q13+VEF7f80WjKn+a2KmsZU=;
 b=stqjzGM4ft7DElxC/qKesdImygtnGtJLw7FA4P6YSG5XAK7GUU0TpDDd0NwKpK+oBLbwLL
 p8/cYaEmZo1280CA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de
 header.a=rsa-sha256 header.s=2020 header.b=CwLQ96es; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=stqjzGM4
Subject: [Intel-wired-lan] [PATCH net-next 5/7] wifi: mwifiex: Don't use %pK
 through printk
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In the past %pK was preferable to %p as it would not leak raw pointer
values into the kernel log.
Since commit ad67b74d2469 ("printk: hash addresses printed with %p")
the regular %p has been improved to avoid this issue.
Furthermore, restricted pointers ("%pK") were never meant to be used
through printk(). They can still unintentionally leak raw pointers or
acquire sleeping looks in atomic contexts.

Switch to the regular pointer formatting which is safer and
easier to reason about.
There are still a few users of %pK left, but these use it through seq_file,
for which its usage is safe.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
 drivers/net/wireless/marvell/mwifiex/pcie.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/marvell/mwifiex/pcie.c b/drivers/net/wireless/marvell/mwifiex/pcie.c
index dd2a42e732f2398892915e1a3ac88b7d3fb4ed3f..a760de191fce7340040b1bc74efb35cf52ce8368 100644
--- a/drivers/net/wireless/marvell/mwifiex/pcie.c
+++ b/drivers/net/wireless/marvell/mwifiex/pcie.c
@@ -2971,7 +2971,7 @@ static int mwifiex_init_pcie(struct mwifiex_adapter *adapter)
 		goto err_iomap2;
 	}
 
-	pr_notice("PCI memory map Virt0: %pK PCI memory map Virt2: %pK\n",
+	pr_notice("PCI memory map Virt0: %p PCI memory map Virt2: %p\n",
 		  card->pci_mmap, card->pci_mmap1);
 
 	ret = mwifiex_pcie_alloc_buffers(adapter);

-- 
2.49.0

