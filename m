Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFF6AD7FEA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 39D804089E;
	Fri, 13 Jun 2025 01:01:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lyEqE811Htwe; Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B1D914088D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776500;
	bh=/XSP4EnttsOK67HSYorxv+4wkyejZN0LvDHoRLZ1HX0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CYjowl9DXQT8WZdmDwzkYu/ST8VnSSTe3OsZxcjuTchMYOuru0SMZjRdtQ/oUsbZi
	 I1DpqPmtLp2WSSl7y8RsaMxm5U/AffW2wYaT4BB/8UVm3lVxAKiL/Jps/muE/HmDNH
	 Fk1K3UJJyyto0uenCmpRb1vaCWJczqITwbqkm4rDsa3/mBDDvTcYMQSH4f01Tms9wP
	 +EgdbGY24ySTKKRgAHXNl7TkjR2U/7srfYCuhu3xSjBxQcXMKXMlZ16hlxhxLK8+0W
	 Eaz/CXl7LBb/0radVomOEzLRy8PExQ6fYM85klUI9af94hPV3MIpo04D8v95iZb5l3
	 wXUl0P+TnDrew==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B1D914088D;
	Fri, 13 Jun 2025 01:01:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1981E1BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BE39405ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PWNe5PkelKNb for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:38 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 546584028D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 546584028D
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 546584028D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:38 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A166C62A12;
 Fri, 13 Jun 2025 01:01:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED06EC4CEF2;
 Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:07 -0700
Message-ID: <20250613010111.3548291-4-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613010111.3548291-1-kuba@kernel.org>
References: <20250613010111.3548291-1-kuba@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776496;
 bh=d2+I9YrQ6+9TmowGEFVu3ZWD3zNPnAHlGJF1Pf4TYAw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k9LVt8oEGDAnyEfChvF+i5kE2mtmN2rBQHRz0XKP49lfglPB8IhEx5QocqsBJOmrr
 PwBWBmGOpBhBSy2JbRGJRYdcHpmO2TMH75oHtQY7oFyDANqxldKRZmtEqID/C15pbG
 WoWP0B9OZsHPH4+MvV0hUJu+nkyMr7Qd+ga2aGsyHOox4vl7gCOaAM4pmDNHQ+UF2N
 qbaWIdCJz0CN3+KrH4ZI/wyPOGVs/q43ozGaSxwM1XN1aaog8eT1uVldOSF8Fhzngm
 bi9IuOxL42+qQVwwrhHNfXKXuj8G16JpsJlcR7WdVGiMyf7q+tQnvxLKTjhMflVJOD
 A41KNAtR3m7+w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=k9LVt8oE
Subject: [Intel-wired-lan] [PATCH net-next 3/7] eth: ixgbe: migrate to new
 RXFH callbacks
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

Migrate to new callbacks added by commit 9bb00786fc61 ("net: ethtool:
add dedicated callbacks for getting and setting rxfh fields").

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 20 +++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
index 1dc1c6e611a4..8aac6b1ae1c7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ethtool.c
@@ -2753,9 +2753,11 @@ static int ixgbe_get_ethtool_fdir_all(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
-static int ixgbe_get_rss_hash_opts(struct ixgbe_adapter *adapter,
-				   struct ethtool_rxnfc *cmd)
+static int ixgbe_get_rxfh_fields(struct net_device *dev,
+				 struct ethtool_rxfh_fields *cmd)
 {
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
+
 	cmd->data = 0;
 
 	/* Report default options for RSS on ixgbe */
@@ -2825,9 +2827,6 @@ static int ixgbe_get_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd,
 	case ETHTOOL_GRXCLSRLALL:
 		ret = ixgbe_get_ethtool_fdir_all(adapter, cmd, rule_locs);
 		break;
-	case ETHTOOL_GRXFH:
-		ret = ixgbe_get_rss_hash_opts(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -3079,9 +3078,11 @@ static int ixgbe_del_ethtool_fdir_entry(struct ixgbe_adapter *adapter,
 
 #define UDP_RSS_FLAGS (IXGBE_FLAG2_RSS_FIELD_IPV4_UDP | \
 		       IXGBE_FLAG2_RSS_FIELD_IPV6_UDP)
-static int ixgbe_set_rss_hash_opt(struct ixgbe_adapter *adapter,
-				  struct ethtool_rxnfc *nfc)
+static int ixgbe_set_rxfh_fields(struct net_device *dev,
+				 const struct ethtool_rxfh_fields *nfc,
+				 struct netlink_ext_ack *extack)
 {
+	struct ixgbe_adapter *adapter = ixgbe_from_netdev(dev);
 	u32 flags2 = adapter->flags2;
 
 	/*
@@ -3204,9 +3205,6 @@ static int ixgbe_set_rxnfc(struct net_device *dev, struct ethtool_rxnfc *cmd)
 	case ETHTOOL_SRXCLSRLDEL:
 		ret = ixgbe_del_ethtool_fdir_entry(adapter, cmd);
 		break;
-	case ETHTOOL_SRXFH:
-		ret = ixgbe_set_rss_hash_opt(adapter, cmd);
-		break;
 	default:
 		break;
 	}
@@ -3797,6 +3795,8 @@ static const struct ethtool_ops ixgbe_ethtool_ops_e610 = {
 	.get_rxfh_key_size	= ixgbe_get_rxfh_key_size,
 	.get_rxfh		= ixgbe_get_rxfh,
 	.set_rxfh		= ixgbe_set_rxfh,
+	.get_rxfh_fields	= ixgbe_get_rxfh_fields,
+	.set_rxfh_fields	= ixgbe_set_rxfh_fields,
 	.get_eee		= ixgbe_get_eee,
 	.set_eee		= ixgbe_set_eee,
 	.get_channels		= ixgbe_get_channels,
-- 
2.49.0

