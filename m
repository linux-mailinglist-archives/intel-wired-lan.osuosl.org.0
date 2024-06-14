Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D4CC1908A2B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Jun 2024 12:37:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86C67843E3;
	Fri, 14 Jun 2024 10:37:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QoIzDuYuVkTj; Fri, 14 Jun 2024 10:37:40 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3B97843E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718361460;
	bh=PDaQGp/gvP8nw9HdDQj+Ssgyk834YVzSQSA47M3dyJs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=j0pMUjzCf08rBLGFAfMAfxPLoLA+VM2aKSRY9V1ZuogwIeYzZn2tBFvC6QHlmsSqy
	 mlWkuJp4GlPclPbNS/kPuG87FN33CcvWN1yeLE2isK1drnnKSTS07pNbdwJAw8P/Ep
	 VhYU90uoVBRisxcdOHuu9AoiKZnQbaJi4Gtp9oUymW9T4PXmoc7w8mq3+nZdAxYaII
	 dg0TnLOLMO9BX7KspaceWfFE3WkxPNgQjTyRH/AmZ2XMLUybZvldoBS6YHF7SeIj5A
	 DYa9qb+CQEhkpZJwOAjYMgnZOF9C3SXj7I+MHyp4BvUDK4GyY9fM4wZ2PgOK3gt/KO
	 xdR/OqKi0DPLQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C3B97843E5;
	Fri, 14 Jun 2024 10:37:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3B541BF33E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:37:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90454409C5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:37:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tcUPz-OB-dO6 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Jun 2024 10:37:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8642F40936
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8642F40936
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8642F40936
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Jun 2024 10:37:37 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EA7DFCE2AF8;
 Fri, 14 Jun 2024 10:37:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C1E9C4AF1C;
 Fri, 14 Jun 2024 10:37:30 +0000 (UTC)
Date: Fri, 14 Jun 2024 11:37:28 +0100
From: Simon Horman <horms@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240614103728.GB8447@kernel.org>
References: <20240606224701.359706-1-jesse.brandeburg@intel.com>
 <20240606224701.359706-6-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240606224701.359706-6-jesse.brandeburg@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718361452;
 bh=+q2RlQAdVgdcD7AQbJOtLwiTAjYWxXhNfVMHcCdt47s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Jkmv/G7UQwCww3A7gKYCwCzaqdV/3YI7QGVymYARIVdiv3dgSuh6Y4mfSy1/E2SeJ
 04/B2wZaKiUC7acnz5JIMOiJ+giB7G2DveKOCpJULd6F4GAQWQmd0XoattYdwpua+r
 rrLr8+k0p+ubQ9Knuf4Z+tpA+x6Dxz6bmqBCG9FU+nFe83JirhAB+e6tz+SBG4us4w
 333l2fXIOs3VnqZvU4/wbqwSPVYC42qlnuaU+8phHUIq0m6dHSkEebZkxlK1y3BvkA
 Th0o5jfqNseh2qstXl5WrN6Hzs/WvJlUeizwMJkIVWsuTFJDZfVlrTlYGZiHsALXzX
 hjvHkx/5vzitQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=Jkmv/G7U
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 5/5] ice: refactor to use
 helpers
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, corbet@lwn.net,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 06, 2024 at 03:46:59PM -0700, Jesse Brandeburg wrote:
> Use the ice_netdev_to_pf() helper in more places and remove a bunch of
> boilerplate code. Not every instance could be replaced due to use of the
> netdev_priv() output or the vsi variable within a bunch of functions.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Jakub Kicinski <kuba@kernel.org>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>

Hi Jesse,

The minor nit below notwithstanding, this looks good to me.

Reviewed-by: Simon Horman <horms@kernel.org>

...

> diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c

...

> @@ -938,9 +931,8 @@ static int ice_lbtest_receive_frames(struct ice_rx_ring *rx_ring)
>   */
>  static u64 ice_loopback_test(struct net_device *netdev)
>  {
> -	struct ice_netdev_priv *np = netdev_priv(netdev);
> -	struct ice_vsi *orig_vsi = np->vsi, *test_vsi;
> -	struct ice_pf *pf = orig_vsi->back;
> +	struct ice_pf *pf = ice_netdev_to_pf(netdev);
> +	struct ice_vsi *test_vsi;
>  	u8 *tx_frame __free(kfree) = NULL;
>  	u8 broadcast[ETH_ALEN], ret = 0;
>  	int num_frames, valid_frames;

nit: If you end up respinning for some other reason,
     please consider arranging things reverse xmas tree order here.

...
