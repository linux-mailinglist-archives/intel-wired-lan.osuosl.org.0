Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 404D612F2D9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Jan 2020 03:09:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AA3448660D;
	Fri,  3 Jan 2020 02:09:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FyNfRV-rQWzN; Fri,  3 Jan 2020 02:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B05548666C;
	Fri,  3 Jan 2020 02:09:52 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79ED61BF20D
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 74A7C20412
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:09:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AMDtuYSAnEYB for <intel-wired-lan@osuosl.org>;
 Fri,  3 Jan 2020 02:09:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 30D312036E
 for <intel-wired-lan@osuosl.org>; Fri,  3 Jan 2020 02:09:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 18:09:48 -0800
X-IronPort-AV: E=Sophos;i="5.69,389,1571727600"; d="scan'208";a="394196920"
Received: from jbrandeb-desk.jf.intel.com ([10.166.244.152])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 18:09:48 -0800
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@osuosl.org
Date: Thu,  2 Jan 2020 18:09:38 -0800
Message-Id: <20200103020938.816066-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v1] i40e: use better trace path
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

I'm seeing compilation fail of the i40e driver for some reason.
I just checked 5.5-rc4 and the tip of net/net-next and all fail.
Fails all the way back to v5.1 at least, I didn't check further back.

repro steps:
$ gcc -v
gcc version 9.2.1 20190827 (Red Hat 9.2.1-1) (GCC)

$ git checkout -b my-net davem-net/master
$ make mrproper
$ make O=../my-net.obj defconfig allmodconfig modules_prepare
$ make O=../my-net.obj M=drivers/net/ethernet/intel/i40e

make[1]: Entering directory '/home/jbrandeb/git/my-net.obj'
  CC [M]  drivers/net/ethernet/intel/i40e/i40e_main.o
In file included from
/home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_trace.h:209,
                 from /home/jbrandeb/git/linux2/drivers/net/ethernet/intel/i40e/i40e_main.c:20:
/home/jbrandeb/git/linux2/include/trace/define_trace.h:95:42: fatal error: ./i40e_trace.h: No such file or directory
   95 | #include TRACE_INCLUDE(TRACE_INCLUDE_FILE)
      |                                          ^
compilation terminated.
make[2]: *** [/home/jbrandeb/git/linux2/scripts/Makefile.build:266: drivers/net/ethernet/intel/i40e/i40e_main.o] Error 1
make[1]: *** [/home/jbrandeb/git/linux2/Makefile:1693: drivers/net/ethernet/intel/i40e] Error 2
make[1]: Leaving directory '/home/jbrandeb/git/my-net.obj'
make: *** [Makefile:179: sub-make] Error 2

Just for sanity, I tried building the ice driver the same as above and
it succeeds, so the build does work for some drivers.

So fix the include path for the i40e driver trace file to be relative
to the kernel root like (some) other drivers do.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index 424f02077e2e..122a3fcb62b1 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
@@ -203,7 +203,7 @@ DEFINE_EVENT(
  * module.
  */
 #undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH .
+#define TRACE_INCLUDE_PATH ../../drivers/net/ethernet/intel/i40e
 #undef TRACE_INCLUDE_FILE
 #define TRACE_INCLUDE_FILE i40e_trace
 #include <trace/define_trace.h>
-- 
2.24.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
