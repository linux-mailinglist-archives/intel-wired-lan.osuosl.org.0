Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D4391231F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 13:16:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3427F6167F;
	Fri, 21 Jun 2024 11:16:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gCzXbmopIOYp; Fri, 21 Jun 2024 11:16:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 63CC6607EE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718968595;
	bh=YW0ASUHk7/lvGcfZqP8gR5DjzMYChLHSOI5D3Zx+S7c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZhEYInZEQyE6vz/WpBS8qmhjOO8Qmz/flzFEJBgVp8ULknE3uk9MgOvdWJe+9xezI
	 6LT/lPWHyGpPSnKYahgm8GVCJD/m6iEVzxeuy0FKi8D64S60cRBqXqSNNH7iK2W+o7
	 m8xTmqjLEm1Q0ic9nIacEFeQ/svgfooZ8pQJp3/FryiiKC25pXhWP/0MccRtHZZyxK
	 k44B3g3davifOm7q/UZVft3QT6ajs2vseziSPVQOY0xzNAiJOIeDxeZKIgHf6Q7Sm7
	 C7nMg2Tu/cBFDRsPIxLCnNGeCTZxUOUC+Np575xYa6g6M9cM+ugCQ/DJSgRrD1Iowo
	 zbiwhhYcEOsSQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63CC6607EE;
	Fri, 21 Jun 2024 11:16:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3C80D1BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:16:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 36917845CA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:16:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Dlwt5zlsv-78 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 11:16:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9DBF68469A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DBF68469A
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9DBF68469A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:16:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id C4D066237A;
 Fri, 21 Jun 2024 11:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED62BC4AF08;
 Fri, 21 Jun 2024 11:16:29 +0000 (UTC)
Date: Fri, 21 Jun 2024 12:16:27 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240621111627.GC1098275@kernel.org>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
 <20240620123141.1582255-2-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240620123141.1582255-2-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718968591;
 bh=z1/pooQUILhH0VFs1sDWrIZq+BIXMFfbUhIkzO2SVTQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aEqmmsy720CNrjYJ9DwRXbcA4A7zjlS3eTNZcAaNZsVToOzVmlJwkpd9tVLJhaZZ8
 ac4x74gqjnH+w5+yL55rLqtv3KaXDGAMS+ZbA9ehfJCshhYz+amrZqHHYGo3LQSBSX
 7CDRFbSLrasaXvcq6BtuwumL86T4Kn2PBqrkwd+YeNBHaIEomc8jNbcrBzIoNhxM+e
 y4BSuD9SPGAx6ial4wBYrh5LtNyNcD7q/2Iw+R2t6NjEt45ymgFJ1Vwt5mQoo7iViO
 qv4SwRVUVOc0tEMtq9vco7f4KAwuZbiIAyZRto4O4ETADawuIYyATT649IdBftx6CJ
 PBDDMftCeyJng==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=aEqmmsy7
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 1/3] ice: Fix improper
 extts handling
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
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Jacob Keller <jacob.e.keller@intel.com>,
 intel-wired-lan@lists.osuosl.org, Milena Olech <milena.olech@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 20, 2024 at 02:27:08PM +0200, Karol Kolacinski wrote:
> From: Milena Olech <milena.olech@intel.com>
> 
> Extts events are disabled and enabled by the application ts2phc.
> However, in case where the driver is removed when the application is
> running, channel remains enabled. As a result, in the next run of the
> app, two channels are enabled and the information "extts on unexpected
> channel" is printed to the user.
> 
> To avoid that, extts events shall be disabled when PTP is released.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Co-developed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: removed extra space and fixed return value in
>           ice_ptp_gpio_enable_e823()

Reviewed-by: Simon Horman <horms@kernel.org>

