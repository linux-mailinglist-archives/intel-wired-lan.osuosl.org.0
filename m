Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BACBE6449C3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Dec 2022 17:54:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57BB940933;
	Tue,  6 Dec 2022 16:54:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57BB940933
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1670345690;
	bh=GkYT1XZGQG2v+31otbqIa1vNsIxc5koxFk883VjdKok=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=5+AaNGMrMTQi5fSUEBrcBcUAvLZJ9vOnkPj/Y4FCG0PnuF618dnLKJF4KgbF1EJf3
	 4G70bwjstkYVmkFSqbX1GEuP8tt9/C6B6ZBtJSCn2J9mKW4XjYqZvKVLSNxVs55YkV
	 hzSSebtvH/tZ+brB3fj53KDmWujWoqFUeFHqqp97r0X+p3UdhaytixvhjU07/Egu85
	 EOEIrOnc+oBDmZIyAmHRkHH/X8xc9ZyDvfRheAc6mY34eyXy5/dkCpb5/3V1jQR7dx
	 RVF1P7rL5O5ZF7r1u4zS7vtiMUCR00ZXKolRUrGLCkDhzAFmmvYDowIdV3wutWn+vw
	 gWXBpOdQ1AWlA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id And88cStlUYN; Tue,  6 Dec 2022 16:54:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07D6B4087D;
	Tue,  6 Dec 2022 16:54:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07D6B4087D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9AF921BF5AE
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 16:54:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73879812F5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 16:54:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73879812F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vN3X1p6vT5am for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Dec 2022 16:54:42 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 75471812EF
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 75471812EF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Dec 2022 16:54:41 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id gh17so7677379ejb.6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Dec 2022 08:54:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vzqbbTfvlcGhXkAxJtWVnd12rliOcj/M8dWbh5Wuvz8=;
 b=z/1Nw7b+wMMiuJ6bwHnGDQUENPxaWnBox+5XEhv1sLc/EesPuLwR9KbL7gaqThKMnH
 xbVD0nalYRUOcTvzd0pBpZasxVda7OdNNrZcDkNMv7BB8v83ScinX/3d2eJvZsKMhC25
 4bkyBjgyTezLYyWcsgg3vcqialH9wsKrbtqe7TVyNPVqPCzduEO8H8xrixLrmilsmVUT
 /27zFPXn6aYhn76mWzfdggv/OqfC6s3o+kx9Ph7BPlIj7JQhg/3Qjbj/3v8Ccf2r0470
 vhM1tkmSgu0oEbDm5s/Ohhh2isoi1fxFdbWuaK7rHBG2No8KyuB7N7bUjBu1kyv71dRj
 KZoA==
X-Gm-Message-State: ANoB5pmQeFi5A93+/yZXp3dXt8FnmfW6Q1Lo9dNfMB8+zxDGC5M23J2p
 nP+d3eWNJzmym0z7g37xu1x33g==
X-Google-Smtp-Source: AA0mqf53Gsku8H34rrDGggPtq7Dg4wvL+h11DxRKD8UDk1B2WOwck1mMU1uN/IJ7meXkmnyqUDZ1Tw==
X-Received: by 2002:a17:907:20e2:b0:7c0:bc26:45e1 with SMTP id
 rh2-20020a17090720e200b007c0bc2645e1mr17673807ejb.645.1670345680181; 
 Tue, 06 Dec 2022 08:54:40 -0800 (PST)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b19-20020a17090630d300b007adade0e9easm4907203ejb.85.2022.12.06.08.54.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Dec 2022 08:54:39 -0800 (PST)
Date: Tue, 6 Dec 2022 17:54:38 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Yuan Can <yuancan@huawei.com>
Message-ID: <Y49zzo/L9oY1v8OB@nanopsycho>
References: <20221206134146.36465-1-yuancan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221206134146.36465-1-yuancan@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=vzqbbTfvlcGhXkAxJtWVnd12rliOcj/M8dWbh5Wuvz8=;
 b=GJ9AXpHrzyHNWZ6MD0ZKBtWOC77CgcraKLQMZ+UAAVh6cVD9RV1f9PFoqbC/l6EEeN
 kqNVp9G8BiAXSJ150ElWkmihb6vSyeoMqAeVOUve+AR2T+X1SR0oaul2/RbKdc3pEDl2
 VQ2FmToTfHcLnNjppG08XLXCWZwfEHBi4JA3/oCzm7ASotT9SqA2aM09JXkcZ3hu8GcW
 iYVwbqiaRZC0UkeGFyzQPO8LBnZP0Pi1tJVALEMF/Sct4/hW8wnbjZpYxF1DEQcWZ3TN
 qDOJjZmJ+0jxk5dwGOWR+F68gGe9iIndiVVhPRa7XjiWYw5TfFZIwpWcjgCK831A6krG
 xphw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20210112.gappssmtp.com
 header.i=@resnulli-us.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=GJ9AXpHr
Subject: Re: [Intel-wired-lan] [PATCH net v3] intel/i40e: Fix potential
 memory leak in i40e_init_recovery_mode()
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
Cc: leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, edumazet@google.com, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, jeffrey.t.kirsher@intel.com,
 piotr.marczak@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Dec 06, 2022 at 02:41:46PM CET, yuancan@huawei.com wrote:
>The error handling path of i40e_init_recovery_mode() does not handle the
>vsi->netdev and pf->vsi, and resource leak can happen if error occurs.
>
>In the meantime, the i40e_probe() returns directly without release
>pf->qp_pile when i40e_init_recovery_mode() failed.
>
>Fix by properly releasing vsi->netdev in the error handling path of
>i40e_init_recovery_mode() and relying on the error handling path of
>i40e_probe() to release pf->vsi and pf->qp_pile if anything goes wrong.
>
>Fixes: 4ff0ee1af016 ("i40e: Introduce recovery mode support")
>Signed-off-by: Yuan Can <yuancan@huawei.com>
>---
>Changes in v3:
>- Introduce more error handling path to handle vsi->netdev
>- Rely on error path of i40e_probe() instead of do all cleanup in
>  i40e_init_recovery_mode() to make sure pf->qp_pile is not leaked
>
>Changes in v2:
>- Add net in patch title
>- Add Leon Romanovsky's reviewed by
>
> drivers/net/ethernet/intel/i40e/i40e_main.c | 21 ++++++++++++---------
> 1 file changed, 12 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
>index b5dcd15ced36..d1aadd298ea7 100644
>--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
>+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
>@@ -15511,13 +15511,13 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
> 		goto err_switch_setup;
> 	err = register_netdev(vsi->netdev);
> 	if (err)
>-		goto err_switch_setup;
>+		goto free_netdev;
> 	vsi->netdev_registered = true;
> 	i40e_dbg_pf_init(pf);
> 
> 	err = i40e_setup_misc_vector_for_recovery_mode(pf);
> 	if (err)
>-		goto err_switch_setup;
>+		goto unreg_netdev;
> 
> 	/* tell the firmware that we're starting */
> 	i40e_send_version(pf);
>@@ -15528,15 +15528,15 @@ static int i40e_init_recovery_mode(struct i40e_pf *pf, struct i40e_hw *hw)
> 
> 	return 0;
> 
>+unreg_netdev:
>+	unregister_netdev(vsi->netdev);
>+free_netdev:
>+	free_netdev(vsi->netdev);

[...]

> err_switch_setup:
> 	i40e_reset_interrupt_capability(pf);
> 	del_timer_sync(&pf->service_timer);
> 	i40e_shutdown_adminq(hw);

These are on a error patch in i40e_probe(). Again, you should cleanup
here only what you initialized.


>-	iounmap(hw->hw_addr);
>-	pci_disable_pcie_error_reporting(pf->pdev);
>-	pci_release_mem_regions(pf->pdev);
>-	pci_disable_device(pf->pdev);
>-	kfree(pf);
>+	kfree(pf->vsi);
> 
> 	return err;
> }
>@@ -15789,8 +15789,11 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> 		goto err_sw_init;
> 	}
> 
>-	if (test_bit(__I40E_RECOVERY_MODE, pf->state))
>-		return i40e_init_recovery_mode(pf, hw);
>+	if (test_bit(__I40E_RECOVERY_MODE, pf->state)) {
>+		err = i40e_init_recovery_mode(pf, hw);
>+		if (err)
>+			goto err_init_lan_hmc;

Use a new label here.


Also, you need to return 0 here in case of success. Did you test the
patch?





>+	}
> 
> 	err = i40e_init_lan_hmc(hw, hw->func_caps.num_tx_qp,
> 				hw->func_caps.num_rx_qp, 0, 0);
>-- 
>2.17.1
>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
