Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D515A9F7F4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 20:04:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 25A0E811BE;
	Mon, 28 Apr 2025 18:04:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7SkqXz9FmhSm; Mon, 28 Apr 2025 18:04:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3546D81259
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745863442;
	bh=LHc+cTsFOhDMHpEhShZXA/YGyKquaTB1jCTBhB8GFzA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JjXsG5Sk4tvb/kadSHpR0n+hEHtkGSJIr3lFmKTdYQS5UDGevL+dZ9sepk2H1gyhv
	 FbnUXXyNQ8ey/bZi6pZBwg9DFcPiZr+fiNbhPqpb/R1VRHqAcH37sYUCdDw9pRlf6B
	 4FAOkAGIifGSVm/TER4Td7rDGHob5DgLuJmvSBq7yiUlUrfVGY4SkjqP+JSC8dT57P
	 tuT4GBGyM0CpOlFzPAMXXSwv1Pb4emURu1giyMdsZ+vsyYvE3mMZL14Wl+Koz4zV/f
	 n11kVHAk1vkyYufsmV0YYTzgqKl1OymmGFUR3/UY14QhREXZuzfnB6KJRfRs0yrEHI
	 cblYSXx/ZPyVw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3546D81259;
	Mon, 28 Apr 2025 18:04:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 95BEE13D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 18:03:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7941C40F49
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 18:03:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sYTV96WRMszq for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 18:03:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org BFC4F4059D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BFC4F4059D
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BFC4F4059D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 18:03:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 00B8D4A846;
 Mon, 28 Apr 2025 18:03:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1279CC4CEE4;
 Mon, 28 Apr 2025 18:03:51 +0000 (UTC)
Date: Mon, 28 Apr 2025 19:03:49 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <20250428180349.GF3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424113241.10061-9-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745863437;
 bh=3mrunX2wCW3v8UoNSP/xGZpZLdEawxATxyP2Eq6jwvA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RNUJfWspUi7bWN54awdeqtZ35YhV76uh9X5LOJWgO7OCwYtAR0f0BAC3CU/4pecdS
 iYWmQ/wrPlJlb0cl5uRjCHlnne9h/wJQ1w/f39RgtheWim/kLv4ewNmHAHVTRFJS2g
 srScl+O4IyYI4889G9HgSu7bzb1rbhNDyfLenmk1pf9mXzTZML56oCN5hHgyMQ/UJ4
 vLKowqVmECRrzvfBt2GN5IHXTsE5QO87hJPTWPueOquwSezWn33DfWGRAZr+UKEu09
 38Nwb/pM9B8X9BzHdm5eXH33EOUe5HRGpY58Mi9k1xOH10XLSAKd5zvLIhd/oJi/FO
 mKbzhj3vNSz0A==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=RNUJfWsp
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

On Thu, Apr 24, 2025 at 01:32:31PM +0200, Larysa Zaremba wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Support to initialize and configure controlq, Xn manager,
> MMIO and reset APIs was introduced in libie. As part of it,
> most of the existing controlq structures are renamed and
> modified. Use those APIs in idpf and make all the necessary changes.
> 
> Previously for the send and receive virtchnl messages, there
> used to be a memcpy involved in controlq code to copy the buffer
> info passed by the send function into the controlq specific
> buffers. There was no restriction to use automatic memory
> in that case. The new implementation in libie removed copying
> of the send buffer info and introduced DMA mapping of the
> send buffer itself. To accommodate it, use dynamic memory for
> the send buffers. In case of receive, idpf receives a page pool
> buffer allocated by the libie and care should be taken to
> release it after use in the idpf.
> 
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.
> 
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
>  drivers/net/ethernet/intel/idpf/Makefile      |    2 -
>  drivers/net/ethernet/intel/idpf/idpf.h        |   42 +-
>  .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
>  .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
>  .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
>  .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
>  drivers/net/ethernet/intel/idpf/idpf_dev.c    |   91 +-
>  drivers/net/ethernet/intel/idpf/idpf_lib.c    |   49 +-
>  drivers/net/ethernet/intel/idpf/idpf_main.c   |   87 +-
>  drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
>  drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   89 +-
>  .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1622 ++++++-----------
>  .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   89 +-
>  .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  303 ++-
>  16 files changed, 886 insertions(+), 2613 deletions(-)

This patch is rather large.
Is there a way it could be split up into more easily reviewable chunks?

>  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>  delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c b/drivers/net/ethernet/intel/idpf/idpf_virtchnl.c

...

> @@ -2520,15 +2045,18 @@ static void idpf_finalize_ptype_lookup(struct libeth_rx_pt *ptype)
>   */
>  int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>  {
> -	struct virtchnl2_get_ptype_info *get_ptype_info __free(kfree) = NULL;
> -	struct virtchnl2_get_ptype_info *ptype_info __free(kfree) = NULL;
> +	struct libie_ctlq_xn_send_params xn_params = {
> +		.timeout_ms	= IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC,
> +		.chnl_opcode	= VIRTCHNL2_OP_GET_PTYPE_INFO,
> +	};
>  	struct libeth_rx_pt *ptype_lkup __free(kfree) = NULL;
> +	struct virtchnl2_get_ptype_info *get_ptype_info;
>  	int max_ptype, ptypes_recvd = 0, ptype_offset;
>  	struct idpf_adapter *adapter = vport->adapter;
> -	struct idpf_vc_xn_params xn_params = {};
> +	struct virtchnl2_get_ptype_info *ptype_info;
> +	int buf_size = sizeof(*get_ptype_info);
>  	u16 next_ptype_id = 0;
> -	ssize_t reply_sz;
> -	int i, j, k;
> +	int i, j, k, err = 0;
>  
>  	if (vport->rx_ptype_lkup)
>  		return 0;
> @@ -2542,22 +2070,11 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>  	if (!ptype_lkup)
>  		return -ENOMEM;
>  
> -	get_ptype_info = kzalloc(sizeof(*get_ptype_info), GFP_KERNEL);
> -	if (!get_ptype_info)
> -		return -ENOMEM;
> -
> -	ptype_info = kzalloc(IDPF_CTLQ_MAX_BUF_LEN, GFP_KERNEL);
> -	if (!ptype_info)
> -		return -ENOMEM;
> -
> -	xn_params.vc_op = VIRTCHNL2_OP_GET_PTYPE_INFO;
> -	xn_params.send_buf.iov_base = get_ptype_info;
> -	xn_params.send_buf.iov_len = sizeof(*get_ptype_info);
> -	xn_params.recv_buf.iov_base = ptype_info;
> -	xn_params.recv_buf.iov_len = IDPF_CTLQ_MAX_BUF_LEN;
> -	xn_params.timeout_ms = IDPF_VC_XN_DEFAULT_TIMEOUT_MSEC;
> -
>  	while (next_ptype_id < max_ptype) {
> +		get_ptype_info = kzalloc(buf_size, GFP_KERNEL);
> +		if (!get_ptype_info)
> +			return -ENOMEM;
> +
>  		get_ptype_info->start_ptype_id = cpu_to_le16(next_ptype_id);
>  
>  		if ((next_ptype_id + IDPF_RX_MAX_PTYPES_PER_BUF) > max_ptype)
> @@ -2567,13 +2084,15 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>  			get_ptype_info->num_ptypes =
>  				cpu_to_le16(IDPF_RX_MAX_PTYPES_PER_BUF);
>  
> -		reply_sz = idpf_vc_xn_exec(adapter, &xn_params);
> -		if (reply_sz < 0)
> -			return reply_sz;
> +		err = idpf_send_mb_msg(adapter, &xn_params, get_ptype_info,
> +				       buf_size);
> +		if (err)
> +			goto free_tx_buf;
>  
> +		ptype_info = xn_params.recv_mem.iov_base;
>  		ptypes_recvd += le16_to_cpu(ptype_info->num_ptypes);
>  		if (ptypes_recvd > max_ptype)
> -			return -EINVAL;

Should err be set to -EINVAL here?

Flagged by Smatch.

> +			goto free_rx_buf;
>  
>  		next_ptype_id = le16_to_cpu(get_ptype_info->start_ptype_id) +
>  				le16_to_cpu(get_ptype_info->num_ptypes);
> @@ -2589,8 +2108,8 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>  					((u8 *)ptype_info + ptype_offset);
>  
>  			ptype_offset += IDPF_GET_PTYPE_SIZE(ptype);
> -			if (ptype_offset > IDPF_CTLQ_MAX_BUF_LEN)
> -				return -EINVAL;
> +			if (ptype_offset > LIBIE_CTLQ_MAX_BUF_LEN)
> +				goto free_rx_buf;
>  
>  			/* 0xFFFF indicates end of ptypes */
>  			if (le16_to_cpu(ptype->ptype_id_10) ==
> @@ -2720,12 +2239,24 @@ int idpf_send_get_rx_ptype_msg(struct idpf_vport *vport)
>  
>  			idpf_finalize_ptype_lookup(&ptype_lkup[k]);
>  		}
> +		libie_ctlq_release_rx_buf(adapter->arq,
> +					  &xn_params.recv_mem);
> +		if (libie_cp_can_send_onstack(buf_size))
> +			kfree(get_ptype_info);
>  	}
>  
>  out:
>  	vport->rx_ptype_lkup = no_free_ptr(ptype_lkup);
>  
>  	return 0;
> +
> +free_rx_buf:
> +	libie_ctlq_release_rx_buf(adapter->arq, &xn_params.recv_mem);
> +free_tx_buf:
> +	if (libie_cp_can_send_onstack(buf_size))
> +		kfree(get_ptype_info);
> +
> +	return err;
>  }
>  
>  /**

...
