Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C4E34F69C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 04:27:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E898784187;
	Wed, 31 Mar 2021 02:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jyrNV_RkdaNx; Wed, 31 Mar 2021 02:27:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E773A83C7D;
	Wed, 31 Mar 2021 02:27:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 24AB21BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4E887404C0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8bOwc-6Buoen for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 02:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A399D404BD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:13 +0000 (UTC)
IronPort-SDR: G1bzjIFxgVIRmvwxIiUXh2x7KK2nh+aKkTeZ/Ifjyo/gWCZvve9co2BdbJ3r0WRBJRIXEH1FyR
 94Ywd/aT2l/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="171924579"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="171924579"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 19:27:07 -0700
IronPort-SDR: PeY7Uux6eHbqs8JlfDPnvunaZLNbWze22/NGJSVWavtk4hAWEiLzAbIE5p0VlQJulfHELqtY/W
 0kQNKnj/uMbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="411916105"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2021 19:27:06 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 10:08:35 +0800
Message-Id: <20210331020837.3640-1-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v1 1/3] iavf: change the flex-byte support
 number to macro definition
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

The maximum number (2) of flex-byte support is derived from ethtool
use-def data size (8 byte).

Change the magic number 2 to macro definition, and add the comment to
track the design thinking, so the code is clear and easily maintained.

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 2 +-
 drivers/net/ethernet/intel/iavf/iavf_fdir.h    | 9 +++++++--
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index d9ed4d4e3d78..935145ab2b77 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -939,7 +939,7 @@ iavf_parse_rx_flow_user_data(struct ethtool_rx_flow_spec *fsp,
 	if (!(fsp->flow_type & FLOW_EXT))
 		return 0;
 
-	for (i = 0; i < 2; i++) {
+	for (i = 0; i < IAVF_FLEX_WORD_NUM; i++) {
 #define IAVF_USERDEF_FLEX_WORD_M	GENMASK(15, 0)
 #define IAVF_USERDEF_FLEX_OFFS_S	16
 #define IAVF_USERDEF_FLEX_OFFS_M	GENMASK(31, IAVF_USERDEF_FLEX_OFFS_S)
diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.h b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
index 2439c970b657..33c55c366315 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.h
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.h
@@ -35,6 +35,11 @@ enum iavf_fdir_flow_type {
 	IAVF_FDIR_FLOW_PTYPE_MAX,
 };
 
+/* Must not exceed the array element number of '__be32 data[2]' in the ethtool
+ * 'struct ethtool_rx_flow_spec.m_ext.data[2]' to express the flex-byte (word).
+ */
+#define IAVF_FLEX_WORD_NUM	2
+
 struct iavf_flex_word {
 	u16 offset;
 	u16 word;
@@ -71,7 +76,7 @@ struct iavf_fdir_ip {
 };
 
 struct iavf_fdir_extra {
-	u32 usr_def[2];
+	u32 usr_def[IAVF_FLEX_WORD_NUM];
 };
 
 /* bookkeeping of Flow Director filters */
@@ -95,7 +100,7 @@ struct iavf_fdir_fltr {
 	/* flex byte filter data */
 	u8 ip_ver; /* used to adjust the flex offset, 4 : IPv4, 6 : IPv6 */
 	u8 flex_cnt;
-	struct iavf_flex_word flex_words[2];
+	struct iavf_flex_word flex_words[IAVF_FLEX_WORD_NUM];
 
 	u32 flow_id;
 
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
