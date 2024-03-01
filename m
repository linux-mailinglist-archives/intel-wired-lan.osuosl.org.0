Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E640386E866
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 19:29:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9C83341CAA;
	Fri,  1 Mar 2024 18:29:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqUfH_jqPQh3; Fri,  1 Mar 2024 18:29:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B561641C9C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709317776;
	bh=27MwlZUyHjDoMWsw+GSNvc+2e8+BFADErkn7KgOSt64=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=t1uIxBwCyhievCmjsn/rdTf23J/wLOXV5q+yaZjoXn+xyO5jSuJwr+kd7guH5+jE3
	 sdm3LPg9uWbursWp2avUA+pszKBykC0MapMm54BDgbiIKeNBrf3kxmulBD1MF3EvFU
	 IrrwUvE4j4/e9rzU0YKqnk15EpIy9U9g/bR8tqBh4BbOdz4T6AsCgr93cWFEItSxJf
	 TfXBqL/gihTUM7gEv3riFk54XrLMwyio408zguUiFs9+YOiMDCmmZSmIz2NgOvU0gG
	 4bqsosq5+2R3067e8+9X+CenEJ3u0NySeP4zXOrZrw3Igg+1cuaYCe4lmw86qeEgq8
	 ryu92bLfw9yNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B561641C9C;
	Fri,  1 Mar 2024 18:29:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EA1CF1BF354
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C5E2610C7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:28:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zOYN9eVTkNzN for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 18:28:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=javi.merino@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 152A160880
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 152A160880
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 152A160880
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 18:28:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id C0637CE265F;
 Fri,  1 Mar 2024 18:28:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57720C433C7;
 Fri,  1 Mar 2024 18:28:19 +0000 (UTC)
From: javi.merino@kernel.org
To: netdev@vger.kernel.org
Date: Fri,  1 Mar 2024 18:28:10 +0000
Message-ID: <20240301182810.9808-1-javi.merino@kernel.org>
X-Mailer: git-send-email 2.43.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 01 Mar 2024 18:29:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709317701;
 bh=gKnBsvJL+Rlqj45zIhXN0kOtWX68tNTT+TRkUrzgaTo=;
 h=From:To:Cc:Subject:Date:From;
 b=V7sN3gOA29+iTau9CUWlthkny4oJdspBiBCA4kDTyxOcxz2QXmpQWUr+/mXNS3jlY
 G9clYV0Wc7nul4wdzy1schx3yADsVdNQW5iZoFvQxD4e7WRz73iYz2DZ9dUeh72Hpt
 EO4XF9Zl8C5TIFa5/O78D8tyIvCL6j/2TKj5CmUe6ic4ttbDswbP8CxA/9OhaFsx2U
 7J0gPY6WZhi9aCqO3M6ywH2PcA62AuCrMMQ1Rd3caiXRNOuJCLMoA3aRsRj0leyzRZ
 rqxjNn73aWTvBDeHoBXH1tAno2EMFKVMP6tn1XfxlUOYDlj+ZpwxggyJ8wRIP2aP+p
 M+1ePvETqT7hA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=V7sN3gOA
Subject: [Intel-wired-lan] [PATCH] ice: Fix enabling SR-IOV with Xen
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
Cc: Ross Lagerwall <ross.lagerwall@citrix.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Javi Merino <javi.merino@kernel.org>,
 intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Ross Lagerwall <ross.lagerwall@citrix.com>

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

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Signed-off-by: Ross Lagerwall <ross.lagerwall@citrix.com>
Signed-off-by: Javi Merino <javi.merino@kernel.org>
---

I'm unsure about the error path if `pci_enable_sriov()` fails.  Do we
have to undo what `ice_start_vfs()` has started?  I can see that
`ice_start_vfs()` has a teardown at the end, so maybe we need the same
code if `pci_enable_sriov()` fails?

 drivers/net/ethernet/intel/ice/ice_sriov.c | 16 +++++++---------
 1 file changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index a94a1c48c3de..8a9c8a2fe834 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -878,24 +878,20 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
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
@@ -906,6 +902,10 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 		goto err_unroll_vf_entries;
 	}
 
+	ret = pci_enable_sriov(pf->pdev, num_vfs);
+	if (ret)
+		goto err_unroll_vf_entries;
+
 	clear_bit(ICE_VF_DIS, pf->state);
 
 	/* rearm global interrupts */
@@ -918,10 +918,8 @@ static int ice_ena_vfs(struct ice_pf *pf, u16 num_vfs)
 
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
2.43.1

