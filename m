Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 866BCABB835
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 May 2025 11:07:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E97944084E;
	Mon, 19 May 2025 09:07:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lo2jfzhSo2lR; Mon, 19 May 2025 09:07:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6707C40791
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747645633;
	bh=CIQ7P0u/UU6/0XR4liGVwgjhlwBMoDlX07VqFQqscvo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZFu0fvfwRDnvB3uxIogaW+ZdxTBWNKCgTC2Aa2+860xbpEguZ8huOaVr2ZMbbrzsF
	 H2ho9y7EEX6TY5akpVYt2NVAx/WqLtnbjN9nOfqkSAeDK5YE4Jnka1dyBiIOJsD5AN
	 T06aStlyu3ad26vpxt7RRb/J4BfazOARTglNES/Iy0Vy6LtRhGOQx/HcjUgsO6hcy8
	 3oMmyenMlu86TIdu6jiXTbbMMvMID2Cq3gOe42znQaS6SIGduT+KSgRzpeaCIJhbzj
	 kgV5HJMrrmWnAADeqZc9jupWpyhG7NDO40zzxn6rTVwE+oF814WdQlxOk/RBbl5Gsm
	 tS7/1SORc+4ng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6707C40791;
	Mon, 19 May 2025 09:07:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 698E9193
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 500B260DF9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2zKRiYwr4arQ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 May 2025 09:07:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C0C8760607
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C0C8760607
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C0C8760607
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 May 2025 09:07:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 50F334493B;
 Mon, 19 May 2025 09:07:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A38FC4CEEF;
 Mon, 19 May 2025 09:07:08 +0000 (UTC)
Date: Mon, 19 May 2025 10:07:06 +0100
From: Simon Horman <horms@kernel.org>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Milena Olech <milena.olech@intel.com>
Message-ID: <20250519090706.GC365796@horms.kernel.org>
References: <20250422160149.1131069-1-arkadiusz.kubalewski@intel.com>
 <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250422160149.1131069-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747645630;
 bh=XvRzz8T7W6RFlkeueUkzBwfdIZ2pK+0PD5oyIXEnF5w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gmtG37zzTkDtFUD9o4yR0G5xV7y0VfJCYKr/n2Fo1U1+ev1edoXN3ed3l4gn6D2dY
 3jjVP5fujQb+TVFgKnrAmDjGz9dfD17cv80rB2A7nwbhiZda6o5hFLBuu0DuD/y50f
 /wVV2CFplKiqM9Dd4cpKCLSOWqhQLalMJpi22/pVoBig5R6caWBJ+JtvW0Sa5RdnIW
 kRT2n0ujdrppoPbUeiRYiMMFwmexWbxdyOUhSPLFtlK6037pSX2PPQAXZDz2cm/wWH
 7U010VB2GAWq/WTNvXlXPSzxlQUfBujBZhRfnjvu34ZcRAb26okp4gGSJaP47iJvMH
 jpAY3VyH+o/IQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gmtG37zz
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 2/3] ice: change SMA pins
 to SDP in PTP API
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

On Tue, Apr 22, 2025 at 06:01:48PM +0200, Arkadiusz Kubalewski wrote:
> From: Karol Kolacinski <karol.kolacinski@intel.com>
> 
> This change aligns E810 PTP pin control to all other products.
> 
> Currently, SMA/U.FL port expanders are controlled together with SDP pins
> connected to 1588 clock. To align this, separate this control by
> exposing only SDP20..23 pins in PTP API on adapters with DPLL.
> 
> Clear error for all E810 on absent NVM pin section or other errors to
> allow proper initialization on SMA E810 with NVM section.
> 
> Use ARRAY_SIZE for pin array instead of internal definition.
> 
> Reviewed-by: Milena Olech <milena.olech@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

