Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E1E852BD0
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 09:59:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7BD2860B19;
	Tue, 13 Feb 2024 08:59:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ral8RBmc5QRU; Tue, 13 Feb 2024 08:59:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E2B260B1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707814764;
	bh=sEbY3U8Rg7pv2qjZXnKxmOIcGJvtbWXqdL3oXqDr1Dk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ISMREvTDxT84qGzRRGAJyTZEv1Lw0k7JrqEnQID4G9RIDmyPvT8y0HWKQz4FlEgXf
	 VrBLYK2Ll5x2PFPV7bUZcdMM7tuVCN5RC5klsEscBNwRF/vYVU0Byg+rZHi5YAk/vp
	 9gBgz2urvqVUcynLlBLHiUWcXW6wSnNbzZYL04kGhHby14FJIOIsDlwwdEjrKIZlNT
	 LSnWejmBg+hqM/i1wtdg8IClRbMG/9+xhrJ9RAOlheWILAlPy0EQLiH0mgAN2b6No8
	 hntAv4yrJ1ZCT6pgPxgTO9/5GbOuj+4bPmXCjW0i5lqtfVCFw8F+sSmWwEOkZKDSbC
	 G5SRuMVDPJLZw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E2B260B1F;
	Tue, 13 Feb 2024 08:59:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A13C01BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:59:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C24D40902
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:59:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id soDbqyKY1kQ7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 08:59:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::135; helo=mail-lf1-x135.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 090E7408DE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 090E7408DE
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com
 [IPv6:2a00:1450:4864:20::135])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 090E7408DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 08:59:19 +0000 (UTC)
Received: by mail-lf1-x135.google.com with SMTP id
 2adb3069b0e04-51171c9f4c0so4896632e87.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 00:59:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707814757; x=1708419557;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sEbY3U8Rg7pv2qjZXnKxmOIcGJvtbWXqdL3oXqDr1Dk=;
 b=SdQ7mP66z4WduBwOaXkt1MQ3wjZcHcqJsEkPiOjnC3yzhWxQ1UItFrNZPHSBcdXE4a
 heyl4+DHXpQLGCWy5KF5VM1mlSaDUbLn6NMe3/TXm6B1VB2PR6ccBldAfBGKFm0al2WE
 1upaBcszDeX4btdSsBTNnGXdHVQ4LmB6/zIRWSbuXtpgA7el89qQsLhBuHio/ouAzUzN
 OZBsrl7Y+kI1BOJ2y6we7+7ruG1yl//GT12ERwdTt/+NAEzNyfD43E4HWMdW48dtQqOc
 U0bCFoC96HRdyzwyE0vNU0XTlqHhyoUJrTDTLxA9Zk25dEOyPYk/nrwoAQ2BMXZnHTLg
 4FiQ==
X-Gm-Message-State: AOJu0YyGHpHou5S2QPI9co97f7AQOnFU0b9V/TYz8Idxv23rrFblUlZ9
 fDjmUW/tpmQX9N7CcEWT1WidWX4JBveF1i1SZvt3jMOojLK0BoBddtOrDrNyawE=
X-Google-Smtp-Source: AGHT+IFl8ozD91h/S32cyeg8lvKDyRacKzrqeV7wPqcANzStS/Sbt2pwSb8cuBqejSOiexv2qDtk+A==
X-Received: by 2002:ac2:5dc1:0:b0:511:4752:fbb8 with SMTP id
 x1-20020ac25dc1000000b005114752fbb8mr5432195lfq.37.1707814757540; 
 Tue, 13 Feb 2024 00:59:17 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCU8N0K9MBnS9vwHToohfs2aDlonZa+z+URL7qg03wnxDfqj6deGXhN0ZwvhrngXQfCj40QT3jEoCes/oJXMDPpZXltc8RVyIQCjY1EVmTuawxHpuTQkwq/qgAXcbrYHdyRr1WOCpu6xe2lj7FV/JkTmjBtG/TM7c3z+hSQYx6IpwHnMyaQp+2P1zDJj3H5hgoEWAJYMn2s/Q4kNPN6xnzl3AGRFrYS6UHMjYaELhlwn/u9s0HaPlDGVjFeuIxBRikxZN0VDEquqZWXyML1lv5XoJWTo7Ak9A3mI1WqNDTi2foArTDJX+Ds8Gr7a/dhbaVwlAHMNuURxZk3B6j0ufwySpDv0fpxqUUY233KQtd/2KF6f35UVNGyqJMVsHUAzIvM5HIBQHxyw75HfaIFpO3aM5Ktg
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 bi25-20020a05600c3d9900b00411ccc97bf5sm94246wmb.47.2024.02.13.00.59.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 00:59:17 -0800 (PST)
Date: Tue, 13 Feb 2024 09:59:14 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZcsvYt4-f_MHT3QC@nanopsycho>
References: <20240213072724.77275-1-michal.swiatkowski@linux.intel.com>
 <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240213072724.77275-8-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707814757; x=1708419557;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=sEbY3U8Rg7pv2qjZXnKxmOIcGJvtbWXqdL3oXqDr1Dk=;
 b=EBcjCNia+iiDcfd0ZOIFFWg8n8y+KUTzdDJ7kniQq/7H5vjcEmQ3n+g2tUHBoxqoCR
 UHCqs6/lc/9aIcT3iO0oaQb5rOS+pBDqTXT2Axntv2ibGq7tuMfHyBK1zOwnL2scFnQa
 Ly4/SnlIZN6neU6kasaUAlRgJgsQ4dAA/z6l4BhIZgn9MujYKeiwvvCZCw5QOU04AoL8
 yqz5voF7k4NisVyeoNIOezXL8ekwEAMqlmSAFD/V+RUVHyWK5//05MjnWz8eC6Z7G3Cn
 x4iRVHXp765NRvTT8BZPh3PC1rSCuqAt0kTYMg7sOhTsyegLOGFyKLWcqQaCidVxLP8S
 CiNg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=EBcjCNia
Subject: Re: [Intel-wired-lan] [iwl-next v1 07/15] ice: add auxiliary device
 sfnum attribute
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
Cc: maciej.fijalkowski@intel.com, netdev@vger.kernel.org,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 08:27:16AM CET, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Add read only sysfs attribute for each auxiliary subfunction
>device. This attribute is needed for orchestration layer
>to distinguish SF devices from each other since there is no
>native devlink mechanism to represent the connection between
>devlink instance and the devlink port created for the port
>representor.
>
>Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_sf_eth.c | 31 +++++++++++++++++++++
> 1 file changed, 31 insertions(+)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_sf_eth.c b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>index ab90db52a8fc..abee733710a5 100644
>--- a/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>+++ b/drivers/net/ethernet/intel/ice/ice_sf_eth.c
>@@ -224,6 +224,36 @@ static void ice_sf_dev_release(struct device *device)
> 	kfree(sf_dev);
> }
> 
>+static ssize_t
>+sfnum_show(struct device *dev, struct device_attribute *attr, char *buf)
>+{
>+	struct devlink_port_attrs *attrs;
>+	struct auxiliary_device *adev;
>+	struct ice_sf_dev *sf_dev;
>+
>+	adev = to_auxiliary_dev(dev);
>+	sf_dev = ice_adev_to_sf_dev(adev);
>+	attrs = &sf_dev->dyn_port->devlink_port.attrs;
>+
>+	return sysfs_emit(buf, "%u\n", attrs->pci_sf.sf);
>+}
>+
>+static DEVICE_ATTR_RO(sfnum);
>+
>+static struct attribute *ice_sf_device_attrs[] = {
>+	&dev_attr_sfnum.attr,
>+	NULL,
>+};
>+
>+static const struct attribute_group ice_sf_attr_group = {
>+	.attrs = ice_sf_device_attrs,
>+};
>+
>+static const struct attribute_group *ice_sf_attr_groups[2] = {
>+	&ice_sf_attr_group,
>+	NULL
>+};
>+
> /**
>  * ice_sf_eth_activate - Activate Ethernet subfunction port
>  * @dyn_port: the dynamic port instance for this subfunction
>@@ -262,6 +292,7 @@ ice_sf_eth_activate(struct ice_dynamic_port *dyn_port,
> 	sf_dev->dyn_port = dyn_port;
> 	sf_dev->adev.id = id;
> 	sf_dev->adev.name = "sf";
>+	sf_dev->adev.dev.groups = ice_sf_attr_groups;

Ugh. Custom driver sysfs files like this are always very questionable.
Don't do that please. If you need to expose sfnum, please think about
some common way. Why exactly you need to expose it?

pw-bot: cr


> 	sf_dev->adev.dev.release = ice_sf_dev_release;
> 	sf_dev->adev.dev.parent = &pdev->dev;
> 
>-- 
>2.42.0
>
>
