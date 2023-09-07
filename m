Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA166797CDB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 21:38:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4260C40091;
	Thu,  7 Sep 2023 19:38:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4260C40091
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694115529;
	bh=ST1GwjH+nd0Bg5UbOGMnbpk4kpSVOcsY7x2Qy43phNY=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Mpj4V8uZ9KNnd/d68fOjx6o9NczVI74lTdhae3LHgDr7bfOyxDQo40nekauV4kL9U
	 EHqZZRQW3u6zdI7LUbiK7ePdLmvHL88+CyS0PNWHJ9PhaduuLsehiTMxnhfhzHckQU
	 kAe8oRuZh2Oe0tHWARJzlbMeAGdw9Pj07GcBReFZjzRjKEnaJ5dNH3Zzl/iNYxaw3R
	 FPOa9wZEbV8KCdm2UBcD5LSoBlTpxMRjWjAfFHLD3pb7ooj+C8ZT5P0JM7n1nClIF0
	 QKs4POqMjeES0NuZLINuCsg8NdG+C14swOYfJKfhNo3dsJmFCh0cbL+hhDJQMAcdCE
	 1AZWJxf1Hjp+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BwH7mWgzUHRn; Thu,  7 Sep 2023 19:38:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BB9841D62;
	Thu,  7 Sep 2023 19:38:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BB9841D62
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 460521BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:38:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DE3140004
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:38:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1DE3140004
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ehEzypEJ8FVi for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 19:38:42 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4E14440424
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 19:38:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4E14440424
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3235661371;
 Thu,  7 Sep 2023 19:38:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28808C433C7;
 Thu,  7 Sep 2023 19:38:40 +0000 (UTC)
Date: Thu, 7 Sep 2023 12:38:39 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
Message-ID: <20230907123839.59a10f23@kernel.org>
In-Reply-To: <9d236687-6161-3e1b-f73f-ed9358e47577@intel.com>
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
 <9d236687-6161-3e1b-f73f-ed9358e47577@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1694115520;
 bh=qfQOR+G9SmAgbHYTVBt3SdKA3Duz9kjlW64D77WR2YI=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MBnpO7gNmF5DePYLCPnbrnfpKJhUTaXFKG9LDRyVo0ikbZJxR3n6BZa1OpWucxEWn
 3kG9pKQ0WDUiAFuOVG9DP47lBWjFDpOrrSeZ0Not0BB2uCwCUxXxP59rSP9I0IOZe0
 4Mlo7orUgTmrpIgLreqtw7iX9v6eX3LpOpl0+RhrakVGYS5GsW2yYP+OhYmHMQ8b5A
 ++I0QOCiCJxRcf4zEuK94hDDh1FqK/xXvoXZK+n+blthsRbFuQkCfey2QXNcIWUw8p
 90DB5ruR4ULU6AT6MG7bK5eFBkRhmSCvPivcPsHJMC2t/bFVJ6tPprjuhMGC+GO761
 yg+Px5hrxy4hA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MBnpO7gN
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
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 qi.z.zhang@intel.com, anthony.l.nguyen@intel.com, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 7 Sep 2023 14:08:15 -0500 Samudrala, Sridhar wrote:
> >> This patch set provides a way for applications to send down training
> >> packets & masks (in binary) to the driver. Then these binary data
> >> would be used by the driver to generate certain data that are needed
> >> to create a filter rule in the filtering stage of switch/RSS/FDIR.  
> > 
> > What's the API for the user? I see a whole bunch of functions added here
> > which never get called.  
> 
> This link shows an early version of a user of this patch series
> 	https://lore.kernel.org/intel-wired-lan/20230818064703.154183-1-junfeng.guo@intel.com/
> 
> This API is planned to be exposed to VF drivers via virtchnl interface 
> to pass raw training packets and masks. The VF using this API can only 
> steer RX traffic directed that VF to its own queues.

FWIW I have no idea what a "training packet and mask" is either.
Hopefully next version will come with a _much_ clearer high
level explanation.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
