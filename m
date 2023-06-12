Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B739372C386
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 13:56:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ADA3D81FFC;
	Mon, 12 Jun 2023 11:56:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADA3D81FFC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686570962;
	bh=DBllMmaPpx705jFAyrspXO9ZqzynE03Py/QGdEYU5oI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ck1tUuEE3La7puWXjqcL5XpKEnXOGk2fB+93RSDtWhJzzgSbHSCAQ6MCP5Z4xudRk
	 x8dtNXFKk/G+jLXtsdxP3DiubJcku49oy0dyb3crZkYVByfv+2OuogWIvpDDQfY5vU
	 4DZ1M+0ns/LnhHGQHOy1ybtrWRwr35twtEVBz3ToaQWEunXqqNhcDgTcKKj0+KRo65
	 3tN1TinoWGB4pWCZLx1QkKjf8hR/i7Z6bUDrtY0xYFHPg1rWiGnqj3UapVMHNllRWi
	 eqqtcgTAEVj9cWAwsoDv4ueBMZZEMbesnHHJ85dgVozWttfGqvoAK6OFqFuIEAewcp
	 0FHk5YJ/qcVmg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5FxFHIXDZjQ6; Mon, 12 Jun 2023 11:56:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3CD781F3E;
	Mon, 12 Jun 2023 11:56:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A3CD781F3E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9170C1BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 11:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5DDCD41733
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 11:55:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DDCD41733
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mWZ8LLnsxMrn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 11:55:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6CC7E415D1
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6CC7E415D1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 11:55:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="358012672"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="358012672"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jun 2023 04:55:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10738"; a="781179273"
X-IronPort-AV: E=Sophos;i="6.00,236,1681196400"; d="scan'208";a="781179273"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga004.fm.intel.com with ESMTP; 12 Jun 2023 04:55:52 -0700
Received: from pelor.igk.intel.com (pelor.igk.intel.com [10.123.220.13])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 59FB234912;
 Mon, 12 Jun 2023 12:55:51 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 12 Jun 2023 07:53:34 -0400
Message-Id: <20230612115334.8262-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686570955; x=1718106955;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kGiZDMBs9zzbV4mOYI15lTjvZQcX2GITTlI5US0c2Oc=;
 b=VfqYDaSFu29K85b4h609qcESK+6S/9Sikk30UwBjTwdpHGvpxN9MPa3c
 pyx6VrTL1NVXCkh3E/q++1FWmI0Ush8W6KeB/KnD+jr4dNRlNC+pOjaZ3
 GpXNr4fHV2PXMD/0vOyAe6/3MGQL9+wz/1qYVnrNqOMpiv9O+YJjbe+SF
 nJwN1I8ACmjGAgpVDaZySy70/u3TXRIhgi+Lj8p8FjsVQjaUNmZm6A+/Y
 pfCCeAUtG0QjkNqdVUmE9Z2ITJ4k/uYHTBFB1yD4XMCCbpVXP6DAc10mM
 /G/bneeijYG3JD8lzjOju8GjX8JRlvALMsMWq1fKKepVwKyvCgtEY39JC
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VfqYDaSF
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: fix VSI LUT size flag
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fix VSI LUT size flag to be 0.

Fixes: 99faff6dea0a ("ice: clean up __ice_aq_get_set_rss_lut()")
Reported-by: Piotr Gardocki <piotrx.gardocki@intel.com>

---
Tony, please meld this commit into my recent refactor (see Fixes tag).
I have overlooked it while applying review changes, sorry :/
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 6ea0d4c017f0..acea49007f2a 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1819,7 +1819,7 @@ enum ice_lut_size {
  * LUT size and LUT type, last of which does not need neither shift nor mask.
  */
 enum ice_aqc_lut_flags {
-	ICE_AQC_LUT_SIZE_SMALL = BIT(1), /* size = 64 or 128 */
+	ICE_AQC_LUT_SIZE_SMALL = 0, /* size = 64 or 128 */
 	ICE_AQC_LUT_SIZE_512 = BIT(2),
 	ICE_AQC_LUT_SIZE_2K = BIT(3),
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
