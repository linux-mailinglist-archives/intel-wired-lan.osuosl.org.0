Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F547B071
	for <lists+intel-wired-lan@lfdr.de>; Tue, 30 Jul 2019 19:43:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E777E8669F;
	Tue, 30 Jul 2019 17:43:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sKTsfLY3WRTg; Tue, 30 Jul 2019 17:43:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 974958671A;
	Tue, 30 Jul 2019 17:43:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 21BDA1BF255
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 1DD9685D97
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HyBewjJnZcwa for <intel-wired-lan@lists.osuosl.org>;
 Tue, 30 Jul 2019 17:10:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B372085D45
 for <intel-wired-lan@lists.osuosl.org>; Tue, 30 Jul 2019 17:10:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 10:10:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="183192748"
Received: from silpixa00399838.ir.intel.com (HELO
 silpixa00399838.ger.corp.intel.com) ([10.237.223.140])
 by orsmga002.jf.intel.com with ESMTP; 30 Jul 2019 10:10:10 -0700
From: Kevin Laatz <kevin.laatz@intel.com>
To: netdev@vger.kernel.org, ast@kernel.org, daniel@iogearbox.net,
 bjorn.topel@intel.com, magnus.karlsson@intel.com,
 jakub.kicinski@netronome.com, jonathan.lemon@gmail.com,
 saeedm@mellanox.com, maximmi@mellanox.com, stephen@networkplumber.org
Date: Tue, 30 Jul 2019 08:54:00 +0000
Message-Id: <20190730085400.10376-12-kevin.laatz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190730085400.10376-1-kevin.laatz@intel.com>
References: <20190724051043.14348-1-kevin.laatz@intel.com>
 <20190730085400.10376-1-kevin.laatz@intel.com>
X-Mailman-Approved-At: Tue, 30 Jul 2019 17:43:32 +0000
Subject: [Intel-wired-lan] [PATCH bpf-next v4 11/11] doc/af_xdp: include
 unaligned chunk case
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
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Kevin Laatz <kevin.laatz@intel.com>
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
index eeedc2e826aa..83f7ae5fc045 100644
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
