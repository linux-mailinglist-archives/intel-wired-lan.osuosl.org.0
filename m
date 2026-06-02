Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 30taDVQOH2okewAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:40 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C7C63088C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 02 Jun 2026 19:09:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=3iMSzOme;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9D54D80B84;
	Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 57CesPikHhjQ; Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2687580815
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780420175;
	bh=k+k8alVnyK9S8cPkhHz4Lu5Hmw3ypIs8UHodF0ib0O8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3iMSzOmeeIVPXLu105C73CNX6RBOkHMinT4QYbDMP0dxev2zBj92QSh+yePwdMCYb
	 GwShg8O4lA4Y6+EBrVm3IkWMklAuwjfUdM90I3yPUoyJ31QIlUBMTEU71dGF9bPQze
	 sP6Gz7JRWP9eJar45hyTfCSa9fUrAA73Bd7KlnV21jGn8Zxz/X9Z7p3EROxXhBmDRV
	 yhcBIs1RIT4E9abMhocQcUX3KfVz37cBmVoRIuLkkGN84cks/chNEusLl01ZyU842n
	 RBg7uLW2e4WJS0uISDrLt+UxmGVu1B2lAMLbgkE6/z4fclYm1nz0J6NpSCcxIZ1JnI
	 DOLH9/OwHm4gQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2687580815;
	Tue,  2 Jun 2026 17:09:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 728042F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 58C02822D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2CNkb8Rlm09V for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jun 2026 17:09:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=joshua.a.hay@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 99CC4822D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 99CC4822D1
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 99CC4822D1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jun 2026 17:09:32 +0000 (UTC)
X-CSE-ConnectionGUID: 844S3qcdS+OblYy0h/2MNg==
X-CSE-MsgGUID: CgGc6ijFQOSjK2+EwKYrpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="81074145"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="81074145"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 10:09:32 -0700
X-CSE-ConnectionGUID: 96dHYEVyQCSSfybcPWMgKA==
X-CSE-MsgGUID: Q5t1NlO3Tf+ZAuzRdz3W0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="241475795"
Received: from dcskidmo-m40.jf.intel.com ([10.166.241.14])
 by fmviesa008.fm.intel.com with ESMTP; 02 Jun 2026 10:09:31 -0700
From: Joshua Hay <joshua.a.hay@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Date: Tue,  2 Jun 2026 10:20:21 -0700
Message-Id: <20260602172024.2285947-1-joshua.a.hay@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780420173; x=1811956173;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zV8mJg/ulwrxR+PEa19yPUKXBMuYknTDOr05srO4sXU=;
 b=eCH5oOBXs57DNV1PYYYADZkWm+D/eTk2iizEFcD+GQqa7U+mFXkSLNen
 zFFViZeVESX1u8D2VD625RBz84j+ILpxkAtP7+gpDFgCFhySsyZxkTMMv
 h/2EcHVPShH0qjeWfQqrwJ0GQOlr/V5CtLELR3cB52OxBtrEijmM3G6U/
 2t7kg0G0dAklTeTzGICAfCKRE13Lc/BMegsJtX9Yj9O1bxlvcgAwLkBTw
 Ukq+Al0Vg4u7mjHBqWRbVBqkbn51OKnLMeK3PCG5S9OP54VrzPC5VQiZN
 UGhaj37cUQT2o0aFNXlcaU+/1NsqyjUCi5EOAyhM+ZEFdeitcYM6MMly+
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eCH5oOBX
Subject: [Intel-wired-lan] [PATCH net v2 0/3] idpf: queue based scheduling
 fixes
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joshua.a.hay@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:mid,osuosl.org:from_smtp,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 22C7C63088C

This series fixes some TxQ scheduling mode issues exposed by recent FW
changes, as well as some issues reported by Sashiko.

Patch 1 prevents XDP from being enabled if queue based scheduling is not
supported by the firmware.

Patch 2 fixes a data race when accessing next_to_clean in
IDPF_DESC_UNUSED. 

Patch 3 fixes a NULL ptr dereference in the Tx path when queue based
scheduling is enabled, and also adds support to process both 4 and 8
byte completion descriptors to avoid timeouts in queue based scheduling
mode.


Joshua Hay (3):
  idpf: do not enable XDP if queue based scheduling is not supported
  idpf: fix next_to_clean data races
  idpf: fix skb datapath queue based scheduling crashes and timeouts

 .../ethernet/intel/idpf/idpf_singleq_txrx.c   |  3 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   | 60 ++++++++++++-------
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   | 15 +++--
 drivers/net/ethernet/intel/idpf/xdp.c         | 10 ++++
 4 files changed, 62 insertions(+), 26 deletions(-)

-- 
2.39.2

