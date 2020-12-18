Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF01B2DE122
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Dec 2020 11:36:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 606B62E2DD;
	Fri, 18 Dec 2020 10:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yr44+D3zrJGF; Fri, 18 Dec 2020 10:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 28DAF2E12C;
	Fri, 18 Dec 2020 10:36:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F1DD1BF385
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4AD1B878BA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3txkQdJYogz for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Dec 2020 10:36:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB731878B7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Dec 2020 10:36:14 +0000 (UTC)
IronPort-SDR: eDjqqHaSBwbVj+LBVkdIzobkKNw5GILHOxrUFsszzMmUGim61TpQJYw3pDjzdlp/bNfHLa59CL
 7no+SeNiT+zA==
X-IronPort-AV: E=McAfee;i="6000,8403,9838"; a="175517021"
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="175517021"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2020 02:36:12 -0800
IronPort-SDR: NuqsBXl5c5DCOTynLdXNMwuOWpKtkkLGa2WfvrN1jL064ikpBCxnhKsgC/3q7TpWE6RJI9Trfh
 FuaZuH3bh04A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,430,1599548400"; d="scan'208";a="393502729"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Dec 2020 02:36:11 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 18 Dec 2020 10:36:08 +0000
Message-Id: <20201218103608.4359-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v4 0/2] Flow director support for IPv6
 and VLAN field
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

v4: Changed the name of patch series to keep the upstream integrity

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
