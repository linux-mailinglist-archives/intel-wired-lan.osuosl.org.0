Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 86393A704AF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Mar 2025 16:14:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8ADFC41227;
	Tue, 25 Mar 2025 15:14:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Q3igp_GQUtZ2; Tue, 25 Mar 2025 15:14:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0196D41226
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1742915677;
	bh=PoPeXcnAj1MXkZ7sd5wxpK63DqmefzbwH7HjvQ9UcCE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FH2lxKvAqFuuHbvggj+0CtRbrU4C5how3t512wZiouVJyzsPSAQXLE4WgYZ4Q7IZe
	 LX+tJImfFQxpDNPFCZD4WVi0qQoyR136GI9vLPxedhvj4zZzyS/hfA+xg5cfEynboq
	 enLCXbOugA4MDIquu2i7Id5j0ZIXmauISCUBOu0j8IRw2bLu+TBvaH7U06KC8Fc+BI
	 K5WlPYrIoO0dfsApZ7Y/Rfdo8nXcwNCyMczqO8a2kn6MQjpy14PeBaFjmF9osUhO8a
	 ss4LpMkhXyDwWi69gupqsMf9pVSBVMcAotgSwHmdSxbdyXSrKXGur5Dhqni7bHbL1F
	 Th97J5vtYFArw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0196D41226;
	Tue, 25 Mar 2025 15:14:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FBB31B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:10:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ECA8481773
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:10:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XHDObMTKWNzD for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Mar 2025 02:10:48 +0000 (UTC)
X-Greylist: delayed 492 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 25 Mar 2025 02:10:47 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2873B8154F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2873B8154F
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.171;
 helo=out-171.mta1.migadu.com; envelope-from=xuanqiang.luo@linux.dev;
 receiver=<UNKNOWN> 
Received: from out-171.mta1.migadu.com (out-171.mta1.migadu.com
 [95.215.58.171])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2873B8154F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Mar 2025 02:10:47 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Xuanqiang Luo <xuanqiang.luo@linux.dev>
To: przemyslaw.kitszel@intel.com,
	anthony.l.nguyen@intel.com
Cc: davem@davemloft.net, edumazet@google.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Xuanqiang Luo <xuanqiang.luo@linux.dev>,
 Xuanqiang Luo <luoxuanqiang@kylinos.cn>
Date: Tue, 25 Mar 2025 10:01:49 +0800
Message-Id: <20250325020149.2041648-1-xuanqiang.luo@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Tue, 25 Mar 2025 15:14:35 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1742868152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=PoPeXcnAj1MXkZ7sd5wxpK63DqmefzbwH7HjvQ9UcCE=;
 b=LINj1/ek64hEO/x33uHxwLIGJy5oSelQhW66VB1kPB852I2rxWFFWv2vSqHcBb1BZOcfPZ
 selz3aElmCS6XHwWWoR1/RTxZAyiH/cqCeIIA7gXcUhgUmwAM4/CE+2x4botaPZxeXCAvG
 F4mXLcKPfEIM0EeVKPuGmcnbaCPoNjg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=LINj1/ek
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: Check VF VSI Pointer
 Value in ice_vc_add_fdir_fltr()
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

From: Xuanqiang Luo <luoxuanqiang@kylinos.cn>

As mentioned in the commit baeb705fd6a7 ("ice: always check VF VSI
pointer values"), we need to perform a null pointer check on the return
value of ice_get_vf_vsi() before using it.

v2: Add "iwl-net" to the subject and modify the name format.

Fixes: 6ebbe97a4881 ("ice: Add a per-VF limit on number of FDIR filters")
Signed-off-by: Xuanqiang Luo <luoxuanqiang@kylinos.cn>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
index 14e3f0f89c78..53bad68e3f38 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_fdir.c
@@ -2092,6 +2092,12 @@ int ice_vc_add_fdir_fltr(struct ice_vf *vf, u8 *msg)
 	dev = ice_pf_to_dev(pf);
 	vf_vsi = ice_get_vf_vsi(vf);
 
+	if (!vf_vsi) {
+		dev_err(dev, "Can not get FDIR vf_vsi for VF %u\n", vf->vf_id);
+		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
+		goto err_exit;
+	}
+
 #define ICE_VF_MAX_FDIR_FILTERS	128
 	if (!ice_fdir_num_avail_fltr(&pf->hw, vf_vsi) ||
 	    vf->fdir.fdir_fltr_cnt_total >= ICE_VF_MAX_FDIR_FILTERS) {
-- 
2.27.0

