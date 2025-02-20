Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 786D1A3DD7E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Feb 2025 15:58:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C8E2820A4;
	Thu, 20 Feb 2025 14:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BwV3V2VL9DgL; Thu, 20 Feb 2025 14:58:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7BAB68211B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1740063531;
	bh=rM8nwbPs/w2YbLKEL80LTPE8SFZg1dg76yoIJqWuBjM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7yNJjU7Wd5o1YsMCc+0l6KyqSjB25GIHrYaV2pSSZ0k64tSr/zXLy8ihu/SL93Usy
	 Hmjhy9HpvOBVFx2FhuXjr3NOMfyqdha1JdVhatUL+sKoLxPVlHspaMCuKP8BOpwaJQ
	 idDUd+PoAyHcXHHTEGpyf4JWcaiorcSGd8GR4J2qFv/Sv8czBCQonMdlzLa+NDCmRI
	 sK9Q4ZAhjSWHQ4k7cFt/TCsL5rMOUAyV+JhBMnRMH/Rr9g6gsNLn14LfxRC57Cgb6d
	 xhED+d3NxkynlKirvqVXz4pKn1S/fS5796sO5m+FDIa0ToqNsgcMYZrTD8WMGA0oK9
	 6RuOjmrKCpn6Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7BAB68211B;
	Thu, 20 Feb 2025 14:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A39CED92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 93A2340B75
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NA1JD8FlWa_R for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Feb 2025 14:58:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org CD07740898
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD07740898
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD07740898
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Feb 2025 14:58:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 05D065C5E4A;
 Thu, 20 Feb 2025 14:58:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56260C4CEDD;
 Thu, 20 Feb 2025 14:58:45 +0000 (UTC)
Date: Thu, 20 Feb 2025 14:58:43 +0000
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Pacuszka <mateuszx.pacuszka@intel.com>
Message-ID: <20250220145843.GC1615191@kernel.org>
References: <20250214085215.2846063-1-larysa.zaremba@intel.com>
 <20250214085215.2846063-6-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250214085215.2846063-6-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1740063527;
 bh=c7HIeEgMPymcUcuYz3GOcnJXu3nu0vfO8rhi1Vc1mE4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=A87R7E0Z+4G+OLBFHiyrxfV82fZS5t7k0Clurbj/+Hyuq+cRJG4bRXyDepsuIyMcu
 Fqo7BcDv2unOGoiPkXWhM+TT8fsMY+Izzn5/9IQu7O/9aAkwdDvEiK7VrUT/tZZuVA
 rPxsVv7dnyB7VP0lwNH1/fOq5IvKXZOKW3rrhHlarFKUKHLH9EtEyEeTimweCtcLJa
 sX7tGDkVz7kTOX6qK7ZRm1R3SyLU43wIH+GJl/ZyD3pKVUN+RG9rS1DDc2SMBbL9kW
 zlxqIqB99mikUTCoHSCY7ABbCjrAacaoyP4D2lvQvVCADyKGzY3Ci60Dj5htUIwz29
 YhCMw0elMce1w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=A87R7E0Z
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 5/6] ice: support egress
 drop rules on PF
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

On Fri, Feb 14, 2025 at 09:50:39AM +0100, Larysa Zaremba wrote:
> tc clsact qdisc allows us to add offloaded egress rules with commands such
> as the following one:
> 
> tc filter add dev <ifname> egress protocol lldp flower skip_sw action drop
> 
> Support the egress rule drop action when added to PF, with a few caveats:
> * in switchdev mode, all PF traffic has to go uplink with an exception for
>   LLDP that can be delegated to a single VSI at a time
> * in legacy mode, we cannot delegate LLDP functionality to another VSI, so
>   such packets from PF should not be blocked.
> 
> Also, simplify the rule direction logic, it was previously derived from
> actions, but actually can be inherited from the tc block (and flipped in
> case of port representors).
> 
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

