Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 548147D00FA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Oct 2023 19:52:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6F3884130;
	Thu, 19 Oct 2023 17:52:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6F3884130
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697737924;
	bh=8y9XGKBDAbTHMDPvcsXLMqcVwObmRZFegVld6ps7q/s=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zM4uC4/oWgVKcThLkO21nFN+qCj/wr5aqtFDXwZZ6BY/CDgXEXrgxenFktuHRa8hf
	 ts8WzDkqdASFwdya8gvRmpJw0Z9JXyqc1PqRJETXBVVPuwD/RRcwQWzMleExGkStr/
	 MtyTIknyVqfgH4RlNEdO5z9kccYndCyLySTI5wHEfy9ph8LJsutT7ISSCVL5wK0Q58
	 HVqC6oinj0oR+L+lhmfzgx+7+pUo8HXL37gSqIYEFLgcBgPfws4lnEOd2dy0eGNdoC
	 4uMh90ukVKqJ/z/5HuMSDfH6q6f8UTS8H25/TOb2W+/Jm9ZbPJH89BHsiY0Q6DgwSq
	 b5KTvy2P50x/g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GgnAtDGCfavu; Thu, 19 Oct 2023 17:52:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88C6C8411F;
	Thu, 19 Oct 2023 17:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88C6C8411F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F138D1BF342
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D5F8F60E65
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:49:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5F8F60E65
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQc1ZLtkmMKL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Oct 2023 08:49:52 +0000 (UTC)
X-Greylist: delayed 383 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 19 Oct 2023 08:49:52 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2FBF460E2E
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by smtp3.osuosl.org (Postfix) with SMTP id 2FBF460E2E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Oct 2023 08:49:51 +0000 (UTC)
Received: from localhost.localdomain (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPA id A03B0608BCF89;
 Thu, 19 Oct 2023 16:42:57 +0800 (CST)
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com
Date: Thu, 19 Oct 2023 16:42:42 +0800
Message-Id: <20231019084241.1529662-1-suhui@nfschina.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 19 Oct 2023 17:51:54 +0000
Subject: [Intel-wired-lan] [PATCH] i40e: add an error code check in
 i40e_vsi_setup
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Su Hui <suhui@nfschina.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

check the value of 'ret' after calling 'i40e_vsi_config_rss'.

Signed-off-by: Su Hui <suhui@nfschina.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index de7fd43dc11c..9205090e5017 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14567,6 +14567,8 @@ struct i40e_vsi *i40e_vsi_setup(struct i40e_pf *pf, u8 type,
 	if ((pf->hw_features & I40E_HW_RSS_AQ_CAPABLE) &&
 	    (vsi->type == I40E_VSI_VMDQ2)) {
 		ret = i40e_vsi_config_rss(vsi);
+		if (ret)
+			goto err_rings;
 	}
 	return vsi;
 
-- 
2.30.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
