Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F212AB362A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 May 2025 13:46:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 27CF280C98;
	Mon, 12 May 2025 11:46:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SRG5oLzqj9-H; Mon, 12 May 2025 11:46:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C36C80DA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747050404;
	bh=n6O7vgHdSb9U+jQZJm5Sd8RVXIzGEuZg9D4sof60J2M=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mfHhGDc4HIYPbhP/LISvT8pvqEVRdzPH5eCjAAzItCxuXJxveFAnuySBkY23ue9nE
	 qFzcfZ10zi65RHmFhfzROqUNJr+SJyiO1B9J52grI0gQ3JuNI9Ru1yitbsPgKRyXYt
	 YbP4QLUznpmQEE0+/uDSY4DL0U11JgefecT9Jrh9Ocj51ZbdkKng5Vv08FdN6iJhZv
	 d+p1Z6M6Mz9YGRx4kCLazMtty02m+FFIPa5p7LRdD6E92wnBsfQ2EH/QkRbT1ZOT1z
	 tSD7YOe3GeyBSv3R/ypPkrmTGh/Tf8LzESCyaGr2EpdjQjxee+ZzeUVeEj0Y0x6E4O
	 fUpHc2sP1bbVA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C36C80DA6;
	Mon, 12 May 2025 11:46:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 642B817D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 11:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55715409FF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 11:46:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gptPVgqIpjXz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 May 2025 11:46:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 88793404E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 88793404E2
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 88793404E2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 May 2025 11:46:40 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 5C12C61EA1BF9;
 Mon, 12 May 2025 13:46:08 +0200 (CEST)
Message-ID: <b5678313-0ec0-444f-962f-758a35c5a46d@molgen.mpg.de>
Date: Mon, 12 May 2025 13:46:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 decot@google.com, willemb@google.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, madhu.chittim@intel.com, aleksandr.loktionov@intel.com,
 przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch, joshua.a.hay@intel.com,
 ahmed.zaki@intel.com
References: <20250508184715.7631-1-emil.s.tantilov@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250508184715.7631-1-emil.s.tantilov@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] idpf: avoid mailbox timeout
 delays during reset
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Emil,


Thank you for the patch.

Am 08.05.25 um 20:47 schrieb Emil Tantilov:
> Mailbox operations are not possible while the driver is in reset.
> Operations that require MBX exchange with the control plane will result
> in long delays if executed while a reset is in progress:
> 
> ethtool -L <inf> combined 8& echo 1 > /sys/class/net/<inf>/device/reset
> idpf 0000:83:00.0: HW reset detected
> idpf 0000:83:00.0: Device HW Reset initiated
> idpf 0000:83:00.0: Transaction timed-out (op:504 cookie:be00 vc_op:504 salt:be timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:508 cookie:bf00 vc_op:508 salt:bf timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:512 cookie:c000 vc_op:512 salt:c0 timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:510 cookie:c100 vc_op:510 salt:c1 timeout:2000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c200 vc_op:509 salt:c2 timeout:60000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:509 cookie:c300 vc_op:509 salt:c3 timeout:60000ms)
> idpf 0000:83:00.0: Transaction timed-out (op:505 cookie:c400 vc_op:505 salt:c4 timeout:60000ms)
> idpf 0000:83:00.0: Failed to configure queues for vport 0, -62
> 
> Disable mailbox communication in case of a reset, unless it's done during
> a driver load, where the virtchnl operations are needed to configure the
> device.

Is the Linux kernel going to log something now, that the mailbox 
operation is ignored?

> Fixes: 8077c727561aa ("idpf: add controlq init and reset checks")
> Co-developed-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/idpf_lib.c     | 18 +++++++++++++-----
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c    |  2 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.h    |  1 +
>   3 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_lib.c b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> index 3a033ce19cda..2ed801398971 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_lib.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_lib.c
> @@ -1816,11 +1816,19 @@ void idpf_vc_event_task(struct work_struct *work)
>   	if (test_bit(IDPF_REMOVE_IN_PROG, adapter->flags))
>   		return;
>   
> -	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags) ||
> -	    test_bit(IDPF_HR_DRV_LOAD, adapter->flags)) {
> -		set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> -		idpf_init_hard_reset(adapter);
> -	}
> +	if (test_bit(IDPF_HR_FUNC_RESET, adapter->flags))
> +		goto func_reset;
> +
> +	if (test_bit(IDPF_HR_DRV_LOAD, adapter->flags))
> +		goto drv_load;
> +
> +	return;
> +
> +func_reset:
> +	idpf_vc_xn_shutdown(adapter->vcxn_mngr);
> +drv_load:
> +	set_bit(IDPF_HR_RESET_IN_PROG, adapter->flags);
> +	idpf_init_hard_reset(adapter);
>   }
>   
>   /**
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> index 3d2413b8684f..5d2ca007f682 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c
> @@ -376,7 +376,7 @@ static void idpf_vc_xn_init(struct idpf_vc_xn_manager *vcxn_mngr)
>    * All waiting threads will be woken-up and their transaction aborted. Further
>    * operations on that object will fail.
>    */
> -static void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
> +void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr)
>   {
>   	int i;
>   
> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> index 83da5d8da56b..23271cf0a216 100644
> --- a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> +++ b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.h
> @@ -66,5 +66,6 @@ int idpf_send_get_stats_msg(struct idpf_vport *vport);
>   int idpf_send_set_sriov_vfs_msg(struct idpf_adapter *adapter, u16 num_vfs);
>   int idpf_send_get_set_rss_key_msg(struct idpf_vport *vport, bool get);
>   int idpf_send_get_set_rss_lut_msg(struct idpf_vport *vport, bool get);
> +void idpf_vc_xn_shutdown(struct idpf_vc_xn_manager *vcxn_mngr);
>   
>   #endif /* _IDPF_VIRTCHNL_H_ */


Kind regards,

Paul
