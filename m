Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0F0932795
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 Jul 2024 15:35:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C744D40BA7;
	Tue, 16 Jul 2024 13:35:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ql-f9x_LBvLj; Tue, 16 Jul 2024 13:35:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7B91A40BAD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721136946;
	bh=UFjg4n1wzh4t973XA1/AdkYSFNq35oOYhW36cZtWCFg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CsPY06cQbyJXKbuF2j93bBJzXDS87AfpdPYO+sKnF7HXIdRutl5O5q2sq9qWu62iD
	 jN1dXsrbQr/GKFFYJqSOZDBi3X5wrbM18OgEcOGxuIMjC63Klg0UXOIhmw2Kjmr/iB
	 TJT90b6dWe3O+VPdtcR1tQyZXf9FJB9c/+YE4aQoogHMuEMeE2toFUbL3i0Cm4pgLV
	 jAhDG+yK6G9mCpVbppGBau51aS3pHEr9EbPyGbCnfsCow+eddKxOs71Pvjjx8dLJPr
	 7HeI/5EQhwTIx/2iH0vthlSAxIMEjvMX9+SUbO8RPM0uMhMtiIA127NSv5aE2ytaB9
	 YWlKQkkKlc5fQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B91A40BAD;
	Tue, 16 Jul 2024 13:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A70A11BF380
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 13:35:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9264680E07
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 13:35:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IQvnxhpyDC9z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 Jul 2024 13:35:43 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::62d; helo=mail-ej1-x62d.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AAB6780B9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AAB6780B9E
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AAB6780B9E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 13:35:40 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id
 a640c23a62f3a-a7523f0870cso593214166b.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 Jul 2024 06:35:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721136939; x=1721741739;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UFjg4n1wzh4t973XA1/AdkYSFNq35oOYhW36cZtWCFg=;
 b=D1WS3vYvDspYD3RwD+UUNbn6bHmLNvq2OcqMF7Jlnp87BV/GYZGGB0B5jvjXUWTBvR
 976mALck8wmFWHGimx5oAXDrLDqzJIHJogHlOD1wk7++zLpwbrbcv3VO9FlU6yoMRrPO
 iAxRS0fVaX5zjTQzX7dn1KGQDPHIBjBOJ8KodocGuY0q0H5tnL880LjZcJtKaSxdzlOE
 O7pgZ8f0szZhpAe3O90FqS64DqrLRi5fzoPCDBh6SGGIAGEnFJEZVae3EtzM3D89ILRj
 rL3obonRV+tSjUV2hY/a0SzAsXNztERS8k+T6+axWSLDoz9EfX0mp14xR8LOsELB47ln
 Xwrw==
X-Gm-Message-State: AOJu0Yz83dGYmYieRlB8+EPdEpQKUgMy1Byx9YXnSblPqlKGw/znf8iF
 FCBp/KuFnigB0A8y6/ucwt65ezm++obFLqsPeM/xV/jtaV1esWJoq10gpOyNjx4=
X-Google-Smtp-Source: AGHT+IEPGWldCOq3DrqOqQ6u4hGsqzCinS8QCDTE+FoqyPZtQ/xFkFMEKGsB3mC54pYBTlbhKbojvA==
X-Received: by 2002:a17:906:855:b0:a77:cdaa:88a7 with SMTP id
 a640c23a62f3a-a79eaa332cdmr159358366b.48.1721136938680; 
 Tue, 16 Jul 2024 06:35:38 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-a79bc7ffffbsm323050066b.173.2024.07.16.06.35.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Jul 2024 06:35:38 -0700 (PDT)
Date: Tue, 16 Jul 2024 15:35:34 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Kamal Heib <kheib@redhat.com>
Message-ID: <ZpZ3JrM9Gu3R358u@nanopsycho.orion>
References: <20240715191148.746362-1-kheib@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240715191148.746362-1-kheib@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1721136939; x=1721741739;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UFjg4n1wzh4t973XA1/AdkYSFNq35oOYhW36cZtWCFg=;
 b=sJff94ve89KAqWi2JRrXLyfLhRgmxHAxNXN81BTQEtSPbnrhWoPBWoTFR8zf5p3ua5
 5JTiDHAVQd23izR8FBpUfmwa1VV4Jt1PDaQFVS3HjjVoi7WTS6525er5LFOmhQFRkr/P
 5VbX4U8Muc9wF53FFsxKhffCyUKWNYy8Ntih1LhzO83V6wISmzdEghSktWlPruGgpeAG
 LB3b/DJFPoDEoA6Zmdz4lS+mG4/k9pxedtudXpUJlFoN6hgE4Nb2u/rCsLv6mU7J7ttT
 ASpl3R9fmfRnBBvUqyBtykyZssqxrG6e7PzlI9mCX0FrgFfTKg7RcHNMwlYD/9rm9mE0
 VCSg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=sJff94ve
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] i40e: Add support for fw
 health report
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Ivan Vecera <ivecera@redhat.com>, netdev@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, Paolo Abeni <pabeni@redhat.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Jul 15, 2024 at 09:11:48PM CEST, kheib@redhat.com wrote:
>Add support for reporting fw status via the devlink health report.
>
>Example:
> # devlink health show pci/0000:02:00.0 reporter fw
> pci/0000:02:00.0:
>   reporter fw
>     state healthy error 0 recover 0
> # devlink health diagnose pci/0000:02:00.0 reporter fw
> Status: normal
>
>Signed-off-by: Kamal Heib <kheib@redhat.com>
>---
> drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
> .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
> .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
> drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++++
> 4 files changed, 75 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
>index d546567e0286..f94671b6e7c6 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e.h
>@@ -465,6 +465,7 @@ static inline const u8 *i40e_channel_mac(struct i40e_channel *ch)
> struct i40e_pf {
> 	struct pci_dev *pdev;
> 	struct devlink_port devlink_port;
>+	struct devlink_health_reporter *fw_health_report;
> 	struct i40e_hw hw;
> 	DECLARE_BITMAP(state, __I40E_STATE_SIZE__);
> 	struct msix_entry *msix_entries;
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>index cc4e9e2addb7..ad91c150cdba 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
>@@ -122,6 +122,25 @@ static int i40e_devlink_info_get(struct devlink *dl,
> 	return err;
> }
> 
>+static int i40e_fw_reporter_diagnose(struct devlink_health_reporter *reporter,
>+				     struct devlink_fmsg *fmsg,
>+				     struct netlink_ext_ack *extack)
>+{
>+	struct i40e_pf *pf = devlink_health_reporter_priv(reporter);
>+
>+	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
>+		devlink_fmsg_string_pair_put(fmsg, "Status", "recovery");

Is it "Status" or "Mode" ?


>+	else
>+		devlink_fmsg_string_pair_put(fmsg, "Status", "normal");
>+
>+	return 0;
>+}
>+
>+static const struct devlink_health_reporter_ops i40e_fw_reporter_ops = {
>+	.name = "fw",
>+	.diagnose = i40e_fw_reporter_diagnose,
>+};
>+
> static const struct devlink_ops i40e_devlink_ops = {
> 	.info_get = i40e_devlink_info_get,
> };
>@@ -233,3 +252,41 @@ void i40e_devlink_destroy_port(struct i40e_pf *pf)
> {
> 	devlink_port_unregister(&pf->devlink_port);
> }
>+
>+/**
>+ * i40e_devlink_create_health_reporter - Create the health reporter for this PF
>+ * @pf: the PF to create reporter for
>+ *
>+ * Create health reporter for this PF.
>+ *
>+ * Return: zero on success or an error code on failure.
>+ **/
>+int i40e_devlink_create_health_reporter(struct i40e_pf *pf)
>+{
>+	struct devlink *devlink = priv_to_devlink(pf);
>+	struct device *dev = &pf->pdev->dev;
>+	int rc = 0;
>+
>+	devl_lock(devlink);
>+	pf->fw_health_report =
>+		devl_health_reporter_create(devlink, &i40e_fw_reporter_ops, 0, pf);
>+	if (IS_ERR(pf->fw_health_report)) {
>+		rc = PTR_ERR(pf->fw_health_report);
>+		dev_err(dev, "Failed to create fw reporter, err = %d\n", rc);
>+	}
>+	devl_unlock(devlink);
>+
>+	return rc;
>+}
>+
>+/**
>+ * i40e_devlink_destroy_health_reporter - Destroy the health reporter
>+ * @pf: the PF to cleanup
>+ *
>+ * Destroy the health reporter
>+ **/
>+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf)
>+{
>+	if (!IS_ERR_OR_NULL(pf->fw_health_report))
>+		devlink_health_reporter_destroy(pf->fw_health_report);
>+}
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.h b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
>index 469fb3d2ee25..018679094bb5 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.h
>+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
>@@ -14,5 +14,7 @@ void i40e_devlink_register(struct i40e_pf *pf);
> void i40e_devlink_unregister(struct i40e_pf *pf);
> int i40e_devlink_create_port(struct i40e_pf *pf);
> void i40e_devlink_destroy_port(struct i40e_pf *pf);
>+int i40e_devlink_create_health_reporter(struct i40e_pf *pf);
>+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf);
> 
> #endif /* _I40E_DEVLINK_H_ */
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index cbcfada7b357..13cad5f58029 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
> 		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
> 		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
> 		set_bit(__I40E_RECOVERY_MODE, pf->state);
>+		if (pf->fw_health_report)
>+			devlink_health_report(pf->fw_health_report,
>+					      "FW recovery mode detected", pf);

You report it on "FW" reporter. Why "FW" is needed in the message?


> 
> 		return true;
> 	}
>@@ -15636,6 +15639,14 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> 		err = -ENOMEM;
> 		goto err_pf_alloc;
> 	}
>+
>+	err = i40e_devlink_create_health_reporter(pf);
>+	if (err) {
>+		dev_err(&pdev->dev,
>+			"Failed to create health reporter %d\n", err);
>+		goto err_health_reporter;
>+	}
>+
> 	pf->next_vsi = 0;
> 	pf->pdev = pdev;
> 	set_bit(__I40E_DOWN, pf->state);
>@@ -16180,6 +16191,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> err_pf_reset:
> 	iounmap(hw->hw_addr);
> err_ioremap:
>+	i40e_devlink_destroy_health_reporter(pf);
>+err_health_reporter:
> 	i40e_free_pf(pf);
> err_pf_alloc:
> 	pci_release_mem_regions(pdev);
>@@ -16209,6 +16222,8 @@ static void i40e_remove(struct pci_dev *pdev)
> 
> 	i40e_devlink_unregister(pf);
> 
>+	i40e_devlink_destroy_health_reporter(pf);
>+
> 	i40e_dbg_pf_exit(pf);
> 
> 	i40e_ptp_stop(pf);
>-- 
>2.45.2
>
>
