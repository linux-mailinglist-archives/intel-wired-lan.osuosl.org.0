Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BC1285CDB
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Oct 2020 12:23:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D0AB3867B2;
	Wed,  7 Oct 2020 10:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PMKKzok7YBU9; Wed,  7 Oct 2020 10:23:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BC4E8688D;
	Wed,  7 Oct 2020 10:23:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9174D1BF314
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 10:23:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D4B18402A
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 10:23:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rqHbOZhLdlSI for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Oct 2020 10:23:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C60283773
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Oct 2020 10:23:37 +0000 (UTC)
IronPort-SDR: yjuRJVBkeTzL1OcQHLlVKRWSRbfcxgTJqwigsJKW4H+jFcXIda19IGv4BRb1444e977+bxYSef
 HepjUcPVesQQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9766"; a="161494368"
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="161494368"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 03:23:36 -0700
IronPort-SDR: ZTx5Jc91M54kaAdg16c5SBme5ZGtsk2bkpm+RDzwe3TBrUxLzZtY/ZY28gEY+tYLd2l+FOV1cJ
 uZ+Hf1uE149w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,346,1596524400"; d="scan'208";a="316146859"
Received: from unknown (HELO localhost.igk.intel.com) ([10.102.19.171])
 by orsmga006.jf.intel.com with ESMTP; 07 Oct 2020 03:23:34 -0700
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  7 Oct 2020 12:23:25 +0200
Message-Id: <20201007102325.1551-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.18.4
Subject: [Intel-wired-lan] [PATCH net v2 0/2] Multiple Traffic Class support
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
Cc: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>

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
 drivers/net/ethernet/intel/i40e/i40e_txrx.c   | 529 +++++++++++-------
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   2 +
 5 files changed, 642 insertions(+), 218 deletions(-)

-- 
2.18.4

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
