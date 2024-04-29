Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D778B58E5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 29 Apr 2024 14:45:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1820D81DE1;
	Mon, 29 Apr 2024 12:45:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AwQ-uhlfFjvV; Mon, 29 Apr 2024 12:45:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3F53581DF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714394725;
	bh=CSdIjzzdjAUqRZWXlYR6ZEgeQhNVj7rUEbwWPASOCLc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ZO4+/qzFyqpVlA+Agz/Jchwv4/u5gqoh9j1NKH3Beg7xkYPsOq35x1YdVpOqipUQe
	 N+S5FcfroDsUn88aqFVomkS3k0pozhcw5Y1mk+SVt6LSW/HBbFvE7sAH+KeulwyVKi
	 vQDH0HPjGVhUZSswy98+hMVLPXp4OYqMb5Na0DNzPbGLK0S3a1g/8xqtv3jyXeztiA
	 IrC8WzwOgNKU7smsRDqI0bgl5Z1KedCapTyLy1ydWjXZiPcN/4STB5vD2GeI4bq7rA
	 580D5nO73USnvNxViNkGKbTTWxZDHDD/Fq/0SweE/yCyZxftTx23MixDFDT54gKxH7
	 UA8BctgKeIA7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3F53581DF2;
	Mon, 29 Apr 2024 12:45:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C0721BF86B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:45:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2680B403D0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:45:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hNFAKnsCY7_r for <intel-wired-lan@lists.osuosl.org>;
 Mon, 29 Apr 2024 12:45:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::733; helo=mail-qk1-x733.google.com;
 envelope-from=ross.lagerwall@cloud.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F21F403B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F21F403B4
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F21F403B4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 12:45:19 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id
 af79cd13be357-78f049fefd5so296244785a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 29 Apr 2024 05:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714394719; x=1714999519;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=CSdIjzzdjAUqRZWXlYR6ZEgeQhNVj7rUEbwWPASOCLc=;
 b=k4mT5PwliBQSRiKfJy85VLs2lUv+xyPM2+NSknrfBt+GvMFPSg7rSYQVhOJG2BHWiE
 qHJ6cTUA4pr1M7NHWLWn+NMN6uM1P2P/ciESDCLAKV/dZa+hy1zxlp09Ma2usBEtZzDP
 etBD69IFGehMfupSq3gLwCbQEXD8PF81M6DWZliCmxsyfP8oiJnYUAr7AwD0eWKUXOll
 o4CukSN+Jou/G6rmFr9/usXl8Px2tuvYQk60ewDZaoK9QvyouCFLu+TmAR0jisoriryy
 MaTAvrIZyaHj2682a1exK0QaGlr392ySitle4ZgTaGbasdQZ44r5zf4F/uwAreskE0Om
 mhTQ==
X-Gm-Message-State: AOJu0Yzq5E4UNT1/k6LecvkpLFvr4q6qtQ83zsMZ8xujUEgLiViMwndE
 VzVXyQ+WHN22dJh+O9LrkfyriEYGzH1jPtebtyImISZh51o+kWJCkTa7lEOt2g==
X-Google-Smtp-Source: AGHT+IElZd42ZGwJ8z9A8xEz9Hiqk8qh71/z3AW+tX8Ig39dBjGxB6sSSxZRSmrirxxlgFCqcIpC4g==
X-Received: by 2002:a05:620a:2415:b0:790:f40f:e24e with SMTP id
 d21-20020a05620a241500b00790f40fe24emr4630529qkn.22.1714394718621; 
 Mon, 29 Apr 2024 05:45:18 -0700 (PDT)
Received: from rossla-lxenia.eng.citrite.net ([185.25.67.249])
 by smtp.gmail.com with ESMTPSA id
 k9-20020ae9f109000000b0078ede0c25b5sm10412073qkg.23.2024.04.29.05.45.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Apr 2024 05:45:18 -0700 (PDT)
From: Ross Lagerwall <ross.lagerwall@citrix.com>
To: netdev@vger.kernel.org
Date: Mon, 29 Apr 2024 13:49:22 +0100
Message-ID: <20240429124922.2872002-1-ross.lagerwall@citrix.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=citrix.com; s=google; t=1714394719; x=1714999519; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=CSdIjzzdjAUqRZWXlYR6ZEgeQhNVj7rUEbwWPASOCLc=;
 b=YNyoUTVDI+/mwoP8xD86fH3dC9x3KPueAZKweMX4F/LSFgcpuE0/GATe6glhufYHOY
 BnGVlRewYtwyNEpGPcPdsZYmKL4mDEHIHLQXAyuy9Muw6EsqOZKWQZT1nW8W95Whz0b+
 RaOe433iERTOtN+h83Qz9IM7hqD+PJD+KeBBg=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=citrix.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=citrix.com header.i=@citrix.com header.a=rsa-sha256
 header.s=google header.b=YNyoUTVD
Subject: [Intel-wired-lan] [PATCH v2] ice: Fix enabling SR-IOV with Xen
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Javi Merino <javi.merino@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Ross Lagerwall <ross.lagerwall@citrix.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When the PCI functions are created, Xen is informed about them and
caches the number of MSI-X entries each function has.  However, the
number of MSI-X entries is not set until after the hardware has been
configured and the VFs have been started. This prevents
PCI-passthrough from working because Xen rejects mapping MSI-X
interrupts to domains because it thinks the MSI-X interrupts don't
exist.

Fix this by moving the call to pci_enable_sriov() later so that the
number of MSI-X entries is set correctly in hardware by the time Xen
reads it.

Signed-off-by: Ross Lagerwall <ross.lagerwall@citrix.com>
Signed-off-by: Javi Merino <javi.merino@kernel.org>
---

In v2:
* Fix cleanup on if pci_enable_sriov() fails.

 drivers/net/ethernet/intel/ice/ice_sriov.c | 23 +++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a958fcf3e6be..bc97493046a8 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -864,6 +864,8 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	int total_vectors = pf->hw.func_caps.common_cap.num_msix_vectors;
 	struct device *dev = ice_pf_to_dev(pf);
 	struct ice_hw *hw = &pf->hw;
+	struct ice_vf *vf;
+	unsigned int bkt;
 	int ret;
 
 	pf->sriov_irq_bm = bitmap_zalloc(total_vectors, GFP_KERNEL);
@@ -877,24 +879,20 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 	set_bit(ICE_OICR_INTR_DIS, pf->state);
 	ice_flush(hw);
 
-	ret = pci_enable_sriov(pf->pdev, num_vfs);
-	if (ret)
-		goto err_unroll_intr;
-
 	mutex_lock(&pf->vfs.table_lock);
 
 	ret = ice_set_per_vf_res(pf, num_vfs);
 	if (ret) {
 		dev_err(dev, "Not enough resources for %d VFs, err %d. Try with fewer number of VFs\n",
 			num_vfs, ret);
-		goto err_unroll_sriov;
+		goto err_unroll_intr;
 	}
 
 	ret = ice_create_vf_entries(pf, num_vfs);
 	if (ret) {
 		dev_err(dev, "Failed to allocate VF entries for %d VFs\n",
 			num_vfs);
-		goto err_unroll_sriov;
+		goto err_unroll_intr;
 	}
 
 	ice_eswitch_reserve_cp_queues(pf, num_vfs);
@@ -905,6 +903,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 		goto err_unroll_vf_entries;
 	}
 
+	ret = pci_enable_sriov(pf->pdev, num_vfs);
+	if (ret)
+		goto err_unroll_start_vfs;
+
 	clear_bit(ICE_VF_DIS, pf->state);
 
 	/* rearm global interrupts */
@@ -915,12 +917,15 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
 	return 0;
 
+err_unroll_start_vfs:
+	ice_for_each_vf(pf, bkt, vf) {
+		ice_dis_vf_mappings(vf);
+		ice_vf_vsi_release(vf);
+	}
 err_unroll_vf_entries:
 	ice_free_vf_entries(pf);
-err_unroll_sriov:
-	mutex_unlock(&pf->vfs.table_lock);
-	pci_disable_sriov(pf->pdev);
 err_unroll_intr:
+	mutex_unlock(&pf->vfs.table_lock);
 	/* rearm interrupts here */
 	ice_irq_dynamic_ena(hw, NULL, NULL);
 	clear_bit(ICE_OICR_INTR_DIS, pf->state);
-- 
2.43.0

