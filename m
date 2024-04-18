Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D6A8A9AB7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 15:02:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id ACE084169A;
	Thu, 18 Apr 2024 13:02:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KJVh7dmanCxb; Thu, 18 Apr 2024 13:02:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 48F01416A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713445357;
	bh=SSEbkJW70zZ5sfWUXf2fhvkwK3iAvAImkQZWLi4d0MA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JQ3rxC9tLpasjmzH0Eh8cWIMCc50K/B6FMf9q+E8LgF8+KsDucFH0cT8KnQmiW6Rh
	 V9CAYdvr9bwBYIFchU5wf9thBrFzyt+bZP9zbpYyDDEs5sCQKRyF8JE9bGfXmQ6B22
	 ytRXD2w8EIZBPaziIclmBvKvil7w/Aa5wyMTQIeDGtJNyv0xzwnm2jCI4dKmI4Yz3/
	 gcLHj4k7pqO8Bxs4z4LOt5mA74bDqofVZpFr6NxoER9F51o+0TXyvl3Nt9cqUPHjo/
	 PsfJjQoQ0jEywPEPtz5VZowd7UTgSjG14TTzlXQIFlMdT51h0w+kwuZWyjiQp/idi/
	 SaLBeP+0fIVoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 48F01416A9;
	Thu, 18 Apr 2024 13:02:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BC5111BF373
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:02:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A3EF660905
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:02:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id N_0FHadL3Oxq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 13:02:30 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1C4A66062E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1C4A66062E
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C4A66062E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 13:02:27 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-343b92e54f5so630279f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 06:02:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713445346; x=1714050146;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=SSEbkJW70zZ5sfWUXf2fhvkwK3iAvAImkQZWLi4d0MA=;
 b=I4T8WI1oO5vdoqQLHOkyrebnE4MTWtkdHggUSZSXWDXFQz98z4b46UXPRz40qJgWGH
 /sMbebRKLfiL7QhGeMIZbMLenrteiFPT3lcyMe5lYwyLbByZ2d4tLBNC4RyPb1D9XDuk
 /tZ7Q1B1wVkM4Pp8oGpOj/yolS43680HSZDJ9GWhjnsjlR1xYTDePQ3YbNT6UenXsbG9
 yeZArI7zZuVmpYa+Q+CSXU+rK7irTXsmyj2EFr5MEBzeFlJme3zu3af+4m25YmYNMwdS
 9fmzCPYAhkrJ1Lry7ruYmvBLV5rPiVPww1zxAok1hgDclCQhEQyG1ZOQA3Ebh/O8aAqV
 o52Q==
X-Gm-Message-State: AOJu0YwtlDXBGYBlAMsHQr4OnkATN/yTd0uZaQ404DuAmv44bGqBIkSS
 rxbqYGu9QnujRbZDP1uRpJUhN8keB+3MwlzcW/4Lv97Xisc64TSm8FqVLI1FGR4=
X-Google-Smtp-Source: AGHT+IEfMG36kM24Iof7e34MrpQEhFq9W2iWI9PjZtvx7h35noSdT2wLL+gDJZ9fjBh5ZhYFG0//zg==
X-Received: by 2002:a5d:558e:0:b0:33e:5fb4:49d1 with SMTP id
 i14-20020a5d558e000000b0033e5fb449d1mr1565460wrv.44.1713445345962; 
 Thu, 18 Apr 2024 06:02:25 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 a12-20020a056000100c00b00349ceadededsm1805262wrx.16.2024.04.18.06.02.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Apr 2024 06:02:25 -0700 (PDT)
Date: Thu, 18 Apr 2024 15:02:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiEZ3c-aJ_i6vQ9F@nanopsycho>
References: <20240417142028.2171-1-michal.swiatkowski@linux.intel.com>
 <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240417142028.2171-7-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713445346; x=1714050146;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=SSEbkJW70zZ5sfWUXf2fhvkwK3iAvAImkQZWLi4d0MA=;
 b=h1gLrICY9xxUTG4nvl8EjWmELU1I+F90TRxpIH0olVBpcrWiwCC2plq83LbJeIlb0n
 DxTvp2rApCdp9fve2eM69WBwdhQ+fofignFs8NvWLejR1ReD3K0EL2xZAl4Jzz576G1d
 LrrAin+clL/CmjgwX1cIHXYPhecK0dnMpcaxlnTFnOGJ744RevVgIYhA7iE7VCYutXFz
 /x4erniacbfjWMvJLmOG9nbKYGAQ4UyjoB9IuTl7Vi1qdFBEcX6r8mKc0hQI/XySb2E8
 xOJL7e3tTfgq4wvjJUSTelPyPjL6tXdTzNcECe2yUxNZ1sjszKE6HJLlqKhu6FIOonlo
 9nlw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=h1gLrICY
Subject: Re: [Intel-wired-lan] [iwl-next v4 6/8] ice: base subfunction aux
 driver
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, michal.kubiak@intel.com,
 intel-wired-lan@lists.osuosl.org, pio.raczynski@gmail.com,
 sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Apr 17, 2024 at 04:20:26PM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>

[...]


>+static int ice_sf_dev_probe(struct auxiliary_device *adev,
>+			    const struct auxiliary_device_id *id)
>+{
>+	struct ice_sf_dev *sf_dev = ice_adev_to_sf_dev(adev);
>+	struct ice_dynamic_port *dyn_port = sf_dev->dyn_port;
>+	struct ice_vsi_cfg_params params = {};
>+	struct ice_vsi *vsi = dyn_port->vsi;
>+	struct ice_pf *pf = dyn_port->pf;
>+	struct device *dev = &adev->dev;
>+	struct ice_sf_priv *priv;
>+	struct devlink *devlink;
>+	int err;
>+
>+	params.type = ICE_VSI_SF;
>+	params.pi = pf->hw.port_info;
>+	params.flags = ICE_VSI_FLAG_INIT;
>+
>+	priv = ice_allocate_sf(&adev->dev);
>+	if (!priv) {
>+		dev_err(dev, "Subfunction devlink alloc failed");
>+		return -ENOMEM;
>+	}
>+
>+	priv->dev = sf_dev;
>+	sf_dev->priv = priv;
>+	devlink = priv_to_devlink(priv);
>+
>+	devlink_register(devlink);

Do register at the very end. Btw, currently the error path seems to be
broken, leaving devlink instance allocated and registered.


>+	devl_lock(devlink);
>+
>+	err = ice_vsi_cfg(vsi, &params);
>+	if (err) {
>+		dev_err(dev, "Subfunction vsi config failed");
>+		goto err_devlink_unlock;
>+	}
>+
>+	err = ice_devlink_create_sf_dev_port(sf_dev);
>+	if (err) {
>+		dev_err(dev, "Cannot add ice virtual devlink port for subfunction");
>+		goto err_vsi_decfg;
>+	}
>+
>+	err = ice_fltr_add_mac_and_broadcast(vsi, vsi->netdev->dev_addr,
>+					     ICE_FWD_TO_VSI);
>+	if (err) {
>+		dev_err(dev, "can't add MAC filters %pM for VSI %d\n",
>+			vsi->netdev->dev_addr, vsi->idx);
>+		goto err_devlink_destroy;
>+	}
>+
>+	ice_napi_add(vsi);
>+	devl_unlock(devlink);
>+
>+	return 0;
>+
>+err_devlink_destroy:
>+	ice_devlink_destroy_sf_dev_port(sf_dev);
>+err_vsi_decfg:
>+	ice_vsi_decfg(vsi);
>+err_devlink_unlock:
>+	devl_unlock(devlink);
>+	return err;

[...]
