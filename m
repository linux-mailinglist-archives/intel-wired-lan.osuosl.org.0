Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0D732E44B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Mar 2021 10:05:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 21AD384511;
	Fri,  5 Mar 2021 09:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KIpBuWBixbZA; Fri,  5 Mar 2021 09:05:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2085B843A0;
	Fri,  5 Mar 2021 09:05:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 403E61BF294
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:05:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E66584484
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:05:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Is95xwrlrZy5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Mar 2021 09:05:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F857843A0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Mar 2021 09:05:14 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 07B4664F4F;
 Fri,  5 Mar 2021 09:05:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1614935114;
 bh=W0doVExi+7l5tGvbjfwECBr+mScLF6o8Q5o+wMEAbOQ=;
 h=Date:From:To:Cc:Subject:From;
 b=uPEEz0YF8G2J+UnsF0n3wskkD9GHvbdojuQlw9HujLPi/tL0CWTduYIx9gUtAORHt
 1KlxbV2H+A7t5odKqdJu/6HlauGlcAb9ekch/pK8U4ezhQBirL6ThTqYdCEmRNNSW3
 IDm8QUxOQxxBhmtYE/8rZun5yN1JzPZ2CZ+D3GuCYct9kXK3MVxXgPxq2gTm/1UhGl
 9dFuy14ShZfXp7STYqy/xWfuugwUnkHTOeWq2hjJgHvTjRVFBkFUPp1RCaj36yZhgQ
 S1Ouk2LD2wSqkL+ArCHVUH7/9jC+Nie9CnrYwTSB+EjVrcBKvrRGMESj2VJ82Jr5bT
 4fPgGPIRcsuVA==
Date: Fri, 5 Mar 2021 03:05:11 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210305090511.GA139181@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
Subject: [Intel-wired-lan] [PATCH RESEND][next] igb: Fix fall-through
 warnings for Clang
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
Cc: linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In preparation to enable -Wimplicit-fallthrough for Clang, fix multiple
warnings by explicitly adding multiple break statements instead of just
letting the code fall through to the next case.

Link: https://github.com/KSPP/linux/issues/115
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/net/ethernet/intel/igb/e1000_phy.c   | 1 +
 drivers/net/ethernet/intel/igb/igb_ethtool.c | 1 +
 drivers/net/ethernet/intel/igb/igb_ptp.c     | 1 +
 3 files changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/igb/e1000_phy.c b/drivers/net/ethernet/intel/igb/e1000_phy.c
index 8c8eb82e6272..a018000f7db9 100644
--- a/drivers/net/ethernet/intel/igb/e1000_phy.c
+++ b/drivers/net/ethernet/intel/igb/e1000_phy.c
@@ -836,6 +836,7 @@ s32 igb_copper_link_setup_igp(struct e1000_hw *hw)
 			break;
 		case e1000_ms_auto:
 			data &= ~CR_1000T_MS_ENABLE;
+			break;
 		default:
 			break;
 		}
diff --git a/drivers/net/ethernet/intel/igb/igb_ethtool.c b/drivers/net/ethernet/intel/igb/igb_ethtool.c
index 28baf203459a..486d3e67d3a9 100644
--- a/drivers/net/ethernet/intel/igb/igb_ethtool.c
+++ b/drivers/net/ethernet/intel/igb/igb_ethtool.c
@@ -3022,6 +3022,7 @@ static int igb_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 		break;
 	case ETHTOOL_SRXCLSRLDEL:
 		ret = igb_del_ethtool_nfc_entry(adapter, cmd);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/net/ethernet/intel/igb/igb_ptp.c b/drivers/net/ethernet/intel/igb/igb_ptp.c
index 7cc5428c3b3d..f3ff565da0a1 100644
--- a/drivers/net/ethernet/intel/igb/igb_ptp.c
+++ b/drivers/net/ethernet/intel/igb/igb_ptp.c
@@ -1008,6 +1008,7 @@ static int igb_ptp_set_timestamp_mode(struct igb_adapter *adapter,
 	switch (config->tx_type) {
 	case HWTSTAMP_TX_OFF:
 		tsync_tx_ctl = 0;
+		break;
 	case HWTSTAMP_TX_ON:
 		break;
 	default:
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
