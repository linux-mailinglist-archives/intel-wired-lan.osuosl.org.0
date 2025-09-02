Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB21B3FD49
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Sep 2025 13:05:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8A5CE610B4;
	Tue,  2 Sep 2025 11:05:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9aPccq0aOg1V; Tue,  2 Sep 2025 11:05:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9B8D61B94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756811135;
	bh=mEaZqYvixNRgRC3/d54C/oQgrIAXOVmkXhcS/Oi9GCY=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RFY8tMg2Ijn03ZAp5x1F+N3mwHwQc5S92QAal0IrKrl6oPf5XTMkN8RAiej8/uUVc
	 ua3nyTUKahQJkdtmSuxytkCIRhRbmfdJotlchvcR1J3KvoaRJp366CZElVmCl1cbOC
	 Yj6UPMG4jAt040pn0+/qRma3wUJRYyJAqp+Y9U0npGz+rEIemfe+NpeL9c9rDDaR/c
	 KHOMi53btw7EP4aXOZjMa2ZGf4yQ6Y8fRo5L6zvEthdlIuVgi8Wzb6Whr3xAn5T5Tp
	 JhXJPbxzwy8WHk2uA1Nqbol0RcBU+8nFyyQNh2lqWDsuxkp0aJcuGO/y0c1DNo3Vdc
	 A7j5+1XAOVDiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9B8D61B94;
	Tue,  2 Sep 2025 11:05:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FF8AD2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:05:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F32E484129
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:05:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l67u9r6ZrKLL for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Sep 2025 11:05:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2001:41d0:1004:224b::ac; helo=out-172.mta0.migadu.com;
 envelope-from=vadim.fedorenko@linux.dev; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 013A984124
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 013A984124
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com
 [IPv6:2001:41d0:1004:224b::ac])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 013A984124
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Sep 2025 11:05:33 +0000 (UTC)
Message-ID: <2cbee590-1143-4c45-b86f-b4e9cdc0a36e@linux.dev>
Date: Tue, 2 Sep 2025 12:05:24 +0100
MIME-Version: 1.0
To: Anton Nadezhdin <anton.nadezhdin@intel.com>,
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 richardcochran@gmail.com, Milena Olech <milena.olech@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, Willem de Bruijn <willemb@google.com>
References: <20250902105321.5750-1-anton.nadezhdin@intel.com>
 <20250902105321.5750-2-anton.nadezhdin@intel.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
In-Reply-To: <20250902105321.5750-2-anton.nadezhdin@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.dev; s=key1; t=1756811129;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=mEaZqYvixNRgRC3/d54C/oQgrIAXOVmkXhcS/Oi9GCY=;
 b=MRrYwcZN/VvSPb7YVJ7p7LN6fjdZ/yqqLo86yPjp7hdbs3pfMjsdlb9iRePp8FP6CW5AsX
 j4KZP4LkbyQyg09eSRLuF/s1r+w7f9E2u5sYDPt7J74UV1fyeczTI+G3tRMXTkyT3ai1uq
 /7uwr78NbWep8w380F5vNd3GKrICZ38=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linux.dev
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=linux.dev header.i=@linux.dev header.a=rsa-sha256
 header.s=key1 header.b=MRrYwcZN
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 1/2] idpf: add direct access
 to discipline the main timer
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

On 02/09/2025 11:50, Anton Nadezhdin wrote:
> From: Milena Olech <milena.olech@intel.com>
> 
> IDPF allows to access the clock through virtchnl messages, or directly,
> through PCI BAR registers. Registers offsets are negotiated with the
> Control Plane during driver initialization process.
> Add support for direct operations to modify the clock.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Anton Nadezhdin <anton.nadezhdin@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---

[...]

>   static void idpf_ptp_reg_init(const struct idpf_adapter *adapter)
>   {
> -	adapter->ptp->cmd.shtime_enable_mask = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
> -	adapter->ptp->cmd.exec_cmd_mask = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
> +	adapter->ptp->cmd.shtime_enable = PF_GLTSYN_CMD_SYNC_SHTIME_EN_M;
> +	adapter->ptp->cmd.exec_cmd = PF_GLTSYN_CMD_SYNC_EXEC_CMD_M;
>   }

[...]

> +/**
> + * idpf_ptp_set_dev_clk_time_direct- Set the time of the clock directly through
> + *				     BAR registers.
> + * @adapter: Driver specific private structure
> + * @dev_clk_time: Value expressed in nanoseconds to set
> + *
> + * Set the time of the device clock to provided value directly through BAR
> + * registers received during PTP capabilities negotiation.
> + */
> +static void idpf_ptp_set_dev_clk_time_direct(struct idpf_adapter *adapter,
> +					     u64 dev_clk_time)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	u32 dev_clk_time_l, dev_clk_time_h;
> +
> +	dev_clk_time_l = lower_32_bits(dev_clk_time);
> +	dev_clk_time_h = upper_32_bits(dev_clk_time);
> +
> +	writel(dev_clk_time_l, ptp->dev_clk_regs.dev_clk_ns_l);
> +	writel(dev_clk_time_h, ptp->dev_clk_regs.dev_clk_ns_h);
> +
> +	writel(dev_clk_time_l, ptp->dev_clk_regs.phy_clk_ns_l);
> +	writel(dev_clk_time_h, ptp->dev_clk_regs.phy_clk_ns_h);
> +
> +	idpf_ptp_tmr_cmd(adapter, ptp->cmd.init_time);
> +}
> +
[...]

> +/**
> + * idpf_ptp_adj_dev_clk_time_direct - Adjust the time of the clock directly
> + *				      through BAR registers.
> + * @adapter: Driver specific private structure
> + * @delta: Offset in nanoseconds to adjust the time by
> + *
> + * Adjust the time of the clock directly through BAR registers received during
> + * PTP capabilities negotiation.
> + */
> +static void idpf_ptp_adj_dev_clk_time_direct(struct idpf_adapter *adapter,
> +					     s64 delta)
> +{
> +	struct idpf_ptp *ptp = adapter->ptp;
> +	u32 delta_l = (s32)delta;
> +
> +	writel(0, ptp->dev_clk_regs.shadj_l);
> +	writel(delta_l, ptp->dev_clk_regs.shadj_h);
> +
> +	writel(0, ptp->dev_clk_regs.phy_shadj_l);
> +	writel(delta_l, ptp->dev_clk_regs.phy_shadj_h);
> +
> +	idpf_ptp_tmr_cmd(adapter, ptp->cmd.adj_time);
> +}

[...]

> - * struct idpf_ptp_cmd - PTP command masks
> - * @exec_cmd_mask: mask to trigger command execution
> - * @shtime_enable_mask: mask to enable shadow time
> + * struct idpf_ptp_cmd_mask - PTP command masks
> + * @exec_cmd: mask to trigger command execution
> + * @shtime_enable: mask to enable shadow time
> + * @init_time: initialize the device clock timer
> + * @init_incval: initialize increment value
> + * @adj_time: adjust the device clock timer
> + * @read_time: read the device clock timer
>    */
> -struct idpf_ptp_cmd {
> -	u32 exec_cmd_mask;
> -	u32 shtime_enable_mask;
> +struct idpf_ptp_cmd_mask {
> +	u32 exec_cmd;
> +	u32 shtime_enable;
> +	u32 init_time;
> +	u32 init_incval;
> +	u32 adj_time;
> +	u32 read_time;
>   };
>   
>   /* struct idpf_ptp_dev_clk_regs - PTP device registers
> @@ -183,7 +191,7 @@ struct idpf_ptp {
>   	struct idpf_adapter *adapter;
>   	u64 base_incval;
>   	u64 max_adj;
> -	struct idpf_ptp_cmd cmd;
> +	struct idpf_ptp_cmd_mask cmd;
>   	u64 cached_phc_time;
For the field cmd you changed the struct definition to add more commands
but this diff doesn't init values for new fields. At the same time these
new fields are used in several new functions (idpf_ptp_*_direct). We end
up using 0 while issuing the command.

