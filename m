Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9862FB99E0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Sep 2025 14:40:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5468240D0A;
	Wed, 24 Sep 2025 12:40:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GaUD33W1a0_v; Wed, 24 Sep 2025 12:40:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F26740D06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1758717657;
	bh=10nL7bXwomAQHLnTpYVbxfBSNFJlIBNfZqpDvPIqdzU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BZB+RNn0zi27oMS8lNJfwF3JhK3OlPrQzKkCP818fzblcSscxY9syd+daiWYbuhV3
	 74yki9vDHC9VnORprViUAroj9mz/xJn+5Bj4Npi8MHN0pUBw67TUjf3YBTWGacqop8
	 dof092CsStRiydN5zoM1X+A2f4h3LQYLjFCb7iclLhl8xOkMjg7zdw3QndR2BSg1Ww
	 xldOeKchejeB3c/nFZMOyl+VBhXblumBe3IiIIUNjB3qDSxmvH7mXb/dNKl5KCfrZG
	 Or6M/NeXpddMfUV26BYkf1KDNMHZq09NEiWemtqaoN45IU49sOyUxaTQZVpvoSWvsm
	 DwpUqxt+So7sQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8F26740D06;
	Wed, 24 Sep 2025 12:40:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 14159177
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EE6D140685
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Bz8LAuenX-IY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Sep 2025 12:40:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=95.215.58.173;
 helo=out-173.mta1.migadu.com; envelope-from=vadim.fedorenko@linux.dev;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8921240242
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8921240242
Received: from out-173.mta1.migadu.com (out-173.mta1.migadu.com
 [95.215.58.173])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8921240242
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Sep 2025 12:40:54 +0000 (UTC)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
To: Jakub Kicinski <kuba@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>, Tariq Toukan <tariqt@nvidia.com>,
 Gal Pressman <gal@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 Donald Hunter <donald.hunter@gmail.com>,
 Carolina Jubran <cjubran@nvidia.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>
Cc: Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 netdev@vger.kernel.org
Date: Wed, 24 Sep 2025 12:40:32 +0000
Message-ID: <20250924124037.1508846-1-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1758717650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=10nL7bXwomAQHLnTpYVbxfBSNFJlIBNfZqpDvPIqdzU=;
 b=fVOzhOMGJdle8yQ8r2sRlmImdLkDlfB2aw1iys0FfvCjmJnyhaBYDl7plUj+o+kvlLzl+l
 iQh0/2yPSvsVTo2Mi5k9UNjFHRyl/C4h7wy37TUnUG0eEILUrJ7Q0nRrgUsYSulsJOlosS
 lqSZB5UqvYNPfhTeCvB5GgrHqkU/5Zk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=fVOzhOMG
Subject: [Intel-wired-lan] [PATCH net-next v6 0/5] add FEC bins histogram
 report via ethtool
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

IEEE 802.3ck-2022 defines counters for FEC bins and 802.3df-2024
clarifies it a bit further. Implement reporting interface through as
addition to FEC stats available in ethtool. NetDevSim driver has simple
implementation as an example while mlx5 has much more complex solution.

The example query is the same as usual FEC statistics while the answer
is a bit more verbose:

[vmuser@archvm9 linux]$ ./tools/net/ynl/pyynl/cli.py --spec Documentation/netlink/specs/ethtool.yaml --do fec-get --json '{"header":{"dev-index": 10, "flags": 4}}'
{'auto': 0,
 'header': {'dev-index': 10, 'dev-name': 'eni10np1'},
 'modes': {'bits': {}, 'nomask': True, 'size': 121},
 'stats': {'corr-bits': [],
           'corrected': [123],
           'hist': [{'bin-high': 0,
                     'bin-low': 0,
                     'bin-val': 445,
                     'bin-val-per-lane': [125, 120, 100, 100]},
                    {'bin-high': 3, 'bin-low': 1, 'bin-val': 12},
                    {'bin-high': 7,
                     'bin-low': 4,
                     'bin-val': 2,
                     'bin-val-per-lane': [2, 0, 0, 0]}],
           'uncorr': [4]}}

v5 -> v6:
* adjust yaml spec to have padding field within fec-hist namespace
* mlx5: adjust max histogram entries check to match the size of array of
  mapped registers
v4 -> v5:
* fix selftests error path
v3 -> v4:
* update spec to avoid using underscores
* make core accumulate per-lane errors into bin error counter
* adjust wording in Documentation
* improve FEC type check in mlx5
* add selftest to do sanity check of reported histogram
* partially carry-over Rb tags from Aleksandr because of logical changes
v3 Link - https://lore.kernel.org/netdev/20250916191257.13343-1-vadim.fedorenko@linux.dev/
v2 -> v3:
* fix yaml spec to use binary array for histogram per-lane values
* fix spelling
v1 -> v2:
* fix memset size of FEC histogram bins in mlx5
* adjust fbnic driver FEC stats callback

Links to RFC discussions:
v1 - https://lore.kernel.org/netdev/20250729102354.771859-1-vadfed@meta.com/
v2 - https://lore.kernel.org/netdev/20250731231019.1809172-1-vadfed@meta.com/
v3 - https://lore.kernel.org/netdev/20250802063024.2423022-1-vadfed@meta.com/
v4 - https://lore.kernel.org/netdev/20250807155924.2272507-1-vadfed@meta.com/
v5 - https://lore.kernel.org/netdev/20250815132729.2251597-1-vadfed@meta.com/

Carolina Jubran (3):
  net/mlx5e: Don't query FEC statistics when FEC is disabled
  net/mlx5e: Add logic to read RS-FEC histogram bin ranges from PPHCR
  net/mlx5e: Report RS-FEC histogram statistics via ethtool

Vadim Fedorenko (2):
  ethtool: add FEC bins histogram report
  selftests: net-drv: stats: sanity check FEC histogram

 Documentation/netlink/specs/ethtool.yaml      |  29 ++++
 Documentation/networking/ethtool-netlink.rst  |   5 +
 .../net/ethernet/broadcom/bnxt/bnxt_ethtool.c |   3 +-
 .../ethernet/fungible/funeth/funeth_ethtool.c |   3 +-
 .../ethernet/hisilicon/hns3/hns3_ethtool.c    |   3 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   4 +-
 .../marvell/octeontx2/nic/otx2_ethtool.c      |   3 +-
 drivers/net/ethernet/mellanox/mlx5/core/en.h  |   1 +
 .../ethernet/mellanox/mlx5/core/en_ethtool.c  |   5 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |   8 ++
 .../ethernet/mellanox/mlx5/core/en_stats.c    | 127 +++++++++++++++++-
 .../ethernet/mellanox/mlx5/core/en_stats.h    |   3 +-
 .../net/ethernet/meta/fbnic/fbnic_ethtool.c   |   3 +-
 drivers/net/ethernet/sfc/ethtool.c            |   3 +-
 drivers/net/ethernet/sfc/siena/ethtool.c      |   3 +-
 drivers/net/netdevsim/ethtool.c               |  25 +++-
 include/linux/ethtool.h                       |  25 +++-
 .../uapi/linux/ethtool_netlink_generated.h    |  12 ++
 net/ethtool/fec.c                             |  75 ++++++++++-
 tools/testing/selftests/drivers/net/stats.py  |  35 ++++-
 20 files changed, 351 insertions(+), 24 deletions(-)

-- 
2.47.3

