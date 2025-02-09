Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A1CA2DCE4
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Feb 2025 12:13:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 44825820C3;
	Sun,  9 Feb 2025 11:13:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5PU7XwwfThHw; Sun,  9 Feb 2025 11:13:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AFC0820B4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739099601;
	bh=Jqb3kU9s3g6Aw07ltF+l3vk439DBwuYGKZz1WtiKgc4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=EFAJhOCtIdL40iUdUT0HJF2UOB1Zux/nzabOsGHXbo7LmEdeJWmNwntZVA4Ow241X
	 WmjYL2k+1XDTipR3eCE2mY2Gplr0arqr8EaCvpHROa4ISFgng1UsMfe/84yrBf4nMD
	 HSAv2Bbm9A53+52wy/i2c0PJ6FWI6np+mkDnjKve6PshN2czrYZIBk5O7V8eg+XVWH
	 7fAr0AuFKpr2fJDVMvzzS40Th5qVuNM98kFe6Yuz3agpIBCm40Wx9LxH0apecbM/Hw
	 hho5QZWIiPIOsyoV4yeIqzIkYSlfGEiQpJ5kWa6zGma3i0FuizMosCfqQdj7ajNiRE
	 +0esdQ7d7125g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AFC0820B4;
	Sun,  9 Feb 2025 11:13:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CAE85C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 11:13:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AEDED820C8
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 11:13:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HlBnZGrPUHCr for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Feb 2025 11:13:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1458F820B4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1458F820B4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1458F820B4
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 11:13:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 353025C57DC;
 Sun,  9 Feb 2025 11:12:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E11CC4CEDD;
 Sun,  9 Feb 2025 11:13:16 +0000 (UTC)
Date: Sun, 9 Feb 2025 11:13:14 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250209111314.GC554665@kernel.org>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-2-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203150328.4095-2-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739099597;
 bh=TLYauqIxGxZkb3ojnclsL59eGEmdz8oHXimrxn4uxCw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PYTM30Cff9Q/PDKB+cwGdnmtbjN1FS0oULLRRhQkNEvEhLJh1mdXlGKxRWVQjvV/g
 jbWylwabaeVE7Qd91FXqHPDycO3MdWJ/FQI8EvRQfb7KXzYmqBhH/uQU1S19sgOy6M
 8rNrpmdzP+7xxkDVwlstSBmk0n2Y0oQ6YBeLizzEW365m9GZ2tJiJEoqiz2HyuNKaF
 E3Ikxq/l2w9381+35sOvpmSvaVxynn9M2Sw+yckkcWY8lCzb/M4Jv+wjXfDBHaDk3V
 tB0m21DwjjhfXcXcFEdA+g96WnkvLckxHS5dNgKYwMTC4l3vwJfl54J0FK8azwKgcg
 1efdjNj7EFofA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PYTM30Cf
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 01/13] ixgbe: add initial
 devlink support
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

On Mon, Feb 03, 2025 at 04:03:16PM +0100, Jedrzej Jagielski wrote:
> Add an initial support for devlink interface to ixgbe driver.
> 
> Similarly to i40e driver the implementation doesn't enable
> devlink to manage device-wide configuration. Devlink instance
> is created for each physical function of PCIe device.
> 
> Create separate directory for devlink related ixgbe files
> and use naming scheme similar to the one used in the ice driver.
> 
> Add a stub for Documentation, to be extended by further patches.
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> +/**
> + * ixgbe_devlink_register_port - Register devlink port
> + * @adapter: pointer to the device adapter structure
> + *
> + * Create and register a devlink_port for this physical function.
> + *
> + * Return: 0 on success, error code on failure.
> + */
> +int ixgbe_devlink_register_port(struct ixgbe_adapter *adapter)
> +{
> +	struct devlink_port *devlink_port = &adapter->devlink_port;
> +	struct devlink *devlink = adapter->devlink;
> +	struct device *dev = &adapter->pdev->dev;
> +	struct devlink_port_attrs attrs = {};
> +	int err;
> +
> +	attrs.flavour = DEVLINK_PORT_FLAVOUR_PHYSICAL;
> +	attrs.phys.port_number = adapter->hw.bus.func;
> +	ixgbe_devlink_set_switch_id(adapter, &attrs.switch_id);
> +
> +	devlink_port_attrs_set(devlink_port, &attrs);
> +
> +	err = devl_port_register(devlink, devlink_port, 0);
> +	if (err) {
> +		dev_err(dev,
> +			"devlink port registration failed, err %d\n",
> +			err);

nit: I think we can fit this onto one 80 column-wide line (just!).

		dev_err(dev, "devlink port registration failed, err %d\n", err);

> +	}
> +
> +	return err;
> +}

...
