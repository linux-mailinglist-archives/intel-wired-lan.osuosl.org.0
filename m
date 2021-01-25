Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB2130277D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Jan 2021 17:10:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9955A870C8;
	Mon, 25 Jan 2021 16:09:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Am7oUUBxkWuA; Mon, 25 Jan 2021 16:09:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F50687093;
	Mon, 25 Jan 2021 16:09:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 787901BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:09:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 734D78707F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:09:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJCIMUgCnZ83 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Jan 2021 16:09:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B38B8707D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Jan 2021 16:09:54 +0000 (UTC)
IronPort-SDR: 3lA4O750f7a13FVvHxRIxTiy4D0VW5BtOEtkyX1PknoKOnCqNkpwD+qV35ZyN346mKnjYp30DT
 NnjsQuH/q3bA==
X-IronPort-AV: E=McAfee;i="6000,8403,9875"; a="167428057"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="167428057"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 08:09:48 -0800
IronPort-SDR: lXCb6HfTOgo98bmx/5SzQ2t57O82MqHC/RLoTQFyvr08xUXrUzvTTaen7ahlLkiL5ZXgBA+jN9
 a/Y/yH+qlK+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="361564760"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga008.fm.intel.com with ESMTP; 25 Jan 2021 08:09:47 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Jan 2021 16:09:42 +0000
Message-Id: <20210125160942.20551-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v2] virtchnl: Fix layout of RSS
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

Remove padding from RSS structures. Previous layout
could lead to unwanted compiler optimizations
in loops when iterating over key and lut arrays.

Fixes: 65ece6de0114 ("virtchnl: Add missing explicit padding to structures")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
---
v2: Removed padding instead of moving "key" and "lut" fields
at the end of RSS structures.
---
 include/linux/avf/virtchnl.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/avf/virtchnl.h b/include/linux/avf/virtchnl.h
index e49a063..21c5b2d 100644
--- a/include/linux/avf/virtchnl.h
+++ b/include/linux/avf/virtchnl.h
@@ -503,7 +503,6 @@ struct virtchnl_rss_key {
 	u16 vsi_id;
 	u16 key_len;
 	u8 key[1];         /* RSS hash key, packed bytes */
-	u8 pad[1];
 };
 
 VIRTCHNL_CHECK_STRUCT_LEN(6, virtchnl_rss_key);
@@ -512,7 +511,6 @@ struct virtchnl_rss_lut {
 	u16 vsi_id;
 	u16 lut_entries;
 	u8 lut[1];        /* RSS lookup table */
-	u8 pad[1];
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
