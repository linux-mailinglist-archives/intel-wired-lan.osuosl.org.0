Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5638F2DC2DD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 16 Dec 2020 16:14:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 18BA68457E;
	Wed, 16 Dec 2020 15:14:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xp947sEw-Rny; Wed, 16 Dec 2020 15:14:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC0058461B;
	Wed, 16 Dec 2020 15:14:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E07131BF842
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 15:14:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DC47C8457E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 15:14:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qbd29Wpu5DK9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Dec 2020 15:14:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 47714844B3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Dec 2020 15:14:14 +0000 (UTC)
IronPort-SDR: QghAIPUXO76LK43Rd9PVzZfEfdZ1JW3/BQQwasZrBcRjyuMPbZnp2GCfnO8Z/2pUga+dMjJHd1
 24POyzMvXfCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9836"; a="162823999"
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="162823999"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2020 07:14:12 -0800
IronPort-SDR: 7Y7z3w6C4oGvF+kxkg5dopwd0fJri7UDbTf1oF5lfb596MkjnBUL3lsvbftDcMYOxLdmToYX0r
 IJQM2ubApzeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,424,1599548400"; d="scan'208";a="337574095"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Dec 2020 07:14:11 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 16 Dec 2020 15:14:03 +0000
Message-Id: <20201216151403.19610-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v3 0/2] Multiple Traffic Class support
 for VF-d
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
Cc: Mateusz Palczewski <mateusz.palczewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This series focuses on adding flow director for both IPv6 support and
VLAN field.

Patch 1/2 focuses on implementing a flow director support for IPv6 by
adding packet templates, handlers and refactoring the code to make it
more generic.

Patch 2/2 allows user to specify VLAN field and add it to flow
director by showing vlan field in "ethtool -n ethx" command. It also
refactors static static arrays with runtime dummy packet creation.

Przemyslaw Patynowski (2):
  i40e: Add flow director support for IPv6
  i40e: VLAN field for flow director

 drivers/net/ethernet/intel/i40e/i40e.h        |  11 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    | 239 +++++++-
 drivers/net/ethernet/intel/i40e/i40e_main.c   |  79 ++-
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 534 +++++++++++-------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   2 +
 5 files changed, 647 insertions(+), 218 deletions(-)

-- 
2.17.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
