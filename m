Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CTXwC1HqImq5fAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:25:05 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8FA649441
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 17:25:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=i7efvGe8;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9CAF260BA5;
	Fri,  5 Jun 2026 15:25:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PBIRn4zypLCy; Fri,  5 Jun 2026 15:25:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1D66160C07
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780673102;
	bh=VmBW/uhWD/1jw/JeXTNkNYLb0WuY0wYLi7Jz5l6awlc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i7efvGe8CTHIfcbkM0EKsrkpDCMi/Xvy8rZJljqlJRyjpLPgNCXSDAoeGDuR2DWkC
	 o+tYMjgCeYS9lG/goZFTMZU1jS+WF4FAMw8wf25Ja6wNtsp2Rz+MckzRBWdSmVb0So
	 0hN1L5Rd0aRmcBrTBZd+mtnkPeB/CwpCEX8lkBSh23uSfom7IZgFhLD4K2KrmzweiE
	 R2hvnlxMgP7fHcS71WkCMOp4mXpjc30e11IWmUDyJDUd53H8EI10XWWdHO7y//znkp
	 2WOjo7eL30YzWhldMbqkAGAI7iRbwNH642g+/PVei4qUQmBjNRVTUU+EyzDRsLnZRI
	 fMoiDgtfX8v+A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1D66160C07;
	Fri,  5 Jun 2026 15:25:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B8C71F4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:24:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B60DE410ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:24:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yPE88WWGFZxt for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 15:24:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=grzegorz.nitka@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B18AB40FF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B18AB40FF6
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B18AB40FF6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 15:24:58 +0000 (UTC)
X-CSE-ConnectionGUID: zenntpcXTlSV7zA2yxDDlg==
X-CSE-MsgGUID: 03jsxP2MSwC4VFdDza9Mhw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="106948909"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="106948909"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 08:24:58 -0700
X-CSE-ConnectionGUID: gvrxHxLqSLqVo9aWzKBHhQ==
X-CSE-MsgGUID: 6E4nhqgKRZuFZssbvi720Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,189,1774335600"; d="scan'208";a="249798571"
Received: from gklab-003-001.igk.intel.com ([10.91.173.48])
 by orviesa005.jf.intel.com with ESMTP; 05 Jun 2026 08:24:54 -0700
From: Grzegorz Nitka <grzegorz.nitka@intel.com>
To: netdev@vger.kernel.org
Date: Fri,  5 Jun 2026 17:20:20 +0200
Message-Id: <20260605152030.891570-2-grzegorz.nitka@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20260605152030.891570-1-grzegorz.nitka@intel.com>
References: <20260605152030.891570-1-grzegorz.nitka@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780673099; x=1812209099;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iUOOCQLHdnrNfXF3HMHs/v47S8LPHgGnXOXq/FTBrw4=;
 b=iHAinWZC5sh65qutjyQnSEAwreW6dgqgULtrsS4OqSAm6UIzCjylMRMh
 MUKXa+zBaIQdqW+s5ZPs3r2VRA6ZrOE6VU3Q0gPbjrbRGJA2ZnlVHSv4G
 veawgGtTgifxQ53POSoZ4VB85Gvn8jlD2dP3ZABYEES3UJae634ZzfCX9
 UxkATQKTks7cFRnDUP7a0z4CPytHJLiKB6U6SmHbeb+V58aIE2GgLH6OU
 6E6fo7Jsk1sGfnOBaFaMAeOU/ujRA/Q+0hiCE0k26M2aowbMvYar5tdpY
 cVTLsgITrjznUvJVaqMmGCijVRk2sCaWIk6wuGZUUdNsfNDB78J3koL+b
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iHAinWZC
Subject: [Intel-wired-lan] [PATCH v13 net-next 01/11] dpll: add generic DPLL
 type
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
Cc: ivecera@redhat.com, vadim.fedorenko@linux.dev, kuba@kernel.org,
 jiri@resnulli.us, edumazet@google.com, przemyslaw.kitszel@intel.com,
 richardcochran@gmail.com, donald.hunter@gmail.com,
 linux-kernel@vger.kernel.org, arkadiusz.kubalewski@intel.com,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>, andrew+netdev@lunn.ch,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 Prathosh.Satish@microchip.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net, Jiri Pirko <jiri@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:ivecera@redhat.com,m:vadim.fedorenko@linux.dev,m:kuba@kernel.org,m:jiri@resnulli.us,m:edumazet@google.com,m:przemyslaw.kitszel@intel.com,m:richardcochran@gmail.com,m:donald.hunter@gmail.com,m:linux-kernel@vger.kernel.org,m:arkadiusz.kubalewski@intel.com,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:horms@kernel.org,m:Prathosh.Satish@microchip.com,m:anthony.l.nguyen@intel.com,m:pabeni@redhat.com,m:davem@davemloft.net,m:jiri@nvidia.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[redhat.com,linux.dev,kernel.org,resnulli.us,google.com,intel.com,gmail.com,vger.kernel.org,lunn.ch,lists.osuosl.org,microchip.com,davemloft.net,nvidia.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,nvidia.com:email];
	FROM_NEQ_ENVFROM(0.00)[grzegorz.nitka@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B8FA649441

Add DPLL_TYPE_GENERIC to represent DPLL devices which do not fit the
existing PPS or EEC classes.

The UAPI type is intentionally generic. During netdev discussion,
maintainers pointed out that introducing identifiers tied to a specific
placement or single design does not scale across ASICs and vendors.
The role of a DPLL is already inferable from the spawning driver,
bus device, and pin topology, without encoding additional
purpose-specific taxonomy in the type name.

Using a generic type keeps the UAPI extensible and avoids premature
naming that may become incorrect as new hardware topologies are
exposed through the DPLL subsystem.

Expose the new type through UAPI and netlink specification as "generic".

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
---
 Documentation/netlink/specs/dpll.yaml | 3 +++
 drivers/dpll/dpll_nl.c                | 2 +-
 include/uapi/linux/dpll.h             | 2 ++
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/netlink/specs/dpll.yaml b/Documentation/netlink/specs/dpll.yaml
index 91a172617b3a..2bf83f6732ab 100644
--- a/Documentation/netlink/specs/dpll.yaml
+++ b/Documentation/netlink/specs/dpll.yaml
@@ -138,6 +138,9 @@ definitions:
       -
         name: eec
         doc: dpll drives the Ethernet Equipment Clock
+      -
+        name: generic
+        doc: generic dpll type for devices outside PPS/EEC classes
     render-max: true
   -
     type: enum
diff --git a/drivers/dpll/dpll_nl.c b/drivers/dpll/dpll_nl.c
index b1d9182c7802..ed3bbe9841ea 100644
--- a/drivers/dpll/dpll_nl.c
+++ b/drivers/dpll/dpll_nl.c
@@ -37,7 +37,7 @@ const struct nla_policy dpll_reference_sync_nl_policy[DPLL_A_PIN_STATE + 1] = {
 static const struct nla_policy dpll_device_id_get_nl_policy[DPLL_A_TYPE + 1] = {
 	[DPLL_A_MODULE_NAME] = { .type = NLA_NUL_STRING, },
 	[DPLL_A_CLOCK_ID] = { .type = NLA_U64, },
-	[DPLL_A_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 2),
+	[DPLL_A_TYPE] = NLA_POLICY_RANGE(NLA_U32, 1, 3),
 };
 
 /* DPLL_CMD_DEVICE_GET - do */
diff --git a/include/uapi/linux/dpll.h b/include/uapi/linux/dpll.h
index cb363cccf2e2..55eaa82f5f98 100644
--- a/include/uapi/linux/dpll.h
+++ b/include/uapi/linux/dpll.h
@@ -109,10 +109,12 @@ enum dpll_clock_quality_level {
  * enum dpll_type - type of dpll, valid values for DPLL_A_TYPE attribute
  * @DPLL_TYPE_PPS: dpll produces Pulse-Per-Second signal
  * @DPLL_TYPE_EEC: dpll drives the Ethernet Equipment Clock
+ * @DPLL_TYPE_GENERIC: generic dpll type for devices outside PPS/EEC classes
  */
 enum dpll_type {
 	DPLL_TYPE_PPS = 1,
 	DPLL_TYPE_EEC,
+	DPLL_TYPE_GENERIC,
 
 	/* private: */
 	__DPLL_TYPE_MAX,
-- 
2.39.3

