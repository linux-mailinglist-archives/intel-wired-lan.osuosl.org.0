Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B500631F39F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 19 Feb 2021 02:31:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2AB66867D1;
	Fri, 19 Feb 2021 01:31:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTuUMgzmTGXM; Fri, 19 Feb 2021 01:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4667886691;
	Fri, 19 Feb 2021 01:31:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C8EA1BF2A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0457B86B22
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IXBhnEk0GWFX for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 Feb 2021 01:31:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E6AC286AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 Feb 2021 01:31:19 +0000 (UTC)
IronPort-SDR: 0YsdS50X9S5WqFZS73zvSvSpDvaSnqV7GZCUZMzwZ6WkOsT2lFn6A01vmXLUwx4FQWvV6tDDFR
 6soIUOKVjPkg==
X-IronPort-AV: E=McAfee;i="6000,8403,9899"; a="180191627"
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="180191627"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 17:31:19 -0800
IronPort-SDR: toEOSx6MUNQTuvCOg67EbIy5bDM7PiSG4AygKza0nRGrLy+1l1NXlDa0XjHv4frkRxuh9piz7U
 quBWU3A0gugw==
X-IronPort-AV: E=Sophos;i="5.81,187,1610438400"; d="scan'208";a="362760896"
Received: from hemutch-mobl.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.251.194])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2021 17:31:19 -0800
From: Ederson de Souza <ederson.desouza@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 18 Feb 2021 17:31:02 -0800
Message-Id: <20210219013104.54436-1-ederson.desouza@intel.com>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH next-queue v2 0/2] PPS and SDP support for
 i225
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

The i225 device has some PHC Hardware Clock features such as Pulse Per
Seconds interrupts or Software Defined Pins signals. This series add
support to some of them.

Changes from v1:
  - Addressed some checkpatch issues. However, most of them were about
  using BIT macro in code blocks whose readability would get worse in
  case I used it. Think of a some (1 << X) in the middle of (2 << Y).

  - Added more information on commit messages - trying to highlight some
  implementation details. However, the datasheet that is reference for
  these changes is not public yet, so I didn't mention it. As a
  workaround, I mention that most of it is the same as i210.

Ederson de Souza (2):
  igc: Enable internal i225 PPS
  igc: enable auxiliary PHC functions for the i225

 drivers/net/ethernet/intel/igc/igc.h         |  13 +
 drivers/net/ethernet/intel/igc/igc_defines.h |  63 ++++
 drivers/net/ethernet/intel/igc/igc_main.c    |  63 +++-
 drivers/net/ethernet/intel/igc/igc_ptp.c     | 295 ++++++++++++++++++-
 drivers/net/ethernet/intel/igc/igc_regs.h    |  10 +
 5 files changed, 441 insertions(+), 3 deletions(-)

-- 
2.30.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
