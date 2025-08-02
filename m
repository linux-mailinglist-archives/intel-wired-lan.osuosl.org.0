Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D975B18AE2
	for <lists+intel-wired-lan@lfdr.de>; Sat,  2 Aug 2025 08:31:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C79C0607E5;
	Sat,  2 Aug 2025 06:30:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X8hfvY2gw4H0; Sat,  2 Aug 2025 06:30:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B0F06072E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754116257;
	bh=IXnZFRz9pIwQK1DvqxmN8veK+HjFK+FuSeZt8p5cOM0=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Mx3SSqYhDbev0dj77E/d9Gn6QDlJmqISar/McTbP9//W/tSdDiQFBmoTHzfamxpVR
	 vS/GEUHT7W7suLoD+Vby/pUWBeLcsILQt+CldV1zmh4QHc/YdC6EibxQ3dgcO9PBKn
	 rUyOI5AszkdfNtRKTA+ZoXk7Q/0m8dhRGxXJjBA8mSvkPaKnP0eSfv9DR6olA/Yo8O
	 jRPGphUu5QoDUMTNUjUXT/q6zjsx7eEzRFl2kFHGIoypUipryx8qPfnpVis7UU6RZ1
	 xcUocrI4u16TmqztwXkdeguuHQ6ATuCrYr3/MO4vrv2+GpJR8ROFgKY2A1qfY2bhwq
	 rxoOLq4NgNFXg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5B0F06072E;
	Sat,  2 Aug 2025 06:30:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 912F9909
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 06:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7813F607E5
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 06:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hhRK6zjb_4ZT for <intel-wired-lan@lists.osuosl.org>;
 Sat,  2 Aug 2025 06:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.145.42;
 helo=mx0a-00082601.pphosted.com; envelope-from=prvs=4309bbab4a=vadfed@meta.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 719C06072E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 719C06072E
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
 [67.231.145.42])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 719C06072E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  2 Aug 2025 06:30:54 +0000 (UTC)
Received: from pps.filterd (m0044012.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5725VMDB016355;
 Fri, 1 Aug 2025 23:30:42 -0700
Received: from mail.thefacebook.com ([163.114.134.16])
 by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 4896dc9mqx-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 01 Aug 2025 23:30:42 -0700 (PDT)
Received: from devvm31871.cln0.facebook.com (2620:10d:c085:108::150d) by
 mail.thefacebook.com (2620:10d:c08b:78::c78f) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.17; Sat, 2 Aug 2025 06:30:39 +0000
From: Vadim Fedorenko <vadfed@meta.com>
To: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 <netdev@vger.kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>
Date: Fri, 1 Aug 2025 23:30:24 -0700
Message-ID: <20250802063024.2423022-1-vadfed@meta.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [2620:10d:c085:108::150d]
X-Proofpoint-GUID: Lv39LSshtsAsdeMSR_UsbVcrWWiL4j4W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODAyMDA1NCBTYWx0ZWRfX75BRFnkOa9BW
 b5d0Z40CQ8gq/qO3cRuePOMEkis0AaEfl0QPVsaKR2azUBmxBkWholXO7XD/Twj/AIf30qMiCSH
 +Z5BXznxUAfSutri0n2hUHRfYY3WDB5aWEUsvOHftyWGSosDt7iCWSUfRTDuWCflT+GMHjvpQPs
 wfl0Gj39etd2WmxmtXxS/ddyGx3BIP5Vau7QLbOCv4oFn2hQ6DRprXJDk3PiiuoowwsPDtMg3c7
 QWPOjLyEkHg0/r9FGtKiRv+3gztobEYGwFCbEf3muITdMxkGQwbnWNiBfKac4a3YZkn9/pLK4Es
 QvtbkVH/tFgp5/GxCvPD1je+OrWx0sQdXI9FP/L+j0GpK3zOjJrjuGKZ38f0PzBBBVBFUPm4d1H
 qRn1Wnm7SKrOHwgi3QEmSzGBK+iGxxMeotBgOSzbReghsszNcz9CDCh6Obxx2U88NXftLubr
X-Authority-Analysis: v=2.4 cv=Ndzm13D4 c=1 sm=1 tr=0 ts=688db092 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=2OwXVqhp2XgA:10 a=fxUwI21LTPW9Yny7BTUA:9
X-Proofpoint-ORIG-GUID: Lv39LSshtsAsdeMSR_UsbVcrWWiL4j4W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-01_08,2025-08-01_01,2025-03-28_01
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meta.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=s2048-2025-q2; bh=IXnZFRz9pIwQK1Dvqx
 mN8veK+HjFK+FuSeZt8p5cOM0=; b=Lt5pnxX02iSddo6AN1+Z8tZRocEXhB2nGw
 mhxoD6K4FBgVu+x7GLKuZXMbTK25LxytWunVSFPCjcNTIAA5zIGGaiWHvR09ANSj
 z/3rti8EBK8mAVfpgL4NHxtiieOuRs+YfuqNX41NNx3EHJwKyjoW6AkcvXL6bbvY
 AcVJNAK6aMjfrYiRSb440twYjaViFl9QmknsUZFzr46AS3s534XkaDT3Z1DNvwR4
 FrGloKi9rQYWb/pHtMQW2hzhUGTuhDaMomgZL+eDBT5EDPngHn8C2f3TcxuAJCMn
 sQ2Hum6CLIlrNZZ3DAMtRKlHUIfYGx7X2+mtkXn4wUaIqyV+aIfA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=meta.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=meta.com header.i=@meta.com header.a=rsa-sha256
 header.s=s2048-2025-q2 header.b=Lt5pnxX0
Subject: [Intel-wired-lan] [RFC PATCH v3] ethtool: add FEC bins histogramm
 report
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

IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
clarifies it a bit further. Implement reporting interface through as
addition to FEC stats available in ethtool.

Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
---
With this RFC I would like to get early feedback from the community
about implementing FEC histogram statistics while we are waiting for
some vendors to actually implement it in their drivers. I implemented
the simplest solution in netdevsim driver to show how API looks like.
The example query is the same as usual FEC statistics while the answer
is a bit more verbose:

[vmuser@archvm9 linux]$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/ethtool.yaml --do fec-get --json '{"header":{"dev-index": 10, "flags": 4}}'
{'auto': 0,
 'header': {'dev-index': 10, 'dev-name': 'eni10np1'},
 'modes': {'bits': {}, 'nomask': True, 'size': 121},
 'stats': {'corr-bits': [],
           'corrected': [123],
           'hist': [{'bin-high': 0,
                     'bin-low': 0,
                     'bin-val': 345,
                     'bin-val-per-lane': [125, 120, 100, 100]},
                    {'bin-high': 3, 'bin-low': 1, 'bin-val': 12},
                    {'bin-high': 7, 'bin-low': 4, 'bin-val': 2}],
           'uncorr': [4]}}

RFC v3 (actually re-send of v2 with committed changes):
- adjust yaml spec to avoid nesting histogram attributes and use
  flexible types
- add support for per-lane histogram together with total values
- remove sentinel (-1, -1) and use (0, 0) as common array break.
  bin (0, 0) is still possible but only as a first element of
  ranges array
---
 Documentation/netlink/specs/ethtool.yaml      | 26 ++++++++
 Documentation/networking/ethtool-netlink.rst  |  5 ++
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  3 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |  3 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  3 +-
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  3 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  3 +-
 drivers/net/ethernet/sfc/ethtool.c            |  3 +-
 drivers/net/ethernet/sfc/siena/ethtool.c      |  3 +-
 drivers/net/netdevsim/ethtool.c               | 19 +++++-
 include/linux/ethtool.h                       | 18 +++++-
 .../uapi/linux/ethtool_netlink_generated.h    | 12 ++++
 net/ethtool/fec.c                             | 64 ++++++++++++++++++-
 14 files changed, 156 insertions(+), 12 deletions(-)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index 1063d5d32fea2..f9a0c50c9e678 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1216,6 +1216,27 @@ attribute-sets:
         name: udp-ports
         type: nest
         nested-attributes: tunnel-udp
+  -
+    name: fec-hist
+    attr-cnt-name: __ethtool-a-fec-hist-cnt
+    attributes:
+      -
+        name: unspec
+        type: unused
+        value: 0
+      -
+        name: bin-low
+        type: u32
+      -
+        name: bin-high
+        type: u32
+      -
+        name: bin-val
+        type: uint
+      -
+        name: bin-val-per-lane
+        type: uint
+        multi-attr: True
   -
     name: fec-stat
     attr-cnt-name: __ethtool-a-fec-stat-cnt
@@ -1239,6 +1260,11 @@ attribute-sets:
         name: corr-bits
         type: binary
         sub-type: u64
+      -
+        name: hist
+        type: nest
+        multi-attr: True
+        nested-attributes: fec-hist
   -
     name: fec
     attr-cnt-name: __ethtool-a-fec-cnt
diff --git a/Documentation/networking/ethtool-netlink.rst b/Documentation/networking/ethtool-netlink.rst
index ab20c644af248..b270886c5f5d5 100644
--- a/Documentation/networking/ethtool-netlink.rst
+++ b/Documentation/networking/ethtool-netlink.rst
@@ -1541,6 +1541,11 @@ Drivers fill in the statistics in the following structure:
 .. kernel-doc:: include/linux/ethtool.h
     :identifiers: ethtool_fec_stats
 
+Statistics may have FEC bins histogram attribute ``ETHTOOL_A_FEC_STAT_HIST``
+as defined in IEEE 802.3ck-2022 and 802.3df-2024. Nested attributes will have
+the range of FEC errors in the bin (inclusive) and the amount of error events
+in the bin.
+
 FEC_SET
 =======
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
index 1b37612b1c01f..ff8c0977a1f4a 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -3185,7 +3185,8 @@ static int bnxt_get_fecparam(struct net_device *dev,
 }
 
 static void bnxt_get_fec_stats(struct net_device *dev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       const struct ethtool_fec_hist_range **ranges)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	u64 *rx;
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
index ba83dbf4ed222..42027ce2b013d 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
@@ -930,7 +930,8 @@ static void fun_get_rmon_stats(struct net_device *netdev,
 }
 
 static void fun_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *stats)
+			      struct ethtool_fec_stats *stats,
+			      const struct ethtool_fec_hist_range **ranges)
 {
 	const struct funeth_priv *fp = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
index d5454e126c856..c5af42706c179 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
@@ -1659,7 +1659,8 @@ static void hns3_set_msglevel(struct net_device *netdev, u32 msg_level)
 }
 
 static void hns3_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       const struct ethtool_fec_hist_range **ranges)
 {
 	struct hnae3_handle *handle = hns3_get_handle(netdev);
 	struct hnae3_ae_dev *ae_dev = hns3_get_ae_dev(handle);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 55e0f2c6af9e5..321704c53a0c2 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4623,7 +4623,8 @@ static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
  *
  */
 static void ice_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *fec_stats)
+			      struct ethtool_fec_stats *fec_stats,
+			      const struct ethtool_fec_hist_range **ranges)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_port_topology port_topology;
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 998c734ff8399..7c6643aa24bfa 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -1283,7 +1283,8 @@ static int otx2_set_link_ksettings(struct net_device *netdev,
 }
 
 static void otx2_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       const struct ethtool_fec_hist_range **ranges)
 {
 	struct otx2_nic *pfvf = netdev_priv(netdev);
 	struct cgx_fw_data *rsp;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index d507366d773e1..9ad43b40d4ca5 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1927,7 +1927,8 @@ static int mlx5e_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 }
 
 static void mlx5e_get_fec_stats(struct net_device *netdev,
-				struct ethtool_fec_stats *fec_stats)
+				struct ethtool_fec_stats *fec_stats,
+				const struct ethtool_fec_hist_range **ranges)
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/sfc/ethtool.c b/drivers/net/ethernet/sfc/ethtool.c
index 23c6a7df78d03..20de19d6a4d70 100644
--- a/drivers/net/ethernet/sfc/ethtool.c
+++ b/drivers/net/ethernet/sfc/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      const struct ethtool_fec_hist_range **ranges)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 
diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c b/drivers/net/ethernet/sfc/siena/ethtool.c
index 994909789bfea..b98271c546738 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      const struct ethtool_fec_hist_range **ranges)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 
diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
index f631d90c428ac..1dc9a6c126b24 100644
--- a/drivers/net/netdevsim/ethtool.c
+++ b/drivers/net/netdevsim/ethtool.c
@@ -164,12 +164,29 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
 	ns->ethtool.fec.active_fec = 1 << (fls(fec) - 1);
 	return 0;
 }
+static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
+	{ 0, 0},
+	{ 1, 3},
+	{ 4, 7},
+	{ 0, 0}
+};
 
 static void
-nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
+nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
+		   const struct ethtool_fec_hist_range **ranges)
 {
+	*ranges = netdevsim_fec_ranges;
+
 	fec_stats->corrected_blocks.total = 123;
 	fec_stats->uncorrectable_blocks.total = 4;
+
+	fec_stats->hist[0].bin_value = 345;
+	fec_stats->hist[1].bin_value = 12;
+	fec_stats->hist[2].bin_value = 2;
+	fec_stats->hist[0].bin_value_per_lane[0] = 125;
+	fec_stats->hist[0].bin_value_per_lane[1] = 120;
+	fec_stats->hist[0].bin_value_per_lane[2] = 100;
+	fec_stats->hist[0].bin_value_per_lane[3] = 100;
 }
 
 static int nsim_get_ts_info(struct net_device *dev,
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index de5bd76a400ca..6f98bbf5a8a27 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -492,6 +492,17 @@ struct ethtool_pause_stats {
 };
 
 #define ETHTOOL_MAX_LANES	8
+#define ETHTOOL_FEC_HIST_MAX	18
+/**
+ * struct ethtool_fec_hist_range - error bits range for FEC bins histogram
+ * statistics
+ * @low: low bound of the bin (inclusive)
+ * @high: high bound of the bin (inclusive)
+ */
+struct ethtool_fec_hist_range {
+	s16 low;
+	s16 high;
+};
 
 /**
  * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
@@ -524,6 +535,10 @@ struct ethtool_fec_stats {
 		u64 total;
 		u64 lanes[ETHTOOL_MAX_LANES];
 	} corrected_blocks, uncorrectable_blocks, corrected_bits;
+	struct ethtool_fec_hist {
+		u64 bin_value;
+		u64 bin_value_per_lane[ETHTOOL_MAX_LANES];
+	} hist[ETHTOOL_FEC_HIST_MAX];
 };
 
 /**
@@ -1212,7 +1227,8 @@ struct ethtool_ops {
 	int	(*set_link_ksettings)(struct net_device *,
 				      const struct ethtool_link_ksettings *);
 	void	(*get_fec_stats)(struct net_device *dev,
-				 struct ethtool_fec_stats *fec_stats);
+				 struct ethtool_fec_stats *fec_stats,
+				 const struct ethtool_fec_hist_range **ranges);
 	int	(*get_fecparam)(struct net_device *,
 				      struct ethtool_fecparam *);
 	int	(*set_fecparam)(struct net_device *,
diff --git a/include/uapi/linux/ethtool_netlink_generated.h b/include/uapi/linux/ethtool_netlink_generated.h
index e3b8813465d73..984190097729f 100644
--- a/include/uapi/linux/ethtool_netlink_generated.h
+++ b/include/uapi/linux/ethtool_netlink_generated.h
@@ -561,12 +561,24 @@ enum {
 	ETHTOOL_A_TUNNEL_INFO_MAX = (__ETHTOOL_A_TUNNEL_INFO_CNT - 1)
 };
 
+enum {
+	ETHTOOL_A_FEC_HIST_UNSPEC,
+	ETHTOOL_A_FEC_HIST_BIN_LOW,
+	ETHTOOL_A_FEC_HIST_BIN_HIGH,
+	ETHTOOL_A_FEC_HIST_BIN_VAL,
+	ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
+
+	__ETHTOOL_A_FEC_HIST_CNT,
+	ETHTOOL_A_FEC_HIST_MAX = (__ETHTOOL_A_FEC_HIST_CNT - 1)
+};
+
 enum {
 	ETHTOOL_A_FEC_STAT_UNSPEC,
 	ETHTOOL_A_FEC_STAT_PAD,
 	ETHTOOL_A_FEC_STAT_CORRECTED,
 	ETHTOOL_A_FEC_STAT_UNCORR,
 	ETHTOOL_A_FEC_STAT_CORR_BITS,
+	ETHTOOL_A_FEC_STAT_HIST,
 
 	__ETHTOOL_A_FEC_STAT_CNT,
 	ETHTOOL_A_FEC_STAT_MAX = (__ETHTOOL_A_FEC_STAT_CNT - 1)
diff --git a/net/ethtool/fec.c b/net/ethtool/fec.c
index e7d3f2c352a34..3241c245284a4 100644
--- a/net/ethtool/fec.c
+++ b/net/ethtool/fec.c
@@ -17,6 +17,11 @@ struct fec_reply_data {
 		u64 stats[1 + ETHTOOL_MAX_LANES];
 		u8 cnt;
 	} corr, uncorr, corr_bits;
+	struct fec_stat_hist {
+		u64 bin_value;
+		u64 bin_value_per_lane[ETHTOOL_MAX_LANES];
+	} hist[ETHTOOL_FEC_HIST_MAX];
+	const struct ethtool_fec_hist_range *fec_ranges;
 };
 
 #define FEC_REPDATA(__reply_base) \
@@ -113,11 +118,13 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
 		struct ethtool_fec_stats stats;
 
 		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
-		dev->ethtool_ops->get_fec_stats(dev, &stats);
+		dev->ethtool_ops->get_fec_stats(dev, &stats, &data->fec_ranges);
 
 		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
 		fec_stats_recalc(&data->uncorr, &stats.uncorrectable_blocks);
 		fec_stats_recalc(&data->corr_bits, &stats.corrected_bits);
+		if (data->fec_ranges)
+			memcpy(data->hist, stats.hist, sizeof(stats.hist));
 	}
 
 	WARN_ON_ONCE(fec.reserved);
@@ -157,13 +164,63 @@ static int fec_reply_size(const struct ethnl_req_info *req_base,
 	len += nla_total_size(sizeof(u8)) +	/* _FEC_AUTO */
 	       nla_total_size(sizeof(u32));	/* _FEC_ACTIVE */
 
-	if (req_base->flags & ETHTOOL_FLAG_STATS)
+	if (req_base->flags & ETHTOOL_FLAG_STATS) {
 		len += 3 * nla_total_size_64bit(sizeof(u64) *
 						(1 + ETHTOOL_MAX_LANES));
+		/* add FEC bins information */
+		len += (nla_total_size(0) +  /* _A_FEC_HIST */
+			nla_total_size(4) +  /* _A_FEC_HIST_BIN_LOW */
+			nla_total_size(4) +  /* _A_FEC_HIST_BIN_HI */
+			/* _A_FEC_HIST_BIN_VAL + per-lane values */
+			nla_total_size_64bit(sizeof(u64) *
+					     (1 + ETHTOOL_MAX_LANES))) *
+			ETHTOOL_FEC_HIST_MAX;
+	}
 
 	return len;
 }
 
+static int fec_put_hist(struct sk_buff *skb, const struct fec_stat_hist *hist,
+			const struct ethtool_fec_hist_range *ranges)
+{
+	struct nlattr *nest;
+	int i, j;
+
+	if (!ranges)
+		return 0;
+
+	for (i = 0; i < ETHTOOL_FEC_HIST_MAX; i++) {
+		if (i && !ranges[i].low && !ranges[i].high)
+			break;
+
+		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
+		if (!nest)
+			return -EMSGSIZE;
+
+		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
+				 ranges[i].low) ||
+		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
+				 ranges[i].high) ||
+		    nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
+			         hist[i].bin_value))
+			goto err_cancel_hist;
+		for (j = 0; j < ETHTOOL_MAX_LANES; j++) {
+			if (hist[i].bin_value_per_lane[j] == ETHTOOL_STAT_NOT_SET)
+				break;
+			nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
+				     hist[i].bin_value_per_lane[j]);
+		}
+
+		nla_nest_end(skb, nest);
+	}
+
+	return 0;
+
+err_cancel_hist:
+	nla_nest_cancel(skb, nest);
+	return -EMSGSIZE;
+}
+
 static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
 {
 	struct nlattr *nest;
@@ -183,6 +240,9 @@ static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
 			  data->corr_bits.stats, ETHTOOL_A_FEC_STAT_PAD))
 		goto err_cancel;
 
+	if (fec_put_hist(skb, data->hist, data->fec_ranges))
+		goto err_cancel;
+
 	nla_nest_end(skb, nest);
 	return 0;
 
-- 
2.47.3

