Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 093834E69CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Mar 2022 21:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E6CBB40467;
	Thu, 24 Mar 2022 20:29:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FvP4u6K9bxze; Thu, 24 Mar 2022 20:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8553401E1;
	Thu, 24 Mar 2022 20:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1BA361BF333
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 20:19:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0627E41C64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 20:19:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=email-od.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hAmudSu5HgGi for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Mar 2022 20:19:29 +0000 (UTC)
X-Greylist: delayed 00:15:06 by SQLgrey-1.8.0
Received: from s1-ba86.socketlabs.email-od.com
 (s1-ba86.socketlabs.email-od.com [142.0.186.134])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 52629410B1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Mar 2022 20:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; d=email-od.com;i=@email-od.com;s=dkim;
 c=relaxed/relaxed; q=dns/txt; t=1648153169; x=1650745169;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:x-thread-info:subject:to:from:cc:reply-to;
 bh=P7TYb/u35hbac/cN4SRjaicN233JiaT0UeSvo0IMoBg=;
 b=htI7WCNmqX4v5r1o+IJ3suURi3u6rMCiVbZ49Q0cozH4fCKYuOLSPJZ4x4MFW/oPY1RnDZH5JBj0G70hoG62F0jiPwaJBq+nAI/H6tyq8DgRRi2jUf2CQRqj2q9wSULVmkykSpgUEidFBS8Q16pvOoqX2wqffHzrO+s3yYPIUK8=
X-Thread-Info: NDUwNC4xMi4xNWZhNzAwMDJjMDM0YjQuaW50ZWwtd2lyZWQtbGFuPWxpc3RzLm9zdW9zbC5vcmc=
Received: from r3.us-east-1.aws.in.socketlabs.com
 (r3.us-east-1.aws.in.socketlabs.com [142.0.191.3]) by mxrs4.email-od.com
 with ESMTP(version=Tls12 cipher=Aes256 bits=256);
 Thu, 24 Mar 2022 16:04:12 -0400
Received: from nalramli.com (d14-69-55-117.try.wideopenwest.com
 [69.14.117.55]) by r3.us-east-1.aws.in.socketlabs.com
 with ESMTP; Thu, 24 Mar 2022 16:03:54 -0400
Received: from cache-xsp21442.hosts.secretcdn.net (unknown [157.52.112.42])
 by nalramli.com (Postfix) with ESMTPS id 9F0F2200356;
 Thu, 24 Mar 2022 16:03:51 -0400 (EDT)
From: "Nabil S. Alramli" <dev@nalramli.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com, kuba@kernel.org,
 intel-wired-lan@lists.osuosl.org
Date: Thu, 24 Mar 2022 20:03:38 +0000
Message-Id: <20220324200338.121394-1-dev@nalramli.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 24 Mar 2022 20:29:01 +0000
Subject: [Intel-wired-lan] [next-queue] Add vsi.tx_restart to i40e ethtool
 stats
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
Cc: jdamato@fastly.com, nalramli@fastly.com,
 "Nabil S. Alramli" <dev@nalramli.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add vsi.tx_restart to the i40e driver ethtool statistics

Signed-off-by: Nabil S. Alramli <dev@nalramli.com>
---
 drivers/net/ethernet/intel/i40e/i40e_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index e484996..a9c2ce9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -299,6 +299,7 @@ static const struct i40e_stats i40e_gstrings_misc_stats[] = {
 	I40E_VSI_STAT("rx_cache_alloc", rx_page_alloc),
 	I40E_VSI_STAT("rx_cache_waive", rx_page_waive),
 	I40E_VSI_STAT("rx_cache_busy", rx_page_busy),
+	I40E_VSI_STAT("tx_restart", tx_restart),
 };
 
 /* These PF_STATs might look like duplicates of some NETDEV_STATs,
-- 
2.7.4

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
