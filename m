Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A236487A54E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 13 Mar 2024 10:53:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55E87408D5;
	Wed, 13 Mar 2024 09:53:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dd1WB9ChtWET; Wed, 13 Mar 2024 09:53:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85CD340AAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710323632;
	bh=ZYil6xp+JrAl91UWWCoBVesBTmtm7d82Maxfqx90AoU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=3ZQXFihu40LdCP43NHfie3Kg8xTT7mcIcPA9iEE6ST0BeNqS8QXwUieZqiGyLftpQ
	 J7oN+tMpG9EP0BAjNKgIOn39DK2bruM1XlNyK2519wDCOqEmlEWXzydgOEiEpgfqPM
	 gSQK7xMZtKSGyG5DvK6f2v3YATr/fql0T1vhrj63QxCK2hlJ3w9AeFX4RaV6nIhS1y
	 g+u0W6+N+taROwlcSp1vyFbOIFFizVwEBovMLOB5nmvJRKhG9JuJO56H839GZRXDuF
	 bzSK56TCHQjF0fu6LgyZc03pnZHeCumoun+z1DRbl2Xc10nGWQqgcVLYfqll/FMg2e
	 jlmIOOidbcPlw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 85CD340AAD;
	Wed, 13 Mar 2024 09:53:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCA4F1BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:53:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A921E408C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yZJXRgKoslz0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 13 Mar 2024 09:53:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EBD6A408AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBD6A408AF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EBD6A408AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 13 Mar 2024 09:53:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5201296"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5201296"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 02:53:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="16436978"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2024 02:53:46 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Date: Wed, 13 Mar 2024 10:44:00 +0100
Message-Id: <20240313094400.6485-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710323630; x=1741859630;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=D41juIXOltkpONDHTD2P7Kls/c+v9rfD6GhwLQ8TCqo=;
 b=VCZOo/jKNN0asHYcre+F6kbwkSOuUFferAv3PsSsqSEU1ICf6Sm0kWZb
 e7HLs6Qy3DE9IyaLaDOKeNPCtcs3SQAz7rEWZJkorgcoOO9zUzAmFwYNl
 HXr/664UGf5RaDIXpkzmr4Es+eANQmow0F3NZWjphrya7+9ZJGJbDYp+m
 QD8BBuY7IhRe6YmPlvqTRc0/8J+q/GYDIP3TtawVOL+5eLx414a8WJxap
 a5f/xCI1sXFKvTqm/9Tfr9UnXVj52g0/8tnO7uclsYupWsH6H25imf1J9
 CXKTXrvbIpfaLIBW5gtwaiWARRX3urTjGOi8V0i6QPQXAn2Q39orMB6yN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VCZOo/jK
Subject: [Intel-wired-lan] [PATCH iwl-net v2] i40e: fix i40e_count_filters()
 to count only active/new filters
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
Cc: netdev@vger.kernel.org,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The bug usually affects untrusted VFs, because they are limited to 18MACs,
it affects them badly, not letting to create MAC all filters.
Not stable to reproduce, it happens when VF user creates MAC filters
when other MACVLAN operations are happened in parallel.
But consequence is that VF can't receive desired traffic.

Fix counter to be bumped only for new or active filters.

Fixes: 621650cabee5 ("i40e: Refactoring VF MAC filters counting to make more reliable")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v1 -> v2: add explanation about the bug
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 89a3401..6010a49 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1257,8 +1257,11 @@ int i40e_count_filters(struct i40e_vsi *vsi)
 	int bkt;
 	int cnt = 0;
 
-	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist)
-		++cnt;
+	hash_for_each_safe(vsi->mac_filter_hash, bkt, h, f, hlist) {
+		if (f->state == I40E_FILTER_NEW ||
+		    f->state == I40E_FILTER_ACTIVE)
+			++cnt;
+	}
 
 	return cnt;
 }
-- 
2.25.1

