Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 956BF738741
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 16:40:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3E17482218;
	Wed, 21 Jun 2023 14:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3E17482218
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687358413;
	bh=X6IlqPEjcBAaSMxjx/SV2JyaxFVRW4WgCifJj/+aOCg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SxvewQRMUh3Jv3h7kWwR4ypWFwAXbekSkn9OJXq/DzPK6t8TeWT/iqTLcJkGOtw29
	 5GWlS+3FmdOdWM6ivOsqCRNpEycankPIDreZ5QC7lFt2SA5h/O0ks15jmFff+zF8ia
	 bnT1gnwXXRgC97JLaTFXsV5drLG25zbh0gArYRCZyMExAhfbloq6mfxOKdlKvKgL9p
	 om5PPObuxY/bq0yyBr6YtdzYYPgsuBsE1deoIw5axpSQUJ3VT/6G/8B5dKxvbaPmP/
	 0afo+ptJV4tA3bYzng1L1rrN3NUNZLyi4q3RkC9vw9awFK2t6tvFqUYV2ifUxtLPKX
	 avbYTSUvF65TQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AOMqyLhuSt38; Wed, 21 Jun 2023 14:40:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DB9C782197;
	Wed, 21 Jun 2023 14:40:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DB9C782197
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8886A1BF473
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:40:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 67E2E41B42
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:40:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67E2E41B42
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wcdPCaSwzdGB for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 14:40:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1505440259
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1505440259
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 14:40:04 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1b4fef08cfdso31145785ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 07:40:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687358404; x=1689950404;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=23LQRpCNyMycoC+yraBdISpzSrw9hpzY6vxFELTu6Xw=;
 b=QQVMQmLwBom4wGgwa2z8kvBZ6aWPc9b1Hbot5Iz1wdkYRGh5bDuByd5oZ0/+GcNLbA
 NyQIlGceNvuRIIZCAX4xLraL9FbnzwOeXktHfHq5vuJVwV/m/B2/DcOUyfKo1XE/PoLZ
 DvbpES8A4xJCTuoewzx8AqVrKwUxAAMC2ZREjO4SmlvN/LiaX+BEFLJCvrRsKIp8fiwx
 WEHydYGH5T8FUmbYbMOpQV4KhHUJjPijVg7Kph2l4/4C1gTclJtNaZ+HYXb+4LWaWPwW
 75LfJ4zj5/Z7TsN/mFhOtV8mb3NxdDyKWjpdurMSqhRqRlvyF6irAWMGHorS3979RvMs
 Ag9A==
X-Gm-Message-State: AC+VfDxVh989WXpLfOOdL16EqqLU9G2/MbmzIPBeXmifUYRqwfMx/qxn
 zl8nv/2CkSQwfzBCMaZTBt8f0g==
X-Google-Smtp-Source: ACHHUZ41FlCuq+LD8cAXJwNgu262TvkNjffhWAVSVZYERY5IvV1sc1mq/ttnQw64N0FA228U/hYKeQ==
X-Received: by 2002:a17:902:7612:b0:1b5:67cd:4c9 with SMTP id
 k18-20020a170902761200b001b567cd04c9mr5743107pll.62.1687358404318; 
 Wed, 21 Jun 2023 07:40:04 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-142-68-25-194.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.25.194]) by smtp.gmail.com with ESMTPSA id
 n17-20020a170902d2d100b001b675b24438sm3572215plc.284.2023.06.21.07.40.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 07:40:03 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.95)
 (envelope-from <jgg@ziepe.ca>) id 1qBz05-007d7K-Iw;
 Wed, 21 Jun 2023 11:40:01 -0300
Date: Wed, 21 Jun 2023 11:40:01 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Lingyu Liu <lingyu.liu@intel.com>
Message-ID: <ZJMLwXt88vWmI4XX@ziepe.ca>
References: <20230621091112.44945-1-lingyu.liu@intel.com>
 <20230621091112.44945-16-lingyu.liu@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230621091112.44945-16-lingyu.liu@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ziepe.ca; s=google; t=1687358404; x=1689950404;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=23LQRpCNyMycoC+yraBdISpzSrw9hpzY6vxFELTu6Xw=;
 b=Vfo09dR17xh94ReGIGKHyw6zzAoeVaI4qNfAqrh9UaoSbr+7zoPou6Fy9Tuc1/NFfm
 xcLUpDJ6nIc65XPhvMheOPGCzw/QOeu+H+LquLKVaZNAdWjpmc09fGMK6yJ0UYgdjIZP
 MydjFB4xUMlXKfsRZUxuIlypVQ3KfAXcV1v9ot53cgODkY4YLzxMUZnKLL3+4QPiuB68
 zNpHRl26J/qrNGD/Mw/w1M5vffJCk3x3M/ZGPwPsR95Fomf5p+w2OrpoMkcVAUZOBrXp
 /3QJMJhrmDZDfq18FpmH80rChrgyGUcm+qRUqEK+IzdWmPhRQD4y27Bgwy7fJhcCcKXM
 459Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ziepe.ca header.i=@ziepe.ca
 header.a=rsa-sha256 header.s=google header.b=Vfo09dR1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next V2 15/15] vfio/ice: support
 iommufd vfio compat mode
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

On Wed, Jun 21, 2023 at 09:11:12AM +0000, Lingyu Liu wrote:
> From: Yahui Cao <yahui.cao@intel.com>
> 
> In iommufd vfio compat mode, vfio_dma_rw() will return failure, since
> vfio_device_has_container() returns false and device->iommufd_access is
> NULL.
> 
> Currently device->iommufd_access will not be created if vfio device is
> backed by pci device. To support IOVA access, manually create
> iommufd_access context by iommufd_access_create/attach() and access IOVA
> by iommufd_access_rw(). And in order to minimize the iommufd_access's
> impact, store the iommufd_access context in driver data, create it only
> before loading the device state and destroy it once finishing loading
> the device state.
> 
> To be compatible with legacy vfio, use vfio_device_has_container() to
> check the vfio uAPI. If in legacy vfio mode, call vfio_dma_rw()
> directly, otherwise call iommufd_access_rw().

This is not the right approach, you should create your access by
overloading the iommufd ops. Nak on exposing vfio_device_has_container

> +/**
> + * ice_vfio_pci_emulated_unmap - callback to unmap IOVA
> + * @data: function handler data
> + * @iova: I/O virtuall address
> + * @len: IOVA length
> + *
> + * This function is called when application are doing DMA unmap and in some
> + * cases driver needs to explicitly do some unmap ops if this device does not
> + * have backed iommu. Nothing is required here since this is pci baseed vfio
> + * device, which has backed iommu.
> + */
> +static void
> +ice_vfio_pci_emulated_unmap(void *data, unsigned long iova, unsigned long len)
> +{
> +}
> +
> +static const struct iommufd_access_ops ice_vfio_user_ops = {
> +	.needs_pin_pages = 1,
> +	.unmap = ice_vfio_pci_emulated_unmap,
> +};

If you don't call pin pages then you shouldn't set needs_pin_pages?

An empty unmap op is unconditionally wrong.

> + * ice_vfio_dma_rw - read/write function for device IOVA address space
> + * @data: function handler data
> + * @iova: I/O virtuall address
> + * @buf: buffer for read/write access
> + * @len: buffer length
> + * @write: true for write, false for read
> + *
> + * Read/write function for device IOVA access. Since vfio_dma_rw() may fail
> + * at iommufd vfio compatiable mode, we need runtime check what uAPI it is
> + * using and use corresponding access method for IOVA access.
> + *
> + * Return 0 for success, negative value for failure.
> + */
> +static int ice_vfio_dma_rw(void *data, dma_addr_t iova,
> +			   void *buf, size_t len, bool write)
> +{
> +	struct ice_vfio_pci_core_device *ice_vdev =
> +			(struct ice_vfio_pci_core_device *)data;
> +	struct vfio_device *vdev = &ice_vdev->core_device.vdev;
> +	unsigned int flags = 0;
> +
> +	if (vfio_device_has_container(vdev))
> +		return vfio_dma_rw(vdev, iova, buf, len, write);
> +
> +	if (!current->mm)
> +		flags |= IOMMUFD_ACCESS_RW_KTHREAD;

No, you need to know your own calling context, you can't guess like this.

I suppose this is always called from an ioctl?

> @@ -19,7 +21,7 @@ void ice_migration_uninit_vf(void *opaque);
>  int ice_migration_suspend_vf(void *opaque, bool mig_dst);
>  int ice_migration_save_devstate(void *opaque, u8 *buf, u64 buf_sz);
>  int ice_migration_restore_devstate(void *opaque, const u8 *buf, u64 buf_sz,
> -				   struct vfio_device *vdev);
> +				   dma_rw_handler_t handler, void *data);

Please remove all the wild function pointers and void * opaques I see
in this driver. Use proper types and get your layering right so you
dont't have to fake up improper cross-layer calls like this.

Jason
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
