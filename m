Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAJwBlJ98GlSUAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0494815E4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Apr 2026 11:26:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F6A3411D8;
	Tue, 28 Apr 2026 09:26:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2YJ3wpI_waCF; Tue, 28 Apr 2026 09:26:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF58C411D6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777368399;
	bh=hjK2G7LPiw+kvxLQtLAeEl7+956uNxj39I/8SWahJxw=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=O84vdL72pODdZg+KC3Fvx5iCmgjczyTPC/UdfW+Q6THK4mn+zehuQEOExj3q38pIw
	 mmUeiDnzPOfAp+++urcDoNuUo3Xfv5xB0Slt9aUA/UsCfpC7W1JlADDVOQ3qiDVjWn
	 MlvlxNwAeWxjso/C9dF9QHIZFdoJERTA7Q9YGxUJ/emMoTP/kJ3LC5VGOKUcK0mpZW
	 V7/e47hry32O05CxhHQV36iD34oZaLgrXzJLc1gSag5ht4vtOnp1SI+glsJLkvnjdJ
	 vjNVHfBqFFZGie1QAVSDqlCq0lmgcjwV/VgLBHgVVT0mT40chtA+20F5y5xi5STsoL
	 5JJHtJvCVMT4Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF58C411D6;
	Tue, 28 Apr 2026 09:26:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id A26AF23D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 939EE838B2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fui_0KMLq4bB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 09:26:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A7A87838AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A7A87838AB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A7A87838AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 09:26:35 +0000 (UTC)
X-CSE-ConnectionGUID: wY/IDiPSQnOdmdGHZUS0qQ==
X-CSE-MsgGUID: l7Bggz5WQ7GNv16S4HGKfQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="103731749"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="103731749"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:26:35 -0700
X-CSE-ConnectionGUID: Wzke/4szQrev/j5M+PO4pg==
X-CSE-MsgGUID: mK2Ni828QX2LTMAvEA+HGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="237861386"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orviesa003.jf.intel.com with ESMTP; 28 Apr 2026 02:26:32 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id B5BEE2816F;
 Tue, 28 Apr 2026 10:26:29 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Jiri Pirko <jiri@resnulli.us>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Lukasz Czapnik <lukasz.czapnik@intel.com>,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Simon Horman <horms@kernel.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 28 Apr 2026 11:09:10 +0200
Message-Id: <20260428090912.3461-1-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777368397; x=1808904397;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=NPBLQJqucg7/CxKX3h1LojM1m977hcBM54QKuG8/OJ0=;
 b=cxoyRqxmreq9QbxtI4wZftjPuxQVhGcDsf9wlZUQWsawb2EKiAUb2aSS
 9YDOiNa/Vu77KRxeoO64qkUsWnahHV0JMLpC5xaworR0MG+2N46CJLt4Y
 3iuRWKMEM49ZSO+djxwD4nHZP7II7yEIfw6ul58QAumkmHK7IyB5MVEjz
 6tKX22tpSN6bEIo/42m9c/jCUgHGpseDrEw2arSZgbC7gRXIDKWyK1O6v
 IAML0+sfibUu+CK7WVKw1dlq+KKQUL8M1AbnNawp5pVS5gL9K3xI1F8Lc
 xTE7DQzbjNlMO/L5dVb2Uq0v/sDUKx26YVsefv85+NKTkBUIUFic7gntE
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=cxoyRqxm
Subject: [Intel-wired-lan] [PATCH net-next 0/2] devlink, ice,
 mlx5: add init/fini ops for shared devlink for ice to use
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
X-Rspamd-Queue-Id: 8F0494815E4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:kuba@kernel.org,m:jiri@resnulli.us,m:anthony.l.nguyen@intel.com,m:jacob.e.keller@intel.com,m:lukasz.czapnik@intel.com,m:jedrzej.jagielski@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:saeedm@nvidia.com,m:leon@kernel.org,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:horms@kernel.org,m:przemyslaw.kitszel@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.kitszel@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]

Extend devlink by two callbacks used by shared devlink.
Callbacks provide option for the driver to have constructor/destructor
for the priv data attached to the shared devlink instance.

Use the callbacks from ice.
mlx5 is just touched to have additional param passed.

Non-null additional param for the constructor will be used by separate series.

Przemek Kitszel (2):
  devlink, mlx5: add init/fini ops for shared devlink
  ice: use shared devlink to store ice_adapters instead of custom xarray

 drivers/net/ethernet/intel/ice/ice_adapter.h  | 13 +--
 include/net/devlink.h                         | 26 +++++
 .../net/ethernet/intel/ice/devlink/devlink.c  |  3 +
 drivers/net/ethernet/intel/ice/ice_adapter.c  | 95 ++++++-------------
 drivers/net/ethernet/intel/ice/ice_main.c     |  4 +-
 .../ethernet/mellanox/mlx5/core/sh_devlink.c  |  2 +-
 net/devlink/sh_dev.c                          | 39 +++++++-
 7 files changed, 106 insertions(+), 76 deletions(-)

-- 
2.39.3

