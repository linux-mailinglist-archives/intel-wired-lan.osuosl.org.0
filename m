Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 42259869FBC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Feb 2024 20:01:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CBF9641503;
	Tue, 27 Feb 2024 19:01:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YZqG0QOkOwRP; Tue, 27 Feb 2024 19:01:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26053414E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709060510;
	bh=qNJiL2hJumt+WHF29JUZrobvGPhd1edOplRgdJzBf0s=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=keYTR3Sp3gWTaWQFoKxo4Ta5VYm1ZDaBTxCoEiL7VHi8bDfiPr9WpYO7CZ50x/K2c
	 R6YPWZOPA9KzNxXY5m7mvX+kd8P5R6lDRhvAGZC1ZKk+jpYOhR//jSvhd/Si+BvefT
	 mMC+okX7deQB1mrTnVWL5upsM8VzOWvklCoz1c26KqOBonpQ/V/FOX49GvXXzc/gFP
	 2/mAReCZYqmgUMZJNJIi7vYdJNeR9H3VZmifp/XeYe+KqqPnCaAQT7z33JGCW39eTQ
	 C9PPO3i9M/7XRO3wFUxCdbXJWbuuZ/68M8mEpZVtGfjsOQF/9A1cdOdHf2QIYJNlhK
	 wa3Q29TxKkq0w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26053414E7;
	Tue, 27 Feb 2024 19:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4295E1BF2BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:01:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E7C4413A3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:01:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id P8M_oEDS-nQ7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Feb 2024 19:01:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9D8E7410E4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9D8E7410E4
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9D8E7410E4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Feb 2024 19:01:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 63AB761666;
 Tue, 27 Feb 2024 19:01:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50C73C433A6;
 Tue, 27 Feb 2024 19:01:42 +0000 (UTC)
Date: Tue, 27 Feb 2024 19:01:40 +0000
From: Simon Horman <horms@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Message-ID: <20240227190140.GK277116@kernel.org>
References: <20240226-keee-u32-cleanup-v5-0-9e7323c41c38@lunn.ch>
 <20240226-keee-u32-cleanup-v5-2-9e7323c41c38@lunn.ch>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240226-keee-u32-cleanup-v5-2-9e7323c41c38@lunn.ch>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1709060504;
 bh=o5w7oZIQE4oxT0QNjs9kj3UTnhmzFAHdqoFnmG1qGNo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RGkZAgr9/wxKL2073jxmP6UrqwQwsbsuPKEz1Vtu46Fh16sClttuMKFoTA3H+/MPP
 cfxlqAiwcLmfrnP3YMKYLNxTz2qGQ+76EOCVUHJ+zD/esKLZeD15+2wsHPO7weCabQ
 esbHMiTbXbkaGYBIQEY1bZoV4JLXEekjY7CqnKBghP30L8B/HVPIJiZRiqyyJnIAJR
 aFDaoJeeab5kC89bA5g2SfEYno8uN0i99myh9Jo+x0VSm0jZGQTeiehf0C5w+Oz+Tt
 aoCGONljLtB2vc2CbTeuIvhIRSTJVcot0ULySH7Ncna30CKWTgZoMdRIPWMiJ2PLm7
 tCrV3VMZuambw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RGkZAgr9
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/9] net: usb:
 ax88179_178a: Use linkmode helpers for EEE
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Feb 26, 2024 at 07:29:08PM -0600, Andrew Lunn wrote:
> Make use of the existing linkmode helpers for converting PHY EEE
> register values into links modes, now that ethtool_keee uses link
> modes, rather than u32 values.
> 
> Signed-off-by: Andrew Lunn <andrew@lunn.ch>

Reviewed-by: Simon Horman <horms@kernel.org>

