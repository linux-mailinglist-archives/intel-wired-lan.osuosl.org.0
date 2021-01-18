Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 355E52FAA62
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Jan 2021 20:42:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AEDAE84CA5;
	Mon, 18 Jan 2021 19:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pP4CyuhdcPLL; Mon, 18 Jan 2021 19:42:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8E8B88532B;
	Mon, 18 Jan 2021 19:42:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D10DC1BF313
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 19:42:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AC12F2042A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 19:42:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FeDLGugB6J1D for <intel-wired-lan@lists.osuosl.org>;
 Mon, 18 Jan 2021 19:42:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id C8E4720029
 for <intel-wired-lan@lists.osuosl.org>; Mon, 18 Jan 2021 19:42:04 +0000 (UTC)
IronPort-SDR: FZgwsX+XOOx77yfcOhvYC8+g3B4AsIOuWU7evGeThLtxthFgol2OkwROsEa1W5u15TDzAGfOO+
 X2vpUOy/HmtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="197540481"
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="197540481"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 11:42:04 -0800
IronPort-SDR: emOk3BCUvgBNQuDg+jWkm4eBZl1WlPUbPwDaHNLtCPEDDpW44zpKTtz915sQP9DcS1iZsMLEEe
 jLIeh5ZHliLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,357,1602572400"; d="scan'208";a="355289820"
Received: from amlin-018-053.igk.intel.com (HELO 10.252.34.83) ([10.102.18.53])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jan 2021 11:42:03 -0800
From: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 18 Jan 2021 19:34:52 +0000
Message-Id: <20210118193454.275037-1-arkadiusz.kubalewski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v4 0/2] i40e: Fix for link-flapping
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VF queues were not brought up when PF was brought up after being downed
if the VF driver disabled VFs queues during PF down. This could happen
in some older or external VF driver implementations.
The problem was that PF driver used vf->queues_enabled as a condition
to decide what link-state it would send out which caused the issue.
Remove the check for vf->queues_enabled in the VF link notify. Now VF
will always be notified of the current link status. Also remove
the queues_enabled member from i40e_vf structure as it is not used
anymore. Also refactor repeated link state reporting code into a
separate helper function i40e_set_vf_link_state().
Otherwise VNF implementation was broken and caused a link flap.

Fixes: 2ad1274fa35a ("i40e: don't report link up for a VF who hasn't enabled")

v2: improve commit message
v3: net tree target
v4: split into 2 patches

Arkadiusz Kubalewski (2):
  i40e: Revert "i40e: don't report link up for a VF who hasn't enabled
    queues"
  i40e: refactor repeated link state reporting code

 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 115 ++++++++++--------
 .../ethernet/intel/i40e/i40e_virtchnl_pf.h    |   1 -
 2 files changed, 67 insertions(+), 49 deletions(-)


base-commit: 82edab16ec1fc048ef6a9a96ec5a0d1374f5bf3b
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
