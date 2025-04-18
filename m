Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0621A93F10
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Apr 2025 22:49:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9473181E82;
	Fri, 18 Apr 2025 20:49:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZrJ0r_sEsDu; Fri, 18 Apr 2025 20:49:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E271781E7E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745009378;
	bh=8kzenc0lpfYZ5amiOInY5ZjVK9yspd+H9hbOtwb2QxE=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=zPGR8wa9k3yyHTMswgqeBydBVjgumSyDH8CdJ1TJZeqOPp1JoogIWGqX1+BEDT5Jz
	 NbZ3D1TljnxAMkMP8BLCOfRRQtK4ZO7VqeI2uHQNsvoUmbzp0BOXJRwcQfqyJkIhRI
	 dXrrWxlDVkLuy032NlqAr/1QkUS3IFfucmclNGM5g17GGtc3c7AMzZFXw6ieqFAIWO
	 op2u33QjMyCA6VV4loDZjqKZKIbFctnx7Or+6U0OztsOK8aV6WxubxF2FHkRf2ipKd
	 +9tcZ8cTkTExaekSnXLygjfEBRCEmzqsqlmvsRvvqMCTJNRsRWqtwpBDgR7SdtK8eI
	 fedf9khMP6QUw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E271781E7E;
	Fri, 18 Apr 2025 20:49:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3EA2869
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 24A6A81E7B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id iuXt4Afg-R6C for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Apr 2025 20:49:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7988581E74
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7988581E74
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7988581E74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Apr 2025 20:49:36 +0000 (UTC)
X-CSE-ConnectionGUID: 6EIacfTAR9CEw1y4YFGhig==
X-CSE-MsgGUID: WimWAwmKS12hB1Fe2z9a6A==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="46814306"
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="46814306"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 13:49:36 -0700
X-CSE-ConnectionGUID: zfit/8QUSgOVlaGzgzduIw==
X-CSE-MsgGUID: SLDRv+XiSZyKBCo0lFNPJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,222,1739865600"; d="scan'208";a="168406301"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by orviesa001.jf.intel.com with ESMTP; 18 Apr 2025 13:49:36 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Fri, 18 Apr 2025 13:49:10 -0700
Message-ID: <20250418204919.5875-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745009377; x=1776545377;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IDzzMkCRqeGxwdtmvnl5UHZ+UZVLH8I/hbqwbN+PgD4=;
 b=FURvRqI5wuNk+2X4B56RKFE9d1DI6EN4Y6guZSTd3czzqaf0NnhcqGG3
 /rDhCsUC6bq/QDDBULYLWcH9UoArDtpIgPTLVgdCCLepbUWGAc1pNeNUs
 A1kozWi6+3dn6NesvmJW3Tx5EX2u9jl48jPhn8IRres6QKrewEtp+Sea0
 sfjDH6PKHWm/wKPP4BGQFkiJABCWPbs9B7p8lJT6hGrcTFQQlzKjSQciL
 muNwk+b4WQHqkWXWvixFPtzkPn45Tb2bn4vIrFHMQIu8JcOAdVwFxww0K
 /aFU+1Axt4QpQnzX/0uInytcACeq2RMsR6srz/62dEG2OokQQlmP2plon
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=FURvRqI5
Subject: [Intel-wired-lan] [PATCH iwl-next v2 0/9] refactor IDPF resource
 access
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

Queue and vector resources for a given vport, are stored in the
idpf_vport structure. At the time of configuration, these
resources are accessed using vport pointer. Meaning, all the
config path functions are tied to the default queue and vector
resources of the vport.

There are use cases which can make use of config path functions
to configure queue and vector resources that are not tied to any
vport. One such use case is PTP secondary mailbox creation
(it would be in a followup series). To configure queue and interrupt
resources for such cases, we can make use of the existing config
infrastructure by passing the necessary queue and vector resources info.

To achieve this, group the existing queue and vector resources into
default resource group and refactor the code to pass the resource
pointer to the config path functions.

This series also includes patches which generalizes the send virtchnl
message APIs and mailbox API that are necessary for the implementation
of PTP secondary mailbox.

---
v2:
* rebase on top of PTP patch series

Pavan Kumar Linga (9):
  idpf: introduce local idpf structure to store virtchnl queue chunks
  idpf: use existing queue chunk info instead of preparing it
  idpf: introduce idpf_q_vec_rsrc struct and move vector resources to it
  idpf: move queue resources to idpf_q_vec_rsrc structure
  idpf: reshuffle idpf_vport struct members to avoid holes
  idpf: add rss_data field to RSS function parameters
  idpf: generalize send virtchnl message API
  idpf: avoid calling get_rx_ptypes for each vport
  idpf: generalize mailbox API

 drivers/net/ethernet/intel/idpf/idpf.h        |  152 ++-
 drivers/net/ethernet/intel/idpf/idpf_dev.c    |   12 +-
 .../net/ethernet/intel/idpf/idpf_ethtool.c    |   87 +-
 drivers/net/ethernet/intel/idpf/idpf_lib.c    |  233 ++--
 drivers/net/ethernet/intel/idpf/idpf_ptp.c    |   17 +-
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  639 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   36 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   15 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1130 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   77 +-
 10 files changed, 1250 insertions(+), 1148 deletions(-)

-- 
2.43.0

