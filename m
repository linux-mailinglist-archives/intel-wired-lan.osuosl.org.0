Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6266B79E7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Mar 2023 15:09:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEA93400DD;
	Mon, 13 Mar 2023 14:09:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AEA93400DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678716581;
	bh=KEyHz/9iRpdEucq7H5775rPRRVZE62PMIImn5dZssaA=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=PG7onXFmyvoxh/DyRKy32fq3OaHPjrnSZKCiJ6EnIvVNXU0fC4NDkryoJzMyCeCpS
	 6V9c9oaMx55XCao9uc/AfZ0wrbEL4RVgj6ismnlJhZiY+hZeJ63toy9mu7iaqax7/F
	 xD9T9NAsU1b4Kuvu79Z8BPa+BmRi3S1q9sWJINzRTbllV19OVah5N5iFfA4MEmsNy0
	 vzTz8Ho5AWiACtk9iuA9PKJs163GcRWY9pZrZ9QMZrplczu4/7akGefxlpa+KQO+F4
	 0WJQ63GFMJd8YgiUjJzUBvN3TvwZK7iVhEQ2QZ0mH+65aSuFpTSS5iq7Gq9n/564bq
	 edUgOcV8iEZjA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TuFmMGpqjgrq; Mon, 13 Mar 2023 14:09:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B1313405E8;
	Mon, 13 Mar 2023 14:09:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B1313405E8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 107191BF33F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EABE040292
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:09:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EABE040292
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IDBsmQyalf5o for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Mar 2023 14:09:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A607C405E8
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A607C405E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Mar 2023 14:09:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="423420872"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="423420872"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:09:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="821986013"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="821986013"
Received: from unknown (HELO ocsbesrhlrepo01.igk.intel.com) ([10.237.94.20])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 07:09:28 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Mar 2023 15:07:33 +0100
Message-Id: <20230313140733.4140757-1-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678716574; x=1710252574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QO4HCICSRTHnboVRFj3g4jUG1KhF/I/sSoaZDM5n1hk=;
 b=Sq2tGDSWMRfCMRrXhy6/5LB/UF8ln6RBpPOdPotkABB3TQPtCpyuDH/+
 bVPG3ZGvTQ244AOdZGXQ33nKVEudPKLElGQwUvgzb+RfbZSQhYMAIdiwC
 EfoB9VHRvB473z9sDIYS8RcjfSwZjJQOgFWK8aWaKNy8yeNmuB5Ha9rLQ
 ATk+y7ZIBuEHMfNqETWylXHsCPsj82yagLNleXn48qjTTRqmKnIFBqEGz
 hIqYOe3LRqUPDgpxBgEXpNKN5XXJV8XmSiobygPXEjIgimIuPRsAIuuHt
 VhO6bjAkgBZYxz6LLUBaK6FNmmU/T7ZZROyhYO3ZUkRQIHT/4GIBTCz81
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Sq2tGDSW
Subject: [Intel-wired-lan] [PATCH net v1] i40e: fix flow director packet
 filter programming
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Initialize to zero structures to build a valid
Tx Packet used for the filter programming.

Fixes: a9219b332f52 ("i40e: VLAN field for flow director")
Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_txrx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 924f972b91fa..72b091f2509d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -171,10 +171,10 @@ static char *i40e_create_dummy_packet(u8 *dummy_packet, bool ipv4, u8 l4proto,
 				      struct i40e_fdir_filter *data)
 {
 	bool is_vlan = !!data->vlan_tag;
-	struct vlan_hdr vlan;
-	struct ipv6hdr ipv6;
-	struct ethhdr eth;
-	struct iphdr ip;
+	struct vlan_hdr vlan = {};
+	struct ipv6hdr ipv6 = {};
+	struct ethhdr eth = {};
+	struct iphdr ip = {};
 	u8 *tmp;
 
 	if (ipv4) {
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
