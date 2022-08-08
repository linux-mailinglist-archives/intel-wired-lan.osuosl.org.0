Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE7D58D01A
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 Aug 2022 00:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 35A2D4036F;
	Mon,  8 Aug 2022 22:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35A2D4036F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659997392;
	bh=zvdTmc8hXOCX4Q6W4Z4tB4pFWyxqKM/XJ2iuJ0fU6ik=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BEBdwl8awoSnPOtLh5yFMxhV9rSCFxOAHDPO1dqbyDNnIuH7+DucC8VdevcAiwV8Y
	 x8Y04eIAAE2PofBe2UpSogFnsaW2ysg/cbP18d3MpAr14RHE0qvFWqSJSVBRJqNTVJ
	 +AsJjQsnY1kYyIi6RFqPnqRc9/HdALTcnhh2FqbtA03NJnrWwMXEHq/VzM4xNaJmvA
	 FjSwYZqbmJfRPQM4i1paIrDhfxLrf78TdTMlkPDMFV4PiTKidtLXtmg49+kHDx33Yd
	 L+qZroX/GaZBaFWrB0XJtk5EjTXyDIYe3k6EFxQfBESBswCiQEN09BDgf0MpjqhHzD
	 usugDAZPgWI9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OLlgab6nNl1o; Mon,  8 Aug 2022 22:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 259F440320;
	Mon,  8 Aug 2022 22:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 259F440320
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8D4EB1BF330
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 22:23:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67A4340320
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 22:23:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67A4340320
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kOt8FXTAgbN6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Aug 2022 22:22:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A8BFB4015F
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A8BFB4015F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Aug 2022 22:22:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10433"; a="316628395"
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="316628395"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 15:22:58 -0700
X-IronPort-AV: E=Sophos;i="5.93,222,1654585200"; d="scan'208";a="604531924"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2022 15:22:58 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  8 Aug 2022 15:22:51 -0700
Message-Id: <20220808222251.1966306-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659997379; x=1691533379;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=y9nYaYiqr8B+Xn+fI68ru9pb72d6ijHQhZ6xRf4Qhsg=;
 b=LH54VD+VFusx86nTnhS5SX/NNAxuir72svuHMtGwSzY/eYwvbZoIgdiD
 ouBfe61HNXShCM+UIp8itgN8ms6QMpSlzZNAwkE0KOs49rl1PbkC4MLbP
 mNnACrdMKsmdrCgZiH+OC6RWgA145mpY9F3VMJHkKoCcGc6dBHbUp+0+k
 UALT4lsbMRF3sr6wjWMRJbnUyeZ9twJmj3rAKeEUng9NPudlZmZGcV8cK
 V5YOGWpeHglj8FK8unLf9QzBykkGiXOFSfifUNpDQ/XwmVupmY5RbaRBw
 Eke0zoqrV5Lcb+TU/YRs9ymiQmgVgcAHYY/r7FH+A0WEP9d3J3xkiKeJx
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LH54VD+V
Subject: [Intel-wired-lan] [PATCH net] ice: Don't double unplug aux on peer
 initiated reset
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

In the IDC callback that is accessed when the aux drivers request a reset,
the function to unplug the aux devices is called.  This function is also
called in the ice_prepare_for_reset function.  This double call is causing
a NULL pointer dereference.

The correct place to unplug the aux devices for a reset is in the
prepare_for_reset function, as this is a common place for all reset flows.
It also has built in protection from being called twice in a single reset
instance before the aux devices are replugged.

Fixes: f9f5301e7e2d4 ("ice: Register auxiliary device to provide RDMA")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index eb40526ee179..9afcf030201e 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -2397,8 +2397,6 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset)
 		return -EBUSY;
 	}
 
-	ice_unplug_aux_dev(pf);
-
 	switch (reset) {
 	case ICE_RESET_PFR:
 		set_bit(ICE_PFR_REQ, pf->state);
-- 
2.35.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
