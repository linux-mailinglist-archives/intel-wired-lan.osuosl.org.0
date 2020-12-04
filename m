Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3C02CEC34
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 11:30:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A7172E2EA;
	Fri,  4 Dec 2020 10:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wn71IaUGUoWG; Fri,  4 Dec 2020 10:30:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E39C82E2D7;
	Fri,  4 Dec 2020 10:30:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A8AF51BF391
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9E0B8882B6
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CYqJanzCZSaM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 10:30:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com
 [209.85.167.42])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 58FA388257
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 10:30:05 +0000 (UTC)
Received: by mail-lf1-f42.google.com with SMTP id a9so6993865lfh.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 02:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YRI79nwoijzX/iWn8fymlgJV8Mx6+kl0OyDyYdcy5/8=;
 b=sTXJuBWQ02jH1eABWxylyUBObW+swfrv1FjDsO7D2TYQVHzjtUJsoG8/syUsGhDzIO
 ZKbCwtyMnJFuUo1KVhcbL/1DUfPvwFHzv+WZ4enQGFb2GtJWsXqI8+0nTVywMNbUba19
 st7aIDI9Og3jGGBhc5XcrDSb8U7SP4tcF42gvL+YeJJlVZGFzGkuiv9iGVhB/4Ny0UqH
 iv6NqUdCbcykijH2N45I5LgyXqvAHEyJcY87UVLceE/0a5CeSBgzeypYOnxJm+toq3fx
 yx7H6PfDZbUkmawtAB92w6gpVg6G3JH1UE20xFsQTGcY5NGXEdjAOa2jiIFfSwNxwG1C
 FLlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YRI79nwoijzX/iWn8fymlgJV8Mx6+kl0OyDyYdcy5/8=;
 b=SYlpqA2xUWLkGJ4TsbIzBouETCO37kID3BMjc+vcl+vskwqICeFRgob7M5mySiBxO3
 npoU6fuxhLnTaZMgwqc+B1d7Xx++thBnarjYcBU49iD1h6SZbddXan4/64S1hKR2gxJ8
 9jZLlfCnjUvL/U0+qw11BIruHVamM27miI+smYAXhxvHL5vEr5/0Ky+J9/MqS+Jmp5SQ
 k9swVJhNnxAID5D5UGFAhW/vMieutSwYAcpgAD+ePKIANu51MAFz0h3VIs+tIsYslClU
 XaVgKuwWo4SFovJQji5r/MB5mvaVORV0vLA1n5gUGFSJVNhcL/QR+FyaAnFUT+EMz4yJ
 YT3Q==
X-Gm-Message-State: AOAM533npnMIG8UELeC2lfK0zQn2LQFOTwSt0Fe+gfWyfjS8JTV8fTwA
 knxzsPf0wHEMceUMvKl8vDM=
X-Google-Smtp-Source: ABdhPJyL4Zxxy4VJ+kDP9SxTw7GsB2K5yVjMnvQrn0j2zNyGIMrCEz6yAxTfizyhhoPJ9FAbQtO5mQ==
X-Received: by 2002:a19:cb52:: with SMTP id b79mr2901032lfg.223.1607077803308; 
 Fri, 04 Dec 2020 02:30:03 -0800 (PST)
Received: from localhost.localdomain (87-205-71-93.adsl.inetia.pl.
 [87.205.71.93])
 by smtp.gmail.com with ESMTPSA id d9sm62738lfj.228.2020.12.04.02.30.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 02:30:02 -0800 (PST)
From: alardam@gmail.com
X-Google-Original-From: marekx.majtyka@intel.com
To: magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org, toke@redhat.com
Date: Fri,  4 Dec 2020 11:28:59 +0100
Message-Id: <20201204102901.109709-4-marekx.majtyka@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201204102901.109709-1-marekx.majtyka@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 bpf 3/5] xsk: add usage of xdp
 properties flags
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Marek Majtyka <marekx.majtyka@intel.com>

Change necessary condition check for XSK from ndo functions to
xdp properties flags.

Signed-off-by: Marek Majtyka <marekx.majtyka@intel.com>
---
 net/xdp/xsk_buff_pool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/net/xdp/xsk_buff_pool.c b/net/xdp/xsk_buff_pool.c
index 96bb607853ad..7ff82e2b2b43 100644
--- a/net/xdp/xsk_buff_pool.c
+++ b/net/xdp/xsk_buff_pool.c
@@ -158,8 +158,7 @@ static int __xp_assign_dev(struct xsk_buff_pool *pool,
 		/* For copy-mode, we are done. */
 		return 0;
 
-	if (!netdev->netdev_ops->ndo_bpf ||
-	    !netdev->netdev_ops->ndo_xsk_wakeup) {
+	if ((netdev->xdp_properties & XDP_F_FULL_ZC) != XDP_F_FULL_ZC) {
 		err = -EOPNOTSUPP;
 		goto err_unreg_pool;
 	}
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
