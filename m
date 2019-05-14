Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7501CE1A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2019 19:37:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 93E5B87C89;
	Tue, 14 May 2019 17:37:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L1Lb2igRRB-Z; Tue, 14 May 2019 17:37:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0254587C9F;
	Tue, 14 May 2019 17:37:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DFED1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0B041860B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id peKW5fujSdJF for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2019 17:37:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id AA04186088
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:37:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:37:30 -0700
X-ExtLoop1: 1
Received: from alicemic-2.jf.intel.com ([10.166.16.121])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2019 10:37:30 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 14 May 2019 10:36:59 -0700
Message-Id: <20190514173709.62431-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.19.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S5 iavf 01/11] iavf: Create VLAN tag
 elements starting from the first element
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
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

This patch changes how VLAN tag are being populated and programmed into
the HW - Instead of start adding VF VLAN tag from the last member of the
element list, start from the first member of the list, until number of
allowed VLAN tags is exhausted in the HW.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 44d2150adb37..36f17d0c7a2e 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -665,8 +665,7 @@ iavf_vlan_filter *iavf_add_vlan(struct iavf_adapter *adapter, u16 vlan)
 
 		f->vlan = vlan;
 
-		INIT_LIST_HEAD(&f->list);
-		list_add(&f->list, &adapter->vlan_filter_list);
+		list_add_tail(&f->list, &adapter->vlan_filter_list);
 		f->add = true;
 		adapter->aq_required |= IAVF_FLAG_AQ_ADD_VLAN_FILTER;
 	}
-- 
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
