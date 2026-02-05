Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NhaDwpPhGkE2gMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 09:04:26 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E7CEFB46
	for <lists+intel-wired-lan@lfdr.de>; Thu, 05 Feb 2026 09:04:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D3AEF84036;
	Thu,  5 Feb 2026 08:04:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A4-BctFQCCbe; Thu,  5 Feb 2026 08:04:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D86C68403A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770278662;
	bh=YI75SligFceTjZw1yfKwWA/UrX3Yc7oaVqN88ExO2XQ=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=XKWFZu2Wzdrfffobbi8NbJJPtbbeKXVf1n3lgbbZWkUbNoRQaM7cDCq7GAeca4Lpe
	 3ZMVHauSh19pkH8grjn013y/DjwMvKR8H/ZQGhXBEoUXLshXAwDdHXWPbhnqILC2vm
	 T5WUU7TAbCeqWQCf0S29zW4qv2BbSFsu6XrbFbXv80T/mmc0lmx2evG/jknkKBGCR5
	 m06x6k/uUkmzRP0iKKx1jSb0HA7yA7V6P98p+e6R/OIDJ/BV6rZ/Ze8wnvyHmejuja
	 VK+dRHUacBiewIYbZ6akJfT+cPiaVZOGIVHzA1oR2ndY1dY2A3EZ2c1esGBGiFYGyi
	 ZKu3FOstznHhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D86C68403A;
	Thu,  5 Feb 2026 08:04:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 89CF8173
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:04:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A8606086A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:04:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MgfZXiXlCV9q for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Feb 2026 08:04:19 +0000 (UTC)
X-Greylist: delayed 572 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 05 Feb 2026 08:04:19 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 26B6C610C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26B6C610C4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26B6C610C4
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Feb 2026 08:04:18 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Thu, 05 Feb 2026 08:54:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de>
X-B4-Tracking: v=1; b=H4sIALlMhGkC/12N0Q6CIBhGX8VxHQ1+NFxXvUdrDhH13xwWENmc7
 x5jXViXZ9/O+VbijUPjyblYiTMRPc42gTgURI/KDoZil5gAg4rVXFAc2gbdowmecqWk1Fq2pW5
 JEu7O9Ljk2JXga6LWLIHc0jKiD7N755fI8/4NVvtg5JTTWp96zUQlSoDLhPYZ3GxxOXYmpyLsd
 IAfHZLOlRaSyVpJVf7r27Z9AIW5aenxAAAA
X-Change-ID: 20250813-igb_irq_ts-1aa77cc7b4cb
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3568; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=YqkYuVD6B8ingjypZapGuxYX1HIAg0y6MvAOvzuLs6Q=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBphEzCiI2A689V5++B//pI9fgMWXXaArRkMXPVj
 3VH4/bTuOSJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaYRMwgAKCRDBk9HyqkZz
 gv4NEACQ8pejkbuLsnYEsrckwAJrabuIvthZIhfNOAGJFgcxq2XB3D+WnwgSGtxtjbDFvop5FZ4
 aNrhHqoM7AkxSkFppXvtlsp1Z+RDC71rEp58uKSP0b5P+HHpfyC9Neo7VwJVoJAqC6pv/WJK9ra
 aKjpTFEZutyMuvWYKfPSPl5H4RB9vVjSdKE4cLUTONX9N5rB9VjqXIm4b+11+nvTp/wBJ9ehlI/
 tKLB25Mvw0DMt3lNzAa0wM3L+T7tm7iRPkyT6NmfMrNnFFJ+6A/+We8sO/22QzSCvLCoFKw37DS
 iBYOkCHzGrXDwrygPNwdut+mJXLr9tvVYmrrcxlfea2tblWIbNZbuzZXB+UkJ4wCAAidP8y8N19
 Gr5vbfWSls3j0d0Zg0tFsgAGlyC9gzGoLRSOkDRXkMt+ovFuUWu0Qdab1oDBF4FW7nP4zRkF3s1
 r6PuMNppUDp41oBlIc/DqjhO/IJcUNeG65oGnl9u9bnC7BlXz2fq7k88GDuiFsPOzLBEhMrk+ww
 ys+rmbPl8yk3JYI1F8o6Q7Ez1XJe7Wz/k04fmKf2cucxkZ+pAWmSaxkWUR+pDl3OCydwTrjXOry
 g/a7KtPYNBtW9Op/w6xzG0AvWgJsgvyjqpZP4S0Nf4+Uhagg/NyBw2a/5KZU989w20uT1VwEzdQ
 ArarhMmXOyR1OKA==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1770278083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YI75SligFceTjZw1yfKwWA/UrX3Yc7oaVqN88ExO2XQ=;
 b=EqIPxl8NJcb5hBz/DrlS9vH/GYZnvDZ4UuLxFpgZmJXi78iJ5zTXXuP/N8LOB6IXh38Qem
 s5Y9jb70GBj5gVpIzGTfPg+jyVNNsLj8GDTx3u9SUeO2BcmHlzlu2CSTnUmIveV1c7T4i3
 LGBtGFply5RZr7HhM2NOSSUEaiRv9i+6rmhwgNgGe/pESLNFE8OOfqHehgvkwn2cLWbyjS
 HjjjXjzoxGIqLLNPiF1oVzOoiSRbB2H/ze1XvxHGgpVslBcu1DHqpJDHfpNxwa0LUcE81S
 5jqS3bWbPm4kr25462KHT57ZpkiH0m9sqZ7evn5jNKPn6AA3ZeVl7oRXL8sXfw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1770278083;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YI75SligFceTjZw1yfKwWA/UrX3Yc7oaVqN88ExO2XQ=;
 b=D5m16N4jsfXnocitENkWPThOOadmmtN+AyrVSy44krWO7h37RMVVyhUV//WSMLwW2bVnkq
 BEpQN3NlKu5dZmCg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=EqIPxl8N; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=D5m16N4j
Subject: [Intel-wired-lan] [PATCH iwl-next v3] igb: Retrieve Tx timestamp
 directly from interrupt for i210
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, netdev@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>,
 Kurt Kanzenbach <kurt@linutronix.de>, linux-kernel@vger.kernel.org,
 Andrew Lunn <andrew+netdev@lunn.ch>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:kurt@linutronix.de,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,linutronix.de,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 51E7CEFB46
X-Rspamd-Action: no action

Retrieve Tx timestamp directly from interrupt handler for i210.

The current implementation uses schedule_work() which is executed by the
system work queue to retrieve Tx timestamps. This increases latency and can
lead to timeouts in case of heavy system load. i210 is often used in
industrial systems, where timestamp timeouts can be fatal.

Therefore, fetch the timestamp directly from the interrupt handler.

The work queue code stays for all other NICs supported by igb.

Tested on Intel i210 and i350.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v3:
- Switch back to IRQ, but for i210 only
- Keep kworker for all other NICs like i350 (Miroslav)
- Link to v2: https://lore.kernel.org/r/20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de

Changes in v2:
- Switch from IRQ to PTP aux worker due to NTP performance regression (Miroslav)
- Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de
---
 drivers/net/ethernet/intel/igb/igb.h      |  1 +
 drivers/net/ethernet/intel/igb/igb_main.c |  5 ++++-
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 22 ++++++++++++++++++++++
 3 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igb/igb.h b/drivers/net/ethernet/intel/igb/igb.h
index 0fff1df81b7b..1de29670784e 100644
--- a/drivers/net/ethernet/intel/igb/igb.h
+++ b/drivers/net/ethernet/intel/igb/igb.h
@@ -776,6 +776,7 @@ int igb_ptp_hwtstamp_get(struct net_device *netdev,
 int igb_ptp_hwtstamp_set(struct net_device *netdev,
 			 struct kernel_hwtstamp_config *config,
 			 struct netlink_ext_ack *extack);
+void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter);
 void igb_set_flag_queue_pairs(struct igb_adapter *, const u32);
 unsigned int igb_get_max_rss_queues(struct igb_adapter *);
 #ifdef CONFIG_IGB_HWMON
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index dbea37269d2c..d0d9245e6d72 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -7078,7 +7078,10 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
 
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		if (hw->mac.type == e1000_i210)
+			igb_ptp_tx_tstamp_event(adapter);
+		else
+			schedule_work(&adapter->ptp_tx_work);
 	}
 
 	if (tsicr & TSINTR_TT0)
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index bd85d02ecadd..8c8f2b8615f7 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -796,6 +796,28 @@ static int igb_ptp_verify_pin(struct ptp_clock_info *ptp, unsigned int pin,
 	return 0;
 }
 
+/**
+ * igb_ptp_tx_tstamp_event
+ * @adapter: pointer to igb adapter
+ *
+ * This function checks the TSYNCTXCTL valid bit and stores the Tx hardware
+ * timestamp at the current skb.
+ **/
+void igb_ptp_tx_tstamp_event(struct igb_adapter *adapter)
+{
+	struct e1000_hw *hw = &adapter->hw;
+	u32 tsynctxctl;
+
+	if (!adapter->ptp_tx_skb)
+		return;
+
+	tsynctxctl = rd32(E1000_TSYNCTXCTL);
+	if (WARN_ON_ONCE(!(tsynctxctl & E1000_TSYNCTXCTL_VALID)))
+		return;
+
+	igb_ptp_tx_hwtstamp(adapter);
+}
+
 /**
  * igb_ptp_tx_work
  * @work: pointer to work struct

---
base-commit: e07d0d30939990da377672ef49ca09763b4fbc79
change-id: 20250813-igb_irq_ts-1aa77cc7b4cb

Best regards,
--  
Kurt Kanzenbach <kurt@linutronix.de>

