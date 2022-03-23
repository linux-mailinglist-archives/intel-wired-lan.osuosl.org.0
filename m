Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED374E526B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Mar 2022 13:45:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF5C661370;
	Wed, 23 Mar 2022 12:45:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iUg7oNNDDe_Y; Wed, 23 Mar 2022 12:45:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2BBA613A2;
	Wed, 23 Mar 2022 12:45:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CA8411BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C62D660A87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZY8SkG-rJ-CB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Mar 2022 12:45:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3EE8E60808
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Mar 2022 12:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648039547; x=1679575547;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GyXNqf4GNLod3cqKTITvf8LiaDU11jwMImeBJOPCznE=;
 b=Qqk8B2ELOoesTpK/imtY5oZPB0ysAIDMbDdhAfhbTEwvD8TTVAecK3JH
 qUx1Q/iOqNP2RSlezeqyFvrheKIJzPzYuXudMe0dnIia2iNB2wnW2yLvg
 6EYat3pwH2MXHEbxAst7Eox9W6gWAi5Zdm2vABlg36JQfkEeEb+an+3mM
 tLJZhUH/KoRYSSSYf4H75vRPjHyyTxP0a18RNozNp16FUO1Hzw4PtRkuQ
 MXl0hx2OuK/At2YqkdqCk/IWDYWi+gvmpWK4GLjPpl7C3M2riWSrTSQs7
 AFXum0f3WKTVYiwvgVM8+BU4qc91ygikbdTjyPJo5JMxEIsgsX9JxqdYd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10294"; a="238042378"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="238042378"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 05:45:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="785776616"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 23 Mar 2022 05:45:44 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22NCjeuE017350; Wed, 23 Mar 2022 12:45:42 GMT
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 Paolo Abeni <pabeni@redhat.com>
Date: Wed, 23 Mar 2022 13:43:53 +0100
Message-Id: <20220323124353.2762181-3-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
References: <20220323124353.2762181-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 2/2] ice: don't allow to run
 ice_send_event_to_aux() in atomic ctx
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Kubiak <michal.kubiak@intel.com>, intel-wired-lan@lists.osuosl.org,
 Shiraz Saleem <shiraz.saleem@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ice_send_event_to_aux() eventually descends to mutex_lock()
(-> might_sched()), so it must not be called under non-task
context. However, at least two fixes have happened already for the
bug splats occurred due to this function being called from atomic
context.
To make the emergency landings softer, bail out early when executed
in non-task context emitting a warn splat only once. This way we
trade some events being potentially lost for system stability and
avoid any related hangs and crashes.

Fixes: 348048e724a0e ("ice: Implement iidc operations")
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
Tested-by: Michal Kubiak <michal.kubiak@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Acked-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_idc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index fc3580167e7b..5559230eff8b 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -34,6 +34,9 @@ void ice_send_event_to_aux(struct ice_pf *pf, struct iidc_event *event)
 {
 	struct iidc_auxiliary_drv *iadrv;
 
+	if (WARN_ON_ONCE(!in_task()))
+		return;
+
 	if (!pf->adev)
 		return;
 
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
