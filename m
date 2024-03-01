Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC32986E4A2
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 16:47:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 471DB61784;
	Fri,  1 Mar 2024 15:47:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d53ngeUX72L3; Fri,  1 Mar 2024 15:47:11 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3101F61763
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709308031;
	bh=45+oyGUScWBaVKRiotg0onHCdUVCKkP4++L4vN3JsYA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=6uEuL2l2Fvmo8bX1yQoLmV7ImtqMK34aqFwkVSgZigZhaNKvprM3r6b5ES0c95xY5
	 z8V4FNmN6RTFcLuBdscgggOjgAHjeOHj9CBrHcN9zs0nbgcMfOKYjq2CO/nYhcxXD7
	 ww9dFIfy/nFniupUQ6Iei/gxMHuMbKGQAKHyqDMAKCHVYB7lF7kzxunQ8dSUju+PdK
	 /G2DQcaNAZKXSdo57sSg0bn5C1c1Ikikje+e3VOGmCtmOt7jm4JZxKsI2R4BdK32Ur
	 PA4kpomp7DOwAeZiGF2BvFZ4ZAEy+WtPlmReXBhrvwSRpMUA54l9R3j1TWXEz8T+Pu
	 Jert7KZpKrRtg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3101F61763;
	Fri,  1 Mar 2024 15:47:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A00811BF326
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:47:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9834540193
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:47:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z4m-EByRqH6w for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 15:47:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::334; helo=mail-wm1-x334.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CE44C40119
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE44C40119
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CE44C40119
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 15:47:03 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-412c9fecf78so4484865e9.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 01 Mar 2024 07:47:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709308022; x=1709912822;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=45+oyGUScWBaVKRiotg0onHCdUVCKkP4++L4vN3JsYA=;
 b=h1Cs3B440HahAg8p6Ue222W5Wyi9+I7uyXuf+DTLDVxFrDc0qj56R7QGej7ytkK+uR
 RNyr5NfQ4YX05WKbE7sB9Fjcd1/KVNnjZ+wPeDrCAn4JPpUzwK0z2UqvnGIe8Xn8u1QE
 n4PawU3QjTIzE8PCtz/Sw7R/h2JBwP3OGx/7bmhK4YmwS524Ge1QqlL19S5MmxorUNsR
 r5CKghQnZDi0H9Vd20H2YAs3GZVWDH0O2hg6LdH8K/asctArYXKZn1V1UiwIzeznnrDf
 Pmo35CHKD6o3SY8RugVuoMi1XujtACJUVvdNqvs2jm8rQPg6tRW86yay2NApuUruxEYP
 6hxA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWyYT3iFpO2KpsgRKjlJiv9aqsYgMigXiEP067cGoZ1QYXZVSuUSuDLt6jUaOVABGVdtzCr+j222bPzK6dtwvBhHf1rXwwqLoI4Pur37XEemg==
X-Gm-Message-State: AOJu0YxnErpXZNloFPncYSCZExJmXydGzivJdqvEhtKhBAKwrLakV2pW
 +e+sbvhcQaf+U/6vbHAY2m49u0Ita2Gu+LKBLS7/XB4iQ3odbz/XE4RNTFr4ax0=
X-Google-Smtp-Source: AGHT+IFAkrvIirhc0b8Kb3FrAbr65uOsUmnoJ10pC9bAt5hxMVYlESmPPxePB0QYRA96dBh1NQpDTQ==
X-Received: by 2002:a05:600c:c1a:b0:412:b4c:58da with SMTP id
 fm26-20020a05600c0c1a00b004120b4c58damr1656796wmb.9.1709308021841; 
 Fri, 01 Mar 2024 07:47:01 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 v6-20020a5d59c6000000b0033d926bf7b5sm5043205wry.76.2024.03.01.07.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Mar 2024 07:47:00 -0800 (PST)
Date: Fri, 1 Mar 2024 16:46:58 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZeH4cpze2MPM4FAK@nanopsycho>
References: <20240228142054.474626-1-mateusz.polchlopek@intel.com>
 <20240228142054.474626-5-mateusz.polchlopek@intel.com>
 <Zd9X5GPEZEIOIyWs@nanopsycho>
 <f776a527-bfd2-45de-bace-1b1c3f9dcb68@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f776a527-bfd2-45de-bace-1b1c3f9dcb68@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1709308022; x=1709912822;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=45+oyGUScWBaVKRiotg0onHCdUVCKkP4++L4vN3JsYA=;
 b=ydr8kzSeccAXtDYxr7xcvwJ3EDiQrN5D0LzklrVTYQh9ZKWhMWcFOZPhDolcsjULxh
 j2FiEMvfgR8Y0hCOIi+qgEsAASLKpbFwMrxSnPqe55bC445E1JTdyVSr/qV7Zfmla7YG
 iLpuU4QRATd+tqUPQiYkdxZ5E4DxQ7+pirChL8mZo9gwYD76BcWc3CPyOqTWoQW+2N3g
 vj/rF9C3zi+XPoSw7Hg8jUTEWR9UC7oQ86MUmrwjMVHYWv7dLi4Re7va8WZahK+CYOSR
 ppfuC4uOSEpy0BCB45lnVm7fn7v93I4aqk2gTsUEKRwbZ9OMnb3ov93FtNXklciX0ZOL
 PXZg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=ydr8kzSe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: andrew@lunn.ch, michal.wilczynski@intel.com, netdev@vger.kernel.org,
 lukasz.czapnik@intel.com, victor.raj@intel.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Mar 01, 2024 at 02:41:56PM CET, mateusz.polchlopek@intel.com wrote:
>
>
>On 2/28/2024 4:57 PM, Jiri Pirko wrote:
>> Wed, Feb 28, 2024 at 03:20:53PM CET, mateusz.polchlopek@intel.com wrote:
>> > From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> > 
>> > It was observed that Tx performance was inconsistent across all queues
>> > and/or VSIs and that it was directly connected to existing 9-layer
>> > topology of the Tx scheduler.
>> > 
>> > Introduce new private devlink param - tx_scheduling_layers. This parameter
>> > gives user flexibility to choose the 5-layer transmit scheduler topology
>> > which helps to smooth out the transmit performance.
>> > 
>> > Allowed parameter values are 5 and 9.
>> > 
>> > Example usage:
>> > 
>> > Show:
>> > devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>> > pci/0000:4b:00.0:
>> >   name tx_scheduling_layers type driver-specific
>> >     values:
>> >       cmode permanent value 9
>> > 
>> > Set:
>> > devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>> > cmode permanent
>> > 
>> > devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 9
>> > cmode permanent
>> > 
>> > Signed-off-by: Lukasz Czapnik <lukasz.czapnik@intel.com>
>> > Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> > Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
>> > ---
>> > .../net/ethernet/intel/ice/ice_adminq_cmd.h   |   8 +
>> > drivers/net/ethernet/intel/ice/ice_devlink.c  | 169 ++++++++++++++++++
>> > .../net/ethernet/intel/ice/ice_fw_update.c    |   7 +-
>> > .../net/ethernet/intel/ice/ice_fw_update.h    |   3 +
>> > drivers/net/ethernet/intel/ice/ice_nvm.c      |   7 +-
>> > drivers/net/ethernet/intel/ice/ice_nvm.h      |   3 +
>> > 6 files changed, 189 insertions(+), 8 deletions(-)
>> > 
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> > index 02102e937b30..4143b50bd15d 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> > +++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
>> > @@ -1692,6 +1692,14 @@ struct ice_aqc_nvm {
>> > };
>> > 
>> > #define ICE_AQC_NVM_START_POINT			0
>> > +#define ICE_AQC_NVM_TX_TOPO_MOD_ID             0x14B
>> > +
>> > +struct ice_aqc_nvm_tx_topo_user_sel {
>> > +	__le16 length;
>> > +	u8 data;
>> > +#define ICE_AQC_NVM_TX_TOPO_USER_SEL	BIT(4)
>> > +	u8 reserved;
>> > +};
>> > 
>> > /* NVM Checksum Command (direct, 0x0706) */
>> > struct ice_aqc_nvm_checksum {
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> > index cc717175178b..db4872990e51 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
>> > +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
>> > @@ -770,6 +770,167 @@ ice_devlink_port_unsplit(struct devlink *devlink, struct devlink_port *port,
>> > 	return ice_devlink_port_split(devlink, port, 1, extack);
>> > }
>> > 
>> > +/**
>> > + * ice_get_tx_topo_user_sel - Read user's choice from flash
>> > + * @pf: pointer to pf structure
>> > + * @layers: value read from flash will be saved here
>> > + *
>> > + * Reads user's preference for Tx Scheduler Topology Tree from PFA TLV.
>> > + *
>> > + * Returns zero when read was successful, negative values otherwise.
>> > + */
>> > +static int ice_get_tx_topo_user_sel(struct ice_pf *pf, uint8_t *layers)
>> > +{
>> > +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>> > +	struct ice_hw *hw = &pf->hw;
>> > +	int err;
>> > +
>> > +	err = ice_acquire_nvm(hw, ICE_RES_READ);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>> > +			     sizeof(usr_sel), &usr_sel, true, true, NULL);
>> > +	if (err)
>> > +		goto exit_release_res;
>> > +
>> > +	if (usr_sel.data & ICE_AQC_NVM_TX_TOPO_USER_SEL)
>> > +		*layers = ICE_SCHED_5_LAYERS;
>> > +       else
>> > +		*layers = ICE_SCHED_9_LAYERS;
>> > +
>> > +exit_release_res:
>> > +	ice_release_nvm(hw);
>> > +
>> > +	return err;
>> > +}
>> > +
>> > +/**
>> > + * ice_update_tx_topo_user_sel - Save user's preference in flash
>> > + * @pf: pointer to pf structure
>> > + * @layers: value to be saved in flash
>> > + *
>> > + * Variable "layers" defines user's preference about number of layers in Tx
>> > + * Scheduler Topology Tree. This choice should be stored in PFA TLV field
>> > + * and be picked up by driver, next time during init.
>> > + *
>> > + * Returns zero when save was successful, negative values otherwise.
>> > + */
>> > +static int ice_update_tx_topo_user_sel(struct ice_pf *pf, int layers)
>> > +{
>> > +	struct ice_aqc_nvm_tx_topo_user_sel usr_sel = {};
>> > +	struct ice_hw *hw = &pf->hw;
>> > +	int err;
>> > +
>> > +	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
>> > +	if (err)
>> > +		return err;
>> > +
>> > +	err = ice_aq_read_nvm(hw, ICE_AQC_NVM_TX_TOPO_MOD_ID, 0,
>> > +			      sizeof(usr_sel), &usr_sel, true, true, NULL);
>> > +	if (err)
>> > +		goto exit_release_res;
>> > +
>> > +	if (layers == ICE_SCHED_5_LAYERS)
>> > +		usr_sel.data |= ICE_AQC_NVM_TX_TOPO_USER_SEL;
>> > +	else
>> > +		usr_sel.data &= ~ICE_AQC_NVM_TX_TOPO_USER_SEL;
>> > +
>> > +	err = ice_write_one_nvm_block(pf, ICE_AQC_NVM_TX_TOPO_MOD_ID, 2,
>> > +				      sizeof(usr_sel.data), &usr_sel.data,
>> > +				      true, NULL, NULL);
>> > +	if (err)
>> > +		err = -EIO;
>> > +
>> > +exit_release_res:
>> > +	ice_release_nvm(hw);
>> > +
>> > +	return err;
>> > +}
>> > +
>> > +/**
>> > + * ice_devlink_tx_sched_layers_get - Get tx_scheduling_layers parameter
>> > + * @devlink: pointer to the devlink instance
>> > + * @id: the parameter ID to set
>> > + * @ctx: context to store the parameter value
>> > + *
>> > + * Returns zero on success and negative value on failure.
>> > + */
>> > +static int ice_devlink_tx_sched_layers_get(struct devlink *devlink, u32 id,
>> > +					   struct devlink_param_gset_ctx *ctx)
>> > +{
>> > +	struct ice_pf *pf = devlink_priv(devlink);
>> > +	struct device *dev = ice_pf_to_dev(pf);
>> > +	int err;
>> > +
>> > +	err = ice_get_tx_topo_user_sel(pf, &ctx->val.vu8);
>> > +	if (err) {
>> > +		dev_warn(dev, "Failed to read Tx Scheduler Tree - User Selection data from flash\n");
>> 
>> I wonder why we don't propagate extack to these callbacks. Care to add
>> it and use it instead of dmesg please?
>> 
>> 
>
>Good point Jiri, but it is 'get' (in 'set' the same situation) function from
>DEVLINK_PARAM_DRIVER which defines that in 'set'/'get' there is no extack

So add it.


>parameter. From 'get' function I can probably remove this message as it is
>not so important and just return error code...
>
>> > +		return -EIO;
>> > +	}
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +/**
>> > + * ice_devlink_tx_sched_layers_set - Set tx_scheduling_layers parameter
>> > + * @devlink: pointer to the devlink instance
>> > + * @id: the parameter ID to set
>> > + * @ctx: context to get the parameter value
>> > + *
>> > + * Returns zero on success and negative value on failure.
>> > + */
>> > +static int ice_devlink_tx_sched_layers_set(struct devlink *devlink, u32 id,
>> > +					   struct devlink_param_gset_ctx *ctx)
>> > +{
>> > +	struct ice_pf *pf = devlink_priv(devlink);
>> > +	struct device *dev = ice_pf_to_dev(pf);
>> > +	int err;
>> > +
>> > +	err = ice_update_tx_topo_user_sel(pf, ctx->val.vu8);
>> > +	if (err)
>> > +		return -EIO;
>> > +
>> > +	dev_warn(dev, "Tx scheduling layers have been changed on this device. You must reboot the system for the change to take effect.");
>> 
>> Reboot the system? Why not re-plug the whole building while you are at
>> it? :)
>> 
>> 
>
>... but what about 'set' function? The information about reboot has to stay
>and still - there is no extack in 'set' function.

My point is, do you really need to "reboot"? Message like this sounds
very odd coming from a nic driver. Woundn't pci slot powercycle do the
trick for example?


>
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > +/**
>> > + * ice_devlink_tx_sched_layers_validate - Validate passed tx_scheduling_layers
>> > + *                                       parameter value
>> > + * @devlink: unused pointer to devlink instance
>> > + * @id: the parameter ID to validate
>> > + * @val: value to validate
>> > + * @extack: netlink extended ACK structure
>> > + *
>> > + * Supported values are:
>> > + * - 5 - five layers Tx Scheduler Topology Tree
>> > + * - 9 - nine layers Tx Scheduler Topology Tree
>> > + *
>> > + * Returns zero when passed parameter value is supported. Negative value on
>> > + * error.
>> > + */
>> > +static int ice_devlink_tx_sched_layers_validate(struct devlink *devlink, u32 id,
>> > +					        union devlink_param_value val,
>> > +					        struct netlink_ext_ack *extack)
>> > +{
>> > +	struct ice_pf *pf = devlink_priv(devlink);
>> > +	struct ice_hw *hw = &pf->hw;
>> > +
>> > +	if (!hw->func_caps.common_cap.tx_sched_topo_comp_mode_en) {
>> > +		NL_SET_ERR_MSG_MOD(extack, "Error: Requested feature is not supported by the FW on this device. Update the FW and run this command again.");
>> 
>> Drop the "Error: " prefix. Does not make sense to have it. Also, "Update
>> FW" remark looks quite odd.
>> 
>> > +		return -EOPNOTSUPP;
>> > +	}
>> > +
>> > +	if (val.vu8 != ICE_SCHED_5_LAYERS && val.vu8 != ICE_SCHED_9_LAYERS) {
>> > +		NL_SET_ERR_MSG_MOD(extack, "Error: Wrong number of tx scheduler layers provided.");
>> 
>> Drop the "Error: " prefix. Does not make sense to have it.
>> 
>> 
>> > +		return -EINVAL;
>> > +	}
>> > +
>> > +	return 0;
>> > +}
>> > +
>> > /**
>> >   * ice_tear_down_devlink_rate_tree - removes devlink-rate exported tree
>> >   * @pf: pf struct
>> > @@ -1601,6 +1762,7 @@ static int ice_devlink_loopback_validate(struct devlink *devlink, u32 id,
>> > enum ice_param_id {
>> > 	ICE_DEVLINK_PARAM_ID_BASE = DEVLINK_PARAM_GENERIC_ID_MAX,
>> > 	ICE_DEVLINK_PARAM_ID_LOOPBACK,
>> > +	ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> > };
>> > 
>> > static const struct devlink_param ice_devlink_params[] = {
>> > @@ -1618,6 +1780,13 @@ static const struct devlink_param ice_devlink_params[] = {
>> > 			     ice_devlink_loopback_get,
>> > 			     ice_devlink_loopback_set,
>> > 			     ice_devlink_loopback_validate),
>> > +	DEVLINK_PARAM_DRIVER(ICE_DEVLINK_PARAM_ID_TX_BALANCE,
>> > +			     "tx_scheduling_layers",
>> > +			     DEVLINK_PARAM_TYPE_U8,
>> > +			     BIT(DEVLINK_PARAM_CMODE_PERMANENT),
>> > +			     ice_devlink_tx_sched_layers_get,
>> > +			     ice_devlink_tx_sched_layers_set,
>> > +			     ice_devlink_tx_sched_layers_validate),
>> > };
>> > 
>> > static void ice_devlink_free(void *devlink_ptr)
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> > index 319a2d6fe26c..f81db6c107c8 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> > +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
>> > @@ -286,10 +286,9 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
>> >   *
>> >   * Returns: zero on success, or a negative error code on failure.
>> >   */
>> > -static int
>> > -ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> > -			u16 block_size, u8 *block, bool last_cmd,
>> > -			u8 *reset_level, struct netlink_ext_ack *extack)
>> > +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> > +			    u16 block_size, u8 *block, bool last_cmd,
>> > +			    u8 *reset_level, struct netlink_ext_ack *extack)
>> > {
>> > 	u16 completion_module, completion_retval;
>> > 	struct device *dev = ice_pf_to_dev(pf);
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.h b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> > index 750574885716..04b200462757 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> > +++ b/drivers/net/ethernet/intel/ice/ice_fw_update.h
>> > @@ -9,5 +9,8 @@ int ice_devlink_flash_update(struct devlink *devlink,
>> > 			     struct netlink_ext_ack *extack);
>> > int ice_get_pending_updates(struct ice_pf *pf, u8 *pending,
>> > 			    struct netlink_ext_ack *extack);
>> > +int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
>> > +			    u16 block_size, u8 *block, bool last_cmd,
>> > +			    u8 *reset_level, struct netlink_ext_ack *extack);
>> > 
>> > #endif
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> > index d4e05d2cb30c..84eab92dc03c 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
>> > +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
>> > @@ -18,10 +18,9 @@
>> >   *
>> >   * Read the NVM using the admin queue commands (0x0701)
>> >   */
>> > -static int
>> > -ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset, u16 length,
>> > -		void *data, bool last_command, bool read_shadow_ram,
>> > -		struct ice_sq_cd *cd)
>> > +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>> > +		    u16 length, void *data, bool last_command,
>> > +		    bool read_shadow_ram, struct ice_sq_cd *cd)
>> > {
>> > 	struct ice_aq_desc desc;
>> > 	struct ice_aqc_nvm *cmd;
>> > diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.h b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> > index 774c2317967d..63cdc6bdac58 100644
>> > --- a/drivers/net/ethernet/intel/ice/ice_nvm.h
>> > +++ b/drivers/net/ethernet/intel/ice/ice_nvm.h
>> > @@ -14,6 +14,9 @@ struct ice_orom_civd_info {
>> > 
>> > int ice_acquire_nvm(struct ice_hw *hw, enum ice_aq_res_access_type access);
>> > void ice_release_nvm(struct ice_hw *hw);
>> > +int ice_aq_read_nvm(struct ice_hw *hw, u16 module_typeid, u32 offset,
>> > +		    u16 length, void *data, bool last_command,
>> > +		    bool read_shadow_ram, struct ice_sq_cd *cd);
>> > int
>> > ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u32 *length, u8 *data,
>> > 		  bool read_shadow_ram);
>> > -- 
>> > 2.38.1
>> > 
>
>Other comments will be resolved in the next version.
>Thanks
