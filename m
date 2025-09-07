Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 178CDB47A58
	for <lists+intel-wired-lan@lfdr.de>; Sun,  7 Sep 2025 12:05:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 583DB81E9B;
	Sun,  7 Sep 2025 10:05:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DfDUyvDCWZuS; Sun,  7 Sep 2025 10:05:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B68784678
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757239532;
	bh=nGGRZIccDnooD20o9KF2Pmvo27vaja4lvG3g76RUK6Y=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=SFXbYL9D5PLOuSmbuAiDki02jcMucrI47AiktNe7hWvHCiQ3KPPctv65XtCVnvjoR
	 cpfqkWxkpphnRaE5SIwYsSJiq26VqzRJjC0ADreECyXkhpu8TabigcETpVZEHPyWB5
	 zYJpnFpQR5KJWGFmEB62YH5QRRK4ns7yh8izSJqsTGgzcVrHp8ogSuHUL0XhXSTpwP
	 uexU0v3a3Wma4tD+9JVi+5qHKsq6Gw8wXTzF7+zDuqy0KxZmXztLLw6NBPqO64k+UG
	 Y4lORRfAUFu6AdSIqzEcBIJSuB7kn5Z8xxr3pp3htRGDE+DwxlgLXJnw6RfS+07a1O
	 CplZ76Pj4M4FQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B68784678;
	Sun,  7 Sep 2025 10:05:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id BA9F0273
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B41BC413D7
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:05:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6qGrgNlDSqJD for <intel-wired-lan@lists.osuosl.org>;
 Sun,  7 Sep 2025 10:05:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AFD9340131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AFD9340131
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AFD9340131
 for <intel-wired-lan@lists.osuosl.org>; Sun,  7 Sep 2025 10:05:29 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-50-WVdqdCs4N6KvT7mK3KgKig-1; Sun, 07 Sep 2025 06:05:24 -0400
X-MC-Unique: WVdqdCs4N6KvT7mK3KgKig-1
X-Mimecast-MFC-AGG-ID: WVdqdCs4N6KvT7mK3KgKig_1757239523
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-3d1fe9ecd9dso2918065f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 07 Sep 2025 03:05:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757239523; x=1757844323;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nGGRZIccDnooD20o9KF2Pmvo27vaja4lvG3g76RUK6Y=;
 b=hhNtpX/ilr0jQChBGjGt/T/BMygfK+tW0JOTNCydE/zPPT9H9k3Rpn1VabGGTXKmbk
 8/0+suPpJFsIJpyoi3ou9TLppFDDsjMC/kLeKPuNz5knMMwev/NWNE0P9Lm4Eirzg0Xd
 6bF5csDH2JDcGrvzSkiUwd2/9qPK1uICM1IB6yNc4BScERvbi9eQK43YDq+I+3wjAYzp
 28OLpjn/k00mTpV/LAO3IbwjftcNVRgBJ19/vVtSOD9VmaJaeu42SJZdpOeYCAhJ95nu
 NsskPMZ9oGMTJLzw/63iAGnUT0x3qSqdi5SVU34ZR28Dx31sNN/kKT3uNmlmQme+qIaW
 RlWA==
X-Gm-Message-State: AOJu0Yx6s9Zch8QDp6il0CEla2Ddb1Gm0JdOwEW14A72rK33IpNaVR+o
 RPn0VsUqr8N7VQ9nnKb9gZ7NCatMvwCVoSA0erUEPda/7JDQbf02EBgbao4UK1qG5tywxBwzV8n
 KdAJHEOfcqIXH2bn7LOPtpM9GwjzAXpmo4wr8wVFbaymfa+sBbY2TgBK+hxly+5bK5jNw8bo2gA
 Cty/d5gD8Ldz593rf03GpBEkXuoAf5A0fiX66dfQLQZjctKg/6AIP37A==
X-Gm-Gg: ASbGncvK/a729f5p7yWNr08hXwicmbLPLHg5hRzYJY2EjG4BcywTSXU9ZS1Ful1m1FA
 kp9PqX5qGREI3DZwb1pyP0CF4RyT/Z5ECgc50CZsxmoJm2k8irkZ7IicEps7Qok9M8W2QbykHzc
 EXICowLXw2HlTBMJQneNn4sIksGMW8aa7PM0ioGJFsSJ5jtSUUeRVAaeXMlyfqUP2Hk7sQKSxJi
 ZCZ4rrnAkdrCD1lo42bFH6iGoyOUgfxqhYRzPN++bb/MSg00EPy2Q9Tu5z+CvS5CEpG1TdfxK1/
 kTEB2LY/42TftX1Lgk/QrK9DsRXxJiN8Z65cv7Dmsk1O
X-Received: by 2002:a05:6000:2dc9:b0:3e5:25c2:9635 with SMTP id
 ffacd0b85a97d-3e64c3aebe5mr3707366f8f.56.1757239523203; 
 Sun, 07 Sep 2025 03:05:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHy78tM0pUm983bEUmFh4QtO1D/4cF7xG7JMTEeRcr/FG0Xk/vXwOqZBNkRnYDcI3Pqok0ACQ==
X-Received: by 2002:a05:6000:2dc9:b0:3e5:25c2:9635 with SMTP id
 ffacd0b85a97d-3e64c3aebe5mr3707337f8f.56.1757239522692; 
 Sun, 07 Sep 2025 03:05:22 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3db72983560sm19323344f8f.1.2025.09.07.03.05.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 07 Sep 2025 03:05:22 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Sun,  7 Sep 2025 13:04:53 +0300
Message-ID: <20250907100454.193420-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: T6385n9U37c6_j0PQB5Ouign_JJopGFB7waOP_S3P9M_1757239523
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1757239528;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=nGGRZIccDnooD20o9KF2Pmvo27vaja4lvG3g76RUK6Y=;
 b=J3EQe5VtKWGJxxDNCFBaZPLqOA4zDLj892vJ5XKlpsn7RWQml+LKa+nXFb0H4Hln/rY1Bu
 yFAnNEgb1H+BNUYd9vVRd4Do9ayAklHBEjLJeDdz23kdclpmBsHSRfTuCzuT9Sb4bzXEFm
 c1qCW+ps9rrkYwVST5gI7o2bc0uwWFs=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=J3EQe5Vt
Subject: [Intel-wired-lan] [PATCH net-next, v4,
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

For example, to limit a VF to 3 MAC addresses:
 $ devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
        value 3 \
        cmode runtime

Signed-off-by: Mohammad Heib <mheib@redhat.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 Documentation/networking/devlink/devlink-params.rst | 4 ++++
 include/net/devlink.h                               | 4 ++++
 net/devlink/param.c                                 | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
index 211b58177e12..74a35f3b7c9a 100644
--- a/Documentation/networking/devlink/devlink-params.rst
+++ b/Documentation/networking/devlink/devlink-params.rst
@@ -143,3 +143,7 @@ own name.
    * - ``clock_id``
      - u64
      - Clock ID used by the device for registering DPLL devices and pins.
+   * - ``max_mac_per_vf``
+     - u32
+     - Controls the maximum number of MAC address filters that can be assigned
+       to a Virtual Function (VF).
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

