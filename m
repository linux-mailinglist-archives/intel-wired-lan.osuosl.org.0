Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 67999B131D6
	for <lists+intel-wired-lan@lfdr.de>; Sun, 27 Jul 2025 22:44:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EF338414B;
	Sun, 27 Jul 2025 20:44:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CwCfzLLAczAv; Sun, 27 Jul 2025 20:44:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DFA338414E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753649046;
	bh=lmY278JqxfvAyTbfUF5JttrTvXGjdt1vB/jq8nFDd64=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6rW2PjlYg3dZ8fzNx7+qEgJ2WDBySZiM8U3/cH5TX0cLvqNC9MPGwV7HiGa7EMMB9
	 b3CPK9CYwzggnWJmgwutqMKUpvcDGRebp7cn4BG1WKF8B+0jY0l7iPJsY16b7ybcMC
	 htxOBmw+/EtDleYERGrK4pJItXnvTjR12ZBzMIUmXf0qYCk9kMJ0Te0hBgqKfr0LUG
	 EtRAePQOZhBvoXj0VZauTm9uGnGt53U0J1/2OEaAWsYwQ+Jnl0F8lU2P7MOIWLSBDN
	 n8WuHLzyQGbt43ATyO/r9XLcBznDD8+Djcpu9eW43pXEezWcRLdY7QvKAAxiFPLFpU
	 SuUta6jsykehQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id DFA338414E;
	Sun, 27 Jul 2025 20:44:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DBDD61BE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 20:44:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CD3DF60A88
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Jul 2025 20:44:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D6UQ58_xg8hb for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Jul 2025 20:44:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.177.150.13;
 helo=mail.valdk.tel; envelope-from=iam@valdikss.org.ru; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 5C0D760DCF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C0D760DCF
Received: from mail.valdk.tel (mail.valdk.tel [185.177.150.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5C0D760DCF
 for <intel-wired-lan@osuosl.org>; Sun, 27 Jul 2025 20:44:03 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon)
 with ESMTPSA id 6FED01B69034; Sun, 27 Jul 2025 23:43:55 +0300 (MSK)
From: ValdikSS <iam@valdikss.org.ru>
To: intel-wired-lan@osuosl.org
Cc: vitaly.lifshits@intel.com, Paul Menzel <pmenzel@molgen.mpg.de>,
 ValdikSS <iam@valdikss.org.ru>
Date: Sun, 27 Jul 2025 23:43:31 +0300
Message-ID: <20250727204331.564435-1-iam@valdikss.org.ru>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <8d1e606d-7320-4f02-98fe-e899702ac6e7@molgen.mpg.de>
References: <8d1e606d-7320-4f02-98fe-e899702ac6e7@molgen.mpg.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=valdikss.org.ru; 
 s=msrv; t=1753649039; h=from:subject:date:message-id:to:cc:mime-version:
 content-transfer-encoding:in-reply-to:references;
 bh=lmY278JqxfvAyTbfUF5JttrTvXGjdt1vB/jq8nFDd64=;
 b=EcIHyBB6QiiJ4sygGyX5NHbAJkFHycyZWKBd3dkEE/Qy0x57kV9MkAXdGSnhNOTlM4CUFe
 A6VIU5Ig+n3E1o631mHV5xx4BqYtT5KvzcTW45n/qqs6XosHiuEfF36PV2v3COACOmE0h2
 pB0buf4XkkMvcUXsPwIuk89q1t5SOmrDiaHnTDXYFWJolpZzvQZUa8SB3OHbdoqi39H+rC
 elRoCVb62i+kI7fUidfUK4c3LTjoOzWdS80EnM1f2YeSSzEle/1NVdEJSDx+gGtOGqWlko
 bPx3qY4XwtDH0pFtfLWIbVSs2VqWYFhPJb2+g9nbl7pX7C952QnVdfpw9ctl4g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=valdikss.org.ru
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=valdikss.org.ru header.i=@valdikss.org.ru
 header.a=rsa-sha256 header.s=msrv header.b=EcIHyBB6
Subject: [Intel-wired-lan] [PATCH] igc: fix disabling L1.2 PCI-E link
 substate on I226 on init
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

Device ID comparison in igc_is_device_id_i226 is performed before
the ID is set, resulting in always failing check on init.

Before the patch:
* L1.2 is not disabled on init
* L1.2 is properly disabled after suspend-resume cycle

With the patch:
* L1.2 is properly disabled both on init and after suspend-resume

How to test:
Connect to the 1G link with 300+ mbit/s Internet speed, and run
the download speed test, such as:

    curl -o /dev/null http://speedtest.selectel.ru/1GB

Without L1.2 disabled, the speed would be no more than ~200 mbit/s.
With L1.2 disabled, the speed would reach 1 gbit/s.
Note: it's required that the latency between your host and the remote
be around 3-5 ms, the test inside LAN (<1 ms latency) won't trigger the
issue.

Link: https://lore.kernel.org/intel-wired-lan/15248b4f-3271-42dd-8e35-02bfc92b25e1@intel.com
Fixes: 0325143b59c6 ("igc: disable L1.2 PCI-E link substate to avoid performance issue")
Signed-off-by: ValdikSS <iam@valdikss.org.ru>
Reviewed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 031c332f6..1b4465d6b 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -7115,6 +7115,13 @@ static int igc_probe(struct pci_dev *pdev,
 	adapter->port_num = hw->bus.func;
 	adapter->msg_enable = netif_msg_init(debug, DEFAULT_MSG_ENABLE);
 
+	/* PCI config space info */
+	hw->vendor_id = pdev->vendor;
+	hw->device_id = pdev->device;
+	hw->revision_id = pdev->revision;
+	hw->subsystem_vendor_id = pdev->subsystem_vendor;
+	hw->subsystem_device_id = pdev->subsystem_device;
+
 	/* Disable ASPM L1.2 on I226 devices to avoid packet loss */
 	if (igc_is_device_id_i226(hw))
 		pci_disable_link_state(pdev, PCIE_LINK_STATE_L1_2);
@@ -7141,13 +7148,6 @@ static int igc_probe(struct pci_dev *pdev,
 	netdev->mem_start = pci_resource_start(pdev, 0);
 	netdev->mem_end = pci_resource_end(pdev, 0);
 
-	/* PCI config space info */
-	hw->vendor_id = pdev->vendor;
-	hw->device_id = pdev->device;
-	hw->revision_id = pdev->revision;
-	hw->subsystem_vendor_id = pdev->subsystem_vendor;
-	hw->subsystem_device_id = pdev->subsystem_device;
-
 	/* Copy the default MAC and PHY function pointers */
 	memcpy(&hw->mac.ops, ei->mac_ops, sizeof(hw->mac.ops));
 	memcpy(&hw->phy.ops, ei->phy_ops, sizeof(hw->phy.ops));
-- 
2.50.1

