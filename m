Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 391C9B54665
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Sep 2025 11:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D98D940CC9;
	Fri, 12 Sep 2025 09:03:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KKLyBoJlxpi3; Fri, 12 Sep 2025 09:03:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 578A340D37
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1757667815;
	bh=Fpak2BTg3mvKwj7zYYfFOwF3Hn9C7TGUyN+6gZzhdmQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=HGproG6GIeF+vZGiIs7RVMvBSBXb8cov+5/DEbJwFlwwiG2RzmIwWSaIpx59SUBsL
	 BOJXokf5i5Y7KJBwHpDN+/TJ2GbkzQPUQ5P6b9vAtfjW3SpKWyuN3jXKrcH7rSHAhz
	 XLwYKO0iYyjLJH65D5c6ATmOaNgdllO8Kzxk4i4IbSQID+E0PH/cWr0hobTUwE/m9R
	 yAO9dOfcLsLkuJTktL8mCCwXVBGtrAAKSAPCGgJ7q3gkgb+yfYqYyDUeVpKICXs1ON
	 bs1IdfoPxhQLXT3Ch97S67//xprN4eJQ/kQ/GRi0F4gdrFoG8d8Hkfdf1Q4YQfzITU
	 QeShyoo67fbHg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 578A340D37;
	Fri, 12 Sep 2025 09:03:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 2825192E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2598B4048F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gyaWivA9ZxmA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Sep 2025 09:03:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3714E402CE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3714E402CE
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3714E402CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Sep 2025 09:03:32 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5E773601AF;
 Fri, 12 Sep 2025 09:03:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 939BCC4CEF1;
 Fri, 12 Sep 2025 09:03:29 +0000 (UTC)
Date: Fri, 12 Sep 2025 10:03:27 +0100
From: Simon Horman <horms@kernel.org>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <20250912090327.GW30363@horms.kernel.org>
References: <20250829101809.1022945-1-aleksandr.loktionov@intel.com>
 <20250829101809.1022945-4-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250829101809.1022945-4-aleksandr.loktionov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1757667811;
 bh=Attib9RBEVEQ2BkPR2RH+anwU3Q3CI237poc2cq7Fs4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BBsWW6LmN/Fy43GhLo5gNxUaZu3u5OzBmT/yGi/HVdoCMO72vgGeh8iEhPoHfJ8MS
 gZ+tLJT4j8phljtO4ne9mL191Heo1RD/dnQXUXLsIg1Y9JvUMo/Ecd0JPUfQPFQJ5h
 LUg35jx52Y54q4yB6miMQiVlwW8+Nk3425PXZzWE+HOc9xVUNa6lTkd3k3huo6nQoT
 Ic3rf7L6S9Q7UCqSqvdu+VE9MbWY0zGZMoIPvFRXg9Afi3rd8Xf23KiV9eiZYr1+Au
 W0cOYuyOwbHGpPdEVWYelCA8zkbUvsJJkv62NHgLVheBNlPnKTeSHx1pRqmP3vhzhX
 ni74bbfM1DVIA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=BBsWW6Lm
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: improve TCAM
 priority handling for RSS profiles
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
Cc: Dan Nowlin <dan.nowlin@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 29, 2025 at 10:18:06AM +0000, Aleksandr Loktionov wrote:
> Enhance TCAM priority logic to avoid conflicts between RSS profiles
> with overlapping PTGs and attributes.
> 
> Track used PTG and attribute combinations.
> Ensure higher-priority profiles override lower ones.
> Add helper for setting TCAM flags and masks.
> 
> Ensure RSS rule consistency and prevent unintended matches.
> 
> Co-developed-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Dan Nowlin <dan.nowlin@intel.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

