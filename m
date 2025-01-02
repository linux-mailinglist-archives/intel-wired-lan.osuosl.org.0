Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 245519FFCCD
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 18:37:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2EE360825;
	Thu,  2 Jan 2025 17:37:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fi5sZqxWnxdP; Thu,  2 Jan 2025 17:37:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0FA856078F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735839459;
	bh=vpcbQJY6Oq4fkBAvvq9ChAzoM28r4d2DnCB/aDMi6d0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CFzMw674vFcNhwFOFdl11uzEQqKx4gVVsClS+C42VorusBFZDHH4rFK2Q1F7aKItQ
	 R105P+ptwsbUTWZuz5Kn4pNiUh0V0GmY0tFPPutFI1/fEbrbfpBDT0e6POh2K6LeAf
	 mLNJeuIDWRabnaBztXPIfPxrjk9XVUqFX3xXOQWcVWWurZ9nTdHyPJoytw7NsdUghs
	 g/VgdNWJHBzkpWcFOtMC9dNhhXI6fwCR1RReYjFNH9lxBp6LBPgZIbcySvoiQY+IQb
	 VrkkEqn/oZOOaxrm9LTGiTPteVwG+DY7xrgl0eM4wcwzZXWxIRI8saTAN8kP/v5DzL
	 wAQCG7o4JckSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0FA856078F;
	Thu,  2 Jan 2025 17:37:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C2F9F29
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9310A80499
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9RZz7gn7gT5A for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 17:37:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7A7ED804F2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7A7ED804F2
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7A7ED804F2
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 17:37:32 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tTP8O-007tod-1a;
 Thu, 02 Jan 2025 17:37:24 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>,
 Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
Date: Thu,  2 Jan 2025 17:37:15 +0000
Message-ID: <20250102173717.200359-8-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20250102173717.200359-1-linux@treblig.org>
References: <20250102173717.200359-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=vpcbQJY6Oq4fkBAvvq9ChAzoM28r4d2DnCB/aDMi6d0=; b=OSjf4fzzWukoFUkJ
 LODNSKi4VA3VTUduaUi/8SVjDJDXcKeFJTpR1B7Iwwt8pSUbCiuo1FZ4GS2MlD3b0hc7iFsQ91zT9
 bGXxIGTm8BBrKCAjdvlGpf8bdH/d5XrGxe7HeWR3JOp9QYOTUeARSEjergy5kWzodo+d6mBHBKMLQ
 ochBjK8Dey5jo6B6rLYVenvf2+LoAj8XQtiThxcY9swEzL2wJopw/t1QN0mxKqKToibvYMY2x1HY0
 QloDkzGJK7X3kJhuYWjxMO5hnZQfLdGdRpck/PS3jOzBZn11a8pxtBIeU78yDCehxrGxgLGASZM7w
 vAS8FrSXcBqoqCDe1Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=OSjf4fzz
Subject: [Intel-wired-lan] [PATCH net-next 7/9] i40e: Remove unused
 i40e_commit_partition_bw_setting
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

i40e_commit_partition_bw_setting() was added in 2017 by
commit 4fc8c6763957 ("i40e: genericize the partition bandwidth control")
but hasn't been used.

Remove it.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
Reviewed-by: Kalesh AP <kalesh-anakkur.purayil@broadcom.com>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c | 83 ---------------------
 2 files changed, 84 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 399a5dbf3506..ce63a7cfe955 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1311,7 +1311,6 @@ int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset);
 int i40e_is_vsi_uplink_mode_veb(struct i40e_vsi *vsi);
 int i40e_get_partition_bw_setting(struct i40e_pf *pf);
 int i40e_set_partition_bw_setting(struct i40e_pf *pf);
-int i40e_commit_partition_bw_setting(struct i40e_pf *pf);
 void i40e_print_link_message(struct i40e_vsi *vsi, bool isup);
 
 void i40e_set_fec_in_flags(u8 fec_cfg, unsigned long *flags);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 276dde0bc1d4..8a333d0e2218 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -12576,89 +12576,6 @@ int i40e_set_partition_bw_setting(struct i40e_pf *pf)
 	return status;
 }
 
-/**
- * i40e_commit_partition_bw_setting - Commit BW settings for this PF partition
- * @pf: board private structure
- **/
-int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
-{
-	/* Commit temporary BW setting to permanent NVM image */
-	enum i40e_admin_queue_err last_aq_status;
-	u16 nvm_word;
-	int ret;
-
-	if (pf->hw.partition_id != 1) {
-		dev_info(&pf->pdev->dev,
-			 "Commit BW only works on partition 1! This is partition %d",
-			 pf->hw.partition_id);
-		ret = -EOPNOTSUPP;
-		goto bw_commit_out;
-	}
-
-	/* Acquire NVM for read access */
-	ret = i40e_acquire_nvm(&pf->hw, I40E_RESOURCE_READ);
-	last_aq_status = pf->hw.aq.asq_last_status;
-	if (ret) {
-		dev_info(&pf->pdev->dev,
-			 "Cannot acquire NVM for read access, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, last_aq_status));
-		goto bw_commit_out;
-	}
-
-	/* Read word 0x10 of NVM - SW compatibility word 1 */
-	ret = i40e_aq_read_nvm(&pf->hw,
-			       I40E_SR_NVM_CONTROL_WORD,
-			       0x10, sizeof(nvm_word), &nvm_word,
-			       false, NULL);
-	/* Save off last admin queue command status before releasing
-	 * the NVM
-	 */
-	last_aq_status = pf->hw.aq.asq_last_status;
-	i40e_release_nvm(&pf->hw);
-	if (ret) {
-		dev_info(&pf->pdev->dev, "NVM read error, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, last_aq_status));
-		goto bw_commit_out;
-	}
-
-	/* Wait a bit for NVM release to complete */
-	msleep(50);
-
-	/* Acquire NVM for write access */
-	ret = i40e_acquire_nvm(&pf->hw, I40E_RESOURCE_WRITE);
-	last_aq_status = pf->hw.aq.asq_last_status;
-	if (ret) {
-		dev_info(&pf->pdev->dev,
-			 "Cannot acquire NVM for write access, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, last_aq_status));
-		goto bw_commit_out;
-	}
-	/* Write it back out unchanged to initiate update NVM,
-	 * which will force a write of the shadow (alt) RAM to
-	 * the NVM - thus storing the bandwidth values permanently.
-	 */
-	ret = i40e_aq_update_nvm(&pf->hw,
-				 I40E_SR_NVM_CONTROL_WORD,
-				 0x10, sizeof(nvm_word),
-				 &nvm_word, true, 0, NULL);
-	/* Save off last admin queue command status before releasing
-	 * the NVM
-	 */
-	last_aq_status = pf->hw.aq.asq_last_status;
-	i40e_release_nvm(&pf->hw);
-	if (ret)
-		dev_info(&pf->pdev->dev,
-			 "BW settings NOT SAVED, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, last_aq_status));
-bw_commit_out:
-
-	return ret;
-}
-
 /**
  * i40e_is_total_port_shutdown_enabled - read NVM and return value
  * if total port shutdown feature is enabled for this PF
-- 
2.47.1

