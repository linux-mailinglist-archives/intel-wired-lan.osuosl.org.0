Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B170F934A8A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Jul 2024 10:56:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BE11F403FB;
	Thu, 18 Jul 2024 08:56:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWNvIr7TtFjl; Thu, 18 Jul 2024 08:56:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F00B6403B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721293008;
	bh=kY9XX4Ug6bOZxHPTPt1uJFHl+uMLZ8/gOTrfu25TnWo=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=RfJoxXNo4AKXLjyJN2UVw2kJ3PTNnhD5cmiM2f5wl9FXRR6kWTiRboOVAdJ7a7l3j
	 NvkDNV4YYfuKRsXwsvAZnqjMMIKHGkX0H39s/HbPrRBP5HfePJ8zwBc7J8m2YmNXBT
	 rix9r9hiXNhmqLam40Srnn4psegb3GRydcI6zc4hdLVKuefKojIJbpXeEFqEUOkGg9
	 hsRBdXtXb9/BH10UETgxxK6/bIY5U9dDvPH2CKswqyVACL1Vd0TFVQuB04PBu49BNo
	 owCtFLsh+HcmXJfAvwbFp1R6DeJtkYiScKTJRkvcn4bAi26UivnTkpeI/ZBsgQaxOH
	 TFiXrk9Iueu4A==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id F00B6403B3;
	Thu, 18 Jul 2024 08:56:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BC7F1BF3ED
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:56:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 27FFD4027F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:56:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pqr1Z23IZlrx for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Jul 2024 08:56:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=vinschen@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 257B440125
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 257B440125
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 257B440125
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Jul 2024 08:56:44 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-564-7Rf40grtP0CVRje7UxI4kw-1; Thu,
 18 Jul 2024 04:56:39 -0400
X-MC-Unique: 7Rf40grtP0CVRje7UxI4kw-1
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 0F71A1955D4F; Thu, 18 Jul 2024 08:56:37 +0000 (UTC)
Received: from calimero.vinschen.de (unknown [10.39.193.237])
 by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 6969B195605A; Thu, 18 Jul 2024 08:56:36 +0000 (UTC)
Received: by calimero.vinschen.de (Postfix, from userid 500)
 id E7076A80D05; Thu, 18 Jul 2024 10:56:33 +0200 (CEST)
From: Corinna Vinschen <vinschen@redhat.com>
To: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Eric Dumazet <edumazet@google.com>
Date: Thu, 18 Jul 2024 10:56:33 +0200
Message-ID: <20240718085633.1285322-1-vinschen@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721293003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=kY9XX4Ug6bOZxHPTPt1uJFHl+uMLZ8/gOTrfu25TnWo=;
 b=RnkSUQpBfKscf+Xz2BpXdxPmGEHQva2J4XEflg+ni0icegZn98QM90Kl5csVKTQXlanqp/
 W54ODIFM2SWi2CpaN9V15c/48Cva+DFf6kCF3J7tPGJBWZ2EWt41pVx1BqsmspgI5dn1kR
 UNffHRJ+shJN1vI/p9wfBJ+lCyNI5Rg=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=RnkSUQpB
Subject: [Intel-wired-lan] [PATCH net v3] igb: cope with large MAX_SKB_FRAGS.
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
Cc: Jason Xing <kerneljasonxing@gmail.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, linux-kernel@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Paolo Abeni <pabeni@redhat.com>

Sabrina reports that the igb driver does not cope well with large
MAX_SKB_FRAG values: setting MAX_SKB_FRAG to 45 causes payload
corruption on TX.

An easy reproducer is to run ssh to connect to the machine.  With
MAX_SKB_FRAGS=17 it works, with MAX_SKB_FRAGS=45 it fails.

The root cause of the issue is that the driver does not take into
account properly the (possibly large) shared info size when selecting
the ring layout, and will try to fit two packets inside the same 4K
page even when the 1st fraglist will trump over the 2nd head.

Address the issue forcing the driver to fit a single packet per page,
leaving there enough room to store the (currently) largest possible
skb_shared_info.

Fixes: 3948b05950fd ("net: introduce a config option to tweak MAX_SKB_FRAGS")
Reported-by: Jan Tluka <jtluka@redhat.com>
Reported-by: Jirka Hladky <jhladky@redhat.com>
Reported-by: Sabrina Dubroca <sd@queasysnail.net>
Tested-by: Sabrina Dubroca <sd@queasysnail.net>
Tested-by: Corinna Vinschen <vinschen@redhat.com>
Signed-off-by: Paolo Abeni <pabeni@redhat.com>
---
v2: fix subject, add a simple reproducer
v3: fix Fixes, tested with all MTUs from 1200 to 1280 per Eric's suggestion

 drivers/net/ethernet/intel/igb/igb_main.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/igb/igb_main.c b/drivers/net/ethernet/intel/igb/igb_main.c
index 11be39f435f3..232d6cb836a9 100644
--- a/drivers/net/ethernet/intel/igb/igb_main.c
+++ b/drivers/net/ethernet/intel/igb/igb_main.c
@@ -4808,6 +4808,7 @@ static void igb_set_rx_buffer_len(struct igb_adapter *adapter,
 
 #if (PAGE_SIZE < 8192)
 	if (adapter->max_frame_size > IGB_MAX_FRAME_BUILD_SKB ||
+	    SKB_HEAD_ALIGN(adapter->max_frame_size) > (PAGE_SIZE / 2) ||
 	    rd32(E1000_RCTL) & E1000_RCTL_SBP)
 		set_ring_uses_large_buffer(rx_ring);
 #endif
-- 
2.45.2

