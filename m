Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D34E91D8BE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Jul 2024 09:16:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AE59381B23;
	Mon,  1 Jul 2024 07:16:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cWk-zX4cl7ec; Mon,  1 Jul 2024 07:16:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9A1F81B9D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719818198;
	bh=QypAM+p3hNmxPEgzUrMsFyqqrZ2g2oJRqSnZchcdS9U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vfwNtNk1kxaC9TdxUy4EIhnJFjD1ga6iD7g/3XVqxIVqy7hp9IUxiM0bUl1bbV13s
	 x3jeOa9gbyIfe1mWfykViI2GTdJ28HQsOfmEDWvmjeFW3G82EjBm0zPBN1wvS498s0
	 fEVfW/J3wymHOSBHtjtLIyCjRMqs+yCL6Kt/h8HHfKqxc3/kavSnaHEYnnzQevigrU
	 Jn3iUsghIZ2Aam+bcb2maRhK7m9xAh+bgyqOwhdz2Fkqio0A1y/wosGi4TF98patuj
	 0TDFaQOJj2ZrZZF98XAZglXE5bhTJheYsKPdgXZa7J1NNnVxT2iCCKnOoCpgnDzL8e
	 e1Nl1cp4ydMFA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E9A1F81B9D;
	Mon,  1 Jul 2024 07:16:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A5F641BF340
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9366E6069B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TzQLkSI-ACuH for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Jul 2024 07:16:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org ECFAF600C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ECFAF600C9
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ECFAF600C9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Jul 2024 07:16:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id A945E60F37;
 Mon,  1 Jul 2024 07:16:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D8A1C32781;
 Mon,  1 Jul 2024 07:16:33 +0000 (UTC)
Date: Mon, 1 Jul 2024 08:16:31 +0100
From: Simon Horman <horms@kernel.org>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <20240701071631.GE17134@kernel.org>
References: <20240626125456.27667-1-sergey.temerkhanov@intel.com>
 <20240626125456.27667-4-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240626125456.27667-4-sergey.temerkhanov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1719818194;
 bh=3sMdIjt0zNB8mOI+VcaaG+vSQ+embNoX/DFtwS+97uM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=B+3HPSYeppyqZAgy7q4uvKGgmxxKZg5qvcsumlGX1ZFLTfnEMQtRUfgmAxdyrOfoW
 kN0ONlK5HEoh9y2sL/W4OgME7P7tSUDvu00RMtSNZm7b1SEBb2eFmSViYjcnYEWjIP
 INY+xASbA5NiztG+hcUCeQtycU1visjS4t8w7Bt3RCu8BDz8FBC/Ljn3TfYaEmj7xo
 B+02IVdwj6Jx6xe9VMp12qawF7HLqLVqJzLoyWIK1Qyp+6Fp6GuDCvWogryVDJbFa4
 zlMajmtSD6ejkv9pq3ra/z/02lXc0Rsa0Zk4glaij9E15VLwqqBHnUcEszOrP2R3BP
 12FMwDJ+Szekg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=B+3HPSYe
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 3/4] ice: Use ice_adapter
 for PTP shared data instead of auxdev
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 26, 2024 at 02:54:55PM +0200, Sergey Temerkhanov wrote:
> Use struct ice_adapter to hold shared PTP data and control PTP
> related actions instead of auxbus. This allows significant code
> simplification and faster access to the container fields used in
> the PTP support code.
> 
> Move the PTP port list to the ice_adapter container to simplify
> the code and avoid race conditions which could occur due to the
> synchronous nature of the initialization/access and
> certain memory saving can be achieved by moving PTP data into
> the ice_adapter itself.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

The nit below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.h b/drivers/net/ethernet/intel/ice/ice_ptp.h
> index 1d87dd67284d..de73762e6f27 100644
> --- a/drivers/net/ethernet/intel/ice/ice_ptp.h
> +++ b/drivers/net/ethernet/intel/ice/ice_ptp.h
> @@ -170,6 +170,7 @@ struct ice_ptp_tx {
>   * and determine when the port's PHY offset is valid.
>   *
>   * @list_member: list member structure of auxiliary device
> + * @list_node: list member structure
>   * @tx: Tx timestamp tracking for this port
>   * @aux_dev: auxiliary device associated with this port
>   * @ov_work: delayed work task for tracking when PHY offset is valid
> @@ -180,6 +181,7 @@ struct ice_ptp_tx {
>   */
>  struct ice_ptp_port {
>  	struct list_head list_member;
> +	struct list_head list_node;
>  	struct ice_ptp_tx tx;
>  	struct auxiliary_device aux_dev;
>  	struct kthread_delayed_work ov_work;
> @@ -205,6 +207,7 @@ enum ice_ptp_tx_interrupt {
>   * @ports: list of porst handled by this port owner
>   * @lock: protect access to ports list
>   */
> +
>  struct ice_ptp_port_owner {
>  	struct auxiliary_driver aux_driver;
>  	struct list_head ports;

nit: the change in the hunk above seems unnecessary.

...
