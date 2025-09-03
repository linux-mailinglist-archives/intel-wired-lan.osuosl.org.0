Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 00629B42961
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Sep 2025 21:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1BE3961605;
	Wed,  3 Sep 2025 19:02:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id upFMtwr5S1tx; Wed,  3 Sep 2025 19:02:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 603D561629
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756926169;
	bh=YRc9qQhtPu4aJgrWe6QIrpHXB4Ut/KhAlfEhBqE7V54=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BlAHCbUehVvX/+Z8oDlVsZMKgMy72/73KxUTWENViR9R5U+xFz8AKWU5p4Ke1yeAm
	 L0YFBDAf4UEHkTQXRvAGNxT2a9/KZyyKdenLMM2V8BDdTXjooCd2CDn2ayno6aGzlB
	 bOcpFFZ81L7wPw9+AZQP/Ay41m0lWMSus/HYi4ASVErHKhDxwKbvjmWavgSCkeEiJd
	 CRqU+L7elOlVA207nDqjMD+ZXDeBRK4zvkI6eZ+g7uambP6EsKKmVbhURMk/mBbKgs
	 lwmLqqJbF2Bx8MQfzN+ZTmRe4y0J/MFvfHlQZbC5NoVQXpjp+vaSPrX8pzWHGzWLNX
	 dlur7jkdkQLkg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 603D561629;
	Wed,  3 Sep 2025 19:02:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id C461C111
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AAA8B845C6
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DA_8XVyUNVrc for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Sep 2025 19:02:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=mheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D3CE084577
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3CE084577
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3CE084577
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Sep 2025 19:02:46 +0000 (UTC)
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-644-pXxd_0JNNhSvDQ7JlaJ4JA-1; Wed, 03 Sep 2025 15:02:44 -0400
X-MC-Unique: pXxd_0JNNhSvDQ7JlaJ4JA-1
X-Mimecast-MFC-AGG-ID: pXxd_0JNNhSvDQ7JlaJ4JA_1756926163
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-45b8af0b8deso1154005e9.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 03 Sep 2025 12:02:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1756926163; x=1757530963;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=YRc9qQhtPu4aJgrWe6QIrpHXB4Ut/KhAlfEhBqE7V54=;
 b=tb9RVXvEtk3Q3YfJ2WLQyZSfD2mPAwZJ5MxG3wmJl4XJT48jAjJ3qOOG4jL30aGGb1
 smztI6uoZx6ZDLfNMf7OMgNDAa9rYu7k3dvZb2TTaQXouUufrB6RoqWODgAQJpkjgyfC
 92uCFF8Ga0AlTtMOWT0+17QFdk1uXtAWirlKqBPF1SjNF80FiRTVO22WKcERb/VKTOyA
 pDabyDGPiOqHWkbXvveJI6hrwtyV24O+/nCCiStqKDZAPdD/suGKBPgKw2SA+rFNsJ0q
 Ss+HG/k20jgSqdXRPZ5n0Uy/8vxNyMCmYk8Cfd+nHFo52WuSR8vFsoDX0wzh5TEB3fPk
 bH2A==
X-Gm-Message-State: AOJu0Yx5rxVndFqYF3uqo1o5pnzdcFbry6RJKJm6BefGdQ5x8c8rTPft
 KGEKihEwvyJw77409S/VLp6P3NSIPcL97lxBM3wY3xarfzN3H+oExIOC8hvBpvZS6FAK86lbAdl
 FFYS3AdDzzSW3/AflhWMo1YSPyxD4E4YCkP0YCjAH6U2txoq4gPR2RLa4MlQEkdTv/debbK+jKc
 tdmBsk/MEhfBSCQK6xyI1pxo1pK5n7KB6MAWZakE8BKEdFRRFbZbhjXBy8
X-Gm-Gg: ASbGnctxH+FqCd5VvsirEfXxJTqlR0VKe9nJuVO7VOxSSpYFK8ZX5uajPyu604zoLNu
 Ze3IAO77Dy4l2q6gKycXh81hkoox/qhgInL4TlmOmelPyrxGC8GuBa3IUNTqLcCa5gz3pmubUSc
 OPGOo0jdk86RZa9EV8d2mQ4N8ZuUDNu9T2sFynUZfmM7UXbQW5B8Goptj4Pjzct6TmBhfgnfBkH
 ZajJbROd43btrlc2jsRM07q7P6MAfQEAuTDYhDk/P2hH8ZGvB2zn6ximCIR52brmdbDMuLL5P5K
 o6+QfWMXJG17Cw2kJOyjkUpbELMUo2RM7xbUSv1x3sYRI+Y=
X-Received: by 2002:a05:600c:3b14:b0:45b:9c93:d237 with SMTP id
 5b1f17b1804b1-45cfc8a9d32mr15316675e9.14.1756926163012; 
 Wed, 03 Sep 2025 12:02:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHlZeBDIpo6ChshSjx9wt03zDRLgVFsNe6iBStfpel8EqkMRCiAdP47I2pV+o8YyqRg2cs+qw==
X-Received: by 2002:a05:600c:3b14:b0:45b:9c93:d237 with SMTP id
 5b1f17b1804b1-45cfc8a9d32mr15316305e9.14.1756926162511; 
 Wed, 03 Sep 2025 12:02:42 -0700 (PDT)
Received: from fedora.redhat.com ([2001:4df4:5814:7700:7fb2:f956:4fb9:7689])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-45b6f0c6b99sm331978655e9.4.2025.09.03.12.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Sep 2025 12:02:42 -0700 (PDT)
From: mheib@redhat.com
To: intel-wired-lan@lists.osuosl.org
Cc: przemyslawx.patynowski@intel.com, jiri@resnulli.us, netdev@vger.kernel.org,
 horms@kernel.org, jacob.e.keller@intel.com, aleksandr.loktionov@intel.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Mohammad Heib <mheib@redhat.com>
Date: Wed,  3 Sep 2025 22:02:28 +0300
Message-ID: <20250903190229.49193-1-mheib@redhat.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: Aux_mEbbxXU0pL1B4pXwNf4zjqDQtZ85dduf_HDthkg_1756926163
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: 8bit
content-type: text/plain; charset="US-ASCII"; x-default=true
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1756926165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=YRc9qQhtPu4aJgrWe6QIrpHXB4Ut/KhAlfEhBqE7V54=;
 b=JLkzoqY6/40teHygpcjHQHWPok2PbIXgHuvPtqg4ALDMv6p4UxHaYqk/t476BKxOMZH4PL
 y5FoUlXCXNvNUyjzy64GsngM9xVsYVtCnrD7nBpY/+d3IQ0HiPg8unFwC9JHRe7chc2dS0
 rDjMF6kEb3u91aWUYIcmosz9tnN52ps=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JLkzoqY6
Subject: [Intel-wired-lan] [PATCH net-next, v2,
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

While this parameter is named `max_mac_per_vf`, the exact enforcement
policy may vary between drivers. For example, i40e applies this limit
only to trusted VFs, whereas other drivers may choose to apply it
uniformly across all VFs. The goal is to provide a consistent devlink
interface, while allowing flexibility for driver-specific behavior.

For example, to limit a VF to 3 MAC addresses:
 $ devlink dev param set pci/0000:3b:00.0 name max_mac_per_vf \
        value 3 \
        cmode runtime

Signed-off-by: Mohammad Heib <mheib@redhat.com>
---
 Documentation/networking/devlink/devlink-params.rst | 8 ++++++++
 include/net/devlink.h                               | 4 ++++
 net/devlink/param.c                                 | 5 +++++
 3 files changed, 17 insertions(+)

diff --git a/Documentation/networking/devlink/devlink-params.rst b/Documentation/networking/devlink/devlink-params.rst
index 211b58177e12..2bc9995fd849 100644
--- a/Documentation/networking/devlink/devlink-params.rst
+++ b/Documentation/networking/devlink/devlink-params.rst
@@ -143,3 +143,11 @@ own name.
    * - ``clock_id``
      - u64
      - Clock ID used by the device for registering DPLL devices and pins.
+   * - ``max_mac_per_vf``
+     - u32
+     - Controls the maximum number of MAC address filters that can be assigned
+       to a Virtual Function (VF).
+       The exact enforcement may depend on driver capabilities. For example,
+       some drivers may apply this limit only to *trusted* VFs, while others may
+       apply it to all VFs uniformly. This allows a consistent parameter across
+       devices while leaving flexibility for driver-specific behavior.
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

