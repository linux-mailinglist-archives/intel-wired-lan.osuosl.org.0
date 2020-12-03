Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3A32CE136
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Dec 2020 22:57:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DA91487B61;
	Thu,  3 Dec 2020 21:57:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pgr7l2qc8iUo; Thu,  3 Dec 2020 21:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 176B887B5C;
	Thu,  3 Dec 2020 21:57:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E7A491BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 21:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D9861204C9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 21:57:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7wvWQdCRD7L for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Dec 2020 21:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 87057204A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Dec 2020 21:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607032630;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=T4qx1azhAjfBX8YupuuibWk5k4ODm/VRqZyBDfaUn4M=;
 b=WRSDAJhhFuwfF7flXeemlqv8cMUu4OECuYmw3tnDeRhadi1yGVGd4iWRutr26QdYTG7LZ1
 hErRafYBanFnNd4h7OlVbqEglKG/1HFNV9tLDNrY9DpxbOBa4ipU08OMAY3LZMGIUtEnPK
 02D4DgVBGUP2lwzu3WFhU16K6lJe5AM=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-474-7gTCXaGlMomoUnMmTlOslA-1; Thu, 03 Dec 2020 16:57:08 -0500
X-MC-Unique: 7gTCXaGlMomoUnMmTlOslA-1
Received: by mail-wm1-f69.google.com with SMTP id z12so1915688wmf.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 03 Dec 2020 13:57:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=T4qx1azhAjfBX8YupuuibWk5k4ODm/VRqZyBDfaUn4M=;
 b=ZLg2i4Qp0dhK3FUv4sYgBJ4pzkSl9+HytNQBv8xP/PnMop5+an6r0xIj3gqGvO1Tli
 pp82NvDDN7WlxUhe9ApDz9Nf/3N6VsKNLxLVFg3gNc15LxQA3pXhKkxd9fxapiQnBF0Y
 G/RkFMOSd5d7xaRpaWZr4Tpnc0oAFi5WvCKEDeSrk2pCpMBvrI5jQ9MhBi7yNcwVPUG6
 4capqoqfRLwqdfi5YEYUW+olTgo8b47rSG5wuCqLIEfgE/DPuR7SFYxHVruSPgT0Q53N
 q/uYBGWv+tHKuEH9GJGKUKG9loeAsR8FnEN5YbcMbs/zmiS6XbB2q7FfvGMZCIp6BJ/n
 HZ/Q==
X-Gm-Message-State: AOAM5306KeRN9JA5Ot3CLrH/s1VtjGc7l01XeCBb03QXzrr48+pR0tV2
 05OyEP0XHzFSdT6sR6/iezIQ8h2Rt+cAwCan1Yi/vnqPaySUx5AHgfBbI2evcUxvlUDLP5Gw5OU
 JPEXdnni43ie7ggW4SAvFL+RREPnqMQ==
X-Received: by 2002:a1c:3c4:: with SMTP id 187mr818103wmd.143.1607032627141;
 Thu, 03 Dec 2020 13:57:07 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz1gurwG73/lEfF3CPCfcQLDcrWO+FPofMkeo+MZQ8Y6BeZutMtLbqX1izShk6f9ysZlIbYIA==
X-Received: by 2002:a1c:3c4:: with SMTP id 187mr818089wmd.143.1607032626884;
 Thu, 03 Dec 2020 13:57:06 -0800 (PST)
Received: from redhat.com (bzq-79-176-44-197.red.bezeqint.net. [79.176.44.197])
 by smtp.gmail.com with ESMTPSA id d2sm923739wrn.43.2020.12.03.13.57.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Dec 2020 13:57:06 -0800 (PST)
Date: Thu, 3 Dec 2020 16:57:03 -0500
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Andrew Melnychenko <andrew@daynix.com>
Message-ID: <20201203165317-mutt-send-email-mst@kernel.org>
References: <20201203132517.220811-1-andrew@daynix.com>
 <20201203132517.220811-3-andrew@daynix.com>
MIME-Version: 1.0
In-Reply-To: <20201203132517.220811-3-andrew@daynix.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=mst@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Subject: Re: [Intel-wired-lan] [PATCH v4 2/2] hw/virtio-pci Added AER
 capability.
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
Cc: intel-wired-lan@lists.osuosl.org, qemu-devel@nongnu.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Dec 03, 2020 at 03:25:17PM +0200, Andrew Melnychenko wrote:
> From: Andrew <andrew@daynix.com>
> 
> Added AER capability for virtio-pci devices.
> Also added property for devices, by default AER is disabled.
> 
> Signed-off-by: Andrew Melnychenko <andrew@daynix.com>
> ---
>  hw/virtio/virtio-pci.c | 16 ++++++++++++++++
>  hw/virtio/virtio-pci.h |  4 ++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/hw/virtio/virtio-pci.c b/hw/virtio/virtio-pci.c
> index ceaa233129..f863f69ede 100644
> --- a/hw/virtio/virtio-pci.c
> +++ b/hw/virtio/virtio-pci.c
> @@ -1817,6 +1817,12 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
>           */
>          pci_set_word(pci_dev->config + pos + PCI_PM_PMC, 0x3);
>  
> +        if (proxy->flags & VIRTIO_PCI_FLAG_AER) {
> +            pcie_aer_init(pci_dev, PCI_ERR_VER, last_pcie_cap_offset,
> +                          PCI_ERR_SIZEOF, NULL);
> +            last_pcie_cap_offset += PCI_ERR_SIZEOF;
> +        }
> +


What I dislike here is that the property can be added to
pci devices (not express) and will apparently succeed.
Pls add code to validate and fail init.


>          if (proxy->flags & VIRTIO_PCI_FLAG_INIT_DEVERR) {
>              /* Init error enabling flags */
>              pcie_cap_deverr_init(pci_dev);
> @@ -1858,7 +1864,15 @@ static void virtio_pci_realize(PCIDevice *pci_dev, Error **errp)
>  
>  static void virtio_pci_exit(PCIDevice *pci_dev)
>  {
> +    VirtIOPCIProxy *proxy = VIRTIO_PCI(pci_dev);
> +    bool pcie_port = pci_bus_is_express(pci_get_bus(pci_dev)) &&
> +                     !pci_bus_is_root(pci_get_bus(pci_dev));
> +
>      msix_uninit_exclusive_bar(pci_dev);
> +    if (proxy->flags & VIRTIO_PCI_FLAG_AER && pcie_port &&
> +        pci_is_express(pci_dev)) {
> +        pcie_aer_exit(pci_dev);
> +    }
>  }
>  
>  static void virtio_pci_reset(DeviceState *qdev)
> @@ -1911,6 +1925,8 @@ static Property virtio_pci_properties[] = {
>                      VIRTIO_PCI_FLAG_INIT_PM_BIT, true),
>      DEFINE_PROP_BIT("x-pcie-flr-init", VirtIOPCIProxy, flags,
>                      VIRTIO_PCI_FLAG_INIT_FLR_BIT, true),
> +    DEFINE_PROP_BIT("aer", VirtIOPCIProxy, flags,
> +                    VIRTIO_PCI_FLAG_AER_BIT, false),
>      DEFINE_PROP_END_OF_LIST(),
>  };
>
> diff --git a/hw/virtio/virtio-pci.h b/hw/virtio/virtio-pci.h
> index 06e2af12de..d7d5d403a9 100644
> --- a/hw/virtio/virtio-pci.h
> +++ b/hw/virtio/virtio-pci.h
> @@ -41,6 +41,7 @@ enum {
>      VIRTIO_PCI_FLAG_INIT_LNKCTL_BIT,
>      VIRTIO_PCI_FLAG_INIT_PM_BIT,
>      VIRTIO_PCI_FLAG_INIT_FLR_BIT,
> +    VIRTIO_PCI_FLAG_AER_BIT,
>  };
>  
>  /* Need to activate work-arounds for buggy guests at vmstate load. */
> @@ -80,6 +81,9 @@ enum {
>  /* Init Function Level Reset capability */
>  #define VIRTIO_PCI_FLAG_INIT_FLR (1 << VIRTIO_PCI_FLAG_INIT_FLR_BIT)
>  
> +/* Advanced Error Reporting capability */
> +#define VIRTIO_PCI_FLAG_AER (1 << VIRTIO_PCI_FLAG_AER_BIT)
> +
>  typedef struct {
>      MSIMessage msg;
>      int virq;
> -- 
> 2.29.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
