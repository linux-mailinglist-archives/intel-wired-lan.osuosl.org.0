Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F12521F224D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Jun 2020 01:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A18F488299;
	Mon,  8 Jun 2020 23:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2nnmHk8rrPFT; Mon,  8 Jun 2020 23:07:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 607CB883F1;
	Mon,  8 Jun 2020 23:07:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0516E1BF381
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:07:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B493B21509
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gz4NOD4efwiL for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jun 2020 23:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 0A36B204FB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jun 2020 23:07:53 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0B40D2089D;
 Mon,  8 Jun 2020 23:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657672;
 bh=fD1Mv3OSJzmSUoaS2M1EiI+nfFsRVHr4ttthDic856o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yLcLmBS7FoL2qRPOE2hgzCre7I7T+KsLeat8v5PtKod9Z/buhtfotseDmmm/c30F0
 YPtCBtvbLqFp/65XL8JfJyOPMmxCHkcjvaw8l7F/KFScY958AvQ1229gYgSodMtj6d
 iYFBEGykAfkAXyC/6NwBJ+XWIf9eb8g24a+KmYrs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Date: Mon,  8 Jun 2020 19:02:54 -0400
Message-Id: <20200608230607.3361041-81-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
Subject: [Intel-wired-lan] [PATCH AUTOSEL 5.7 081/274] ice: fix PCI device
 serial number to be lowercase values
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>

[ Upstream commit 1a9c561aa35534a03c0aa51c7fb1485731202a7c ]

Commit ceb2f00707f9 ("ice: Use pci_get_dsn()") changed the code to
use a new function to get the Device Serial Number. It also changed
the case of the filename for loading a package on a specific NIC
from lowercase to uppercase. Change the filename back to
lowercase since that is what we specified.

Fixes: ceb2f00707f9 ("ice: Use pci_get_dsn()")
Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
Tested-by: Andrew Bowers <andrewx.bowers@intel.com>
Signed-off-by: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 599dab844034..545817dbff67 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3126,7 +3126,7 @@ static char *ice_get_opt_fw_name(struct ice_pf *pf)
 	if (!opt_fw_filename)
 		return NULL;
 
-	snprintf(opt_fw_filename, NAME_MAX, "%sice-%016llX.pkg",
+	snprintf(opt_fw_filename, NAME_MAX, "%sice-%016llx.pkg",
 		 ICE_DDP_PKG_PATH, dsn);
 
 	return opt_fw_filename;
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
