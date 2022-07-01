Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7CBD5636C9
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Jul 2022 17:18:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48BED41049;
	Fri,  1 Jul 2022 15:18:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48BED41049
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656688693;
	bh=rcGnqEBnvyfHvC7JnRSCWdQJVRvCphUc+saxyFzPITo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=mPh8n79yQNySmhdZVCgf/hT8Q38kRma1su9YlQr7Umw32q06VaDFzJapBdlwMAPbV
	 sT762kYSbeIAbe+Gy4qP9HCevmAxijlOdLBq5k5EZJ1XVyrFlO/+WMq5KRlrdnXzkx
	 rVd67A4amglKX/nXsP7f2BEjykNPCMFBWs7mF4H/GkIvgp9oyAKpUr4aKHssRfQFXT
	 fYxfve3LKo9RIcNdanmNyPwPpinLqnW7D24fw265/bGx+XHJVNvzI4I0wZk5+mfHpN
	 3jjUVFX7VepXO4AneW4Tt+ObVj4j6s1NYE9ODIHScR3TyxJhViKdGxADnoJ0Pq/RN4
	 f+/moGpY8POnw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJ6FLpXudevJ; Fri,  1 Jul 2022 15:18:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3601B40573;
	Fri,  1 Jul 2022 15:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3601B40573
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 486951BF5DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F3FC8471C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F3FC8471C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F5SqMx9JnLpu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Jul 2022 15:18:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 85D928470C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 85D928470C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Jul 2022 15:18:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="262472755"
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="262472755"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:18:06 -0700
X-IronPort-AV: E=Sophos;i="5.92,237,1650956400"; d="scan'208";a="596288233"
Received: from moradin.igk.intel.com ([10.123.220.12])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 08:18:05 -0700
From: Michal Wilczynski <michal.wilczynski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Jul 2022 17:17:48 +0200
Message-Id: <20220701151750.2441885-1-michal.wilczynski@intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656688686; x=1688224686;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bJkiMOhHz4WKbf4idQxJw5jTARO/WPatrjaXEt+efM0=;
 b=c3IO6F42lGt4fOfAxNWLLqIZz7Ig7maL4KEKpA2XfHavVaeoYRlwsit6
 BlhAxDft7eteS/OBm+zbXFf+uaIEezfAE+2kJXuYBg9XgRrhE0E/F10FE
 mxzz7OdpI4N/aaDGvXCSF2TEoVJO0nbc2Gfpr5Ylzz4uUY/W/dv2CIhVA
 DEIu+XVUT3dgWXcL0YfhwU6ri+uPHmqT23mwq6g8pcpTWeeBWRRjSFxGu
 UYZJie7VJSTXxAVclXnbedFR+ldNKF6PZyHkg+Pa15wTNuIMIdoDOdQWt
 GIF4+pBnqw++0Yh78iWzt7vghVtNjb+Dh9jnBhxz72zSYTEK48BSs9SJV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=c3IO6F42
Subject: [Intel-wired-lan] [PATCH net v2 0/2] Improvements for default VSI
 filter handling
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

Currently when vf-true-promisc-support private flag is set to false, default VSI
switch filter is used instead of a proper promiscuous one. Unfortunately flow for
default VSI is a bit different, which leads to improper behavior like not being
able to enable promisc mode on multiple VF's, or filter not being removed in
'trust off' flow.

v2:
- Changed net-next to net, since this can be treated as a bug fixes
Michal Wilczynski (2):
  ice: Introduce enabling promiscuous mode on multiple VF's
v2:
- Removed unnecessary parameter in function description
- Removed unnecessary comments
- Moved ice_vsi_uses_fltr function
- Removed unnecessary blank lines
- Changed commit message to utilize full 75 characters

  ice: Fix promiscuous mode not turning off

 drivers/net/ethernet/intel/ice/ice.h          |   2 -
 drivers/net/ethernet/intel/ice/ice_eswitch.c  |   8 +-
 drivers/net/ethernet/intel/ice/ice_ethtool.c  |   2 +-
 drivers/net/ethernet/intel/ice/ice_lib.c      |  67 ++++-----
 drivers/net/ethernet/intel/ice/ice_lib.h      |   9 +-
 drivers/net/ethernet/intel/ice/ice_main.c     |  14 +-
 drivers/net/ethernet/intel/ice/ice_switch.c   | 135 +++++++++---------
 drivers/net/ethernet/intel/ice/ice_switch.h   |   6 +-
 drivers/net/ethernet/intel/ice/ice_type.h     |   4 -
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  89 +++++++++---
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |   7 +-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  51 +++----
 12 files changed, 216 insertions(+), 178 deletions(-)

-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
