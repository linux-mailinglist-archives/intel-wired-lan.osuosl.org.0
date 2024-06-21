Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8179122FF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jun 2024 13:07:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22D90616A3;
	Fri, 21 Jun 2024 11:06:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zgcSHvlpwO-s; Fri, 21 Jun 2024 11:06:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6FF9F61699
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718968018;
	bh=wzLwWuxhCf/x8n7e8InmE6FRfjlcFVIckV5KrfYUNbs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=mVX5S9HkHdpfatp4n+CkTh7hUoey+FSQuSdi8dcVE3BCmc1E66mw0yaz8huVxDZyH
	 AA43wOJhV7/n1ltkh/k7GTmERknJYKK3lrwS72sF0hM2LEFteEDPE3N/mKZjdAK5uV
	 x2iWTwaWBJlu74lWL+GA7XdXhReF/RZgRZ1fV8DQl1Qjnm/cDP1i0+7odYVg/T9k19
	 yts6LHz9dqshzVyFqgczdPP4D20FItCOKRSsxWWGlJyUqqGH7hW+BOWpObCwgTAbcU
	 +g4hMGTh9iCSUFjC1h9GiUaRcM8uRWV2O4AXH/AAmq5Ws/Gfob7VN38qc5OrK2Sk1h
	 pnjvATL7g8wSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6FF9F61699;
	Fri, 21 Jun 2024 11:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C47B71BF33B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BCC3142FD6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:06:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ex-rD-B25-dN for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jun 2024 11:06:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D5A8142E27
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D5A8142E27
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5A8142E27
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jun 2024 11:06:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id B532F6177B;
 Fri, 21 Jun 2024 11:06:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D57AC2BBFC;
 Fri, 21 Jun 2024 11:06:52 +0000 (UTC)
Date: Fri, 21 Jun 2024 12:06:50 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240621110650.GB1098275@kernel.org>
References: <20240620123141.1582255-1-karol.kolacinski@intel.com>
 <20240620123141.1582255-3-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240620123141.1582255-3-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1718968014;
 bh=6VOAciI3l+lpalhgYuIvKrw2Wbjh2tnPecABFpzuD/E=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pI5hU0/qek0JNpnsfeIWGei/QbXZSFmzVHNgw+nWh/xMNN5kk4WOY8cZXvNUB+xE6
 O1hhlc5Q1kSrUaeDgmeUIWhaVDpb/0BveGx6YjFiaXG8KF+fdGueA8XpzP0Dhv86QH
 u/aX2c8yPQqCBf+XYiPkrm8trKOQDLCPTd7sDmuYGwN0pO9yDOsh/WM84kx2ZKqNOV
 P1dZ1ij8V5cxIUo/KrSToaMJgDo3sRGag5O6bN5RJBOAogw3V7DBKDLl0h2rSbdUVU
 ejlKlK2cQ8tzX+a/+/AznFfNvNmXA288hbjZ3ivGbP+k13fZv6hJiV0ml1i5XswyVB
 OYpvIyHAczQ0Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pI5hU0/q
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-net 2/3] ice: Don't process
 extts if PTP is disabled
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 20, 2024 at 02:27:09PM +0200, Karol Kolacinski wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> The ice_ptp_extts_event() function can race with ice_ptp_release() and
> result in a NULL pointer dereference which leads to a kernel panic.
> 
> Panic occurs because the ice_ptp_extts_event() function calls
> ptp_clock_event() with a NULL pointer. The ice driver has already
> released the PTP clock by the time the interrupt for the next external
> timestamp event occurs.
> 
> To fix this, modify the ice_ptp_extts_event() function to check the
> PTP state and bail early if PTP is not ready.
> 
> Fixes: 172db5f91d5f ("ice: add support for auxiliary input/output pins")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: removed unnecessary hunk of code and adjusted commit message

Thanks for the update.

Reviewed-by: Simon Horman <horms@kernel.org>

