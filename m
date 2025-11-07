Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C721C40281
	for <lists+intel-wired-lan@lfdr.de>; Fri, 07 Nov 2025 14:40:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 11F3F4152E;
	Fri,  7 Nov 2025 13:40:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uctzsMCzsQ42; Fri,  7 Nov 2025 13:40:14 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 777C54152F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762522814;
	bh=5fO9mmsxHq9O1ddXqChORt2eOtAnsTaAOoJHS0IxQ8Q=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=f7sCLvLObO3ZEGRV/za7VD25C8t2i07VhvosG1v07pm2+v9KblkDZNVnFGypKe6tp
	 mMXQK99z8Em5VVnXv2FGW2d27Cs11CawdJASbN7lUUdweEtZ+HXd+aJ97Ke3BUdrVj
	 iK7uk6sc8hMW0QDvlRIWdk1pbBtR1JHddi6f+JTO9LnGZGq3DF9Oev5xgXXNLO0nFI
	 fvRqndDS5KNzolhUYfKIcsY9mW18i4S30rzupEDRDLzH9bWZocLESg0MafGtneex2F
	 IQr+BpW5dUy6SOX+Q8AiivIu7oTBlKYKCWspXRUUENNoWTzwNUW7v99DbAoA851Mun
	 9Q+bAI2J2mJvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 777C54152F;
	Fri,  7 Nov 2025 13:40:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 27648961
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:40:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1210B405D7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:40:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fC5DGqgk5uaK for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 13:40:11 +0000 (UTC)
X-Greylist: delayed 497 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 07 Nov 2025 13:40:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 35FBB404E8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35FBB404E8
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a0a:51c0:0:12e:550::1; helo=galois.linutronix.de;
 envelope-from=kurt@linutronix.de; receiver=<UNKNOWN> 
Received: from galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35FBB404E8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 13:40:11 +0000 (UTC)
From: Kurt Kanzenbach <kurt@linutronix.de>
Date: Fri, 07 Nov 2025 14:31:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-igc_mqprio_channels-v1-1-42415562d0f8@linutronix.de>
X-B4-Tracking: v=1; b=H4sIALf0DWkC/x2MWwqAIBAArxL7nZBGz6tESI+tFspKowTx7lmfA
 zPjwKAmNFBHDjTeZGhXAXgcwbB0akZGY2AQicg4TwpG8yC389C0y09QuBomUlHxPMeyKnsI5aF
 xIvtfG6BnZQrtBa33L6c6pYtvAAAA
X-Change-ID: 20251107-igc_mqprio_channels-2329166e898b
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
 Vinicius Costa Gomes <vinicius.gomes@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Kurt Kanzenbach <kurt@linutronix.de>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1866; i=kurt@linutronix.de;
 h=from:subject:message-id; bh=foAcTjM6CYHB5ODdYaGawtcLYzlZonOMK1Rd88vPyJ8=;
 b=owEBbQKS/ZANAwAKAcGT0fKqRnOCAcsmYgBpDfTGEFAhlkg4C741nCPBhUf/BgN+qRbiwHHhg
 iBA69oF05GJAjMEAAEKAB0WIQS8ub+yyMN909/bWZLBk9HyqkZzggUCaQ30xgAKCRDBk9HyqkZz
 gvk+D/9fiRza8YBdwGxKRdGGsINkb/CM0irnSIH1Ddw3z+eLhA10BnFuoVjI8LSFsXprxsxW9p3
 RuEWmRz+BG+GLRTqVsPLOk6O6b5C/UTW9MvYT5kCCYeABPdbS8ql1TXlwS3IvvcNlr9ot7FUiXl
 IbKaL4wObZsHPYvMn1aw6p8+8pXju4k0xdgsTsHt5wFcMvHXNN7r1iZs+6h9nockGVTHK+6wpoZ
 dBVBjpy6dckCBZLXim/xPZcmL+itS717RVHh1yuHPvhTHSiS1NoBaenpWl2sO+JA+a+7YXpDFrT
 16bap9M8XhQLfgcEvvmv+rf+Zsk8JvZGsiL9dzE5M4W8lNWRAEZKrhHMi4yGSIxB8GUQKbMbDxf
 enHrcNVWfNR5fctb7+wEUQ221qBKAzAw7siZEznC/C67zlCvSBoHOimJJX6NpfyCSrDYwATbxHC
 aEB1t064Dkk8VRdOQ0g3ZJJxrqvk0BT09d2b+jNYLwb16hh38Vz583BGTGrkZa2YTXQCgRaRAmr
 9RzWSqTUGuQjUlAfwnGNY0Gpr2oiSgM4HmXsNzAMh8Rc7orSohdUGLQ+/Yoc2OpzQOkJ3qSt74l
 vu9mdh14GIH7kWfmPMGaACbO5ux5wfaBqGhAikPtNwlzElNuWMItpSgusy6Ea12WhKRxEbBoYw+
 crJFix69Egz6pGg==
X-Developer-Key: i=kurt@linutronix.de; a=openpgp;
 fpr=BCB9BFB2C8C37DD3DFDB5992C193D1F2AA467382
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020; t=1762522311;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5fO9mmsxHq9O1ddXqChORt2eOtAnsTaAOoJHS0IxQ8Q=;
 b=kJ/Heg/RdoCUieJJ+67f3jn2pAZzKuTXyfEAbEWyu+nGJhO44b5xEHbSzqgzguguMx/cqx
 TVkvGnIacVTLBwnnnUX2HdK/8qNV0X7D7BvMpMj9TYIUqi6AsZYZFarO79ZWeuKQ1Ffe7t
 F9WYvwrUCZOpv2KdKd/yGQ5UYZkdIdcjZyiOz/HRyalrtbArgKSC4qHmkVLr1uxIPcMVNB
 EWR4s4Ay7OgpRKSh01tHG6p9k1SW57xkBgL1QS1SSJCSprpZmJtWDjSzfZPJG2lSKqIzb+
 p9cyjjX1j/B8Zxszr2Frzv1ZHKGDcBzrfMgShEbSSHyO+jMTlQtikS62HATHIQ==
X-Mailman-Original-DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=linutronix.de; s=2020e; t=1762522311;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=5fO9mmsxHq9O1ddXqChORt2eOtAnsTaAOoJHS0IxQ8Q=;
 b=nR5POVWEuLP/R5GRY7lD1V+LZdStW/XCGlEFUK6f7wYlWSamZx0AvUZHH3B404QmXju0lA
 ESAncrzPutXTJOAQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linutronix.de
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key, unprotected) header.d=linutronix.de
 header.i=@linutronix.de header.a=rsa-sha256 header.s=2020 header.b=kJ/Heg/R; 
 dkim=pass header.d=linutronix.de header.i=@linutronix.de
 header.a=ed25519-sha256 header.s=2020e header.b=nR5POVWE
Subject: [Intel-wired-lan] [PATCH iwl-next] igc: Restore default Qbv
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

The MQPRIO (and ETF) offload utilizes the TSN Tx mode. This mode is always
coupled to Qbv. Therefore, the driver sets a default Qbv schedule of all gates
opened and a cycle time of 1s. This schedule is set during probe.

However, the following sequence of events lead to Tx issues:

 - Boot a dual core system
   probe():
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

Therefore, restore the default Qbv schedule after changing the amount of
channels.

Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 728d7ca5338bf27c3ce50a2a497b238c38cfa338..e4200fcb2682ccd5b57abb0d2b8e4eb30df117df 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7761,6 +7761,8 @@ int igc_reinit_queues(struct igc_adapter *adapter)
 	if (netif_running(netdev))
 		err = igc_open(netdev);
 
+	igc_tsn_clear_schedule(adapter);
+
 	return err;
 }
 

---
base-commit: 6fc33710cd6c55397e606eeb544bdf56ee87aae5
change-id: 20251107-igc_mqprio_channels-2329166e898b

Best regards,
-- 
Kurt Kanzenbach <kurt@linutronix.de>

