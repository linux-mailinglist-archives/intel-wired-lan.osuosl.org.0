Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 57703563407
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 15:07:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 156E541874;
	Fri,  1 Jul 2022 13:07:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 156E541874
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656680854;
	bh=sQKtc0ijRo+Y+jtvAlgJ/nmwl+LlGuIJlzrL5zvGdqo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L5/uqQl170PsbF1mRllBSOIgx82z8NM94zE6MBlioiXV2Oph5+YN/RPZc5nshQ9ml
	 Ag9plQSRLsl51aywIp2xlM5XSTSAjcz9aSpngjwC0CFCNpeVIDOuG/g21kblgFjqd/
	 n69vM2DZVP5gLrFbDDUaUsmtq8J7BlCBR/YoLDwqJNcZ4zkMY5x3R3d8LGz8APt9v5
	 ikkep47qApLdrqwzXm8FXOsQPdtbg5Qc/8xDL4ePg6HKC9sdwXaWtb6RBp54lg+Fp1
	 KdghZfnNANJGbtYUGPmhPTVy6DcetuhIMh4clS4Sgn/zOZlmDKlk1SqsZ9vPUufiyQ
	 dd8VSJYR50Fyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LHS1hrU_pNkd; Fri,  1 Jul 2022 13:07:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 17BAF41880;
	Fri,  1 Jul 2022 13:07:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17BAF41880
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 55D601BF302
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 13:07:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2EB4D41873
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 13:07:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2EB4D41873
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RoMGx1lkQWyw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 13:07:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF4E141859
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DF4E141859
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 13:07:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="283380486"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="283380486"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 06:07:18 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="648341649"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 06:07:16 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Jul 2022 15:06:52 +0200
Message-Id: <20220701130657.2431130-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656680838; x=1688216838;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aL8TDtK339OBxb+fWKbyD81aDUcgA/e1/TSFHnZ02F0=;
 b=ZF0T53h/FxDEpOyXPyTSoNc2yS0BW4J0uhXHQ7P8JezQD7bsMsEPR9m3
 aIxPWHVNOW4apog34RczOtG92QbGi3uwI70UFJIu+D/PeGxjNqOxXkfiD
 clRF7sXWbeawl2e5hB0gdX6vefPMOHjqE1XjfBZfJ59JhzLQ0lyn82Ah/
 CH4ctVogN9NXIaVdXaHIdIOsug9zFvXNorJQPpEC253M0WAPtNUMPRW/r
 o48Px28WPQAtFeZqLyDRIpdb6f9W/0VsqBheGoYt0ttRQp16lDOmw1sIi
 60Eh3jV/vSCA9kDKwBZ22hUy/iFKTXvyjT9fig8VDqNtIbLVSLqncNDmC
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZF0T53h/
Subject: [Intel-wired-lan] [PATCH net-next v3 0/3] ice: Support 5 layer tx
 scheduler topology
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
Cc: Michal Wilczynski <michal.wilczynski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

For performance reasons there is a need to have support for selectable
tx scheduler topology. Currently firmware supports only the default
9-layer and 5-layer topology. This patch series enables switch from
default to 5-layer topology, if user decides to opt-in.


Michal Wilczynski (1):
  ice: Enable switching default tx scheduler topology
v2:
- Moved definitions of scheduling layers to other commit
v3:
- Removed wrong tags
- Added blank line
- Indented a comment
- Moved parts of code to separate commit
- Removed unnecessary initializations
- Change from unnecessary devm_kmemdup to kmemdup


Raj Victor (2):
  ice: Support 5 layer topology
v2:
- Added example of performance decrease in commit message
- Reworded commit message for imperative mood
- Removed unnecessary tags
- Refactored duplicated function call
- Fixed RCT
- Fixed unnecessary call to devm_kfree
- Defined constants
v3:
- Changed title
- Changes in commit description, added versions of DDP
  and firmware, also added test methodology
- Removed unnecessary defines
- Added a newline for define separation
- Did s/tx/Tx in comments
- Removed newline between error check
  ice: Adjust the VSI/Aggregator layers
v3:
- Added this commit
- Removed unnecessary 'else'

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   |  22 ++
 drivers/net/ethernet/intel/ice/ice_common.c   |   5 +
 .../net/ethernet/intel/ice/ice_flex_pipe.c    | 202 ++++++++++++++++++
 .../net/ethernet/intel/ice/ice_flex_type.h    |  17 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 113 ++++++++--
 drivers/net/ethernet/intel/ice/ice_sched.c    |  35 +--
 drivers/net/ethernet/intel/ice/ice_sched.h    |   3 +
 drivers/net/ethernet/intel/ice/ice_type.h     |   1 +
 8 files changed, 360 insertions(+), 38 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
