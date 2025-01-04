Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D675A015B9
	for <lists+intel-wired-lan@lfdr.de>; Sat,  4 Jan 2025 17:16:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0BD586069F;
	Sat,  4 Jan 2025 16:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UWvDnwti3x64; Sat,  4 Jan 2025 16:16:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6656960796
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736007402;
	bh=48O2q9duNKuW0G3YF/ZBjXi7WjUSlT7ZnjyOm1CxHBA=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6PZ++UCHr+XKmNgz2LU1EtRl4F5O9BzHTE5NVQPT9HMmzxyijEvpdKOWT0A/oolxd
	 /tiTG3XY387R952JoH1Ri4lxxwjd+AklRm+P9uAS6MdBPug3G3JGSUu4ZYJrNKswTO
	 ls90SaSHkihFo/1lRQqxQR4XuzND+WB+PMrxgx/ETBNqzATdOjtOiZ9rnbKzU90XLL
	 vPnJv2LUORROz+Tes4c8xsWY80bv/wmgUE7O3F1bJ6SFo46/ZTPuBSP8K/k7CTjfa7
	 e+moYLA6zMRRTmm8wjvaxSng5vwCSSF6t1gS57OzrqpyTRR5m58vN1t1SiyjL9VAY7
	 Nk4cWiIy3uOJw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6656960796;
	Sat,  4 Jan 2025 16:16:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id B4608E0F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 16:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A2B78402A1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 16:16:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hrpg-y_vn8Zr for <intel-wired-lan@lists.osuosl.org>;
 Sat,  4 Jan 2025 16:16:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org ED81D405B0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED81D405B0
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ED81D405B0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  4 Jan 2025 16:16:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 8EF5AA40355;
 Sat,  4 Jan 2025 16:14:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D50B2C4CED1;
 Sat,  4 Jan 2025 16:16:37 +0000 (UTC)
Date: Sat, 4 Jan 2025 08:16:36 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com
Cc: linux@treblig.org, andrew+netdev@lunn.ch, davem@davemloft.net,
 edumazet@google.com, pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Message-ID: <20250104081636.67a10134@kernel.org>
In-Reply-To: <20250102173717.200359-1-linux@treblig.org>
References: <20250102173717.200359-1-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736007398;
 bh=Uc6qdJfu66gVhHg+Q7F+ADZ/cf3XWU+07EGpH2Oy4Y8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=RZhMUqlYLZPo/QJBPdN8XTSQUtpJ+LC6RMeI5gL2fmju3/tSS5wVkg+hgzQx//9W2
 r5rJPv1nhkgcCIs7gGVIjCl4H6guQn46AqSsoU6//3g0KpdhgEQ3DoD9pEKDFTQPd1
 Gjl5t807jJ8OIEbs+yEoxexrbhBuuH5aXR5UaJ/OmD1io8utGLrtRMjY+WgtkdyeRF
 q/vj7B0SMNSGw21D1K19VE6LKQyiWtl/95xcGzYEZr3YHKSU1PODZtsX1LoDN4EVv1
 M6jI0altwdfEnaQfybV3Ci+d9ygsi1fXed9MyfBLBn2WyVlP5syBegEZZEMmHFnCpW
 PumPbu0B4Gs6g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=RZhMUqlY
Subject: Re: [Intel-wired-lan] [PATCH net-next 0/9] i40e deadcoding
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

On Thu,  2 Jan 2025 17:37:08 +0000 linux@treblig.org wrote:
>   This is a bunch of deadcoding of functions that
> are entirely uncalled in the i40e driver.
> 
>   Build tested only.

Intel folks, is it okay if we take this (and the igc series) 
in directly? Seems very unlikely to require testing...
