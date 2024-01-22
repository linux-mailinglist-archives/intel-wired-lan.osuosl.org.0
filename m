Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DDB83731D
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jan 2024 20:49:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E9BA41A08;
	Mon, 22 Jan 2024 19:49:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E9BA41A08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1705952991;
	bh=ZExP7SyjcCZhuGxCXEVhWxwZ23mJ3V3sSMZQHcPwIcU=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JcNygR/i4Ey+47FJU1iQhA9xLAuo9WJ6AEdVZ/PH1tRZDVKbqa161uyMskduPLlfD
	 ee3NkQcc9kzevorCBuCLiPpLUxDZeGBVo1J8cjEhOMBvcz/x626TpDouSUq3U3smih
	 MQBC+B82rp6T8RjA4yJkMSVxAlhnZKBfS/1irzAkFEcYCJm/FFNKZPfz6fyJg/zGfO
	 +7HyopaT2s/v2bVXkkFcKFjUxSVsIIJQkchWfFPjeKw/DmHDChTgzpufdOdB1jAyP0
	 kzi8QUSfLo1dKXkoM1OO3yBmJ0TGTA1p3Tu3/yWzqpubZzzRhpNyJ3yffKjmLdpsF6
	 DmEc0q4dwcDlw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B2ZQ6WjrSQ06; Mon, 22 Jan 2024 19:49:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A062941A06;
	Mon, 22 Jan 2024 19:49:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A062941A06
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A9F6C1BF3C5
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 19:49:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80D5B81B48
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 19:49:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80D5B81B48
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCrcDiqZwiI9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jan 2024 19:49:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F0BBB81B0A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jan 2024 19:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F0BBB81B0A
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BA69B61994;
 Mon, 22 Jan 2024 19:49:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 628F2C433F1;
 Mon, 22 Jan 2024 19:49:42 +0000 (UTC)
Date: Mon, 22 Jan 2024 19:49:39 +0000
From: Simon Horman <horms@kernel.org>
To: Dave Ertman <david.m.ertman@intel.com>
Message-ID: <20240122194939.GE126470@kernel.org>
References: <20240119211517.127142-1-david.m.ertman@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240119211517.127142-1-david.m.ertman@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1705952983;
 bh=2IkqI+qIw7Xioto49PpXfJh+R7tB24j7dBnJsIV2VL8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=idnEZOBxQtDSHAjD236ZrDTDJyLSWkc93Y17ovXoheMH+rMVnstSv4whN0YrRHFPc
 It2jIDwvGZ+SrLsLzbdyhp7ewFdeqDAlgmOoCjBxG2Jypr9ESmUoCWjXa7fmYeuVEi
 A6BFx247OzhBxm3++1WY7aP0AOrDKPDnisEgJ5yB6ytKPSMDawSELsKkczlO4CmEVR
 iq+njFeMKjI/rxskIa7lyOl5aPpo+ks4JCxHrJ2xf4w0rcXzcFTQB3j/cFiZI8RrOx
 YKrtrLsvb2c6DLNR4r7YyhoY4GY5D5eqAABvo5Jhj+k/JaXSuFhyqrFqQlguAJdbVI
 gxlxZYlfSbp0Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=idnEZOBx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Add check for lport
 extraction to LAG init
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

On Fri, Jan 19, 2024 at 01:15:17PM -0800, Dave Ertman wrote:
> To fully support initializing the LAG support code, a DDP package that
> extracts the logical port from the metadata is required.  If such a
> package is not present, there could be difficulties in supporting some
> bond types.
> 
> Add a check into the initialization flow that will bypass the new paths
> if any of the support pieces are missing.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Fixes: df006dd4b1dc ("ice: Add initial support framework for LAG")
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

