Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAYQDazKpmk0TwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 12:49:00 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C141EE859
	for <lists+intel-wired-lan@lfdr.de>; Tue, 03 Mar 2026 12:48:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5803D60F0C;
	Tue,  3 Mar 2026 11:48:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lSL97C2p42i; Tue,  3 Mar 2026 11:48:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 95FB360F7B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1772538534;
	bh=fNmxI84i6rN7UI6Lm6Ye2tLnuTRfdFcNY4oX0NfZYqM=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=AbR+V49yTsD4groxU4zdIRgA3buPIM/wSgAd7lXPBQAzK1Vdy0KG+u6FtrzoVMAHQ
	 FBrNpKa7cWhMo8w6zMzy1lSHmZVD66GUSHpgo7YvXi3q3HlzVsp3HQvpXIQ4uqQOu4
	 TN9uTQHJ1YfLoJpRnfVifN8s+myK+7KxpMd6A+4JbjNx+3TUR1TnG44RX59EqashF/
	 laG5SgJKBOZzRTnbPoKTFm88V5ANtRqVp5zTzZCa/aMQwgx7MMKGNE2OncDF75ayuW
	 2zCwBU0qPF8TPuJgoLNXXoxwAUTN0Vki5Sq/3qA3Kk8IkA2IencVgXmkHI/I7wLQ2r
	 IkEcXhIkSMPhA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 95FB360F7B;
	Tue,  3 Mar 2026 11:48:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 404C2231
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 11:48:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 322C240A2E
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 11:48:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Hgr-KcwoN5W for <intel-wired-lan@lists.osuosl.org>;
 Tue,  3 Mar 2026 11:48:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.142.43.55;
 helo=galois.linutronix.de; envelope-from=kurt@linutronix.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 17F9940A0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17F9940A0A
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 17F9940A0A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  3 Mar 2026 11:48:51 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Tue, 03 Mar 2026 12:48:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-igb_irq_ts-v4-1-cbae7f127061@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAJvKpmkC/23P0QrCIBQG4FcZXmfo0aV01XtEhHOuDgxXaraIv
 XsyClZ0efj5/p/zJNEFdJFsqycJLmPEwZdDripiz8afHMW23AQY1ExzQfHUHDFcjylSboxS1qp
 G2oYUcAmuw3Eu2xO899S7MZFDSc4Y0xAe80rmc/4urJeFmVNOtd10lolaSIBdj/6WwuBxXLdur
 sqw4ABfHArnxgrFlDbKyH9cfPiGAfteF4WD68pDVjZa1798mqYXeUEO0TABAAA=
X-Change-ID: 20250813-igb_irq_ts-1aa77cc7b4cb
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
X-Developer-Signature: v=1; a=openpgp-sha256; l=2951; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=ms0yTxZZ22uQq6JR0RNMCsyZW9R2i3QOBVEyUxtk2Yo=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBppsqfWAqkR7FsbPyrKzfVmBuAWaXMWm541oQRh
 4LJdY9ieT2JAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaabKnwAKCRDBk9HyqkZz
 gj9nD/9aZQv0h2OoW+kXMwTIZDZ30rMMcOHI67+pBS4yvvv8EybEAhlz74z98jogm0qEpr7tR2O
 G4ytM11IhGtOAwyj/mF8o8ksYbvpuiUYU0KbEs0UB0VE1xLZzkVPEtSjScsgALWvX7YezKxryom
 11zIqWLuy62Gnfr+Snicgb9zyrpfLW4M4axo2hClECt0nnWm+pve2E6dfVLXlTa/gkiljWY/q3/
 fKsEoKspqstFFgG4GspuD2ytV6wyl1X3bfAe2JnpH+RXzoGB1K81kVR//lcUxHyQciNF7iZTLOI
 oazruba8zHB4+EXUnom81ic93zRvGi9t4HbIxiJ/CUue3qcTpG9pzo3VbvG7xk9rpXZRVOrARI/
 +DLPg3Hh+ke1R9N/GT309d1Yhef8zCjnkQK1MRByaocorbzgo7lHEfcwnLnrWmBLELo/eeszYbJ
 rq5NmimjsJeuopqCE7im9uIAvej7NC4Z2eCUCefk/FtV3UaeSDaEtee987rH+vx0Hz3JxnrBtPm
 1FLTdHtR2fZjeZLRok4yLNPEwzr8QPOv6r+OlRK6N07NL7/zCdt2iIWutERdm9qBwJKSTaZ63Zh
 LASZlR99lpMLJbhyOAn7BQI/3EthLn1cOVMW6bWE94sVt7BDAtJLTkwlOTO+kUvUgXWubXmOTnc
 q6pvmfaUqoecfEg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1772538527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fNmxI84i6rN7UI6Lm6Ye2tLnuTRfdFcNY4oX0NfZYqM=;
 b=3jpTsYwyr1avrfMhLu/wnrudSxTgoUb8701FZyP3++T2D/UHc8gTytz3DWR6E0ocVIo8Oo
 gaL740pd3aFw5iwZr+DKpI0X1FuVi0AB5XprwFfzyvpaMT1ZBiUmhlQeybPFq+tx0fIqhj
 tPL94Dd1jis1ce1STydGYgNY2SOOmXK7LeR+GmKLCaKYaAdKLBS9NTWvSlDvPjM0kF2q+Q
 /0P/liWxJDD9GCPO+dusi8m4CvNntrKMRy1WItp4aX32ayyHx8ZGL2Ax9m4z4R+X4Awpwb
 +5nsPzPq3t+odGGCMbmuer646ljx1aKJDCxdiyPSgSgt9MUVbXdCIMsgS9y0Ng==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1772538527;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=fNmxI84i6rN7UI6Lm6Ye2tLnuTRfdFcNY4oX0NfZYqM=;
 b=skQIJ9MkdQd6NRX0PAOd9ulOaqTxfuFNLakR5lWIbVrtWsrK7irPwKpYt/VOYTkJC3wuO6
 GJz8mRL5EkVRaxAg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=3jpTsYwy; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=skQIJ9Mk
Subject: [Intel-wired-lan] [PATCH iwl-next v4] igb: Retrieve Tx timestamp
 from BH workqueue
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
X-Rspamd-Queue-Id: 04C141EE859
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[linutronix.de : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:vadim.fedorenko@linux.dev,m:vinicius.gomes@intel.com,m:netdev@vger.kernel.org,m:richardcochran@gmail.com,m:kurt@linutronix.de,m:linux-kernel@vger.kernel.org,m:andrew+netdev@lunn.ch,m:edumazet@google.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:bigeasy@linutronix.de,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:email,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	FORGED_SENDER(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_CC(0.00)[molgen.mpg.de,linux.dev,intel.com,vger.kernel.org,gmail.com,linutronix.de,lunn.ch,google.com,lists.osuosl.org,kernel.org,redhat.com,davemloft.net];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kurt@linutronix.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Retrieve Tx timestamp from system BH instead of regular system workqueue.

The current implementation uses schedule_work() which is executed by the
system work queue and kworkers to retrieve Tx timestamps. This increases
latency and can lead to timeouts in case of heavy system load. i210 is
often used in industrial systems, where timestamp timeouts can be fatal.

Therefore, switch to the system BH workqueues which are executed directly
at the end of the IRQ handler.

Tested on Intel i210 and i350 with ptp4l.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v4:
- Use BH workqueue (tasklet) instead of doing timestamping in IRQ path (Jakub Kicinski)
- Link to v3: https://patch.msgid.link/20260205-igb_irq_ts-v3-1-2efc7bc4b885@linutronix.de

Changes in v3:
- Switch back to IRQ, but for i210 only
- Keep kworker for all other NICs like i350 (Miroslav)
- Link to v2: https://lore.kernel.org/r/20250822-igb_irq_ts-v2-1-1ac37078a7a4@linutronix.de

Changes in v2:
- Switch from IRQ to PTP aux worker due to NTP performance regression (Miroslav)
- Link to v1: https://lore.kernel.org/r/20250815-igb_irq_ts-v1-1-8c6fc0353422@linutronix.de
---
 drivers/net/ethernet/intel/igb/igb_main.c | 4 ++--
 drivers/net/ethernet/intel/igb/igb_ptp.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index ee99fd8fd513..9fd29fedb9f5 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -6572,7 +6572,7 @@ netdev_tx_t igb_xmit_frame_ring(struct sk_buff *skb,
 			adapter->ptp_tx_skb = skb_get(skb);
 			adapter->ptp_tx_start = jiffies;
 			if (adapter->hw.mac.type == e1000_82576)
-				schedule_work(&adapter->ptp_tx_work);
+				queue_work(system_bh_wq, &adapter->ptp_tx_work);
 		} else {
 			adapter->tx_hwtstamp_skipped++;
 		}
@@ -7076,7 +7076,7 @@ static void igb_tsync_interrupt(struct igb_adapter *adapter)
 
 	if (tsicr & E1000_TSICR_TXTS) {
 		/* retrieve hardware timestamp */
-		schedule_work(&adapter->ptp_tx_work);
+		queue_work(system_bh_wq, &adapter->ptp_tx_work);
 	}
 
 	if (tsicr & TSINTR_TT0)
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index bd85d02ecadd..7b44f9090631 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -832,7 +832,7 @@ static void igb_ptp_tx_work(struct work_struct *work)
 		igb_ptp_tx_hwtstamp(adapter);
 	else
 		/* reschedule to check later */
-		schedule_work(&adapter->ptp_tx_work);
+		queue_work(system_bh_wq, &adapter->ptp_tx_work);
 }
 
 static void igb_ptp_overflow_check(struct work_struct *work)

---
base-commit: a0e8c9a5060fbdb72fca767164467a3cf2b8fc30
change-id: 20250813-igb_irq_ts-1aa77cc7b4cb

Best regards,
--  
Kurt Kanzenbach <kurt@linutronix.de>

