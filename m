Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 948319CDE5C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Nov 2024 13:38:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B15F160AF3;
	Fri, 15 Nov 2024 12:38:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eck_XVgxXRoR; Fri, 15 Nov 2024 12:38:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 06F7260B16
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1731674306;
	bh=S7qgfrRLINtmDz7DwpEPIMAyVu4yHld0Yj99jSXZo6c=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=oTtp62lsbKZ7xicg8gom/9GrjEjjvTgCWDYqO4O5Lp/DFI6zFWVjfHIw7I0qj5Sra
	 PwH2niDikDsIJnOR4nvce8FrdLH9TQHxt85knAL58IBuszBQ/NQflc9Y7mBV7JRUnf
	 KKd7RWsqSoPr1PEBkIHc8FmQnL70CH5DpzM18p3jQL1wZ3yrxzj8SsGsfoWcb5J2+P
	 itj+0qij3iCg/csbceeW9ZDkQDgL+A2Ze48Xj5qcm5LPDdh6SBlZ1rOwziM5reLkbd
	 GTg9EJWzjo942svvRJDNZ39FrAcZvUr4/KVcdQb6alu73OITlXkc7PghtnFEQLiDrO
	 qa099ljzWJHyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 06F7260B16;
	Fri, 15 Nov 2024 12:38:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7BEDE27EB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:38:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5C06D40188
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:38:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8TrGKsJmHX02 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Nov 2024 12:38:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7E0A540177
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E0A540177
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E0A540177
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Nov 2024 12:38:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 265615C569D;
 Fri, 15 Nov 2024 12:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF5E4C4CECF;
 Fri, 15 Nov 2024 12:38:20 +0000 (UTC)
Date: Fri, 15 Nov 2024 12:38:18 +0000
From: Simon Horman <horms@kernel.org>
To: Milena Olech <milena.olech@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <20241115123818.GM1062410@kernel.org>
References: <20241113154616.2493297-1-milena.olech@intel.com>
 <20241113154616.2493297-2-milena.olech@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241113154616.2493297-2-milena.olech@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1731674302;
 bh=wF9ZmkatT4npVqnDubQ5KfN4GgDfZfCVqUvTI3bcGlI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hQ9uF404Rb8Fe30AtvBpJe7uvw0z8coYGXcY38WXEKq0/eGiOARc953oLR3/8efZJ
 XcI/BNaKhMSuK8FMO1zJXlzny7p9QSyQAe97b4DESuAiPamlBqQ5adnKwPu5TSBeAm
 3VrDJbyPDzdS8k1GQZ57TfUJPaBTals0e5xIRX2xVFDlfq+8yM9xE5TZ4IlAly4myV
 l6Kc7xA3l8s0o3NeFwSRKkCgR3ZrXile4sA0cC6qUNqrKJQshdZk2pK6BKChtbJ2ot
 O1DpRzvuATqR4BqaLZ8NIwa6xom+fLLy6hmlH0fEQD1VlETF21FNCMYbXi+cCSFB+r
 BD7l9G3fBrH2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=hQ9uF404
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 01/10] idpf: initial PTP
 support
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

On Wed, Nov 13, 2024 at 04:46:09PM +0100, Milena Olech wrote:
> PTP feature is supported if the VIRTCHNL2_CAP_PTP is negotiated during the
> capabilities recognition. Initial PTP support includes PTP initialization
> and registration of the clock.
> 
> Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/idpf/idpf_ptp.h b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> new file mode 100644
> index 000000000000..cb19988ca60f
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/idpf/idpf_ptp.h
> @@ -0,0 +1,32 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/* Copyright (C) 2024 Intel Corporation */
> +
> +#ifndef _IDPF_PTP_H
> +#define _IDPF_PTP_H
> +
> +#include <linux/ptp_clock_kernel.h>
> +
> +/**
> + * struct idpf_ptp - PTP parameters
> + * @info: structure defining PTP hardware capabilities
> + * @clock: pointer to registered PTP clock device
> + * @adapter: back pointer to the adapter
> + */
> +struct idpf_ptp {
> +	struct ptp_clock_info info;
> +	struct ptp_clock *clock;
> +	struct idpf_adapter *adapter;
> +};
> +
> +#if IS_ENABLED(CONFIG_PTP_1588_CLOCK)
> +int idpf_ptp_init(struct idpf_adapter *adapter);
> +void idpf_ptp_release(struct idpf_adapter *adapter);
> +#else /* CONFIG_PTP_1588_CLOCK */
> +static inline int idpf_ptp_init(struct idpf_adapter *adpater)

nit: adapter

> +{
> +	return 0;
> +}
> +
> +static inline void idpf_ptp_release(struct idpf_adapter *adpater) { }

Ditto

> +#endif /* CONFIG_PTP_1588_CLOCK */
> +#endif /* _IDPF_PTP_H */

...
