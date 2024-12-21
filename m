Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 852509FA1EB
	for <lists+intel-wired-lan@lfdr.de>; Sat, 21 Dec 2024 19:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B6084EFB2;
	Sat, 21 Dec 2024 18:43:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oTjFVdiJbKns; Sat, 21 Dec 2024 18:43:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A85B64312F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734806599;
	bh=garTpmgVCRsiT24Y9HEp7HK8vg0zYHqQEomkjWoz8/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=fYAF1VNBqoRX6eCfay8ElPUaPuybmxNANxjBa3WNkbfpYD2o0Nci5MMZrcSvFyCM6
	 DR6qmop7y/cVkDVTFtKqcyJTlG7ZkE4FcqadXxvIeGsGb/PBM5lM86OBIfrxkXUumo
	 4JNKKQCRBVbiiB9PJn5xiycwYB4Y237terdxqKaiHj0xKQDN91v6YEUcpQH6odaG4i
	 6PTRYNtBlJkARuufStsk460y3Hnj6mY9WPvnVVNctvFNC8WWW8xKd7YZ1+uMHHWANV
	 PObtvcZso6A8hUBo1JgbR8zSmdRbM3WgGQmgSDSlLXY5XphBhgGzVo90ykKSa7J7ng
	 24j4i7FDf5BGw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A85B64312F;
	Sat, 21 Dec 2024 18:43:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A6C0B93F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77C3940278
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:43:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4fn_l_rbHF0v for <intel-wired-lan@lists.osuosl.org>;
 Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=2a00:1098:5b::1;
 helo=mx.treblig.org; envelope-from=linux@treblig.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 56434405D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56434405D2
Received: from mx.treblig.org (mx.treblig.org [IPv6:2a00:1098:5b::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 56434405D2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 21 Dec 2024 18:42:59 +0000 (UTC)
Received: from localhost ([127.0.0.1] helo=dalek.home.treblig.org)
 by mx.treblig.org with esmtp (Exim 4.96)
 (envelope-from <linux@treblig.org>) id 1tP4RA-006hEJ-05;
 Sat, 21 Dec 2024 18:42:52 +0000
From: linux@treblig.org
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Dr. David Alan Gilbert" <linux@treblig.org>
Date: Sat, 21 Dec 2024 18:42:44 +0000
Message-ID: <20241221184247.118752-7-linux@treblig.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241221184247.118752-1-linux@treblig.org>
References: <20241221184247.118752-1-linux@treblig.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx; h=MIME-Version:Message-ID:Date:Subject:From:Content-Type:From
 :Subject; bh=garTpmgVCRsiT24Y9HEp7HK8vg0zYHqQEomkjWoz8/w=; b=BjVUyv30k10NKb4V
 BD/soBvi+aNB0pLq2CxbwiFFVrt/qrxTsUAa8VQGWOMzNlR35rI4HL401F6bmmKHsHSXKWuj7ecar
 e6ve3xi17zgbPK0aTzDcOjlXfl1aGAWhGMEgqf45x8fhPt684jXbxgcUXsS8jUrbk2qEU9k3KpoR4
 6raYUIWtyXRg0Q3lFkXO8RFoHi+OgXAd5vZSPZYLfW7QlxKri0TDHRLWtZU1FHnxrsFl95XLX3LTW
 8ppX04UEx7WjddB+mLzkMCj+yPzPJMs5/NHgWKRbd4Mc92nwwrt0Uj+MparB5IsoslFPs/79VyWhp
 OIr/8FBpUiSVBBRH4g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=treblig.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=treblig.org header.i=@treblig.org header.a=rsa-sha256
 header.s=bytemarkmx header.b=BjVUyv30
Subject: [Intel-wired-lan] [RFC net-next 6/9] i40e: Remove unused
 i40e_del_filter
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

From: "Dr. David Alan Gilbert" <linux@treblig.org>

The last use of i40e_del_filter() was removed in 2016 by
commit 9569a9a4547d ("i40e: when adding or removing MAC filters, correctly
handle VLANs")

Remove it.

Fix up a comment that referenced it.

Note: The __ version of this function is still used.

Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
---
 drivers/net/ethernet/intel/i40e/i40e.h      |  1 -
 drivers/net/ethernet/intel/i40e/i40e_main.c | 28 ++-------------------
 2 files changed, 2 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
index 5d9738b746f4..399a5dbf3506 100644
--- a/drivers/net/ethernet/intel/i40e/i40e.h
+++ b/drivers/net/ethernet/intel/i40e/i40e.h
@@ -1196,7 +1196,6 @@ void i40e_set_ethtool_ops(struct net_device *netdev);
 struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
 					const u8 *macaddr, s16 vlan);
 void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f);
-void i40e_del_filter(struct i40e_vsi *vsi, const u8 *macaddr, s16 vlan);
 int i40e_sync_vsi_filters(struct i40e_vsi *vsi);
 struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 				u16 uplink, u32 param1);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 83ba1effe8ba..276dde0bc1d4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1666,9 +1666,8 @@ struct i40e_mac_filter *i40e_add_filter(struct i40e_vsi *vsi,
  * @vsi: VSI to remove from
  * @f: the filter to remove from the list
  *
- * This function should be called instead of i40e_del_filter only if you know
- * the exact filter you will remove already, such as via i40e_find_filter or
- * i40e_find_mac.
+ * This function requires you've found * the exact filter you will remove
+ * already, such as via i40e_find_filter or i40e_find_mac.
  *
  * NOTE: This function is expected to be called with mac_filter_hash_lock
  * being held.
@@ -1697,29 +1696,6 @@ void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f)
 	set_bit(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
 }
 
-/**
- * i40e_del_filter - Remove a MAC/VLAN filter from the VSI
- * @vsi: the VSI to be searched
- * @macaddr: the MAC address
- * @vlan: the VLAN
- *
- * NOTE: This function is expected to be called with mac_filter_hash_lock
- * being held.
- * ANOTHER NOTE: This function MUST be called from within the context of
- * the "safe" variants of any list iterators, e.g. list_for_each_entry_safe()
- * instead of list_for_each_entry().
- **/
-void i40e_del_filter(struct i40e_vsi *vsi, const u8 *macaddr, s16 vlan)
-{
-	struct i40e_mac_filter *f;
-
-	if (!vsi || !macaddr)
-		return;
-
-	f = i40e_find_filter(vsi, macaddr, vlan);
-	__i40e_del_filter(vsi, f);
-}
-
 /**
  * i40e_add_mac_filter - Add a MAC filter for all active VLANs
  * @vsi: the VSI to be searched
-- 
2.47.1

