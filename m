Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B48860229
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 20:05:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4E90841A49;
	Thu, 22 Feb 2024 19:05:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4rlz_Iv6xo0; Thu, 22 Feb 2024 19:05:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92F9641A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708628720;
	bh=jotZ4JgS9vByaRfNj7DELwd+rZivjnrvYnW2Os265iY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3wEeWh3d+au2qjgiA2O1oK4A/qTVZPCxPPIfLJgfCe0AkdMqJvcPDWDIw1his+EGq
	 Vyfqhkj7IEzEScAAI9JeOrcioa13Hy2DsRTOxkYofAzeERFC5yYTsTPMi3RZOf4zcT
	 yrjUe693JUGWXww/EbHHnC5yLCvJgH8c/tU6MYxvo884D82A+kbH6v7+WQa4Bl3u31
	 tACaK9r7HznUSVsBg83U/3pIOcuBybIM1tb6nzZDyjquMkJKY/k44hsGZ8R7b9Hvoz
	 VUAE9tuVqBeYn4Wt9w/3v7HwIgGAyqNApq7FkaW1hNoTy9mEOFtIRnzGB2fe1A4TbM
	 fKnDKzdZV5Eqg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92F9641A40;
	Thu, 22 Feb 2024 19:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E67F71BF2F6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D021E41A2B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VfthnA3vW_D9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 19:05:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=alan.brady@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9857341A17
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9857341A17
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9857341A17
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 19:05:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="13506407"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="13506407"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 11:05:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="10171453"
Received: from dev1-atbrady.jf.intel.com ([10.166.241.35])
 by fmviesa004.fm.intel.com with ESMTP; 22 Feb 2024 11:05:12 -0800
From: Alan Brady <alan.brady@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Feb 2024 11:04:41 -0800
Message-ID: <20240222190441.2610930-12-alan.brady@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222190441.2610930-1-alan.brady@intel.com>
References: <20240222190441.2610930-1-alan.brady@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708628713; x=1740164713;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wA6maNwAMiuZt50va+iiGSJ9t208euuKhsCRPNUJd7w=;
 b=XE0ucoeUvIF/kXdjRD6+MkHLfj8ao18+5Pz3X87xR+uJAaoeoPSL0rk0
 sBVrt749cYVd07mNGTxAq7Dr88Sf0AmbSL3kwak+gvvKjfY5iwPl9drw+
 uhccXNxhzTi7I8xSkwv++k7/n3g9vHUPRsDNi0fx3llUwtxoC2O+mK3Bc
 wPcCqQ7Jqx+svZmnULUk+T54Rd0s84CczgA+STz1iExojT2SnsopMMnvi
 ZE2bXUY1ZiiW5AbeO++V8NLdk7pnNF/siQ+tM6ChTW0g2zyVU8NDFsdFi
 5zpDpjkzAasiBOj3c29zK/Ror3HEfdvz713a3WP3c6ttYWzDkeEUsC8zn
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XE0ucoeU
Subject: [Intel-wired-lan] [PATCH v6 11/11 iwl-next] idpf: remove dealloc
 vector msg err in idpf_intr_rel
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
Cc: netdev@vger.kernel.org, Alan Brady <alan.brady@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This error message is at best not really helpful and at worst
misleading. If we're here in idpf_intr_rel we're likely trying to do
remove or reset. If we're in reset, this message will fail because we
lose the virtchnl on reset and HW is going to clean up those resources
regardless in that case. If we're in remove and we get an error here,
we're going to reset the device at the end of remove anyway so not a big
deal. Just remove this message it's not useful.

Tested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
Signed-off-by: Alan Brady <alan.brady@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_lib.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
index 0714d7dcab10..5d3532c27d57 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
@@ -79,19 +79,12 @@ static void idpf_mb_intr_rel_irq(struct idpf_adapter *adapter)
  */
 void idpf_intr_rel(struct idpf_adapter *adapter)
 {
-	int err;
-
 	if (!adapter->msix_entries)
 		return;
 
 	idpf_mb_intr_rel_irq(adapter);
 	pci_free_irq_vectors(adapter->pdev);
-
-	err = idpf_send_dealloc_vectors_msg(adapter);
-	if (err)
-		dev_err(&adapter->pdev->dev,
-			"Failed to deallocate vectors: %d\n", err);
-
+	idpf_send_dealloc_vectors_msg(adapter);
 	idpf_deinit_vector_stack(adapter);
 	kfree(adapter->msix_entries);
 	adapter->msix_entries = NULL;
-- 
2.43.0

