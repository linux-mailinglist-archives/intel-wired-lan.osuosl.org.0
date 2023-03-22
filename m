Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5986C4B68
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Mar 2023 14:13:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 95BC240130;
	Wed, 22 Mar 2023 13:13:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95BC240130
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679490791;
	bh=TN87rT/yij0x18sw4qaBzPCbT+Uhsswum4rZ+mrBtFs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Nhl+U39KOKYmON9lO/Al3s08OlluWK2PJDt9AlsLMJiltokp5K5tP7cWkMHwVI217
	 ENQ7sVcV9i1BSgZwHfxty57aU42aDG5+A8+jtJvJ5yBPBC3PfwNjqHs/Jzf0UMZfJ3
	 a1UhPQrvTgBpZW0QK9Dd1qFhembALiUyUmm9UGFPn1qdGhlZiJ59lyqVY/0QlijTwq
	 vHGtsWX172XJNKY4s43yLDyP8eHOSciGwCPWWiUW6a2Dd60uRKpT1mB3B1zsKTpqsM
	 NmfqYvyfTHxkqezv96L9fhWyo6NOuuc474vIIWzEAShCWS96nSLEn1oBYprhdNUljN
	 blKDhRQmc4cgw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z_eNGd1VQeCR; Wed, 22 Mar 2023 13:13:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 571F94016A;
	Wed, 22 Mar 2023 13:13:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 571F94016A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0C7021BF5DC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9E6041D6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9E6041D6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d0v8_Qts6bsV for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Mar 2023 13:12:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05B0E41D6A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05B0E41D6A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Mar 2023 13:12:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="340743729"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="340743729"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714394689"
X-IronPort-AV: E=Sophos;i="5.98,281,1673942400"; d="scan'208";a="714394689"
Received: from hextor.igk.intel.com ([10.123.220.6])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 06:12:50 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Mar 2023 14:12:27 +0100
Message-Id: <20230322131227.244687-6-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230322131227.244687-1-michal.wilczynski@intel.com>
References: <20230322131227.244687-1-michal.wilczynski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679490772; x=1711026772;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XrRAUTvg9mzwWYTA4owbQ8TVvB6LaWlf7Uz1MazZA0c=;
 b=UeZV6FJYH60FZitXRDt/+/9fjXl7JONh50NTg96UogaXN3ridcb5vm8A
 blVZHF460+FxS6YcpfHRZvk98Q1/Ezokv9wZL3pC75gZDr5oZOu1FnSrK
 /STpceH7ofw774SCXfs2wBmnGlmpJXBD13qkiaRaLH9lcYMuzYepynNhS
 sLkHO7Ra2y5G4rv1X3XPpiev49QmS/K4IP9kSdyfYswrwpBViYFqqLn8E
 NtViEQ8KSWrs5z9O80N63oFGiYj0utLE5aBtyiV1BvXtmdPdzNCQATI12
 YmTR83aWOag2tEjwMCPSSb8GKLrs+9tfb5xvL+/bIhH+VLwhT5JZeBOGw
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UeZV6FJY
Subject: [Intel-wired-lan] [PATCH net-next v11 5/5] ice: Document
 txbalancing parameter
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

New driver specific parameter 'txbalancing' was introduced.
Describe parameter in the documentation.

Signed-off-by: Michal Wilczynski <michal.wilczynski@intel.com>
---
 Documentation/networking/devlink/ice.rst | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/networking/devlink/ice.rst b/Documentation/networking/devlink/ice.rst
index 10f282c2117c..2c58a25550d2 100644
--- a/Documentation/networking/devlink/ice.rst
+++ b/Documentation/networking/devlink/ice.rst
@@ -7,6 +7,26 @@ ice devlink support
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
+       transmit scheduler topology, which helps to smooth out the transmit
+       performance. The default topology is 9-layer. Each layer represents
+       a physical junction in the network. Decreased number of layers
+       improves performance, but at the same time number of network junctions
+       is reduced, which might not be desirable depending on the use case.
+
 Info versions
 =============
 
-- 
2.37.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
