Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 40730D05794
	for <lists+intel-wired-lan@lfdr.de>; Thu, 08 Jan 2026 19:23:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4F0E60DE8;
	Thu,  8 Jan 2026 18:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K-P2FXhymMB0; Thu,  8 Jan 2026 18:23:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EED4360DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1767896626;
	bh=l7UAWP2gVCuNI0Vx3D2ZNEyFfK9TlSzN+mM7vkRFKbM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=AX/odAa6Tev1HlepFUsyVrIsMU45vomPysw2X3wbQ4hlu1F2hLnvWvU0PA8TgeA8e
	 lE8qfY8XjPDY6kE83EUETiiI3yMI3qwfxlycw7u2/Lk1cU7BUUFuktIKKVvIdMRKLH
	 pXMfvn7FB5ulVQnkqbDMsXAzF/NBLTyQaAh9zIP3PlUcXh+XTb4YQDnqXBL1lnYAE4
	 zhlbBHLC2jmTe5CPxI24BEd3XVCmNTpxknhrXQV4T7j26Si1lQUlsa4hYaX3FGNr6s
	 fxX+YOez+Z+OVmdjNMNgNl/KK+bm8fIHbSzvUlFNRiUGOiCg+7wiTeoTuHusq92WlS
	 1X5whyvUkwuBA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id EED4360DF4;
	Thu,  8 Jan 2026 18:23:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id C4A2E2C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:23:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AA8C082726
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:23:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id U1DPfvmSl5SU for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jan 2026 18:23:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org A14AD8095E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A14AD8095E
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A14AD8095E
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jan 2026 18:23:43 +0000 (UTC)
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-178-T6LDz9oSMBejyACxrDvskg-1; Thu,
 08 Jan 2026 13:23:39 -0500
X-MC-Unique: T6LDz9oSMBejyACxrDvskg-1
X-Mimecast-MFC-AGG-ID: T6LDz9oSMBejyACxrDvskg_1767896616
Received: from mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.93])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 5512C1956089; Thu,  8 Jan 2026 18:23:36 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.32.20])
 by mx-prod-int-06.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 0B0E8180009E; Thu,  8 Jan 2026 18:23:28 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Thu,  8 Jan 2026 19:23:07 +0100
Message-ID: <20260108182318.20935-2-ivecera@redhat.com>
In-Reply-To: <20260108182318.20935-1-ivecera@redhat.com>
References: <20260108182318.20935-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.93
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1767896622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=l7UAWP2gVCuNI0Vx3D2ZNEyFfK9TlSzN+mM7vkRFKbM=;
 b=bnr2GJ8Yy+0+5dmnvPW1xcOKr3IG2I6k5GQT1xjtySNJcUWzT0e4LzSRg8fsYvyCgxzQWm
 wCVnjRq/jJmVdlouyHCMkLhVFqGpVIqM+jBeOe1WyFBqYGywaSAsSkzsCK5Ntj2TQYd4q8
 gEuiS7UQwSSOxd7vztBxNIsG1S634Wc=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=bnr2GJ8Y
Subject: [Intel-wired-lan] [PATCH net-next 01/12] dt-bindings: dpll: add
 common dpll-pin-consumer schema
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

Introduce a common schema for DPLL pin consumers. Devices such as Ethernet
controllers and PHYs may require connections to DPLL pins for Synchronous
Ethernet (SyncE) or other frequency synchronization tasks.

Defining these properties in a shared schema ensures consistency across
different device types that consume DPLL resources.

Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
 .../bindings/dpll/dpll-pin-consumer.yaml      | 30 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml

diff --git a/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
new file mode 100644
index 0000000000000..60c184c18318a
--- /dev/null
+++ b/Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/dpll/dpll-pin-consumer.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: DPLL Pin Consumer
+
+maintainers:
+  - Ivan Vecera <ivecera@redhat.com>
+
+description: |
+  Common properties for devices that require connection to DPLL (Digital Phase
+  Locked Loop) pins for frequency synchronization (e.g. SyncE).
+
+properties:
+  dpll-pins:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description:
+      List of phandles to the DPLL pin nodes connected to this device.
+
+  dpll-pin-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+    description:
+      Names for the DPLL pins defined in 'dpll-pins', in the same order.
+
+dependencies:
+  dpll-pin-names: [ dpll-pins ]
+
+additionalProperties: true
diff --git a/MAINTAINERS b/MAINTAINERS
index 765ad2daa2183..f6f58dfb20931 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7648,6 +7648,7 @@ M:	Jiri Pirko <jiri@resnulli.us>
 L:	netdev@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/dpll/dpll-device.yaml
+F:	Documentation/devicetree/bindings/dpll/dpll-pin-consumer.yaml
 F:	Documentation/devicetree/bindings/dpll/dpll-pin.yaml
 F:	Documentation/driver-api/dpll.rst
 F:	drivers/dpll/
-- 
2.52.0

