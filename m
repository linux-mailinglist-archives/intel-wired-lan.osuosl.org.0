Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B357490BA90
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jun 2024 21:08:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E75E04057E;
	Mon, 17 Jun 2024 19:08:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TIMTGKB-q1dO; Mon, 17 Jun 2024 19:08:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A108640581
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718651292;
	bh=MpU2F7Qree9VdQG/6RjTSk0rQ/YjC3gLkURs6cRN+Ho=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=TfoQh3OrcF4mXn5SMty/sXpbjzohFBo9i0oDIqxabADGVdmL5cmG9CArjnt9AKKz9
	 K7xdrnum5fHLXNfeMHbfuT2toFvXXCLATaExSxJCAxr9US/09GkvrhwUVo8a7mEy2I
	 bNWk83rdZjQ2BxBJB9ODz44C4jE0ieqSe1x48r5RdbqMeI3DBNefFUMyXV+WqfDlGd
	 V+xJJgytprX9lbdcbEvHsi8iqP/fISQAqd8iLmt0j7Xtc4MX1X8vL3Wp4zfZrQ/dWy
	 K0N7gFD9SFsqY+8MJFT7fzH2cfG0U0T3FS6+Px86pNpHzHGm4zvWv5r2ylCtbjfQo6
	 1hxvjPkBQc7vg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A108640581;
	Mon, 17 Jun 2024 19:08:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CB35E1BF291
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:08:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A9F44409E7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:08:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RZjvehUxoRP3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jun 2024 19:08:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=jesse.brandeburg@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 9E563405D3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E563405D3
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9E563405D3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jun 2024 19:08:09 +0000 (UTC)
X-CSE-ConnectionGUID: jE5vOiRDTPGSVVrDGR6qng==
X-CSE-MsgGUID: cNzBfPI4T2ipPLCub6qeIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="38020057"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="38020057"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 12:08:08 -0700
X-CSE-ConnectionGUID: Af4sU09/RDiceUaT6+q7yQ==
X-CSE-MsgGUID: 9+CYjlejRyO2smrduZLHFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41382602"
Received: from jbrandeb-spr1.jf.intel.com ([10.166.28.233])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 12:08:08 -0700
From: Jesse Brandeburg <jesse.brandeburg@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jun 2024 12:07:46 -0700
Message-ID: <20240617190759.2378532-1-jesse.brandeburg@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718651290; x=1750187290;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aGr5DLqARwZX9lb5jQqC0K8HcKZJKLJRypiGCDgZm+E=;
 b=Hjr+y2JdXIjYBvjutnHlpssvu4l8f5JMCw5Wfn+vrf71DpwdFcWAB8s6
 mqaqIFvb/cgxnncMyaIYpN5qQLSL8QuPdcSG47L33BfRGreFdkZeVDFtl
 i1A/nfH4257WitSndriqS9YC3TAuAjV8H8CMf86Z2JUtQXmZXvnZcGlgF
 NKqDgmdVrdHxIDcd7M9+5+nX3dvKru5ZtqmlluwTNbR5H3J0Y6bb6U/X/
 ejNMQnH1ViQGdp3uV7xk9vbQ9UPMn9FOCVS86rIwe2tXqSyotbWS2NTf+
 SrnDhvWSZ6DzpdkyQ7B5EffDiHIydAVw+QG0SQDhwnlDk9aGLwGL6qrI3
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Hjr+y2Jd
Subject: [Intel-wired-lan] [PATCH iwl-next v1] MAINTAINERS: update Intel
 Ethernet maintainers
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Since Jesse has moved to a new role, replace him with a new maintainer
to work with Tony on representing Intel networking drivers in the
kernel.

Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index cd3277a98cfe..007f3bda5eeb 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11050,8 +11050,8 @@ F:	include/drm/xe*
 F:	include/uapi/drm/xe_drm.h
 
 INTEL ETHERNET DRIVERS
-M:	Jesse Brandeburg <jesse.brandeburg@intel.com>
 M:	Tony Nguyen <anthony.l.nguyen@intel.com>
+M:	Przemek Kitszel <przemyslaw.kitszel@intel.com>
 L:	intel-wired-lan@lists.osuosl.org (moderated for non-subscribers)
 S:	Supported
 W:	https://www.intel.com/content/www/us/en/support.html
-- 
2.43.0

