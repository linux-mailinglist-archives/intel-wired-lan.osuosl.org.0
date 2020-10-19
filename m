Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80358293225
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Oct 2020 01:56:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9844A81E48;
	Mon, 19 Oct 2020 23:56:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jDhIXF36DToJ; Mon, 19 Oct 2020 23:56:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 215A380112;
	Mon, 19 Oct 2020 23:56:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 052741BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EEF1987309
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Ma+0Kd7iv6h for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Oct 2020 23:56:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1D22D87298
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Oct 2020 23:56:01 +0000 (UTC)
IronPort-SDR: 8xSaPWSXhyx/yaUrqhHEh/s23Fi/C27BVFNAsr2bxa3HZFv0Uaa7nQJD/ZBnkk6Cr4lhnZBBxk
 UEB5XwczfxTw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="166351752"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="166351752"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 16:55:57 -0700
IronPort-SDR: BswQ7k2iF9jpABk0U8i90tLqP9J7rw0YRm+I2pjl6CjD2hXZm+l+yKqyWRrBtW5W9LPEP+hgNW
 rhGT7Y3Dttmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="465712618"
Received: from amlin-018-053.igk.intel.com ([10.102.18.53])
 by orsmga004.jf.intel.com with ESMTP; 19 Oct 2020 16:55:56 -0700
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 19 Oct 2020 23:50:26 +0000
Message-Id: <20201019235029.176050-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 0/3] i40e: Add software
 controlled DCB feature
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

DCB feature was supported by Firmware LLDP agent only.
If Firmware LLDP agent is enabled it receives DCB related TLVs,
then it configures hardware accordingly.

Allow the OS to take control of handling LLDP frames related
to DCB functionality.

After disabling the Firmware LLDP agent (private flag:
disable-fw-lldp : on), the driver configures DCB with default
values (only one Traffic Class). At the same time, it
allows the OS (software based LLDP agent - userspace application
i.e. lldpad) to receive DCB TLVs and set desired DCB config
through DCB related netlink callbacks.

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Arkadiusz Kubalewski (3):
  i40e: Add hardware configuration for software based DCB
  i40e: Add init and default config of software based DCB
  i40e: Add netlink callbacks support for software based DCB feature

 drivers/net/ethernet/intel/i40e/i40e.h        |  15 +-
 .../net/ethernet/intel/i40e/i40e_adminq_cmd.h |  11 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c |  65 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb.c    | 949 +++++++++++++++++-
 drivers/net/ethernet/intel/i40e/i40e_dcb.h    | 169 +++-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c | 752 +++++++++++++-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  20 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 528 +++++++++-
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   9 +-
 .../net/ethernet/intel/i40e/i40e_register.h   | 172 +++-
 drivers/net/ethernet/intel/i40e/i40e_type.h   |   3 +-
 11 files changed, 2614 insertions(+), 79 deletions(-)


base-commit: 977a109bc3e30ee6303dd767090e04eb5170e986
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
