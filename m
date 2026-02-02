Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uJEfBYPOgGkuBwMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:19:15 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D783CED60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 17:19:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DB3D40851;
	Mon,  2 Feb 2026 16:19:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79xPeiFHRrqs; Mon,  2 Feb 2026 16:19:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9355E40839
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770049144;
	bh=1rZ2SEYb9Cchgc3kP9Zh8vieF6lrwjUU6HQCddLtTBk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Og4S2xBZciU9qwgBwIVxYVQAK4xz7mI2r4spDyciZcvYHauicAaqFSKFtWMgvMHZS
	 KPOJfjMLOc2GNSfq1H8OAckgF1snsHErA8XJ9xfyN9R6dVXqB1WJKYLmKCDXdgGxsT
	 24wFib8LMfDnAgUnhWPqSgo+2L7BbzUiUPVJcTr2YkGnttQcA398+yVn2idT1fO4Lr
	 CamOZbO0FX+XSWDBgnrOP6x/JL0QCA/AAfqhb7Q7lNNR448tv6UJsmHSf8LkGbID+S
	 M2JdgWE4T5slZ+KoLt7CwS8ujaGsF3bxzo71jDb4VOsNpt8c7kAfPLhc2n5loHyGUj
	 42950Cc+iSgbA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9355E40839;
	Mon,  2 Feb 2026 16:19:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 514061E0
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:19:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2FB418291A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:19:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XrEEC1wY_F8F for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 16:19:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1B36C8246D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B36C8246D
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1B36C8246D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 16:19:01 +0000 (UTC)
Received: from ms-a2 (182.51.30.125.dy.iij4u.or.jp [125.30.51.182])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 612GIRwd025215
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Tue, 3 Feb 2026 01:18:28 +0900 (JST) (envelope-from kohei@enjuk.jp)
From: Kohei Enju <kohei@enjuk.jp>
To: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, kohei.enju@gmail.com,
 Kohei Enju <kohei@enjuk.jp>
Date: Mon,  2 Feb 2026 16:17:14 +0000
Message-ID: <20260202161826.114393-1-kohei@enjuk.jp>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=1rZ2SEYb9Cchgc3kP9Zh8vieF6lrwjUU6HQCddLtTBk=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:To:Subject:Date:Message-ID;
 s=rs20251215; t=1770049108; v=1;
 b=Agq9KvgTjCzE3Mg3Gg3RuebX3twA/tQPT6qwicWfwyXycOuUHLLkVYUhfUBpY+Wz
 uGs0sFMNPB87h4kAXxnrekCohRm1pi3sZzo6FaJ3THUpuJee4l4NTlm0hjEfqApn
 2Rxghv1aSYaIT2XSdC2touXJ0yt6C4omirerbeJaedBO6iiT3DBfaRkCJSvQ6xdD
 ypxwWEoy4Kc2KZ9vb/DH5Y3SLmdUMPo0BppWQGK/XNVfeyV4SxwJe/WG9ISY+y/I
 F6nZ1SRyDbTAVrHMoTDa3PAF60SyG1woCR3EMTQMj6JGaseYEqXAQ4UQh7RRytCu
 NPnMEO5VVPLBJB8Dwe7qPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=Agq9KvgT
Subject: [Intel-wired-lan] [PATCH v1 iwl-next] ice: fix NULL pointer
 dereference when changing RX queue length
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[intel.com,lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,enjuk.jp];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,mem.id:url];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 5D783CED60
X-Rspamd-Action: no action

When changing RX queue length via 'ethtool -G $DEV rx $NUM', a WARNING
indicates the driver missed unregistering xdp_rxq_info [1], and then
NULL pointer dereference panics the kernel. [2]

The following sequence in ice_set_ringparam() triggers this bug.
1. Allocate new rx_rings
2. rx_rings[i] = *vsi->rx_rings[i];
3. ice_down() unregisters vsi->rx_rings[i]->xdp_rxq
4. ice_up() registers rx_ring[i]->xdp_rxq
   a. __xdp_rxq_info_reg() sees the copied state REG_STATE_REGISTERED
      and calls xdp_rxq_info_unreg() to fix it [1]
   b. xdp_unreg_mem_model() looks up the stale mem.id in rhashtable,
      which was already removed in step 3, causing NULL dereference [2]

The root cause is that struct copying includes xdp_rxq_info which
contains registration state that should not be duplicated.

Fix by clearing xdp_rxq_info after copying the ring so it starts with
REG_STATE_NEW instead of the stale REG_STATE_REGISTERED.

[1]
 Missing unregister, handled but fix driver
 WARNING: net/core/xdp.c:182 at __xdp_rxq_info_reg+0x89/0x150, CPU#4: ethtool/1105
 [...]
 RIP: 0010:__xdp_rxq_info_reg+0x89/0x150
 [...]
 Call Trace:
  <TASK>
  ice_queue_mem_alloc+0x159/0x240
  ice_vsi_cfg_rxq+0xc3/0x160
  ice_vsi_cfg_rxqs+0x4f/0x70
  ice_up+0xd/0x20
  ice_set_ringparam+0x34f/0x4e0

[2]
 BUG: kernel NULL pointer dereference, address: 0000000000000008
 [...]
 RIP: 0010:xdp_unreg_mem_model+0x113/0x340
 [...]
 Call Trace:
  <TASK>
  __xdp_rxq_info_reg+0xfd/0x150
  ice_queue_mem_alloc+0x159/0x240
  ice_vsi_cfg_rxq+0xc3/0x160
  ice_vsi_cfg_rxqs+0x4f/0x70
  ice_up+0xd/0x20
  ice_set_ringparam+0x34f/0x4e0

Fixes: 111a8e2be488 ("ice: implement Rx queue management ops")
Signed-off-by: Kohei Enju <kohei@enjuk.jp>
---
I see the Fixes: commit exists in only tnguy/next-queue.git, so I'm
sending this patch to iwl-next, not iwl-net.

Also IIUC dev-queue in tnguy/next-queue.git is rebased continuously, so
the commit hash will be stale soon, and I don't know how to handle this.

I'd appreciate it if iwl-folks know the way to handle it. Thanks!
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index ddd252fb1124..e4c286a22ff5 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3338,6 +3338,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		rx_rings[i].cached_phctime = pf->ptp.cached_phc_time;
 		rx_rings[i].desc = NULL;
 		rx_rings[i].xdp_buf = NULL;
+		memset(&rx_rings[i].xdp_rxq, 0, sizeof(rx_rings[i].xdp_rxq));
 
 		/* this is to allow wr32 to have something to write to
 		 * during early allocation of Rx buffers
-- 
2.51.0

