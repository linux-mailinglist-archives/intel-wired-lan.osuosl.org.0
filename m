Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 68E565850F6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jul 2022 15:35:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6103B41B65;
	Fri, 29 Jul 2022 13:35:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6103B41B65
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659101733;
	bh=RrZf0GLgVW/ciTo5XY4K1xoLmU/NZ1ClOwzZn72oClU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=G3WFdNN3+hO58yWAp24DQeOBOVG3drGT5cYeXuAxZQookUBu/CIlLP5PAalidsvxt
	 QkobMrCCIPW2wAQnr8Br/fZmQ97cyfjJRCvRfFBYPW4jw3UY3nbbp4F8cpVOpvn2EZ
	 83AYRf3hgWYCZvRmnBZ5HrOhRFr4ECYv4knR0mQhuui8sFDFrG3frs2gFODUhZjmQM
	 vHN7lKGkUYbw0q0fD95LLL3+zaL5wg7T7kBU2IeXuVcJ6OB5bsdhq0s1H3XsAiXxy2
	 SziLR5+H6mloNbdb89Z5Tlm8eBDnSBQn9l43KMwgdTCzyxiRsjhJqX5oUshjuE/pCo
	 rtw3VigxrK4Tw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BRuLpfsqnTVz; Fri, 29 Jul 2022 13:35:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ECA6141893;
	Fri, 29 Jul 2022 13:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ECA6141893
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 695E41BF339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 09:25:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 337A883F82
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 09:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 337A883F82
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DIf5svRcW7m2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jul 2022 09:25:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 782ED83F7E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 782ED83F7E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jul 2022 09:25:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="286280775"
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="286280775"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2022 02:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,201,1654585200"; d="scan'208";a="660162930"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmsmga008.fm.intel.com with ESMTP; 29 Jul 2022 02:25:28 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Jul 2022 11:34:52 +0000
Message-Id: <20220729113452.858783-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 29 Jul 2022 13:35:27 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659086730; x=1690622730;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2uBLbsd+e0+qfaghg1TvJjKs7JJZYCfOHtIAj0pxCXg=;
 b=PFR9UIQ2eHX1tRSbU6gr2BS3y9eFozGd+XxEglqOIK6Zn8kGjiHZwto/
 IbNE1FUrIJnYKn0Fo1kbZvwZsW9GeUHKcGfuUjjEsSKP+/G+DQvzCJ258
 d03INiEbVMxFv6HqNF1wNUMRXn6fI1SWZYMzpmv+eAArsm6mLg4I0TECw
 CFV9adzJiEojTQQDq+xKfVsaA+jBgb2DmxNx7PcXv2Q0G3+hwGFbbkz2H
 YSnKldyW6xYTqYlK0s0e5BjSL6nTiKh34u+ec6977nMCqlr4A61iR8T6W
 3jyU/h4HqzwBtOovYM+UwbXKoH7XxVxoBvKUZWUn4FlKgkLVM35K3UiXd
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PFR9UIQ2
Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Disallow ip4 and ip6
 l4_4_bytes
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>,
 Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Return -EOPNOTSUPP, when user requests l4_4_bytes for raw IP4 or
IP6 flow director filters. Flow director does not support filtering
on l4 bytes for PCTYPEs used by IP4 and IP6 filters.
Without this patch, user could create filters with l4_4_bytes fields,
which did not do any filtering on L4, but only on L3 fields.

Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Kamil Maziarz  <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 156e92c43780..6695dbe61a04 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -4447,11 +4447,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 			return -EOPNOTSUPP;
 
 		/* First 4 bytes of L4 header */
-		if (usr_ip4_spec->l4_4_bytes == htonl(0xFFFFFFFF))
-			new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
-		else if (!usr_ip4_spec->l4_4_bytes)
-			new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
-		else
+		if (usr_ip4_spec->l4_4_bytes)
 			return -EOPNOTSUPP;
 
 		/* Filtering on Type of Service is not supported. */
@@ -4490,11 +4486,7 @@ static int i40e_check_fdir_input_set(struct i40e_vsi *vsi,
 		else
 			return -EOPNOTSUPP;
 
-		if (usr_ip6_spec->l4_4_bytes == htonl(0xFFFFFFFF))
-			new_mask |= I40E_L4_SRC_MASK | I40E_L4_DST_MASK;
-		else if (!usr_ip6_spec->l4_4_bytes)
-			new_mask &= ~(I40E_L4_SRC_MASK | I40E_L4_DST_MASK);
-		else
+		if (usr_ip6_spec->l4_4_bytes)
 			return -EOPNOTSUPP;
 
 		/* Filtering on Traffic class is not supported. */
-- 
2.25.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Slowackiego 173 | 80-298 Gdansk | Sad Rejonowy Gdansk Polnoc | VII Wydzial Gospodarczy Krajowego Rejestru Sadowego - KRS 101882 | NIP 957-07-52-316 | Kapital zakladowy 200.000 PLN.
Ta wiadomosc wraz z zalacznikami jest przeznaczona dla okreslonego adresata i moze zawierac informacje poufne. W razie przypadkowego otrzymania tej wiadomosci, prosimy o powiadomienie nadawcy oraz trwale jej usuniecie; jakiekolwiek przegladanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
