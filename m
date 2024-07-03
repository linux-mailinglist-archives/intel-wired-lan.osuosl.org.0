Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB7FE9267FA
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 20:20:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 89D7A41B5F;
	Wed,  3 Jul 2024 18:20:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Cj-zj8ZTx4D1; Wed,  3 Jul 2024 18:20:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9A11241B4D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720030825;
	bh=yE+Ce8SsZSDKd0YD+LS5m2qyepWGzRkVxsdK8ot8JZg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WChcCYxneejCxmCUiO83aBpEdcdArUtE36zuOhO2DoI+ASxsiHcxCj3bZzid4B7x/
	 vMSeRn/7Jo0wmYdpMOOW93cKFYvO1NuLC2TZqlLAtly76GwBh2JIFsr8/Vw/HT2uyQ
	 AaGonplivWvhHROu9EfaNUd/qpfAOyrzhwAA+M6EkTlJYWUcYfC449LjjJr4I18GNJ
	 0qRzYbVbSbbijlcG6StOWn4SQkV7ckko01cdjLz3Ine2tC257rlOA/BwH5RjO0gkGn
	 LKKO5MsbzFtSztEoWnkHO4SXF0PI6EznXS48sYyebg2OOMAis3MRMcMG0K0oMa0w0u
	 B85r4+O6VAyIg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9A11241B4D;
	Wed,  3 Jul 2024 18:20:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9B80E1BF2C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 880FD81FCA
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FKe0bspuJPq1 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 18:20:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 00BB984013
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 00BB984013
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 00BB984013
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 18:20:22 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1C71F60C2D;
 Wed,  3 Jul 2024 18:20:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7528EC2BD10;
 Wed,  3 Jul 2024 18:20:20 +0000 (UTC)
Date: Wed, 3 Jul 2024 19:20:18 +0100
From: Simon Horman <horms@kernel.org>
To: Karol Kolacinski <karol.kolacinski@intel.com>
Message-ID: <20240703182018.GL598357@kernel.org>
References: <20240702134448.132374-9-karol.kolacinski@intel.com>
 <20240702134448.132374-11-karol.kolacinski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702134448.132374-11-karol.kolacinski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720030821;
 bh=RLJpAju0if/8vtqX09gKAH57p4K258/Vmn2XXW4O5mY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jWNgtFDeIvfpzITTxNIFMkk384bjll0E41s/vdu+Ta+wTHmcQI0jbaF9s5E8+hEtK
 yB4F122bqE3+DcSUzN+DfcokwEr+e/WrQqwuqo9z2lVKPffgPX3Ogdk6NUg0sV8r4W
 n59zR1WhcdEFXZnSISgGalN8mm37THW5k+gtVN2Qn42V1cPC0VZAqdCNnm1WV9AGou
 TI3uCssVHoCyidxTS6LH6IRXHuFR/ts3SV8NfNSYHLFvDXquqHpnXRqTQBVta1QILs
 sRd7ND1VyRhGL1HAqs5IJagX6xLVbJli7ewXt0m1H3lUpyUNm+AXOv9BPuCdZ4myfL
 q55N/7N1paCQw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jWNgtFDe
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/7] ice: Add SDPs support
 for E825C
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
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 03:41:31PM +0200, Karol Kolacinski wrote:
> Add support of PTP SDPs (Software Definable Pins) for E825C products.
> 
> Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
> ---
> V1 -> V2: Removed redundant n_pins assignment and enable and verify move

Reviewed-by: Simon Horman <horms@kernel.org>

