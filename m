Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9782F57CDFA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jul 2022 16:44:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 226EE8479B;
	Thu, 21 Jul 2022 14:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 226EE8479B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658414656;
	bh=kMfxhub9qWPgLf63qlKL6DSnopbliBebOP30JTBj3mg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Chmu9lcLVLQB5jKyzWDMkF4r4t5Bs/C60GWLlhreY2sRLEnUd6Sf23yvyS3AVECAg
	 kzMsJlGgZJbuGwcSR8SMmRVTcYxmLHbzL0IRLiPj9/wNgYmrqTvyQGp7d3fBP2u7e3
	 zMJ4LIpCPH5YvTysdXQNmHzYWEJXRSYlnevNr6K+MkPWH0Vaj2n4hK16H2guUL6YsO
	 762bMABgk4vFNjut2AwKCxJiCL3q363f/aA7hxlHNV2PrViycEECAyLAkUmV1E7Rp8
	 tPIWu+jV27mHCHfGdYZhSinSrlUHdF3d2DXJtBvJzq0RM6hzH7SoDxiv7OYCQf4j4I
	 4xQq42DQ8DdMw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h5Jp8JtaD8PV; Thu, 21 Jul 2022 14:44:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 30EE3812EB;
	Thu, 21 Jul 2022 14:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 30EE3812EB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D70321BF338
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BE42142307
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE42142307
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W-US-jrPoxH8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jul 2022 14:43:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 08154422E3
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 08154422E3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jul 2022 14:43:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10414"; a="285828687"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="285828687"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 07:43:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="573766619"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2022 07:43:52 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jul 2022 16:43:24 +0200
Message-Id: <20220721144324.141416-6-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220721144324.141416-1-michal.wilczynski@intel.com>
References: <20220721144324.141416-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658414634; x=1689950634;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tufK50diQRWMUPRJoGqADhw/+l5i6dGqFp9lUj6khtA=;
 b=M4Xvm3sHKcOd8SIBr7V2UGHM8j7MGHsuI0QfFcBcTp0qscS3uRcbN4Zu
 nreUXjYP+hm7w8kJAx3pfwPkuS+pN5HkL6QNetM4mAArlk8o2HYb7Oh2X
 f62vj9JBzMEs3f77ZxZc7kgEV2VbZTSwIHyvmw21izWVTeLBIkVODEQ5r
 romfsan4TnNdj2V7kFQvYlm+lyxoeVzB4yvbERt0auKa4AUn56sdK89MY
 5LZ2sh+xnFadMS0krI7fA9+QbmmMuExvxl5K75bkRNGp9PExqWRyAcs14
 M2ykn3azh7ffQeN4xiTnDNffE42siZvO5DwNrORa5c1F4sTcCSKjMpvvL
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=M4Xvm3sH
Subject: [Intel-wired-lan] [PATCH net-next v7 5/5] ice: Document txbalancing
 parameter
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

New driver specific parameter 'txbalancing' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 Documentation/networking/devlink/ice.rst | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 8c082b139bbd..d260a58d1d5d 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -7,6 +7,23 @@ ice devlink support
 This document describes the devlink features implemented by the ``ice``
 device driver.
 
+Parameters
+=============
+
+.. list-table:: Driver-specific parameters implemented
+   :widths: 5 5 5 85
+
+   * - Name
+     - Type
+     - Mode
+     - Description
+   * - ``txbalancing``
+     - Boolean
+     - permanent
+     - This parameter gives user flexibility to choose the 5-layer
+       transmit scheduler topology which helps to smooth out the transmit
+       performance.
+
 Info versions
 =============
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
