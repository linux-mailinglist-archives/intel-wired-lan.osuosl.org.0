Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 595C577105C
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 17:37:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70BF160F75;
	Sat,  5 Aug 2023 15:37:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70BF160F75
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691249834;
	bh=3MgM3Gy9uFXjbEfcPajf/hHCwJBrmNXacPnTgcaKkL0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IKW5Dkobhwc0HdIJ/IEi1/5t8CpvnWC5GHPh26hEmlJvdBEIaTCjJO/nfkaqfApKU
	 Ra+k32+UijUzEcUU/aJeibBpMATyQ0YfdpTSyjFM21+xYUkPQXHPE7UEPQ8qnakvxe
	 5JXzU+WXL5rHtCrU0jhnctB7m4uc28jqOiJRTRyvCQyFAdFDtKjRui242NO8TRoynT
	 QbfsYvAN63legyb0IZ5mFkHykwyP1Oyg6Q98hVEuG8aRkVBNjTqn/juLoACynBXwUD
	 tKNzCNsu+a7zQoZNVmUcx2gQftnObkM3ydSMTJKk3KHz2xMSTGxbw/gilsIZwZMOme
	 P+fhZHv2Gw/aQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pj7V8uINvXv9; Sat,  5 Aug 2023 15:37:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3535260B09;
	Sat,  5 Aug 2023 15:37:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3535260B09
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 098851BF860
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:37:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 47DBB8203D
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:35:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47DBB8203D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LvSWcUlpoPhe for <intel-wired-lan@lists.osuosl.org>;
 Sat,  5 Aug 2023 15:35:54 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8B84C821F8
 for <intel-wired-lan@lists.osuosl.org>; Sat,  5 Aug 2023 15:35:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8B84C821F8
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CF9396010E;
 Sat,  5 Aug 2023 15:35:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E8E8C433C8;
 Sat,  5 Aug 2023 15:35:51 +0000 (UTC)
Date: Sat, 5 Aug 2023 17:35:49 +0200
From: Simon Horman <horms@kernel.org>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZM5sVZdtAcxZ7Bof@vergenet.net>
References: <20230804125525.20244-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230804125525.20244-1-yuehaibing@huawei.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691249753;
 bh=hFlh1LwtL/3NBYjzNH57jm3fReT2tD1jvWjh/oZP4WA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=c0WQ6kaU8mNGyAes6vdRLGbPpOHwteKi7XJk5jCV/sVunnxcfDC9T9Ylo5J2sNj7o
 XBC8+pCAHHXWnAlN3jz3iaRNlvsoAuKBOo53ss1kH2yefdrg+75ebNjD2vGmaZWKIh
 s7zKa335StY94KVnURXScU/8IrUGt4Sh4hsuvXo3gW3i7mYmxCtQG38JQgnid1TL7n
 RXFC7f4Czf7Rc4x0ZcOeU3n7PIa7DLr/hm4mszsB5yfdTVxI8AJ/PfF6r7K2Mbq8bR
 Uc6Vy8BrQoTPA0jD1MFRdSBoUQZQ1PYXwS6NwoB/FLcEWiztS4+L7sa9j3aW6tBmuK
 Bp77XWXmbOvpA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=c0WQ6kaU
Subject: Re: [Intel-wired-lan] [PATCH net-next] i40e: Remove unused function
 declarations
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
Cc: intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 04, 2023 at 08:55:25PM +0800, Yue Haibing wrote:
> Commit f62b5060d670 ("i40e: fix mac address checking") left behind
> i40e_validate_mac_addr() declaration.
> Also the other declarations are declared but never implemented in
> commit 56a62fc86895 ("i40e: init code and hardware support").

Hi Yue Haibing,

It's not so important, but the last statement is not strictly true -
the named patch did implement i40e_validate_mac_addr()

If you do update the patch, I think it would be useful
to list "the other declarations" in the patch description.

> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>

The comments above notwithstanding,

Reviewed-by: Simon Horman <horms@kernel.org>

> ---
>  .../net/ethernet/intel/i40e/i40e_prototype.h    | 17 -----------------
>  1 file changed, 17 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> index fe845987d99a..3eeee224f1fb 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> +++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
> @@ -18,7 +18,6 @@
>  /* adminq functions */
>  int i40e_init_adminq(struct i40e_hw *hw);
>  void i40e_shutdown_adminq(struct i40e_hw *hw);
> -void i40e_adminq_init_ring_data(struct i40e_hw *hw);
>  int i40e_clean_arq_element(struct i40e_hw *hw,
>  			   struct i40e_arq_event_info *e,
>  			   u16 *events_pending);
> @@ -51,7 +50,6 @@ i40e_asq_send_command_atomic_v2(struct i40e_hw *hw,
>  void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
>  		   void *desc, void *buffer, u16 buf_len);
>  
> -void i40e_idle_aq(struct i40e_hw *hw);
>  bool i40e_check_asq_alive(struct i40e_hw *hw);
>  int i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
>  const char *i40e_aq_str(struct i40e_hw *hw, enum i40e_admin_queue_err aq_err);
> @@ -117,9 +115,6 @@ int i40e_aq_set_link_restart_an(struct i40e_hw *hw,
>  int i40e_aq_get_link_info(struct i40e_hw *hw,
>  			  bool enable_lse, struct i40e_link_status *link,
>  			  struct i40e_asq_cmd_details *cmd_details);
> -int i40e_aq_set_local_advt_reg(struct i40e_hw *hw,
> -			       u64 advt_reg,
> -			       struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_send_driver_version(struct i40e_hw *hw,
>  				struct i40e_driver_version *dv,
>  				struct i40e_asq_cmd_details *cmd_details);
> @@ -269,9 +264,6 @@ int i40e_aq_config_vsi_bw_limit(struct i40e_hw *hw,
>  				struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_dcb_updated(struct i40e_hw *hw,
>  			struct i40e_asq_cmd_details *cmd_details);
> -int i40e_aq_config_switch_comp_bw_limit(struct i40e_hw *hw,
> -					u16 seid, u16 credit, u8 max_bw,
> -					struct i40e_asq_cmd_details *cmd_details);
>  int i40e_aq_config_vsi_tc_bw(struct i40e_hw *hw, u16 seid,
>  			     struct i40e_aqc_configure_vsi_tc_bw_data *bw_data,
>  			     struct i40e_asq_cmd_details *cmd_details);
> @@ -350,7 +342,6 @@ i40e_aq_configure_partition_bw(struct i40e_hw *hw,
>  int i40e_get_port_mac_addr(struct i40e_hw *hw, u8 *mac_addr);
>  int i40e_read_pba_string(struct i40e_hw *hw, u8 *pba_num,
>  			 u32 pba_num_size);
> -int i40e_validate_mac_addr(u8 *mac_addr);
>  void i40e_pre_tx_queue_cfg(struct i40e_hw *hw, u32 queue, bool enable);
>  /* prototype for functions used for NVM access */
>  int i40e_init_nvm(struct i40e_hw *hw);
> @@ -425,14 +416,6 @@ i40e_virtchnl_link_speed(enum i40e_aq_link_speed link_speed)
>  /* prototype for functions used for SW locks */
>  
>  /* i40e_common for VF drivers*/
> -void i40e_vf_parse_hw_config(struct i40e_hw *hw,
> -			     struct virtchnl_vf_resource *msg);
> -int i40e_vf_reset(struct i40e_hw *hw);
> -int i40e_aq_send_msg_to_pf(struct i40e_hw *hw,
> -			   enum virtchnl_ops v_opcode,
> -			   int v_retval,
> -			   u8 *msg, u16 msglen,
> -			   struct i40e_asq_cmd_details *cmd_details);
>  int i40e_set_filter_control(struct i40e_hw *hw,
>  			    struct i40e_filter_control_settings *settings);
>  int i40e_aq_add_rem_control_packet_filter(struct i40e_hw *hw,
> -- 
> 2.34.1
> 
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
