Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f1DqNDBvRGo4uwoAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 03:36:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A59726E9133
	for <lists+intel-wired-lan@lfdr.de>; Wed, 01 Jul 2026 03:36:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=PzA37YkZ;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=163.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AD93E80D4B;
	Wed,  1 Jul 2026 01:36:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4mYEWxrs0StM; Wed,  1 Jul 2026 01:36:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 039D280D5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782869805;
	bh=kk/mqLcjOiQxsynfAZGTVGxzxLPRDaop96Kg1Dkj/3c=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=PzA37YkZf3AKF7/2ic4oluX0/1CSvjKjTIIDnN7wrMbthJfYu3S0rXNQVUprpwQJt
	 6Hhp2rrek1Vw/2Su76nqGOND6jQ+tUV1oXb9h9pOK62csafSUFkXM625zLOx+aBzJn
	 mLjJ/Vj+I68SPhJc9DpMrOeNV+YmFwa3CSre50NIHvDbKmF/OHlwuL8TYtRcr5gxr9
	 laSrJsUsLIf2U2Kh2FHT7/GKxd4Mt7MtMd4rAXhpH+8NzL7rnMHq9FQs9zi/CCwgG0
	 kIPlOmQDVHpH2+R8LjP6VpEj32d9/xqVu98Ums9QaKslHhGcgXCdHpCEMmJrJmVrrw
	 1CPDv2Y92gRRg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 039D280D5B;
	Wed,  1 Jul 2026 01:36:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 840E8316
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 01:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6192F4129F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 01:36:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X9DCb7TaUHvv for <intel-wired-lan@lists.osuosl.org>;
 Wed,  1 Jul 2026 01:36:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=220.197.31.4;
 helo=m16.mail.163.com; envelope-from=clementwei90@163.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 486094021D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 486094021D
Received: from m16.mail.163.com (m16.mail.163.com [220.197.31.4])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 486094021D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  1 Jul 2026 01:36:39 +0000 (UTC)
Received: from localhost.localdomain (unknown [])
 by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id
 _____wBHd0oTb0RqhqMdHA--.8248S2; 
 Wed, 01 Jul 2026 09:36:21 +0800 (CST)
From: Rongguang Wei <clementwei90@163.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 aleksandr.loktionov@intel.com, przemyslaw.kitszel@intel.com
Cc: anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 Rongguang Wei <weirongguang@kylinos.cn>
Date: Wed,  1 Jul 2026 09:36:18 +0800
Message-Id: <20260701013618.29934-1-clementwei90@163.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: _____wBHd0oTb0RqhqMdHA--.8248S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCw43tryDJr13Ar13WF13XFb_yoW5WFW7pF
 Z8Cas8Gr1kGr1rW3s8WF1qyr95K3yvqa43KFWDJ3Za9rn8Ar4DtrW7tFWS9ryrGFZ7Kay3
 XFyjvFWUuF4xXF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
 9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UWxRgUUUUU=
X-Originating-IP: [116.128.244.169]
X-CM-SenderInfo: 5fohzv5qwzvxizq6il2tof0z/xtbC-RWM92pEbxWodwAA3Y
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=163.com; 
 s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=kk
 /mqLcjOiQxsynfAZGTVGxzxLPRDaop96Kg1Dkj/3c=; b=bXf0jlvLLaiHru409Q
 ouqez9HLyhro6uGbxbvZ3yalIQUp+n6tsH83nGSTsZ+qoOuVcnph0xNvwG1Fl2qa
 3sultl+y62Ek8HT7ljNPJkMF7vI2SAMWVJuOB1slAs6s6vsFuJdxeX+lzKnYnrRG
 3dHak3cBFwJySDKXhG65D78uc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=163.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=163.com header.i=@163.com header.a=rsa-sha256
 header.s=s110527 header.b=bXf0jlvL
Subject: [Intel-wired-lan] [PATCH net-next v2] ice: use dev_err_probe() in
 ice_probe()
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[163.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:weirongguang@kylinos.cn,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[163.com];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kylinos.cn:email,intel.com:email,smtp1.osuosl.org:rdns,smtp1.osuosl.org:helo];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clementwei90@163.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_XOIP(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A59726E9133

From: Rongguang Wei <weirongguang@kylinos.cn>

dev_err_probe() logs the error and returns the supplied error code, which
allows probe error paths to be written more compactly.

Use dev_err_probe() in ice_probe() for error paths that currently print an
error message and immediately return the same error code. This keeps the
existing error handling semantics while reducing open-coded logging and
return sequences.

Signed-off-by: Rongguang Wei <weirongguang@kylinos.cn>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v2:
  - Fix commit message per Aleksandr Loktionov's recommendation.
v1: https://lore.kernel.org/netdev/20260630032537.42605-1-clementwei90@163.com/T/#t
---
 drivers/net/ethernet/intel/ice/ice_main.c | 24 ++++++++---------------
 1 file changed, 8 insertions(+), 16 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e2fd2dab03e3..31aa42f8e6d3 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5161,10 +5161,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 	struct ice_hw *hw;
 	int err;
 
-	if (pdev->is_virtfn) {
-		dev_err(dev, "can't probe a virtual function\n");
-		return -EINVAL;
-	}
+	if (pdev->is_virtfn)
+		return dev_err_probe(dev, -EINVAL, "can't probe a virtual function\n");
 
 	/* when under a kdump kernel initiate a reset before enabling the
 	 * device in order to clear out any pending DMA transactions. These
@@ -5188,10 +5186,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return err;
 
 	err = pcim_iomap_regions(pdev, BIT(ICE_BAR0), dev_driver_string(dev));
-	if (err) {
-		dev_err(dev, "BAR0 I/O map error %d\n", err);
-		return err;
-	}
+	if (err)
+		return dev_err_probe(dev, err, "BAR0 I/O map error %d\n", err);
 
 	pf = ice_allocate_pf(dev);
 	if (!pf)
@@ -5202,10 +5198,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 
 	/* set up for high or low DMA */
 	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
-	if (err) {
-		dev_err(dev, "DMA configuration failed: 0x%x\n", err);
-		return err;
-	}
+	if (err)
+		return dev_err_probe(dev, err, "DMA configuration failed: 0x%x\n", err);
 
 	pci_set_master(pdev);
 	pf->pdev = pdev;
@@ -5240,10 +5234,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
 		return ice_probe_recovery_mode(pf);
 
 	err = ice_init_hw(hw);
-	if (err) {
-		dev_err(dev, "ice_init_hw failed: %d\n", err);
-		return err;
-	}
+	if (err)
+		return dev_err_probe(dev, err, "ice_init_hw failed: %d\n", err);
 
 	ice_init_dev_hw(pf);
 
-- 
2.25.1

