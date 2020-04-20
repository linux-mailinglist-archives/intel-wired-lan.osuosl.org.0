Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C551B172F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 20 Apr 2020 22:33:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 26F6F87720;
	Mon, 20 Apr 2020 20:33:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wpS-NclF+ZY1; Mon, 20 Apr 2020 20:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5BD7087856;
	Mon, 20 Apr 2020 20:33:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7583F1BF29F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 70BE985CAA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ui2_EBP38iYU for <intel-wired-lan@lists.osuosl.org>;
 Mon, 20 Apr 2020 12:08:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EB12885C86
 for <intel-wired-lan@lists.osuosl.org>; Mon, 20 Apr 2020 12:08:17 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 9F657B648C2AFE2537E3;
 Mon, 20 Apr 2020 20:08:14 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.487.0; Mon, 20 Apr 2020
 20:08:07 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <jeffrey.t.kirsher@intel.com>, <davem@davemloft.net>, <ast@kernel.org>,
 <daniel@iogearbox.net>, <kuba@kernel.org>, <hawk@kernel.org>,
 <john.fastabend@gmail.com>, <kafai@fb.com>, <songliubraving@fb.com>,
 <yhs@fb.com>, <andriin@fb.com>, <kpsingh@chromium.org>,
 <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <bpf@vger.kernel.org>
Date: Mon, 20 Apr 2020 20:34:48 +0800
Message-ID: <20200420123448.7382-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-Mailman-Approved-At: Mon, 20 Apr 2020 20:33:26 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: Remove unneeded conversion to bool
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
Cc: Jason Yan <yanaijie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The '==' expression itself is bool, no need to convert it to bool again.
This fixes the following coccicheck warning:

drivers/net/ethernet/intel/i40e/i40e_main.c:1614:52-57: WARNING:
conversion to bool not needed here
drivers/net/ethernet/intel/i40e/i40e_main.c:11439:52-57: WARNING:
conversion to bool not needed here

Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 8c3e753bfb9d..2a037ec244b9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1611,7 +1611,7 @@ static int i40e_config_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 		}
 	}
 	if (lut) {
-		bool pf_lut = vsi->type == I40E_VSI_MAIN ? true : false;
+		bool pf_lut = vsi->type == I40E_VSI_MAIN;
 
 		ret = i40e_aq_set_rss_lut(hw, vsi->id, pf_lut, lut, lut_size);
 		if (ret) {
@@ -11436,7 +11436,7 @@ static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 	}
 
 	if (lut) {
-		bool pf_lut = vsi->type == I40E_VSI_MAIN ? true : false;
+		bool pf_lut = vsi->type == I40E_VSI_MAIN;
 
 		ret = i40e_aq_get_rss_lut(hw, vsi->id, pf_lut, lut, lut_size);
 		if (ret) {
-- 
2.21.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
