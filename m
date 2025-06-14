Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 76324AD9EA8
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Jun 2025 20:09:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0911980FA0;
	Sat, 14 Jun 2025 18:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jrT8KyYpvvnZ; Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C19580ED5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749924556;
	bh=PvNvZUgvZrbTAnZnEuwQfb4cwbxVAdqEYSnw7nA4K24=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SV3T7Kc7yFmBCb3VreJALossFdtUhsI9Am+p1Uuub6ox1f2qTQeCiZfS4doqOsBu/
	 ySc1dD2HSJJgUuY7bBHorbqYZkgO6J2Qfy0hn76ZFRFTCdpd2SIpOJpcDuU3mod356
	 MyiOKzFQC36KE8LDntm1SWxalC2YnrIcSBsMBPlrAV5ScZDXG2bcu3mLgC0ViBxP9M
	 duZ4r1oFLAsM7O/hXY4ypW6OuyqoOY2gtfTWzV5l2vhIe1ERROPjjhu4WnHu7ecHuW
	 f6PcJLZ2gM2VMEBn7VEFhEATSlHjTcMR7ZoEzYDBp6fF53Fy+U4cgdgDh0Lz2sZ9ey
	 4lpnxM1LykQ9w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C19580ED5;
	Sat, 14 Jun 2025 18:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CE2CF177
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C061480EB5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y9MlHpDw2Gc8 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Jun 2025 18:09:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 88E1780E5E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88E1780E5E
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 88E1780E5E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Jun 2025 18:09:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 3F3E661126;
 Sat, 14 Jun 2025 18:09:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 72DCCC4CEEB;
 Sat, 14 Jun 2025 18:09:10 +0000 (UTC)
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Cc: netdev@vger.kernel.org, edumazet@google.com, pabeni@redhat.com,
 andrew+netdev@lunn.ch, horms@kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, michal.swiatkowski@linux.intel.com, joe@dama.to,
 Jakub Kicinski <kuba@kernel.org>
Date: Sat, 14 Jun 2025 11:09:00 -0700
Message-ID: <20250614180907.4167714-1-kuba@kernel.org>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1749924550;
 bh=y6T9KcaWx24iTw3sTbP7KgAITUgQy5Y6ueYog9WdShA=;
 h=From:To:Cc:Subject:Date:From;
 b=ryUGjWrg7mV9+pS4F7w231FbjbPjqsqsnOBI+2cNySpm8MkxwmSqxXKZW9owGnqj6
 scEMURNVkmgM3mPtkelO3gqiICki37NImakhs0mL4qhGEKNF94kqq2TPjlr3Xyxfe9
 rCOLMJxWReKegwfyOnd6ztBCfKnsgjv0QTKc5egT9UBgG4HytKoH5aynojVhYhOm9M
 +x+lw4vLiKmJzuKR6zeqTrdRa7DIxBsOko/DwrOmqtj7WiUd0D7Dl4/eyk0xT7F4pg
 OI1C4fKJoGYT2X6emYqQTnVekCjneAO5CNyBZeiysnMXUD2U6AF4r5p9W73eVeN0nT
 tLKISBWAUIKHA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ryUGjWrg
Subject: [Intel-wired-lan] [PATCH net-next v2 0/7] eth: intel: migrate to
 new RXFH callbacks
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

v2:
 - fix missing change to ops struct in ixgbe
v1: https://lore.kernel.org/20250613010111.3548291-1-kuba@kernel.org

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
 .../net/ethernet/intel/ixgbe/ixgbe_ethtool.c  | 22 +++----
 7 files changed, 85 insertions(+), 158 deletions(-)

-- 
2.49.0

