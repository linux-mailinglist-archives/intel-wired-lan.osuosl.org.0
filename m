Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPeRILO+umkGbgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5760F2BDC89
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:03:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2032140B3A;
	Wed, 18 Mar 2026 15:03:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Nd0Qk6Z0BvaO; Wed, 18 Mar 2026 15:03:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 80CCF40B70
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773846191;
	bh=mel7QAaNVQ/Ezv2Sx36tyZ40BmWBA8rFfywqaIdVMQU=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=gyGKiLi3uVA015pU5HXhTjiIZN15UxCv6+C8R8UFcXwnFRpfWQcpGyAa/+9NOrNV3
	 /y5wj8drlMLICpkQdf1B1tBN3DyUrEfoHKMUgXpBWefJNr4tmDIO+xdZUrZkNgDtu4
	 /CKQbbhHkilHdJ7bihsvYYFw01t3jXDd+T5arJJO8Eaj1ps42cuoO2/1d3HBqSKVXL
	 gss++4Fc9aOezhnJvvuZ4dps/36AASfj2de3HjPsX/Bmu8c8j68Jpq6oVam/qb2dtE
	 Mj6gxGDaCZBiHcvPojNuVc4ZgTSGLuIVgGD5EpWOJBJ2axSlyrufcydOTjO9oa7r3r
	 K0QE6JQlnV4Rw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 80CCF40B70;
	Wed, 18 Mar 2026 15:03:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 6E9E91AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5425460A67
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qm9jh-lWUrNM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:03:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=74.125.82.172;
 helo=mail-dy1-f172.google.com; envelope-from=stfomichev@gmail.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1F79F60A3E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F79F60A3E
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com
 [74.125.82.172])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F79F60A3E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:03:08 +0000 (UTC)
Received: by mail-dy1-f172.google.com with SMTP id
 5a478bee46e88-2bdcf5970cdso794412eec.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:03:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773846188; x=1774450988;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=mel7QAaNVQ/Ezv2Sx36tyZ40BmWBA8rFfywqaIdVMQU=;
 b=f9O7jtNgZ2nBbQRNkLb8FyY+0HTpsg43IzOf2Q747gzvWuozrZm9o9hYgz3O67UmoW
 JZB4YhtW7ZzCPTVxnhIZFMH15hhQ+SRQBojTP+OxF821pEE1Q9k6aZoD3JqZqjFdPOPC
 tkB/tuow0XYDlyt12eJelBZLkL3dBLqrVJNSF27xou+1rm3nDQOq1LcW0jfULPK8/ZrI
 O7Ly6i0d3tnBhPvFcXuB25WMu8/9aBwmq6eEFrF49rG1n8RCJmdZz1dIKQic9Fzv82Be
 mQzfUxw5ICB2MpK4b2SUQ24Ey9e5JIgAonIn684/F+1vqWSbPL/fNTOg9ebs38yjXQul
 TXPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVjl+QElWX5Q2RlQWYu7y/zYiFYg7Rllf0Bj4m7IQfGqkAZamp3fizbUZU2SNziiX/AqMVioxDRQq0Skubp9sI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzZ71yUORt6I0HadvwFkJElNWx70G1gIL0dce2IaGYfHXtFSQWq
 RmAFyKjkbrmHRCFsM7FNun1gpZHhNegANT+DJwWIahbwAXBTetfCTfY=
X-Gm-Gg: ATEYQzzfgDRTgLhnhzhHP5RpwnhRvycOgD1AGAmsJOuHMLcKXn4jEQTWC2T0FB9dlRs
 +Txi8lHHklmSRRV601EBirPLV1le4FdnnPk/wrqtI/LRR5bGQJ+We/ZSFPrSqYKZlR4YNAUHSGT
 N6fY2sgS7+rBjHQYoDV2ETmclOg6YeCrh6LwIFfw1bHRDD6m6ysZp94awBSElKI8fq5wfG5te7S
 QC1sQCYckXSrihY++QFXWBkeDimagnJQh4Xqxt5B0++ti7fdFrR1j0rJyoMi/HyR7FhaD2w7a9X
 ESMfdmq+oXpIXlaHxqe8Qrgq5LWWAHpc2g9X1Eqx3G5IkB9FDQWNnfZoT6tZlnnaTibjcswFCd6
 rfp4t6aTJi3bk34ekMGrDGe53d9moIKJk3ip6z1vM2biAIisu2JUpLuNdy6Msrr0/NyF8OjhZf2
 KDFAofS0l+T+iwC/C3Jzl4VVtdlWbeZvuZ9OFlXay4nq8Aor/CbiaG2VFMveqHM0tDWZMBGG12M
 ZWulczJN1gQpAGCRDuz5MdQOg/I
X-Received: by 2002:a05:7300:dc91:b0:2be:88f2:3c98 with SMTP id
 5a478bee46e88-2c0e46d3cd6mr1489917eec.1.1773846186396; 
 Wed, 18 Mar 2026 08:03:06 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c0e55ee672sm5053621eec.28.2026.03.18.08.03.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 08:03:06 -0700 (PDT)
From: Stanislav Fomichev <sdf@fomichev.me>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, horms@kernel.org, corbet@lwn.net,
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch,
 michael.chan@broadcom.com, pavan.chebbi@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 saeedm@nvidia.com, tariqt@nvidia.com, mbloch@nvidia.com,
 alexanderduyck@fb.com, kernel-team@meta.com, johannes@sipsolutions.net,
 sd@queasysnail.net, jianbol@nvidia.com, dtatulea@nvidia.com,
 sdf@fomichev.me, mohsin.bashr@gmail.com, jacob.e.keller@intel.com,
 willemb@google.com, skhawaja@google.com, bestswngs@gmail.com,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
Date: Wed, 18 Mar 2026 08:02:52 -0700
Message-ID: <20260318150305.123900-1-sdf@fomichev.me>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=fomichev.me
Subject: [Intel-wired-lan] [PATCH net-next v2 00/13] net: sleepable
 ndo_set_rx_mode
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
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[35];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:sdf@fomichev.me,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[fomichev.me];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,fomichev.me,gmail.com,vger.kernel.org,lists.osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdf@fomichev.me,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.996];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5760F2BDC89
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds a new ndo_set_rx_mode_async callback that enables
drivers to handle address list updates in a sleepable context. The
current ndo_set_rx_mode is called under the netif_addr_lock spinlock
with BHs disabled, which prevents drivers from sleeping. This is
problematic for ops-locked drivers that need to sleep.

The approach:
1. Add snapshot/reconcile infrastructure for address lists
2. Introduce dev_rx_mode_work that takes snapshots under the lock,
   drops the lock, calls the driver, then reconciles changes back
3. Move promiscuity handling into the scheduled work as well
4. Convert existing ops-locked drivers to ndo_set_rx_mode_async
5. Add a warning for ops-locked drivers still using ndo_set_rx_mode
6. Add a selftest exercising the team+bridge+macvlan topology that
   triggers the addr_lock -> ops_lock ordering issue

v2:
- wifi: cfg80211: use __rtnl_unlock in nl80211_pre_doit (syzbot)
- simplify mlx5e_sync_netdev_addr for !uc (Cosmin)
- switch to snapshot in bnxt_cfg_rx_mode (Michael)
- add team to net/config (Jakub)

Stanislav Fomichev (13):
  net: add address list snapshot and reconciliation infrastructure
  wifi: cfg80211: use __rtnl_unlock in nl80211_pre_doit
  net: introduce ndo_set_rx_mode_async and dev_rx_mode_work
  net: move promiscuity handling into dev_rx_mode_work
  fbnic: convert to ndo_set_rx_mode_async
  mlx5: convert to ndo_set_rx_mode_async
  bnxt: convert to ndo_set_rx_mode_async
  bnxt: use snapshot in bnxt_cfg_rx_mode
  iavf: convert to ndo_set_rx_mode_async
  netdevsim: convert to ndo_set_rx_mode_async
  dummy: convert to ndo_set_rx_mode_async
  net: warn ops-locked drivers still using ndo_set_rx_mode
  selftests: net: add team_bridge_macvlan rx_mode test

 Documentation/networking/netdevices.rst       |  12 +
 drivers/net/dummy.c                           |   6 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c     |  53 +--
 drivers/net/ethernet/intel/iavf/iavf_main.c   |  14 +-
 .../net/ethernet/mellanox/mlx5/core/en/fs.h   |   5 +-
 .../net/ethernet/mellanox/mlx5/core/en_fs.c   |  30 +-
 .../net/ethernet/mellanox/mlx5/core/en_main.c |  16 +-
 .../net/ethernet/meta/fbnic/fbnic_netdev.c    |  20 +-
 .../net/ethernet/meta/fbnic/fbnic_netdev.h    |   4 +-
 drivers/net/ethernet/meta/fbnic/fbnic_pci.c   |   4 +-
 drivers/net/ethernet/meta/fbnic/fbnic_rpc.c   |   2 +-
 drivers/net/netdevsim/netdev.c                |   8 +-
 include/linux/netdevice.h                     |  26 ++
 net/core/dev.c                                | 175 ++++++++--
 net/core/dev.h                                |   1 +
 net/core/dev_addr_lists.c                     | 110 +++++-
 net/core/dev_addr_lists_test.c                | 321 +++++++++++++++++-
 net/wireless/nl80211.c                        |   2 +-
 tools/testing/selftests/net/config            |   1 +
 tools/testing/selftests/net/rtnetlink.sh      |  44 +++
 20 files changed, 761 insertions(+), 93 deletions(-)

-- 
2.53.0

