Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F50B08FF7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jul 2025 16:59:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 435BB615DA;
	Thu, 17 Jul 2025 14:59:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KF07p_GpcjeU; Thu, 17 Jul 2025 14:59:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9EAC615DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752764349;
	bh=bS+xpV3zOGVjEkUbvaxcfcu5iay3jFphm1yv0dXxru8=;
	h=Date:From:To:Cc:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=hFSlJA4Bc0r8D4st1J9PPJ6feCd+XUM+lG0bE6S4muJn/tfdy9+UNSivNByz0KhKF
	 ulm+5pxd0cMUks3RraLHPsxT4ohMr9K5JElU6wPCjbwGWiKKZmivrWuwqrgrj5iUxJ
	 gji6RQijQm6OaHUePfLHwHPrDmNLyLctIkjU7MbfT0Z5hVIwknft7km/AvfpCPE//x
	 NhtPuMGLW311JRjVse6tkTeG4YSIdXxgTJnqly3VpuoHrI02l6CdBErvuZRb+aJ48X
	 GGXL9Ox48RdaTaz7xfvJeM5uZOkzv90IpdWkjX93YJi5xxbRA8kbnb9ofpqnAzAheQ
	 rGLiNtU4wDKvA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9EAC615DD;
	Thu, 17 Jul 2025 14:59:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id A590E234
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9753D402EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:12:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5zX206vY0ww for <intel-wired-lan@lists.osuosl.org>;
 Wed, 16 Jul 2025 21:12:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::44a; helo=mail-pf1-x44a.google.com;
 envelope-from=3wbv4aagkdxcf74xjx6x3bb381.zb95ag18-j5e10-8xa85fgf.bfhbf8.be3@flex--skhawaja.bounces.google.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 0EC2C40262
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0EC2C40262
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0EC2C40262
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 21:12:32 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 d2e1a72fcca58-74b4d2f67d5so206811b3a.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 16 Jul 2025 14:12:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1752700352; x=1753305152;
 h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bS+xpV3zOGVjEkUbvaxcfcu5iay3jFphm1yv0dXxru8=;
 b=w0vgq3syNsQzfco2G0FWqCa+sKuz+8dSVTomrryuy23Bh3eh+GejNrEXzMmZ+wBdiM
 Gr72MrjP0oWqw2X9v/TM4MiSzp6Qd/VvEI1MyDwIkybkzgRLMuRd1u5F/ux/mwQkkNti
 XvVeUZHddRi5wt0glqkpGl/6UIgfOG97vaot1AI0GmLfXUXE2xAhyrt27rgLRNjPBZYF
 gJrzeNy2imz0myPhJng8+6Nn4YSXZZFqVaJYij5gqgd9IMXvyp7SRMGh7ZXBcvXcnsL2
 zcxXOHz9Q5HYOvqWH94Jud9sD7YajKtqvymJ9WMP6HL9zKx0qjBjVFbUJ9Xpr9zPXxyF
 pJ+w==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8b6iJ9ClvnEqUv2ftivduMaUDTHXKXk67RO6kYnz7Or1pNBHSvcKdH9h/bRfeJagUQgEPqZ0Vhdo3jKMOLIg=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzGgsFdNImW9LXm+ozTs4MSRxNQUM2naNs0IAd3ePCcEII7zxx5
 wZt8Sc0HYguH0BHB81wTATdti+XDg8hY+DwRcGfkfx8G8mQaSt6k/5uHznysTuuK8LLgtW7yVpW
 9qhmehX1kQkfYjg==
X-Google-Smtp-Source: AGHT+IFp0Y3qf0j8IoxbNQMboo8HUABVitL3rc+jXI2qO1HNqcxupsp4DHCARmZZ5MeqkQfpQ8Z5oJBIzPN2Xg==
X-Received: from pfbgt11.prod.google.com ([2002:a05:6a00:4e0b:b0:73e:665:360])
 (user=skhawaja job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6a20:3d87:b0:232:a1a5:8c1f with SMTP id
 adf61e73a8af0-237d7024c9bmr6835815637.26.1752700352218; 
 Wed, 16 Jul 2025 14:12:32 -0700 (PDT)
Date: Wed, 16 Jul 2025 21:12:30 +0000
Mime-Version: 1.0
X-Mailer: git-send-email 2.50.0.727.gbf7dc18ff4-goog
Message-ID: <20250716211230.3592838-1-skhawaja@google.com>
From: Samiullah Khawaja <skhawaja@google.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, intel-wired-lan@lists.osuosl.org
Cc: skhawaja@google.com, willemb@google.com, almasrymina@google.com, 
 David Decotigny <decot@google.com>, Anjali Singhai <anjali.singhai@intel.com>, 
 Sridhar Samudrala <sridhar.samudrala@intel.com>, linux-kernel@vger.kernel.org, 
 netdev@vger.kernel.org, emil.s.tantilov@intel.com
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 17 Jul 2025 14:59:08 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1752700352; x=1753305152; darn=lists.osuosl.org;
 h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
 :date:message-id:reply-to;
 bh=bS+xpV3zOGVjEkUbvaxcfcu5iay3jFphm1yv0dXxru8=;
 b=CcZxP8Cmrna5ks79CThYAJelv7XyoDO9adOF1OXeqrgKT86TXuTB3VTiYE4jtR3wiz
 aOAnDOoWg4qGPIQQb6v4379Cc3QfQltFosK4uYBwnUNzdl4JXoEDythmn5q/7w3wcRoh
 qyaY2uIs2No9JP/+3AgssoyiGUfAaY9ZcO7UyotqDwpIuNyKovzSJ7h/hgF4/c7lQjLr
 PG6KJOS5GalCZ0USMiWc7jK1E3ejn8qxBzenxerjo6sBys7AbMhOHAqNdObkTTYw2MH8
 5lhAt8jRBMFLSrg9xF3uheLUCmddc3Q301nfpk1tbuAw+TADZjWOcFk/B+fVJ4l8ULJY
 vPgg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=CcZxP8Cm
Subject: [Intel-wired-lan] [PATCH iwl-next] idpf: set napi for each TX and
 RX queue
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

Use netif_queue_set_napi to associate TX/RX queues to the relevant napi.
This allows fetching napi for a TX or RX queue using netlink queue-get
op.

Tested:
python3 tools/net/ynl/pyynl/cli.py \
	--spec Documentation/netlink/specs/netdev.yaml \
	--do queue-get --json '{"ifindex": 3, "type": "rx", "id": 2}'
{'id': 2, 'ifindex': 3, 'napi-id': 515, 'type': 'rx'}

Signed-off-by: Samiullah Khawaja <skhawaja@google.com>
---
 drivers/net/ethernet/intel/idpf/idpf_txrx.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_txrx.c b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
index bf23967674d5..f01e72fb73e8 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_txrx.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_txrx.c
@@ -4373,7 +4373,7 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport,
 					 struct idpf_q_vec_rsrc *rsrc)
 {
 	int (*napi_poll)(struct napi_struct *napi, int budget);
-	int irq_num;
+	int i, irq_num;
 	u16 qv_idx;
 
 	if (idpf_is_queue_model_split(rsrc->txq_model))
@@ -4390,6 +4390,20 @@ static void idpf_vport_intr_napi_add_all(struct idpf_vport *vport,
 		netif_napi_add_config(vport->netdev, &q_vector->napi,
 				      napi_poll, v_idx);
 		netif_napi_set_irq(&q_vector->napi, irq_num);
+
+		for (i = 0; i < q_vector->num_rxq; ++i) {
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->rx[i]->idx,
+					     NETDEV_QUEUE_TYPE_RX,
+					     &q_vector->napi);
+		}
+
+		for (i = 0; i < q_vector->num_txq; ++i) {
+			netif_queue_set_napi(vport->netdev,
+					     q_vector->tx[i]->idx,
+					     NETDEV_QUEUE_TYPE_TX,
+					     &q_vector->napi);
+		}
 	}
 }
 

base-commit: 4cc8116d6c4ef909e52868c1251ed6eff8c5010b
-- 
2.50.0.727.gbf7dc18ff4-goog

