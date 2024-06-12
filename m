Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0543490564C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 17:06:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F008F412E3;
	Wed, 12 Jun 2024 15:06:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gm1qV03s9rzB; Wed, 12 Jun 2024 15:06:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06C03412DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718204780;
	bh=wXAjKTvBEAvP+svvitn9yofnK0X/5/4ahwWqCi/xEWA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8iO2CySgvbyiqvwgOuHFpfk0re1xagxZudKRUycu87tDJXqJbIO2oGMKY5sptFtPX
	 7FSGHgK9BgS3W4x3Xl7v2npu9Raxahs2TSn/v66BrkWo/G8Qi2qNGreQL2i0jU2sgb
	 Vr9e4kTjbSB6/JQC7F8qvjyVuHMWWDwwqimAQuaTgidPr2MYU5W+tZaJwwFBrkM0jF
	 BGt+cIhiUOUb5qZY7kqgPftnq0bT/R/40Nu4vdod5dZZT/q6fLfO3TDeziMjiLKE6u
	 5QWc39lx77jhBjsy8jmkiRxbf3HSGBgOS56fRXZHU3C1ISDTNbr/suk4ZdiMNeHnLY
	 NAx2x2ygOAOcg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06C03412DD;
	Wed, 12 Jun 2024 15:06:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EF7FF1BF378
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DC1D180EA2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:15:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTr1AuhbetvS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 08:15:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::633; helo=mail-ej1-x633.google.com;
 envelope-from=habetsm.xilinx@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 28A7C80E9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28A7C80E9B
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com
 [IPv6:2a00:1450:4864:20::633])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 28A7C80E9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 08:15:07 +0000 (UTC)
Received: by mail-ej1-x633.google.com with SMTP id
 a640c23a62f3a-a6e349c0f2bso637268166b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 01:15:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718180106; x=1718784906;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wXAjKTvBEAvP+svvitn9yofnK0X/5/4ahwWqCi/xEWA=;
 b=GUUnsFxZYXuK8VKWQr5GQ/WvqgsN3w8zNQnAY+ceaMWQmsLvJGHpcFRDWFSLLJijVs
 3Wtb/m5FbH5vxPzxYzYhhUllT/1UH5HbgZvQ9uw0FeWC/HA06ljcsXQ8JAqViiIudlY/
 2E4nzJSOghms1jDZ89Fi4wjR8QyjEygJTfd2ssCPVsbea15ZceFiGH7VNsKIhWewKpQX
 BbfJOC2RKriJOYj2zErbQCSsGLVZIja0lstLEn56IOIHUCZmu34hVOPi28RxxH/uw3gD
 Y0/ROqmYVGFL67/fDDn2ASnHoBqoLsttQZKrCeo1qlNxdaC4vUCq5H7ewPBLSyMV99S2
 4OFA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyNeIrwOk5tkbTgY7yQaDDmth+fPOeam7Qhuq2QgaTtJh/m6dVoFJkH2Cw8Y8F2I1JLEhULxnE/BORxdTNHbTdkzk+HGw/x++4PxzctwflOg==
X-Gm-Message-State: AOJu0YzjusQND1vC5dHqDrT/M/TtCRdm3vA4eEeC1Abj/i2vENbNf64q
 iI+nItYzDzAZGJchFSIDhWeZQ3BZP0Xi21NJ/daGVVN4Hj9OCBFa
X-Google-Smtp-Source: AGHT+IH2Jza44/FQ9SGdlIxn5PkVhcYbkPK2nXfzm1wPEO8f0NiF848hJKQFk5hzcZUj941+u9uWPw==
X-Received: by 2002:a17:907:f81:b0:a6f:1972:7fd with SMTP id
 a640c23a62f3a-a6f480272c3mr62515366b.67.1718180105733; 
 Wed, 12 Jun 2024 01:15:05 -0700 (PDT)
Received: from localhost ([81.168.73.77]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-35f212aed2esm8466666f8f.26.2024.06.12.01.15.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Jun 2024 01:15:05 -0700 (PDT)
Date: Wed, 12 Jun 2024 09:15:03 +0100
From: Martin Habets <habetsm.xilinx@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20240612081503.GA8955@gmail.com>
Mail-Followup-To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org,
 Dave Ertman <david.m.ertman@intel.com>,
 Ira Weiny <ira.weiny@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Michael Chan <michael.chan@broadcom.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>, Tariq Toukan <tariqt@nvidia.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>,
 Richard Cochran <richardcochran@gmail.com>,
 linux-media@vger.kernel.org, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 sound-open-firmware@alsa-project.org, linux-sound@vger.kernel.org
References: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240611130103.3262749-7-gregkh@linuxfoundation.org>
X-Mailman-Approved-At: Wed, 12 Jun 2024 15:06:18 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1718180106; x=1718784906; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=wXAjKTvBEAvP+svvitn9yofnK0X/5/4ahwWqCi/xEWA=;
 b=WY9KOLbq6C6MSaz1TwfB7K1dYvJhfOat1UipzcDEhVT8YIJ896A9Bv7Q4Tm6khfe+Q
 kimAPyq/xB/xPRoryb5RcDX7F/qkBaEHhsm96HDlrPqNmeRKRASP3iHuZttsBp71ATTf
 mME0zKPSL5IH8P8EutZDXZYO5N+v93MALhZ4J1oAr+7g0Ig/kmLdyEOktp9r3XGRu0+K
 Ha5UacRrLEGlssmaYSChx6zBVBIzEBhDGTsNNjvrb09LhW9ZDwWfrwWfFRmv3Wh8XwTf
 nkF8fW9Yas850B9ARBQlh/l4kXCpIgDRSjZ295oBs15WJAT/7dj4Kf8BxEwQb1phtDh6
 TFQg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=WY9KOLbq
Subject: Re: [Intel-wired-lan] [PATCH 1/6] auxbus: make to_auxiliary_drv
 accept and return a constant pointer
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>,
 Dave Ertman <david.m.ertman@intel.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Bard Liao <yung-chuan.liao@linux.intel.com>,
 sound-open-firmware@alsa-project.org, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 Takashi Iwai <tiwai@suse.com>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
 Richard Cochran <richardcochran@gmail.com>, linux-sound@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Bingbu Cao <bingbu.cao@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Michael Chan <michael.chan@broadcom.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
 Kai Vehmanen <kai.vehmanen@linux.intel.com>, netdev@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>, Tariq Toukan <tariqt@nvidia.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Saeed Mahameed <saeedm@nvidia.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 03:01:04PM +0200, Greg Kroah-Hartman wrote:
> In the quest to make struct device constant, start by making
> to_auziliary_drv() return a constant pointer so that drivers that call
> this can be fixed up before the driver core changes.
> 
> As the return type previously was not constant, also fix up all callers
> that were assuming that the pointer was not going to be a constant one
> in order to not break the build.
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Dave Ertman <david.m.ertman@intel.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> Cc: Sakari Ailus <sakari.ailus@linux.intel.com>
> Cc: Bingbu Cao <bingbu.cao@intel.com>
> Cc: Tianshu Qiu <tian.shu.qiu@intel.com>
> Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
> Cc: Michael Chan <michael.chan@broadcom.com>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Eric Dumazet <edumazet@google.com>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: Paolo Abeni <pabeni@redhat.com>
> Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
> Cc: Saeed Mahameed <saeedm@nvidia.com>
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: Tariq Toukan <tariqt@nvidia.com>
> Cc: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Peter Ujfalusi <peter.ujfalusi@linux.intel.com>
> Cc: Bard Liao <yung-chuan.liao@linux.intel.com>
> Cc: Ranjani Sridharan <ranjani.sridharan@linux.intel.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Jaroslav Kysela <perex@perex.cz>
> Cc: Takashi Iwai <tiwai@suse.com>
> Cc: Richard Cochran <richardcochran@gmail.com>
> Cc: linux-media@vger.kernel.org
> Cc: netdev@vger.kernel.org
> Cc: intel-wired-lan@lists.osuosl.org
> Cc: linux-rdma@vger.kernel.org
> Cc: sound-open-firmware@alsa-project.org
> Cc: linux-sound@vger.kernel.org
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Martin Habets <habetsm.xilinx@gmail.com>

> ---
>  drivers/base/auxiliary.c                      | 8 ++++----
>  drivers/media/pci/intel/ipu6/ipu6-bus.h       | 2 +-
>  drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c | 4 ++--
>  drivers/net/ethernet/intel/ice/ice_ptp.c      | 2 +-
>  drivers/net/ethernet/mellanox/mlx5/core/dev.c | 4 ++--
>  include/linux/auxiliary_bus.h                 | 2 +-
>  sound/soc/sof/sof-client.c                    | 4 ++--
>  7 files changed, 13 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/base/auxiliary.c b/drivers/base/auxiliary.c
> index d3a2c40c2f12..5832e31bb77b 100644
> --- a/drivers/base/auxiliary.c
> +++ b/drivers/base/auxiliary.c
> @@ -180,7 +180,7 @@ static const struct auxiliary_device_id *auxiliary_match_id(const struct auxilia
>  static int auxiliary_match(struct device *dev, struct device_driver *drv)
>  {
>  	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
> -	struct auxiliary_driver *auxdrv = to_auxiliary_drv(drv);
> +	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(drv);
>  
>  	return !!auxiliary_match_id(auxdrv->id_table, auxdev);
>  }
> @@ -203,7 +203,7 @@ static const struct dev_pm_ops auxiliary_dev_pm_ops = {
>  
>  static int auxiliary_bus_probe(struct device *dev)
>  {
> -	struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
> +	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
>  	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
>  	int ret;
>  
> @@ -222,7 +222,7 @@ static int auxiliary_bus_probe(struct device *dev)
>  
>  static void auxiliary_bus_remove(struct device *dev)
>  {
> -	struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
> +	const struct auxiliary_driver *auxdrv = to_auxiliary_drv(dev->driver);
>  	struct auxiliary_device *auxdev = to_auxiliary_dev(dev);
>  
>  	if (auxdrv->remove)
> @@ -232,7 +232,7 @@ static void auxiliary_bus_remove(struct device *dev)
>  
>  static void auxiliary_bus_shutdown(struct device *dev)
>  {
> -	struct auxiliary_driver *auxdrv = NULL;
> +	const struct auxiliary_driver *auxdrv = NULL;
>  	struct auxiliary_device *auxdev;
>  
>  	if (dev->driver) {
> diff --git a/drivers/media/pci/intel/ipu6/ipu6-bus.h b/drivers/media/pci/intel/ipu6/ipu6-bus.h
> index b26c6aee1621..bb4926dfdf08 100644
> --- a/drivers/media/pci/intel/ipu6/ipu6-bus.h
> +++ b/drivers/media/pci/intel/ipu6/ipu6-bus.h
> @@ -21,7 +21,7 @@ struct ipu6_buttress_ctrl;
>  
>  struct ipu6_bus_device {
>  	struct auxiliary_device auxdev;
> -	struct auxiliary_driver *auxdrv;
> +	const struct auxiliary_driver *auxdrv;
>  	const struct ipu6_auxdrv_data *auxdrv_data;
>  	struct list_head list;
>  	void *pdata;
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
> index ba3fa1c2e5d9..b9e7d3e7b15d 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_ulp.c
> @@ -239,7 +239,7 @@ void bnxt_ulp_stop(struct bnxt *bp)
>  
>  		adev = &aux_priv->aux_dev;
>  		if (adev->dev.driver) {
> -			struct auxiliary_driver *adrv;
> +			const struct auxiliary_driver *adrv;
>  			pm_message_t pm = {};
>  
>  			adrv = to_auxiliary_drv(adev->dev.driver);
> @@ -277,7 +277,7 @@ void bnxt_ulp_start(struct bnxt *bp, int err)
>  
>  		adev = &aux_priv->aux_dev;
>  		if (adev->dev.driver) {
> -			struct auxiliary_driver *adrv;
> +			const struct auxiliary_driver *adrv;
>  
>  			adrv = to_auxiliary_drv(adev->dev.driver);
>  			edev->en_state = bp->state;
> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
> index 0f17fc1181d2..7341e7c4ef24 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
> @@ -2784,7 +2784,7 @@ static struct ice_pf *
>  ice_ptp_aux_dev_to_owner_pf(struct auxiliary_device *aux_dev)
>  {
>  	struct ice_ptp_port_owner *ports_owner;
> -	struct auxiliary_driver *aux_drv;
> +	const struct auxiliary_driver *aux_drv;
>  	struct ice_ptp *owner_ptp;
>  
>  	if (!aux_dev->dev.driver)
> diff --git a/drivers/net/ethernet/mellanox/mlx5/core/dev.c b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> index 47e7c2639774..9a79674d27f1 100644
> --- a/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> +++ b/drivers/net/ethernet/mellanox/mlx5/core/dev.c
> @@ -349,7 +349,7 @@ int mlx5_attach_device(struct mlx5_core_dev *dev)
>  {
>  	struct mlx5_priv *priv = &dev->priv;
>  	struct auxiliary_device *adev;
> -	struct auxiliary_driver *adrv;
> +	const struct auxiliary_driver *adrv;
>  	int ret = 0, i;
>  
>  	devl_assert_locked(priv_to_devlink(dev));
> @@ -406,7 +406,7 @@ void mlx5_detach_device(struct mlx5_core_dev *dev, bool suspend)
>  {
>  	struct mlx5_priv *priv = &dev->priv;
>  	struct auxiliary_device *adev;
> -	struct auxiliary_driver *adrv;
> +	const struct auxiliary_driver *adrv;
>  	pm_message_t pm = {};
>  	int i;
>  
> diff --git a/include/linux/auxiliary_bus.h b/include/linux/auxiliary_bus.h
> index de21d9d24a95..bdff7b85f2ae 100644
> --- a/include/linux/auxiliary_bus.h
> +++ b/include/linux/auxiliary_bus.h
> @@ -203,7 +203,7 @@ static inline struct auxiliary_device *to_auxiliary_dev(struct device *dev)
>  	return container_of(dev, struct auxiliary_device, dev);
>  }
>  
> -static inline struct auxiliary_driver *to_auxiliary_drv(struct device_driver *drv)
> +static inline const struct auxiliary_driver *to_auxiliary_drv(const struct device_driver *drv)
>  {
>  	return container_of(drv, struct auxiliary_driver, driver);
>  }
> diff --git a/sound/soc/sof/sof-client.c b/sound/soc/sof/sof-client.c
> index 99f74def4ab6..5d6005a88e79 100644
> --- a/sound/soc/sof/sof-client.c
> +++ b/sound/soc/sof/sof-client.c
> @@ -357,7 +357,7 @@ EXPORT_SYMBOL_NS_GPL(sof_client_ipc4_find_module, SND_SOC_SOF_CLIENT);
>  
>  int sof_suspend_clients(struct snd_sof_dev *sdev, pm_message_t state)
>  {
> -	struct auxiliary_driver *adrv;
> +	const struct auxiliary_driver *adrv;
>  	struct sof_client_dev *cdev;
>  
>  	mutex_lock(&sdev->ipc_client_mutex);
> @@ -380,7 +380,7 @@ EXPORT_SYMBOL_NS_GPL(sof_suspend_clients, SND_SOC_SOF_CLIENT);
>  
>  int sof_resume_clients(struct snd_sof_dev *sdev)
>  {
> -	struct auxiliary_driver *adrv;
> +	const struct auxiliary_driver *adrv;
>  	struct sof_client_dev *cdev;
>  
>  	mutex_lock(&sdev->ipc_client_mutex);
> -- 
> 2.45.2
> 
