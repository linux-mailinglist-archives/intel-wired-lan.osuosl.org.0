Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AN8rBEXKumm6bwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:52:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E412BEB08
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 16:52:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E94DD40A51;
	Wed, 18 Mar 2026 15:52:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4jElN_axnb2x; Wed, 18 Mar 2026 15:52:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6919040A4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773849154;
	bh=jqkH6mzjHCAxqSeaCcRc4i6txUHa48rXIDuskLcyMco=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=3cCjps7sD2J8RFOqyRh/1HOYov0WuE/BHF/5rL5m8sUWHWNBrf5KSMtwkLVk/4tYv
	 6XSbYTlKzMr93ble8rEbAe56xUP5brAmCr/qX47JTQAaimX24zjBbzQ81lBgTIX6jU
	 9hc7/iufIEYYZA/DrpayVN4yz5MOMs4xX3YBLD13nqfS1oixCaikX201VqU34b25tw
	 glZowBsolt2SdpgK+pC+IRg48ebu5urxVg8oYJp2e2QBMaroFGjKigCHggsDcoz/Ov
	 w4fPLOjweaq3yA791R2eooinPgZGEbsj4BxqaItcwsPSjY3RytqzeziOcAvFu8fcDs
	 77UPZilPZaeWQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6919040A4C;
	Wed, 18 Mar 2026 15:52:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 070D51B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E0A78607B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VG5KhUkbq26J for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 15:52:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62c; helo=mail-pl1-x62c.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3CC03607AF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CC03607AF
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com
 [IPv6:2607:f8b0:4864:20::62c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3CC03607AF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 15:52:32 +0000 (UTC)
Received: by mail-pl1-x62c.google.com with SMTP id
 d9443c01a7336-2aaed195901so33396265ad.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 08:52:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773849151; x=1774453951;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jqkH6mzjHCAxqSeaCcRc4i6txUHa48rXIDuskLcyMco=;
 b=T9uxozm6c9ZQ/OP8kid0d3ceVr94TEB20Is/b3iSa5I0u66Iv+IDXGTnUTKgxfS09J
 i+AWFR3ZSGP265P7llKlg6WeQhqu4kpiu9v0yocM7C7bwYEmbjyl7wfwIHsLQwxpcuNt
 aU45Ux4WpneDDJ4vL3EJoeRBC0UYORTcpsofUaOz6KXAxY+Pr/yePx78G6Xor3YIhzS9
 cTnS52fnzqy9dtSP/iXLPxmDiEZ1heO/BsEjQPtNSwfQxizzbQ9fGHbaAozYH0/mYL+m
 jjdK43VAJRrqrgFejNnhShq1Fw7oNk0sOmh+G/HBCU9R46GAvxJOXgOLz6HTVyNBxAkO
 +eSg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzK4YmpRp7cEqgGt1U94Ave9vykPDrtGe+INn1t5VYrWKw8MCMQL+p+OpGvVksqzI/qnYt8ZQU4fWXfHnQvtw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw2t+t+dW6irSQCwqGAjcozvILrfKmmObnOENdIzC1ArvXORkEc
 8DkBehgGCESXzDcTxVkplA8UzlMvflde7h7t8VSkMKIEFg12sGYCxjWm
X-Gm-Gg: ATEYQzxwSouVaWOf33/fMDAkfLF1McZVfvcrQVDED1T6OkvdA34xUgEvHTW+9VCfXeK
 H/OSWn+IGlggX/Lo5MqCIazByLjxdKmFrPx3a/Ybfmkq/YlpzBg8l/hrV+WJwfOnH5rkfkAWRPj
 i9hIZsqpSnQNx6au2ndhUVfhn1fD3vcdFWMX1xlMeycTLzsCf0V0vYgYLyDIqxg6O7a6Lxpqd82
 iRQVIob1kpahdSltVTsrKUdwymZSvB6AWEz1fuV6B3jkgI4zI/dfuXNqnPAMCvaApYqNwtE/oxn
 9Vn5grMcRkXY3YkLBwJQA4Urkthfl6Tp1X6jJbFUK1Ir0fphWeWUfMXuqaHbbXGi8T8EojFL1S4
 ot+XypwD0h33+4XnHYPUq2Ni4f/UFyjnrDDEMtsDRT0MyAmDflpwzxvFaOf195ml7onvJjMIB4/
 4hudpkM2tc1o5ENQ==
X-Received: by 2002:a17:902:e5d2:b0:2ae:5629:ac55 with SMTP id
 d9443c01a7336-2b06e385ab9mr36407775ad.21.1773849151329; 
 Wed, 18 Mar 2026 08:52:31 -0700 (PDT)
Received: from lgs.. ([36.255.193.25]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b06e43074esm31892605ad.19.2026.03.18.08.52.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Mar 2026 08:52:31 -0700 (PDT)
From: Guangshuo Li <lgs201920130244@gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Joshua Hay <joshua.a.hay@intel.com>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Guangshuo Li <lgs201920130244@gmail.com>,
	stable@vger.kernel.org
Date: Wed, 18 Mar 2026 23:52:20 +0800
Message-ID: <20260318155220.642160-1-lgs201920130244@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773849151; x=1774453951; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=jqkH6mzjHCAxqSeaCcRc4i6txUHa48rXIDuskLcyMco=;
 b=Ia93OhveR3k36Xwp4OB6aYDyFCAfcGKT3k7GhQQ60kSa8eH66h28zjotcEGHLiqIUN
 UDu4ScPkbbS+6g9wZOpEpegRMLe3TX9Cm6Y7AJTVZ4dFbKQgue5mB9zGmaAUG6XU+DvE
 VAx70YW2qn0HHeUxuY8h6YPzdSMlSxSxIjuWaEkRJMX2XSP2kmPamQj0gAWNeRkeAKDW
 9LwVW7CeHP6X/zIwzu5XB80lU3kpfa+6XKJ8xER1Jx8y0mNJVX653tb0Qxozo1PRzoW1
 YxnIPACC1h6hMtiM26GR2nEOBbHP01qachqU8C9c0sMjg+wKzPgcoVXkUQcI40GjTqmc
 8Ugg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=Ia93Ohve
Subject: [Intel-wired-lan] [PATCH] idpf: fix UAF and double free in
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
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:lgs201920130244@gmail.com,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.973];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 88E412BEB08
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
Signed-off-by: Guangshuo Li <lgs201920130244@gmail.com>
---
 drivers/net/ethernet/intel/idpf/idpf_idc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/idpf/idpf_idc.c b/drivers/net/ethernet/intel/idpf/idpf_idc.c
index 6dad0593f7f2..0fcbf9f1ddbb 100644
--- a/drivers/net/ethernet/intel/idpf/idpf_idc.c
+++ b/drivers/net/ethernet/intel/idpf/idpf_idc.c
@@ -197,6 +197,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 	char name[IDPF_IDC_MAX_ADEV_NAME_LEN];
 	struct auxiliary_device *adev;
 	int ret;
+	int id;
 
 	iadev = kzalloc(sizeof(*iadev), GFP_KERNEL);
 	if (!iadev)
@@ -211,12 +212,16 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 		pr_err("failed to allocate unique device ID for Auxiliary driver\n");
 		goto err_ida_alloc;
 	}
-	adev->id = ret;
+	id = ret;
+	adev->id = id;
 	adev->dev.release = idpf_core_adev_release;
 	adev->dev.parent = &cdev_info->pdev->dev;
 	sprintf(name, "%04x.rdma.core", cdev_info->pdev->vendor);
 	adev->name = name;
 
+	/* iadev is owned by the auxiliary device */
+	iadev = NULL;
+
 	ret = auxiliary_device_init(adev);
 	if (ret)
 		goto err_aux_dev_init;
@@ -230,7 +235,7 @@ static int idpf_plug_core_aux_dev(struct iidc_rdma_core_dev_info *cdev_info)
 err_aux_dev_add:
 	auxiliary_device_uninit(adev);
 err_aux_dev_init:
-	ida_free(&idpf_idc_ida, adev->id);
+	ida_free(&idpf_idc_ida, id);
 err_ida_alloc:
 	cdev_info->adev = NULL;
 	kfree(iadev);
-- 
2.43.0

