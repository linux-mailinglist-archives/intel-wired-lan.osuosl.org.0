Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDD99F8439
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 20:28:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2BFBF405C5;
	Thu, 19 Dec 2024 19:28:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u7s3wI4pHSIY; Thu, 19 Dec 2024 19:28:06 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B05C440696
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734636485;
	bh=sRc09msTd49TuzrjBotYn9RYk0AxZ0gwelGZpk3cVLc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gmJ1/tMzNo8cTzUywXO5Arawm04hS0HnVaG9h2ObxW3/o3d5R+mvWFc4k+WcIYEeO
	 Pybcw3HE5on76R2qf988JyGpzmG8tXKLyBwWemAK4fuhzE6RrwiLkODewci8cPVmET
	 LvhqR7I7GiXaeNWGdSapI20B4kHaPTd/lEShv16ntIbep0jeQe3LP90fnY3nvwwHsg
	 BEJyRrRl8yo4Vo7cDM78TxFr4kLAtP37EZQPDnYH9oeLsBfpL/Cr3C+MJAhJDQK258
	 iv1RwqWCOcAN9iGddYz6SnGFmldt+v+lW+zPGWfyysT2vwpsZvDNaOVwpa7IemkbHv
	 vE7H9lMRdgYtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B05C440696;
	Thu, 19 Dec 2024 19:28:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 897506C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 19:28:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 69FB2400B8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 19:28:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BXEWe7rTmPyv for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 19:28:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.134;
 helo=mx24lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0992040042
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0992040042
Received: from mx24lb.world4you.com (mx24lb.world4you.com [81.19.149.134])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0992040042
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 19:28:01 +0000 (UTC)
Received: from [88.117.62.55] (helo=hornet.engleder.at)
 by mx24lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tOMBg-000000008VY-3sEf; Thu, 19 Dec 2024 20:27:57 +0100
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, bhelgaas@google.com,
 pmenzel@molgen.mpg.de, aleksander.lobakin@intel.com,
 Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>,
 Avigail Dahan <avigailx.dahan@intel.com>
Date: Thu, 19 Dec 2024 20:27:43 +0100
Message-Id: <20241219192743.4499-1-gerhard@engleder-embedded.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AV-Do-Run: Yes
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=engleder-embedded.com; s=dkim11; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sRc09msTd49TuzrjBotYn9RYk0AxZ0gwelGZpk3cVLc=; b=CcKScEgoyZiRByupt5AO3uQZaD
 uA3yZyMFigaO7DQ2NqSDdPn1YOExG/dea3SAOhrM2klCawAfmNwViWRdovSN2L0wnpKgB0ApTCS7v
 ZJU4Pp16ssizXBK7Om+ZHvg1I/MfTE/9A2kjI/fJEk379aF8KCZXVpzycdjT7RJt/pAY=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=CcKScEgo
Subject: [Intel-wired-lan] [PATCH iwl-next v4] e1000e: Fix real-time
 violations on link up
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

From: Gerhard Engleder <eg@keba.com>

Link down and up triggers update of MTA table. This update executes many
PCIe writes and a final flush. Thus, PCIe will be blocked until all
writes are flushed. As a result, DMA transfers of other targets suffer
from delay in the range of 50us. This results in timing violations on
real-time systems during link down and up of e1000e in combination with
an Intel i3-2310E Sandy Bridge CPU.

The i3-2310E is quite old. Launched 2011 by Intel but still in use as
robot controller. The exact root cause of the problem is unclear and
this situation won't change as Intel support for this CPU has ended
years ago. Our experience is that the number of posted PCIe writes needs
to be limited at least for real-time systems. With posted PCIe writes a
much higher throughput can be generated than with PCIe reads which
cannot be posted. Thus, the load on the interconnect is much higher.
Additionally, a PCIe read waits until all posted PCIe writes are done.
Therefore, the PCIe read can block the CPU for much more than 10us if a
lot of PCIe writes were posted before. Both issues are the reason why we
are limiting the number of posted PCIe writes in row in general for our
real-time systems, not only for this driver.

A flush after a low enough number of posted PCIe writes eliminates the
delay but also increases the time needed for MTA table update. The
following measurements were done on i3-2310E with e1000e for 128 MTA
table entries:

Single flush after all writes: 106us
Flush after every write:       429us
Flush after every 2nd write:   266us
Flush after every 4th write:   180us
Flush after every 8th write:   141us
Flush after every 16th write:  121us

A flush after every 8th write delays the link up by 35us and the
negative impact to DMA transfers of other targets is still tolerable.

Execute a flush after every 8th write. This prevents overloading the
interconnect with posted writes.

Signed-off-by: Gerhard Engleder <eg@keba.com>
Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
---
v4:
- add PREEMPT_RT dependency again (Vitaly Lifshits)
- fix comment styple (Alexander Lobakin)
- add to comment each 8th and explain why (Alexander Lobakin)
- simplify check for every 8th write (Alexander Lobakin)

v3:
- mention problematic platform explicitly (Bjorn Helgaas)
- improve comment (Paul Menzel)

v2:
- remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
---
 drivers/net/ethernet/intel/e1000e/mac.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index d7df2a0ed629..44249dd91bd6 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -331,8 +331,21 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
 	}
 
 	/* replace the entire MTA table */
-	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
+	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
 		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
+
+		if (IS_ENABLED(CONFIG_PREEMPT_RT)) {
+			/*
+			 * Do not queue up too many posted writes to prevent
+			 * increased latency for other devices on the
+			 * interconnect. Flush after each 8th posted write,
+			 * to keep additional execution time low while still
+			 * preventing increased latency.
+			 */
+			if (!(i % 8) && i)
+				e1e_flush();
+		}
+	}
 	e1e_flush();
 }
 
-- 
2.39.2

