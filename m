Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F6449AC7
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2019 09:41:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C62421FEB7;
	Tue, 18 Jun 2019 07:40:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x-rDZs8Krjgf; Tue, 18 Jun 2019 07:40:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 14F2F204A6;
	Tue, 18 Jun 2019 07:40:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73FDA1BF2C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 07:40:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7067A87889
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 07:40:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9FK57aHbMUn9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2019 07:40:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02D6887829
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2019 07:40:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 00:40:56 -0700
X-ExtLoop1: 1
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jun 2019 00:40:55 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1hd8je-000H1E-EF; Tue, 18 Jun 2019 15:40:54 +0800
Date: Tue, 18 Jun 2019 15:40:43 +0800
From: kbuild test robot <lkp@intel.com>
To: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
Message-ID: <20190618074043.GA33787@lkp-kbuild11>
References: <201906181502.baIuT9Wk%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201906181502.baIuT9Wk%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: [Intel-wired-lan] [RFC PATCH jkirsher-next-queue] iavf:
 iavf_debug_d() can be static
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
Cc: intel-wired-lan@lists.osuosl.org, kbuild-all@01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


Fixes: d51cc48b07a8 ("iavf: Fix up debug print macro")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 iavf_main.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index a833219..779bd59 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -148,7 +148,7 @@ enum iavf_status iavf_free_virt_mem_d(struct iavf_hw *hw,
  * @mask: debug level mask
  * @fmt_str: printf-type format description
  **/
-void iavf_debug_d(void *hw, u32 mask, char *fmt_str, ...)
+static void iavf_debug_d(void *hw, u32 mask, char *fmt_str, ...)
 {
 	char buf[512];
 	va_list argptr;
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
