Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ps+iIuhFPWp30ggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:48 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E5A6C6F8E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 17:14:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=FW0lWL1N;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 872A86102D;
	Thu, 25 Jun 2026 15:14:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dV6Eo8-klhuN; Thu, 25 Jun 2026 15:14:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D1716102B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782400485;
	bh=kOZWZLTwJKIdHT7jLyzTjV7Z/94vZkCMFP3r800w+mY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=FW0lWL1N/Ukjtr/snG2hIBZfGyE12MkA0ZE/drwPmYDktGYGYdvmQn1VQx+AUjXtM
	 cCyCqR/Gdz0YCUe9ms59V9xistNu0DJy6z1q744xwYizGz4pjT2gSS3zQht9fVLR/O
	 8FR6UUS/s/2u6yfm2DwoSv5iFHdjCGaHoQLM/68nxvpM+oEY5Uor0mIWogeOsRorgj
	 vwat6r15xuhSz4ca+5DvQ29v5G457ofLDlLsSFDykCS/0VRUlL5/dBBmkJdnTf1FGr
	 uD1RthPbmoi4eTUTHvaiCa873k0X+FcS8BVDao8wTLiMTSiKogXFCcM77Z6wM/aIyC
	 r25rKJWeJEqkA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D1716102B;
	Thu, 25 Jun 2026 15:14:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5C9A0254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4228241110
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l0H2OSgUAGNm for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 15:14:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 86E7E4110D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 86E7E4110D
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 86E7E4110D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 15:14:43 +0000 (UTC)
X-CSE-ConnectionGUID: aRsiFtdYQcmzlMeCccHM6w==
X-CSE-MsgGUID: obTjW/kNRP6dL51jqqV13A==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="83304520"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="83304520"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 08:14:42 -0700
X-CSE-ConnectionGUID: 3Js0l7x8Tk2OZU5axmxEfg==
X-CSE-MsgGUID: zVX3tQDURWapNRg7P3Cvdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="254866926"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa004.jf.intel.com with ESMTP; 25 Jun 2026 08:14:40 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, magnus.karlsson@intel.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Date: Thu, 25 Jun 2026 17:14:28 +0200
Message-Id: <20260625151431.1102838-1-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782400483; x=1813936483;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qcsBNcZnHyQgCK+3BSI8JZB02DcVgc0h2SEbrwsRgh4=;
 b=YHbHDMfSemQoPiLUPK8g6WIZgXJpAYLKWPnog/gowAts93+DBxi3FnQq
 UuynlEtBw90BdCO9iDCuQADYv3akVRCg9OMGe5noqBWnSty1M7DXN86/M
 eUWrqLHM6kEoUk2im/coDTWZIF4VZCCBKC+ZkE5k7/z3oIZLOczQ+XvMw
 b5UOiwzPlaoWGnB/lvcO4pBCzwU5bYjPF0TunfuIjz1IUWdWkFzXlk40B
 XPvi7V91iWBJUSBjXtM/qiCPxUqVqq06B45R9JW76X3nflN4jxsi8FEt9
 MD2trUpz4DwsOgTvNJ4qcudSx7KJLWklvoHB5Q+wT8YT/PoyHIlstpwrv
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YHbHDMfS
Subject: [Intel-wired-lan] [PATCH v4 net 0/3] i40e: re-init and UAF fixes
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,osuosl.org:dkim,osuosl.org:from_smtp];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[9];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 39E5A6C6F8E

v4:
- add preceding patch that fixes a case when some of re-init allocations
  failed and we missed de-registering netdev at failure path
- pull out i40e_vsi_setup() changes onto separate patch
v3:
- address UAF when ring arrays were freed before q_vector's ring
  containers (Sashiko, Jacob)
- remove bool params from alloc/free array routines (Simon)
v2:
- NULL vsi->tx_rings in i40e_vsi_alloc_arrays() (Sashiko)

Maciej Fijalkowski (3):
  i40e: unregister netdev before clearing VSI on reinit failure
  i40e: fix potential UAF in i40e_vsi_setup()'s error path
  i40e: keep q_vectors array in sync with channel count changes

 drivers/net/ethernet/intel/i40e/i40e_main.c | 76 ++++++++++++---------
 1 file changed, 45 insertions(+), 31 deletions(-)

-- 
2.43.0

