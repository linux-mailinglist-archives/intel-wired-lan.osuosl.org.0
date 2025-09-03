Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E8563B41777
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 09:58:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6AC09848D7;
	Wed,  3 Sep 2025 07:58:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I_J4dH8NQw-a; Wed,  3 Sep 2025 07:58:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B8E48848D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756886336;
	bh=2s5qHy4+t8iYAHKFveMVUTLlJdHllZf5b+C396ty8oI=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=t3Dp/k+834gfzuXUhseWbVqSSqjIV9i7gsPOVBGL/uGga3BVhB2i7zbk29NoC92eT
	 MKY3fxXKmJzDmsVR1V59uykCgkjmwaAojLwKmBNBvby/jWmzkWf6vSMavbVjLCD+5S
	 OPbatZqmHObD9VQyIE6ouyCxaeW4PGF4+TFIzlrQwlbXpI5oJHan7V7v4fDL1ikLmw
	 yurb2MJB1X6d3mRSLI/HnlUTEu6Y2STErS9m4w2OKK4OYuteYel1mpWP/c6TT2XhQ6
	 YwZoE3h1Z7KN0/tvSs/S3MQuqLhCVFIAMYq7ib5Myd1dG2UCRePWcbrz98wEAiKoyU
	 YuSy+kBMfp2sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B8E48848D0;
	Wed,  3 Sep 2025 07:58:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 3F429439
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2FA884213F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HDGQgHS_2ntw for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 07:58:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8236D4114F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8236D4114F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8236D4114F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 07:58:53 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-490-awUplgfuO_q-OFiP3byffg-1; Wed, 03 Sep 2025 03:58:51 -0400
X-MC-Unique: awUplgfuO_q-OFiP3byffg-1
X-Mimecast-MFC-AGG-ID: awUplgfuO_q-OFiP3byffg_1756886331
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-3ce3e098c48so3923451f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 00:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756886330; x=1757491130;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2s5qHy4+t8iYAHKFveMVUTLlJdHllZf5b+C396ty8oI=;
 b=C5kMTnx3B5v8UfmimPlhdFkS/3kBQkXqVLiBZ7huC144GepFfMft08yXsM49gztnIR
 eq1APYww2/HcGRgm5XVgqxSIlBsfWDtd9xW98hNJIcXsL1V5ZGLGFwZMrR6GjSkZo6Zg
 PB3vsi32XKC6ySizyu5KBoZFc9DIm5ls6ndALgq/dbfybaIZld9ost4H2oUd8AxUhoJP
 sBdCX1fxsI5PR+LyhyvXDJdbh3gOmcJSFWA+7b5hW7r0KP/5JFlmPDACUei/jmi9N43l
 BfWA6WH2A0gvBhqcKsI8pS0G4zWAXiJjqSkNMoJ8SnLiXulee60+kxsgMo/VmS1HkKyx
 ZI9w==
X-Gm-Message-State: AOJu0YzgiUfKQhUTz/h1WGqokNjmziYhSPGoV9JBgU+1uW90sgQGxTBb
 r6FJf7O72cp8VOOcBMxaXnH830vEDEEd0jkVzUzeJmH9U+ihzv14Dx4XxqFQg04nrpy+4+3taZ1
 L8ZJdToAxFxjVTNmPatmV6O59vjyoYBbNKu45bDQnpRf8xR+XDjo8unnt0TNbJPEF22jRT+nnpY
 vOHYHh1Ult/FpIbX9rGuDr10CdMsaVRim2xKEa9ulRpbwKn1ZlHE6bRN+2
X-Gm-Gg: ASbGncsJzTwv/jcN4/66/hheenzgMV8PoWCjZnQ3E10Ksx5fKI4T3GJ/VdjLOXxKovM
 ePiTtCWlHBweo2Z3cd/b25/og0PzgE9B/oqhAqlu4DoF5XOAw5JeEHNYlXNcEkDwOJYWbvQELSI
 Rpe+0+pdDmBLd48abO0lPhZEHYNnLD9BChjseDac0cg/YpCwAEvKGMovbyEsMebSYgDL2AEd0Nu
 I0GLF1AeVwTKGuLWH3alA67QG1x5W2qTQ7xaqMq/Wy43J16VBfl3yDiMfOVYfoKD1lBe/rjSUdR
 jR3xfS95YpKZv1CwmOb7whO/049bx6VxQmRhGKlVEc43
X-Received: by 2002:a05:6000:2281:b0:3c8:ffcf:e01d with SMTP id
 ffacd0b85a97d-3d1e08a3713mr11295708f8f.55.1756886330463; 
 Wed, 03 Sep 2025 00:58:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzOmvaVi5j8uBLe8p/3Yc2U+5c8/5cLhrCsBtEm8GEbXn3pudCF85jQVdSvHelMn/Maoe04A==
X-Received: by 2002:a05:6000:2281:b0:3c8:ffcf:e01d with SMTP id
 ffacd0b85a97d-3d1e08a3713mr11295685f8f.55.1756886330035; 
 Wed, 03 Sep 2025 00:58:50 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3decf936324sm1002477f8f.9.2025.09.03.00.58.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 00:58:49 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed,  3 Sep 2025 10:58:09 +0300
Message-ID: <20250903075810.17149-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NKaiy6BmRpyPAu_AH1gmiIS7UxVHx7JIXWfzYI8YLmo_1756886331
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756886332;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=2s5qHy4+t8iYAHKFveMVUTLlJdHllZf5b+C396ty8oI=;
 b=XBC35BVgZ5rC0VL1d3/LiRD+t32fY9cpOj2FvObjWm1AOwX1K0BDmdT54L9G6NMgPG2Gg2
 Ib5vdj5tcH12frn4hj14Z1p+f7oynYT/70ZcGNgkGB2JUB33/Z6jAqkb8GN5aV3iVvwR9y
 8QrHsGsQhlLeOtU2LhZagaCNLnXgvGM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=XBC35BVg
Subject: [Intel-wired-lan] [PATCH net-next,
 1/2] devlink: Add new "max_mac_per_vf" generic device param
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

From: Mohammad Heib <mheib@redhat.com>

Add a new device generic parameter to controls the maximum
number of MAC filters allowed per VF.

For example, to limit the number of mac filter per vf to 3 macs:
 $ devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
        value 3 \
        cmode runtime

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 Documentation/networking/devlink/devlink-params.rst | 4 ++++
 include/net/devlink.h                               | 4 ++++
 net/devlink/param.c                                 | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
index 211b58177e12..4b1f2d994254 100644
--- a/Documentation/networking/devlink/devlink-params.rst
+++ b/Documentation/networking/devlink/devlink-params.rst
@@ -143,3 +143,7 @@ own name.
    * - ``clock_id``
      - u64
      - Clock ID used by the device for registering DPLL devices and pins.
+   * - ``max_mac_per_vf``
+     - u32
+     - Controls the maximum number of MAC address filters a **trusted VF** can
+       use.
diff --git a/include/net/devlink.h b/include/net/devlink.h
index b32c9ceeb81d..dde5dcbca625 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -530,6 +530,7 @@ enum devlink_param_generic_id {
 	DEVLINK_PARAM_GENERIC_ID_EVENT_EQ_SIZE,
 	DEVLINK_PARAM_GENERIC_ID_ENABLE_PHC,
 	DEVLINK_PARAM_GENERIC_ID_CLOCK_ID,
+	DEVLINK_PARAM_GENERIC_ID_MAX_MAC_PER_VF,
 
 	/* add new param generic ids above here*/
 	__DEVLINK_PARAM_GENERIC_ID_MAX,
@@ -594,6 +595,9 @@ enum devlink_param_generic_id {
 #define DEVLINK_PARAM_GENERIC_CLOCK_ID_NAME "clock_id"
 #define DEVLINK_PARAM_GENERIC_CLOCK_ID_TYPE DEVLINK_PARAM_TYPE_U64
 
+#define DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_NAME "max_mac_per_vf"
+#define DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_TYPE DEVLINK_PARAM_TYPE_U32
+
 #define DEVLINK_PARAM_GENERIC(_id, _cmodes, _get, _set, _validate)	\
 {									\
 	.id = DEVLINK_PARAM_GENERIC_ID_##_id,				\
diff --git a/net/devlink/param.c b/net/devlink/param.c
index 41dcc86cfd94..62fd789ae01c 100644
--- a/net/devlink/param.c
+++ b/net/devlink/param.c
@@ -102,6 +102,11 @@ static const struct devlink_param devlink_param_generic[] = {
 		.name = DEVLINK_PARAM_GENERIC_CLOCK_ID_NAME,
 		.type = DEVLINK_PARAM_GENERIC_CLOCK_ID_TYPE,
 	},
+	{
+		.id = DEVLINK_PARAM_GENERIC_ID_MAX_MAC_PER_VF,
+		.name = DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_NAME,
+		.type = DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_TYPE,
+	},
 };
 
 static int devlink_param_generic_verify(const struct devlink_param *param)
-- 
2.50.1

