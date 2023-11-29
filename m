Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 991DE7FDE07
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Nov 2023 18:12:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2DE2782289;
	Wed, 29 Nov 2023 17:12:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2DE2782289
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701277958;
	bh=+dKPamiUdoRY4kC/BqdaW6oUZf37UU+A5uxf4q7pJXw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=k+/Nk2EEnsk4AF5rOGs5Q6crhwFytZTmYpYyUly8cTKn3NrGGoEoYmryxmzAlihms
	 GVgQAtBVJUlrjNGaO6gLvWx/ilqG+GxmPVyLHuhfxcMMnMi9Zumn1+4fJQBSAY9hFK
	 4UD9W78DZmHnpNiJwvvY8Vx764laqtTOKnSsNjpIgH6hDkc2ucfR2AkfRnNIESpayK
	 MqH61dTS5QyYOvTsLgMLA0yolS5DUCgY7/7YOm+YGqKH0F1Iax1rA+ZG/8dZXRSmau
	 uQeQ+k4KsBu2lVpn+9KufeaY54NgdLjsUneRBpmUfZ00z+Gb0do4V8jFioCpx12VHp
	 oHt1cl9YKOU5w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aL_Zxts7Nzhs; Wed, 29 Nov 2023 17:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2A7681F07;
	Wed, 29 Nov 2023 17:12:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2A7681F07
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B0BAE1BF844
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:12:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 946EF41A6E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:12:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 946EF41A6E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ftg5VLlDsUuX for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 17:12:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8625D4026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 17:12:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8625D4026A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 54F8461CB6;
 Wed, 29 Nov 2023 17:12:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4FE7C433C9;
 Wed, 29 Nov 2023 17:12:25 +0000 (UTC)
Date: Wed, 29 Nov 2023 17:12:22 +0000
From: Simon Horman <horms@kernel.org>
To: Yahui Cao <yahui.cao@intel.com>
Message-ID: <20231129171222.GF43811@kernel.org>
References: <20231121025111.257597-1-yahui.cao@intel.com>
 <20231121025111.257597-6-yahui.cao@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231121025111.257597-6-yahui.cao@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701277949;
 bh=cvu+1+jIJZ1kJKi0LvpvP5t3dupRwijJyikjtLVPy2E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TTJrz2/BtIJSe8hRoEUBtL308u/wXHime/r5OkYzx++/eRMGIerSmBtYd6+fik4rJ
 YYFVMmhLWoIYGpF4uzQYVT8e+zqf3qqoDYbnWT8kWS5ZgdES8EEa//bFIJYC5N6IOG
 v6pSWYMQWRR5qQyx2GGRa8zK9O0xwYrZhsZbJNWz/l/40wkzWK0EfrUiGGGUMacm2u
 G++eb0AoIvZ+OTh2ah4JXNmTLAaqND/djnVFeSKNA5Otq6MfynF1aGT8BDQORkEO2T
 cn7RcJnUDaJNLEHveS5BfGw+sCuB5I146NwneUzLfUNGt8V38sMiF+2FlJM6DsN+3A
 Tl6sGUGLIwiVA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=TTJrz2/B
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 05/12] ice: Log virtual
 channel messages in PF
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
Cc: kevin.tian@intel.com, yishaih@nvidia.com, brett.creeley@amd.com,
 kvm@vger.kernel.org, netdev@vger.kernel.org, edumazet@google.com,
 shameerali.kolothum.thodi@huawei.com, alex.williamson@redhat.com,
 madhu.chittim@intel.com, intel-wired-lan@lists.osuosl.org, jgg@nvidia.com,
 sridhar.samudrala@intel.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 21, 2023 at 02:51:04AM +0000, Yahui Cao wrote:
> From: Lingyu Liu <lingyu.liu@intel.com>
> 
> Save the virtual channel messages sent by VF on the source side during
> runtime. The logged virtchnl messages will be transferred and loaded
> into the device on the destination side during the device resume stage.
> 
> For the feature which can not be migrated yet, it must be disabled or
> blocked to prevent from being abused by VF. Otherwise, it may introduce
> functional and security issue. Mask unsupported VF capability flags in
> the VF-PF negotiaion stage.
> 
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>

Hi Lingyu Liu and Yahui Cao,

some minor feedback from my side.

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c

...

> +/**
> + * ice_migration_log_vf_msg - Log request message from VF
> + * @vf: pointer to the VF structure
> + * @event: pointer to the AQ event
> + *
> + * Log VF message for later device state loading during live migration
> + *
> + * Return 0 for success, negative for error
> + */
> +int ice_migration_log_vf_msg(struct ice_vf *vf,
> +			     struct ice_rq_event_info *event)
> +{
> +	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
> +	u32 v_opcode = le32_to_cpu(event->desc.cookie_high);
> +	struct device *dev = ice_pf_to_dev(vf->pf);
> +	u16 msglen = event->msg_len;
> +	u8 *msg = event->msg_buf;
> +
> +	if (!ice_migration_is_loggable_msg(v_opcode))
> +		return 0;
> +
> +	if (vf->virtchnl_msg_num >= VIRTCHNL_MSG_MAX) {
> +		dev_warn(dev, "VF %d has maximum number virtual channel commands\n",
> +			 vf->vf_id);
> +		return -ENOMEM;
> +	}
> +
> +	msg_listnode = (struct ice_migration_virtchnl_msg_listnode *)
> +			kzalloc(struct_size(msg_listnode,
> +					    msg_slot.msg_buffer,
> +					    msglen),
> +				GFP_KERNEL);

nit: there is no need to cast the void * pointer returned by kzalloc().

Flagged by Coccinelle.

> +	if (!msg_listnode) {
> +		dev_err(dev, "VF %d failed to allocate memory for msg listnode\n",
> +			vf->vf_id);
> +		return -ENOMEM;
> +	}
> +	dev_dbg(dev, "VF %d save virtual channel command, op code: %d, len: %d\n",
> +		vf->vf_id, v_opcode, msglen);
> +	msg_listnode->msg_slot.opcode = v_opcode;
> +	msg_listnode->msg_slot.msg_len = msglen;
> +	memcpy(msg_listnode->msg_slot.msg_buffer, msg, msglen);
> +	list_add_tail(&msg_listnode->node, &vf->virtchnl_msg_list);
> +	vf->virtchnl_msg_num++;
> +	vf->virtchnl_msg_size += struct_size(&msg_listnode->msg_slot,
> +					     msg_buffer,
> +					     msglen);
> +	return 0;
> +}
> +
> +/**
> + * ice_migration_unlog_vf_msg - revert logged message
> + * @vf: pointer to the VF structure
> + * @v_opcode: virtchnl message operation code
> + *
> + * Remove the last virtual channel message logged before.
> + */
> +void ice_migration_unlog_vf_msg(struct ice_vf *vf, u32 v_opcode)
> +{
> +	struct ice_migration_virtchnl_msg_listnode *msg_listnode;
> +
> +	if (!ice_migration_is_loggable_msg(v_opcode))
> +		return;
> +
> +	if (WARN_ON_ONCE(list_empty(&vf->virtchnl_msg_list)))
> +		return;
> +
> +	msg_listnode =
> +		list_last_entry(&vf->virtchnl_msg_list,
> +				struct ice_migration_virtchnl_msg_listnode,
> +				node);
> +	if (WARN_ON_ONCE(msg_listnode->msg_slot.opcode != v_opcode))
> +		return;
> +
> +	list_del(&msg_listnode->node);
> +	kfree(msg_listnode);

msg_listnode is freed on the line above,
but dereferenced in the usage of struct_size() below.

As flagged by Smatch and Coccinelle.

> +	vf->virtchnl_msg_num--;
> +	vf->virtchnl_msg_size -= struct_size(&msg_listnode->msg_slot,
> +					     msg_buffer,
> +					     msg_listnode->msg_slot.msg_len);
> +}

...
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
