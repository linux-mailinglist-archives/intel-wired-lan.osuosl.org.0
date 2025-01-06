Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 904C6A0247D
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 Jan 2025 12:44:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BE01606DE;
	Mon,  6 Jan 2025 11:44:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BLZfFcpOl-Su; Mon,  6 Jan 2025 11:44:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AEAEF6071A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736163858;
	bh=aBW+nUI5ZTUezXBeMgtY8ggFPZvDNTt3q3JFFlMOHZc=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jFHvl2qJU/Li9r8Gfj5dRUo2GwbmLKmWKSTDJz3SlurnfMN61L8vtW4D8ycJ1P27U
	 FvylZNe9hC94Noac4GZlA+fpYjIi6VwXi/DAB6q4m6Zn5Q0dppwPF5GtgnEtc3C9fl
	 2QaUulM97qxqI7OtHz8Ae1kOZlAGNvQUmEsq4/y2Uy0jgRs5aP3NLJuLOcGbo1Hfkn
	 OHuQjQF9YQ5YtnIOMDXTSd1FTSYCkeHXNLSmKkBS+kzdHIlQppJQP3uJAawdiZVxQb
	 hcJh1zcLhXg9tXcpZy4oV2DRcIQjl2Y2c07+FAP5nXULE4X6OoFpyQiA8yvDb+/r+7
	 f3qNSiv6Nz9kg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AEAEF6071A;
	Mon,  6 Jan 2025 11:44:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id EB9EADB4
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CC813403E1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:44:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cUphjtnAgavZ for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Jan 2025 11:44:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2DAEC40292
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DAEC40292
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2DAEC40292
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Jan 2025 11:44:16 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 3EC4C5C581B;
 Mon,  6 Jan 2025 11:43:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F152DC4CED2;
 Mon,  6 Jan 2025 11:44:12 +0000 (UTC)
Date: Mon, 6 Jan 2025 11:44:10 +0000
From: Simon Horman <horms@kernel.org>
To: linux@treblig.org
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20250106114410.GF4068@kernel.org>
References: <20241221184247.118752-1-linux@treblig.org>
 <20241221184247.118752-5-linux@treblig.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241221184247.118752-5-linux@treblig.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1736163855;
 bh=6LYg1rlA0MJ220qd2hqANamMYWZBrpRvFVIe/2qfi6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s0RvsR5CIV7R7UsKEJJRo9gD7+BnowjDSbVyq+HtWzBxlKItiI9feN/ZOyKOw9+IZ
 nHFuK0TiP3DATmPbrYEQO4D4Lxzt0utztQzplWGKuKla8Ampu8l5pN7uDHPbZ6a4tO
 vxrxbmLmnuVSp7LCjul2xLXxKY8ohP22TY8gigHfpZLoj2TqLCrGeJxPtHYnUZeeSt
 w0/bGe6Rb8XoLfz8BWP9x51zlbiAPsWCG3Ckhsb84b4cS1RezDiPKirkh5X5NynaH2
 deIBKXtnCl37pw/K/1VIobLlo4TLZaEheCPemKhYJV/ZehZGByTfZ2KrzsPaB4D08e
 jSKXNthc2Yc2A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=s0RvsR5C
Subject: Re: [Intel-wired-lan] [RFC net-next 4/9] i40e: Deadcode profile code
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

On Sat, Dec 21, 2024 at 06:42:42PM +0000, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i40e_add_pinfo_to_list() was added in 2017 by
> commit 1d5c960c5ef5 ("i40e: new AQ commands")
> 
> i40e_find_section_in_profile() was added in 2019 by
> commit cdc594e00370 ("i40e: Implement DDP support in i40e driver")
> 
> Neither have been used.
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

Reviewed-by: Simon Horman <horms@kernel.org>

