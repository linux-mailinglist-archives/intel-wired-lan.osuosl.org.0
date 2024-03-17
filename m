Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D8C87EC0F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 18 Mar 2024 16:24:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC17540A50;
	Mon, 18 Mar 2024 15:24:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cFIz37UdFnRr; Mon, 18 Mar 2024 15:24:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CEA940A58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1710775477;
	bh=xwgcjp0weLNxp98CRwtASrSw9liqeX/V6E5QJd63HBY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=jf4oWZT4WQ84GutDFek3B1quF7TIPeeTANarLzxdLKZML+zaeNRWf0Ama/mVcpuXv
	 3Z0VnYpTxOI0azbaKMiARZR/80tNpNpNIIUe2qDXLnjKvcABm9wZUB2PZrEm+kF6d9
	 PkUj3ND39Be/7/pMEtB1OCDNCcF9rtOynT63fLJQAoJ6B+Hw5O7JjkpA7s06zj6ZW+
	 6m3f/x7dx+vfHM0FJojS8vWiyBkCc+IoeMbnwGZ/6xfYzFLTrE3R0kN0gqX2jYI3W5
	 qWkRDba1pnN5Lw272qUZVt2vPnH/LPwLxLTZY+vX1jC0nlUV8pof3L5PolZGI07732
	 OgVDrowkHVH1w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CEA940A58;
	Mon, 18 Mar 2024 15:24:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 43C251BF408
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Mar 2024 15:28:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3053540111
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Mar 2024 15:28:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qd96z8D3uKiJ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 17 Mar 2024 15:28:27 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::42d; helo=mail-wr1-x42d.google.com;
 envelope-from=thorsten.blum@toblux.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1809940103
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1809940103
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1809940103
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Mar 2024 15:28:26 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id
 ffacd0b85a97d-34005b5927eso632959f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 17 Mar 2024 08:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1710689305; x=1711294105;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=xwgcjp0weLNxp98CRwtASrSw9liqeX/V6E5QJd63HBY=;
 b=h+3z2dFQSwtA6VlYyoHr8ZLs8ggOFAilxss7UXUTNlchXZAtZv5lsz27O7ZJaxw/Vi
 aO55PVatIY+1xGhXAqpt6Vmemp48x+Pt484LPKM5+g3/TpvF8rTTD6vKaTUnKl5NMQEv
 /NyUx+1BLCjVIky9//TYolFxqzHkPoLi/a61vdG0CQPCD2k8oyDv9xEd+/DRACO990Bz
 OsQbjMZCOtR/o7nOCGAqbRx24Y7O9OcbB4iIWnjH1fNpGIft9q7ZUb/OpugAWr8R0cK4
 9orAtqa/W4LtVf/iXsmTcIyprnG2bvL7tw8cob8XZGMkrNjEn5BlhwztO5FdRmjR/6xh
 vRVQ==
X-Gm-Message-State: AOJu0YyXaXX4ddBOvVQaErXNJQElI/rxkeEFqPSO3/DgpF/vRXXVLIz3
 M4tjyFozRwq6Nre5E9K4c6A7wJf5Jg+xwWYQEjhO0rVsRF9QoyXVxFzPPm/N6o8=
X-Google-Smtp-Source: AGHT+IGMuH5PGta5RX7cF19pcwqvZj3InDGy1xP8Uiy9LWzR13NMZTSxnRYyZv2KKWCw+F0Uq+m2YQ==
X-Received: by 2002:adf:f884:0:b0:33e:c0c5:1799 with SMTP id
 u4-20020adff884000000b0033ec0c51799mr7120068wrp.45.1710689304903; 
 Sun, 17 Mar 2024 08:28:24 -0700 (PDT)
Received: from fedora.fritz.box (aftr-82-135-80-212.dynamic.mnet-online.de.
 [82.135.80.212]) by smtp.gmail.com with ESMTPSA id
 az1-20020adfe181000000b0033ed7181fd1sm4763862wrb.62.2024.03.17.08.28.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Mar 2024 08:28:24 -0700 (PDT)
From: Thorsten Blum <thorsten.blum@toblux.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>
Date: Sun, 17 Mar 2024 16:27:57 +0100
Message-ID: <20240317152756.1666-2-thorsten.blum@toblux.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 18 Mar 2024 15:24:34 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=toblux-com.20230601.gappssmtp.com; s=20230601; t=1710689305; x=1711294105;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=xwgcjp0weLNxp98CRwtASrSw9liqeX/V6E5QJd63HBY=;
 b=fOjomx3Tqlkv0h79+Kyb9yuZhTQXLxRLggYW4OOFLu/w7YQq5xWuHzOBXbXITRMLkj
 IlbKU6pAY+1EmCSduhXqTXvbGUPF65aHECtjq7+Xe1dsxj/FplHguB/hfjkCBKfeBi9D
 fvSXYuDO7lCUPDPjCssnCq6cSW6Y/0km24iRSVhCIxO1JBg3tTgTZGPinoKdpk5rphCa
 rFvoVZ+EQJ2qi2Rd8DioRicwxATp0Gg7bzkuDQ0s7Qzun9C6E1do5qs1qHpJ2ljqjqwg
 gnxk4heKA/8Oh2LM3oc62TZMwqRW9PEVDB7lz19lG10tlpGr7PV5JjvVecoW/tgcqM7Z
 VFNA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=toblux.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=toblux-com.20230601.gappssmtp.com
 header.i=@toblux-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=fOjomx3T
Subject: [Intel-wired-lan] [PATCH] ice: Remove newlines in NL_SET_ERR_MSG_MOD
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Thorsten Blum <thorsten.blum@toblux.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fixes Coccinelle/coccicheck warnings reported by newline_in_nl_msg.cocci.

Signed-off-by: Thorsten Blum <thorsten.blum@toblux.com>
---
 drivers/net/ethernet/intel/ice/ice_devlink.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
index 65be56f2af9e..ebece68d1b23 100644
--- a/drivers/net/ethernet/intel/ice/ice_devlink.c
+++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
@@ -464,17 +464,17 @@ ice_devlink_reload_down(struct devlink *devlink, bool netns_change,
 	case DEVLINK_RELOAD_ACTION_DRIVER_REINIT:
 		if (ice_is_eswitch_mode_switchdev(pf)) {
 			NL_SET_ERR_MSG_MOD(extack,
-					   "Go to legacy mode before doing reinit\n");
+					   "Go to legacy mode before doing reinit");
 			return -EOPNOTSUPP;
 		}
 		if (ice_is_adq_active(pf)) {
 			NL_SET_ERR_MSG_MOD(extack,
-					   "Turn off ADQ before doing reinit\n");
+					   "Turn off ADQ before doing reinit");
 			return -EOPNOTSUPP;
 		}
 		if (ice_has_vfs(pf)) {
 			NL_SET_ERR_MSG_MOD(extack,
-					   "Remove all VFs before doing reinit\n");
+					   "Remove all VFs before doing reinit");
 			return -EOPNOTSUPP;
 		}
 		ice_unload(pf);
-- 
2.44.0

