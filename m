Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6EEB280B9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Aug 2025 15:38:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2900940C8C;
	Fri, 15 Aug 2025 13:38:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2jTyNweyJr1A; Fri, 15 Aug 2025 13:38:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9555640C90
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755265087;
	bh=lQ3AN13wvxYaw1l1SAvu4suxkHe8jnyS2NJUTzYg3Tg=;
	h=From:To:CC:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=EfIkHrRr+gVROrFwkSIN8dE+18pJdEMZSiCYAotK4mDdOV4cr4Qc60Wa3zJA8n8B1
	 tCyKGBZiaNXz8ojt8l3y9h37BTCSeQWf5hFRSzyKtVqAdq44MOyDlCQ6RQ7s7elbhZ
	 yz4LufRrbTShZgAOgVxBDRsV/JyKjXFGVrGnWJQKjygVMg1F1muJqhPRBxk/WCVshE
	 8Bh65EYePucHQEme4EXs7l+d7I9FYNa+QPY+1dIMs8EG71mBDTpzA0lq51IHC7PUKq
	 1wbSxGlqiA/4A1VyxZROztH0G9wZoXMJoCa7djT6f8Zax18ouAe7z3eEd0UENmc3jx
	 pcUWmavaqN7EA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9555640C90;
	Fri, 15 Aug 2025 13:38:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BD95A228
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:38:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A40B740C80
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:38:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hRidKK6B-sxw for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Aug 2025 13:38:05 +0000 (UTC)
X-Greylist: delayed 613 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 15 Aug 2025 13:38:05 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F71D40C8C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F71D40C8C
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=67.231.145.42;
 helo=mx0a-00082601.pphosted.com; envelope-from=prvs=4322af82e6=vadfed@meta.com;
 receiver=<UNKNOWN> 
Received: from mx0a-00082601.pphosted.com (mx0a-00082601.pphosted.com
 [67.231.145.42])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F71D40C8C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Aug 2025 13:38:05 +0000 (UTC)
Received: from pps.filterd (m0109334.ppops.net [127.0.0.1])
 by mx0a-00082601.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FD16jN018611;
 Fri, 15 Aug 2025 06:27:44 -0700
Received: from mail.thefacebook.com ([163.114.134.16])
 by mx0a-00082601.pphosted.com (PPS) with ESMTPS id 48j07khmau-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Fri, 15 Aug 2025 06:27:44 -0700 (PDT)
Received: from devvm31871.cln0.facebook.com (2620:10d:c085:208::f) by
 mail.thefacebook.com (2620:10d:c08b:78::2ac9) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.17; Fri, 15 Aug 2025 13:27:41 +0000
From: Vadim Fedorenko <vadfed@meta.com>
To: Andrew Lunn <andrew@lunn.ch>, Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,
 Tariq Toukan <tariqt@nvidia.com>, Gal Pressman <gal@nvidia.com>,
 <intel-wired-lan@lists.osuosl.org>, Donald
 Hunter <donald.hunter@gmail.com>, Carolina Jubran <cjubran@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>
CC: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 <netdev@vger.kernel.org>, Vadim Fedorenko <vadim.fedorenko@linux.dev>
Date: Fri, 15 Aug 2025 06:27:29 -0700
Message-ID: <20250815132729.2251597-1-vadfed@meta.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [2620:10d:c085:208::f]
X-Authority-Analysis: v=2.4 cv=b42y4sGx c=1 sm=1 tr=0 ts=689f35d0 cx=c_pps
 a=CB4LiSf2rd0gKozIdrpkBw==:117 a=CB4LiSf2rd0gKozIdrpkBw==:17
 a=2OwXVqhp2XgA:10 a=RW7BHEbtKAII-JbJPl8A:9
X-Proofpoint-ORIG-GUID: S9EICTOC-uFCwwJyBij3GSf-2srY0XYq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE1MDExMSBTYWx0ZWRfX7zzhEfAjwjE2
 yWhyZQcsoxvedd6w0wlfCATr6+5WgIBS/XEVQBFweRNXX8oa8IhjZ1uBvV405t6Erjb322pGx0k
 s1l4Rb0gDHANJOp3VPeAVRckH4SeRTcawpDy/MnIyFJ+519vaPB9+V5tFqsPHxAkiT7E/uToFvX
 e0KYw94BAoWdVbfIHw91DgxZUYOZAY6jpM4JZ8hMYfUFIomOLpKs8ngj1JLzZDJj3ABS/Mbiddw
 IwWHVd+DaVakGe76cvat6UMRUz/qYvKh4arwDXXKs7Iuas1A8L+Ujuc5EpoXQRPWrc8p7XDD/Su
 T8syJ0uyXOiJskPJ9IWhQYuD0uSLWojKrjJToI/QnRjtZoa2ISzjRxowvsv0vWi/ujOJsD2CWcn
 jDWFyGANfyvwNP+1NV2zFVk5hjw129a4k/257JyC/Qnz3i4dtIolNF92q+5OnpDK+uithl9B
X-Proofpoint-GUID: S9EICTOC-uFCwwJyBij3GSf-2srY0XYq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_04,2025-08-14_01,2025-03-28_01
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meta.com; h=cc
 :content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=s2048-2025-q2; bh=lQ3AN13wvxYaw1l1SA
 vu4suxkHe8jnyS2NJUTzYg3Tg=; b=crBghRkJ1kC09Bo9GC23PgOVToSlWtpB8X
 rFL/41mH37PxLldTLQ4SA7FTueBzeUu6EucO8FC0FJjXdbNID5DeouohNXRKDmis
 NkczbyoVhedUEudsyIhSk7+M5f8iep1b0LNnahSspZKZJILM6v7xcUmNtLh4mFVU
 6wvLObmAzYexVFZiwlQSOrgfi0CAut7uLsJktaGspa/XCgBV+l8pQ+KiYEvu5BHU
 CeDXOEeXpLmMCj7FJpkIaRBHgIYPd9qDx/cyyZq4tStqhQ+DDn4tAOfgCe3UX4kO
 Dp00QlS4ScEXl4ThjcuVeG77xsHVoGkW8iStJdvuDPP8+Cmux6XQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=meta.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=meta.com header.i=@meta.com header.a=rsa-sha256
 header.s=s2048-2025-q2 header.b=crBghRkJ
Subject: [Intel-wired-lan] [RFC PATCH v5] ethtool: add FEC bins histogramm
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
                     'bin-val': 445,
                     'bin-val-per-lane': [125, 120, 100, 100]},
                    {'bin-high': 3, 'bin-low': 1, 'bin-val': 12},
                    {'bin-high': 7, 'bin-low': 4, 'bin-val': 2}],
           'uncorr': [4]}}

RFC v5:
- fix reply size calculation
- change per-lane statistics to be added to the reply as an array of
  u64 values, the same way it's done for other FEC statistics. The
  aggregated value is still put as a separate value
RFC v4:
- re-arrange data structures to avoid overrun of stack frame
- add WARN_ON_ONCE on no value for defined bin
RFC v3 (actually re-send of v2 with committed changes):
- adjust yaml spec to avoid nesting histogram attributes and use
  flexible types
- add support for per-lane histogram together with total values
- remove sentinel (-1, -1) and use (0, 0) as common array break.
  bin (0, 0) is still possible but only as a first element of
  ranges array
---
 Documentation/netlink/specs/ethtool.yaml      | 26 +++++++
 Documentation/networking/ethtool-netlink.rst  |  5 ++
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |  3 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |  3 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |  3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |  4 +-
 .../marvell/octeontx2/nic/otx2_ethtool.c      |  3 +-
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |  3 +-
 drivers/net/ethernet/sfc/ethtool.c            |  3 +-
 drivers/net/ethernet/sfc/siena/ethtool.c      |  3 +-
 drivers/net/netdevsim/ethtool.c               | 22 +++++-
 include/linux/ethtool.h                       | 21 +++++-
 .../uapi/linux/ethtool_netlink_generated.h    | 12 ++++
 net/ethtool/fec.c                             | 69 ++++++++++++++++++-
 14 files changed, 168 insertions(+), 12 deletions(-)

diff --git a/Documentation/netlink/specs/ethtool.yaml b/Documentation/netlink/specs/ethtool.yaml
index 7a7594713f1f0..fba0e23ffbeda 100644
--- a/Documentation/netlink/specs/ethtool.yaml
+++ b/Documentation/netlink/specs/ethtool.yaml
@@ -1219,6 +1219,27 @@ attribute-sets:
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
@@ -1242,6 +1263,11 @@ attribute-sets:
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
index 68a4ee9f69b1a..7c5bacb0f5348 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ethtool.c
@@ -3197,7 +3197,8 @@ static int bnxt_get_fecparam(struct net_device *dev,
 }
 
 static void bnxt_get_fec_stats(struct net_device *dev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct bnxt *bp = netdev_priv(dev);
 	u64 *rx;
diff --git a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
index ba83dbf4ed222..1966dba512f8a 100644
--- a/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
+++ b/drivers/net/ethernet/fungible/funeth/funeth_ethtool.c
@@ -930,7 +930,8 @@ static void fun_get_rmon_stats(struct net_device *netdev,
 }
 
 static void fun_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *stats)
+			      struct ethtool_fec_stats *stats,
+			      struct ethtool_fec_hist *hist)
 {
 	const struct funeth_priv *fp = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
index d5454e126c856..aec0c4646b7ee 100644
--- a/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
+++ b/drivers/net/ethernet/hisilicon/hns3/hns3_ethtool.c
@@ -1659,7 +1659,8 @@ static void hns3_set_msglevel(struct net_device *netdev, u32 msg_level)
 }
 
 static void hns3_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct hnae3_handle *handle = hns3_get_handle(netdev);
 	struct hnae3_ae_dev *ae_dev = hns3_get_ae_dev(handle);
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 55e0f2c6af9e5..62d3cfca350c6 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4620,10 +4620,12 @@ static int ice_get_port_fec_stats(struct ice_hw *hw, u16 pcs_quad, u16 pcs_port,
  * ice_get_fec_stats - returns FEC correctable, uncorrectable stats per netdev
  * @netdev: network interface device structure
  * @fec_stats: buffer to hold FEC statistics for given port
+ * @hist: buffer to put FEC histogram statistics for given port
  *
  */
 static void ice_get_fec_stats(struct net_device *netdev,
-			      struct ethtool_fec_stats *fec_stats)
+			      struct ethtool_fec_stats *fec_stats,
+			      struct ethtool_fec_hist *hist)
 {
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_port_topology port_topology;
diff --git a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
index 998c734ff8399..b90e23dc49de9 100644
--- a/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
+++ b/drivers/net/ethernet/marvell/octeontx2/nic/otx2_ethtool.c
@@ -1283,7 +1283,8 @@ static int otx2_set_link_ksettings(struct net_device *netdev,
 }
 
 static void otx2_get_fec_stats(struct net_device *netdev,
-			       struct ethtool_fec_stats *fec_stats)
+			       struct ethtool_fec_stats *fec_stats,
+			       struct ethtool_fec_hist *hist)
 {
 	struct otx2_nic *pfvf = netdev_priv(netdev);
 	struct cgx_fw_data *rsp;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
index d507366d773e1..bcc3bbb78cc95 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_ethtool.c
@@ -1927,7 +1927,8 @@ static int mlx5e_set_wol(struct net_device *netdev, struct ethtool_wolinfo *wol)
 }
 
 static void mlx5e_get_fec_stats(struct net_device *netdev,
-				struct ethtool_fec_stats *fec_stats)
+				struct ethtool_fec_stats *fec_stats,
+				struct ethtool_fec_hist *hist)
 {
 	struct mlx5e_priv *priv = netdev_priv(netdev);
 
diff --git a/drivers/net/ethernet/sfc/ethtool.c b/drivers/net/ethernet/sfc/ethtool.c
index 23c6a7df78d03..18fe5850a9786 100644
--- a/drivers/net/ethernet/sfc/ethtool.c
+++ b/drivers/net/ethernet/sfc/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      struct ethtool_fec_hist *hist)
 {
 	struct efx_nic *efx = efx_netdev_priv(net_dev);
 
diff --git a/drivers/net/ethernet/sfc/siena/ethtool.c b/drivers/net/ethernet/sfc/siena/ethtool.c
index 994909789bfea..8c3ebd0617fb1 100644
--- a/drivers/net/ethernet/sfc/siena/ethtool.c
+++ b/drivers/net/ethernet/sfc/siena/ethtool.c
@@ -217,7 +217,8 @@ static int efx_ethtool_set_wol(struct net_device *net_dev,
 }
 
 static void efx_ethtool_get_fec_stats(struct net_device *net_dev,
-				      struct ethtool_fec_stats *fec_stats)
+				      struct ethtool_fec_stats *fec_stats,
+				      struct ethtool_fec_hist *hist)
 {
 	struct efx_nic *efx = netdev_priv(net_dev);
 
diff --git a/drivers/net/netdevsim/ethtool.c b/drivers/net/netdevsim/ethtool.c
index f631d90c428ac..6ef163847d134 100644
--- a/drivers/net/netdevsim/ethtool.c
+++ b/drivers/net/netdevsim/ethtool.c
@@ -165,11 +165,31 @@ nsim_set_fecparam(struct net_device *dev, struct ethtool_fecparam *fecparam)
 	return 0;
 }
 
+static const struct ethtool_fec_hist_range netdevsim_fec_ranges[] = {
+	{ 0, 0},
+	{ 1, 3},
+	{ 4, 7},
+	{ 0, 0}
+};
+
 static void
-nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats)
+nsim_get_fec_stats(struct net_device *dev, struct ethtool_fec_stats *fec_stats,
+		   struct ethtool_fec_hist *hist)
 {
+	struct ethtool_fec_hist_value *values = hist->values;
+
+	hist->ranges = netdevsim_fec_ranges;
+
 	fec_stats->corrected_blocks.total = 123;
 	fec_stats->uncorrectable_blocks.total = 4;
+
+	values[0].bin_value = 445;
+	values[1].bin_value = 12;
+	values[2].bin_value = 2;
+	values[0].bin_value_per_lane[0] = 125;
+	values[0].bin_value_per_lane[1] = 120;
+	values[0].bin_value_per_lane[2] = 100;
+	values[0].bin_value_per_lane[3] = 100;
 }
 
 static int nsim_get_ts_info(struct net_device *dev,
diff --git a/include/linux/ethtool.h b/include/linux/ethtool.h
index de5bd76a400ca..6c0dc6ae080a8 100644
--- a/include/linux/ethtool.h
+++ b/include/linux/ethtool.h
@@ -492,7 +492,25 @@ struct ethtool_pause_stats {
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
 
+struct ethtool_fec_hist {
+	struct ethtool_fec_hist_value {
+		u64 bin_value;
+		u64 bin_value_per_lane[ETHTOOL_MAX_LANES];
+	} values[ETHTOOL_FEC_HIST_MAX];
+	const struct ethtool_fec_hist_range *ranges;
+};
 /**
  * struct ethtool_fec_stats - statistics for IEEE 802.3 FEC
  * @corrected_blocks: number of received blocks corrected by FEC
@@ -1212,7 +1230,8 @@ struct ethtool_ops {
 	int	(*set_link_ksettings)(struct net_device *,
 				      const struct ethtool_link_ksettings *);
 	void	(*get_fec_stats)(struct net_device *dev,
-				 struct ethtool_fec_stats *fec_stats);
+				 struct ethtool_fec_stats *fec_stats,
+				 struct ethtool_fec_hist *hist);
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
index e7d3f2c352a34..9313bd17544fd 100644
--- a/net/ethtool/fec.c
+++ b/net/ethtool/fec.c
@@ -17,6 +17,7 @@ struct fec_reply_data {
 		u64 stats[1 + ETHTOOL_MAX_LANES];
 		u8 cnt;
 	} corr, uncorr, corr_bits;
+	struct ethtool_fec_hist fec_stat_hist;
 };
 
 #define FEC_REPDATA(__reply_base) \
@@ -113,7 +114,11 @@ static int fec_prepare_data(const struct ethnl_req_info *req_base,
 		struct ethtool_fec_stats stats;
 
 		ethtool_stats_init((u64 *)&stats, sizeof(stats) / 8);
-		dev->ethtool_ops->get_fec_stats(dev, &stats);
+		ethtool_stats_init((u64 *)data->fec_stat_hist.values,
+				   ETHTOOL_MAX_LANES *
+				   sizeof(struct ethtool_fec_hist_value) / 8);
+		dev->ethtool_ops->get_fec_stats(dev, &stats,
+						&data->fec_stat_hist);
 
 		fec_stats_recalc(&data->corr, &stats.corrected_blocks);
 		fec_stats_recalc(&data->uncorr, &stats.uncorrectable_blocks);
@@ -157,13 +162,70 @@ static int fec_reply_size(const struct ethnl_req_info *req_base,
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
+			nla_total_size_64bit(sizeof(u64)) +
+			nla_total_size_64bit(sizeof(u64) * ETHTOOL_MAX_LANES)) *
+			ETHTOOL_FEC_HIST_MAX;
+	}
 
 	return len;
 }
 
+static int fec_put_hist(struct sk_buff *skb, const struct ethtool_fec_hist *hist)
+{
+	const struct ethtool_fec_hist_range *ranges = hist->ranges;
+	const struct ethtool_fec_hist_value *values = hist->values;
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
+		if (WARN_ON_ONCE(values[i].bin_value == ETHTOOL_STAT_NOT_SET))
+			break;
+
+		nest = nla_nest_start(skb, ETHTOOL_A_FEC_STAT_HIST);
+		if (!nest)
+			return -EMSGSIZE;
+
+		if (nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_LOW,
+				ranges[i].low) ||
+		    nla_put_u32(skb, ETHTOOL_A_FEC_HIST_BIN_HIGH,
+				ranges[i].high) ||
+		    nla_put_uint(skb, ETHTOOL_A_FEC_HIST_BIN_VAL,
+				 values[i].bin_value))
+			goto err_cancel_hist;
+		for (j = 0; j < ETHTOOL_MAX_LANES; j++) {
+			if (values[i].bin_value_per_lane[j] == ETHTOOL_STAT_NOT_SET)
+				break;
+		}
+		if (j && nla_put_64bit(skb, ETHTOOL_A_FEC_HIST_BIN_VAL_PER_LANE,
+				       sizeof(u64) * j,
+				       values[i].bin_value_per_lane,
+				       ETHTOOL_A_FEC_STAT_PAD))
+			goto err_cancel_hist;
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
@@ -183,6 +245,9 @@ static int fec_put_stats(struct sk_buff *skb, const struct fec_reply_data *data)
 			  data->corr_bits.stats, ETHTOOL_A_FEC_STAT_PAD))
 		goto err_cancel;
 
+	if (fec_put_hist(skb, &data->fec_stat_hist))
+		goto err_cancel;
+
 	nla_nest_end(skb, nest);
 	return 0;
 
-- 
2.47.3

