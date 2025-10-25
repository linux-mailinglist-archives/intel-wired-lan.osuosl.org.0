Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D2EC090A5
	for <lists+intel-wired-lan@lfdr.de>; Sat, 25 Oct 2025 15:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE02540782;
	Sat, 25 Oct 2025 13:10:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2S1yg0rNi4UQ; Sat, 25 Oct 2025 13:10:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5500140765
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1761397857;
	bh=MfnHEtILWETgTkXrR+8vZKONJFHmwrYlLtpgQi2+OKs=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=diXU2EIKRTvq3zXj55Jjnn+IC6TvcdF4O9DqpZ3ABoljryZhYBSvPtXaCf7RlkHoM
	 zORTZ8g/na8kJO/gJ833KLHsVNLqkIouzN/9TSFyycXYBxixcmEmaswEuSX9Dw90wG
	 Z1eag7/LQZwZFS9G5jIQ0bYDHt3Lv0VdpyJRelgDaUOh2qXkPX8x9ejjoIS96lq6xn
	 JfXR9s6bVPx7x+QuL7sLI4XHF3lcZAzShYxZbjtnpSvexKnjGH2gUvp9bJZkcY41Oe
	 qFGDcZ8BXIgQbhpEVzFtl+X42m74FdsIase1o9xbmd0nqZ5MWwlOoGqsEqUIcuRtEr
	 F1myThRfwkVKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5500140765;
	Sat, 25 Oct 2025 13:10:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 2DE0B43F
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1F2A9811E4
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:10:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0ItN4ZlViDM4 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 25 Oct 2025 13:10:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 181F4811DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 181F4811DE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 181F4811DE
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 13:10:53 +0000 (UTC)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-156-nEjxX0dYMuGWQrwDgnd7YQ-1; Sat, 25 Oct 2025 09:10:50 -0400
X-MC-Unique: nEjxX0dYMuGWQrwDgnd7YQ-1
X-Mimecast-MFC-AGG-ID: nEjxX0dYMuGWQrwDgnd7YQ_1761397849
Received: by mail-wr1-f72.google.com with SMTP id
 ffacd0b85a97d-42992cb2ee8so494517f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 25 Oct 2025 06:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761397849; x=1762002649;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=MfnHEtILWETgTkXrR+8vZKONJFHmwrYlLtpgQi2+OKs=;
 b=d9lfnYY3p6XI4auIn7+HmoUjprBxS+ahNov2r6fc/0ntlCoGpAIMUspAO9pNIwkpVQ
 3zOtA62kkQTZRk+J+F1XWZJfgdSrwicjUqWPa5riinxC3FUeqwkymGFosFUWindPvVdq
 eq2zeDITfEkDrsaB4G4ZW1QAXOc9A3RPE5arbu4NeZ8W+ED4iGnuQvftgBGYscZ8lFuJ
 XBe3F2zvhrtvT6W+0/N5WCF8acn+PO+mTbxkVdMIBtCws12ZatLmyRMaMnSBVqIKc7El
 eySQgRjVwHLJHSQCf1RVlDZQg62AqRmKm9nBH+YcJ+fq91Gr+Gsc485GafovYu3b10SX
 xvjA==
X-Gm-Message-State: AOJu0YyoTht/y48x1brjb7qf7WruyvsgGgVIsE+kmDfDPluQEL8qDJ27
 kYRx/PsoRwcrnEwfgN/SOUbVds88YgHEjtYITt4g8UjggyyUrK9EIpHwYUhD5BIaZ9qTbsiz+Ic
 ghPw0gdRNrX1jykwZV3ETpkA1YvBtMB42ES9AXc7GKxmTBNAeTUOSdU7JIVTdClr69rYlf5FtS3
 D1xuxu+UooZxi4eNWdM5U+MYgQ2KMX+SFb4JYd53eYC/z3TwhOIxrAJg==
X-Gm-Gg: ASbGncuOFlknYdREks5fhNKbunmrrVzq2INVFcnbr1NlfSba8+mqEvaoEO/dKPLh98A
 WfBCSvikhkxMlEPledamPcIn+0ulCQ/cHP3iQ8DcbbsP2gs0q+U+PMw5L42h7pBJsncwvtq79re
 vuE+JSYHcbB4yDC00aOhW95DP4Rsj19kIgytdmiksilkXuVzVTh/gjdsN7a9P1wKfv3YaJE4dfu
 cZKTCqq9F8WQp0u8WRSqdhWxr497EDhNfoTebolq1Nu6pZE4Rwd0mGVE94GJ3zJmKwhSmlU8QTM
 RQNRylvfX4zsrGwCPhYBcccGLle+ElD2R1SbyIYsq3NeLkAUObJFPL3H+ggbf/oVt3Yo+MG4L0O
 F9d4f/kZHYf9lFIFTl46fsTfII4neHXH3O2MRqVN7
X-Received: by 2002:a05:600c:34d5:b0:46f:b42e:e394 with SMTP id
 5b1f17b1804b1-4711793473fmr238467255e9.41.1761397849226; 
 Sat, 25 Oct 2025 06:10:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGPkt8yQMpMRn6w0dvSWtDDqZDTc71Iu+SqjZFzGg5lhihzYaP0MYTUi2cMh8B5RDLDLcauTA==
X-Received: by 2002:a05:600c:34d5:b0:46f:b42e:e394 with SMTP id
 5b1f17b1804b1-4711793473fmr238467015e9.41.1761397848836; 
 Sat, 25 Oct 2025 06:10:48 -0700 (PDT)
Received: from fedora.redhat.com (bzq-79-177-147-123.red.bezeqint.net.
 [79.177.147.123]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-475dd374e4esm31935335e9.11.2025.10.25.06.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 25 Oct 2025 06:10:48 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: kuba@kernel.org, przemyslawx.patynowski@intel.com, jiri@resnulli.us,
 netdev@vger.kernel.org, horms@kernel.org, jacob.e.keller@intel.com,
 aleksandr.loktionov@intel.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Mohammad Heib <mheib@redhat.com>
Date: Sat, 25 Oct 2025 16:08:58 +0300
Message-ID: <20251025130859.144916-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: NY2hkxCPsCsdrNxruXIGhmueHjKeJbR5WXtP6C2cwBQ_1761397849
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1761397852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=MfnHEtILWETgTkXrR+8vZKONJFHmwrYlLtpgQi2+OKs=;
 b=KcVlSj+PtZieBG2Hp3/nesFPT7SUK2vNgVsD5a5jRsYPu0ZwCgGjr2yWulm/+8noyNXn6a
 Niq+CCH+F9hGCj1WvQ16AnVyMuWtFr7+jPcrAkJ3gT1XHkZE9iQ5YguLWgE1LcO+VRw5kB
 RHW7Ky0Z3Gv8uigeL3wT38lZ6pkii44=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=KcVlSj+P
Subject: [Intel-wired-lan] [PATCH net-next, v5,
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
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 Documentation/networking/devlink/devlink-params.rst | 4 ++++
 include/net/devlink.h                               | 4 ++++
 net/devlink/param.c                                 | 5 +++++
 3 files changed, 13 insertions(+)

diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
index 0a9c20d70122..c0597d456641 100644
--- a/Documentation/networking/devlink/devlink-params.rst
+++ b/Documentation/networking/devlink/devlink-params.rst
@@ -151,3 +151,7 @@ own name.
    * - ``num_doorbells``
      - u32
      - Controls the number of doorbells used by the device.
+   * - ``max_mac_per_vf``
+     - u32
+     - Controls the maximum number of MAC address filters that can be assigned
+       to a Virtual Function (VF).
diff --git a/include/net/devlink.h b/include/net/devlink.h
index 9e824f61e40f..d01046ef0577 100644
--- a/include/net/devlink.h
+++ b/include/net/devlink.h
@@ -532,6 +532,7 @@ enum devlink_param_generic_id {
 	DEVLINK_PARAM_GENERIC_ID_CLOCK_ID,
 	DEVLINK_PARAM_GENERIC_ID_TOTAL_VFS,
 	DEVLINK_PARAM_GENERIC_ID_NUM_DOORBELLS,
+	DEVLINK_PARAM_GENERIC_ID_MAX_MAC_PER_VF,
 
 	/* add new param generic ids above here*/
 	__DEVLINK_PARAM_GENERIC_ID_MAX,
@@ -602,6 +603,9 @@ enum devlink_param_generic_id {
 #define DEVLINK_PARAM_GENERIC_NUM_DOORBELLS_NAME "num_doorbells"
 #define DEVLINK_PARAM_GENERIC_NUM_DOORBELLS_TYPE DEVLINK_PARAM_TYPE_U32
 
+#define DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_NAME "max_mac_per_vf"
+#define DEVLINK_PARAM_GENERIC_MAX_MAC_PER_VF_TYPE DEVLINK_PARAM_TYPE_U32
+
 #define DEVLINK_PARAM_GENERIC(_id, _cmodes, _get, _set, _validate)	\
 {									\
 	.id = DEVLINK_PARAM_GENERIC_ID_##_id,				\
diff --git a/net/devlink/param.c b/net/devlink/param.c
index 70e69523412c..6b233b13b69a 100644
--- a/net/devlink/param.c
+++ b/net/devlink/param.c
@@ -112,6 +112,11 @@ static const struct devlink_param devlink_param_generic[] = {
 		.name = DEVLINK_PARAM_GENERIC_NUM_DOORBELLS_NAME,
 		.type = DEVLINK_PARAM_GENERIC_NUM_DOORBELLS_TYPE,
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

