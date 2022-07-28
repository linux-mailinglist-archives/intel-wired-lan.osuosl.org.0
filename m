Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 911E458408C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 16:07:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 00F0C4193E;
	Thu, 28 Jul 2022 14:07:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00F0C4193E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1659017251;
	bh=E5qtNLXj2JdRSE/8ZXmrqyVaM2xkvRvv24UtLC4+1mI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=m+QLtLm5RJzftgdJvEpLDS9mZ4+5jPGRxYju4cqXfpu2rbS89fkeUKMgKoPydNOcT
	 Vz6HaT4FCrbUlxIZKRhhawS31NqsQ7FRdOL8M7h42lCsS7TrQB9XDkSo3W0kRSmp7L
	 kMUTXy5xmMyrTTJMqJxCk949897w1R8j4g5J7/ZKUU8CwPUSpVOxRVgAp6y2CKM9pt
	 sYtUSiUC0u7nBzIxUxdu/97RD0ZxPeqgVRzldjG45LN/8NvJWiRvi0sOyMB5WTEmSX
	 JfdiOEuUOuWXkQDs++V4HOIrvF/t9KKshUNDL34Wj35wW5k7e4BoDcGhQ5t9J2C93/
	 RGxMd2IDdK4/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RDDWn1Dcf9WD; Thu, 28 Jul 2022 14:07:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1941418AA;
	Thu, 28 Jul 2022 14:07:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1941418AA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2CCC71BF33F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0208E404F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0208E404F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udquwJcYRVpA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Jul 2022 14:07:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2EB564046B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2EB564046B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Jul 2022 14:07:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="289289209"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="289289209"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 07:07:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="690327964"
Received: from propan.igk.intel.com ([10.211.8.82])
 by FMSMGA003.fm.intel.com with ESMTP; 28 Jul 2022 07:07:19 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 28 Jul 2022 16:04:23 +0200
Message-Id: <20220728140426.664140-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.37.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659017241; x=1690553241;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=awEC4VniPVV0ue0bPhZNBlrHweX4mVk43/dufArqL2c=;
 b=XEqz/DImyPu+Sx/3kGSjy4lFFZtqWo6cidQjcdtzllArcsg1vVn1jjTY
 yjoNCgx9U+u+W2HN4nCxWfO0/1xXt6DHh5EhKh25CfzScvt+a+Uk5FMok
 4HJbp5SJttxEMoYrek++9a4+oIZyThQ3l605Sp3BktQ4W3OLYdSM2yDEv
 DeIqfTOasfXNDhUP+x95RsCwkD79lJ0WRKzqM2OLfHEZWR6Nmlefuz2ch
 D/IOA6Q+S8++54Z6OmcUxLacGjkako/6YRlbH3JsBSmHWoZ18QqR+E3iJ
 VrJLF37M3EEkUulLLOM1TIH5f1j5+WkwNdkieRqFXAd/c62c9OXHEUlEt
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XEqz/DIm
Subject: [Intel-wired-lan] [PATCH net-next 0/3] ice: Implement LLDP MIB
 Pending change
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If the RDMA traffic class is removed, then our Control QP (RDMA Admin QP)
may not receive completions and would hang RDMA processing. Which would
translate into requests for reset on the card after receiving such
changes from the switch.

To solve above problem FW will no longer remove TC nodes for the
applicable TC instead allowing RDMA to destroy QP markers. After RDMA
finish outstanding operations notification needs to be sent to FW to
finish DCB configuration change.

Anatolii Gerasymenko (2):
  ice: Get DCBX config from LLDP MIB change event
  ice: Handle LLDP MIB Pending change

Tsotne Chakhvadze (1):
  ice: Add 'Execute Pending LLDP MIB' Admin Queue command

 .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 18 ++++++-
 drivers/net/ethernet/intel/ice/ice_common.c   | 13 +++++
 drivers/net/ethernet/intel/ice/ice_common.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_dcb.c      | 39 ++++++++++++++
 drivers/net/ethernet/intel/ice/ice_dcb.h      |  2 +
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 53 +++++++++++--------
 6 files changed, 101 insertions(+), 25 deletions(-)

-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
