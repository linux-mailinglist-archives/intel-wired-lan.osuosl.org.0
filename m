Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EE59AB21B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 17:30:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BBED607B4;
	Tue, 22 Oct 2024 15:30:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QoSSyd6EJGo1; Tue, 22 Oct 2024 15:30:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4D3F607AD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729611019;
	bh=kuUC8LR+06k/SIw95Bwh+79dQuF0p2uep2eAjEHQG6Y=;
	h=Date:From:To:Cc:In-Reply-To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From;
	b=VZOvwJxZpThMVj6mVv0oPRYn8TH2hcOGDnJ3jnACQ6daPiRsrfnY3NjdF0vG+me/r
	 cpsvGFiF9x8Updz4bAablM4CdW798NHjdwSG/oiLzm1qgMiFNehhPdI6HRacm8ckdZ
	 qMA2aXlYcEABQ6NQ0hd2ArW+aoIgiEI6CE0KTrQDRpc095kVlnmxP+L3mSSjW7Zesy
	 syXj3pXa5PlJ4RIujxkQlmFaaWNjhSJ6CT08n0LlC/c4QMSF2yUFkjvh8cmQ2HO4N+
	 DM3RstZ37nbOjAI+Y8MEq07tZlJcizPMEjVdDyMkXGOwIcDJzl1RVNyv8T5uPqTVit
	 BOb9PecUR6l2Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E4D3F607AD;
	Tue, 22 Oct 2024 15:30:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id CB713963
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 15:30:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AB3644062A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 15:30:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KtHGTMeqHOOH for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 15:30:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=helgaas@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org B86924064A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B86924064A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B86924064A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 15:30:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0FE905C4A8D;
 Tue, 22 Oct 2024 15:30:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23B47C4CEC3;
 Tue, 22 Oct 2024 15:30:14 +0000 (UTC)
Date: Tue, 22 Oct 2024 10:30:11 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241022153011.GA879691@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241021144654.5453-1-piotr.kwapulinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729611014;
 bh=zceIEQN8I+p0xAl4kzZLSkT/NpJoXIDwU7PTGdQu+3Y=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=GR5r2rQGcz3kWRMkhRBxkVDsBowDqL/D3jPXqzTAMrVJY5L8m+87iQJvCGqh/8tiz
 zprXVzYzbTOCUgr4Lnjr7vIzTaNnU79+4iZJvR68ICFqrVsdM7mGk0W/yhheG4iGTf
 qAZQbIQ6KW5OMs8kGaKdGHB8AQiVARTAT0Ci2RByYgQXAwLOrbDCGDDj8Uj5Bha+Fe
 Wha/ofuuAqb/z52yPVuJYnahMKtAutX5dv8jCw1CsHk61b/OFydFougss76XlzFSiy
 SuvtfP0dObfYAqUkC+dz3eUEwSsTMeschewXTrRn7P56iwkUL8UXHBV1FZ77zhpGd5
 QWU1zRPEo7e6g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=GR5r2rQG
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
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

On Mon, Oct 21, 2024 at 04:46:54PM +0200, Piotr Kwapulinski wrote:
> PCI_VDEVICE_SUB generates the pci_device_id struct layout for
> the specific PCI device/subdevice. Private data may follow the
> output.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

This looks OK to me but needs to be included in a series that uses it.
I looked this message up on lore but can't find the 2/2 patch that
presumably uses it.

If 2/2 uses this,

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  include/linux/pci.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/include/linux/pci.h b/include/linux/pci.h
> index 573b4c4..7d1359e 100644
> --- a/include/linux/pci.h
> +++ b/include/linux/pci.h
> @@ -1050,6 +1050,20 @@ struct pci_driver {
>  	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
>  	.subvendor = PCI_ANY_ID, .subdevice = PCI_ANY_ID, 0, 0
>  
> +/**
> + * PCI_VDEVICE_SUB - describe a specific PCI device/subdevice in a short form
> + * @vend: the vendor name
> + * @dev: the 16 bit PCI Device ID
> + * @subvend: the 16 bit PCI Subvendor ID
> + * @subdev: the 16 bit PCI Subdevice ID
> + *
> + * Generate the pci_device_id struct layout for the specific PCI
> + * device/subdevice. Private data may follow the output.
> + */
> +#define PCI_VDEVICE_SUB(vend, dev, subvend, subdev) \
> +	.vendor = PCI_VENDOR_ID_##vend, .device = (dev), \
> +	.subvendor = (subvend), .subdevice = (subdev), 0, 0
> +
>  /**
>   * PCI_DEVICE_DATA - macro used to describe a specific PCI device in very short form
>   * @vend: the vendor name (without PCI_VENDOR_ID_ prefix)
> -- 
> 2.43.0
> 
