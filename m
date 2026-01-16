Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BE5D3849B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Jan 2026 19:46:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3AE95610E9;
	Fri, 16 Jan 2026 18:46:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wNCxzU8vPTbm; Fri, 16 Jan 2026 18:46:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70779610E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768589201;
	bh=1Vq0sGyRYXFQB0FSoR5ne1F5tGDgvK5fncUfpA16P7M=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FptWqU7pd/JQQH9lqhHDMzBdZ0VRfIqqAcgJVZ2d/hZJ20GF3tCi1EszZ4tCW+NK0
	 XesJ6z8mgn85MeUOh50cK1oqKi4/2/Tult2SbdkwBBiSNoN9HrYm9YbedjQEg8NaX4
	 5Nqk8YBFsrKozlgUouf9GLp7psWkZO8xBWyxne+QAXEkw6JZgUGOMJstfeNq5sUKzZ
	 dC68kW1HwdIWvvORZm5j7r+m9YenVy+N53ZaJ1HIOrOJRQ0ubD62kzZEY9/0B7pl2A
	 0ywi0SnbZ4WPObCfUTcObbJOr9YMK4Wt5s4InSLK/QvlARBWcYG3buxaKh89NbRTN7
	 4EwXddxR/L6pA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70779610E7;
	Fri, 16 Jan 2026 18:46:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id E5427160
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6BCD610E0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id q5WfTlUXhI3q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Jan 2026 18:46:39 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ivecera@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BFD08610E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BFD08610E4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BFD08610E4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Jan 2026 18:46:38 +0000 (UTC)
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-54-qvNhJT7OM9-wkkCk3iIH_A-1; Fri,
 16 Jan 2026 13:46:32 -0500
X-MC-Unique: qvNhJT7OM9-wkkCk3iIH_A-1
X-Mimecast-MFC-AGG-ID: qvNhJT7OM9-wkkCk3iIH_A_1768589189
Received: from mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 92A4918002C7; Fri, 16 Jan 2026 18:46:28 +0000 (UTC)
Received: from p16v.luc.cera.cz (unknown [10.44.34.71])
 by mx-prod-int-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id BD55D19560A7; Fri, 16 Jan 2026 18:46:20 +0000 (UTC)
From: Ivan Vecera <ivecera@redhat.com>
To: netdev@vger.kernel.org
Date: Fri, 16 Jan 2026 19:45:59 +0100
Message-ID: <20260116184610.147591-2-ivecera@redhat.com>
In-Reply-To: <20260116184610.147591-1-ivecera@redhat.com>
References: <20260116184610.147591-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.12
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1768589197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1Vq0sGyRYXFQB0FSoR5ne1F5tGDgvK5fncUfpA16P7M=;
 b=L6Fx/InRpk/Tpj6b4CIZDxlKTi3B/4KDIpD6JADZge/iBMdsF/DX4dfOKRRZGuhbBZLu2a
 uGjlL2qy7e9gMkhT79UhkCmWlf2c4Cic+7ZTFNJfSmel8cp8e9NdW0Sj3v/+yJ2/kA1I8e
 C76tHFbfILgaG2w/7MyUQ0fcW+HZCAU=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=L6Fx/InR
Subject: [Intel-wired-lan] [PATCH net-next v2 01/12] dt-bindings: dpll:
 support acting as pin provider
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
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Jiri Pirko <jiri@resnulli.us>,
 Richard Cochran <richardcochran@gmail.com>,
 Saravana Kannan <saravanak@kernel.org>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, Mark Bloch <mbloch@nvidia.com>,
 linux-kernel@vger.kernel.org, Tariq Toukan <tariqt@nvidia.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Enable DPLL devices to act as pin providers for consumers (such as
Ethernet controllers or PHYs).

Add the '#dpll-pin-cells' property to the generic dpll-device.yaml
schema and mark it as required. This allows DPLL nodes to define pin
specifiers for their connected consumers.

Introduce a new header '<dt-bindings/dpll/dpll.h>' to define pin
direction macros (`DPLL_PIN_INPUT` and `DPLL_PIN_OUTPUT`). These macros
are intended to be used in the DT pin specifiers (inside 'dpll-pins'
properties of consumers) to describe the direction of the signal.

Update the 'microchip,zl30731.yaml' examples to include the new
'#dpll-pin-cells' property.

The core schema definitions for these properties are being added to
dt-schema in PR #183.

Link: https://github.com/devicetree-org/dt-schema/pull/183
Signed-off-by: Ivan Vecera <ivecera@redhat.com>
---
v2:
* removed dpll-pin-consumer.yaml schema per request
* added '#dpll-pin-cells' property into dpll-device.yaml and
  microchip,zl30731.yaml
---
 .../devicetree/bindings/dpll/dpll-device.yaml       | 10 ++++++++++
 .../devicetree/bindings/dpll/microchip,zl30731.yaml |  4 ++++
 MAINTAINERS                                         |  1 +
 include/dt-bindings/dpll/dpll.h                     | 13 +++++++++++++
 4 files changed, 28 insertions(+)
 create mode 100644 include/dt-bindings/dpll/dpll.h

diff --git a/Documentation/devicetree/bindings/dpll/dpll-device.yaml b/Documentation/devicetree/bindings/dpll/dpll-device.yaml
index fb8d7a9a3693f..5022cbd77f308 100644
--- a/Documentation/devicetree/bindings/dpll/dpll-device.yaml
+++ b/Documentation/devicetree/bindings/dpll/dpll-device.yaml
@@ -27,6 +27,13 @@ properties:
   "#size-cells":
     const: 0
 
+  "#dpll-pin-cells":
+    const: 2
+    description: |
+      - Specified pin index
+      - Specified pin direction. The macros are defined in
+        dt-bindings/dpll/dpll.h
+
   dpll-types:
     description: List of DPLL channel types, one per DPLL instance.
     $ref: /schemas/types.yaml#/definitions/non-unique-string-array
@@ -73,4 +80,7 @@ properties:
       - "#address-cells"
       - "#size-cells"
 
+required:
+  - "#dpll-pin-cells"
+
 additionalProperties: true
diff --git a/Documentation/devicetree/bindings/dpll/microchip,zl30731.yaml b/Documentation/devicetree/bindings/dpll/microchip,zl30731.yaml
index 17747f754b845..6693151af6ccb 100644
--- a/Documentation/devicetree/bindings/dpll/microchip,zl30731.yaml
+++ b/Documentation/devicetree/bindings/dpll/microchip,zl30731.yaml
@@ -44,6 +44,8 @@ examples:
       #size-cells = <0>;
 
       dpll@70 {
+        #dpll-pin-cells = <2>;
+
         compatible = "microchip,zl30732";
         reg = <0x70>;
         dpll-types = "pps", "eec";
@@ -80,6 +82,8 @@ examples:
       #size-cells = <0>;
 
       dpll@70 {
+        #dpll-pin-cells = <2>;
+
         compatible = "microchip,zl30731";
         reg = <0x70>;
         spi-max-frequency = <12500000>;
diff --git a/MAINTAINERS b/MAINTAINERS
index afc71089ba09f..d359d42f64223 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -7655,6 +7655,7 @@ F:	Documentation/devicetree/bindings/dpll/dpll-device.yaml
 F:	Documentation/devicetree/bindings/dpll/dpll-pin.yaml
 F:	Documentation/driver-api/dpll.rst
 F:	drivers/dpll/
+F:	include/dt-bindings/dpll/dpll.h
 F:	include/linux/dpll.h
 F:	include/uapi/linux/dpll.h
 
diff --git a/include/dt-bindings/dpll/dpll.h b/include/dt-bindings/dpll/dpll.h
new file mode 100644
index 0000000000000..5fc9815800fc0
--- /dev/null
+++ b/include/dt-bindings/dpll/dpll.h
@@ -0,0 +1,13 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) */
+/*
+ * This header provides constants for DPLL bindings.
+ */
+
+#ifndef _DT_BINDINGS_DPLL_DPLL_H
+#define _DT_BINDINGS_DPLL_DPLL_H
+
+/* DPLL pin direction */
+#define DPLL_PIN_INPUT 0
+#define DPLL_PIN_OUTPUT 1
+
+#endif
-- 
2.52.0

