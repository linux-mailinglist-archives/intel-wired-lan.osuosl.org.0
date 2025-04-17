Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD95A91AA0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Apr 2025 13:22:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70F416FCAC;
	Thu, 17 Apr 2025 11:22:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7JqUYn8hfNAb; Thu, 17 Apr 2025 11:22:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 026FA6FC21
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744888924;
	bh=Lwdt1k/WASusspfFIsyvTZw5zlfO2pZRKCjBVupFKgE=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NlUT3hjhnlBwprkbVdesAlUM8amzhCEwNHOYRfWy1a9jmKdqzxhxW46thgAfgIqZO
	 cGFzogSpP14SRdhLiTkNVEXEhxtgs6NVGjsKMF47X9A9RZKjnPfUhzBHPukWwrEsqT
	 hO+puLMUevgU7pfKpDUMppZpSFfmnb0YREJeqhDmrtiEMsAyiDtVALRSblms82JKs4
	 EcrxWim+8xYuFfrRMO78dDGJ0QrepvZrbep4WTbWs5o+rL9V/nbZ14uv19aJRFbCIX
	 PkDZn5gThzzH7AK6sE2uU2dINsprm4a6rDGt5BCRL/z57WDe4J86f6CtO0f5AH3VyA
	 Q9ImaRLZARkOw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 026FA6FC21;
	Thu, 17 Apr 2025 11:22:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 51DB022D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:22:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 37E1141747
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:22:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wlu-S6tHQScp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Apr 2025 11:22:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 94CF040BD6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94CF040BD6
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 94CF040BD6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Apr 2025 11:22:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7B9DC68448;
 Thu, 17 Apr 2025 11:21:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A39CDC4CEEB;
 Thu, 17 Apr 2025 11:21:58 +0000 (UTC)
Date: Thu, 17 Apr 2025 12:21:56 +0100
From: Simon Horman <horms@kernel.org>
To: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
Cc: jgg@nvidia.com, leon@kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org
Message-ID: <20250417112156.GF2430521@horms.kernel.org>
References: <20250416021549.606-1-tatyana.e.nikolova@intel.com>
 <20250416021549.606-5-tatyana.e.nikolova@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416021549.606-5-tatyana.e.nikolova@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744888920;
 bh=wWxqD7PLoMNqodfwOiSlpTMPsKQPQwdwPmoBHXS34CI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HuoXE6cJLXYX1IA083XIbNnOBowdqog2FTl9p2qbwwpFoz7V8R54PIvyTQruGL2DV
 j3wBG8ygGeQ5+RaOE57WfcZEsjVYsXw1qFaMk4T2Yu4au8ua1lMhtLinwkg//OpxeL
 MlY3SINHsyiaeGHCpzUTwiKO3NuhjFQSn0Wu7smDM6VjPV6epFtJk3UQfidR8biCRi
 iLrcSnbhuzne/Rjls0FPwsyGbpSjxQ4mqAKE39jNG/sr3hPnJUPinEk9RnJuoaWEf0
 MnQ8V8UdWqs2sWCWub8qA3W30CQfGATTuAgfKo7wQDASFokPlwXKUifsNkBOgRu4BB
 QWz6K3n89bNZQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HuoXE6cJ
Subject: Re: [Intel-wired-lan] [iwl-next v5 4/5] ice: Replace ice specific
 DSCP mapping num with a kernel define
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

On Tue, Apr 15, 2025 at 09:15:48PM -0500, Tatyana Nikolova wrote:
> Replace ice driver specific DSCP mapping number defines
> ICE_DSCP_NUM_VAL and IIDC_MAX_DSCP_MAPPING with
> an equivalent kernel define DSCP_MAX.
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Tatyana Nikolova <tatyana.e.nikolova@intel.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

