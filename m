Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3A7A90DA1
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Apr 2025 23:19:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A159C6F63C;
	Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gUkHzKOc25T3; Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0B2D160D7F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744838344;
	bh=K+6r7tZdqX9DkIL2tQkW0r0+KohxTusPJrTOayVFNzk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=n7WTK1TRN+PsTu+JVL4IxqnGMMJ7tDl+mYM/5MkIsuEhRSZb2TMbbwyEyD9s7slSt
	 jrKEm/tf9aWo3HVTYTFN+jhIP5PmOE4BgD9QjbUS0Di10RUxqao/HxxX5PfQZ+EvjD
	 zHWLxaiWJXaOJJ9bdX3svi1yA096NTo+gaG4Uw5GSd3qAt32hNnuQWVg6xyhwW2TcH
	 cQ6OhXdCWkvDSf+N7kXudavJuTRclN4r2LuwiN4IeA7scwyebGJe51LyEwiL4cttgu
	 8nRVg6mI2l+dw0hKqZVRlHIuMju19hQ09LpFJBOvvp5E4vYcEt+Tb/92doG1FnXr4P
	 9c7FLfIz/go9A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0B2D160D7F;
	Wed, 16 Apr 2025 21:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 075C1159
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0FDC4141A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TcbOc7F0A0eA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Apr 2025 21:19:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=pavan.kumar.linga@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9E8124135F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E8124135F
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9E8124135F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Apr 2025 21:19:00 +0000 (UTC)
X-CSE-ConnectionGUID: uQS3hfvJTMaP/b2amzCiRA==
X-CSE-MsgGUID: yKwUqAqQTdiK7GgxL+bvsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46496227"
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="46496227"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2025 14:19:00 -0700
X-CSE-ConnectionGUID: meZ7QWaaQ3m0ofeDDIFNaA==
X-CSE-MsgGUID: aNo9Fvq0R9mj1MKPXA0xcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,217,1739865600"; d="scan'208";a="130909730"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.80.55])
 by fmviesa008.fm.intel.com with ESMTP; 16 Apr 2025 14:19:00 -0700
From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, milena.olech@intel.com, anton.nadezhdin@intel.com,
 Pavan Kumar Linga <pavan.kumar.linga@intel.com>
Date: Wed, 16 Apr 2025 14:18:12 -0700
Message-ID: <20250416211821.444076-1-pavan.kumar.linga@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744838340; x=1776374340;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=crjEXK1GLqH9WsE4qeAoY0vFHzVz8ZvUou9JkfnD2hE=;
 b=BbgN37Yy6Om2wU6aW/GDqmcesaWA9B1hmASLvsLPNKaQwjBq/CXHzt0a
 43VABEFfqSFLTa8sGmkDIpyLxWflTRf7cXGy3T4bOYMB+TdvzdOBS3P5I
 uJG0t0i/0j725ztft7bJSSJewGBMvLhRzAo8npYyYOtRluhqv7FniPqJ5
 9WQjTXz9fUrhpBa3FY9Cc2z2OCA4Ws2QgwgVunVxM70acpfdms61gjVrC
 ebhEhGRh8kXPqSkVKjd6RtSO0HHCy1Am6CIixSAJoFIeSLqID3m/lWmxR
 ylSSQLZRVYGgM7/bZTUYvY6HeRykEOYbABQSf2gdvuCvk1B5UAUC6mJqu
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=BbgN37Yy
Subject: [Intel-wired-lan] [PATCH iwl-next 0/9] refactor IDPF resource access
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
 drivers/net/ethernet/intel/idpf/idpf_txrx.c   |  639 +++++-----
 drivers/net/ethernet/intel/idpf/idpf_txrx.h   |   36 +-
 drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   15 +-
 .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1127 ++++++++---------
 .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   77 +-
 9 files changed, 1239 insertions(+), 1139 deletions(-)

-- 
2.43.0

