Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B83F6934175
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jul 2024 19:26:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18A9460652;
	Wed, 17 Jul 2024 17:25:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NIpgMCDEEwnp; Wed, 17 Jul 2024 17:25:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1311C6070C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721237158;
	bh=lu1GyI9JAIOiUE0J5ISEn7mevghFQULbc7dQVhpdMfg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fPBpZHqkzVrzzhd9wHwOobHn0ySXo/0iSupKqhy4ne2C8gTkpeiLx3neAyFqzvXbc
	 lDAaKJbethQTC+0QbipyR6B+MzCb8b8MUUXZV3U2yS8DN0ygmuYpoYUD4N6JCdkVqi
	 UhR3prD8W6hu0xY6IJDdp/G91bWdqu0U9hvHgy1TdcDBlgAH6bEm2M2tKHrH/9I8f5
	 3y8q/ryDLz0uDRjZbIFVOEBjEPrC3EheQPaeTU/ONLQA6uGq4g0YY8GQpwo+ktp6Dh
	 qzAcDG1BXB0pl0eRWRSNOTmIy1Ld76gdoZJ9Hd9VmqdCOAud0IfxRuAp6xWVSOOQAW
	 y8HiA2SePWrGA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1311C6070C;
	Wed, 17 Jul 2024 17:25:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9C68B1BF368
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 17:25:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 88AF5409D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 17:25:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OGyyViUvQRGZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jul 2024 17:25:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.133.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=kheib@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3044640472
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3044640472
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3044640472
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 17:25:53 +0000 (UTC)
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-516-UiobYivTPSmFUPfxqhC4VQ-1; Wed, 17 Jul 2024 13:25:50 -0400
X-MC-Unique: UiobYivTPSmFUPfxqhC4VQ-1
Received: by mail-qv1-f70.google.com with SMTP id
 6a1803df08f44-6b5ed8fb791so101826d6.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jul 2024 10:25:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1721237150; x=1721841950;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lu1GyI9JAIOiUE0J5ISEn7mevghFQULbc7dQVhpdMfg=;
 b=v9nYEx2RjLAvk8IJcyp9fzPAlMJqpI7HS1z0iQvONyPw+bVapkoLgD+ZbUOEj8tYmL
 gccP4u+9ocLK03KBEUD1XduV9N1qSUw7PeYvC3PCGsirmFT0fj7I+LyXquKjmKNS9nNz
 tJJ7I1UQIAmYalJSV3Ky0RL2FfGz4GCTCeWPG1sjfrAtJEC9MbDchH1HcXRzJ0rKybHS
 V/ttcP9HU13tb0lLRuhvR652Xah+i1LpPKNXwBjrNVSw+hh62SboYLl7epb7DTi/26vV
 8LDuwxzw61t4+/LUSEBe6loMhNYLs/lICdl87FPiw8nVQp4V1+GtAAVZI72tgtlN889r
 CAgA==
X-Gm-Message-State: AOJu0YyiCBklrXSTtaiTatMDMVLUK38RKYLM9zcbWqq0gPtuP9RmulFy
 gYVEQyFOdRktVa/T5AQIZximFi8qqPuHywqpmcWByMtyMcwUrUK0xd72cPFLxzxByUhNuMK4E/P
 bI++OBIieW67kiRuCRNgLLzsyiIRh+LkVeoeLg2WncpAK6LHu2Yu9s3meU1Ce++GQ0sU=
X-Received: by 2002:a05:6214:20a7:b0:6b5:2b33:5445 with SMTP id
 6a1803df08f44-6b79c5c9a1cmr1077706d6.25.1721237150297; 
 Wed, 17 Jul 2024 10:25:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhXarTu58sXJCSQkMUfsI0kMSFzUiUh2z8hFp1TcU+T3Xeke850y5NpiqMVazkQooE2oLEQw==
X-Received: by 2002:a05:6214:20a7:b0:6b5:2b33:5445 with SMTP id
 6a1803df08f44-6b79c5c9a1cmr1077466d6.25.1721237149892; 
 Wed, 17 Jul 2024 10:25:49 -0700 (PDT)
Received: from fedora-x1 ([142.126.87.70]) by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-6b79c64fe30sm287576d6.110.2024.07.17.10.25.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Jul 2024 10:25:49 -0700 (PDT)
Date: Wed, 17 Jul 2024 13:25:38 -0400
From: Kamal Heib <kheib@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>
Message-ID: <Zpf-kvdAh1HRIchW@fedora-x1>
References: <20240715191148.746362-1-kheib@redhat.com>
 <ZpZ3JrM9Gu3R358u@nanopsycho.orion>
MIME-Version: 1.0
In-Reply-To: <ZpZ3JrM9Gu3R358u@nanopsycho.orion>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1721237152;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=lu1GyI9JAIOiUE0J5ISEn7mevghFQULbc7dQVhpdMfg=;
 b=Qnzpf/cOcDqDpxHc7hsuy+ICBpVXnFVGMDQDmHhZR1dbL7NRs7tDIZ4kHxk0MKF2Z5qD5B
 S/lOVqITLz7WweafAv9AvG1bFGdlEqqhuRafvyngZMfsOGcS1LoZY8lKyc2TBvtZwcv1HV
 JTV6p5H2zDXBHMlNNAvnZZJJwDUp4Bk=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Qnzpf/cO
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

On Tue, Jul 16, 2024 at 03:35:34PM +0200, Jiri Pirko wrote:
> Mon, Jul 15, 2024 at 09:11:48PM CEST, kheib@redhat.com wrote:
> >Add support for reporting fw status via the devlink health report.
> >
> >Example:
> > # devlink health show pci/0000:02:00.0 reporter fw
> > pci/0000:02:00.0:
> >   reporter fw
> >     state healthy error 0 recover 0
> > # devlink health diagnose pci/0000:02:00.0 reporter fw
> > Status: normal
> >
> >Signed-off-by: Kamal Heib <kheib@redhat.com>
> >---
> > drivers/net/ethernet/intel/i40e/i40e.h        |  1 +
> > .../net/ethernet/intel/i40e/i40e_devlink.c    | 57 +++++++++++++++++++
> > .../net/ethernet/intel/i40e/i40e_devlink.h    |  2 +
> > drivers/net/ethernet/intel/i40e/i40e_main.c   | 15 +++++
> > 4 files changed, 75 insertions(+)
> >
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e.h b/drivers/net/ethernet/intel/i40e/i40e.h
> >index d546567e0286..f94671b6e7c6 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e.h
> >+++ b/drivers/net/ethernet/intel/i40e/i40e.h
> >@@ -465,6 +465,7 @@ static inline const u8 *i40e_channel_mac(struct i40e_channel *ch)
> > struct i40e_pf {
> > 	struct pci_dev *pdev;
> > 	struct devlink_port devlink_port;
> >+	struct devlink_health_reporter *fw_health_report;
> > 	struct i40e_hw hw;
> > 	DECLARE_BITMAP(state, __I40E_STATE_SIZE__);
> > 	struct msix_entry *msix_entries;
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.c b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> >index cc4e9e2addb7..ad91c150cdba 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.c
> >@@ -122,6 +122,25 @@ static int i40e_devlink_info_get(struct devlink *dl,
> > 	return err;
> > }
> > 
> >+static int i40e_fw_reporter_diagnose(struct devlink_health_reporter *reporter,
> >+				     struct devlink_fmsg *fmsg,
> >+				     struct netlink_ext_ack *extack)
> >+{
> >+	struct i40e_pf *pf = devlink_health_reporter_priv(reporter);
> >+
> >+	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
> >+		devlink_fmsg_string_pair_put(fmsg, "Status", "recovery");
> 
> Is it "Status" or "Mode" ?
>

Thank you for your review.

It is "Mode", I'll fix it in v2.
> 
> >+	else
> >+		devlink_fmsg_string_pair_put(fmsg, "Status", "normal");
> >+
> >+	return 0;
> >+}
> >+
> >+static const struct devlink_health_reporter_ops i40e_fw_reporter_ops = {
> >+	.name = "fw",
> >+	.diagnose = i40e_fw_reporter_diagnose,
> >+};
> >+
> > static const struct devlink_ops i40e_devlink_ops = {
> > 	.info_get = i40e_devlink_info_get,
> > };
> >@@ -233,3 +252,41 @@ void i40e_devlink_destroy_port(struct i40e_pf *pf)
> > {
> > 	devlink_port_unregister(&pf->devlink_port);
> > }
> >+
> >+/**
> >+ * i40e_devlink_create_health_reporter - Create the health reporter for this PF
> >+ * @pf: the PF to create reporter for
> >+ *
> >+ * Create health reporter for this PF.
> >+ *
> >+ * Return: zero on success or an error code on failure.
> >+ **/
> >+int i40e_devlink_create_health_reporter(struct i40e_pf *pf)
> >+{
> >+	struct devlink *devlink = priv_to_devlink(pf);
> >+	struct device *dev = &pf->pdev->dev;
> >+	int rc = 0;
> >+
> >+	devl_lock(devlink);
> >+	pf->fw_health_report =
> >+		devl_health_reporter_create(devlink, &i40e_fw_reporter_ops, 0, pf);
> >+	if (IS_ERR(pf->fw_health_report)) {
> >+		rc = PTR_ERR(pf->fw_health_report);
> >+		dev_err(dev, "Failed to create fw reporter, err = %d\n", rc);
> >+	}
> >+	devl_unlock(devlink);
> >+
> >+	return rc;
> >+}
> >+
> >+/**
> >+ * i40e_devlink_destroy_health_reporter - Destroy the health reporter
> >+ * @pf: the PF to cleanup
> >+ *
> >+ * Destroy the health reporter
> >+ **/
> >+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf)
> >+{
> >+	if (!IS_ERR_OR_NULL(pf->fw_health_report))
> >+		devlink_health_reporter_destroy(pf->fw_health_report);
> >+}
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_devlink.h b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> >index 469fb3d2ee25..018679094bb5 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_devlink.h
> >@@ -14,5 +14,7 @@ void i40e_devlink_register(struct i40e_pf *pf);
> > void i40e_devlink_unregister(struct i40e_pf *pf);
> > int i40e_devlink_create_port(struct i40e_pf *pf);
> > void i40e_devlink_destroy_port(struct i40e_pf *pf);
> >+int i40e_devlink_create_health_reporter(struct i40e_pf *pf);
> >+void i40e_devlink_destroy_health_reporter(struct i40e_pf *pf);
> > 
> > #endif /* _I40E_DEVLINK_H_ */
> >diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> >index cbcfada7b357..13cad5f58029 100644
> >--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> >+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> >@@ -15370,6 +15370,9 @@ static bool i40e_check_recovery_mode(struct i40e_pf *pf)
> > 		dev_crit(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
> > 		dev_crit(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
> > 		set_bit(__I40E_RECOVERY_MODE, pf->state);
> >+		if (pf->fw_health_report)
> >+			devlink_health_report(pf->fw_health_report,
> >+					      "FW recovery mode detected", pf);
> 
> You report it on "FW" reporter. Why "FW" is needed in the message?
>

You are right, I will remove it in v2.
 
> 
> > 
> > 		return true;
> > 	}
> >@@ -15636,6 +15639,14 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > 		err = -ENOMEM;
> > 		goto err_pf_alloc;
> > 	}
> >+
> >+	err = i40e_devlink_create_health_reporter(pf);
> >+	if (err) {
> >+		dev_err(&pdev->dev,
> >+			"Failed to create health reporter %d\n", err);
> >+		goto err_health_reporter;
> >+	}
> >+
> > 	pf->next_vsi = 0;
> > 	pf->pdev = pdev;
> > 	set_bit(__I40E_DOWN, pf->state);
> >@@ -16180,6 +16191,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> > err_pf_reset:
> > 	iounmap(hw->hw_addr);
> > err_ioremap:
> >+	i40e_devlink_destroy_health_reporter(pf);
> >+err_health_reporter:
> > 	i40e_free_pf(pf);
> > err_pf_alloc:
> > 	pci_release_mem_regions(pdev);
> >@@ -16209,6 +16222,8 @@ static void i40e_remove(struct pci_dev *pdev)
> > 
> > 	i40e_devlink_unregister(pf);
> > 
> >+	i40e_devlink_destroy_health_reporter(pf);
> >+
> > 	i40e_dbg_pf_exit(pf);
> > 
> > 	i40e_ptp_stop(pf);
> >-- 
> >2.45.2
> >
> >
> 

