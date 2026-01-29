Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKPQLXPbemlE/AEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 05:00:51 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ABBAB8D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jan 2026 05:00:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B5E1A6082A;
	Thu, 29 Jan 2026 04:00:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id chGgwj6Gmo94; Thu, 29 Jan 2026 04:00:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AB1460826
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769659249;
	bh=USqOveOYsJXn+ZSyuAuAAWc+4m7dnuwhvblWv/bFrO4=;
	h=To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:List-Post:
	 List-Help:List-Subscribe:From:Reply-To:From;
	b=PreELO9DXnjzaWF9vrZ/G+6IQlvrC3Efc8K1tc6hX3M35AkeXMh+OEYCS+Aw+TGLm
	 OaLgohCugWoA2TvR3SUWTE5hkdiMzTJxKdec8hu7PAqeUwNBvfmvqWGdX5rx88eKE2
	 vdQTgr53cK3kScdyClJOXM8gJK5EToEjshQCyTRh7RhQWM/GpLMxVOIUJhYPMzAwSl
	 ejk7/wUvXWelJlkJ7nQVMo5GeZ/ao32QRIURj7xIz4oIB+ZZXxB1E7JYj8DMxaZia3
	 vJDKlYmXdhUty++gVoy8PZ8OMC9S1cP3UoMkt7J961jxf6MARslqbjIhast1lAaTYS
	 k7OCxSRl16OCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AB1460826;
	Thu, 29 Jan 2026 04:00:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CD112118
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 04:00:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA61440B3A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 04:00:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K_pKCMAkc9yO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jan 2026 04:00:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3A75240B13
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A75240B13
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A75240B13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 04:00:45 +0000 (UTC)
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com
 [209.85.216.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 8D2933FB52
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jan 2026 04:00:42 +0000 (UTC)
Received: by mail-pj1-f71.google.com with SMTP id
 98e67ed59e1d1-352e214cce9so497971a91.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jan 2026 20:00:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1769659241; x=1770264041;
 h=content-transfer-encoding:mime-version:message-id:date:subject:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=USqOveOYsJXn+ZSyuAuAAWc+4m7dnuwhvblWv/bFrO4=;
 b=QxhM/G8OXKUPo42TkYvJQroip2tcNrdHNwKEt+prHvdHdSNLK2OTwOVZ2xpkbIOPdf
 +e0WK4NszlAgPEjDTAAdJTfvwESK6+JZuL/dua5BTbqoKDfW/yl1PsZkrqFYdlqsuU6o
 41/Nr5OlP6fIWRBhH3VpDX9PdmPvzfFUaGEm7uBIUNNo5pzrd5sga//WNJEL5JPLJadM
 cAcgv6UxrLTHQ/2MHFZg2KG95xR3hm9lPjKXxBdroP8WSrB+HgFHeWvF3YMa+iJ0qaE9
 JaMsimHIWoJXP13NXGR4mVTK0VvJzuJpKqP1yXGN2Az61rB8GYzqxcjjK9fjhRT3Oywl
 lxvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU7tiHnePFIhBqH4wIIOgFoKa3095Ol7MD8/hmv9TB3om0VPrsHu9AFSslUo34cWbzQUs+cYQfuGi835gUGY9U=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw0M/E1YjSQMQclSGsjKl2tsvFzeSYvcTgtp64l22IINTtL+sH6
 KdHQRAgJTCYNkfYSoxShGA1TkBqQvYQaREODUTXWRk3nrr/hdLOCL6aJW1j5nbgEnTRmtkPSlFO
 rGafTc/x+YBpG18XaMGqeZeM+BwYVdcNhIrsq3A+xTXV2SQKpJzDxLOlthLb5lDXor2l68YgNQ6
 6nUzq/qBFOjNI=
X-Gm-Gg: AZuq6aIqLPtyNERhyGwd+pAw+4TQX78hiJyq09wP/ce25emZLOYYobKO8Sin7xtMHSc
 UelNHlLMYYRpIYhDin6Bkp24Ct6GuYyHYPXAiFI+vQhrxVvGg/fA/U1aEKksr7btX/K9yosPUTd
 xX2Yyc4mBpTsxMGUei04RCmS60oFNpHWeHlgB2W0P3+JkUH3QO6u/7Y25ImqL7uBGa8Iksz0JOj
 yn0EfzEaU1pH5xAg8/zAe/v/GcYZ2sJh4+evrCUvPBwH7HEniGdHyQz10NKda5xrVi335gnikyC
 dDCKCBGKYIZgGOuRvd1CVf/JzpBKYvi9RyWvxnerOMXO1IlBwYezQIBD54vC/GQl3i7SBzc8ADg
 Fzqciir0RrsGIb44bW1VaGAcH
X-Received: by 2002:a17:90b:2892:b0:341:194:5e7d with SMTP id
 98e67ed59e1d1-353fed74c1fmr6685199a91.24.1769659240752; 
 Wed, 28 Jan 2026 20:00:40 -0800 (PST)
X-Received: by 2002:a17:90b:2892:b0:341:194:5e7d with SMTP id
 98e67ed59e1d1-353fed74c1fmr6685177a91.24.1769659240343; 
 Wed, 28 Jan 2026 20:00:40 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-353f6103e9fsm6709121a91.2.2026.01.28.20.00.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jan 2026 20:00:39 -0800 (PST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 29 Jan 2026 12:00:26 +0800
Message-ID: <20260129040026.832452-1-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1769659242;
 bh=USqOveOYsJXn+ZSyuAuAAWc+4m7dnuwhvblWv/bFrO4=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=SiCR0GOue4EHCu9tX0T/alnJklK+LfYP7zBQFkYJRssflqagN32kfSyeSo3Hsgv4H
 Ali/pgIlCLW/6MKZMgIVvLynLeaQ7yLw0u2Gzj9RChbNVA0PvB0b278qTFvsZredPa
 eYdL73XLEddpV8YxaIIZPK8EIj1+YksLlBIpBVLhBAXTWdvOyLgaE5vSanISdnZWJE
 CQks6Yfbg2HlUlJ1VuhS0pS/43y4q+bfJ0qLipB8KBy2sYmkhxjQeYfGehAXy9bXg6
 k1xy6XrcuMQMRhscElJYCiK4jXk61jdlgTmVdQuZcf446OvbqyxfoQQ0jKPN9+rSPT
 SY0MUbbrzJ2TXnjBa02wuZEKuqfL7XFForq5yCaWGWxWFrS72KonqGp0KE0uocgLWr
 07CyRYa49otoMzC4H7ri1c8zJ748TLEoA7cidiNmuHB7vJnVbYCSsQ4Dbh0FIu2rzb
 G3DYzNk94vO6vsQtY9FXuw536zXVzee4hgZYn7NNGznahlXZZ4yMV+0wr1PLIPnE6a
 9NsXkkw2ECbspiH/wNxVNZxBSLjpkuckXYg9GOP7tB4HmtSQeUHh6I6MevrO+KLFCw
 fYl9pwJI8prKHHZXvLHg3tMw6stNPd4mWYfRYXKuGBVqSD83y54HhBZubrj+/+cmPJ
 fQMyvUaPaI5n2x0PIJfdraMM=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=SiCR0GOu
Subject: [Intel-wired-lan] [PATCH v4] ice: recap the VSI and QoS info after
 rebuild
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	TO_DN_NONE(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,canonical.com:replyto,canonical.com:email,canonical.com:mid,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 28ABBAB8D7
X-Rspamd-Action: no action

Fix IRDMA hardware initialization timeout (-110) after resume by
separating VSI-dependent configuration from RDMA resource allocation,
ensuring VSI is rebuilt before IRDMA accesses it.

After resume from suspend, IRDMA hardware initialization fails:
  ice: IRDMA hardware initialization FAILED init_state=4 status=-110

Separate RDMA initialization into two phases:
1. ice_init_rdma() - Allocate resources only (no VSI/QoS access, no plug)
2. ice_rdma_finalize_setup() - Assign VSI/QoS info and plug device

This allows:
- ice_init_rdma() to stay in ice_resume() (mirrors ice_deinit_rdma()
  in ice_suspend())
- VSI assignment deferred until after ice_vsi_rebuild() completes
- QoS info updated after ice_dcb_rebuild() completes
- Device plugged only when control queues, VSI, and DCB are all ready

Fixes: bc69ad74867db ("ice: avoid IRQ collision to fix init failure on ACPI S3 resume")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Aaron Ma <aaron.ma@canonical.com>
---
V1 -> V2: no changes.
V2 -> V3:
- mirrors init_rdma in resume as Tony Nguyen suggested to fix
the memleak and move ice_plug_aux_dev/ice_unplug_aux_dev out of
init/deinit rdma.
- ensure the correct VSI/QoS info is loaded after rebuild.
V3 -> V4:
- Log warning when aux device plug fails.
- Remove incorrect xa_erase() call when xa_alloc() fails.
- Add pf->vsi NULL check.

 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c  | 44 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c |  7 +++-
 3 files changed, 41 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 00f75d87c73f9..15a7fcd888b26 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -990,6 +990,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
+void ice_rdma_finalize_setup(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
 void ice_deinit_rdma(struct ice_pf *pf);
 bool ice_is_wol_supported(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 420d45c2558b6..d976cb85e4aa4 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -360,6 +360,39 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
 	auxiliary_device_uninit(adev);
 }
 
+/**
+ * ice_rdma_finalize_setup - Complete RDMA setup after VSI is ready
+ * @pf: ptr to ice_pf
+ *
+ * Sets VSI-dependent information and plugs aux device.
+ * Must be called after ice_init_rdma(), ice_vsi_rebuild(), and
+ * ice_dcb_rebuild() complete.
+ */
+void ice_rdma_finalize_setup(struct ice_pf *pf)
+{
+	struct iidc_rdma_priv_dev_info *privd;
+	struct device *dev = ice_pf_to_dev(pf);
+	int ret;
+
+	if (!ice_is_rdma_ena(pf) || !pf->cdev_info)
+		return;
+
+	privd = pf->cdev_info->iidc_priv;
+	if (!privd || !pf->vsi || !pf->vsi[0] || !pf->vsi[0]->netdev)
+		return;
+
+	/* Assign VSI info now that VSI is valid */
+	privd->netdev = pf->vsi[0]->netdev;
+	privd->vport_id = pf->vsi[0]->vsi_num;
+
+	/* Update QoS info after DCB has been rebuilt */
+	ice_setup_dcb_qos_info(pf, &privd->qos_info);
+
+	ret = ice_plug_aux_dev(pf);
+	if (ret)
+		dev_warn(dev, "Failed to plug RDMA aux device: %d\n", ret);
+}
+
 /**
  * ice_init_rdma - initializes PF for RDMA use
  * @pf: ptr to ice_pf
@@ -398,22 +431,14 @@ int ice_init_rdma(struct ice_pf *pf)
 	}
 
 	cdev->iidc_priv = privd;
-	privd->netdev = pf->vsi[0]->netdev;
 
 	privd->hw_addr = (u8 __iomem *)pf->hw.hw_addr;
 	cdev->pdev = pf->pdev;
-	privd->vport_id = pf->vsi[0]->vsi_num;
 
 	pf->cdev_info->rdma_protocol |= IIDC_RDMA_PROTOCOL_ROCEV2;
-	ice_setup_dcb_qos_info(pf, &privd->qos_info);
-	ret = ice_plug_aux_dev(pf);
-	if (ret)
-		goto err_plug_aux_dev;
+
 	return 0;
 
-err_plug_aux_dev:
-	pf->cdev_info->adev = NULL;
-	xa_erase(&ice_aux_id, pf->aux_idx);
 err_alloc_xa:
 	kfree(privd);
 err_privd_alloc:
@@ -432,7 +457,6 @@ void ice_deinit_rdma(struct ice_pf *pf)
 	if (!ice_is_rdma_ena(pf))
 		return;
 
-	ice_unplug_aux_dev(pf);
 	xa_erase(&ice_aux_id, pf->aux_idx);
 	kfree(pf->cdev_info->iidc_priv);
 	kfree(pf->cdev_info);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a511bc28be055..cfd1c3396d851 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5136,6 +5136,9 @@ int ice_load(struct ice_pf *pf)
 	if (err)
 		goto err_init_rdma;
 
+	/* Finalize RDMA: VSI already created, assign info and plug device */
+	ice_rdma_finalize_setup(pf);
+
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5167,6 +5170,7 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
+	ice_unplug_aux_dev(pf);
 	ice_deinit_rdma(pf);
 	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
@@ -5593,6 +5597,7 @@ static int ice_suspend(struct device *dev)
 	 */
 	disabled = ice_service_task_stop(pf);
 
+	ice_unplug_aux_dev(pf);
 	ice_deinit_rdma(pf);
 
 	/* Already suspended?, then there is nothing to do */
@@ -7802,7 +7807,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ice_health_clear(pf);
 
-	ice_plug_aux_dev(pf);
+	ice_rdma_finalize_setup(pf);
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
 
-- 
2.43.0

