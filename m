Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDA1A7853A
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Apr 2025 01:36:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9187361188;
	Tue,  1 Apr 2025 23:36:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cdwjK2DSI7rr; Tue,  1 Apr 2025 23:36:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCA2961025
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1743550569;
	bh=XvMv/S8QyGPQT9XLkOfoUECiFVvZGjtmw1CqslDIcfQ=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=LpYOEA2GUEKa96q23Qg+XotbyWIyj+j3wIXUQYcRWqolLi/HorIiXHK2JKmkgwISk
	 dVGclKQGMrC9V+hjrdGtoKYyu7QCgw7qT5+aaU+VAF1kyKNa4YEN/mTT/06cTkSW1p
	 tpS+aeWQhCDaIZnOtZL3G8l5NgdssLBrJSRKzO/rP2UFPYz9RpXGlYOUcAIU6uOHie
	 KwMVAup6q7Q1c7IE/fhts6rpZt0vEVCvHFDMk+GN66nyPE/vNPDnkMOxICbDkx1cxT
	 260uNEIE+Z/MvB1gpmukx4pE5o/cj5R5/sTEmMPaKEUj7uzjnCcNyQVZspk76de9Z7
	 iB3bDjsbBZDmQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCA2961025;
	Tue,  1 Apr 2025 23:36:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 340676C
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 14A584134D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ux1UqKsCxTst for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6EF6C40D11
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EF6C40D11
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6EF6C40D11
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Apr 2025 23:36:07 +0000 (UTC)
X-CSE-ConnectionGUID: bFECatrqQnuZeDeL8WLBZg==
X-CSE-MsgGUID: GyS/xgtIS76e8gW1rg9DHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="55527601"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="55527601"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:06 -0700
X-CSE-ConnectionGUID: 4NMSO+7wQGOQXU4NTo+J0Q==
X-CSE-MsgGUID: D3mvMJEISPiz14zAb88Hgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="127354847"
Received: from jekeller-desk.jf.intel.com ([10.166.241.15])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 16:36:05 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Tue, 01 Apr 2025 16:35:30 -0700
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-jk-igc-ptm-fixes-v4-v4-2-c0efb82bbf85@intel.com>
References: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
In-Reply-To: <20250401-jk-igc-ptm-fixes-v4-v4-0-c0efb82bbf85@intel.com>
To: Anthony Nguyen <anthony.l.nguyen@intel.com>
Cc: david.zage@intel.com, vinicius.gomes@intel.com, 
 rodrigo.cadore@l-acoustics.com, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Christopher S M Hall <christopher.s.hall@intel.com>, 
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>, 
 Mor Bar-Gabay <morx.bar.gabay@intel.com>, 
 Avigail Dahan <avigailx.dahan@intel.com>, 
 Corinna Vinschen <vinschen@redhat.com>
X-Mailer: b4 0.14.2
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743550567; x=1775086567;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=v60S6CK068CXw5LqEBg3g5eGz5n2mMx+UTlpFbENs0g=;
 b=ZfNpFBS7g7AjH/dA1ecYvueISNep/1krLw29POpOvODdsdXVAi8xgBwC
 ZADQEH3Gndi73kjIsurC3FpKF20r8Q5vlvjhBNa3AnC2e0j2lZF3V8Gc/
 h0sv+4PofICs2o26/Dkli54N5C5DBtHHUrRkKSlYQxjoqPAKaZLJxxG9d
 SxPOB3sHAcP7V2ktiC2lj54RIk6nWr6xxk0HhA8AF1SxQpfoX4HeVfx2N
 mrYs0MRDd8E+/bW+EFPqBfGSBdxZshFAzNoGSux+DKc3qDi2dG0s0HTz5
 edhwLzASqmqU1wT6yP3dKGvuhgK2vMHxSFa7/iNcOeeFc/4LKFVb0LdNi
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZfNpFBS7
Subject: [Intel-wired-lan] [PATCH iwl-net v4 2/6] igc: increase wait time
 before retrying PTM
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

From: Christopher S M Hall <christopher.s.hall@intel.com>

The i225/i226 hardware retries if it receives an inappropriate response
from the upstream device. If the device retries too quickly, the root
port does not respond.

The wait between attempts was reduced from 10us to 1us in commit
6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 1 us"), which
said:

  With the 10us interval, we were seeing PTM transactions take around
  12us. Hardware team suggested this interval could be lowered to 1us
  which was confirmed with PCIe sniffer. With the 1us interval, PTM
  dialogs took around 2us.

While a 1us short cycle time was thought to be theoretically sufficient, it
turns out in practice it is not quite long enough. It is unclear if the
problem is in the root port or an issue in i225/i226.

Increase the wait from 1us to 4us. Increasing to 2us appeared to work in
practice on the setups we have available. A value of 4us was chosen due to
the limited hardware available for testing, with a goal of ensuring we wait
long enough without overly penalizing the response time when unnecessary.

The issue can be reproduced with the following:

$ sudo phc2sys -R 1000 -O 0 -i tsn0 -m

Note: 1000 Hz (-R 1000) is unrealistically large, but provides a way to
quickly reproduce the issue.

PHC2SYS exits with:

"ioctl PTP_OFFSET_PRECISE: Connection timed out" when the PTM transaction
  fails

Fixes: 6b8aa753a9f9 ("igc: Decrease PTM short interval from 10 us to 1 us")
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Tested-by: Mor Bar-Gabay <morx.bar.gabay@intel.com>
Tested-by: Avigail Dahan <avigailx.dahan@intel.com>
Signed-off-by: Christopher S M Hall <christopher.s.hall@intel.com>
Reviewed-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_defines.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_defines.h b/drivers/net/ethernet/intel/igc/igc_defines.h
index 2ff292f5f63be29e42dc4491a56602d811cf22cc..d19325b0e6e0ba684abbe10482fecce92e405420 100644
--- a/drivers/net/ethernet/intel/igc/igc_defines.h
+++ b/drivers/net/ethernet/intel/igc/igc_defines.h
@@ -574,7 +574,10 @@
 #define IGC_PTM_CTRL_SHRT_CYC(usec)	(((usec) & 0x3f) << 2)
 #define IGC_PTM_CTRL_PTM_TO(usec)	(((usec) & 0xff) << 8)
 
-#define IGC_PTM_SHORT_CYC_DEFAULT	1   /* Default short cycle interval */
+/* A short cycle time of 1us theoretically should work, but appears to be too
+ * short in practice.
+ */
+#define IGC_PTM_SHORT_CYC_DEFAULT	4   /* Default short cycle interval */
 #define IGC_PTM_CYC_TIME_DEFAULT	5   /* Default PTM cycle time */
 #define IGC_PTM_TIMEOUT_DEFAULT		255 /* Default timeout for PTM errors */
 

-- 
2.48.1.397.gec9d649cc640

