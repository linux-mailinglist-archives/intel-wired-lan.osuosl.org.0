Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 630514E98C4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Mar 2022 15:54:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D5CA180F16;
	Mon, 28 Mar 2022 13:53:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZrisM-qoGMNq; Mon, 28 Mar 2022 13:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D65E980D69;
	Mon, 28 Mar 2022 13:53:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 96C011BF426
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7F5C540998
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nlchvXPjOZ-X for <intel-wired-lan@lists.osuosl.org>;
 Sun, 27 Mar 2022 06:43:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6D80140992
 for <intel-wired-lan@lists.osuosl.org>; Sun, 27 Mar 2022 06:43:53 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id x2so12165085plm.7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Mar 2022 23:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id;
 bh=e8S/Lyqv6Pi/Bg7S559e3B2rX5AZSz5Qk3MEM2LeHrM=;
 b=qLUZbUcbpG+h9aKNF+ZR827zt7SoWtsAEtJHVhRIUvlby5kZQQ2hwh1DV1e2WH/xb6
 Y4uccsA0hdFPel5mZuwbeOoOANygi67MsN8dP2qX4ynJoCxSmtlUT14Z5Inp+M6SNRBR
 oGAG4/gej0/fTo8pW652BYzPLCCL9TdV3kiP8HCTLtOcMyK5FWQdx1AFDvSjSQm2vrTf
 NnvsTLFrMf63Uk57hwv6mFfvjPbxVySLESi/lXDen6mRAMMM/+ybUUev8rFd0dG0RTod
 eS4bdP2WKkPYlmSdOnrag+vfJonraIzaaTVQYpgv0Y7BGSHN1xxkcsRUR765XvEH7OqL
 jCMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=e8S/Lyqv6Pi/Bg7S559e3B2rX5AZSz5Qk3MEM2LeHrM=;
 b=vlCFQnEsfpC2rk3TZw+V6s+0OBNVGEO7uV+niYgvKh89Kh935zjuGATqkWtWXaxKn2
 1W8t7YsaH2Se7V7ijrK0+aKcf76zzJEvzPpwpFovJaG8LtDwQMsKHbJJTZsaViRTXlXk
 nkCuG+E3BxtLi/UegQsoNF3vx3McbmUMeM/hHi4SvQsNcHm7NKFQZbc+bpaln94m32Ot
 jczyYAuZS/E737Xnir9QwjCkCS81iJde9SHObHcCccBjwhvZg6xT7BxalnMGGaXSQ4Dd
 SSUVXfSrQGJlXLCB6QIn7zaYtnCWXKQ1LZJSXJUbLvwKo5WHgQDL70LyYhASVLUjBSSg
 KdiA==
X-Gm-Message-State: AOAM530PYAmi/G0tmJXLsDmxbMEOg+0KmpE2OjgYegG/Ec/yRepyRwoE
 gQNKhTFtKr9YU3y7yvTGSg0=
X-Google-Smtp-Source: ABdhPJwxW+jGQuknVXQY++N1loHtcJ440DIqeuetFmg2lQ2R9iXwPAi/1v/mkY2Ctju2+R3boNuF3A==
X-Received: by 2002:a17:903:192:b0:151:8df9:6cdb with SMTP id
 z18-20020a170903019200b001518df96cdbmr20778157plg.20.1648363432913; 
 Sat, 26 Mar 2022 23:43:52 -0700 (PDT)
Received: from localhost ([115.220.243.108]) by smtp.gmail.com with ESMTPSA id
 l20-20020a056a00141400b004f65cedfb09sm11451945pfu.48.2022.03.26.23.43.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 26 Mar 2022 23:43:52 -0700 (PDT)
From: Xiaomeng Tong <xiam0nd.tong@gmail.com>
To: jesse.brandeburg@intel.com
Date: Sun, 27 Mar 2022 14:43:44 +0800
Message-Id: <20220327064344.7573-1-xiam0nd.tong@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 28 Mar 2022 13:53:50 +0000
Subject: [Intel-wired-lan] [PATCH] ice: ice_sched: fix an incorrect NULL
 check on list iterator
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
Cc: netdev@vger.kernel.org, victor.raj@intel.com, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Xiaomeng Tong <xiam0nd.tong@gmail.com>,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bugs are here:
	if (old_agg_vsi_info)
	if (old_agg_vsi_info && !old_agg_vsi_info->tc_bitmap[0]) {

The list iterator value 'old_agg_vsi_info' will *always* be set
and non-NULL by list_for_each_entry_safe(), so it is incorrect
to assume that the iterator value will be NULL if the list is
empty or no element found (in this case, the check
'if (old_agg_vsi_info)' will always be true unexpectly).

To fix the bug, use a new variable 'iter' as the list iterator,
while use the original variable 'old_agg_vsi_info' as a dedicated
pointer to point to the found element.

Cc: stable@vger.kernel.org
Fixes: 37c592062b16d ("ice: remove the VSI info from previous agg")
Signed-off-by: Xiaomeng Tong <xiam0nd.tong@gmail.com>
---
 drivers/net/ethernet/intel/ice/ice_sched.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sched.c b/drivers/net/ethernet/intel/ice/ice_sched.c
index 7947223536e3..fba524148a09 100644
--- a/drivers/net/ethernet/intel/ice/ice_sched.c
+++ b/drivers/net/ethernet/intel/ice/ice_sched.c
@@ -2757,6 +2757,7 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 			   u16 vsi_handle, unsigned long *tc_bitmap)
 {
 	struct ice_sched_agg_vsi_info *agg_vsi_info, *old_agg_vsi_info = NULL;
+	struct ice_sched_agg_vsi_info *iter;
 	struct ice_sched_agg_info *agg_info, *old_agg_info;
 	struct ice_hw *hw = pi->hw;
 	int status = 0;
@@ -2774,11 +2775,13 @@ ice_sched_assoc_vsi_to_agg(struct ice_port_info *pi, u32 agg_id,
 	if (old_agg_info && old_agg_info != agg_info) {
 		struct ice_sched_agg_vsi_info *vtmp;
 
-		list_for_each_entry_safe(old_agg_vsi_info, vtmp,
+		list_for_each_entry_safe(iter, vtmp,
 					 &old_agg_info->agg_vsi_list,
 					 list_entry)
-			if (old_agg_vsi_info->vsi_handle == vsi_handle)
+			if (iter->vsi_handle == vsi_handle) {
+				old_agg_vsi_info = iter;
 				break;
+			}
 	}
 
 	/* check if entry already exist */
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
