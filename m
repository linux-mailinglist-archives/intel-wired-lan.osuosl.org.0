Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1581DCDD5C0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Dec 2025 07:21:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BED5D82348;
	Thu, 25 Dec 2025 06:21:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZIauDZDgLShC; Thu, 25 Dec 2025 06:21:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FDA38234D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1766643712;
	bh=EPJYonuix71oUm57s5z59HxPVVbLV4aoSyqepsIGEOI=;
	h=To:Date:In-Reply-To:References:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:
	 From;
	b=DnTf099NpsgvDMQGuNCmj4bKIShzqYns3WsoDJT9rllRBH9HSKl+MQKSCFwxud528
	 R6ZMPa4dEMPyX+L5t+Ks8GDogib4v9Wu8eKDORdEZ9uuXfaTkB2J7x6BGbr8tze1zv
	 Sz6BJlPsQFqy44r+1vZI4ZoWU+3U8as/y4L4s9jHFEkTZCXTtsz65ERtXUKbmVGeTi
	 zzFgaUU86R+1kAV/RtzaTAgRDHlDAOcKQIH/xUoq7m3yvJXR5d8fFGdW2It0+IKIk6
	 lPPgHDG1RM8xqAexZnZRLSpFPEpiUdFKbCv20Z25DOYTN0t5/gaEfiub0S+mZ2p4WY
	 wxVQ+d7NewNbw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FDA38234D;
	Thu, 25 Dec 2025 06:21:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 54BD3B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 523634034C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id c2SNATrziSY4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Dec 2025 06:21:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7259440308
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7259440308
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7259440308
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:49 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A468B3F87D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Dec 2025 06:21:46 +0000 (UTC)
Received: by mail-ed1-f70.google.com with SMTP id
 4fb4d7f45d1cf-64cfbb4c464so4752477a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Dec 2025 22:21:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766643706; x=1767248506;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=EPJYonuix71oUm57s5z59HxPVVbLV4aoSyqepsIGEOI=;
 b=mBLGfqQVLY2U+imUgZtDY0y8EYDoPPkZu9tcn9XHBI6xY303mI30kikcLlR3x/Vqru
 AlVqlw59tGF6kpTUX1TAAnEpb6qG3S/W7VSWP2sNw2ZeDlDNusZfb6o5uWjPrnXMFGjY
 2i1o3vOLnlALy8p643GiCFMPa2u0y8HiSt0gOgGnbth17ZsH9zyISAaguaCiU2K6p/TY
 PV6MSkO8hTWUq4nmGrtgY93hZ0a+KPlgH8r4mhZWQbU587zsuFpIiXt/4vWci2FgTOKT
 9LmWShyM6rSJv1BI9JYlWNQNQMLHWbFEsxGfBb8/gcxbgrx2fBgkNQCsetMlog+KQr34
 ngng==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVxzGerE56OeqvYqV28s2Fy6k8aEE+vba5zC4vG6QnQ6NO/L2xEaL3x6mHKHEZ13rKMyWug/IkbPh9gpPKypg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz6/o6kaGMpO1xmZvA+xOzFaBD1sXM3u+B3t0kAnHvrD6RmTyse
 nzwPOfArvNCrZQuNZiECE1nz74ZWS9AXoWowQ7ecEzNQr0pnqnSo0oRjcJuwjA5WONoIK+rOVF1
 /5UiBpV0J0aImCcJtNBPLME821aSjedtldY1cU45pJ22GUFSvcT8LDWbKiqMVdKxljEmXBCBfwp
 zmdu6zVuLwjD0=
X-Gm-Gg: AY/fxX4j5G+yPWhOdwkVgNU5QtkzVbNPZKfp8UKCjb4KQZXQflFr1ijPs/mjur01O0Y
 qbSGW4RIPv+AOG5IkbFOBlHlrN/ZY5SYQ9VkkXdPP7HOVwg7UV2NMjyffylazcOWHVVtxj0lEZE
 3diVUvvjKVrglyOLjjXEFnalsKoB0I8hzrR+d6AyHmZwhaoaA4hS/IAx+RokNchonDff2Rk9zPx
 j/FEM9V1FKms7zjewUtCleGq9kiw85/mcmfgfZdErbFB1rhJK27Les0c90FmVvLKhe/m+c4UiDd
 ZE7ki+rth0l8wDrEVqw4EIuv8zSOpdCSIsOOf89YqddC0cKrcAVSSCkyeNnlY3k9nwwdUDLDylv
 7Q4c+e+66hMGbNkTgOGofEiXL
X-Received: by 2002:a17:907:2d0e:b0:b76:bcf5:a38a with SMTP id
 a640c23a62f3a-b8036a924ffmr2184480966b.0.1766643706192; 
 Wed, 24 Dec 2025 22:21:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGC0cEg1z21yzaWoEYG+U6OebSRyp1hetz+m9tmpGkKhV/J46dGAMWMW+VVsjRTQhXfq0zyGQ==
X-Received: by 2002:a17:907:2d0e:b0:b76:bcf5:a38a with SMTP id
 a640c23a62f3a-b8036a924ffmr2184477666b.0.1766643705750; 
 Wed, 24 Dec 2025 22:21:45 -0800 (PST)
Received: from localhost.localdomain ([103.155.100.1])
 by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b8037f0ecb9sm1948058466b.56.2025.12.24.22.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Dec 2025 22:21:45 -0800 (PST)
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu, 25 Dec 2025 14:21:22 +0800
Message-ID: <20251225062122.736308-2-aaron.ma@canonical.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251225062122.736308-1-aaron.ma@canonical.com>
References: <20251225062122.736308-1-aaron.ma@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1766643706;
 bh=EPJYonuix71oUm57s5z59HxPVVbLV4aoSyqepsIGEOI=;
 h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
 MIME-Version;
 b=lUS/55Ep2u8MkfimPl/6YpVC8aZjyMeEURqRPevBfJ1Xd6nIJ4VUFwC579PAGiLb9
 GL8MehwPDh2vX32gH9qOYJTTTP7s8S7+uKn9UQxD6vHaHYw93phtnK7MI8lbkK56br
 ZDoX8VJcE7cba8OrnAlOGXF3TOlTV75IZpTIRF3aYsZo6MYS8KDo14sSapVVXGz3yw
 fdbY+fVuDIwkMt7NhMyRusH0N886rmqceAs12V+KjUH4UYSF72kMVEfNaDo874J9HM
 1bnIudXhBv9or/bzhTwGerFyJuMDhafMForYeX0Jeu+eDB1hdUVeyIlcovGGhDN/UU
 ZZZSOHnwi76Odj023ScnC7p71GjblCT4NnXvkWvGjUU2CDrPUWVS8i88QxZ/a6bbuD
 9ImZc8R1gLvXbvTlohfJJGzXyYzT/Wry9Hr1KIyjxafc/QeGhx0MCHXLiDRGp9j2MY
 0+NLLWcH8jdBydIhSb0Bhn4v35lq4Dza5wxz5kru5lmifwhmP5bjVYf4NRiWYchMta
 S3a5W7l/RDRfV6KNpf1lDbIphTm1999J/5sdkNM+AwPG0RnwGZcsM+4q/m5xu7JsB4
 FZxPlDjfwEpZ+PknuZNHcVP2NXTeJBDEBOep2dliMf5TltWEa3YmOrKuttrzBoKL+Z
 GAsQR4cB0Ck+sbMnfyU9q2Ks=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=lUS/55Ep
Subject: [Intel-wired-lan] [PATCH v3 2/2] ice: recap the VSI and QoS info
 after rebuild
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
  in ice_suspend()
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

 drivers/net/ethernet/intel/ice/ice.h      |  1 +
 drivers/net/ethernet/intel/ice/ice_idc.c  | 41 +++++++++++++++++------
 drivers/net/ethernet/intel/ice/ice_main.c |  7 +++-
 3 files changed, 38 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 147aaee192a79..6463c1fea7871 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -989,6 +989,7 @@ int ice_schedule_reset(struct ice_pf *pf, enum ice_reset_req reset);
 void ice_print_link_msg(struct ice_vsi *vsi, bool isup);
 int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
+void ice_rdma_finalize_setup(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
 void ice_deinit_rdma(struct ice_pf *pf);
 bool ice_is_wol_supported(struct ice_hw *hw);
diff --git a/drivers/net/ethernet/intel/ice/ice_idc.c b/drivers/net/ethernet/intel/ice/ice_idc.c
index 420d45c2558b6..b6079a6cb7736 100644
--- a/drivers/net/ethernet/intel/ice/ice_idc.c
+++ b/drivers/net/ethernet/intel/ice/ice_idc.c
@@ -360,6 +360,35 @@ void ice_unplug_aux_dev(struct ice_pf *pf)
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
+
+	if (!ice_is_rdma_ena(pf) || !pf->cdev_info)
+		return;
+
+	privd = pf->cdev_info->iidc_priv;
+	if (!privd || !pf->vsi[0] || !pf->vsi[0]->netdev)
+		return;
+
+	/* Assign VSI info now that VSI is valid */
+	privd->netdev = pf->vsi[0]->netdev;
+	privd->vport_id = pf->vsi[0]->vsi_num;
+
+	/* Update QoS info after DCB has been rebuilt */
+	ice_setup_dcb_qos_info(pf, &privd->qos_info);
+
+	ice_plug_aux_dev(pf);
+}
+
 /**
  * ice_init_rdma - initializes PF for RDMA use
  * @pf: ptr to ice_pf
@@ -398,23 +427,16 @@ int ice_init_rdma(struct ice_pf *pf)
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
+	xa_erase(&ice_aux_id, pf->aux_idx);
 	kfree(privd);
 err_privd_alloc:
 	kfree(cdev);
@@ -432,7 +454,6 @@ void ice_deinit_rdma(struct ice_pf *pf)
 	if (!ice_is_rdma_ena(pf))
 		return;
 
-	ice_unplug_aux_dev(pf);
 	xa_erase(&ice_aux_id, pf->aux_idx);
 	kfree(pf->cdev_info->iidc_priv);
 	kfree(pf->cdev_info);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4bb68e7a00f5f..1851e9932cefe 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5135,6 +5135,9 @@ int ice_load(struct ice_pf *pf)
 	if (err)
 		goto err_init_rdma;
 
+	/* Finalize RDMA: VSI already created, assign info and plug device */
+	ice_rdma_finalize_setup(pf);
+
 	ice_service_task_restart(pf);
 
 	clear_bit(ICE_DOWN, pf->state);
@@ -5166,6 +5169,7 @@ void ice_unload(struct ice_pf *pf)
 
 	devl_assert_locked(priv_to_devlink(pf));
 
+	ice_unplug_aux_dev(pf);
 	ice_deinit_rdma(pf);
 	ice_deinit_features(pf);
 	ice_tc_indir_block_unregister(vsi);
@@ -5594,6 +5598,7 @@ static int ice_suspend(struct device *dev)
 	 */
 	disabled = ice_service_task_stop(pf);
 
+	ice_unplug_aux_dev(pf);
 	ice_deinit_rdma(pf);
 
 	/* Already suspended?, then there is nothing to do */
@@ -7803,7 +7808,7 @@ static void ice_rebuild(struct ice_pf *pf, enum ice_reset_req reset_type)
 
 	ice_health_clear(pf);
 
-	ice_plug_aux_dev(pf);
+	ice_rdma_finalize_setup(pf);
 	if (ice_is_feature_supported(pf, ICE_F_SRIOV_LAG))
 		ice_lag_rebuild(pf);
 
-- 
2.43.0

