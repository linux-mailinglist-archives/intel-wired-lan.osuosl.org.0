Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5428573854E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 15:35:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E955740C22;
	Wed, 21 Jun 2023 13:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E955740C22
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687354519;
	bh=NxAKa+yvBGTTVKuzRHAS43UVcyz7h2/iZcoCcx7zN00=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hfeRRYO9DbQSPy8x83ea075jVuxuheLuMzVb3PPwWaGv9/wPunHyNCgLM1G2uZXts
	 WnnCb4FgstgVxfupNaA9WDkbFcb9nch5ZBEoDVLPIKo1DICRcVBiVqcrYCtGS1nwGN
	 g268p3Tv09uLG9PiBQK9qsY9E+efGTsDBs+UzL9xcu5rSM+r3YdxJ4vZPHZZeqVb7O
	 7BKuZc+zcJYHESzaPd2i9sfdBr0k7JY+TcaOHRaDd4mGOQccFXlMcqmr6fpR24tPFb
	 z7E3X5QExilO3p4M3dG/qVW4U7N6TJMlnTrEHtMxq+0NxTY3zNg26qL6fiJvB+GRfu
	 Ms7kE0p9yAX+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gKTDZ9dguX-g; Wed, 21 Jun 2023 13:35:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9BCAF40124;
	Wed, 21 Jun 2023 13:35:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9BCAF40124
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BF2E21BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:35:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9790782C5E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:35:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9790782C5E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IPZHSNP3kPZL for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 13:35:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA63F82BC3
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com
 [IPv6:2607:f8b0:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA63F82BC3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:35:11 +0000 (UTC)
Received: by mail-pf1-x42f.google.com with SMTP id
 d2e1a72fcca58-666e6541c98so4860830b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 06:35:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687354511; x=1689946511;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=CuyyAi8V6gigZeXErGxMHryC1S1ME144JC1C6GyuQQ4=;
 b=CASnw2Awl1rZamQZUzOe5OGUEjcWO5elB7kfsbbGZKsn1qsYDTaJY7b8uBwpapBGJ0
 3C9L/gLpgcyk7nZyfEW07Ia/ycxZ1csf7EhlgUueXU67ZAbZ1obDWucvO5zQM5jbmpXn
 U22tFkJQvrac6W0yprCcRdZJWOZEh/IoTpDjFSSMoLEZIKVuL3XjBa0yWIg5wXO7jxtj
 L3nk+mZUW9noS5l5vV/u5GAMHN8SlFLwcsd1eHRAGwDOgAvyqVOpwOenzyHGC/kLhDUm
 MZHkMfSPoXNhGTtikGDYxA/WwIIYsZ2fCZOH/KllayIbLhe4kk6dBlKETtk3L0YtQ14j
 O1oQ==
X-Gm-Message-State: AC+VfDxchduMX6Qyz37cD4E2Mm25Gbgojm3PE3GUIqueroF3x1P7G7CZ
 tAgMqPaLx8z+C270oELqlNwvMA==
X-Google-Smtp-Source: ACHHUZ6sbYJSc0ArvAw2TgOqwdQmSFrJ8IzV48C3B5HSvKx77l9uY7Dyo2xudSgxnKnv/KqstImV9g==
X-Received: by 2002:a05:6a21:6d89:b0:123:21f9:6248 with SMTP id
 wl9-20020a056a216d8900b0012321f96248mr2286264pzb.44.1687354510800; 
 Wed, 21 Jun 2023 06:35:10 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.25.194]) by smtp.gmail.com with ESMTPSA id
 l17-20020a62be11000000b0063d24fcc2b7sm2946611pff.1.2023.06.21.06.35.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 06:35:10 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1qBxzI-007cGV-FA;
 Wed, 21 Jun 2023 10:35:08 -0300
Date: Wed, 21 Jun 2023 10:35:08 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Lingyu Liu <lingyu.liu@intel.com>
Message-ID: <ZJL8jCIrVwmJ1eDl@ziepe.ca>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-5-lingyu.liu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621091112.44945-5-lingyu.liu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ziepe.ca; s=google; t=1687354511; x=1689946511;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=CuyyAi8V6gigZeXErGxMHryC1S1ME144JC1C6GyuQQ4=;
 b=gDlPrkSQuYi2e2ijXm38ywxS8V0u4DgiKRRFq5fWD4u6KerU3lLkDGsi5HRWORNglA
 nZjAwhgz9uxWBs/6lq5bZWFAVGhL1WGtmRjN5NsuCXoFH/ajKdrqjcc0NVnOQOE8IHCP
 3tz9jVsMc8kE/SE3/pVY9qNaiWPgGo5imkMoULFZkHi6SOtv0mLQuG3G8ZP9LOASu7hk
 U5EIETG1hYNW1qPyi/6XACR3/ZrZGCLePrGyazePxsxmpHcov99x42vuT6J4Chzr505Q
 qtHNj8NNGxP2vZ/FgPM0VAxBwqlv4kpYZe4YRh6v9POyZzWLRiuzGc6MXt3H2P9Nt6cZ
 GnjA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca
 header.a=rsa-sha256 header.s=google header.b=gDlPrkSQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 04/15] ice: add migration
 init field and helper functions
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
Cc: kevin.tian@intel.com, yi.l.liu@intel.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 21, 2023 at 09:11:01AM +0000, Lingyu Liu wrote:
> Adds a function to get ice VF device from pci device.
> Adds a field in VF structure to indicate migration init state,
> and functions to init and uninit migration.
> 
> This will be used by ice_vfio_pci driver introduced in coming patches
> from this series.
> 
> Signed-off-by: Lingyu Liu <lingyu.liu@intel.com>
> Signed-off-by: Yahui Cao <yahui.cao@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |  1 +
>  drivers/net/ethernet/intel/ice/ice.h          |  1 +
>  .../net/ethernet/intel/ice/ice_migration.c    | 68 +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  7 ++
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  1 +
>  include/linux/net/intel/ice_migration.h       | 26 +++++++
>  6 files changed, 104 insertions(+)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_migration.c
>  create mode 100644 include/linux/net/intel/ice_migration.h
> 
> diff --git a/drivers/net/ethernet/intel/ice/Makefile b/drivers/net/ethernet/intel/ice/Makefile
> index 960277d78e09..915b70588f79 100644
> --- a/drivers/net/ethernet/intel/ice/Makefile
> +++ b/drivers/net/ethernet/intel/ice/Makefile
> @@ -49,3 +49,4 @@ ice-$(CONFIG_RFS_ACCEL) += ice_arfs.o
>  ice-$(CONFIG_XDP_SOCKETS) += ice_xsk.o
>  ice-$(CONFIG_ICE_SWITCHDEV) += ice_eswitch.o ice_eswitch_br.o
>  ice-$(CONFIG_GNSS) += ice_gnss.o
> +ice-$(CONFIG_ICE_VFIO_PCI) += ice_migration.o
> diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
> index 9109006336f0..ec7f27d93924 100644
> --- a/drivers/net/ethernet/intel/ice/ice.h
> +++ b/drivers/net/ethernet/intel/ice/ice.h
> @@ -55,6 +55,7 @@
>  #include <net/vxlan.h>
>  #include <net/gtp.h>
>  #include <linux/ppp_defs.h>
> +#include <linux/net/intel/ice_migration.h>
>  #include "ice_devids.h"
>  #include "ice_type.h"
>  #include "ice_txrx.h"
> diff --git a/drivers/net/ethernet/intel/ice/ice_migration.c b/drivers/net/ethernet/intel/ice/ice_migration.c
> new file mode 100644
> index 000000000000..1aadb8577a41
> --- /dev/null
> +++ b/drivers/net/ethernet/intel/ice/ice_migration.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/* Copyright (C) 2018-2023 Intel Corporation */
> +
> +#include "ice.h"
> +
> +/**
> + * ice_migration_get_vf - Get ice VF structure pointer by pdev
> + * @vf_pdev: pointer to ice vfio pci VF pdev structure
> + *
> + * Return nonzero for success, NULL for failure.
> + *
> + * ice_put_vf() should be called after finishing accessing VF
> + */
> +void *ice_migration_get_vf(struct pci_dev *vf_pdev)
> +{
> +	struct pci_dev *pf_pdev = vf_pdev->physfn;
> +	int vf_id = pci_iov_vf_id(vf_pdev);
> +	struct ice_pf *pf;
> +
> +	if (!pf_pdev || vf_id < 0)
> +		return NULL;
> +
> +	pf = pci_get_drvdata(pf_pdev);
> +	return ice_get_vf_by_id(pf, vf_id);
> +}
> +EXPORT_SYMBOL(ice_migration_get_vf);

This doesn't look right, you shouldn't need functions like this.

The VF knows itself, and it goes back to the PF safely from the VFIO
code. You should not be doing things like 'vf_pdev->physfn'

Loook at how the other drivers are structured.

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
