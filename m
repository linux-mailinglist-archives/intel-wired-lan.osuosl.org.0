Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E76B89CDE7F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 13:43:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0E43240398;
	Fri, 15 Nov 2024 12:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id skI9i8giOs_G; Fri, 15 Nov 2024 12:43:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2641B4030D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731674585;
	bh=U41T4AVDI70Y4hbM81wwGvdENZJUx4ErgZhnGut/xFE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=snGO2Qplt7hUbSDD5U16/tl73i/xxAh8R9DGXrKzu9ljwsjwgY3ES2tIZipQX5cfB
	 Qh05cc1wY0I8nWL/ZNkRbxVTHMjJnhJeonQXb6qqZuFiHwkkI+wG3AIASh8VP9HYSg
	 Wsux85PdAUJ8s7hUNZXC+14m2jjcbq3/hDpVGSz82+tP3V8mWVnarsieX4othIM+F7
	 RsIlyD+TCnfLJgcx5rwIzOntvPhFQTgXT7BOCQRqs+UFfyaJrbyMQzfGTxK+H2hkdf
	 lvciZdVV49Yg0/0A4GZc2cXssxhIju3yPr1olH/wPG5vXARok2IsLy3JQo/4d3A8mo
	 gTMM2rvv79D/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2641B4030D;
	Fri, 15 Nov 2024 12:43:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id E930E1EB8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:43:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9B2660B62
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:43:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SgpOSLddG3E2 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 12:43:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 200CE60B54
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 200CE60B54
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 200CE60B54
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:43:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A406DA42709;
 Fri, 15 Nov 2024 12:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 021F9C4CED4;
 Fri, 15 Nov 2024 12:42:58 +0000 (UTC)
Date: Fri, 15 Nov 2024 12:42:56 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20241115124256.GN1062410@kernel.org>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-3-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113154616.2493297-3-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731674580;
 bh=cjPI+Yb7+CQvXGS2BSpGx8kfZLNhaUmBB0BYf0BuI9U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QtkoF3Iu6eKIc4zwwIztmeXdslDZ+hEDEXcUjXKi/47iWo5ooWSUrfL4mzIMG76R2
 QvtYxtrWnAoWA4exKBCJFufMohKgeruF1E2+RovCkTTuo8idNDiCp/LxTRFpWMk1tH
 mGydlIBrQZ0E769K1hcMwWpfBbYK6uH83WEsLeaCslb4qVGFeTFnQlovG9GUwf3m4g
 1rFr3ti/S2/ZYr5lUQjS3RV1HfQlXC6IQVS9AAukns2T0vyr8Qz7nHDT/OoNUaA1cP
 ocAqDIoEoVdb+O0fUzdO5cFc4B2HRkWS2IuLkiNq7R8Q/WTicaitn7Ut2QFpYKFngm
 pEaRbE4P6uvXg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=QtkoF3Iu
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 02/10] virtchnl: add PTP
 virtchnl definitions
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

On Wed, Nov 13, 2024 at 04:46:11PM +0100, Milena Olech wrote:
> PTP capabilities are negotiated using virtchnl commands. There are two
> available modes of the PTP support: direct and mailbox. When the direct
> access to PTP resources is negotiated, virtchnl messages returns a set
> of registers that allow read/write directly. When the mailbox access to
> PTP resources is negotiated, virtchnl messages are used to access
> PTP clock and to read the timestamp values.
> 
> Virtchnl API covers both modes and exposes a set of PTP capabilities.
> 
> Using virtchnl API, the driver recognizes also HW abilities - maximum
> adjustment of the clock and the basic increment value.
> 
> Additionally, API allows to configure the secondary mailbox, dedicated
> exclusively for PTP purposes.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> ---
>  drivers/net/ethernet/intel/idpf/virtchnl2.h | 302 ++++++++++++++++++++
>  1 file changed, 302 insertions(+)
> 
> diff --git a/drivers/net/ethernet/intel/idpf/virtchnl2.h b/drivers/net/ethernet/intel/idpf/virtchnl2.h

...

> +/**
> + * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
> + *					  VIRTCHNL2_OP_PTP_SET_DEV_CLK_TIME.
> + * @dev_time_ns: Device time value expressed in nanoseconds to set
> + *
> + * PF/VF sends this message to set the time of the main timer.
> + */
> +struct virtchnl2_ptp_set_dev_clk_time {
> +	__le64 dev_time_ns;
> +};
> +VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_set_dev_clk_time);
> +
> +/**
> + * struct virtchnl2_ptp_set_dev_clk_time: Associated with message
> + *					  VIRTCHNL2_OP_PTP_ADJ_DEV_CLK_FINE.

nit: struct virtchnl2_ptp_adj_dev_clk_fine:

Flagged by ./scripts/kernel-doc -none

> + * @incval: Source timer increment value per clock cycle
> + *
> + * PF/VF sends this message to adjust the frequency of the main timer by the
> + * indicated scaled ppm.
> + */
> +struct virtchnl2_ptp_adj_dev_clk_fine {
> +	__le64 incval;
> +};
> +VIRTCHNL2_CHECK_STRUCT_LEN(8, virtchnl2_ptp_adj_dev_clk_fine);

...
