Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 716848AE430
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Apr 2024 13:36:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E0A74114E;
	Tue, 23 Apr 2024 11:36:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I14t7yJqI0gh; Tue, 23 Apr 2024 11:36:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C36F5401DF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713872177;
	bh=g091F/VKooEbYguAt7Cvz6uTsihB1SGK2UMZc+jetYo=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tXrftffb3J7UbXW/cPxOl9GK3PRQKbArHVuFfSL1AtuzFBGcTB8ila72vX6ZJgQoU
	 ueSnSUHjAdJggiwKHUfBHw9vzjio7cWEVW5taOP3Zg/yiWA4rE0HDOvuObJg6jyPiZ
	 CNZXc+svk7t1UlVbummtNocggJBePnMAsJldPGFxFupYSLq9u5dQnKptmgHgSrNeSN
	 85Iggo9CSE6kxNWfDn3UKIPOmeriyI5CYrf/kUfCwxnyh/8rZWYyIiWBFcsrhBjplg
	 ECBkuYhhgohlT6nTQI7hPNBGi4z/wTgOZ8FLWGmHQpmchPLnuQpcFcgKDKsot4R32g
	 aQtjsFIxIXZKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C36F5401DF;
	Tue, 23 Apr 2024 11:36:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 035141BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:36:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E24CD40CA1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:36:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OepCCZq10GD4 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Apr 2024 11:36:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::435; helo=mail-wr1-x435.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 912E6401DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 912E6401DF
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 912E6401DF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 11:36:14 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id
 ffacd0b85a97d-34782453ffdso5587818f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Apr 2024 04:36:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713872172; x=1714476972;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g091F/VKooEbYguAt7Cvz6uTsihB1SGK2UMZc+jetYo=;
 b=EU9pb1oCvJvMXguF0MUTxy5u+4Ka7xryVX9Vk39o0eEner0e1Zo4jUHy9V9ZazekZj
 qbi+3x7+TGU5Yd/2qVKRKS4ZHAh0CJAJgxVI+Rh5xxoWasMal1eVGWlx0lITrDTmN4CH
 itr7bMMZivKihvc0K0QSpSDvWsaqT+UT0JOLatFCTXijVjVM8qoh9e0v6dqbsHD2QViN
 CdWTGC6yxWwwX4OX/LSbcGjnn2xFoJ/ieZpkwYVCe0sxnxybRmBB7YAvAzlHgQ+gtBF1
 7Q+HmqItMtqZy3Wn3npHiHHRVo1KhtnEWe/a+sZelWlXsHYNuFs/uSWLHkzX5L4HClnJ
 fRmQ==
X-Gm-Message-State: AOJu0Yz6ZLAeGnGkUFg44gylTmXQd1D961kiwavZpH9MKRW2USGGZciw
 YD0xja3sgnbDbS8kptT9IH6yoLOrWP65j6vf7g86NPX2qIr+yFtHpWyrYpIZSQU=
X-Google-Smtp-Source: AGHT+IFQaenGmOBS3pMB8p8zemMT7GSGJ6twIy6fo2ad+My14WM1DJGYWP33egD6XuSokuhY3cRiDw==
X-Received: by 2002:a5d:494f:0:b0:34b:e68:dcf0 with SMTP id
 r15-20020a5d494f000000b0034b0e68dcf0mr4521063wrs.59.1713872172082; 
 Tue, 23 Apr 2024 04:36:12 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 w25-20020a1709060a1900b00a4e40e48f8dsm6913337ejf.185.2024.04.23.04.36.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Apr 2024 04:36:11 -0700 (PDT)
Date: Tue, 23 Apr 2024 13:36:09 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <ZiedKc5wE2-3LlaM@nanopsycho>
References: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240423091459.72216-1-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713872172; x=1714476972;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=g091F/VKooEbYguAt7Cvz6uTsihB1SGK2UMZc+jetYo=;
 b=whG77UZ0+w8NKDZnT8ymIQDbsAr5TuTAMWXAwP0k28PLQtuxxD8Rn6siG+yVEWhBam
 3aaLHzRd1YLaEK0Z1np/zhDhIl06HUkTkLZ2vFQTCfTaVI6uQLo58X7HH4BEcxUqqxUq
 guBFxo9u/yj5tA44UsMYBiJwKihAQW2YMJRpbOw9VZ2/ym4BWkorDv9mAXBB/DFXYtIx
 RCPqk6YV1HUDChutACvub5h30XIBSsBAjSgoL+6iq13FFW/bdfl3zq7csa9GYy+Esoxd
 +vlNSy0UQDFBa9acv1EsUdiS2AhOnte95LXIOfVP7jOgxzsH6uZqaPpj6pAxkH29a1bm
 KJOw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=whG77UZ0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Extend auxbus device
 naming
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Apr 23, 2024 at 11:14:59AM CEST, sergey.temerkhanov@intel.com wrote:
>Include segment/domain number in the device name to distinguish
>between PCI devices located on different root complexes in
>multi-segment configurations. Naming is changed from
>ptp_<bus>_<slot>_clk<clock>  to ptp_<domain>_<bus>_<slot>_clk<clock>

I don't understand why you need to encode pci properties of a parent
device into the auxiliary bus name. Could you please explain the
motivation? Why you need a bus instance per PF?

The rest of the auxbus registrators don't do this. Could you please
align? Just have one bus for ice driver and that's it.


>
>v1->v2
>Rebase on top of the latest changes
>
>Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_ptp.c | 18 ++++++++++++------
> 1 file changed, 12 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
>index 402436b72322..744b102f7636 100644
>--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
>+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
>@@ -2993,8 +2993,9 @@ ice_ptp_auxbus_create_id_table(struct ice_pf *pf, const char *name)
> static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
> {
> 	struct auxiliary_driver *aux_driver;
>+	struct pci_dev *pdev = pf->pdev;
> 	struct ice_ptp *ptp;
>-	char busdev[8] = {};
>+	char busdev[16] = {};
> 	struct device *dev;
> 	char *name;
> 	int err;
>@@ -3005,8 +3006,10 @@ static int ice_ptp_register_auxbus_driver(struct ice_pf *pf)
> 	INIT_LIST_HEAD(&ptp->ports_owner.ports);
> 	mutex_init(&ptp->ports_owner.lock);
> 	if (ice_is_e810(&pf->hw))
>-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
>-			PCI_SLOT(pf->pdev->devfn));
>+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
>+			 pci_domain_nr(pdev->bus),
>+			 pdev->bus->number,
>+			 PCI_SLOT(pdev->devfn));
> 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
> 			      ice_get_ptp_src_clock_index(&pf->hw));
> 	if (!name)
>@@ -3210,8 +3213,9 @@ static void ice_ptp_release_auxbus_device(struct device *dev)
> static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
> {
> 	struct auxiliary_device *aux_dev;
>+	struct pci_dev *pdev = pf->pdev;
> 	struct ice_ptp *ptp;
>-	char busdev[8] = {};
>+	char busdev[16] = {};
> 	struct device *dev;
> 	char *name;
> 	int err;
>@@ -3224,8 +3228,10 @@ static int ice_ptp_create_auxbus_device(struct ice_pf *pf)
> 	aux_dev = &ptp->port.aux_dev;
> 
> 	if (ice_is_e810(&pf->hw))
>-		sprintf(busdev, "%u_%u_", pf->pdev->bus->number,
>-			PCI_SLOT(pf->pdev->devfn));
>+		snprintf(busdev, sizeof(busdev), "%u_%u_%u_",
>+			 pci_domain_nr(pdev->bus),
>+			 pdev->bus->number,
>+			 PCI_SLOT(pdev->devfn));
> 
> 	name = devm_kasprintf(dev, GFP_KERNEL, "ptp_%sclk%u", busdev,
> 			      ice_get_ptp_src_clock_index(&pf->hw));
>-- 
>2.35.3
>
>
