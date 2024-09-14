Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 412F09791CE
	for <lists+intel-wired-lan@lfdr.de>; Sat, 14 Sep 2024 17:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BEE704066B;
	Sat, 14 Sep 2024 15:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UVIFUeYWe2jK; Sat, 14 Sep 2024 15:33:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD18E40679
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1726328000;
	bh=E/a27LkfefRJSHUoH2PXdDakaxrqJyxFYozTACoosMA=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1gXNxhx3083P5jxaCHcLlvBGKBenVyngce17r4Z3XfKysc2AkUHeh7pnCscginHpA
	 a0TWdX6O2JqzClPQYbmotV9vvSVpzifYYipcG5q3cxTpLA9TOnkp9irFxYMT3DSahi
	 D9Ncnl1xbdE9TBhw7mCbzbJmey3i6KsLTd/x6AhXS0uUWfxKPxfkdiDiGAS8k4NAh4
	 mgkPmSHjR6rH8wVVF8sW97p+QPQtY6HAvzbrL5lgqMQpBI2v0Y5GdfU9ZfTKdtRDwE
	 8tyI9u30DEObEEi8cf02Gw/EqidUiw9yAZKCo6o8gC5K66/wqjNHfYFjRP/WwYrEK1
	 EWPMr1cQm+xBg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CD18E40679;
	Sat, 14 Sep 2024 15:33:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EA9981BF844
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D8BE781BC5
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:33:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0W7f2t66ynmf for <intel-wired-lan@lists.osuosl.org>;
 Sat, 14 Sep 2024 15:33:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4734F80F57
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4734F80F57
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4734F80F57
 for <intel-wired-lan@lists.osuosl.org>; Sat, 14 Sep 2024 15:33:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 771EA5C5657;
 Sat, 14 Sep 2024 15:33:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 464A1C4CEC0;
 Sat, 14 Sep 2024 15:33:14 +0000 (UTC)
Date: Sat, 14 Sep 2024 16:33:11 +0100
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <20240914153311.GD11774@kernel.org>
References: <7f7aeb91-8771-47b8-9275-9d9f64f947dd@stanley.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7f7aeb91-8771-47b8-9275-9d9f64f947dd@stanley.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1726327996;
 bh=irG2ZvLex5ubZB79jar/ygEFO4yemcD2PPyp9Ezkvvs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KXNdi+dW+AbaS2se3S2XvOZVG/5Oc+AUPphhIT1gvw7FIoqJfhYp7RVpMW3+rPL+M
 tQAluj/s1ltg6FkefAGjMW52D5qYUyPbCWQA6FCq285b6c+QefT1zv2D7XiilxPQts
 Fz98bLVvoEpt8ocaHVpIvfyv1BddXlZT/tBN+goejGtqtk7U7qSpoysUYZLup88URU
 /HHr0t/ipSsKnARkYwZ9IoqXTzroYBUCHpnUPnBfQt3YVJS2EogOwz355KwF4XjN9p
 jI75uD0PcRnThJkz3otNMctGaWNoN0jLSYviLYakmlpZUDhZA0pYCRhCvgrt7EZByc
 IRVXvpVIvrugg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KXNdi+dW
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: Fix a couple NULL vs
 IS_ERR() bugs
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 14, 2024 at 12:57:28PM +0300, Dan Carpenter wrote:
> The ice_repr_create() function returns error pointers.  It never returns
> NULL.  Fix the callers to check for IS_ERR().
> 
> Fixes: 977514fb0fa8 ("ice: create port representor for SF")
> Fixes: 415db8399d06 ("ice: make representor code generic")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Simon Horman <horms@kernel.org>

