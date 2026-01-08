Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 049FAD057C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 19:24:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEDC88095E;
	Thu,  8 Jan 2026 18:24:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WRE7Mr2UbOq9; Thu,  8 Jan 2026 18:24:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E66D82779
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767896693;
	bh=EdJTpB//vW+EpSpID0j5xfF5Qc+6bYBE0DsV+JlakTM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=o3AJZLJ8oj5Lf8qzzZZStXQI91Bn5XeI212gM7ZIBuaoQTYoSAc3iKnppJh+cpjsS
	 iALfqVPhcPQ3tqL2hlz2xrr2SPOn7bOJKu5ucPhiTtBTfDFxbbUZsBZQhQkOk/pcNN
	 MidEleFc+hm6qJdpbDGWQXQ9Xm3yUDMEaA+IX/aloLKpWfa+eAAZOHdSh3vIvSZu7s
	 e+ocw8bc/64Z5S1HnGJL7+xCrCLSE/xk2MywSeQRAUkJAMsjTQJ4q39RRDpnr3ZayP
	 V/7aGiG1edySXOiAPq8FgmGXW9qk9q96XWG+juC01LwctRbhoc3vXWDwLF7gxur7Qj
	 004vLAepbHuJA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E66D82779;
	Thu,  8 Jan 2026 18:24:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D4FC1308
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C698A60DD8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 79-_mefzrIQl for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 18:24:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C282E60DD1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C282E60DD1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C282E60DD1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:24:50 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-257-5OWADEZhNPK15ahOaubzug-1; Thu,
 08 Jan 2026 13:24:41 -0500
X-MC-Unique: 5OWADEZhNPK15ahOaubzug-1
X-Mimecast-MFC-AGG-ID: 5OWADEZhNPK15ahOaubzug_1767896677
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 82A0C1956096; Thu,  8 Jan 2026 18:24:37 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.20])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 60B17180009E; Thu,  8 Jan 2026 18:24:30 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Jan 2026 19:23:15 +0100
Message-ID: <20260108182318.20935-10-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-1-ivecera@redhat.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767896689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EdJTpB//vW+EpSpID0j5xfF5Qc+6bYBE0DsV+JlakTM=;
 b=Hwl6R5UHb06OOAAW7eesI+SlRQsNHQlzvyMcfDe9SJFZZVLtHsBCAtymhiyAptqww/g0Cu
 7/3q9odsxF/WDqIgTdD7mg1KaNmf5vDnWrtCo2r955O6FKfNHAiQ20CsmVKFg18UDwMKnX
 iQy+yq0c3D1Y4yNwP4zMvFsxSDhOGww=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Hwl6R5UH
Subject: [Intel-wired-lan] [PATCH net-next 09/12] dpll: Prevent duplicate
 registrations
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>,
 linux-rdma@vger.kernel.org, Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Modify the internal registration helpers dpll_xa_ref_{dpll,pin}_add()
to reject duplicate registration attempts.

Previously, if a caller attempted to register the same pin multiple
times (with the same ops, priv, and cookie) on the same device, the core
silently increments the reference count and return success. This behavior
is incorrect because if the caller makes these duplicate registrations
then for the first one dpll_pin_registration is allocated and for others
the associated dpll_pin_ref.refcount is incremented. During the first
unregistration the associated dpll_pin_registration is freed and for
others WARN is fired.

Fix this by updating the logic to return `-EEXIST` if a matching
registration is found to enforce a strict "register once" policy.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 drivers/dpll/dpll_core.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/dpll/dpll_core.c b/drivers/dpll/dpll_core.c
index c1cb9b4a376e7..bc7b75bcf9509 100644
--- a/drivers/dpll/dpll_core.c
+++ b/drivers/dpll/dpll_core.c
@@ -160,10 +160,8 @@ dpll_xa_ref_pin_add(struct xarray *xa_pins, struct dpll_pin *pin,
 		if (ref->pin != pin)
 			continue;
 		reg = dpll_pin_registration_find(ref, ops, priv, cookie);
-		if (reg) {
-			refcount_inc(&ref->refcount);
-			return 0;
-		}
+		if (reg)
+			return -EEXIST;
 		ref_exists = true;
 		break;
 	}
@@ -243,10 +241,8 @@ dpll_xa_ref_dpll_add(struct xarray *xa_dplls, struct dpll_device *dpll,
 		if (ref->dpll != dpll)
 			continue;
 		reg = dpll_pin_registration_find(ref, ops, priv, cookie);
-		if (reg) {
-			refcount_inc(&ref->refcount);
-			return 0;
-		}
+		if (reg)
+			return -EEXIST;
 		ref_exists = true;
 		break;
 	}
-- 
2.52.0

