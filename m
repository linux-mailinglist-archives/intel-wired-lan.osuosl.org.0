Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A2C8FDB9D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 02:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AEDF84177A;
	Thu,  6 Jun 2024 00:48:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EcTiA6kHpfVd; Thu,  6 Jun 2024 00:48:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E795C41752
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717634892;
	bh=TfuVFCZUHPkqaIi38Sk+ere1iHc45nTqjxcpgOQWW8k=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=co19COlMnxMhmPF+RbHc/A21u+si23qXBJkNFWfl26PTtkkoB3G5jiqiw9qZOaRoH
	 Qa2sFHAwu5RuUjLQ/YMftySC9af308VyH5mtjCjzgCRdg3whBVP0VyQ08lwTyapJcO
	 JZKw23j425IwLwVbhP8zVLFCaJCT8gwogAL2nwbmifoYrzWwShaZfXKx0HTvGXqUgi
	 sKtOKT4xxBqKogL8C1M9751uD+Km/3jH+J2n9FznvTRW8S4ayHPYo63VIXM/uv88A7
	 rQkQZvm4+veAM4m2Dg8k/a3Z5m2gB/JJ4TVWbUUeO7o4PlwEu6AhMdShjFSc9uT0g1
	 cXIWwS/a9Mf8w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E795C41752;
	Thu,  6 Jun 2024 00:48:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E70301BF865
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:48:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D3357606DA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:48:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Gb1yp6bpFQ5p for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 00:48:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 054B660674
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 054B660674
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 054B660674
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 00:48:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id EF5F6CE182F;
 Thu,  6 Jun 2024 00:48:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2BBDC3277B;
 Thu,  6 Jun 2024 00:48:03 +0000 (UTC)
Date: Wed, 5 Jun 2024 17:48:02 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20240605174802.0add2109@kernel.org>
In-Reply-To: <20240604221327.299184-2-jesse.brandeburg@intel.com>
References: <20240604221327.299184-1-jesse.brandeburg@intel.com>
 <20240604221327.299184-2-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717634884;
 bh=iR7qCGvKa4GnFOsr+YD5UM3cwMIqnABlfcxvyTOVjrE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cxQOtYhFIW8MSns9cdM8Uwmas6i11mn/mUelZKrNhdRzSenZBRCt2ZwgbpRRe4KB+
 rM7CoHsvr25aF4VkzTFZ9R7O2u0hKr5CjbzrxdMps+xhgaXAEwyIvwJcdRo7p+d5wV
 MQk/2Pwktuh9Kj1qoA21sKkHR2nNhXD87R7feppv27C+qfq3vgFGPaXHUt4qXPUmoB
 CR3nVP1HL/a2uzgMu3rHOqWbQ0cTg5abnfLEPkajTUbHRJTlRGId5p5uVWezlCu0ZY
 ENhbwF0XGGwsGBBaupu1lMNDL8EalhhkYTmCLaoLqOkgdwCmSsDhhvHLX7q0vM9fKr
 gPISttyedlh0Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cxQOtYhF
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/5] net: docs: add
 missing features that can have stats
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
Cc: linux-doc@vger.kernel.org, netdev@vger.kernel.org, corbet@lwn.net,
 intel-wired-lan@lists.osuosl.org, Jacob Keller <jacob.e.keller@intel.com>,
 Rahul Rameshbabu <rrameshbabu@nvidia.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  4 Jun 2024 15:13:21 -0700 Jesse Brandeburg wrote:
> -  - `ETHTOOL_MSG_PAUSE_GET`
>    - `ETHTOOL_MSG_FEC_GET`
> +  - 'ETHTOOL_MSG_LINKSTATE_GET'
>    - `ETHTOOL_MSG_MM_GET`
> +  - `ETHTOOL_MSG_PAUSE_GET`
> +  - 'ETHTOOL_MSG_TSINFO_GET'

I was going to steal this directly but:
` vs '
so I'll let it go via the Intel tree :)
