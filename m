Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C3BB4839D42
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jan 2024 00:32:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 47E778543F;
	Tue, 23 Jan 2024 23:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47E778543F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706052734;
	bh=h0Z4nc73krG/lH1x5iH+SVbwD9cjPLJ6UCqS9vEv0bQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=svjxCoernIn6rilVK8RLuxxBhprl4oRicKDfJYC8cZZKs3tgRAL7QmIA4phD0AsF7
	 lHsZeHQpYuThrzNQGuKoyX6nkyBjRcRODzL0cFZqIaVNIGhBWXnG7YrBWkXIuogfbK
	 7R1/RPLDWzMv5lytjphAXtIgmpWiXWDGTogbT5i1Ql5V9fC8KwHPj93GBHaSjXWTRz
	 iWE+0TQnqMvy1+lEUC8O9cKkUZgBG6QvtDOlDzQrpw4NqVKXec2118f3XsRWDXRolp
	 CO+dEVbf723WQ+2vKplCdp4Iwf6B3jZRQjopYPq3rXJVQ0xTEBM4y2cVuM03iHs3pe
	 7gb+8oaGJvqPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MfPN-VuQdwTz; Tue, 23 Jan 2024 23:32:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6DB098542B;
	Tue, 23 Jan 2024 23:32:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6DB098542B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28B5A1BF84C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F13FC8542D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F13FC8542D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XonM2YNyDseG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jan 2024 23:32:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7630C85420
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jan 2024 23:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7630C85420
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="400552150"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="400552150"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 15:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="909469407"
X-IronPort-AV: E=Sophos;i="6.05,215,1701158400"; d="scan'208";a="909469407"
Received: from gkon-mobl1.ger.corp.intel.com (HELO azaki-desk1.intel.com)
 ([10.252.41.99])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 15:31:57 -0800
From: Ahmed Zaki <ahmed.zaki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jan 2024 16:31:38 -0700
Message-Id: <20240123233140.309522-1-ahmed.zaki@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706052723; x=1737588723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0XmyUjs6d6Sl0NxYVW+fP7dKeguSeFwbe/GEHUyyyd0=;
 b=Qbz6iMqTABix+W0svvCEPDcwA90J1s8T2facHEe2yR96TVHstxewzlek
 iejUUZogzsrcIs/+p7wqwMSVPYfPn+ni3q32U/2HDqy6vPXnKCrTq1dXl
 QorH29846fII7pZPL1aInIMlcwhTPBubeheA1UmraGuSjBrdb8ILbI0QY
 nO4MmaTSNEcZfXMieh5E/wPomoKdappS1tM8G+FOHqbZzRPYfgxeSPhqN
 RND854jLmW7jaH5DPriEn94R0zXO99cE3VyLkKW4BzQph1m8fJjhRNaTM
 UEmYYlBHcPuJbS7jnsBUzaj+6x+A0c95KeE02dUZOkAQDJYnj8DVFIIYs
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Qbz6iMqT
Subject: [Intel-wired-lan] [PATCH iwl-net 0/2] Fixes for iavf reset path
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
Cc: netdev@vger.kernel.org, Ahmed Zaki <ahmed.zaki@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A couple of fixes for iavf's reset issues that can happen in the early
states (before configuring IRQs, queues, ..etc).

Ahmed Zaki (2):
  iavf: fix reset in early states
  iavf: allow an early reset event to be processed

 drivers/net/ethernet/intel/iavf/iavf_main.c    | 11 +++++++++++
 .../net/ethernet/intel/iavf/iavf_virtchnl.c    | 18 ++++++++++++++++++
 2 files changed, 29 insertions(+)

-- 
2.34.1

