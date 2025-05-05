Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E6AA1AA9F1C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 May 2025 00:19:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A192960B6E;
	Mon,  5 May 2025 22:19:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZSuES_xG8phq; Mon,  5 May 2025 22:19:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 799DA60B72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746483570;
	bh=i0T2CianKiMUitOw3LyfwHjOLQP1nT6nutuU/kq0IrQ=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VDO79jA7mvRCC4W1dQ0tcoX2aFtZYAdDMYtDdjKBdQ7lrShArubCgIledZ48vJP/7
	 UqLVk9ysp8WcUBUieZNUBjJ78JMbnzbDKQQPNm5uz7JtX9HtpzLmrXKiueZ6YxJ+Kk
	 LztJrCTSDu2iKbj2PiE3eatiZPNVJRQdFr6CbKNtrr9CunllXl1dG2Sht7szAuesCT
	 80qGG3dmLrYVFD+H8FCdM7MpkbrwCP+G2438aQlErMno+HbPbae/ghAqqfIexDrXgM
	 X2YCrxL9u6LlGX3pvyz/MiXtzS+5q5Stzx0eeYNGm+2PuE8ABLjEuGCehoBmejedbq
	 ILxzGM9likhsA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 799DA60B72;
	Mon,  5 May 2025 22:19:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 16C96D5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:19:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EBD0381F68
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:19:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lsbepp1Px-BN for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 May 2025 22:19:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=sashal@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1CEB681E0A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1CEB681E0A
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1CEB681E0A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 May 2025 22:19:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EA4C54486E;
 Mon,  5 May 2025 22:19:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE985C4CEED;
 Mon,  5 May 2025 22:19:25 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Simon Horman <horms@kernel.org>,
 Jeremiah Lokan <jeremiahx.j.lokan@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Paolo Abeni <pabeni@redhat.com>,
 Sasha Levin <sashal@kernel.org>, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Date: Mon,  5 May 2025 18:05:34 -0400
Message-Id: <20250505221419.2672473-118-sashal@kernel.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505221419.2672473-1-sashal@kernel.org>
References: <20250505221419.2672473-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.14.5
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746483567;
 bh=/92+ydjZ4xWbLMNc2vXLjW/dIk+/V2geXTvO+9uyKt8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ikoHSIrqITGuoRADTakHc1blZXpS6Kj+UMI+PP8bhizbyDkwHadB3o19s7+3Etlcr
 JL18z5ZzY0Lt1HvGr+IFjPS0QHA/lHCLmxp3qEgsmmJqmW6u78V5wnymDmkmP5y99v
 UXN6yZN3y63TtISA7++NXQorR7UR8RZNc0ntRDZ2F54eWKbSwDpam250T72z3tP6+/
 dXUc8lhFP7Yrs/rK7N1hmUNPhUFwgx2TSWqu3qRGDzag/fYcvYdGcTcziHCVEe5T2s
 hMeb4I8Fc0bFO/r4ByGroCW3WDZJxD2DscWCDy32UgDIyAcstNqPrnR5+xrhRSsmm4
 aA21gombeGF9g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=ikoHSIrq
Subject: [Intel-wired-lan] [PATCH AUTOSEL 6.14 118/642] ixgbe: add support
 for thermal sensor event reception
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

From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

[ Upstream commit affead2d904e8f82c0b89e23b3835242eb8c3e1a ]

E610 NICs unlike the previous devices utilising ixgbe driver
are notified in the case of overheating by the FW ACI event.

In event of overheat when threshold is exceeded, FW suspends all
traffic and sends overtemp event to the driver. Then driver
logs appropriate message and disables the adapter instance.
The card remains in that state until the platform is rebooted.

This approach is a solution to the fact current version of the
E610 FW doesn't support reading thermal sensor data by the
SW. So give to user at least any info that overtemp event
has occurred, without interface disappearing from the OS
without any note.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Tested-by: Jeremiah Lokan <jeremiahx.j.lokan@intel.com> (A Contingent worker at Intel)
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
Link: https://patch.msgid.link/20250310174502.3708121-7-anthony.l.nguyen@intel.com
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c      | 4 ++++
 drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h | 3 +++
 2 files changed, 7 insertions(+)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 467f81239e12f..481f917f7ed28 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -3185,6 +3185,10 @@ static void ixgbe_handle_fw_event(struct ixgbe_adapter *adapter)
 		case ixgbe_aci_opc_get_link_status:
 			ixgbe_handle_link_status_event(adapter, &event);
 			break;
+		case ixgbe_aci_opc_temp_tca_event:
+			e_crit(drv, "%s\n", ixgbe_overheat_msg);
+			ixgbe_down(adapter);
+			break;
 		default:
 			e_warn(hw, "unknown FW async event captured\n");
 			break;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
index 8d06ade3c7cd9..617e07878e4f7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_type_e610.h
@@ -171,6 +171,9 @@ enum ixgbe_aci_opc {
 	ixgbe_aci_opc_done_alt_write			= 0x0904,
 	ixgbe_aci_opc_clear_port_alt_write		= 0x0906,
 
+	/* TCA Events */
+	ixgbe_aci_opc_temp_tca_event                    = 0x0C94,
+
 	/* debug commands */
 	ixgbe_aci_opc_debug_dump_internals		= 0xFF08,
 
-- 
2.39.5

