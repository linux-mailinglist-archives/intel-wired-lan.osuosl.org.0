Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B37B28B54
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 Aug 2025 09:18:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4B5FC41436;
	Sat, 16 Aug 2025 07:18:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QqNgbJ2z1DmH; Sat, 16 Aug 2025 07:18:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B194F4143C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755328695;
	bh=snwjYxF74w6BQ4U3TU9RgL+oijrifCwY0zkDmnSa2b4=;
	h=In-Reply-To:References:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FZoikLbkdXlyDXfwlJa1Sb6cjpghp9MkYCMJ36Vnvwu86+X0mVkNAnGiorR7aLv9U
	 1Ao8hGzWd6gMAdv6/biCdjv87SPRlxP1r4XfjSNUOrHKeDN6NSqHNtxt5IK/x0IkJd
	 krsaovADpbTRj48emNmNBnBwYnhpoZCwS5AiAly8RJKNqFmyE2BGZe8+SGCDfxxpcQ
	 SO0awbg2CTcp2LMWDzgnNujaBHIslil/g81uq7Xl5buBOdVwzP1ZTghvMy47/lpL7a
	 DislsSeveC+orlUWnbCDnN2V3mwmqPZfYNYDAs6tEjMJnwzMLieKvcnTu4xvx5r6r9
	 81nZVtNVkA58w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B194F4143C;
	Sat, 16 Aug 2025 07:18:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with UTF8SMTP id 047AF223
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with UTF8SMTP id 0120661162
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024)
 with UTF8SMTP id SUdsd6p04QYu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 Aug 2025 07:18:11 +0000 (UTC)
X-Greylist: delayed 392 seconds by postgrey-1.37 at util1.osuosl.org;
 Sat, 16 Aug 2025 07:18:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 500BA6119F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 500BA6119F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=176.9.242.54;
 helo=mailout3.hostsharing.net; envelope-from=lukas@wunner.de;
 receiver=<UNKNOWN> 
Received: from mailout3.hostsharing.net (mailout3.hostsharing.net
 [176.9.242.54])
 by smtp3.osuosl.org (Postfix) with UTF8SMTPS id 500BA6119F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 Aug 2025 07:18:11 +0000 (UTC)
Received: from h08.hostsharing.net (h08.hostsharing.net
 [IPv6:2a01:37:1000::53df:5f1c:0])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
 client-signature RSA-PSS (4096 bits) client-digest SHA256)
 (Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
 by mailout3.hostsharing.net (Postfix) with UTF8SMTPS id D3B063006799;
 Sat, 16 Aug 2025 09:11:35 +0200 (CEST)
Received: from localhost (unknown [89.246.108.87])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits)
 server-digest SHA256) (No client certificate requested)
 by h08.hostsharing.net (Postfix) with UTF8SMTPSA id 78A4B600D2F4;
 Sat, 16 Aug 2025 09:11:35 +0200 (CEST)
X-Mailbox-Line: From 24f58fd9bff53f2cd2771d23352343caaefe834b Mon Sep 17
 00:00:00 2001
Message-ID: <24f58fd9bff53f2cd2771d23352343caaefe834b.1755327132.git.lukas@wunner.de>
In-Reply-To: <cover.1755327132.git.lukas@wunner.de>
References: <cover.1755327132.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Sat, 16 Aug 2025 09:10:01 +0200
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=wunner.de
Subject: [Intel-wired-lan] [PATCH 1/3] ice: Fix enable_cnt imbalance on
 resume
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

The ice driver calls pci_enable_device_mem() on resume without having
called pci_disable_device() on suspend.

This leads to an imbalance of the enable_cnt tracked by the PCI core:
Every time the adapter is resumed, the enable_cnt keeps growing.  If the
adapter is resumed at least once and the driver is then unbound, the
device isn't disabled since the enable_cnt hasn't reached zero (and
never again will).

Moreover the call to pci_enable_device_mem() has no effect because the
enable_cnt was already incremented in ice_probe() through the call to
pcim_enable_device().  The subsequent pci_enable_device_mem() thus bails
out after invoking pci_update_current_state().  But current_state was
already updated by the PCI core:

  pci_pm_resume_noirq()
    pci_pm_default_resume_early()
      pci_pm_power_up_and_verify_state()
        pci_update_current_state()

In summary, the call to pci_enable_device_mem() is both harmful and
superfluous, so remove it.

The intended purpose of the call may have been to set the Memory Space
Enable bit in the Command register again on resume, but that is already
achieved by the preceding call to pci_restore_state().

Fixes: 769c500dcc1e ("ice: Add advanced power mgmt for WoL")
Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: stable@vger.kernel.org  # v5.9+
---
 drivers/net/ethernet/intel/ice/ice_main.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 10a473a50710..3be4347223ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5643,12 +5643,6 @@ static int ice_resume(struct device *dev)
 	if (!pci_device_is_present(pdev))
 		return -ENODEV;
 
-	ret = pci_enable_device_mem(pdev);
-	if (ret) {
-		dev_err(dev, "Cannot enable device after suspend\n");
-		return ret;
-	}
-
 	pf = pci_get_drvdata(pdev);
 	hw = &pf->hw;
 
-- 
2.47.2

