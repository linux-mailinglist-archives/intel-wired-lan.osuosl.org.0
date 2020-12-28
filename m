Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E9272E35F5
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Dec 2020 11:36:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA3E085F18;
	Mon, 28 Dec 2020 10:36:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0YWvkCiBoMlJ; Mon, 28 Dec 2020 10:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BAFC85DF4;
	Mon, 28 Dec 2020 10:36:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 649F91BF395
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 10:36:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5FBA585D17
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 10:36:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l2Th2DTvzMrq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Dec 2020 10:36:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3CA5985CAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Dec 2020 10:36:37 +0000 (UTC)
IronPort-SDR: RL+pCGtZLK1RQZJ982CaI0Vw+QD1TnbKe2KsrFw/5drH5rEySR96gerJbvQFk4TNV9Aqp/4fqa
 47wzoax2WfEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9847"; a="194847519"
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400"; d="scan'208";a="194847519"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2020 02:36:36 -0800
IronPort-SDR: xXlQCJ45MEbU2o4mxRysRSLuYkqu7LP4meBLK2w6OxI47C3WA33mPrpSoCtH6C0WD79U8G00HP
 zOkeA0CPwV8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400"; d="scan'208";a="395032482"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga002.fm.intel.com with ESMTP; 28 Dec 2020 02:36:34 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Dec 2020 10:36:33 +0000
Message-Id: <20201228103633.11621-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] virtchnl: Fix layout of RSS
 structures
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
Cc: Norbert Ciosek <norbertx.ciosek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Ciosek <norbertx.ciosek@intel.com>

Move "key" and "lut" fields at the end of RSS structures.
They are arrays of size 1 used to fill in the data
in dynamically allocated memory located after both structures.
Previous layout could lead to unwanted compiler optimizations
in loops when iterating over these arrays.

Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to structures")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
---
 include/linux/avf/virtchnl.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index ac4a1d3..44945d6 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -529,8 +529,8 @@ struct virtchnl_eth_stats {
 struct virtchnl_rss_key {
 	u16 vsi_id;
 	u16 key_len;
-	u8 key[1];         /* RSS hash key, packed bytes */
 	u8 pad[1];
+	u8 key[1];         /* RSS hash key, packed bytes */
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
@@ -538,8 +538,8 @@ VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
 struct virtchnl_rss_lut {
 	u16 vsi_id;
 	u16 lut_entries;
-	u8 lut[1];        /* RSS lookup table */
 	u8 pad[1];
+	u8 lut[1];        /* RSS lookup table */
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_lut);
-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
