Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE+TG2nzAmo9zAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E8A51DC2E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 11:31:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0493821C7;
	Tue, 12 May 2026 09:31:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w18G_VIGFfWa; Tue, 12 May 2026 09:31:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EFF4B821C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778578277;
	bh=aXqTmeJ7Zjm404O8u1SppoFuNx6JLqUtUmDBtGIyCIk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SNAgrjA7Qq1YER6M+Fyl4ucLPAernC9ELFNG6z5lgTXRt/ahA/4cHg+GCwp25+5j9
	 iEQbgmHcVuJRJEMubLCM8K3FyH/ExX8V3Y9LDdICF7IPzA6aH/gLbfDSmk1c9IlaZh
	 CyN00A2oAyL3TADPAyiXECoOqqmQfuWAov8bkvTHNSonz7sBA+oINmfhzEiWWFg88Z
	 k5G8nRqSOf+yNQ2AjGF0ryx3PxlRPVPxIvMd+lBAcsSUDtxsNZryqC/m1BSZnBy5co
	 nSQY3JeBldIq8uznQwvAiUAg6u56PEgYqXAg0DEUy9JDoRttfPQqdbvNaB2FJ0qsgo
	 Ud/YJqPxGmxzA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id EFF4B821C0;
	Tue, 12 May 2026 09:31:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 77B67223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7588D60C0F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UsMwJqwW8VYk for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 09:31:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6DA4D60B8A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6DA4D60B8A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6DA4D60B8A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 09:31:13 +0000 (UTC)
X-CSE-ConnectionGUID: V+AbLWFhQl+Nr643+ZaQVQ==
X-CSE-MsgGUID: +hsEsJEjTwmxYhjldW2KBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="79663241"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="79663241"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 02:31:13 -0700
X-CSE-ConnectionGUID: 7Q1uGT2FQ82tUUG+244+Cg==
X-CSE-MsgGUID: ohyL/FO3SRCGr7Exts/FGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="231323201"
Received: from os-delivery.igk.intel.com ([10.102.21.165])
 by fmviesa009.fm.intel.com with ESMTP; 12 May 2026 02:31:12 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Date: Tue, 12 May 2026 10:47:25 +0200
Message-ID: <20260512084729.1338557-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778578274; x=1810114274;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=j/vnRdBUw140QYqM2h8/QOdevi4qqQ39qEJwrDFReuI=;
 b=E6qMRO69B2sHznjqhdpHI7/dPjwPPt6wsz+2R4fS/GJ79JsSlPhZyc/N
 FgsuXtWfNZQaIu491ucGG18ALcza/6GTEI9zOlvBapiBIpIFcA66LJxob
 T5baMHL/dU/IfXdM+sybJJlhoxndk+2td2WnVbb7czlCnQe+CAa37t+Kp
 XRwQ0UMzWs0dYyZezA+NfVU0no+3MJnGIloxYrJs3GGPbhuHFWZYEeEhJ
 TNMPxgKckMctgRKYj16qGPJCnOfkh0crnYJID/Q23NSUwjlIvNSenCgay
 X/+Jh9igriNDYCgEaWUKrGJPQliOR3yO6oFel2zeucTHu6SLR8aXMoCif
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=E6qMRO69
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/4] return value of
 skb_checksum_help()
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
X-Rspamd-Queue-Id: E0E8A51DC2E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[michal.swiatkowski@linux.intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Hi,

most intel drivers ignore the return value of skb_checksum_help(). It
can fail, so pass this value to the caller, to allow dropping packet
without correct checksum.

Michal Swiatkowski (4):
  ice: pass the return value of skb_checksum_help()
  i40e: pass the return value of skb_checksum_help()
  iavf: pass the return value of skb_checksum_help()
  idpf: pass the return value of skb_checksum_help()

 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 18 +++++++--------
 drivers/net/ethernet/intel/iavf/iavf_txrx.c   | 17 +++++++-------
 drivers/net/ethernet/intel/ice/ice_txrx.c     | 20 ++++++++---------
 .../ethernet/intel/idpf/idpf_singleq_txrx.c   | 22 ++++++++-----------
 4 files changed, 34 insertions(+), 43 deletions(-)

-- 
2.49.0

