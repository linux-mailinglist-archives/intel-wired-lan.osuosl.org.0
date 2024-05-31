Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 656F38D5FC9
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 May 2024 12:37:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7883941648;
	Fri, 31 May 2024 10:37:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DKBRVLgGLr7j; Fri, 31 May 2024 10:37:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAE3241639
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717151847;
	bh=ibqcZ+UlNl9X0ghqpH9GsdCO7uy3HNrrB/Im+tJQjDQ=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=gr10FNENy6pvGeW0VYi0l7NfLbxwvYFdUdnh4UwPhKERFQmj+kY4xPZuV+m21URjq
	 Rt8gIoXPgRjwXRVGg8S/4/lZ/VKXXyGZsh22q9DiWXcKOenVYrUdrFrjjde/KRE/2U
	 gXz75/v+84luFLWtuQg4CcC2sak8AU+FY8ROHoFhH0cPu8pzuVLOen8fdWtNzgw43Z
	 vCv5P3xubHPRaLul0KVpg+2soFiiBJC1ukbOT9ktqWy6dJWDdeBTfOiMhKhtJECL5p
	 M49LlzetiNCel9bwO9xJrLyxRJE0ghl/WA4ciS/3yQ+oN9SvX8qm4weYXEkYb+g6WQ
	 B6II+wqM8hgSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAE3241639;
	Fri, 31 May 2024 10:37:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A4DEC1D50C6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 10:37:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F9CA4162B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 10:37:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dj_4ZtynDoOt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 May 2024 10:37:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1747A40B25
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1747A40B25
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1747A40B25
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 May 2024 10:37:22 +0000 (UTC)
Received: from [141.14.13.3] (g258.RadioFreeInternet.molgen.mpg.de
 [141.14.13.3])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 4FD7461E5FE01;
 Fri, 31 May 2024 12:36:56 +0200 (CEST)
Message-ID: <40438f4d-d790-4921-ad6d-d69977747a57@molgen.mpg.de>
Date: Fri, 31 May 2024 12:36:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Wojciech Drewek <wojciech.drewek@intel.com>
References: <20240531093206.714632-1-wojciech.drewek@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240531093206.714632-1-wojciech.drewek@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v3] ice: implement AQ download
 pkg retry
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
Cc: jacob.e.keller@intel.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Wojciech,


Thank you for your patch.

Am 31.05.24 um 11:32 schrieb Wojciech Drewek:
> ice_aqc_opc_download_pkg (0x0C40) AQ sporadically returns error due
> to FW issue. Fix this by retrying five times before moving to
> Safe Mode.

Also mention the delay of 20 ms?

Please elaborate, what firmware version you tested with, and if there 
are plans to fix this in the firmware.

> Fixes: c76488109616 ("ice: Implement Dynamic Device Personalization (DDP) download")
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Brett Creeley <brett.creeley@amd.com>
> ---
> v2: remove "failure" from log message
> v3: don't sleep in the last iteration of the wait loop
> ---
>   drivers/net/ethernet/intel/ice/ice_ddp.c | 23 +++++++++++++++++++++--
>   1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_ddp.c b/drivers/net/ethernet/intel/ice/ice_ddp.c
> index ce5034ed2b24..f182179529b7 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ddp.c
> +++ b/drivers/net/ethernet/intel/ice/ice_ddp.c
> @@ -1339,6 +1339,7 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>   
>   	for (i = 0; i < count; i++) {
>   		bool last = false;
> +		int try_cnt = 0;
>   		int status;
>   
>   		bh = (struct ice_buf_hdr *)(bufs + start + i);
> @@ -1346,8 +1347,26 @@ ice_dwnld_cfg_bufs_no_lock(struct ice_hw *hw, struct ice_buf *bufs, u32 start,
>   		if (indicate_last)
>   			last = ice_is_last_download_buffer(bh, i, count);
>   
> -		status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
> -					     &offset, &info, NULL);
> +		while (1) {
> +			status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE,
> +						     last, &offset, &info,
> +						     NULL);
> +			if (hw->adminq.sq_last_status != ICE_AQ_RC_ENOSEC &&
> +			    hw->adminq.sq_last_status != ICE_AQ_RC_EBADSIG)
> +				break;
> +
> +			try_cnt++;
> +
> +			if (try_cnt == 5)
> +				break;
> +
> +			msleep(20);
> +		}
> +
> +		if (try_cnt)
> +			dev_dbg(ice_hw_to_dev(hw),
> +				"ice_aq_download_pkg number of retries: %d\n",
> +				try_cnt);

Should the firmware be fixed, a warning could be shown asking to update 
the firmware.

>   
>   		/* Save AQ status from download package */
>   		if (status) {


Kind regards,

Paul
