Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65947901738
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Jun 2024 19:35:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A9B42607D6;
	Sun,  9 Jun 2024 17:35:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Rp31fhNJfmkx; Sun,  9 Jun 2024 17:35:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 54EF3607C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717954505;
	bh=kQ39yrWSeLcfBXFbIW3/ujUEiVU2vTM6IiCeVabdV3U=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=MchDsF3caSjlkTJdCxDjCTlCdG4GXTr1ITOcZlSfML8quXzcVacMMgJr0xwL1lUPN
	 hGSAmSdl5z7U480T8Ut0IClkuN3xsegR7iBH6gFq1Hpk6fq8+woJW1Ryz1wA59jXBh
	 WI6hs++/TnJ8dMdkP39kYzOLaQzdQqBvA15gBTdZKtoE+W5A4qJwVZvkRFscm+obNR
	 ycjOBSmhxczooukeEH/TO1Q0icsnumF7zvEQkNEBXCfUtof3fMXcq16Nfa6OCamWmQ
	 fKsIw7fz4yN/yua5r03RspDxPAXhlAXM2cyYSf38LvSCnFMCp4lUZhoF/Nvn8dvYRY
	 k3I+uH9GkGVOg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 54EF3607C4;
	Sun,  9 Jun 2024 17:35:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8156B1BF589
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 77D0540297
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SX5y5GUcZsuh for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Jun 2024 17:34:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=193.104.135.124;
 helo=mail1.fiberby.net; envelope-from=ast@fiberby.net; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0AF1740511
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AF1740511
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0AF1740511
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Jun 2024 17:34:56 +0000 (UTC)
Received: from x201s (193-104-135-243.ip4.fiberby.net [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id DE3E4600B1;
 Sun,  9 Jun 2024 17:34:34 +0000 (UTC)
Received: by x201s (Postfix, from userid 1000)
 id BD5A520407A; Sun, 09 Jun 2024 17:34:24 +0000 (UTC)
From: =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>
To: netdev@vger.kernel.org
Date: Sun,  9 Jun 2024 17:33:50 +0000
Message-ID: <20240609173358.193178-1-ast@fiberby.net>
X-Mailer: git-send-email 2.45.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=fiberby.net; s=202008; t=1717954494;
 bh=JkrJak/o4liAaLBMuPCt9zcaNAf1wkkZu0Qot3yV6wg=;
 h=From:To:Cc:Subject:Date:From;
 b=EdXQqAH7a3qGW2gZRnfJJiAl70D1KwnUMbIefvkUaBBW79a5LcPm2PPvDwjOgGtpF
 nW2eIz5JrhxlPCkcB12sd2bqWz8zm+KB2lHJXfINxhQc+aXZBmBvD37CqzD5xr23eH
 5haAvzvvdeM0JbwSzDTDwLEX7Vwi2unAgwNrjB8O4cXhz2mBYsx8LrtxrmiHtnLgkE
 ZgA1C5BrRNuQN5HFjihLedleg9fEqnFF7alBEFvz69z1SDwsBOMXiLVIr5hDJCROa3
 zONw2GyEI7FqiCMlSKbYJphr6KSLN6e2Aq4QbryqRP3jLSkYXbj6oHbLNI50VyZXC+
 PcC8O0/pko9GQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=fiberby.net
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=fiberby.net header.i=@fiberby.net
 header.a=rsa-sha256 header.s=202008 header.b=EdXQqAH7
Subject: [Intel-wired-lan] [PATCH net-next 0/5] net: flower: validate
 encapsulation control flags
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
Cc: Louis Peens <louis.peens@corigine.com>,
 Davide Caratti <dcaratti@redhat.com>, Leon Romanovsky <leon@kernel.org>,
 linux-net-drivers@amd.com, intel-wired-lan@lists.osuosl.org,
 oss-drivers@corigine.com, i.maximets@ovn.org, Tariq Toukan <tariqt@nvidia.com>,
 linux-kernel@vger.kernel.org, Edward Cree <ecree.xilinx@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 =?UTF-8?q?Asbj=C3=B8rn=20Sloth=20T=C3=B8nnesen?= <ast@fiberby.net>,
 Martin Habets <habetsm.xilinx@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>, linux-rdma@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that all drivers properly rejects unsupported flower control flags
used with FLOW_DISSECTOR_KEY_CONTROL, then time has come to add similar
checks to the drivers supporting FLOW_DISSECTOR_KEY_ENC_CONTROL.

There are currently just 4 drivers supporting this key, and
3 of those currently doesn't validate encapsulated control flags.

Encapsulation control flags may currently be unused, but they should
still be validated by the drivers, so that drivers will properly
reject any new flags when they are introduced.

This series adds some helper functions, and implements them in all
4 drivers.

NB: It is currently discussed[1] to use encapsulation control flags
for tunnel flags instead of the new FLOW_DISSECTOR_KEY_ENC_FLAGS.

[1] https://lore.kernel.org/netdev/ZmFuxElwZiYJzBkh@dcaratti.users.ipa.redhat.com/

Asbjørn Sloth Tønnesen (5):
  flow_offload: add encapsulation control flag helpers
  sfc: use flow_rule_is_supp_enc_control_flags()
  net/mlx5e: flower: validate encapsulation control flags
  nfp: flower: validate encapsulation control flags
  ice: flower: validate encapsulation control flags

 drivers/net/ethernet/intel/ice/ice_tc_lib.c   |  4 +++
 .../ethernet/mellanox/mlx5/core/en/tc_tun.c   |  6 ++++
 .../ethernet/netronome/nfp/flower/offload.c   |  4 +++
 drivers/net/ethernet/sfc/tc.c                 |  5 +--
 include/net/flow_offload.h                    | 35 +++++++++++++++++++
 5 files changed, 50 insertions(+), 4 deletions(-)

-- 
2.45.1

