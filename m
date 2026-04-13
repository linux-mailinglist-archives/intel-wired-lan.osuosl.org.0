Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJpHNcpg3WlpdQkAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 23:31:54 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B89273F38AF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2026 23:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 69DAF840F7;
	Mon, 13 Apr 2026 21:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x_ko14-6pQrs; Mon, 13 Apr 2026 21:31:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D1B65840E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776115911;
	bh=zm1KPSFYhD0z+7uHzo71WIFaLNZKaTdbV2flW+Oe/ZM=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lrIY0/+g8kAz+j4RDm6knqUGzKv/Yixn0+avCT9pXAsLfjZWJxZegRAFBjp5DV3qg
	 T6u/Jf8ZDHSDFlKENFXio9iWF9UUStPrK5DRIyEA+ibTso30s/y7IpDi8TtBbvPG1P
	 dGxcHI74U/O+U30Wxfr1TH+1kOvHA2H6A2VmiY5zTS90Hc22WcIDngPaKabT+p8zfA
	 2MO1GjT9azBkdtpoIYSIFNmG3bVnWCBNb0zDMIN4PZqjvQ0ORvW+z4ORvPXk4ywyvT
	 RkIPwRgRIrWTT8rtOUYkxtuwFfJjM1XJMoCzYRLOO9J+tSwZ3+NWmoFQx+RBzrLIwS
	 ebnb87MD7HeCw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D1B65840E9;
	Mon, 13 Apr 2026 21:31:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2210E237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 21:31:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2DCA4064F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 21:31:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KbWcb8BGkx7H for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2026 21:31:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 934B4401BB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 934B4401BB
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 934B4401BB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2026 21:31:46 +0000 (UTC)
Received: from [192.168.0.192] (ip5f5af789.dynamic.kabel-deutschland.de
 [95.90.247.137])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 05AB94C2C37F0B;
 Mon, 13 Apr 2026 23:30:53 +0200 (CEST)
Message-ID: <e539632b-9f02-436d-ac77-34e7673d8100@molgen.mpg.de>
Date: Mon, 13 Apr 2026 23:30:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Daniel Zahka <daniel.zahka@gmail.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Nikolay Aleksandrov <razor@blackwall.org>, Eric Dumazet
 <edumazet@google.com>, linux-kernel@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen
 <anthony.l.nguyen@intel.com>, Dave Ertman <david.m.ertman@intel.com>,
 jacob.e.keller@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
References: <20260413191420.3524013-1-poros@redhat.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20260413191420.3524013-1-poros@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: fix infinite recursion
 in ice_cfg_tx_topo via ice_init_dev_hw
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
X-Spamd-Result: default: False [0.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:michal.swiatkowski@linux.intel.com,m:paul.greenwalt@intel.com,m:daniel.zahka@gmail.com,m:przemyslaw.kitszel@intel.com,m:razor@blackwall.org,m:edumazet@google.com,m:linux-kernel@vger.kernel.org,m:aleksandr.loktionov@intel.com,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:david.m.ertman@intel.com,m:jacob.e.keller@intel.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:davem@davemloft.net,m:danielzahka@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DMARC_NA(0.00)[mpg.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mpg.de:email,molgen.mpg.de:mid];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[vger.kernel.org,linux.intel.com,intel.com,gmail.com,blackwall.org,google.com,lunn.ch,kernel.org,redhat.com,davemloft.net,lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pmenzel@molgen.mpg.de,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: B89273F38AF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Dear Petr,


Thank you very much for your patch.

Am 13.04.26 um 21:14 schrieb Petr Oros:
> On certain E810 configurations where firmware supports Tx scheduler
> topology switching (tx_sched_topo_comp_mode_en), ice_cfg_tx_topo()
> may need to apply a new 5-layer or 9-layer topology from the DDP
> package. If the AQ command to set the topology fails (e.g. due to
> invalid DDP data or firmware limitations), the global configuration
> lock must still be cleared via a CORER reset.
> 
> Commit 86aae43f21cf ("ice: don't leave device non-functional if Tx
> scheduler config fails") correctly fixed this by refactoring
> ice_cfg_tx_topo() to always trigger CORER after acquiring the global
> lock and re-initialize hardware via ice_init_hw() afterwards.
> 
> However, commit 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end
> of deinit paths") later moved ice_init_dev_hw() into ice_init_hw(),
> breaking the reinit path introduced by 86aae43f21cf. This creates an
> infinite recursive call chain:
> 
>    ice_init_hw()
>      ice_init_dev_hw()
>        ice_cfg_tx_topo()         # topology change needed
>          ice_deinit_hw()
>          ice_init_hw()           # reinit after CORER
>            ice_init_dev_hw()     # recurse
>              ice_cfg_tx_topo()
>                ...               # stack overflow
> 
> Fix by moving ice_init_dev_hw() back out of ice_init_hw() and calling
> it explicitly from ice_probe() and ice_devlink_reinit_up(). The third
> caller, ice_cfg_tx_topo(), intentionally does not need ice_init_dev_hw()
> during its reinit, it only needs the core HW reinitialization. This
> breaks the recursion cleanly without adding flags or guards.
> 
> The deinit ordering changes from commit 8a37f9e2ff40 ("ice: move
> ice_deinit_dev() to the end of deinit paths") which fixed slow rmmod
> are preserved, only the init-side placement of ice_init_dev_hw() is
> reverted.
> 
> Fixes: 8a37f9e2ff40 ("ice: move ice_deinit_dev() to the end of deinit paths")
> Signed-off-by: Petr Oros <poros@redhat.com>
> ---
>   drivers/net/ethernet/intel/ice/devlink/devlink.c | 2 ++
>   drivers/net/ethernet/intel/ice/ice_common.c      | 2 --
>   drivers/net/ethernet/intel/ice/ice_main.c        | 2 ++
>   3 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> index 6144cee8034d77..641d6e289d5ce6 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
> @@ -1245,6 +1245,8 @@ static int ice_devlink_reinit_up(struct ice_pf *pf)
>   		return err;
>   	}
>   
> +	ice_init_dev_hw(pf);
> +
>   	/* load MSI-X values */
>   	ice_set_min_max_msix(pf);
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
> index ce11fea122d03e..b617a6bff89134 100644
> --- a/drivers/net/ethernet/intel/ice/ice_common.c
> +++ b/drivers/net/ethernet/intel/ice/ice_common.c
> @@ -1126,8 +1126,6 @@ int ice_init_hw(struct ice_hw *hw)
>   	if (status)
>   		goto err_unroll_fltr_mgmt_struct;
>   
> -	ice_init_dev_hw(hw->back);
> -
>   	mutex_init(&hw->tnl_lock);
>   	ice_init_chk_recipe_reuse_support(hw);
>   
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> index e2a5534819d194..a27be29f9bbbfc 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -5314,6 +5314,8 @@ ice_probe(struct pci_dev *pdev, const struct pci_device_id __always_unused *ent)
>   		return err;
>   	}
>   
> +	ice_init_dev_hw(pf);
> +
>   	adapter = ice_adapter_get(pdev);
>   	if (IS_ERR(adapter)) {
>   		err = PTR_ERR(adapter);

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>


Kind regards,

Paul
