Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F02326C94
	for <lists+intel-wired-lan@lfdr.de>; Sat, 27 Feb 2021 10:59:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 97EC16F82D;
	Sat, 27 Feb 2021 09:59:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f4BhwBEyIIWz; Sat, 27 Feb 2021 09:59:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A98316F52D;
	Sat, 27 Feb 2021 09:59:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0516A1BF21A
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 09:59:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E6D154F0D4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 09:59:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0YmTRdnCYnQc for <intel-wired-lan@lists.osuosl.org>;
 Sat, 27 Feb 2021 09:59:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 220064F0CC
 for <intel-wired-lan@lists.osuosl.org>; Sat, 27 Feb 2021 09:59:07 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 173BB64EC4;
 Sat, 27 Feb 2021 09:59:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1614419946;
 bh=z0l6Z80ab/fnbuWyyLHfc8ddd7Gy7qqdVmxMdvN1IGg=;
 h=From:To:Cc:Subject:Date:From;
 b=ZW2WyK8Lb0414PJGrmgaEJk4DFV5+qSCpJJKqesMlzLYoQO2KSiS1/VwSMyYAp8Ao
 QdMZzTYNqv5pTlPojMlSUzdkblhZenOdhOvjhA+nB719T7R0nKon/PGHjgzibNQUNI
 LbLf86AQ6pJGxnT2KvQPY6z5v1YDpxO//0DWGIWw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: jesse.brandeburg@intel.com,
	anthony.l.nguyen@intel.com
Date: Sat, 27 Feb 2021 10:58:58 +0100
Message-Id: <20210227095858.604463-1-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH] e1000e: use proper #include guard name in
 hw.h
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The include guard for the e1000e and e1000 hw.h files are the same, so
add the proper "E" term to the hw.h file for the e1000e driver.

This resolves some static analyzer warnings, like the one found by the
"lgtm.com" tool.

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: intel-wired-lan@lists.osuosl.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/net/ethernet/intel/e1000e/hw.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/hw.h b/drivers/net/ethernet/intel/e1000e/hw.h
index 69a2329ea463..f7954cadd979 100644
--- a/drivers/net/ethernet/intel/e1000e/hw.h
+++ b/drivers/net/ethernet/intel/e1000e/hw.h
@@ -1,8 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /* Copyright(c) 1999 - 2018 Intel Corporation. */
 
-#ifndef _E1000_HW_H_
-#define _E1000_HW_H_
+#ifndef _E1000E_HW_H_
+#define _E1000E_HW_H_
 
 #include "regs.h"
 #include "defines.h"
-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
