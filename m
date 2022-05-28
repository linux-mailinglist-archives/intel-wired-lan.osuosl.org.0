Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 79B5D539176
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 May 2022 15:09:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1527F41C49;
	Tue, 31 May 2022 13:09:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lU7d77nLliGE; Tue, 31 May 2022 13:09:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D51241C12;
	Tue, 31 May 2022 13:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 090101BF23C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E51CB405EF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Aq5TeXQQAEiM for <intel-wired-lan@lists.osuosl.org>;
 Sat, 28 May 2022 12:33:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 483E740608
 for <intel-wired-lan@lists.osuosl.org>; Sat, 28 May 2022 12:33:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653741195; x=1685277195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XBvauSL9Vi28ZrrgQphGN9OE84f0OiZZNwJpSV2vbak=;
 b=IPsEntwT6jQarn+Uvf23KzqecYkkU3fAsIZuprDgXnrw0CeS0ZYExo2y
 RLsWtEpL1egqlhCwZEy0fa6UmNYlWpLwY7r42DMdWWeKruv1CE635s9h6
 TAwcnWinO9aSivLA5rjqBDJkFQIkGm0PQde5ikssmCDD5DuPQIhAMKnjO
 f5OEKvrBQSXhj9411nOszyzEvaABR++W95FujOePQaf4vpu3GhWzbLkeT
 bT9IXdeZfPDIU37i/GPasgC/0DYLyMsh18jT7Try/ZdAgcCGvVza5q5oD
 u8J+35dib5SVEmk+zG9leW9ewk3it4WJ3gINySv54JQ+8zxiYs/h1/KQt g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="262287056"
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="262287056"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,258,1647327600"; d="scan'208";a="604391851"
Received: from unknown (HELO jiaqingz-server.sh.intel.com) ([10.239.48.171])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2022 05:33:13 -0700
From: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
To: netdev@vger.kernel.org,
	intel-wired-lan@lists.osuosl.org
Date: Sat, 28 May 2022 20:31:23 +0800
Message-Id: <20220528123123.1851519-4-jiaqing.zhao@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
References: <20220528123123.1851519-1-jiaqing.zhao@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 31 May 2022 13:08:44 +0000
Subject: [Intel-wired-lan] [PATCH 3/3] ixgbe: Fix typos in comments
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
Cc: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

"VLAN filter" was misspelled as "VLAN filer" in some comments.

Signed-off-by: Jiaqing Zhao <jiaqing.zhao@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 2 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
index 95c92fe890a1..100388968e4d 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c
@@ -879,7 +879,7 @@ static s32 ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
  *  ixgbe_clear_vfta_82598 - Clear VLAN filter table
  *  @hw: pointer to hardware structure
  *
- *  Clears the VLAN filer table, and the VMDq index associated with the filter
+ *  Clears the VLAN filter table, and the VMDq index associated with the filter
  **/
 static s32 ixgbe_clear_vfta_82598(struct ixgbe_hw *hw)
 {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 4c26c4b92f07..38c4609bd429 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -3237,7 +3237,7 @@ s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
  *  ixgbe_clear_vfta_generic - Clear VLAN filter table
  *  @hw: pointer to hardware structure
  *
- *  Clears the VLAN filer table, and the VMDq index associated with the filter
+ *  Clears the VLAN filter table, and the VMDq index associated with the filter
  **/
 s32 ixgbe_clear_vfta_generic(struct ixgbe_hw *hw)
 {
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
