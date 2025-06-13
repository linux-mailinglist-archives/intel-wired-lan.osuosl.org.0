Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1380BAD7FE6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 03:01:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 527D64087B;
	Fri, 13 Jun 2025 01:01:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EJVEFKxMfn8B; Fri, 13 Jun 2025 01:01:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D489A406CD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749776496;
	bh=WypVFtBS9tadfbpprg40G6cbPuWR4a2iUx6WWWqcWfY=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=DqkHPojS0lgfrcwo6odVB2oJXWFJqGLP+Lc2ut0jrUaie7fOgLz2wwJQS5Lz0lKj6
	 Ems6D8AnjCu22v7GR4bsuOOUiK5D6J/sfu4OvNw16pQJQh516lOD87GDEN/IOTRuNa
	 WDyIKjqunkktNm/msDzAYaI+6Sa37rKUGUBT9StMck4n9VU8moZSXrpv/8cQqQ37ME
	 2I0sh2dAXAlYx+hhAJaSeOA1ZtPu9xmj1SCJ7uEeDBmdBUM1ZFNhkpwVxtaXwduAgw
	 GefxiFH0JH+pXuU8Rf5WtS8qfQSpO6eyQyu+6QPfMRpDC1EfYWAS4Pt1wGNxeO2Rm6
	 V6wMy+DF2sDvQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id D489A406CD;
	Fri, 13 Jun 2025 01:01:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id E0EE11BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D2D5A405ED
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gIYM6_1i6oSC for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E2BD4028D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E2BD4028D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E2BD4028D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 01:01:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A9A5E441A2;
 Fri, 13 Jun 2025 01:01:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 052F6C4CEEA;
 Fri, 13 Jun 2025 01:01:33 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com,
 Jakub Kicinski <kuba@kernel.org>
Date: Thu, 12 Jun 2025 18:01:04 -0700
Message-ID: <20250613010111.3548291-1-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749776494;
 bh=77sebdihZ6Mhexu5g5L+leZtOkPLLRR3pbZUqaFu7ZY=;
 h=From:To:Cc:Subject:Date:From;
 b=i//PeuEwq57YADX0OyKkmr4/d/qSz/V/KzV21jEqO7TKl90oqsEKB817takcd1aLv
 Zdbe3wktvMMNXlwW0tR8s295atIkarhLcDSyLzAqZQnZqvGGRn1kFGsdioutTiwqAY
 p8OIoxIEuBlqT4w9wp3tVii07vWuhz8X0PZ4MTSHV2JA9vGvzn7UzqRh98Q7r6q6Am
 ge4JdLDuF0WN3gqgvWjnmZZrUFcTBiCwt9od7SD/ZLr9+a5+Ouk91qtBWRHXPI88LR
 gxfqNWBINnHBQ43RWxWDjfB50YRpYSMLvAINuJhvoZyUfrRnE34y49rLEp/Y1p1L1/
 JXRssldrH7n3A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=i//PeuEw
Subject: [Intel-wired-lan] [PATCH net-next 0/7] eth: intel: migrate to new
 RXFH callbacks
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

Migrate Intel drivers to the recently added dedicated .get_rxfh_fields
and .set_rxfh_fields ethtool callbacks.

Note that I'm deleting all the boilerplate kdoc from the affected
functions in the more recent drivers. If the maintainers feel strongly
I can respin and add it back, but it really feels useless and undue
burden for refactoring. No other vendor does this.

Jakub Kicinski (7):
  eth: igb: migrate to new RXFH callbacks
  eth: igc: migrate to new RXFH callbacks
  eth: ixgbe: migrate to new RXFH callbacks
  eth: fm10k: migrate to new RXFH callbacks
  eth: i40e: migrate to new RXFH callbacks
  eth: ice: migrate to new RXFH callbacks
  eth: iavf: migrate to new RXFH callbacks

 .../net/ethernet/intel/fm10k/fm10k_ethtool.c  | 34 ++++-------
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 38 +++++-------
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 52 ++++------------
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 59 ++++++-------------
 drivers/net/ethernet/intel/igb/igb_ethtool.c  | 20 +++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c  | 18 +++---
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 20 +++----
 7 files changed, 83 insertions(+), 158 deletions(-)

-- 
2.49.0

