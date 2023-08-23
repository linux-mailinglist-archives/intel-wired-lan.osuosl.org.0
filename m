Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F64778633E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 00:16:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A68D60D62;
	Wed, 23 Aug 2023 22:16:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A68D60D62
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692828981;
	bh=o5XzTgfB/p4JSqm/qevF7SuZv50IT0RUK5l0D9fCcUo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=inUBoLgKd9DR9DFkMVtWjjcgTsfqiTf3oLRLkZFHfmMZDMPHvnHr1BLaNcANMRQ2T
	 eKBmzA9I9R3tC/jGRUJWQKTm0+OrgkiAXC0GqLZct8ibbBK/kAcB8SRNEspqf7YCep
	 5ywt8TxfZYOCT1qApBwbfHKynnhdJSmtAqfuzuwhFs0gXRoz00ERPMF8pH2BAOol4i
	 4Xx2l9B9UinV8xHAUSdGR+zi5zoRJRvRy0cGq54bhjza8uqlD0+JuzQtnhHbvk7VY4
	 bN2aDcif0knP6t7D9H+2MiUn0U/qsqXDWpbWfxHWdlIOBnK2hD+9NdMPI+9H4CyKxl
	 GxUaUiSa+004Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xXckTAJJEfJu; Wed, 23 Aug 2023 22:16:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C690460C1C;
	Wed, 23 Aug 2023 22:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C690460C1C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 657041BF280
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:16:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F03D860C1C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F03D860C1C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rUr9A-iswkNc for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 22:16:12 +0000 (UTC)
Received: from out-30.mta1.migadu.com (out-30.mta1.migadu.com
 [IPv6:2001:41d0:203:375::1e])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E1D6660ABA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 22:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1D6660ABA
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Alexander Duyck <alexander.duyck@gmail.com>,
 Mark Rustad <mark.d.rustad@intel.com>,
 Darin Miller <darin.j.miller@intel.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Richard Cochran <richardcochran@gmail.com>
Date: Wed, 23 Aug 2023 23:15:37 +0100
Message-Id: <20230823221537.816541-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1692828968;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=QB4qVsCgwtiQysaepBullKSP3y/QgP04w0gwXiiWUMs=;
 b=qE0URJnJw+o/xk6FEqqdSxb0G2dznVGqOke8dK0ALzETlkcg9OLuATzJg3EEiO08dfrSrH
 Gyd3FE0fzIwGQBuf0Qe8PXLpxE00dcYgJV0v220iVWv/UJQAduOU7QhQmExhPu24ZxKoj3
 VOnC4PqpTGEhluYw07r0KAwXt992Uvg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=qE0URJnJ
Subject: [Intel-wired-lan] [PATCH net] ixgbe: fix timestamp configuration
 code
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The commit in fixes introduced flags to control the status of hardware
configuration while processing packets. At the same time another structure
is used to provide configuration of timestamper to user-space applications.
The way it was coded makes this structures go out of sync easily. The
repro is easy for 82599 chips:

[root@hostname ~]# hwstamp_ctl -i eth0 -r 12 -t 1
current settings:
tx_type 0
rx_filter 0
new settings:
tx_type 1
rx_filter 12

The eth0 device is properly configured to timestamp any PTPv2 events.

[root@hostname ~]# hwstamp_ctl -i eth0 -r 1 -t 1
current settings:
tx_type 1
rx_filter 12
SIOCSHWTSTAMP failed: Numerical result out of range
The requested time stamping mode is not supported by the hardware.

The error is properly returned because HW doesn't support all packets
timestamping. But the adapter->flags is cleared of timestamp flags
even though no HW configuration was done. From that point no RX timestamps
are received by user-space application. But configuration shows good
values:

[root@hostname ~]# hwstamp_ctl -i eth0
current settings:
tx_type 1
rx_filter 12

Fix the issue by applying new flags only when the HW was actually
configured.

Fixes: a9763f3cb54c ("ixgbe: Update PTP to support X550EM_x devices")
Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 28 +++++++++++---------
 1 file changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 0310af851086..9339edbd9082 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -979,6 +979,7 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 	u32 tsync_tx_ctl = IXGBE_TSYNCTXCTL_ENABLED;
 	u32 tsync_rx_ctl = IXGBE_TSYNCRXCTL_ENABLED;
 	u32 tsync_rx_mtrl = PTP_EV_PORT << 16;
+	u32 aflags = adapter->flags;
 	bool is_l2 = false;
 	u32 regval;
 
@@ -996,20 +997,20 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 	case HWTSTAMP_FILTER_NONE:
 		tsync_rx_ctl = 0;
 		tsync_rx_mtrl = 0;
-		adapter->flags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
-				    IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
+		aflags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
+			    IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_SYNC:
 		tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
 		tsync_rx_mtrl |= IXGBE_RXMTRL_V1_SYNC_MSG;
-		adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
-				   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
+		aflags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
+			   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_DELAY_REQ:
 		tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_L4_V1;
 		tsync_rx_mtrl |= IXGBE_RXMTRL_V1_DELAY_REQ_MSG;
-		adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
-				   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
+		aflags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
+			   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
 		break;
 	case HWTSTAMP_FILTER_PTP_V2_EVENT:
 	case HWTSTAMP_FILTER_PTP_V2_L2_EVENT:
@@ -1023,8 +1024,8 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 		tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_EVENT_V2;
 		is_l2 = true;
 		config->rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;
-		adapter->flags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
-				   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
+		aflags |= (IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
+			   IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
 		break;
 	case HWTSTAMP_FILTER_PTP_V1_L4_EVENT:
 	case HWTSTAMP_FILTER_NTP_ALL:
@@ -1035,7 +1036,7 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 		if (hw->mac.type >= ixgbe_mac_X550) {
 			tsync_rx_ctl |= IXGBE_TSYNCRXCTL_TYPE_ALL;
 			config->rx_filter = HWTSTAMP_FILTER_ALL;
-			adapter->flags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
+			aflags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
 			break;
 		}
 		fallthrough;
@@ -1046,8 +1047,6 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 		 * Delay_Req messages and hardware does not support
 		 * timestamping all packets => return error
 		 */
-		adapter->flags &= ~(IXGBE_FLAG_RX_HWTSTAMP_ENABLED |
-				    IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER);
 		config->rx_filter = HWTSTAMP_FILTER_NONE;
 		return -ERANGE;
 	}
@@ -1079,8 +1078,8 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 			       IXGBE_TSYNCRXCTL_TYPE_ALL |
 			       IXGBE_TSYNCRXCTL_TSIP_UT_EN;
 		config->rx_filter = HWTSTAMP_FILTER_ALL;
-		adapter->flags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
-		adapter->flags &= ~IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER;
+		aflags |= IXGBE_FLAG_RX_HWTSTAMP_ENABLED;
+		aflags &= ~IXGBE_FLAG_RX_HWTSTAMP_IN_REGISTER;
 		is_l2 = true;
 		break;
 	default:
@@ -1113,6 +1112,9 @@ static int ixgbe_ptp_set_timestamp_mode(struct ixgbe_adapter *adapter,
 
 	IXGBE_WRITE_FLUSH(hw);
 
+	/* configure adapter flags only when HW is actually configured */
+	adapter->flags = aflags;
+
 	/* clear TX/RX time stamp registers, just to be sure */
 	ixgbe_ptp_clear_tx_timestamp(adapter);
 	IXGBE_READ_REG(hw, IXGBE_RXSTMPH);
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
