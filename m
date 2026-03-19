Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGriLQ/9u2mzqwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 14:41:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4682CC1B5
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 14:40:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74A16418C8;
	Thu, 19 Mar 2026 13:40:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d6bVVQt5YoSL; Thu, 19 Mar 2026 13:40:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DDCF1418C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773927630;
	bh=fk/YPao5MB3kYudLAhqn3ZbQm43GFyzl9r3q1s3aJCk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6Ri1AwHADf/JtZQS7g7GDOiG5LfujIFelWMif4I0me4qH4rEYi9xHvVrmBUHtvvY3
	 Ik7CbEkuqcvb3cn4DU9YyH81Olq8V/Lzd7ktpZMvH8GM2U8plOQkwasIUJVv4Za6II
	 peeZVIaC8xAt9IEZGyWqPJE9TkKU+C2aG0/upB0fY68PV+GSSZcINEE/1PgwcyWzP/
	 Qf6wbcsL/rqCq1ALAGCOgoGFXNgQ/n49jfFjBD9qyPVA/oPzU0bnuJeYYzxa8Xgywp
	 2utql3xy0KJr31v42DeIjznSsaCLSxK/FYsJDht13UXL+Apf471/o3IVWG1121ykG1
	 6J8ghCC8c3vXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DDCF1418C6;
	Thu, 19 Mar 2026 13:40:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id D05DB1B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:40:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AD237615A7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:40:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PyyKDymvZML for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 13:40:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 22652615A6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22652615A6
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 22652615A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 13:40:27 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-82748257f5fso1371620b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 06:40:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773927627; x=1774532427;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fk/YPao5MB3kYudLAhqn3ZbQm43GFyzl9r3q1s3aJCk=;
 b=O86QZOwouQMP0BEl8X4UBSwR4HlKKze52XZo8sZ82XFbAbR+bx+HQaOWP/Rdb9VqTE
 jITu60yQzuE9eBFCJ+80ruuDQD6BGVE/w2XtpjT8wVkrrlwbC4c1NJ3ybkR0+rIrrWm3
 bvwq4f7rQRMgx6W/mE/FG6yvr5jxm/uiH/6mMcImtWQX9qzOzcCHiC0NL8ix4JCws2PF
 N96k+yKkdrdSpksV3naetNiQzRE21wBxV5oo/5l88bVfcqFlwnrrFowmDXzeMu3Yxta0
 fwmM31Blo1TKkM5v4+qauHAuTKHflZiqnQtHD99PX0rtsRDzrsxzClKhJ+Sa9piruv9q
 xNaw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUk08iPOMIITj85/JBuM4E4AjNi4hJBg7v/ZqaR69jHWwFhG3dHxe2TLMLgrMwzPzHFI9tK2SIqzdr5OYkEn1o=@lists.osuosl.org
X-Gm-Message-State: AOJu0YztLWIsIf5tvLFwRzEDGZulgEyTxDnC4zozsqrpIuzvBgHAdzBV
 VWP7WS+KOuPj02pk/IAgDGVtPSwTfOJS0X4WZR3fxYYXIF7oYVMCf9oL
X-Gm-Gg: ATEYQzzMhg4XpXY1DXkKYmEZyCeKFVVczH6A7n8s9/vbneAGK8Fmq3BLygUvaYXQLjc
 LgmGtx7yX5aR44NmkKxQK6cPCo2J1SdzPPwwcB2Po5y/OnjhB01N5rhAimM5ei/lAmDRAC23VuC
 +qXwQYXbmf18koFWy2CC28TVIw0zILiSpUfzCH5HtSXTK8fkevfwbYEZr/CRCwr9qiVAV7w7QFi
 woAAZRInGckMPZuxoOlWsVngrk6Sm8BKiwBXizt7sUoGrQvJ4f+UEY5EZpaki7KPV5Z6/MYCsSD
 wjjUdIlFsPvriYps+LP01PuLIG+iWPpywnJkh2qfD4sx3Gj5DlPcozE4g0vw8rvKqrHvXMY6DAk
 YZi8PCcThCQXZzII64Z3POkNbskhmEdk/HS5lkH4yIO/k4a+5Dr6UNOaFumhNd2vqtZmg4luFFQ
 SOqlESOcm5IbsXdQ==
X-Received: by 2002:a05:6a00:1256:b0:81f:5a94:dc2f with SMTP id
 d2e1a72fcca58-82a7a9827c9mr2712844b3a.35.1773927627233; 
 Thu, 19 Mar 2026 06:40:27 -0700 (PDT)
Received: from lgs.. ([103.86.77.131]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82a6bee89d5sm6007465b3a.51.2026.03.19.06.40.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 06:40:26 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Madhu Chittim <madhu.chittim@intel.com>,
 Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>, stable@vger.kernel.org,
 Paul Menzel <pmenzel@molgen.mpg.de>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 19 Mar 2026 21:40:10 +0800
Message-ID: <20260319134010.684107-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773927627; x=1774532427; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fk/YPao5MB3kYudLAhqn3ZbQm43GFyzl9r3q1s3aJCk=;
 b=bQ+j6ec/n2ODaPIYa5s2EbzFA9IFn90qBf+YDnXZaJLTM5v/bcZGDIzXylUxEd53HA
 gt6mjZcQsAW60t9tLm0fwOWSfJU+9qJuIQthN7IFJGRh/od8UDu/gldMJ9t1g1aZf594
 LOnAGRFaNP7dO6glbLMMynBv5BCRXLK+qcXC+SdCGfm/j+/KPXAdXAlzlJ0tjNsaQSHm
 C+tUZQioACiWaso6oi+GvP4G4hvqCX4G5NzbIJDMbAoIjcIcekZvULMz1VMvXZ/JYCC6
 BlFEdway882RNZaw3CWCfjROUPA8yiKIaK3ep0MdYJbRydl8U6EKUul/3atRbRvn/yjy
 yHJg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bQ+j6ec/
Subject: [Intel-wired-lan] [PATCH v2] idpf: fix UAF and double free in
 idpf_plug_core_aux_dev() error path
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:madhu.chittim@intel.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,m:stable@vger.kernel.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,molgen.mpg.de,intel.com];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mpg.de:email];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.982];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AF4682CC1B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

If auxiliary_device_add() fails, idpf_plug_core_aux_dev() calls
auxiliary_device_uninit(adev), whose release callback
idpf_core_adev_release() frees the containing
struct iidc_rdma_core_auxiliary_dev.

The current error path then accesses adev->id and later frees iadev
again, which may lead to a use-after-free and double free.

Fix it by storing the allocated auxiliary device id in a local
variable and avoiding direct freeing of iadev after
auxiliary_device_uninit().

Fixes: f4312e6bfa2a ("idpf: implement core RDMA auxiliary dev create, init, and destroy")
Cc: stable@vger.kernel.org
Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
v2:
  - Rename id to adev_id as suggested by Paul

 drivers/net/ethernet/intel/idpf/idpf_idc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 6dad0593f7f2..3152f4530347 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -197,6 +197,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
 	struct auxiliary_device *adev;
 	int ret;
+	int adev_id;
 
 	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
 	if (!iadev)
@@ -211,11 +212,15 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 		pr_err("failed to allocate unique device ID for Auxiliary driver\n");
 		goto err_ida_alloc;
 	}
-	adev->id = ret;
+	adev_id = ret;
+	adev->id = adev_id;
+
 	adev->dev.release = idpf_core_adev_release;
 	adev->dev.parent = &cdev_info->pdev->dev;
 	sprintf(name, "%04x.rdma.core", cdev_info->pdev->vendor);
 	adev->name = name;
+	/* iadev is owned by the auxiliary device */
+	iadev = NULL;
 
 	ret = auxiliary_device_init(adev);
 	if (ret)
@@ -230,7 +235,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 err_aux_dev_add:
 	auxiliary_device_uninit(adev);
 err_aux_dev_init:
-	ida_free(&idpf_idc_ida, adev->id);
+	ida_free(&idpf_idc_ida, adev_id);
 err_ida_alloc:
 	cdev_info->adev = NULL;
 	kfree(iadev);
-- 
2.43.0

