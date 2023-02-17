Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C67D69B0EC
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Feb 2023 17:30:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33231821C5;
	Fri, 17 Feb 2023 16:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33231821C5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676651429;
	bh=z844rGADoXd6bFXSmmNpP9GukJ70mhepM9B32BYvedc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=8hHI6sQBjJzapGLna/C6oluIWzEV1rAD7/ETMqiy+msUCqQYVFtp5slWksgzyG996
	 nyHHVS8xa9rgMYgTz5u1663HIMQpG9BL3dEIemEF2Otf5i0agcSyWUUPCSRmTz7TMG
	 tAO/U0nrqekb/mJuyFgFCERV25pz4in07rV73ZvMESC4G1suPPViLOiSiK09O4yFBz
	 G1W9wuivksIftA6POplaIjilbh8E82TkooZy2v+k6muVugInxMmyP1jzR6Pdz/ikPX
	 qjBb1gJY2ghai/y2uU8yQYQ6uptKLsHYv+QAO7UVMILknlnG4I6Yj3Uswa2a9YYO49
	 yP6cF8sP+E/qQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y2AmAa6TZuVa; Fri, 17 Feb 2023 16:30:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45A5D8215C;
	Fri, 17 Feb 2023 16:30:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45A5D8215C
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34D621BF5DE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:37:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DDC9400A4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:37:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DDC9400A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E4SUF-r068S3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Feb 2023 09:37:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 280A5400BF
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 280A5400BF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Feb 2023 09:37:20 +0000 (UTC)
Received: from dggpemm100007.china.huawei.com (unknown [172.30.72.55])
 by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4PJ69n3mn3zGplX;
 Fri, 17 Feb 2023 17:35:25 +0800 (CST)
Received: from huawei.com (10.175.103.91) by dggpemm100007.china.huawei.com
 (7.185.36.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.6; Fri, 17 Feb
 2023 17:37:14 +0800
From: Yang Yingliang <yangyingliang@huawei.com>
To: <netdev@vger.kernel.org>, <intel-wired-lan@lists.osuosl.org>
Date: Fri, 17 Feb 2023 17:36:25 +0800
Message-ID: <20230217093625.420984-1-yangyingliang@huawei.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Originating-IP: [10.175.103.91]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggpemm100007.china.huawei.com (7.185.36.116)
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Fri, 17 Feb 2023 16:30:23 +0000
Subject: [Intel-wired-lan] [PATCH net-next] ice: fix error return code in
 ice_vsi_cfg_def()
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
Cc: yangyingliang@huawei.com, jesse.brandeburg@intel.com, edumazet@google.com,
 anthony.l.nguyen@intel.com, kuba@kernel.org, pabeni@redhat.com,
 liwei391@huawei.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Set the error code when ice_vsi_alloc_stat_arrays()
or ice_vsi_get_qs() fails in ice_vsi_cfg_def().

Fixes: 6624e780a577 ("ice: split ice_vsi_setup into smaller functions")
Signed-off-by: Yang Yingliang <yangyingliang@huawei.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 37fe639712e6..766edff0d638 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2692,12 +2692,14 @@ ice_vsi_cfg_def(struct ice_vsi *vsi, struct ice_vsi_cfg_params *params)
 		return ret;
 
 	/* allocate memory for Tx/Rx ring stat pointers */
-	if (ice_vsi_alloc_stat_arrays(vsi))
+	ret = ice_vsi_alloc_stat_arrays(vsi);
+	if (ret)
 		goto unroll_vsi_alloc;
 
 	ice_alloc_fd_res(vsi);
 
-	if (ice_vsi_get_qs(vsi)) {
+	ret = ice_vsi_get_qs(vsi);
+	if (ret) {
 		dev_err(dev, "Failed to allocate queues. vsi->idx = %d\n",
 			vsi->idx);
 		goto unroll_vsi_alloc_stat;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
