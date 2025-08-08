Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBC7B1E99B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Aug 2025 15:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCAF340C13;
	Fri,  8 Aug 2025 13:53:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yRy5TKmT3wP1; Fri,  8 Aug 2025 13:53:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 464A740BF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1754661210;
	bh=p7bRMqAzrjsCRN7Bx5odHiqIxGWVMZO1wOpkA2r0w2Q=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2wHgB8Mbcn4SuD4fheC2aazueu/v7oIZkZnQddJ7XaU7s7HCCIHktyj/gz/Uj28Ng
	 +sF7YifuKggGUoDYSkV2yijbJESu3UnYUcojmbSHK4GahtLYA6myiGrpwvgULldMCR
	 lFTr146xcQDSvx07ic4VXGIUivD7rYvvte7vu9EIakbIhzAUiJ+4+2MkSn6i6Jsxja
	 6HL7p0SnSwgxzEn1nZpB4dfYcsTsu7WfP4xuk2l1iYqBGc8unR+oQsJnaj1+Yp/9KQ
	 VULy8vn86kRC4NA3ENgr18RQBPceIeoHMaEGa8PPxoRiJPYflrOlbtkfeOvEa4ZmxG
	 Vff7lVuL6HkwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 464A740BF6;
	Fri,  8 Aug 2025 13:53:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id D28C89CF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C072481EC4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yktiDN0nGWZ2 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
X-Greylist: delayed 558 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 08 Aug 2025 13:53:27 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 2254D81EA4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2254D81EA4
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c04:e001:324:0:1991:8:25; helo=tor.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
Received: from tor.source.kernel.org (tor.source.kernel.org
 [IPv6:2600:3c04:e001:324:0:1991:8:25])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2254D81EA4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Aug 2025 13:53:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1BB5461425;
 Fri,  8 Aug 2025 13:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D156EC4CEED;
 Fri,  8 Aug 2025 13:44:05 +0000 (UTC)
Date: Fri, 8 Aug 2025 14:44:03 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org
Message-ID: <20250808134403.GA4654@horms.kernel.org>
References: <2f87d6e9-9eb6-4532-8a1d-c88e91aac563@jacekk.info>
 <6abd035f-c568-424c-bdbc-6b9cbcb45e1e@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6abd035f-c568-424c-bdbc-6b9cbcb45e1e@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1754660647;
 bh=aDf7NMnkN5iw5doUTcNxOHGeiGXtGbenvGGZZatXars=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=m/QN9mi9RHJ3bVb07VsDSMcbfzhsbwdsNTUpwDrlzuz10p5yM0UmlM48NZqXI0pZE
 c+G98gmElQavOm2uFsidhh7kJHcTREiVMa27cO2tilmvpXbk8V+m7gRtg3gDzcCi7k
 9CtgzgQMIbQsBgzYZMHVytkhCnYLe5hW3+KydLJAofAvGCfHvK4dqQycQMWlCpLhxm
 GLDIYkt2EzrnFXVyvFklptsNGDA0kaui+fw++uzfKchz8+ikiDPB+Ixrd+jR2Ic16D
 nXJ+k6ikQIew5Q4fZy7sP0SzdybYYc9i8VZIEwRCM4gpOYN/6Fwnffwd/fqGJ3jJ6O
 VHl3axENqe9cg==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=m/QN9mi9
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/5] e1000: drop
 unnecessary constant casts to u16
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

On Wed, Jul 23, 2025 at 10:54:11AM +0200, Jacek Kowalski wrote:
> Remove unnecessary casts of constant values to u16.
> C's integer promotion rules make them ints no matter what.
> 
> Additionally replace E1000_MNG_VLAN_NONE with resulting value
> rather than casting -1 to u16.
> 
> Signed-off-by: Jacek Kowalski <jacek@jacekk.info>
> Suggested-by: Simon Horman <horms@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

