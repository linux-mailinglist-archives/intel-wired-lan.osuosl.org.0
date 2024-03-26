Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6E888C492
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 Mar 2024 15:08:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC9E440555;
	Tue, 26 Mar 2024 14:08:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YJGJyr9993jm; Tue, 26 Mar 2024 14:08:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AE99D4054D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711462115;
	bh=H1UyVXWXFJA/qrLu7B4UTnxSHsy6lcJUZlGD1Kt3EA0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bzTN1l8NIOgUGwYAE2AknkMeT8KLkE/lheMpNHUpy4Yk/wkfcDMk4kqWZiXqutvaR
	 O44k05uOYUOoXPsa1wr0k45gRWwi2CKMv0H/itfCzQgewc3f6XONswoxmRW7Oxc2Gk
	 7hr79iqSL3l8NmMUOMIC9LmuE/TWNTnS6lKSgb/z3V8iusOg91z/64lSP/219F95mj
	 fPE/655Jh13cMlypK37vW/w3megc9psneZTNP3uv733Us9NgQX+o8FCb7s/GosGq+1
	 qkT21GzNW0g2KjUBKYzPMSItO8gw0m4PHSwNC6KIJFuoOEQ5Sk8A7/ODGelJUX0ROZ
	 QAzgMpZbIZeWw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id AE99D4054D;
	Tue, 26 Mar 2024 14:08:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 64F6E1BF4E2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5031C81F26
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:08:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HJ_yLwV4jur for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Mar 2024 14:08:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9086381F24
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9086381F24
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9086381F24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Mar 2024 14:08:31 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 95ADF60A78;
 Tue, 26 Mar 2024 14:08:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D0E1C433F1;
 Tue, 26 Mar 2024 14:08:24 +0000 (UTC)
Date: Tue, 26 Mar 2024 14:08:22 +0000
From: Simon Horman <horms@kernel.org>
To: Karthik Sundaravel <ksundara@redhat.com>
Message-ID: <20240326140822.GU403975@kernel.org>
References: <20240321081625.28671-1-ksundara@redhat.com>
 <20240321081625.28671-2-ksundara@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240321081625.28671-2-ksundara@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711462108;
 bh=bY1OR40TRb21xx/DvbjH3F2E2wkaPuG9wLge9veFPks=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lR1NPhFRpdtuUaXqRXXkdvd4hCOU9mBW61L8Q2lepr3ZJZjYLSOy/mfVW6j9Qlfq6
 tOMQvdKea6oVdSoJPevlHiR279WnOwMx00KNq6tSzKxK2v7pNOcXDHZr8EKDpMkf21
 A1BMmdXaJFA/UmFIL3KPrcgCx4m071hZwDsfKlOJMJIv+zbQc8tYjNu5adTAGUcxmx
 yXyLVE87wta2LiCKdIx7dcOZ515P6rNtONJcMyezE31SRxSrABImIMN75bjGt3fTwY
 bWnZocs22Ab7cxoq/TkvN9yzlTWxEBmun4rwrXBc2YmG8rA7bFznlBnUyJRY/47YsN
 Mwh5WzqAaIqrg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=lR1NPhFR
Subject: Re: [Intel-wired-lan] [PATCH v6] ice: Add get/set hw address for
 VFs using devlink commands
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
Cc: jiri@resnulli.us, pmenzel@molgen.mpg.de, aharivel@redhat.com,
 michal.swiatkowski@linux.intel.com, wojciech.drewek@intel.com,
 cfontain@redhat.com, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, edumazet@google.com, anthony.l.nguyen@intel.com,
 vchundur@redhat.com, netdev@vger.kernel.org, jacob.e.keller@intel.com,
 kuba@kernel.org, rjarry@redhat.com, pabeni@redhat.com, davem@davemloft.net,
 sumang@marvell.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 01:46:25PM +0530, Karthik Sundaravel wrote:
> Changing the MAC address of the VFs is currently unsupported via devlink.
> Add the function handlers to set and get the HW address for the VFs.
> 
> Signed-off-by: Karthik Sundaravel <ksundara@redhat.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 66 +++++++++++++++++++-
>  drivers/net/ethernet/intel/ice/ice_sriov.c   | 62 ++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_sriov.h   |  8 +++
>  3 files changed, 135 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_devlink.c b/drivers/net/ethernet/intel/ice/ice_devlink.c
> index 80dc5445b50d..35c7cfc8ce9a 100644
> --- a/drivers/net/ethernet/intel/ice/ice_devlink.c
> +++ b/drivers/net/ethernet/intel/ice/ice_devlink.c
> @@ -1576,6 +1576,69 @@ void ice_devlink_destroy_pf_port(struct ice_pf *pf)
>  	devlink_port_unregister(&pf->devlink_port);
>  }
>  
> +/**
> + * ice_devlink_port_get_vf_fn_mac - .port_fn_hw_addr_get devlink handler
> + * @port: devlink port structure
> + * @hw_addr: MAC address of the port
> + * @hw_addr_len: length of MAC address
> + * @extack: extended netdev ack structure
> + *
> + * Callback for the devlink .port_fn_hw_addr_get operation
> + * Return: zero on success or an error code on failure.
> + */
> +
> +static int ice_devlink_port_get_vf_fn_mac(struct devlink_port *port,
> +					  u8 *hw_addr, int *hw_addr_len,
> +					  struct netlink_ext_ack *extack)
> +{
> +	struct ice_vf *vf = container_of(port, struct ice_vf, devlink_port);

nit: blank line here please.

Flagged by checkpatch.

> +	if (!vf) {

Given the way that container_of works, I don't think vf can be NULL.

Flagged by Smatch.

> +		NL_SET_ERR_MSG_MOD(extack, "Unable to get the vf");
> +		return -EINVAL;
> +	}
> +	ether_addr_copy(hw_addr, vf->dev_lan_addr);
> +	*hw_addr_len = ETH_ALEN;
> +
> +	return 0;
> +}

...

