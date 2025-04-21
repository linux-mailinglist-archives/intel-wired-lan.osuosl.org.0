Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62039A952B2
	for <lists+intel-wired-lan@lfdr.de>; Mon, 21 Apr 2025 16:25:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C64488117E;
	Mon, 21 Apr 2025 14:25:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GNIDZnlZInqL; Mon, 21 Apr 2025 14:25:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1EA7180570
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745245519;
	bh=DpWq3/QL1cf8RxAmIbOvUHyAYWGH8w2AEInswxgwPVg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=wBjJejp2RltRcdtU8tsu1MDyA6RUqxcfKKGBeZwjj5Uy/XtFutlVSn6ZolbiojbWj
	 yu5C1iGZolP6SiU+WZrMYDq7p8PoCaLwtHceeg7SICCYviFJFe8TgfVUrX8y3Q78Rs
	 AeELa5qXExsVVWvKbu4hQ7XtP6lyczgwgsmyQr2n7mZuu4nUb7xWR5MglUf9fyDf5A
	 FSIuqhaa0kYYb87Y8S/uMAhbcDuZhoNr2vxppqLyfb0yLXe2XZR4aydZELjLrXOYyM
	 0v6MBPwKfTAF3NL36RMYeYQMZIO7CJ3fitDAq1MoIJ3E7aRtJ8+ezIK7E8HyG9cFtr
	 GSSVn0jy+yC3A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1EA7180570;
	Mon, 21 Apr 2025 14:25:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id E4E6E1C0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:25:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E1EBA40573
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:25:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CCN7fGXfjmja for <intel-wired-lan@lists.osuosl.org>;
 Mon, 21 Apr 2025 14:25:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C7DE40BAF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C7DE40BAF
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C7DE40BAF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 21 Apr 2025 14:25:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 238CB61135;
 Mon, 21 Apr 2025 14:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFAA3C4CEE4;
 Mon, 21 Apr 2025 14:25:07 +0000 (UTC)
Date: Mon, 21 Apr 2025 15:25:05 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>, Mustafa Ismail <mustafa.ismail@intel.com>,
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
 Wenjun Wu <wenjun1.wu@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Michal Kubiak <michal.kubiak@intel.com>
Message-ID: <20250421142505.GJ2789685@horms.kernel.org>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-9-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250408124816.11584-9-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745245513;
 bh=FdYxttsgHP90vBH9XqpB/T/Z5nUrxOeI5C8DCpAL5Rk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LRzmWdwIH8tEjTP8WI6UVJZx8ATwrBZU+0OmWQjvIgfFBVgUeoE8JFD6DXvru4ZdR
 eiz8RRhtXIGUCIlKQhI3fXZZbflZO6aPncJWcsM/XT+dzzDWdBVDu9YEPILXzl1JxL
 Vv21nRhJg70H9sfDT2sUxBb5QKurq8jzofOYJp1sJHpgJTGbP9VveQHCK9kNXKKXTc
 HXhRro33364j/tDRUGTlLlUIuAUWkGFJOiaX6HbyJarA1ejRJErt0XU7MZZZTBONlW
 f+36NBJcVjq3iTl0cSlh6xjLRis4Y5ThaOabKH6W01ZyNXvA+3trDmFm5luSrPvdXd
 9GBtgtYD0m3qA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LRzmWdwI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 08/14] idpf: refactor idpf to
 use libeth controlq and Xn APIs
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

On Tue, Apr 08, 2025 at 02:47:54PM +0200, Larysa Zaremba wrote:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Support to initialize and configure controlq, Xn manager,
> MMIO and reset APIs was introduced in libeth. As part of it,
> most of the existing controlq structures are renamed and
> modified. Use those APIs in idpf and make all the necessary changes.
> 
> Previously for the send and receive virtchnl messages, there
> used to be a memcpy involved in controlq code to copy the buffer
> info passed by the send function into the controlq specific
> buffers. There was no restriction to use automatic memory
> in that case. The new implementation in libeth removed copying
> of the send buffer info and introduced DMA mapping of the
> send buffer itself. To accommodate it, use dynamic memory for
> the send buffers. In case of receive, idpf receives a page pool
> buffer allocated by the libeth and care should be taken to
> release it after use in the idpf.
> 
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.
> 
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf.h b/drivers/net/ethernet/intel/idpf/idpf.h

...

> @@ -488,7 +486,10 @@ struct idpf_vc_xn_manager;
>   * @state: Init state machine
>   * @flags: See enum idpf_flags
>   * @reset_reg: See struct idpf_reset_reg
> - * @hw: Device access data
> + * @ctlq_ctx: controlq context
> + * @asq: Send control queue info
> + * @arq: Receive control queue info
> + * @xn_init_params: Xn transaction manager parameters
>   * @num_req_msix: Requested number of MSIX vectors
>   * @num_avail_msix: Available number of MSIX vectors
>   * @num_msix_entries: Number of entries in MSIX table
> @@ -540,7 +541,10 @@ struct idpf_adapter {
>  	enum idpf_state state;
>  	DECLARE_BITMAP(flags, IDPF_FLAGS_NBITS);
>  	struct idpf_reset_reg reset_reg;
> -	struct idpf_hw hw;
> +	struct libeth_ctlq_ctx ctlq_ctx;
> +	struct libeth_ctlq_info *asq;
> +	struct libeth_ctlq_info *arq;
> +	struct libeth_ctlq_xn_init_params xn_init_params;
>  	u16 num_req_msix;
>  	u16 num_avail_msix;
>  	u16 num_msix_entries;
> @@ -573,7 +577,6 @@ struct idpf_adapter {
>  	struct delayed_work stats_task;
>  	struct workqueue_struct *stats_wq;
>  	struct virtchnl2_get_capabilities caps;
> -	struct idpf_vc_xn_manager *vcxn_mngr;

nit: Please also drop the vcxn_mngr from the Kernel doc for struct idpf_adapter.

>  
>  	struct idpf_dev_ops dev_ops;
>  	int num_vfs;
