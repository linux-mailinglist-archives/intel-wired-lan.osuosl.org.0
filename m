Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uGPLNopl82le2AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 16:22:02 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F64A3F9C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 16:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E312E84CD2;
	Thu, 30 Apr 2026 14:22:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JlyhfDuXbjud; Thu, 30 Apr 2026 14:22:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5B3BB84CDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777558920;
	bh=g6NlEwcDi6WJy6GLs/qxLldlfZfJsbFuOm7fXsHr43g=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ZVKc/Mgpbg13mj1nZHl4jfJjIvb+prq9pY6DgFtxOnFVWSnvQJ0FV5cgtiTgBFgfb
	 GQ5tqXVMnwUTBOQrXKlKgpch2OFioyhNzM6ecJQeKjX7tffXTiuLYRXzdkVBlm4L19
	 zcjMQxRU5wd16Zk7givnbImfgPj7QR68MafaO9Ifk4e/Iq2i2pAD8IfZoyUBf71bdn
	 LZ0EamuA0p68p48l44rE1gmeejLiIe/7XQgtrntqj97OnZ9KHogQdeXF/uKlsXdal/
	 dYBkCtLHnAVXvA+KlRcGFPVBcOb+Csg60GA5hCMwn4aeH+z7DOO0IAJzdWvT0BrvsQ
	 Me37qRwE2wtMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5B3BB84CDC;
	Thu, 30 Apr 2026 14:22:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E138318E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:21:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C72094026A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:21:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X-_mhguwe0BD for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 14:21:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0D8094044E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0D8094044E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D8094044E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 14:21:56 +0000 (UTC)
X-CSE-ConnectionGUID: vmtwqMbxTV6dI3BsTs4HZA==
X-CSE-MsgGUID: 3pTTpnowQL6osyqydmMeVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11772"; a="89105266"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="89105266"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 07:21:55 -0700
X-CSE-ConnectionGUID: wa+JDUS8Qh25A3rGOjwIWA==
X-CSE-MsgGUID: +6CKxlaFR/W8YI6VBDFvRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="236382905"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa004.fm.intel.com with ESMTP; 30 Apr 2026 07:21:54 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Thu, 30 Apr 2026 16:21:53 +0200
Message-ID: <20260430142153.249062-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777558917; x=1809094917;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DCJwLVpYE8Oxc/iSi+wYoHkqwCDP0eV6aMqtwc865HA=;
 b=NlSaP/ZohNxAaC072QWzj/oXRB3kKyHQAF+H7p20U/yn7Bpc6XcdU5fQ
 8lhh5cUcP78puaGfc0jQicM8UOlPwk6c1U2NAPBwRxtDruO5ENp80FDNP
 qUyZXbXvzG1AFgUda7E9vMIWEPefJJAU6iDOWKrmxFmug0+xCM0Z5k7gC
 Zuekdq3DBGtKVuGw23jZfl/hoj/yAKCdfO3NcJBAeqlfDGRUK4zjiFn06
 x50QzaAU767b8w2cE4hIzURcLmduCzdaiIdOJqPKcjqJNtoRK555Ay8ss
 oV8bUICZKY3NIkPT/wQ5r261Id3EAJmXy5r315BXn9y6gbs0mkFlLhwBM
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NlSaP/Zo
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: reject out-of-range ptype in
 ice_parser_profile_init
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
X-Rspamd-Queue-Id: 536F64A3F9C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

set_bit(rslt->ptype, prof->ptypes) operates on a DECLARE_BITMAP of
ICE_FLOW_PTYPE_MAX (1024) bits. Nothing prevents a malicious VF from
providing ptype >= 1024 through VIRTCHNL, resulting in a write past
the end of the bitmap and a kernel page fault.

Reproduced with a custom kernel module injecting a crafted
VIRTCHNL_OP_ADD_RSS_CFG on E810-C QSFP (8086:1592),
FW 4.91 0x800214af 1.3909.0, ICE COMMS DDP 1.3.53.0,
kernel 7.1.0-rc1.

crash_parser: ice_parser_profile_init @ ffffffffc0d61b60
crash_parser: setting ptype=0xffff (max valid=1023)
crash_parser: calling ice_parser_profile_init -- expect OOB crash!
BUG: kernel NULL pointer dereference, address: 0000000000000000
#PF: supervisor write access in kernel mode
#PF: error_code(0x0002) - not-present page
Oops: Oops: 0002 [#1] SMP NOPTI
CPU: 56 UID: 0 PID: 165011 Comm: insmod Kdump: loaded Tainted: G S U OE 7.1.0-rc1 #1
Hardware name: Intel Corporation S2600BPB/S2600BPB
RIP: 0010:ice_parser_profile_init+0x2d/0x1d0 [ice]
Call Trace:
 <TASK>
 ? __pfx_ice_parser_profile_init+0x10/0x10 [ice]
 crash_init+0x127/0xff0 [crash_parser]
 do_one_initcall+0x45/0x310
 do_init_module+0x64/0x270
 init_module_from_file+0xcc/0xf0
 idempotent_init_module+0x17b/0x280
 __x64_sys_finit_module+0x6e/0xe0

Bail out early with -EINVAL when ptype is out of range.

Fixes: e312b3a1e209 ("ice: add API for parser profile initialization")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_parser.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_parser.c b/drivers/net/ethernet/intel/ice/ice_parser.c
index f8e6963..3ede4c1 100644
--- a/drivers/net/ethernet/intel/ice/ice_parser.c
+++ b/drivers/net/ethernet/intel/ice/ice_parser.c
@@ -2368,6 +2368,9 @@ int ice_parser_profile_init(struct ice_parser_result *rslt,
 	u16 proto_off = 0;
 	u16 off;
 
+	if (rslt->ptype >= ICE_FLOW_PTYPE_MAX)
+		return -EINVAL;
+
 	memset(prof, 0, sizeof(*prof));
 	set_bit(rslt->ptype, prof->ptypes);
 	if (blk == ICE_BLK_SW) {
-- 
2.52.0

