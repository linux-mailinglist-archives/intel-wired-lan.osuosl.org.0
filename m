Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E5479CDEA6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 13:51:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CEC540577;
	Fri, 15 Nov 2024 12:51:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id d-SxmkWGexSe; Fri, 15 Nov 2024 12:51:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FA47404EB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731675080;
	bh=5irCvuuzppk9pUgtyLu4aNXPznq1MhFOgVczSfkRE7o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AwblRX+Za372NJkJl/XjRPHcNgoW5knXX/6Aw2+f21wHsFrK11PkArHXwegI0oz0N
	 5v7aViTVUksV1k6plGM/yCp8o9iPAnPKMiXdUvlojBY+eJBUjLKJ+1A6XuynQGOoCX
	 9W3toOdA7jXZbOgoBG/bK11o8LCLkeK7Ej1yo3lyLP+To+bEIvNaZGZbJdPrk0dGUx
	 vqjHiE3n8+UNrmMEg4LrfWbtwlH7zZK+V32e2PHRljyCsFAGWvCTw9U7wEz3AdaBKk
	 wskCK7wJVS42nCLTWdSAlBKKftRyNw/RBB7jrgqSgIGye6vlLUSFwjg45lwZ5B6xxQ
	 4uJT9j8u+BOSw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3FA47404EB;
	Fri, 15 Nov 2024 12:51:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 39C701EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:51:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 22B1E40132
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:51:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BQDJGHToXLtu for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 12:51:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 35F10400FB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35F10400FB
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 35F10400FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:51:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id AE6865C62AA;
 Fri, 15 Nov 2024 12:50:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52428C4CECF;
 Fri, 15 Nov 2024 12:51:14 +0000 (UTC)
Date: Fri, 15 Nov 2024 12:51:12 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20241115125112.GP1062410@kernel.org>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-5-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113154616.2493297-5-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731675075;
 bh=lSEI3t4D6CYF1nVrPsQ4X7kyHzEljSoE58GvXffqcug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HLp2kVBuO2Z41k26kjMddkl/mEbunJV7ryEjzkB89zt3px+i3oSYIgsJ6GvqvO4S9
 /njaEOf0SggN4Bnt4xhgK3cuZ+VvFu3COoyJFtNPaGNil/YOi1zkWTjMpbHmSnfcWG
 HvnMCNaeA9L5tV6fUokJCyHHMpvfVuYrm/U3WC/EjLIuiUvLBElaSNJ1o3hsy8Ayc7
 qjnmrQ56IDDBtoVOMs+OuVRxy5nWISoktRkfnE3ZDfq2Re9Ga97BcLzZTIawdLh/Ih
 rM27vaoVEv1xsIp5jQDEtyEI1yQmK6Z2/DIrR8ztP2IlhuwZVb4yMS83GlR2/I71zF
 e3PrVT3lELPMQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HLp2kVBu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 04/10] idpf: negotiate PTP
 capabilies and get PTP clock
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

On Wed, Nov 13, 2024 at 04:46:14PM +0100, Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl command. Add get
> capabilities function, direct access to read the PTP clock time and
> direct access to read the cross timestamp - system time and PTP clock
> time. Set initial PTP capabilities exposed to the stack.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h

...

>  /**
>   * struct idpf_ptp - PTP parameters
>   * @info: structure defining PTP hardware capabilities
>   * @clock: pointer to registered PTP clock device
>   * @adapter: back pointer to the adapter
> + * @cmd: HW specific command masks
> + * @dev_clk_regs: the set of registers to access the device clock
> + * @caps: PTP capabilities negotiated with the Control Plane
> + * @get_dev_clk_time_access: access type for getting the device clock time
> + * @get_cross_tstamp_access: access type for the cross timestamping
>   */
>  struct idpf_ptp {
>  	struct ptp_clock_info info;
>  	struct ptp_clock *clock;
>  	struct idpf_adapter *adapter;
> +	struct idpf_ptp_cmd cmd;
> +	struct idpf_ptp_dev_clk_regs dev_clk_regs;
> +	u32 caps;
> +	enum idpf_ptp_access get_dev_clk_time_access:16;
> +	enum idpf_ptp_access get_cross_tstamp_access:16;
>  };
>  
> +/**
> + * idpf_ptp_info_to_adapter - get driver adapter struct from ptp_clock_info
> + * @info: pointer to ptp_clock_info struct

Please in include a "Return:" section, as you have done elsewhere,
to document the return value of this function.

Flagged by ./scripts/kernel-doc -none -Wall

> + */
> +static inline struct idpf_adapter *
> +idpf_ptp_info_to_adapter(const struct ptp_clock_info *info)
> +{
> +	const struct idpf_ptp *ptp = container_of_const(info, struct idpf_ptp,
> +							info);
> +	return ptp->adapter;
> +}
> +
>  #if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
>  int idpf_ptp_init(struct idpf_adapter *adapter);
>  void idpf_ptp_release(struct idpf_adapter *adapter);
> +int idpf_ptp_get_caps(struct idpf_adapter *adapter);
> +void idpf_ptp_get_features_access(const struct idpf_adapter *adapter);
>  #else /* CONFIG_PTP_1588_CLOCK */
>  static inline int idpf_ptp_init(struct idpf_adapter *adpater)
>  {

...
