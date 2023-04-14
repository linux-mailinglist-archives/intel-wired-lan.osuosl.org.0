Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7165D6E39A2
	for <lists+intel-wired-lan@lfdr.de>; Sun, 16 Apr 2023 17:13:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B471417CF;
	Sun, 16 Apr 2023 15:12:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B471417CF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681657979;
	bh=Tp62X2TjQYkzNWj3pqZiORvB8OC8c8VwQyghmLltB6Q=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=CWJFAYcVWtjcg5a7gomnpClPK95Ux6GZLNDEKYYavv+OkQ/Enl06MlqN7zhghzSjM
	 hiPeMZQIPdMwLYnC0WVd8pd7MJ/4z+BkF3ysLu8dOS2reIuQXfwYD8UYr915quK2o0
	 2en1SAuaD9++34nFNN+qq24Dal5NVlprY8+WHZbs19AvmZW1UgsfIA9iDWCRLTP+SO
	 TLAxSsioIJVbF0fl33u7/bZKppxE1XmYNDV4mDbQpfp+zOWfXMPObREH2bAzGdCStG
	 OcbdfxazHiSMyIpmKIlCezkZTZxLKKyXNKTcIF2teD92jVO2Cj8SBivnz663qBFGBc
	 9dDBQpM/p+pcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SGrRNTLyecpI; Sun, 16 Apr 2023 15:12:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 980C1417A7;
	Sun, 16 Apr 2023 15:12:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 980C1417A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 643E11C3D85
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 15:50:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3A76741F7D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 15:50:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A76741F7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NTbgm5CB5tZW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 15:50:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C982240287
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C982240287
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 15:50:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="407369174"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="407369174"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="833581607"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="833581607"
Received: from p12ill20yoongsia.png.intel.com ([10.88.227.28])
 by fmsmga001.fm.intel.com with ESMTP; 14 Apr 2023 08:49:35 -0700
From: Song Yoong Siang <yoong.siang.song@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Vedang Patel <vedang.patel@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>,
 Andre Guedes <andre.guedes@intel.com>,
 Jesper Dangaard Brouer <brouer@redhat.com>,
 Stanislav Fomichev <sdf@google.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 David Laight <David.Laight@ACULAB.COM>
Date: Fri, 14 Apr 2023 23:49:02 +0800
Message-Id: <20230414154902.2950535-1-yoong.siang.song@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Mailman-Approved-At: Sun, 16 Apr 2023 15:12:52 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681487446; x=1713023446;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+es8XQvduTZictHBoRTR0IW2Z+9WnoX89NAdi6iQf5A=;
 b=n+T9bKFQCPqo3gZ/PG69SVxnDhWQ92a+cmxuh6CqrmZ1j8llYZaScLPv
 L7vYi4wbOKJPE/ZCcoCdCOl6NDPd3Ze/rZmtuN60H7hWGSeb0DzTYRwgy
 JTe1oP8mQtU/SY2zjF7q7Oi+2uEKYNeDKWbmdKKbhSBIdTzLULxRmwYZQ
 e8jj3XNPWx2H+Ry9Lh4FFPNoFr1TUlDSmc/fqM9FgGvMyTQSCSZnwWszD
 HhGn3Gjx+xHeR1jpNLN8iApVi3rCnhI/aida+MK4wnUsXSfrjM+bR6/Mz
 nCurxbkoD1oIhhwqmqDxQz+IEJoY5Bc4A3M6m0aXEGx0mKj/xNSU2+20N
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=n+T9bKFQ
Subject: [Intel-wired-lan] [PATCH net v3 1/1] igc: read before write to
 SRRCTL register
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
Cc: xdp-hints@xdp-project.net, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Song Yoong Siang <yoong.siang.song@intel.com>, bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

igc_configure_rx_ring() function will be called as part of XDP program
setup. If Rx hardware timestamp is enabled prio to XDP program setup,
this timestamp enablement will be overwritten when buffer size is
written into SRRCTL register.

Thus, this commit read the register value before write to SRRCTL
register. This commit is tested by using xdp_hw_metadata bpf selftest
tool. The tool enables Rx hardware timestamp and then attach XDP program
to igc driver. It will display hardware timestamp of UDP packet with
port number 9092. Below are detail of test steps and results.

Command on DUT:
  sudo ./xdp_hw_metadata <interface name>

Command on Link Partner:
  echo -n skb | nc -u -q1 <destination IPv4 addr> 9092

Result before this patch:
  skb hwtstamp is not found!

Result after this patch:
  found skb hwtstamp = 1677800973.642836757

Optionally, read PHC to confirm the values obtained are almost the same:
Command:
  sudo ./testptp -d /dev/ptp0 -g
Result:
  clock time: 1677800973.913598978 or Fri Mar  3 07:49:33 2023

Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
Cc: <stable@vger.kernel.org> # 5.14+
Signed-off-by: Song Yoong Siang <yoong.siang.song@intel.com>
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Jesper Dangaard Brouer <brouer@redhat.com>
---
v2 -> v3: Refactor SRRCTL definitions to more human readable definitions
v1 -> v2: Fix indention
---
 drivers/net/ethernet/intel/igc/igc_base.h | 11 ++++++++---
 drivers/net/ethernet/intel/igc/igc_main.c |  7 +++++--
 2 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_base.h b/drivers/net/ethernet/intel/igc/igc_base.h
index 7a992befca24..9f3827eda157 100644
--- a/drivers/net/ethernet/intel/igc/igc_base.h
+++ b/drivers/net/ethernet/intel/igc/igc_base.h
@@ -87,8 +87,13 @@ union igc_adv_rx_desc {
 #define IGC_RXDCTL_SWFLUSH		0x04000000 /* Receive Software Flush */
 
 /* SRRCTL bit definitions */
-#define IGC_SRRCTL_BSIZEPKT_SHIFT		10 /* Shift _right_ */
-#define IGC_SRRCTL_BSIZEHDRSIZE_SHIFT		2  /* Shift _left_ */
-#define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	0x02000000
+#define IGC_SRRCTL_BSIZEPKT_MASK	GENMASK(6, 0)
+#define IGC_SRRCTL_BSIZEPKT(x)		FIELD_PREP(IGC_SRRCTL_BSIZEPKT_MASK, \
+					(x) / 1024) /* in 1 KB resolution */
+#define IGC_SRRCTL_BSIZEHDR_MASK	GENMASK(13, 8)
+#define IGC_SRRCTL_BSIZEHDR(x)		FIELD_PREP(IGC_SRRCTL_BSIZEHDR_MASK, \
+					(x) / 64) /* in 64 bytes resolution */
+#define IGC_SRRCTL_DESCTYPE_MASK	GENMASK(27, 25)
+#define IGC_SRRCTL_DESCTYPE_ADV_ONEBUF	FIELD_PREP(IGC_SRRCTL_DESCTYPE_MASK, 1)
 
 #endif /* _IGC_BASE_H */
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 25fc6c65209b..a2d823e64609 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -641,8 +641,11 @@ static void igc_configure_rx_ring(struct igc_adapter *adapter,
 	else
 		buf_size = IGC_RXBUFFER_2048;
 
-	srrctl = IGC_RX_HDR_LEN << IGC_SRRCTL_BSIZEHDRSIZE_SHIFT;
-	srrctl |= buf_size >> IGC_SRRCTL_BSIZEPKT_SHIFT;
+	srrctl = rd32(IGC_SRRCTL(reg_idx));
+	srrctl &= ~(IGC_SRRCTL_BSIZEPKT_MASK | IGC_SRRCTL_BSIZEHDR_MASK |
+		    IGC_SRRCTL_DESCTYPE_MASK);
+	srrctl |= IGC_SRRCTL_BSIZEHDR(IGC_RX_HDR_LEN);
+	srrctl |= IGC_SRRCTL_BSIZEPKT(buf_size);
 	srrctl |= IGC_SRRCTL_DESCTYPE_ADV_ONEBUF;
 
 	wr32(IGC_SRRCTL(reg_idx), srrctl);
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
