Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AA9C67F11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Nov 2025 08:29:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D9AA581DF8;
	Tue, 18 Nov 2025 07:29:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WFZNiPOVa5d2; Tue, 18 Nov 2025 07:29:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 23AE7819E6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763450960;
	bh=Tv6OWnWvfwwPgEyruXd1GM3uxOhgrlEpOdWgG4fFfmg=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6SU7Uv0oROSqPZgoSHFu3JH6G9hlJQRkpDjfVET2wFAPQQj+cHVAadRljUcIMCre6
	 nFEvNXNScxsc1oDPDnUjS1OvHsojc2jtIUAlztrIQnt6BKSvrKotsnnZkdl/KGmhcY
	 nteP0wobgsC2Eyk1edtjAW3ApZ5UmtVqS88dxNW8MZ9Hrfav9bUA3S89auyvr95ehW
	 TNKzWLk9zIv1nfWWt1FQVC1+D0hU/NFM+JNLsYyxVMo3Rpo9ZgVfejMxfqHnCcJh0e
	 3T6JQXOKhOP3jgUqPT2o9GJsJKzEAAX3gKWg4g9W5KBM4WNopxPZjj1JVqlRaEoIwY
	 qVF3ChOe72W3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 23AE7819E6;
	Tue, 18 Nov 2025 07:29:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 0321F1BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:29:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DDD2B606EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:29:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yU5Mtc0c-hF0 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Nov 2025 07:29:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 9862B60618
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9862B60618
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9862B60618
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Nov 2025 07:29:16 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Tue, 18 Nov 2025 08:29:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-igc_mqprio_channels-v2-1-c32563dede2f@linutronix.de>
X-B4-Tracking: v=1; b=H4sIADwgHGkC/32NUQ6CMBBEr0L22xp2BQS+vIchRGGBTbDFFhFDe
 ncrB/Bz8mbebODYCjsoow0sL+LE6BDoEEEz3HTPStqQgWJKEeOzkr6pH8/Jiql/Bc2jU3SiArO
 M8yK/Q1hOljtZd+sV5D0qzTNUAQziZmM/+9uCO/4rXlChSijBNM2ojbv8Mop+zdZoWY8tQ+W9/
 wJhzfUMwwAAAA==
X-Change-ID: 20251107-igc_mqprio_channels-2329166e898b
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=3455; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=48S9h2FDwLYapqwe9AYx+UjPPkEdVemXZgcyP9KsdBU=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBpHCBGqWbsssWv/3OMTsEUsiIEYoD7pwYNbWN2o
 ug5P8u3/eWJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaRwgRgAKCRDBk9HyqkZz
 gp00EACPKcrQ/0h1hzahUcmqsA2+7vc0+jqfW+fdjObsqX5tJAevC1iUjP/hVmEAsoss8lOBDz2
 nrBZX9ZPg4/i/YHHXxDDhRQxfTzPKxyJmvl8vMew6IlTTjlyV+hMIgEP4DXzth0p1N8Ahsctx6Z
 SFwTOqoTSFUlxCIXIeT/n8EOspBu+2VDLl4A+218P6az2ucz5Wco8XbHXpcMFuhDgIrN66vodM+
 FvYaTnCRJPI6TvyIQ5mnSn+naS5sUPW1xgtxQ/0PyNH4WPcaDKLLjF0Gyd0z9iBPQM+uJx3lPkq
 KzsnTQwjtEuGnNjphIOg+TZDBUWVUaKrSq7kBI6gAihvaZLj59osTOOhppYDYd1ATFQQrN5CLkB
 48gea5BLNQFo9UcbsjpX652BiYzsoxzOBkaax+NJoAVUlC5n4yFGs7CZMakwo0DiiuxIEXpxaFw
 GUlDZQa7e7+Tg0uQoAfWt1XY1Yq2ssLRhEPl+vh/EHWb4TEpUpluNQelH9WNl0I6g5JpyCq1d32
 uik7BSSbp7xZPBcJHrYY0MOqPUrN4dqlg9uBDIDsi6B9iTLSUGIzw7j1JT4vKqARZQi9s6Tszms
 SZPexsp8padCWLoFF3J1WvtUp9xDFa7w1jl4uhUTG8U9vAdO8AQsLqo/mkJZqXbmtWK9KtIsqZV
 ADsjWtJW+kKJ1Xw==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1763450951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Tv6OWnWvfwwPgEyruXd1GM3uxOhgrlEpOdWgG4fFfmg=;
 b=mnbPd0IAsyzDSE2FKQbCNMFWdfGw40h12uG1PIuepHkIqrDV5ZOtH1eColp2vr3W2jyGGv
 ae2jkmZXAfeYZc/p42ekH6u/pBU+iFfX4kZgjQN66dLOt0PtBPXzNG6FoYwx470qch5om4
 MAz5woxQhGua3mYP1t8FJRkRQTqswMQGBQzLJuE/mKyOcMyh7NVuUa1ysquqiEIIY6/Nii
 SjaH6JM/uXrN+qvu2DSoMh1fl3GCL6IqHSuNxKCEQg1ZGlAU22/YMQtEBbjWlm2wa2+NJE
 y+pi5e0qhMk04Rl2u63IwwszqUhKd/sJWOHgsynRCtq9rKHJL4Rtsa1963nDBw==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1763450951;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Tv6OWnWvfwwPgEyruXd1GM3uxOhgrlEpOdWgG4fFfmg=;
 b=GwC8NU6b+sjWIRVu60hoFIMWoqXd/enjc8p7cQQvq2JUCvxSSQr8irw5aeKbvKdxOSZJ2n
 7V9mlGSxqlnVTDBQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=mnbPd0IA; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=GwC8NU6b
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Restore default Qbv
 schedule when changing channels
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

The Multi Queue Priority (MQPRIO) and Earliest TxTime First (ETF) offload
utilizes the Time Sensitive Networking (TSN) Tx mode. This mode is always
coupled to IEEE 802.1Qbv time aware shaper (Qbv). Therefore, the driver
sets a default Qbv schedule of all gates opened and a cycle time of
1s. This schedule is set during probe.

However, the following sequence of events lead to Tx issues:

 - Boot a dual core system
   igc_probe():
     igc_tsn_clear_schedule():
       -> Default Schedule is set
       Note: At this point the driver has allocated two Tx/Rx queues, because
       there are only two CPU(s).

 - ethtool -L enp3s0 combined 4
   igc_ethtool_set_channels():
     igc_reinit_queues()
       -> Default schedule is gone, per Tx ring start and end time are zero

  - tc qdisc replace dev enp3s0 handle 100 parent root mqprio \
      num_tc 4 map 3 3 2 2 0 1 1 1 3 3 3 3 3 3 3 3 \
      queues 1@0 1@1 1@2 1@3 hw 1
    igc_tsn_offload_apply():
      igc_tsn_enable_offload():
        -> Writes zeros to IGC_STQT(i) and IGC_ENDQT(i) -> Boom

Therefore, restore the default Qbv schedule after changing the number of
channels.

Furthermore, add a restriction to not allow queue reconfiguration when
TSN/Qbv is enabled, because it may lead to inconsistent states.

Fixes: c814a2d2d48f ("igc: Use default cycle 'start' and 'end' values for queues")
Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
Changes in v2:
- Explain abbreviations (Aleksandr)
- Only clear schedule if no error happened (Aleksandr)
- Add restriction to avoid inconsistent states (Vinicius)
- Target net tree (Vinicius)
- Link to v1: https://lore.kernel.org/r/20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 4 ++--
 drivers/net/ethernet/intel/igc/igc_main.c    | 5 +++++
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index bb783042d1af9c86f18fc033fa4c3e75abb0efe8..43aea9e53e1e79b304c2a7e41fa7d52dc956bffc 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1561,8 +1561,8 @@ static int igc_ethtool_set_channels(struct net_device *netdev,
 	if (ch->other_count != NON_Q_VECTORS)
 		return -EINVAL;
 
-	/* Do not allow channel reconfiguration when mqprio is enabled */
-	if (adapter->strict_priority_enable)
+	/* Do not allow channel reconfiguration when any TSN Qdisc is enabled */
+	if (adapter->flags & IGC_FLAG_TSN_ANY_ENABLED)
 		return -EINVAL;
 
 	/* Verify the number of channels doesn't exceed hw limits */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 728d7ca5338bf27c3ce50a2a497b238c38cfa338..21e67e7534562ccfa7bad8769bbafc866ecbc85f 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7761,6 +7761,11 @@ int igc_reinit_queues(struct igc_adapter *adapter)
 	if (netif_running(netdev))
 		err = igc_open(netdev);
 
+	if (!err) {
+		/* Restore default IEEE 802.1Qbv schedule after queue reinit */
+		igc_tsn_clear_schedule(adapter);
+	}
+
 	return err;
 }
 

---
base-commit: ca412f25d6b2c21f69a6cf12da062e0be4a5f45e
change-id: 20251107-igc_mqprio_channels-2329166e898b

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

