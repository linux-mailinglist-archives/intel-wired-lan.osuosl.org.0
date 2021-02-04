Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7269230E999
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Feb 2021 02:50:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 05B5486B3B;
	Thu,  4 Feb 2021 01:50:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Aa8TcyzT3mPQ; Thu,  4 Feb 2021 01:50:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B026D86AF6;
	Thu,  4 Feb 2021 01:50:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 21AD61BF3D6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 01:50:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1CEC387144
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 01:50:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pyS1121rDfwl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Feb 2021 01:50:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 11B9787140
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Feb 2021 01:50:44 +0000 (UTC)
IronPort-SDR: davZJeCXO0yW+DbVHqXzP3teRzy5fh7ByujgnFqJTli4Z+XycFiQ8gVR97uoxIh1f3iN8Fbxbb
 AKhV0OpWal6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="180380195"
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="180380195"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 17:50:41 -0800
IronPort-SDR: XfFqTcM36H66gWXf2DeY3KG/qzaYORfG5p5982fMDYY+hy+dIamaSow2ircLil9oZPfknbZOMh
 qpbN33KkeS0A==
X-IronPort-AV: E=Sophos;i="5.79,399,1602572400"; d="scan'208";a="371781566"
Received: from swfong-mobl.amr.corp.intel.com (HELO edesouza-mobl1.lan)
 ([10.212.18.66])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 17:50:39 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  3 Feb 2021 17:50:25 -0800
Message-Id: <20210204015025.40275-1-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v1] igb: Redistribute memory
 for transmit packet buffers when in Qav mode
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

i210 has a total of 24KB of transmit packet buffer. When in Qav mode,
this buffer is divided into four pieces, one for each Tx queue.
Currently, 8KB are given to each of the two SR queues and 4KB are given
to each of the two SP queues.

However, it was noticed that such distribution can make best effort
traffic (which would usually go to the SP queues when Qav is enabled, as
the SR queues would be used by ETF or CBS qdiscs for TSN-aware traffic)
perform poorly. Using iperf3 to measure, one could see the performance
of best effort traffic drop by nearly a third (from 935Mbps to 578Mbps),
with no TSN traffic competing.

This patch redistributes the 24KB to each queue equally: 6KB each. On
tests, there was no notable performance reduction of best effort traffic
performance when there was no TSN traffic competing.

Below, more details about the data collected:

All experiments were run using the following qdisc setup:

qdisc taprio 100: root refcnt 9 tc 4 map 3 3 3 2 3 0 0 3 3 3 3 3 3 3 3 3
    queues offset 0 count 1 offset 1 count 1 offset 2 count 1 offset 3 count 1
    clockid TAI base-time 0 cycle-time 10000000 cycle-time-extension 0
    index 0 cmd S gatemask 0xf interval 10000000

qdisc etf 8045: parent 100:1 clockid TAI delta 1000000 offload on
    deadline_mode off skip_sock_check off

TSN traffic, when enabled, had this characteristics:
 Packet size: 1500 bytes
 Transmission interval: 125us

----------------------------------
Without this patch:
----------------------------------
- TCP data:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.35 GBytes   578 Mbits/sec    0

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.07 GBytes   460 Mbits/sec    1

- TCP data limiting iperf3 buffer size to 4K:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.35 GBytes   579 Mbits/sec    0

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.08 GBytes   462 Mbits/sec    0

- TCP data limiting iperf3 buffer size to 192 bytes (smallest size without
 serious performance degradation):
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.34 GBytes   577 Mbits/sec    0

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.07 GBytes   461 Mbits/sec    1

- UDP data at 1000Mbit/sec:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
        [  5]   0.00-20.00  sec  1.36 GBytes   586 Mbits/sec  0.000 ms  0/1011407 (0%)

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
        [  5]   0.00-20.00  sec  1.05 GBytes   451 Mbits/sec  0.000 ms  0/778672 (0%)

----------------------------------
With this patch:
----------------------------------

- TCP data:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  2.17 GBytes   932 Mbits/sec    0

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.50 GBytes   646 Mbits/sec    1

- TCP data limiting iperf3 buffer size to 4K:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  2.17 GBytes   931 Mbits/sec    0

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.50 GBytes   645 Mbits/sec    0

- TCP data limiting iperf3 buffer size to 192 bytes (smallest size without
 serious performance degradation):
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  2.17 GBytes   932 Mbits/sec    1

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Retr
        [  5]   0.00-20.00  sec  1.50 GBytes   645 Mbits/sec    0

- UDP data at 1000Mbit/sec:
    - No TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
        [  5]   0.00-20.00  sec  2.23 GBytes   956 Mbits/sec  0.000 ms  0/1650226 (0%)

    - With TSN traffic:
        [ ID] Interval           Transfer     Bitrate         Jitter    Lost/Total Datagrams
        [  5]   0.00-20.00  sec  1.51 GBytes   649 Mbits/sec  0.000 ms  0/1120264 (0%)

Signed-off-by: Ederson de Souza <ederson.desouza@intel.com>
---
 drivers/net/ethernet/intel/igb/e1000_defines.h | 8 ++++----
 drivers/net/ethernet/intel/igb/igb_main.c      | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/igb/e1000_defines.h b/drivers/net/ethernet/intel/igb/e1000_defines.h
index d2e2c50ce257..ca5429774994 100644
--- a/drivers/net/ethernet/intel/igb/e1000_defines.h
+++ b/drivers/net/ethernet/intel/igb/e1000_defines.h
@@ -340,10 +340,10 @@
 #define I210_RXPBSIZE_PB_32KB		0x00000020
 #define I210_TXPBSIZE_DEFAULT		0x04000014 /* TXPBSIZE default */
 #define I210_TXPBSIZE_MASK		0xC0FFFFFF
-#define I210_TXPBSIZE_PB0_8KB		(8 << 0)
-#define I210_TXPBSIZE_PB1_8KB		(8 << 6)
-#define I210_TXPBSIZE_PB2_4KB		(4 << 12)
-#define I210_TXPBSIZE_PB3_4KB		(4 << 18)
+#define I210_TXPBSIZE_PB0_6KB		(6 << 0)
+#define I210_TXPBSIZE_PB1_6KB		(6 << 6)
+#define I210_TXPBSIZE_PB2_6KB		(6 << 12)
+#define I210_TXPBSIZE_PB3_6KB		(6 << 18)
 
 #define I210_DTXMXPKTSZ_DEFAULT		0x00000098
 
diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 0ace791d40d7..a05736e0874d 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -1921,8 +1921,8 @@ static void igb_setup_tx_mode(struct igb_adapter *adapter)
 		 */
 		val = rd32(E1000_TXPBS);
 		val &= ~I210_TXPBSIZE_MASK;
-		val |= I210_TXPBSIZE_PB0_8KB | I210_TXPBSIZE_PB1_8KB |
-			I210_TXPBSIZE_PB2_4KB | I210_TXPBSIZE_PB3_4KB;
+		val |= I210_TXPBSIZE_PB0_6KB | I210_TXPBSIZE_PB1_6KB |
+			I210_TXPBSIZE_PB2_6KB | I210_TXPBSIZE_PB3_6KB;
 		wr32(E1000_TXPBS, val);
 
 		val = rd32(E1000_RXPBS);
-- 
2.30.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
