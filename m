Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCyVH1NdumnFUgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:47 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B222B785F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 09:07:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F1B837A4;
	Wed, 18 Mar 2026 08:07:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OeT3jROpjdqY; Wed, 18 Mar 2026 08:07:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8C38C8386E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773821264;
	bh=mPPsXU2UPBWsf4isM0DBUHJ/i240RMOmr07qKmgECt8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=oWu3elJgzJoRfdIbdKk/SAIbfCkEhh17XENhk8F99cved2SasJUdoj1Hj+ti4LfWF
	 Zk+PtykqlumTN+AXaN+7EqlyOl8ctKA3++Zh15vT7jiF/3BINyTorLRU9AcKNWEPJG
	 Dm3/YM93qeqg6BxuYJLx1qS1KLbdEQqnU75jjQiHC4OSQnGxpgVgLhHl80DlNOKb0m
	 kHPI9H9W2RTVJvRsRSDI40vUJP6xYJPLGz3AAzUnm5w/mPlbzGqirOY1MIFEAd5tVA
	 xw6U9kI7w7/m9E10TQozIXim4VTvEN5VIRIoSwgp15N0FLgJds/c5szokFnJKtHeWL
	 N79zmHWxCR2ZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8C38C8386E;
	Wed, 18 Mar 2026 08:07:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1623CD3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F0B604037C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id umLpVnofH9z4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 08:07:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5D61D40379
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D61D40379
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D61D40379
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:07:39 +0000 (UTC)
X-CSE-ConnectionGUID: +rkj94ftSOeKarTupCgisA==
X-CSE-MsgGUID: WmeOAdMoTpWOQtTbqk4chw==
X-IronPort-AV: E=McAfee;i="6800,10657,11732"; a="74755241"
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="74755241"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 01:07:39 -0700
X-CSE-ConnectionGUID: 2Op16dLKS82lmlB/t7murQ==
X-CSE-MsgGUID: IcmXUWE4SkyEN7qw+RC/Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,127,1770624000"; d="scan'208";a="221628539"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 18 Mar 2026 01:07:38 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Wed, 18 Mar 2026 09:07:34 +0100
Message-ID: <20260318080737.3012293-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773821261; x=1805357261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fdLI0Ko6mtrlnwt0ohoaLVU0GX5WeN1MsPSScgcpLXY=;
 b=NClK6VIcBg9d72aXQArimSfuhEwmgqUInUXxX8jeMrQBDYFvbeKdlYPu
 MRFgokW347NIOGB2rd1Vf0yjw/E+4cVYEpkcDDAjbEino6rBw/VNFvqz9
 Ocx5s2kVfYax/miXpPfYcsoo7SeTx/cX0dG5vI9hOAZxAO9jFd+hdVAAn
 g11Cn3YZESUlmy+A7bZ2nuruyWdPbwsfg69snZi2YR0zu/JxMAlAgpPe6
 U3MVp0jo7+8JDzz4kPm8tA9MZXVIjkYi3U9SeEgc2QlWPvuOUzyYh2xaY
 lRUNeVSOVwovTx6o0TPJhEyRTPXvRH3o7uO/3RGIST4Jgka8wP7ZgtSJR
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=NClK6VIc
Subject: [Intel-wired-lan] [PATCH net-next v1 0/2] virtchnl/ice: add IEEE
 802.1ah (0x88E7) VLAN ethertype support
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E7B222B785F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

IEEE 802.1ah (Provider Backbone Bridging) defines the Backbone Service
Tag (B-TAG) with ethertype 0x88E7. In environments that combine Provider
Backbone Bridging with virtualisation, VFs may receive or transmit frames
carrying a B-TAG and need to install matching VLAN filters on the PF.

The existing virtchnl VLAN v2 capability handshake (via
VIRTCHNL_OP_GET_OFFLOAD_VLAN_V2_CAPS) has dedicated bitmask entries for
each supported ethertype (0x8100, 0x88A8, 0x9100) but lacked one for
0x88E7, making it impossible for a VF driver to advertise or negotiate
B-TAG support.

This series adds the missing capability flag and wires up the three
software-path checks in the ice PF driver that guard VLAN filter
installation:

  Patch 1 adds VIRTCHNL_VLAN_ETHERTYPE_88E7 = BIT(3) to the shared
  virtchnl_vlan_support enum in include/linux/avf/virtchnl.h.

  Patch 2 updates ice's TC TPID validation, VSI VLAN filter validation,
  and the bidirectional virtchnl VLAN v2 translation functions to
  accept/translate ETH_P_8021AH (0x88E7).

No hardware offload changes, no datapath modifications.

Tested on E810 with an iavf VF requesting 0x88E7-tagged VLAN filters:
  Verified that a TC flower rule matching on VLAN TPID 0x88E7 is now
  accepted and offloaded by the driver without returning -EINVAL:

    tc qdisc add dev $VF clsact
    tc filter add dev $VF ingress protocol 802.1Q flower \
        vlan_ethtype 0x88e7 action pass
    # (previously: Error: Failed to offload TC filter - vlan_type was 0)

  Also verified VF transparent passthrough of triple-tagged frames with
  0x88E7 as middle and innermost tag using scapy on a back-to-back E810
  pair (kernel 6.19.0-rc8+, FW 4.91, ICE Triple VLAN Comms DDP 1.3.88.88).

Aleksandr Loktionov (2):
  virtchnl: add VIRTCHNL_VLAN_ETHERTYPE_88E7 support
  ice: add 0x88E7 handling to SW validation paths

 drivers/net/ethernet/intel/ice/ice_tc_lib.c       | 1 +
 drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 3 ++-
 drivers/net/ethernet/intel/ice/virt/virtchnl.c    | 6 ++++++
 include/linux/avf/virtchnl.h                      | 1 +
 4 files changed, 10 insertions(+), 1 deletion(-)

-- 
2.52.0

