Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EFAA2DF1B
	for <lists+intel-wired-lan@lfdr.de>; Sun,  9 Feb 2025 17:27:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8731B607C1;
	Sun,  9 Feb 2025 16:27:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Zn69HRl4bkiM; Sun,  9 Feb 2025 16:27:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE9C0606D5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739118450;
	bh=KyHE7SCnfSpr/dpWIhwycs2OktrsymmciJ7wizVm+YI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=aX1KhyzMMGq3Sw/xfzTXVGIJZ5bf8LML8UyYg8LPgkKtKepBNMAC1voOIUzWTWOYr
	 60idMl25wBVglxMMKSI632OOAwxVmksTiuz0kSuzvh+PZfzr6JAm1uWmJQ2yf4AJwu
	 K3qAoqwca5DxX1oKKKFalMYU4V91h2evooP9rY3RjqNgeDidrgOldJYrqSZeJCGjGX
	 Ycco3jt/fGcEIFIbsRHKHNcGpgpv61g5u/tJc4fQbopq8QBVtgTIF4zhjfet/qaX0D
	 SvIIoEodeqaUa06REiIbIax40Grp465Iywg6w96sz4DbGCllCSUkLmK0zmclg/MQ8O
	 CPOTRZadRPLaA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE9C0606D5;
	Sun,  9 Feb 2025 16:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7C440C2
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 16:27:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6BCFD80F41
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 16:27:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fbgrHdxKbaij for <intel-wired-lan@lists.osuosl.org>;
 Sun,  9 Feb 2025 16:27:27 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 801E780A9E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 801E780A9E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 801E780A9E
 for <intel-wired-lan@lists.osuosl.org>; Sun,  9 Feb 2025 16:27:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 949BD5C5855;
 Sun,  9 Feb 2025 16:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5BEEC4CEDD;
 Sun,  9 Feb 2025 16:27:24 +0000 (UTC)
Date: Sun, 9 Feb 2025 16:27:22 +0000
From: Simon Horman <horms@kernel.org>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20250209162722.GD554665@kernel.org>
References: <20250203150328.4095-1-jedrzej.jagielski@intel.com>
 <20250203150328.4095-3-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203150328.4095-3-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1739118445;
 bh=PLKwHjwFhvQFpzH747yxvcgU0xNzFy/1pmXG755VHlc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WK6GFDtE9puQKNpsixY8BDYyWp4RpAs42LpEk4MzNk9kAQTmKBnvWuPptXwAO9luD
 Ow2y5V+DZUC6PMQUrX15t08sQtj5DPEhCksrDBAlQQU26KdobvnITs9u8ZU7G4j23m
 9gfuyEgaHWFgQLJkHUZjsjR1dUFxcegxlipLtKbfzo0nCENWPlwXGFSFy4H9oHLzo+
 LAzExTNtUdxbHHioGid7L+jFN5GlwhJO+kIRoy5R2XjRbMdgV6LeL8Pr/7XPNsCRqy
 7f+MHAF3iWF2CHRCJt/v05oqSwF/ki0XnOTDmXbuxB9/8LDrfhkgf5xwkgGPBp/z8Z
 XdIOXLKJiIpuw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=WK6GFDtE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 02/13] ixgbe: add handler
 for devlink .info_get()
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

On Mon, Feb 03, 2025 at 04:03:17PM +0100, Jedrzej Jagielski wrote:
> Provide devlink .info_get() callback implementation to allow the
> driver to report detailed version information. The following info
> is reported:
> 
>  "serial_number" -> The PCI DSN of the adapter
>  "fw.bundle_id" -> Unique identifier for the combined flash image
>  "fw.undi" -> Version of the Option ROM containing the UEFI driver
>  "board.id" -> The PBA ID string
> 
> Reviewed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>

...

> diff --git a/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c b/drivers/net/ethernet/intel/ixgbe/devlink/devlink.c

...

> +static void ixgbe_info_nvm_ver(struct ixgbe_adapter *adapter,
> +			       struct ixgbe_info_ctx *ctx)
> +{
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	struct ixgbe_nvm_version nvm_ver;
> +
> +	ixgbe_get_oem_prod_version(hw, &nvm_ver);
> +	if (nvm_ver.oem_valid) {
> +		snprintf(ctx->buf, sizeof(ctx->buf), "%x.%x.%x",
> +			 nvm_ver.oem_major, nvm_ver.oem_minor,
> +			 nvm_ver.oem_release);
> +
> +		return;
> +	}
> +
> +	ixgbe_get_orom_version(hw, &nvm_ver);
> +	if (nvm_ver.or_valid)
> +		snprintf(ctx->buf, sizeof(ctx->buf), "%d.%d.%d",
> +			 nvm_ver.or_major, nvm_ver.or_build, nvm_ver.or_patch);

Hi Jedrzej,

If neither of the conditions above are met then it seems that ctx->buf will
contain whatever string was present when the function was called. Is
something like the following needed here?

	ctx->buf[0] = '\0';

> +}
> +
> +static void ixgbe_info_eetrack(struct ixgbe_adapter *adapter,
> +			       struct ixgbe_info_ctx *ctx)
> +{
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	struct ixgbe_nvm_version nvm_ver;
> +
> +	ixgbe_get_oem_prod_version(hw, &nvm_ver);
> +	/* No ETRACK version for OEM */
> +	if (nvm_ver.oem_valid)
> +		return;

Likewise, here.

> +
> +	ixgbe_get_etk_id(hw, &nvm_ver);
> +	snprintf(ctx->buf, sizeof(ctx->buf), "0x%08x", nvm_ver.etk_id);
> +}
> +
> +static int ixgbe_devlink_info_get(struct devlink *devlink,
> +				  struct devlink_info_req *req,
> +				  struct netlink_ext_ack *extack)
> +{
> +	struct ixgbe_devlink_priv *devlink_private = devlink_priv(devlink);
> +	struct ixgbe_adapter *adapter = devlink_private->adapter;
> +	struct ixgbe_hw *hw = &adapter->hw;
> +	struct ixgbe_info_ctx *ctx;
> +	int err;
> +
> +	ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
> +	if (!ctx)
> +		return -ENOMEM;
> +
> +	ixgbe_info_get_dsn(adapter, ctx);
> +	err = devlink_info_serial_number_put(req, ctx->buf);
> +	if (err)
> +		goto free_ctx;
> +
> +	ixgbe_info_nvm_ver(adapter, ctx);
> +	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
> +				     DEVLINK_INFO_VERSION_GENERIC_FW_UNDI,
> +				     ctx->buf);
> +	if (err)
> +		goto free_ctx;
> +
> +	ixgbe_info_eetrack(adapter, ctx);
> +	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_RUNNING,
> +				     DEVLINK_INFO_VERSION_GENERIC_FW_BUNDLE_ID,
> +				     ctx->buf);
> +	if (err)
> +		goto free_ctx;
> +
> +	err = ixgbe_read_pba_string_generic(hw, ctx->buf, sizeof(ctx->buf));
> +	if (err)
> +		goto free_ctx;
> +
> +	err = ixgbe_devlink_info_put(req, IXGBE_DL_VERSION_FIXED,
> +				     DEVLINK_INFO_VERSION_GENERIC_BOARD_ID,
> +				     ctx->buf);
> +free_ctx:
> +	kfree(ctx);
> +	return err;
> +}

...
