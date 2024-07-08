Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C177F92A30A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  8 Jul 2024 14:41:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 775ED80E1E;
	Mon,  8 Jul 2024 12:41:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Buhh4y_i-1gK; Mon,  8 Jul 2024 12:41:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A81DD80CFD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720442505;
	bh=oc7cTq56wisJfGpBhyPJq/0x5SYf83xFNm2BNNua4ho=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=7KLTDw5bgPKmq+ze43BcNPJtfPT3dHeBIoEwRzdH9FDTkUWqp3BlQ6xAHJfHvUce1
	 fBmbBtUUiCpsYTQLovn9JoXNcHyLIm36tj+k5nRFvD92Qm1YmFyVYLcmpRu1Xh+JFD
	 6k8RLIbom9Jhj2dDnksA/YerW6w+rx5j/obIZh2gZknVi9JV5pGi8OQrdb4ctYsEdV
	 BXW5Fflp67TX3ux0zB2ZCRhtEVeQMXmN/ee7wccNj7CanziXp5/0olPb66AAzc7X7T
	 6yf/oyfd1DgxQUPTCJQHKo+kkKRX0t1rMAJAl/QGiuA6jdaeNYLBJCZDnBOq2DFUYg
	 tWNT4At/USgoA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A81DD80CFD;
	Mon,  8 Jul 2024 12:41:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 738CC1BF390
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5F58040582
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4IIsXvj0M-S4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  8 Jul 2024 12:41:42 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 4E9954012D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E9954012D
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E9954012D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  8 Jul 2024 12:41:42 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 692D4CE0A13;
 Mon,  8 Jul 2024 12:41:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FC54C116B1;
 Mon,  8 Jul 2024 12:41:36 +0000 (UTC)
Date: Mon, 8 Jul 2024 13:41:34 +0100
From: Simon Horman <horms@kernel.org>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <20240708124134.GP1481495@kernel.org>
References: <20240703125922.5625-1-mateusz.polchlopek@intel.com>
 <20240703125922.5625-3-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240703125922.5625-3-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720442498;
 bh=1ZxkTJ3Adc0/pfDFlGf2NV/gKURgzXUH1JFdCRZFnfs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eUwXsNDHUD1hxz6gwXpCrfSbi+EeDxBZQdLlQ4Qn4kFF+iJkauCIf9vKqaYYAcDX3
 XAu2AH9kmDlhIKFLz6SslxV6f94LbdEgaS0PExSUzti1XwhFZAmfrycph6VK3qEbgK
 xj7hdqGBc0rMQWu4HA+tJ1QTosVlQodD3SVmAdyltcYpeVaPJFD09jNSAQECjIcdXH
 P2XSi+FCk1adSKcRF1y4eQFLxH5OZFcmIu6/FlHD4oVbgVFS8j3q8xrZDM9XF5+6aW
 8jK/jrInOUJrq+DPOzKX2KImz9+Oha4Ee1vL1YbKxIq3xLswNUNOrCac941wyJpe+g
 BqvYmvIFwGqAw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=eUwXsNDH
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 2/6] devlink: add
 devlink_fmsg_put() macro
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
Cc: willemb@google.com, Wojciech Drewek <wojciech.drewek@intel.com>,
 dwaipayanray1@gmail.com, linux-kernel@vger.kernel.org, joe@perches.com,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 apw@canonical.com, lukas.bulwahn@gmail.com, akpm@linux-foundation.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 03, 2024 at 08:59:18AM -0400, Mateusz Polchlopek wrote:
> From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> Add devlink_fmsg_put() that dispatches based on the type
> of the value to put, example: bool -> devlink_fmsg_bool_pair_put().
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

