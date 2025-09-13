Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1D8B55FC2
	for <lists+intel-wired-lan@lfdr.de>; Sat, 13 Sep 2025 11:07:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7129F8433E;
	Sat, 13 Sep 2025 09:07:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LYZ_6TouUNCo; Sat, 13 Sep 2025 09:07:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1F678433F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757754438;
	bh=FYR9AWDyKd4E3eYaqduZ9w2ytQB/OCFF8kyCre52g24=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=t+8rIlGPuHAryxNpe8jt1WF4NRulno73+76cyB1o2bIR/cQ8PV3IcVHLaSlKJiexl
	 NEUuLXkdh/VpynQubsBydz6h+0BNAEnwvGQMgUHUNGfK80zo1OUG8zb2mbqOFIp1Yj
	 P0+zd6j3SibXUByeveMTebbBY91XOYsWU3dhh7FpBYMkTdXQkVqncRkQYZyZftabRB
	 ttbQrcMLBj11jmsTCUWJYs4zGYXhz6BVog//a8rpB7v9i6ct4fIBnWbcfaOAgNuf0i
	 7Ux5EbqQQCOeTBalGtpjoGSFKQxn8tyPKSk6lq1XygybHgDEmxYtuLgNE29w0/yTE3
	 wMI9Dl5lORv/Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1F678433F;
	Sat, 13 Sep 2025 09:07:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id AF57325B
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 09:07:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 959248433D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 09:07:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Yvhu4m5g8v_v for <intel-wired-lan@lists.osuosl.org>;
 Sat, 13 Sep 2025 09:07:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0857B8433C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0857B8433C
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0857B8433C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 13 Sep 2025 09:07:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1C6E26021A;
 Sat, 13 Sep 2025 09:07:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A797AC4CEEB;
 Sat, 13 Sep 2025 09:07:12 +0000 (UTC)
Date: Sat, 13 Sep 2025 10:07:10 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Jesse Brandeburg <jbrandeburg@cloudflare.com>,
 Jakub Kicinski <kuba@kernel.org>, Hariprasad Kelam <hkelam@marvell.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-doc@vger.kernel.org,
 corbet@lwn.net, Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20250913090710.GJ224143@horms.kernel.org>
References: <20250911-resend-jbrandeb-ice-standard-stats-v3-0-1bcffd157aa5@intel.com>
 <20250911-resend-jbrandeb-ice-standard-stats-v3-5-1bcffd157aa5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-resend-jbrandeb-ice-standard-stats-v3-5-1bcffd157aa5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757754434;
 bh=cb2Q1hU2BTJSMSERZdg9xxImCo1b0IDRVIFl13zEi7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NSbkRV2HmBGKR0IvjNlWBMNvMj2ZwzM+axTyyVP0B1NhK/lPu29kleoUZYZ0kzHE6
 iIBLvIEwW1BrD+itZRICi/qMl2r8xilMBWAge74VRMSj4izWj0p87oYKpn4rMlfUaM
 DWwYT1YW/7jKzKB805wqGN1AccB+foRDwD4JNeKfK2PaUxdNUHLHTdPZN6WOCs3OLY
 /AoWkr4njKga7pyCKxB/j32CHsiUjr0DmLygOuEsa6+h37sc8aMQHT35aW8QDKqEKz
 dMA5GDF82bnpzuTGiEDr7R11sFiFMwABTlL/Nq6UfaNM5QHGL7IOLq9DpyslmjYNOf
 SDmPuQPPsda1Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=NSbkRV2H
Subject: Re: [Intel-wired-lan] [PATCH v3 5/5] ice: refactor to use helpers
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

On Thu, Sep 11, 2025 at 04:40:41PM -0700, Jacob Keller wrote:
> From: Jesse Brandeburg <jesse.brandeburg@intel.com>
> 
> Use the ice_netdev_to_pf() helper in more places and remove a bunch of
> boilerplate code. Not every instance could be replaced due to use of the
> netdev_priv() output or the vsi variable within a bunch of functions.
> 
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c   | 48 ++++++++------------------
>  drivers/net/ethernet/intel/ice/ice_flex_pipe.c |  8 ++---
>  drivers/net/ethernet/intel/ice/ice_lag.c       |  3 +-
>  drivers/net/ethernet/intel/ice/ice_main.c      | 10 ++----
>  drivers/net/ethernet/intel/ice/ice_ptp.c       |  6 ++--
>  drivers/net/ethernet/intel/ice/ice_sriov.c     |  3 +-
>  6 files changed, 24 insertions(+), 54 deletions(-)

Less is more :)

Reviewed-by: Simon Horman <horms@kernel.org>

