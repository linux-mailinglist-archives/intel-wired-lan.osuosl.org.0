Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF2E9C28A7
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Nov 2024 01:12:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB40E42AB0;
	Sat,  9 Nov 2024 00:12:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id A1Txqxw4GqKy; Sat,  9 Nov 2024 00:12:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0DA7142AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731111144;
	bh=M8A6rdwpa0g4hHrnn8vovKCFQWvUXN/6zhaQMSB0ygY=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ub9hmpeAcJDKqYDAxFGpSs0XWQxSGIlrn1NAMKt/1NFnzq9f/gVSVJ+IponU58TI/
	 t+x0JS4CxicWU5zOdR/zyZTzSlJ8rIkSdts95nmH8eaqCp1l18TEyN7JtfwvLhJzNd
	 MAr68vWMTrj8X3qKltDXQ4bBHLop9RKIEdRM4SczhvQu5A30eP1UIawsSB4V7WqJaU
	 hlwDXQ7atsywhEK4fnleo2lFJIffR1IwSZ/O4CXWtqlIP2lC15zV4IJau9hhoe2to6
	 OFXm7JRbqT0KlZz6CdBKF230O/xZ4swpSMblO+PBpn+2OT6lTzHHzCogJSVsolWu1b
	 UTgQEpa2tQcxw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0DA7142AAD;
	Sat,  9 Nov 2024 00:12:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id AE36AC2
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EAD418453C
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3UnXSYvg0zHI for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=ahmed.zaki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2F31D845FF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F31D845FF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2F31D845FF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Nov 2024 00:12:20 +0000 (UTC)
X-CSE-ConnectionGUID: RYaegqytQMK53GqU9M9fSw==
X-CSE-MsgGUID: JSfoQWXbQkWzaWypsihwtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11250"; a="34795122"
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="34795122"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:20 -0800
X-CSE-ConnectionGUID: o4AE/ydaTDayxZwki/mftg==
X-CSE-MsgGUID: vOxGXtlWRUaX5lK6nlke/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,139,1728975600"; d="scan'208";a="90905982"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.245.245.163])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2024 16:12:18 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>
Date: Fri,  8 Nov 2024 17:12:06 -0700
Message-ID: <20241109001206.213581-3-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241109001206.213581-1-ahmed.zaki@intel.com>
References: <20241109001206.213581-1-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731111140; x=1762647140;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=98KyeWcoZifTNbYdbHJCzag20uPxI5T6PBTFheZ9in8=;
 b=K58wjspKiUOgwvlH6vcy22wvUcYeSD4lrOwWdrAbzX2dLwtkCnb+whan
 d9K4+a838+Ty08gfFnrdFpmMbVp8NG/zOj91dhCsIYr3oglvu5Vz8XJ+W
 NGodq0uqdgqKyOiAU8Ir1A5ESU94LhTLr7jIIO69OiVOzWsTN7Vtclc/F
 NSJXPPI9Y/3oWJ6Iy1Z8FOvuKqtSaeoXXlOA9Vx90Wa3+yUq3Dop+Btq7
 qP3m6Zn4GswxrFYrYk0lyxC1nV1GSY/kFoNx99oXFWhVLM18UD0mBIj0c
 Cvs9Kl/JonfoXiTUVjV0zxqfe1JQDBxT372K4BoInTpvbzuHJGOyBF/8E
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K58wjspK
Subject: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: finish pending IRQ
 handling before freeing interrupt
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

From: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>

Wait for pending IRQs to be handled before an interrupt is free'd up.

Fixes: d4d558718266 ("idpf: initialize interrupts and enable vport")
Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
Signed-off-by: Sudheer Mogilappagari <sudheer.mogilappagari@intel.com>
Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index 82e0e3698f10..08acdd383b8d 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -3584,6 +3584,7 @@ static void idpf_vport_intr_rel_irq(struct idpf_vport *vport)
 
 		/* clear the affinity_mask in the IRQ descriptor */
 		irq_set_affinity_notifier(irq_num, NULL);
+		synchronize_irq(irq_num);
 		kfree(free_irq(irq_num, q_vector));
 	}
 }
-- 
2.43.0

