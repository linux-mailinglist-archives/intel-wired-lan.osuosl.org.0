Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C10179320C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Sep 2023 00:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A8D960DF4;
	Tue,  5 Sep 2023 22:37:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A8D960DF4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693953471;
	bh=Y8m0ZUNZerRUy+OizE9c65/GfVccJQCjAuU86GpBEEg=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LHoxys8CHh1njnpoGy5WnF05F3RCfgsJY72lFpiQs0FnXP//q6A9cSSNJCI84TTPD
	 LxMPF8lOSTINcrWqqHhC/pIVpfpWlrWjU8umwxgJKJGJIgsN05lYxgx6QpnBK7sZyB
	 s9NtopLlvV3o3heWfbKKt6jRA3XTUH1o1OsfaqzOgyheuImEnmGZHDoxADt/zHs04J
	 t+lzQsDVzXoJVgjYw2DGThGYXr20eovZvW9zkLxYQ16ZD1WOGzTSr7IIV0R0vrJagF
	 HKTrwpfi/Pi29fLUJvmQ7KmtKYDCiBcrNkTk2ro5V25u5KjIJI2ZcCDz0wt7RQFaf+
	 ALvfAanBUO8Cg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LouchUSU8HGy; Tue,  5 Sep 2023 22:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 09F9E60BCB;
	Tue,  5 Sep 2023 22:37:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09F9E60BCB
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D08D1BF344
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 22:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0C2E381749
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 22:37:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0C2E381749
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0DeKKHCfl2R2 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 22:37:44 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E49C481746
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 22:37:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E49C481746
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 2C252CE11D9;
 Tue,  5 Sep 2023 22:37:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 05C34C433C7;
 Tue,  5 Sep 2023 22:37:34 +0000 (UTC)
Date: Tue, 5 Sep 2023 15:37:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Junfeng Guo <junfeng.guo@intel.com>
Message-ID: <20230905153734.18b9bc84@kernel.org>
In-Reply-To: <20230904021455.3944605-1-junfeng.guo@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1693953455;
 bh=d/sh29sVp2yI2/siIM8XCjBscl+j38GKqXME3fu5YvE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Kh4jroAUW2f1qvlnwj4WeBxWI2n219TB2O1eH9OphP/wrAwo8k7HuL9l6nRqfPltG
 Wk3jNFruqzyhYPFQ0WGrqJ3OqwgVPWcTnuUrq1l/dlBrakrxZVz73ry9u9mZz5SrLB
 ojqLy/sbP5vLD+d2Wz9miV5SX+iHReYeuytslWSsInrSgMCAbx4EnEsrt8TYom0Qnt
 A8LGCe2gQYlZtyuhq5CSFHrd6iDigSgI1dOPzDeKTKsvIKXAm0Rpax8vQIBWBA1c/P
 ffcHajG8WeB7U5e+k/UY7Oq/QPBiMhk5Pk/STwd98fZAIcsvP4HKDX6Ihta5+qEf+C
 iQKsW7c+8YbUA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Kh4jroAU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org, jesse.brandeburg@intel.com,
 edumazet@google.com, anthony.l.nguyen@intel.com, horms@kernel.org,
 qi.z.zhang@intel.com, intel-wired-lan@lists.osuosl.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon,  4 Sep 2023 10:14:40 +0800 Junfeng Guo wrote:
> Current software architecture for flow filtering offloading limited
> the capability of Intel Ethernet 800 Series Dynamic Device
> Personalization (DDP) Package. The flow filtering offloading in the
> driver is enabled based on the naming parsers, each flow pattern is
> represented by a protocol header stack. And there are multiple layers
> (e.g., virtchnl) to maintain their own enum/macro/structure
> to represent a protocol header (IP, TCP, UDP ...), thus the extra
> parsers to verify if a pattern is supported by hardware or not as
> well as the extra converters that to translate represents between
> different layers. Every time a new protocol/field is requested to be
> supported, the corresponding logic for the parsers and the converters
> needs to be modified accordingly. Thus, huge & redundant efforts are
> required to support the increasing flow filtering offloading features,
> especially for the tunnel types flow filtering.

Are you talking about problems internal to ICE or the flower interface?

> This patch set provides a way for applications to send down training
> packets & masks (in binary) to the driver. Then these binary data
> would be used by the driver to generate certain data that are needed
> to create a filter rule in the filtering stage of switch/RSS/FDIR.

What's the API for the user? I see a whole bunch of functions added here
which never get called.

> Note that the impact of a malicious rule in the raw packet filter is
> limited to performance rather than functionality. It may affect the
> performance of the workload, similar to other limitations in FDIR/RSS
> on AVF. For example, there is no resource boundary for VF FDIR/RSS
> rules, so one malicious VF could potentially make other VFs
> inefficient in offloading.
> 
> The parser library is expected to include boundary checks to prevent
> critical errors such as infinite loops or segmentation faults.
> However, only implementing and validating the parser emulator in a
> sandbox environment (like ebpf) presents a challenge.
> 
> The idea is to make the driver be able to learn from the DDP package
> directly to understand how the hardware parser works (i.e., the
> Parser Library), so that it can process on the raw training packet
> (in binary) directly and create the filter rule accordingly.

No idea what this means in terms of the larger networking stack.

> Based on this Parser Library, the raw flow filtering of
> switch/RSS/FDIR could be enabled to allow new flow filtering
> offloading features to be supported without any driver changes (only
> need to update the DDP package).

Sounds like you are talking about some vague "vision" rather than 
the code you're actually posting.

Given that you've posted 5 versions of this to netdev and got no
notable comments, please don't CC netdev on the next version
until you get some reviews inside Intel. Stuff like:

+#define ICE_ERR_NOT_IMPL		-1

should get caught by internal review.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
