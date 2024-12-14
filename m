Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 481409F209A
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Dec 2024 20:16:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7957260730;
	Sat, 14 Dec 2024 19:16:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K9jKYZ3-j0DV; Sat, 14 Dec 2024 19:16:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C32606C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734203808;
	bh=CbNvvOuIDSSAEC+SeiGuDXyQPJHTngc0I8oZ/GkCqsw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZvE9+gter1bTbIfmzoU/fWiJq8iPieKsMyuXXUcg37xf61s+8bGpM5grTUVQ81KbV
	 j/sfGwHdfzjw+d4LVsC6Wgc+Fbhrl8nGCAz+iUUYYSoM2S06YYm/In4XrrgU8J+zbS
	 UmX2+ElGqaDZzQZhrPbnO6NBhFVLkeNFo5akIch0CZzMbpTYd9783mrjKl6oYXx+3r
	 oM0kLDsLHDiewz1wipD+eIUnhaJ9S9JHxMfqnpQTnMOR5dp/blsMzu5460hx2WZ9uh
	 fgNNk9bIMLCvRFDF3Na/+EJeMVi2tSshGXCXvB7WKJtwpkIgvxOoFb2/md66H5VDA2
	 h/eyM8k/3kSDg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C32606C7;
	Sat, 14 Dec 2024 19:16:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E687EC5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 19:16:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C7E7F6067B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 19:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h39fctPfLLFb for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Dec 2024 19:16:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=81.19.149.133;
 helo=mx23lb.world4you.com; envelope-from=gerhard@engleder-embedded.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7DC5606C7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7DC5606C7
Received: from mx23lb.world4you.com (mx23lb.world4you.com [81.19.149.133])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7DC5606C7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Dec 2024 19:16:44 +0000 (UTC)
Received: from [88.117.62.55] (helo=hornet.engleder.at)
 by mx23lb.world4you.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.97.1)
 (envelope-from <gerhard@engleder-embedded.com>)
 id 1tMXd0-000000003Nx-2xaL; Sat, 14 Dec 2024 20:16:38 +0100
From: Gerhard Engleder <gerhard@engleder-embedded.com>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-pci@vger.kernel.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, kuba@kernel.org,
 edumazet@google.com, pabeni@redhat.com, bhelgaas@google.com,
 pmenzel@molgen.mpg.de, Gerhard Engleder <eg@keba.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sat, 14 Dec 2024 20:16:23 +0100
Message-Id: <20241214191623.7256-1-gerhard@engleder-embedded.com>
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
 bh=CbNvvOuIDSSAEC+SeiGuDXyQPJHTngc0I8oZ/GkCqsw=; b=D4uzkZPhzpQ+KsbSnj003Zzv+g
 xRY5gD0MZElcwDCc2Q4sP7REH6kYvccz0ZnyFVq1U0RaUeS3wCoIMOu8paX0tyEsyfvEBdmDsYCZR
 YlceGdIHzhM7Rjdfj7QMXnd6c/WfzXi6ma3aaSoAws+PbDZD7haeBcNWHVtdfEBT+KYU=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=engleder-embedded.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=engleder-embedded.com header.i=@engleder-embedded.com
 header.a=rsa-sha256 header.s=dkim11 header.b=D4uzkZPh
Subject: [Intel-wired-lan] [PATCH iwl-next v3] e1000e: Fix real-time
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

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
CC: Vitaly Lifshits <vitaly.lifshits@intel.com>
Link: https://lore.kernel.org/netdev/f8fe665a-5e6c-4f95-b47a-2f3281aa0e6c@lunn.ch/T/
Signed-off-by: Gerhard Engleder <eg@keba.com>
---
v3:
- mention problematic platform explicitly (Bjorn Helgaas)
- improve comment (Paul Menzel)

v2:
- remove PREEMPT_RT dependency (Andrew Lunn, Przemek Kitszel)
---
 drivers/net/ethernet/intel/e1000e/mac.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/mac.c b/drivers/net/ethernet/intel/e1000e/mac.c
index d7df2a0ed629..0174c16bbb43 100644
--- a/drivers/net/ethernet/intel/e1000e/mac.c
+++ b/drivers/net/ethernet/intel/e1000e/mac.c
@@ -331,8 +331,15 @@ void e1000e_update_mc_addr_list_generic(struct e1000_hw *hw,
 	}
 
 	/* replace the entire MTA table */
-	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--)
+	for (i = hw->mac.mta_reg_count - 1; i >= 0; i--) {
 		E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, hw->mac.mta_shadow[i]);
+
+		/* do not queue up too many posted writes to prevent increased
+		 * latency for other devices on the interconnect
+		 */
+		if ((i % 8) == 0 && i != 0)
+			e1e_flush();
+	}
 	e1e_flush();
 }
 
-- 
2.39.2

