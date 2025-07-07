Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9907FAFAF56
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jul 2025 11:14:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C246760B6D;
	Mon,  7 Jul 2025 09:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hHlhl_Wy8Bxs; Mon,  7 Jul 2025 09:14:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3172860BA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1751879696;
	bh=6kkWP7HXYZCQSyhiGmcYYpFBNtAT3EXr6oZ+T8rb9zA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=1huOKC7q/7vAjhqicO9gmPLKcHCOk7qvEO+WOz5H1oQv4wyf9I+hdJR3j0nOS7iY3
	 ode/VWjpTRf0dV7M6XA28nzUbhqgWMLzXN54Z4I4kZ3b2+ScoKKVslYRiY0uKsCATA
	 cVpxxgRe4kC0JZBgY7n8WORdQbUpsXIj5CM3f13B+qc3k+vHEIkDtl82VwOGERfWkv
	 SxQUhshqEWKH1pQ3aaq5dRIgflpKP/2wHM4WJK/U5aaI/XapGTRFwIdRZuH+eXofwa
	 jTXSGl0eu4YeHUxdEeDAya5jBZDOYRMhnCfo0MZvFRFnM+1RDzFBFhdl7d450jx4An
	 SEBPKctJjzebQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3172860BA6;
	Mon,  7 Jul 2025 09:14:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id ED3531BF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D2E3A81E30
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:14:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OKKR-eWiirpu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jul 2025 09:14:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B288819CC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B288819CC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B288819CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jul 2025 09:14:53 +0000 (UTC)
X-CSE-ConnectionGUID: JoqZqCLzQZyUZMwPxB/jpA==
X-CSE-MsgGUID: J9E2+R2JTIuQVeK94rlH9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11486"; a="57897095"
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="57897095"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 02:14:54 -0700
X-CSE-ConnectionGUID: D1hSd1KqSsyPbzd4ucoQSA==
X-CSE-MsgGUID: oJwViJ0XTbuGe/IHjBdqnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,293,1744095600"; d="scan'208";a="154578647"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa006.jf.intel.com with ESMTP; 07 Jul 2025 02:14:51 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org, dhowells@redhat.com,
 David.Kaplan@amd.com, jiri@resnulli.us, przemyslaw.kitszel@intel.com,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Date: Mon,  7 Jul 2025 10:58:36 +0200
Message-Id: <20250707085837.1461086-1-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751879694; x=1783415694;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=86jbnWjsFrfyIh+jJs4CKjLVgJRfSWiYlFK4OCBp3sk=;
 b=eWbKy5/mNAjHuR2TlYWehQwXQZUy+CCGtuILVloh17S6+fb0Jw+R6uXX
 MfapXKtr48ba+Zuk+TdzT8q+ML9o3FBK0Cx7+tuGfkxf4z3le7ni6C0E6
 8NRJ11IC+LVvvWt7DSAWx+1zill1dU5UsoNvAKJMh6GqlnsaW15aryerl
 214DlsJzr6n0X97tqrj8wQaxDl7TF/Kf9Y/sxhdD+1BPuuP5O7VUMvyQE
 xEPQVvqvjCx7ycTOqRpDLoI+WB/V8wOxVTjF5LpE61p/rnxU7D3wDqCzv
 gf20l3oFEjWK5tXB0rHRhpis6YUdTwduzzzy7MhePjFQnIvt0+fuiQkkT
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eWbKy5/m
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/2] devlink: allow driver to
 freely name interfaces
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently when adding devlink port it is prohibited to let
a driver name an interface on its own. In some scenarios
it would not be preferable to provide such limitation,
eg some compatibility purposes.

Add flag skip_phys_port_name_get to devlink_port_attrs struct
which indicates if devlink should not alter name of interface.

Suggested-by: Jiri Pirko <jiri@resnulli.us>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
v2: add skip_phys_port_name_get flag to skip changing if name
---
 include/net/devlink.h | 7 ++++++-
 net/devlink/port.c    | 3 +++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/net/devlink.h b/include/net/devlink.h
index 0091f23a40f7..414ae25de897 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -78,6 +78,7 @@ struct devlink_port_pci_sf_attrs {
  * @flavour: flavour of the port
  * @split: indicates if this is split port
  * @splittable: indicates if the port can be split.
+ * @skip_phys_port_name_get: if set devlink doesn't alter interface name
  * @lanes: maximum number of lanes the port supports. 0 value is not passed to netlink.
  * @switch_id: if the port is part of switch, this is buffer with ID, otherwise this is NULL
  * @phys: physical port attributes
@@ -87,7 +88,11 @@ struct devlink_port_pci_sf_attrs {
  */
 struct devlink_port_attrs {
 	u8 split:1,
-	   splittable:1;
+	   splittable:1,
+	   skip_phys_port_name_get:1; /* This is for compatibility only,
+				       * newly added driver/port instance
+				       * should never set this.
+				       */
 	u32 lanes;
 	enum devlink_port_flavour flavour;
 	struct netdev_phys_item_id switch_id;
diff --git a/net/devlink/port.c b/net/devlink/port.c
index 939081a0e615..bf52c8a57992 100644
--- a/net/devlink/port.c
+++ b/net/devlink/port.c
@@ -1522,6 +1522,9 @@ static int __devlink_port_phys_port_name_get(struct devlink_port *devlink_port,
 	if (!devlink_port->attrs_set)
 		return -EOPNOTSUPP;
 
+	if (devlink_port->attrs.skip_phys_port_name_get)
+		return 0;
+
 	switch (attrs->flavour) {
 	case DEVLINK_PORT_FLAVOUR_PHYSICAL:
 		if (devlink_port->linecard)
-- 
2.31.1

