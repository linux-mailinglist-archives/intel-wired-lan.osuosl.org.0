Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECAB901C00
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 09:39:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F481607C9;
	Mon, 10 Jun 2024 07:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDeZhqFiujgf; Mon, 10 Jun 2024 07:39:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5AC8260752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718005180;
	bh=8VzeL3nKE6zU2UltqCXro0xSR3LpJX5M2yp+N6Qwc9A=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=YZE5ihXxL+LWdqzt7tcVN6O0PbyylvxS9lLiMLheYbTcjrV9hx6ELCpBpYmTx20aN
	 72uAPLhOPYzNYszFFoQhRmuImH/SwtOovVOagz388Taov5Pg7mBrLZh5bpYE+qfWHx
	 GexJPdcreF6Qc3YjFq5bdnyrfMAcuiNJ7g1RK/1VmsUHGP+mTkT4/sMhIqTHLqj5tY
	 9O/98hceZurrGgOS1p2L5m0wmvs6KS0dBl3Z1YUBu1fGE+gqmJyXIMivFpF2Nb8VEA
	 VTwu7e1MZIEsT7+feKqgCphKIKpWv7o6JAWIWxppn/GZ8xWpRJokLouL9rl6ZB+Dqx
	 fgpRUKHe3Z3OA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5AC8260752;
	Mon, 10 Jun 2024 07:39:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 40A851BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C83B405BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xNI3bxTqsBME for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 07:39:38 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D70CF4057E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D70CF4057E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D70CF4057E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:37 +0000 (UTC)
X-CSE-ConnectionGUID: q2lP6NAZSvSsi1PQRaR8yg==
X-CSE-MsgGUID: EMXSWC0HTCShVi2dxOU7sA==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14448559"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14448559"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:39:37 -0700
X-CSE-ConnectionGUID: TDKla3zfQPubMd8LHryheA==
X-CSE-MsgGUID: XYNGAgmCTI2Zf6kixd1vLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="70151231"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Jun 2024 00:39:34 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 09:44:30 +0200
Message-ID: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718005178; x=1749541178;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OI2TMttIgG2il+LvyCg8MUCiIgvkycMDzNq/Drm0yhE=;
 b=TPWbME3b6qNt19U6fFj6Om3dPBjjr2DYB+wVBJSwrXl4iJw3zBRVoxB8
 NjYGsjqfftWckkS4bIDUZ2QdEDC8KO5zAmou6lgY38yRpoKa0UpZFrY/9
 iSAGH5o9XLXobVl9PcWp9h908FrWYXU24PvTOSKY8C2OtGaDK535RYkAf
 JDHoqWIMOyN7o9sBptmYPEbuZcVjJCNfJMPWnwhauwaVXiVhO/KopjQtE
 1hQICOPkcrFVi7n7Udz0pYNyxnoRDKU5QzBVgahEH3V+N4pKCbzswEc5X
 zxvs/ad14/LZnzcCwE3m1bx0eT5oywBwjQgJE+53fEyCihj36gNQ9Xdwd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=TPWbME3b
Subject: [Intel-wired-lan] [iwl-next v3 0/4] ice: prepare representor for SF
 support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kuba@kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

This is a series to prepare port representor for supporting also
subfunctions. We need correct devlink locking and the possibility to
update parent VSI after port representor is created.

Refactor how devlink lock is taken to suite the subfunction use case.

VSI configuration needs to be done after port representor is created.
Port representor needs only allocated VSI. It doesn't need to be
configured before.

VSI needs to be reconfigured when update function is called.

The code for this patchset was split from (too big) patchset [1].

v2 --> v3 [3]:
 * delete ice_repr_get_by_vsi() from header
 * rephrase commit message in moving devlink locking

v1 --> v2 [2]:
 * add returns for kdoc in ice_eswitch_cfg_vsi

[1] https://lore.kernel.org/netdev/20240213072724.77275-1-michal.swiatkowski@linux.intel.com/
[2] https://lore.kernel.org/netdev/20240419171336.11617-1-michal.swiatkowski@linux.intel.com/
[3] https://lore.kernel.org/netdev/20240506084653.532111-1-michal.swiatkowski@linux.intel.com/

Michal Swiatkowski (4):
  ice: store representor ID in bridge port
  ice: move devlink locking outside the port creation
  ice: move VSI configuration outside repr setup
  ice: update representor when VSI is ready

 .../net/ethernet/intel/ice/devlink/devlink.c  |  2 -
 .../ethernet/intel/ice/devlink/devlink_port.c |  4 +-
 drivers/net/ethernet/intel/ice/ice_eswitch.c  | 85 +++++++++++++------
 drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 ++-
 .../net/ethernet/intel/ice/ice_eswitch_br.c   |  4 +-
 .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
 drivers/net/ethernet/intel/ice/ice_repr.c     | 16 ++--
 drivers/net/ethernet/intel/ice/ice_repr.h     |  1 +
 drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  2 +-
 9 files changed, 90 insertions(+), 39 deletions(-)

-- 
2.42.0

