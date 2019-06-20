Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F4E4DD8C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2019 00:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DA7486C1A;
	Thu, 20 Jun 2019 22:52:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Iw2czZdnXM5p; Thu, 20 Jun 2019 22:52:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9262086ADB;
	Thu, 20 Jun 2019 22:52:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 939131BF5E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8CE8F20770
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VAd3+raB68R7 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 16:54:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by silver.osuosl.org (Postfix) with ESMTPS id 0363620389
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 16:54:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 09:54:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,397,1557212400"; d="scan'208";a="183135206"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.110])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 09:54:08 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com
Date: Thu, 20 Jun 2019 08:39:24 +0000
Message-Id: <20190620083924.1996-12-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620083924.1996-1-kevin.laatz@intel.com>
References: <20190620083924.1996-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Thu, 20 Jun 2019 22:52:28 +0000
Subject: [Intel-wired-lan] [PATCH 11/11] doc/af_xdp: include unaligned chunk
 case
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
Cc: bruce.richardson@intel.com, ciara.loftus@intel.com,
 Kevin Laatz <kevin.laatz@intel.com>, intel-wired-lan@lists.osuosl.org,
 bpf@vger.kernel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The addition of unaligned chunks mode, the documentation needs to be
updated to indicate that the incoming addr to the fill ring will only be
masked if the user application is run in the aligned chunk mode. This patch
also adds a line to explicitly indicate that the incoming addr will not be
masked if running the user application in the unaligned chunk mode.

Signed-off-by: Kevin Laatz <kevin.laatz@intel.com>
---
 Documentation/networking/af_xdp.rst | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/Documentation/networking/af_xdp.rst b/Documentation/networking/af_xdp.rst
index e14d7d40fc75..16fbc68cac50 100644
--- a/Documentation/networking/af_xdp.rst
+++ b/Documentation/networking/af_xdp.rst
@@ -153,10 +153,12 @@ an example, if the UMEM is 64k and each chunk is 4k, then the UMEM has
 
 Frames passed to the kernel are used for the ingress path (RX rings).
 
-The user application produces UMEM addrs to this ring. Note that the
-kernel will mask the incoming addr. E.g. for a chunk size of 2k, the
-log2(2048) LSB of the addr will be masked off, meaning that 2048, 2050
-and 3000 refers to the same chunk.
+The user application produces UMEM addrs to this ring. Note that, if
+running the application with aligned chunk mode, the kernel will mask
+the incoming addr.  E.g. for a chunk size of 2k, the log2(2048) LSB of
+the addr will be masked off, meaning that 2048, 2050 and 3000 refers
+to the same chunk. If the user application is run in the unaligned
+chunks mode, then the incoming addr will be left untouched.
 
 
 UMEM Completion Ring
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
