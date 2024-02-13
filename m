Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD14852F73
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Feb 2024 12:35:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6FC9441030;
	Tue, 13 Feb 2024 11:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qmbps1bBEFBu; Tue, 13 Feb 2024 11:35:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C525F40C1C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707824113;
	bh=DQ8bp23+ggv8wr3fBlwZDd44tUu1TI0wSokojBTeNU8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Sfh2lvuxHLyoKLuYBk4JvslEfsq5DRa2V82eQx1MzBihg+ZD30mjSefn3WDRf4Vis
	 55/m7EL2yxTP6X8yFit9+9HPQsspK6A7IjtV+yEQ9Uq79Zw5aBhDj3JTh+kHR9KoqG
	 QbjCgWfUM4bKVJ4zhcEgiiMbTUaIun8IY8GDaNOK4u4L4GBQoinCyxCMcjz7G+zO73
	 M9AeuP5lzF3IbHjBlpdmYrKuYZBiq8aYbiQZbp8jZKDXHPiwQTGONNwmDIEIRmQnEG
	 5d/tPBOlS4d1+la1/YiyaoPNcbmdl1zY7mmtYS2ykE+/agY9VhYh7KCPbH8xYGkK0K
	 9BQkP7QCQhVtA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C525F40C1C;
	Tue, 13 Feb 2024 11:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 620341BF421
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5B21C40673
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B0a3twt-ySrq for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Feb 2024 11:35:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::231; helo=mail-lj1-x231.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED4CD40655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED4CD40655
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com
 [IPv6:2a00:1450:4864:20::231])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED4CD40655
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 11:35:08 +0000 (UTC)
Received: by mail-lj1-x231.google.com with SMTP id
 38308e7fff4ca-2d10d2da73dso4179781fa.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Feb 2024 03:35:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1707824107; x=1708428907;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=DQ8bp23+ggv8wr3fBlwZDd44tUu1TI0wSokojBTeNU8=;
 b=l9GyG0il/Xk6voQJDQaZxATuMwDpqeY2d0+ONYtYNaZKvpVYO4AGRnpkCi19aPXbpc
 OmSGGxQap9vV+oCne3O7hldWsm72nQUjWD1BXhzr6dmCFu9+z1JVrZ+kots7yBPXqCaR
 Fk+9UA8x8vGMSU/DNFlqDZ2/SN+id4zHZ86orOs9nJhnTHk2wtSRXxY45fnPTfn/0AH4
 vRmlss4GbL6QvjMHObCTcK9B6uIdHUKvCaK7ygovZh0xhLIEAVvSyuVLPH5oJG4tpk7R
 K6k/exG33+DDkMR/febrZ3u8Hsct2ZTNaw1ekTH0X6ttHzoR35fx3D7RTBzYwPRU3Glh
 sDYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWeH0mSo3ZGscl1Kt7jLi1yfMTIH7V2xMZa5NdKL5BA/O130u7KJDKJWBNFUtJi7mAGr8zS1gCvE3Yl29MC/EcttZOsUk+Mp1u3g37d1zvuIQ==
X-Gm-Message-State: AOJu0YzEVCzC5z1smgav3be1ROov709QaEZssPqzplv6m1d+W33XQUC1
 XZTRJqLcy25rTz+Kahld9NB44wySAq1ZYYWELXe5bxQL+NpGQ5tbwRGIhOPOa3k=
X-Google-Smtp-Source: AGHT+IGZNa4xV9rDYQSuFFlBbPC6+OB2Cxc6GrXsRPziFgnG3taFMBKsuDpM/LyVZs/3XMa8oKuWPg==
X-Received: by 2002:a2e:7d03:0:b0:2d0:e666:5b4d with SMTP id
 y3-20020a2e7d03000000b002d0e6665b4dmr6816611ljc.21.1707824106579; 
 Tue, 13 Feb 2024 03:35:06 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCXUwBsGYhH5jC4Cf+AVJ4WELV1Q/TjcJnUZUT7GClfYev4BcDvOGRziDsBQPtWlEuFhQqpbJezZjRumdeZTZKWJl0IfQjMvMucXw8BpGbXWoeTxW2oxfSoziG69Jl3VK0rSxftDGOzgMlsTqekZ6BsJbH3ag81Pu7lihsp2n5K+xSXZ/rX1BVj+yl253CSB6UE2sn/7zG6wEVCsdswJI7LJ2NTHdGC+MJfkFsPLtNHoubvQTOJcIwps5bTyv1A7BBQwOpORY0maPvLmkia9sSr2Z9UlLc6C2oJ4F5hqjOHOMek4cUuM2ahyfW8jirx7z1nuRejPB5tV0ySAFzXdKME+kaTgpwSHfCE0CDLPf0C/28jvhmw84hNrIn5f1cF8GEZXnvNebZWsMEQMrZUPHBxzsf4irCnRUxwbG84OAHUMj80QIBKU1cYPhHCU/VnqyTLSuehAskci8weaY1KmfL3zBYJzt0BkutVA9GEkHBI4BySdiiCE
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 c6-20020a05600c0a4600b004117e45f12esm3640188wmq.22.2024.02.13.03.35.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Feb 2024 03:35:06 -0800 (PST)
Date: Tue, 13 Feb 2024 12:35:02 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Message-ID: <ZctT5kBdbjcxygQT@nanopsycho>
References: <20240213073509.77622-1-michal.swiatkowski@linux.intel.com>
 <20240213073509.77622-7-michal.swiatkowski@linux.intel.com>
 <ZcsxRRrVvnhjLxn3@nanopsycho> <Zcs9XeZmd2E1IHKs@mev-dev>
 <bb501538-29d5-4930-97b6-1c02f1b7ecba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb501538-29d5-4930-97b6-1c02f1b7ecba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1707824107; x=1708428907;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=DQ8bp23+ggv8wr3fBlwZDd44tUu1TI0wSokojBTeNU8=;
 b=gTb3Uy/u5cxpXoeXLah8TzSIOXUDrVr9pM4rc2Z8LLr36U9H5riWOc22Jh07U+ls1v
 V8IzBbUPrKsSlpggiGYDrtrWBB5Hl7PC7nWxBemC6nMuP7buF4ZdqBZKBkvxW5FE4d0c
 cRCi+Grfa4nqlB0syeJ95i0VQ/OP597WQrEDffuKSh92IONp33WdbdU1+O7Ttkna2n0L
 SGHwLwD5RHEZo2e/oQ53gh3+UcTXIcNR31SEdGmIxiDbnMFe2s77nFPW5u4UpDxjQETA
 05a1tCOMRN6MfxNYam80pUMvMKP+iYNVSCe1hQLZim3jLPqWOqhBChCczdYfvMDhdejP
 Afsw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=gTb3Uy/u
Subject: Re: [Intel-wired-lan] [iwl-next v1 6/7] ice: enable_rdma devlink
 param
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
Cc: Jan Sokolowski <jan.sokolowski@intel.com>, marcin.szycik@intel.com,
 sridhar.samudrala@intel.com, konrad.knitter@intel.com,
 pawel.chmielewski@intel.com, intel-wired-lan@lists.osuosl.org,
 nex.sw.ncis.nat.hpm.dev@intel.com, pio.raczynski@gmail.com,
 netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Feb 13, 2024 at 11:19:49AM CET, wojciech.drewek@intel.com wrote:
>
>
>On 13.02.2024 10:58, Michal Swiatkowski wrote:
>> On Tue, Feb 13, 2024 at 10:07:17AM +0100, Jiri Pirko wrote:
>>> Tue, Feb 13, 2024 at 08:35:08AM CET, michal.swiatkowski@linux.intel.com wrote:
>>>> Implement enable_rdma devlink parameter to allow user to turn RDMA
>>>> feature on and off.
>>>>
>>>> It is useful when there is no enough interrupts and user doesn't need
>>>> RDMA feature.
>>>>
>>>> Reviewed-by: Jan Sokolowski <jan.sokolowski@intel.com>
>>>> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>>>> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
>>>> ---
>>>> drivers/net/ethernet/intel/ice/ice_devlink.c | 32 ++++++++++++++++++--
>>>> drivers/net/ethernet/intel/ice/ice_lib.c     |  8 ++++-
>>>> drivers/net/ethernet/intel/ice/ice_main.c    | 18 +++++------
>>>> 3 files changed, 45 insertions(+), 13 deletions(-)
>>>>
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> index b82ff9556a4b..4f048268db72 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>>>> @@ -1675,6 +1675,19 @@ ice_devlink_msix_min_pf_validate(struct devlink *devlink, u32 id,
>>>> 	return 0;
>>>> }
>>>>
>>>> +static int ice_devlink_enable_rdma_validate(struct devlink *devlink, u32 id,
>>>> +					    union devlink_param_value val,
>>>> +					    struct netlink_ext_ack *extack)
>>>> +{
>>>> +	struct ice_pf *pf = devlink_priv(devlink);
>>>> +	bool new_state = val.vbool;
>>>> +
>>>> +	if (new_state && !test_bit(ICE_FLAG_RDMA_ENA, pf->flags))
>>>> +		return -EOPNOTSUPP;
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> static const struct devlink_param ice_devlink_params[] = {
>>>> 	DEVLINK_PARAM_GENERIC(ENABLE_ROCE, BIT(DEVLINK_PARAM_CMODE_RUNTIME),
>>>> 			      ice_devlink_enable_roce_get,
>>>> @@ -1700,6 +1713,8 @@ static const struct devlink_param ice_devlink_params[] = {
>>>> 			      ice_devlink_msix_min_pf_get,
>>>> 			      ice_devlink_msix_min_pf_set,
>>>> 			      ice_devlink_msix_min_pf_validate),
>>>> +	DEVLINK_PARAM_GENERIC(ENABLE_RDMA, BIT(DEVLINK_PARAM_CMODE_DRIVERINIT),
>>>> +			      NULL, NULL, ice_devlink_enable_rdma_validate),
>>>> };
>>>>
>>>> static void ice_devlink_free(void *devlink_ptr)
>>>> @@ -1776,9 +1791,22 @@ ice_devlink_set_switch_id(struct ice_pf *pf, struct netdev_phys_item_id *ppid)
>>>> int ice_devlink_register_params(struct ice_pf *pf)
>>>> {
>>>> 	struct devlink *devlink = priv_to_devlink(pf);
>>>> +	union devlink_param_value value;
>>>> +	int err;
>>>> +
>>>> +	err = devlink_params_register(devlink, ice_devlink_params,
>>>
>>> Interesting, can't you just take the lock before this and call
>>> devl_params_register()?
>>>
>> I mess up a locking here and also in subfunction patchset. I will follow
>> you suggestion and take lock for whole init/cleanup. Thanks.
>> 
>>> Moreover, could you please fix your init/cleanup paths for hold devlink
>>> instance lock the whole time?
>>>
>> You right, I will prepare patch for it.
>
>I think my patch implements your suggestion Jiri:
>https://lore.kernel.org/netdev/20240212211202.1051990-5-anthony.l.nguyen@intel.com/

This patch is based on the one in your link apparently. I think it is
incomplete. Idk


>
>> 
>>>
>>> pw-bot: cr
>>>
>>>
>>>> +				      ARRAY_SIZE(ice_devlink_params));
>>>> +	if (err)
>>>> +		return err;
>>>>
>>>> -	return devlink_params_register(devlink, ice_devlink_params,
>>>> -				       ARRAY_SIZE(ice_devlink_params));
>>>> +	devl_lock(devlink);
>>>> +	value.vbool = test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>>>> +	devl_param_driverinit_value_set(devlink,
>>>> +					DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>>>> +					value);
>>>> +	devl_unlock(devlink);
>>>> +
>>>> +	return 0;
>>>> }
>>>>
>>>> void ice_devlink_unregister_params(struct ice_pf *pf)
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
>>>> index a30d2d2b51c1..4d5c3d699044 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_lib.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_lib.c
>>>> @@ -829,7 +829,13 @@ bool ice_is_safe_mode(struct ice_pf *pf)
>>>>  */
>>>> bool ice_is_rdma_ena(struct ice_pf *pf)
>>>> {
>>>> -	return test_bit(ICE_FLAG_RDMA_ENA, pf->flags);
>>>> +	union devlink_param_value value;
>>>> +	int err;
>>>> +
>>>> +	err = devl_param_driverinit_value_get(priv_to_devlink(pf),
>>>> +					      DEVLINK_PARAM_GENERIC_ID_ENABLE_RDMA,
>>>> +					      &value);
>>>> +	return err ? false : value.vbool;
>>>> }
>>>>
>>>> /**
>>>> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
>>>> index 824732f16112..4dd59d888ec7 100644
>>>> --- a/drivers/net/ethernet/intel/ice/ice_main.c
>>>> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
>>>> @@ -5177,23 +5177,21 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>>>> 	if (err)
>>>> 		goto err_init;
>>>>
>>>> +	err = ice_init_devlink(pf);
>>>> +	if (err)
>>>> +		goto err_init_devlink;
>>>> +
>>>> 	devl_lock(priv_to_devlink(pf));
>>>> 	err = ice_load(pf);
>>>> 	devl_unlock(priv_to_devlink(pf));
>>>> 	if (err)
>>>> 		goto err_load;
>>>>
>>>> -	err = ice_init_devlink(pf);
>>>> -	if (err)
>>>> -		goto err_init_devlink;
>>>> -
>>>> 	return 0;
>>>>
>>>> -err_init_devlink:
>>>> -	devl_lock(priv_to_devlink(pf));
>>>> -	ice_unload(pf);
>>>> -	devl_unlock(priv_to_devlink(pf));
>>>> err_load:
>>>> +	ice_deinit_devlink(pf);
>>>> +err_init_devlink:
>>>> 	ice_deinit(pf);
>>>> err_init:
>>>> 	pci_disable_device(pdev);
>>>> @@ -5290,12 +5288,12 @@ static void ice_remove(struct pci_dev *pdev)
>>>> 	if (!ice_is_safe_mode(pf))
>>>> 		ice_remove_arfs(pf);
>>>>
>>>> -	ice_deinit_devlink(pf);
>>>> -
>>>> 	devl_lock(priv_to_devlink(pf));
>>>> 	ice_unload(pf);
>>>> 	devl_unlock(priv_to_devlink(pf));
>>>>
>>>> +	ice_deinit_devlink(pf);
>>>> +
>>>> 	ice_deinit(pf);
>>>> 	ice_vsi_release_all(pf);
>>>>
>>>> -- 
>>>> 2.42.0
>>>>
>>>>
