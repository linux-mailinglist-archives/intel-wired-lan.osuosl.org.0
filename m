Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A4EA3AD5D
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Feb 2025 01:46:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E485960F8D;
	Wed, 19 Feb 2025 00:46:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QItYL5kFIWvU; Wed, 19 Feb 2025 00:46:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F2936081F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739926011;
	bh=hxDMkhjbTEVIieFaJTd1H3HMnfpzfxPdJbZW2/l1JH0=;
	h=From:Date:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MJgbFKV/2tPYbNuLiyPHkoUhDb2Kr0YR+ECpQon9eCL57Dzw/EzVZzGvQLRIr64GK
	 yG9oY8Bq6ptKbpJTKQOV4SS7ZCC/nozYe55CxLStMhVm5jtTcL8ev2zSu6TfakNxSh
	 W8z9qP3V5kNoAZX2aFi5Ykqb79BGAeHL+1Vgp0BEP/TNeNx5OysdszxS6kkq71XbBC
	 poILYySwwuNrC3bn3SMbXJ1wA4YMY4gKOYAmYCaahAjnH5LpOolVoHlIVwd3SQ7H/S
	 oeKuNhy58mKwP6w9bqU/ZrIa7Icsu2dsFC+8lXlc1K3t1SFqa+BZE8QN+9s14OYaMq
	 DcMDamW4d4tsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F2936081F;
	Wed, 19 Feb 2025 00:46:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3CD3EAF0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 00:46:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B42560F82
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 00:46:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PetiMuPgvxlV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Feb 2025 00:46:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 668F060F34
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 668F060F34
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 668F060F34
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Feb 2025 00:46:48 +0000 (UTC)
X-CSE-ConnectionGUID: E8yABWJvSAuAf+VlMX/CkQ==
X-CSE-MsgGUID: WXjVZW77R0ySQbet3KRxYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40903531"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="40903531"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 16:46:47 -0800
X-CSE-ConnectionGUID: 1SGFXMt3SI6YVH/GjwWtbg==
X-CSE-MsgGUID: lXALLm4tSw6WF4Uhetj+yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="115213758"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 16:46:47 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 18 Feb 2025 16:46:34 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250218-jk-e830-ddp-loading-fix-v1-1-47dc8e8d4ab5@intel.com>
X-B4-Tracking: v=1; b=H4sIAOkptWcC/x2MWw5AMBAAryL7bZOqiMdVxEfZLYuUtIJE3F3jc
 yaZeSCwFw7QJA94PiXI5iJkaQLDZNzIKBQZtNKF0lmF84Jc5QqJdlw3Q+JGtHJjzZZ6soMulYF
 Y756j/s8tyLWi4wO69/0Azh+q13IAAAA=
X-Change-ID: 20250218-jk-e830-ddp-loading-fix-9efdbdfc270a
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Paul Greenwalt <paul.greenwalt@intel.com>, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739926008; x=1771462008;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:to:cc;
 bh=zGbubETGCRqeJQMQNzMgFlOJVkMyhq8dQ5UlQFeNLf0=;
 b=P7phsBD+O2c9BMsIhsCL2Pu3GOvPIQ7YW4qfrUBh/E9CncFf4BJe3uuN
 orUmCANjLrU+lb+WYfbX6Y6lIdDsFo8HhkyYzv61uVzvsCpPXahJRvCJ/
 nEANfVwQ2oeJJc3zZOrRXNUcuQhGyDWwYjmKmIRFzPY4pIMFZyGyAqSSS
 k5nm0Ji8WOb5MvVT/WfXajB9Af77/JrGXtz0nPU7DRe0z2Ms090Lg/2Xg
 CZbWnLEE5HHhl0BONckZU2mzJvWB9OJnxQaGC1whxrhsE4kvnhZu7OcU5
 qgWOmQN4KCZxitaMNhLUF7iEvEsDkETGG84rBkJvaSeA868viPww7wTD+
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=P7phsBD+
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix Get Tx Topology AQ
 command error on E830
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

From: Paul Greenwalt <paul.greenwalt@intel.com>

With E830 Get Tx Topology AQ command (opcode 0x0418) returns an error when
setting the AQ command read flag, and since the get command is a direct
command there is no need to set the read flag.

Fix this by only setting read flag on set command.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ddp.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
index 03988be03729b76e96188864896527060c8c4d5b..49bd49ab3ccf36c990144894e887341459377a2d 100644
--- a/drivers/net/ethernet/intel/ice/ice_ddp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
@@ -2345,15 +2345,15 @@ ice_get_set_tx_topo(struct ice_hw *hw, u8 *buf, u16 buf_size,
 			cmd->set_flags |= ICE_AQC_TX_TOPO_FLAGS_SRC_RAM |
 					  ICE_AQC_TX_TOPO_FLAGS_LOAD_NEW;
 
-		if (ice_is_e825c(hw))
-			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
 	} else {
 		ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_get_tx_topo);
 		cmd->get_flags = ICE_AQC_TX_TOPO_GET_RAM;
-	}
 
-	if (!ice_is_e825c(hw))
-		desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+		if (hw->mac_type != ICE_MAC_GENERIC_3K_E825 &&
+		    hw->mac_type != ICE_MAC_E830)
+			desc.flags |= cpu_to_le16(ICE_AQ_FLAG_RD);
+	}
 
 	status = ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
 	if (status)

---
base-commit: f5da7c45188eea71394bf445655cae2df88a7788
change-id: 20250218-jk-e830-ddp-loading-fix-9efdbdfc270a

Best regards,
-- 
Jacob Keller <jacob.e.keller@intel.com>

