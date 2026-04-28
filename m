Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEGFCU/U8GkSZQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A25EA48802E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 17:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8302E40027;
	Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id luXrKpHpuOC1; Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01C3440DD8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777390666;
	bh=spzuEOuKS8khFJYKz4UtZZs57IGFv0lYV/CKArD/hm4=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=08CUO0NtcGIqXGi8atXnHBWDo2SAXAlgy3+Qg9Et6OVOzCLUjlbrINK3qHe5IoMIO
	 P5LPhOxVb5gv5I7mUWHBvcwRGCNZlfs+mMctGkvYWjwFlFPL5SJfOpCEJKkk5FcNrA
	 q8LBCZ/tibbKukJlN/P6R/ypiwCfrq65NriKwGduaz+iYTG80Xn1CT83ZYppQUvuhH
	 J1huIPCmZXTLeH6xRIzfnAVgNDOtREUpj3ZO4a2ALuthjQHq2jjcTgi5Q8R0GUKGVX
	 uhq05DFGj7B+WpTGHPH0V2P2ZZM4QIiAc2Z+QPnQprNQ1dXdFgb2yo6pMb0rTxlX7f
	 gHpQdmlqIy7pg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 01C3440DD8;
	Tue, 28 Apr 2026 15:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 4D4571B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F8B78267C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iIvxr7JU7JMB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:37:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=marcin.szycik@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E9D81821CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9D81821CE
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9D81821CE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:37:42 +0000 (UTC)
X-CSE-ConnectionGUID: BX2hqxUzRZqVN+/v7IIw8A==
X-CSE-MsgGUID: /34N9scsS2+bBODC8oREZw==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78415116"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78415116"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 08:37:42 -0700
X-CSE-ConnectionGUID: z2rmiHdXQIqHuvh2/bfVnA==
X-CSE-MsgGUID: iHevdCFEQVGaHrl2C0o30g==
X-ExtLoop1: 1
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa003.fm.intel.com with ESMTP; 28 Apr 2026 08:37:41 -0700
Received: from gond.igk.intel.com (gond.igk.intel.com [10.123.220.52])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id AEBDE312C0;
 Tue, 28 Apr 2026 16:37:39 +0100 (IST)
From: Marcin Szycik <marcin.szycik@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, paul.greenwalt@intel.com, jacob.e.keller@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Tue, 28 Apr 2026 16:37:13 +0200
Message-ID: <20260428143716.9653-1-marcin.szycik@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777390663; x=1808926663;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lZysSydj+EKtcOyV7KppuvUFFO62gMAX1S0NABtoLt8=;
 b=OjhVI0DljP6BDWWpqZNbVDeXDJSAwif0LAfmZ/vh4YI4oW3ZwhQKaC7L
 IbDwaVehvuiN8igHkqrLKEnBdotZPv2GqoXrBtI6kf23HBc1CyrMC8uJT
 vS8Q+nW6yKzVpGlBolxWnqIye70nAXOLY7IkJNwB0KmTuMtwWsT7Qwdud
 boUmJQ61ZFj5Gu7nwPULdVG0Ak6z4IWz+MvafJL9G0IqtnKKS6QXq8GPJ
 Vo1ezSalGFxv3ecCwlWn9yucqr27pvdQf0JlFPXeZJ2xJsHlndQ8yOIMm
 +K1tNB1r6IugfAEJEb5g7pytdMWUNCHxnbDhfmeXnBUBAnX+WwIul0iFb
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OjhVI0Dl
Subject: [Intel-wired-lan] [PATCH iwl-next 0/3] virtchnl: add extended VF
 capability flags
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
X-Rspamd-Queue-Id: A25EA48802E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[marcin.szycik@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]

VF capability flags in struct virtchnl_vf_resource::vf_cap_flags have
all been used up, preventing new flags from being added. Unfortunately,
flags size cannot be easily increased, as virtchnl message size and structure
must remain unchanged to not break ABI. Instead, add a new virtchnl
message to handle passing extended caps. Make it flexible size, so new
flags can be freely added in the future, without changing virtchnl
interface.

Overview:
1: Clean up unused defines that are in the way
2: Do most of the mechanical changes required to store flags in bitmaps
3: Add the new virtchnl message

Marcin Szycik (3):
  virtchnl: remove unused defines
  virtchnl, iavf, ice, i40e: store VIRTCHNL_VF_* flags in bitmaps
  virtchnl, iavf, ice, i40e: add extended generic VF capability flags

 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   4 +-
 drivers/net/ethernet/intel/iavf/iavf.h        |  68 +++---
 .../net/ethernet/intel/iavf/iavf_prototype.h  |   3 +-
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   5 +-
 .../net/ethernet/intel/ice/virt/virtchnl.h    |   2 +
 include/linux/intel/virtchnl.h                | 120 ++++++++---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 160 ++++++++++----
 drivers/net/ethernet/intel/iavf/iavf_common.c |   7 +-
 .../net/ethernet/intel/iavf/iavf_ethtool.c    |   2 +-
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  96 +++++++--
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   | 185 ++++++++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |   4 +-
 .../net/ethernet/intel/ice/virt/allowlist.c   |  11 +-
 drivers/net/ethernet/intel/ice/virt/fdir.c    |   2 +-
 drivers/net/ethernet/intel/ice/virt/queues.c  |  13 +-
 drivers/net/ethernet/intel/ice/virt/rss.c     |   4 +-
 .../net/ethernet/intel/ice/virt/virtchnl.c    | 195 +++++++++++++-----
 17 files changed, 667 insertions(+), 214 deletions(-)

-- 
2.49.0

