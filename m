Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01723867D8C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Feb 2024 18:09:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5F87D60AA4;
	Mon, 26 Feb 2024 17:09:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HYOySp3w4z1v; Mon, 26 Feb 2024 17:09:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4D8B60709
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708967377;
	bh=S0UAjVw/jjCRAZk/nRE9/guzBkNlMBdnxNSD0wdLhCI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PPMa0XxGvHbLozGAyFcHBuv95nuaIV0FA/nEzQpYjSFHUbVZMV98MSo0vTJni87Qq
	 sHUntCpBy1LgDvTx/yXhma589Fw3ZfvtqgiKPzfOJcByTOCkDpHwyiXP58m4QXUDpE
	 4AJ0gnWr9R6kD3DhzYuRb79uLx633ouZrdHlJNAbvajh9qVEmdHFeFKj0BGZywgeYq
	 1kBL0ssPLtrwAX/vmRoibqwlMf/s6VvXu3hPnjU1XoHXFeALjVWpnrOB1a29+DygsX
	 xUwy9dYtkfgOMn3eLn1Rlxr3smrVJak7Bs4hlPXMNn2K4gDWaWsgKfxwA6MLuJlEB4
	 g+WeOWw5YE1PQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4D8B60709;
	Mon, 26 Feb 2024 17:09:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8126A1BF3E9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 17:09:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6CEF060849
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 17:09:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UalX6bT4jRTN for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Feb 2024 17:09:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:40e1:4800::1; helo=sin.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1CD3F60709
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1CD3F60709
Received: from sin.source.kernel.org (sin.source.kernel.org
 [IPv6:2604:1380:40e1:4800::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1CD3F60709
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Feb 2024 17:09:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 7A19CCE1258;
 Mon, 26 Feb 2024 17:09:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAB7CC433C7;
 Mon, 26 Feb 2024 17:09:27 +0000 (UTC)
Date: Mon, 26 Feb 2024 17:09:25 +0000
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240226170925.GF13129@kernel.org>
References: <20240223064024.4333-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240223064024.4333-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1708967368;
 bh=O59zq4ZquGyuGfD7zdDDda7h6I2IBDplOrak/rEy9pM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OKthYGNnPHmyphliFdWZkO6MenLmjV2iwS2X6auMHX808B8tsBTweDlL5ykcQE3z9
 sVVxjLCd/o5nnC92pYJQD2FADGjclYiPQbW9WyMWts0G6R3/NgPY0LVlOinxAvTLZv
 rE6Nl6pzzmL2JZ7kv4Q8eMO8MlUepmnl/g5BvjpUAiRFTVp45zGYpsmCA8vQvIw7Dj
 xyCIZHqwveELhvdlYm8EAE0b/evE5McaWWDZ1vkGMUDCCS0IOWQxzB1Mzahqvf5I+T
 GGVJ2UiZArvPajJzDO+Nw4Keaj4mBT8kl2SZrFu2Bf6gl1uqP4zIZ3WoO2kjz6Hqqs
 rLHa09yXXrLFg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=OKthYGNn
Subject: Re: [Intel-wired-lan] [iwl-net v1] ice: reconfig host after
 changing MSI-X on VF
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
Cc: Jacob Keller <jacob.e.keller@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Feb 23, 2024 at 07:40:24AM +0100, Michal Swiatkowski wrote:
> During VSI reconfiguration filters and VSI config which is set in
> ice_vf_init_host_cfg() are lost. Recall the host configuration function
> to restore them.
> 
> Without this config VF on which MSI-X amount was changed might had a
> connection problems.
> 
> Fixes: 4d38cb44bd32 ("ice: manage VFs MSI-X using resource tracking")
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

