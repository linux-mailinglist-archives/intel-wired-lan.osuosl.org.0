Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC4934F69B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 Mar 2021 04:27:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 73C51404CD;
	Wed, 31 Mar 2021 02:27:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yaeoeE1-evb3; Wed, 31 Mar 2021 02:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 493EB404B6;
	Wed, 31 Mar 2021 02:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 11D461BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 220C5404B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VzkVs1iqKzq6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Mar 2021 02:27:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 78044404C2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Mar 2021 02:27:13 +0000 (UTC)
IronPort-SDR: Dv82XyJz/iJBGEVt7r9kALBn/kF/s7oKNhHsshWusvLyqrWDh/Mrs8jDfBdkG6d3Wy14TXASyO
 3UabBCfGeyew==
X-IronPort-AV: E=McAfee;i="6000,8403,9939"; a="171924583"
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="171924583"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2021 19:27:09 -0700
IronPort-SDR: b8b/+EKjh8YYLGIkkVDWJ8z8Wo7UY3oaNKQcoZ+c2HZ1GS5f4EsrUE9h8gckjelql1YujVMtHr
 QfsrACVeDqTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,291,1610438400"; d="scan'208";a="411916126"
Received: from npg-dpdk-haiyue-1.sh.intel.com ([10.67.118.220])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2021 19:27:08 -0700
From: Haiyue Wang <haiyue.wang@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 31 Mar 2021 10:08:37 +0800
Message-Id: <20210331020837.3640-3-haiyue.wang@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331020837.3640-1-haiyue.wang@intel.com>
References: <20210331020837.3640-1-haiyue.wang@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [Patch v1 3/3] iavf: redefine the magic number
 for FDIR GTP-U header fields
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

The flex-byte for GTP-U protocol header fields uses the magic number,
which is hard to maintain and understand, define the interested filelds
with meaningful macro name, based on the GTP-U protocol stack:

GTP-U header
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     | 0x1 |1|0|1|0|0|     0xff      |           Length              |
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |                           TEID = 1654                         |
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |    Sequence Number = 0        |N-PDU Number=0 |NextExtHdr=0x85|
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

GTP-U Extension Header (PDU Session Container)
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |  ExtHdrLen=2  |Type=0 | Spare |0|0|   QFI     | PPI |  Spare  |
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
     |                    Padding                    |NextExtHdr=0x0 |
     +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

Signed-off-by: Haiyue Wang <haiyue.wang@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_fdir.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_fdir.c b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
index af872ea3163f..6146203efd84 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_fdir.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_fdir.c
@@ -54,8 +54,13 @@ iavf_fill_fdir_gtpu_hdr(struct iavf_fdir_fltr *fltr,
 #define IAVF_GTPU_HDR_TEID_OFFS0	4
 #define IAVF_GTPU_HDR_TEID_OFFS1	6
 #define IAVF_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS	10
+#define IAVF_GTPU_HDR_NEXT_EXTHDR_TYPE_MASK		0x00FF /* skip N_PDU */
+/* PDU Session Container Extension Header (PSC) */
+#define IAVF_GTPU_PSC_EXTHDR_TYPE			0x85
 #define IAVF_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS		13
-#define IAVF_GTPU_PSC_EXTHDR_TYPE	0x85 /* PDU Session Container Extension Header */
+#define IAVF_GTPU_HDR_PSC_PDU_QFI_MASK			0x3F /* skip Type */
+#define IAVF_GTPU_EH_QFI_IDX				1
+
 		if (fltr->flex_words[i].offset < adj_offs)
 			return -EINVAL;
 
@@ -71,7 +76,9 @@ iavf_fill_fdir_gtpu_hdr(struct iavf_fdir_fltr *fltr,
 			}
 			break;
 		case IAVF_GTPU_HDR_N_PDU_AND_NEXT_EXTHDR_OFFS:
-			if ((fltr->flex_words[i].word & 0xff) != IAVF_GTPU_PSC_EXTHDR_TYPE)
+			if ((fltr->flex_words[i].word &
+			     IAVF_GTPU_HDR_NEXT_EXTHDR_TYPE_MASK) !=
+						IAVF_GTPU_PSC_EXTHDR_TYPE)
 				return -EOPNOTSUPP;
 			if (!ehdr)
 				ehdr = &proto_hdrs->proto_hdr[proto_hdrs->count++];
@@ -80,7 +87,9 @@ iavf_fill_fdir_gtpu_hdr(struct iavf_fdir_fltr *fltr,
 		case IAVF_GTPU_HDR_PSC_PDU_TYPE_AND_QFI_OFFS:
 			if (!ehdr)
 				return -EINVAL;
-			ehdr->buffer[1] = fltr->flex_words[i].word & 0x3F;
+			ehdr->buffer[IAVF_GTPU_EH_QFI_IDX] =
+					fltr->flex_words[i].word &
+						IAVF_GTPU_HDR_PSC_PDU_QFI_MASK;
 			VIRTCHNL_ADD_PROTO_HDR_FIELD_BIT(ehdr, GTPU_EH, QFI);
 			break;
 		default:
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
