Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F267B42C0F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 23:43:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 38C56849D9;
	Wed,  3 Sep 2025 21:43:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7BTcNIlhQ6MQ; Wed,  3 Sep 2025 21:43:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5EA35849DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756935804;
	bh=Ww7n3YYZXPx7nW2YxFf6fbAuaOV8JLd7wAKoaQ2xK98=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u42wcxbuEinilixL2KZo0xKhc9ZS05G8duxofojmW9+QiShEu5Lt6vHxqlTm7oILC
	 2hTCPxaIrwDkMNatMffzxFrGrs/hRmlUlFJKeE0DZQF1XIu6FvcIUGMnGdI8AtfvXv
	 ULEHcpxLvkcY+BOtggxg4BCsuuYUGIyfsK8p+mlnp2xFdzKd9siDS8cABoisN2tNnD
	 Ao+JlvExBQmkjdDaSK1coeRQsoHdDu0YtfYVnr9fJhEBnWrUwpV2ZuSoHfXGZ306o2
	 gb5FhGjKUFnVJTpZRzEd8oJ4htYUNwTbjdhIDgBvh1DhfC8n0HkVwGw24RIPqObR6H
	 dISeJIFk/OWBg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5EA35849DB;
	Wed,  3 Sep 2025 21:43:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8AE3C930
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:43:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7C70F40AC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:43:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oIHoK752ULh0 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 21:43:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9F22040D37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F22040D37
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9F22040D37
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 21:43:20 +0000 (UTC)
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-6-gBh7k4htPZOdM7DVtcZpxw-1; Wed, 03 Sep 2025 17:43:17 -0400
X-MC-Unique: gBh7k4htPZOdM7DVtcZpxw-1
X-Mimecast-MFC-AGG-ID: gBh7k4htPZOdM7DVtcZpxw_1756935796
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-45dcf5f1239so1338875e9.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 14:43:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756935796; x=1757540596;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Ww7n3YYZXPx7nW2YxFf6fbAuaOV8JLd7wAKoaQ2xK98=;
 b=cbNrp2b09TX35C9jmXkXU1frgfV2alG1vXC0T+hLwByUOU+RhXKQcefU6dO/7Zy4Yt
 YSgR+6q3Rzrk0Sr1R8YCy/vfsqPVGcH1oLYF121IYqU2v9W7/tkOvsbt8tEW/zFQX4f8
 Kw1W7c+kekxlFaJK9ZM96rStatJ+z2TYnYEgo+SnHfDOt185GGxm18L9zBxmAKi9X/hP
 dw8lLIBkgZ5ifaiwsAhjmoYnxUZoDqbJ9pzv1jz6Nj/1N/t6HLFv4agBEhXds6nNbun7
 +Uh6TTKbI9WTVTgppGnTmIofR4aTO3Bk+XciPqh/qhaD7ZO9LLzbISxATrsgk3DFkZ+B
 OvUQ==
X-Gm-Message-State: AOJu0Yz9G2AXhm2/9C54XdAeLKQQEbt8kJTlOL5IxD7MGRsJVB3d4QL6
 gRgNAym6/aGkE9YXUyE/UCnRJykdNPIiBpC8faTNE+YbgjwZ25l/k2je08MPZF0m4pQfft6mkOz
 yL6YeCcqAmMxMtLr0XjJGgy3kntup10YdYOP8u605+8paas5U9VYVGNSIbwvD/3+uJjoRwtfo0N
 toJSz9B47HxFKtfVIoDPgYYKaK35yv2/LKKRfwLIGFbwXkKU+ZFt9/awct
X-Gm-Gg: ASbGncuXZLfZ+ppXBSP9+sigdwFe65rfwYzgUsqk2lU3Iaf6CtZu1g8AdlQlToEZ82i
 +x8h97a9qDjCC561bEvQkTJlklk4CaLJ5XmzKRhvC8lv+RRjbMOPolLmJ74L6ZGVnla2IXhBIzK
 wSxS+wPR+GB88H3NPm55U0wVdv7X94xFB4G09pFwxZ9/NQIubTDuMgk06xrPxqKqy2U2Y5VFRdk
 kSNMTHPVlpjReuUSZZSYQFccO6GZhrYqkoJNDWbKThTGy1S37z8XCIjVFkqHl7IAk9whx0mTOml
 w7bsIcG0mbT1lOegaRU5pbxoAKaWb45V+/znyF62IdJO
X-Received: by 2002:a05:600c:c8f:b0:45b:7ce0:fb98 with SMTP id
 5b1f17b1804b1-45b85528677mr147560905e9.5.1756935796248; 
 Wed, 03 Sep 2025 14:43:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpptRMLCKUx66SSyYaeG55+QPu1fDBqSH17ajZCjnlYKUXh4ETIc0JSFR1AZRayU2byQD2VA==
X-Received: by 2002:a05:600c:c8f:b0:45b:7ce0:fb98 with SMTP id
 5b1f17b1804b1-45b85528677mr147560695e9.5.1756935795815; 
 Wed, 03 Sep 2025 14:43:15 -0700 (PDT)
Received: from fedora.redhat.com ([147.235.216.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3cf270fbd01sm25529918f8f.13.2025.09.03.14.43.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 14:43:15 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Thu,  4 Sep 2025 00:43:04 +0300
Message-ID: <20250903214305.57724-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 7SYH1rFRELJgiRHB51VpxkHzvP2zXNGLhZ6stH982p4_1756935796
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756935799;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=Ww7n3YYZXPx7nW2YxFf6fbAuaOV8JLd7wAKoaQ2xK98=;
 b=CtnexkKslrwvXirHZmQ10iw7EShVaFbNdTBhbP77p1XzJa/bv0UNkKr4DyOVV+5NJfKrlx
 B8IC7zR6JBOm/Wovz93aiCzfEH+Uk6F+tqYXgeTQHx8TiiTybw6oslhM1Q8XLGr9Iv4kxr
 Ie+YorlQS5U4DIsqBEKOnSPOdpaJD3M=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=CtnexkKs
Subject: [Intel-wired-lan] [PATCH net-next, v3,
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

