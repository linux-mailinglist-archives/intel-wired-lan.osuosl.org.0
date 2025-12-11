Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 55553CB70A0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Dec 2025 20:48:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BFE140338;
	Thu, 11 Dec 2025 19:48:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CIDwyXfrB92H; Thu, 11 Dec 2025 19:48:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C0167410ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765482507;
	bh=mIstUGBR0rD4CfMkeCa+/gSeNm5pDQuFR2aC3PBwoZ4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=96eHxg8q05W3xaJiZQskXAGpaTOnirvkFCM3teGMDNFnKgOyuXIr4HlliVyWUcKGR
	 5BfkqesCIoPOQq8a2w3i4G8TCHIQv5g7DW6LXIhcLtHQKvaari/wZNSsVtAYP47mxz
	 1v15xl5Wetx/KG35bikubZyufq934r6QgtD6c87ivMjABZ+wCOlNnma0qqxf7qHtov
	 O85VlvLBS7qQ2V+DsBezsNFxynSNWzTz4rRLtdAV2NG994MlHyCNrJ+OY3MJf+Cg32
	 vjo9Qdd0V/hS9qfX9DK1e8R74nEsKeqZOqA0pNgpe1xXg6xdZTZjdRAcx8BWefGqaU
	 tRRK/OEjD81WA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C0167410ED;
	Thu, 11 Dec 2025 19:48:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id B2E14E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A4A2C80E99
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZEI4UbiNqFeH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Dec 2025 19:48:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9208380749
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9208380749
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9208380749
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Dec 2025 19:48:25 +0000 (UTC)
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-644-2IToVQa4ONmI8g2ht905Lg-1; Thu,
 11 Dec 2025 14:48:19 -0500
X-MC-Unique: 2IToVQa4ONmI8g2ht905Lg-1
X-Mimecast-MFC-AGG-ID: 2IToVQa4ONmI8g2ht905Lg_1765482496
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 2E2101956061; Thu, 11 Dec 2025 19:48:16 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.45.224.252])
 by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 916E919540DF; Thu, 11 Dec 2025 19:48:07 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Grzegorz Nitka <grzegorz.nitka@intel.com>, Jiri Pirko <jiri@resnulli.us>,
 Petr Oros <poros@redhat.com>, Michal Schmidt <mschmidt@redhat.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>, Mark Bloch <mbloch@nvidia.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Simon Horman <horms@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Willem de Bruijn <willemb@google.com>, Stefan Wahren <wahrenst@gmx.net>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org
Date: Thu, 11 Dec 2025 20:47:44 +0100
Message-ID: <20251211194756.234043-2-ivecera@redhat.com>
In-Reply-To: <20251211194756.234043-1-ivecera@redhat.com>
References: <20251211194756.234043-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1765482504;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mIstUGBR0rD4CfMkeCa+/gSeNm5pDQuFR2aC3PBwoZ4=;
 b=hoc6Y/NfzEKYWwu8YaLSOqdEPnSXMWyRjGqdoBGnV9SF+93MSUYIHnNwLy57iojqHa7YIW
 wwB+qaTkGgjxxuK30eWf+wixPPGg22pqbH2/oQOSlRkaS2VlY8WFwoTqSv8nXvpQO9rPTX
 AcsJY6L+qZpVaP8n+Vz4y30+jpAt+Kg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hoc6Y/Nf
Subject: [Intel-wired-lan] [PATCH RFC net-next 01/13] dt-bindings: net:
 ethernet-controller: Add DPLL pin properties
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

Ethernet controllers may be connected to DPLL (Digital Phase Locked Loop)
pins for frequency synchronization purposes, such as in Synchronous
Ethernet (SyncE) configurations.

Add 'dpll-pins' and 'dpll-pin-names' properties to the generic
ethernet-controller schema. This allows describing the physical
connections between the Ethernet controller and the DPLL subsystem pins
in the Device Tree, enabling drivers to request and manage these
resources.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../bindings/net/ethernet-controller.yaml           | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-controller.yaml b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
index 1bafd687dcb18..03d91f786294e 100644
--- a/Documentation/devicetree/bindings/net/ethernet-controller.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-controller.yaml
@@ -13,6 +13,19 @@ properties:
   $nodename:
     pattern: "^ethernet(@.*)?$"
 
+  dpll-pins:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandle to a DPLL pin node of the pins that are
+      connected with this ethernet controller.
+
+  dpll-pin-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      List of DPLL pin name strings in the same order as the dpll-pins,
+      with one name per pin. The dpll-pin-names can be used to match and
+      get a specific DPLL pin.
+
   label:
     description: Human readable label on a port of a box.
 
-- 
2.51.2

