Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167DF943986
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Aug 2024 01:53:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 97A4740124;
	Wed, 31 Jul 2024 23:52:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y08lsoja6xuh; Wed, 31 Jul 2024 23:52:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC3B5405F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722469978;
	bh=lm3j1xdzYpcpoFEdtpSi/NhrcwFeBNmRdzqD+wEVuI0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=I5gQlYoNLUeGkGWelK/TUx9F+zd5XviBOF/c1MHEBtht4wEmpbgS9aXX8QDognkj6
	 7EqOmzWgyomBcIyDiMQB5/rxpiIftg9BY/9WnjBqRM2ZE/+BLOSmiV77sH7NTXsUZT
	 Orhv4ed1OefYC2pT+drV7QA6TzeTTqEsPfT0fgm+SdcqUyENZ0J/jwfjQVy06oXCAj
	 lSBJkxbpWV6p+wtFvDJ9aFrG9nBP55kW3ApvnQvSeartkntK0QvyztD3z4NnCVp82L
	 pG5DgubA9kAR06XVijuBJ3aBkb5ljmMHq0HedT1w4i+GNR80q+RcabkeNIJc5jkRFm
	 ympVhRU7Z1+kw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC3B5405F6;
	Wed, 31 Jul 2024 23:52:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 38DB91BF592
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:52:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3202481A50
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:52:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nWypEtQq7Aai for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 Jul 2024 23:52:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 6A43781A4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6A43781A4E
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6A43781A4E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 Jul 2024 23:52:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 9866E6260F;
 Wed, 31 Jul 2024 23:52:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75140C116B1;
 Wed, 31 Jul 2024 23:52:54 +0000 (UTC)
Date: Wed, 31 Jul 2024 16:52:53 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Message-ID: <20240731165253.2571b254@kernel.org>
In-Reply-To: <d805bea3-cb2f-4e2c-a07a-27b8b4c5f294@intel.com>
References: <20240730012212.775814-1-yoong.siang.song@intel.com>
 <20240730075507.7cf8741f@kernel.org>
 <PH0PR11MB5830E21A96A862B194D4A4A5D8B12@PH0PR11MB5830.namprd11.prod.outlook.com>
 <20240731074351.13676228@kernel.org>
 <d805bea3-cb2f-4e2c-a07a-27b8b4c5f294@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1722469975;
 bh=lm3j1xdzYpcpoFEdtpSi/NhrcwFeBNmRdzqD+wEVuI0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P7osGmom/a484+ejw0mw+VTijyJ1qBvZOE00p4wOUNcTO7/Ap3tXxnLoAajxa0f8m
 5lX3xcM0AFw3wqi/nmZ4eJgrRFXt5O0JB4cRaGiST76rIl/TNDghvLSbmJmhoaAG6b
 G+mH1CAfvPRuwdEBNBYYVkPk97Wu9UkZxDY2EFQUlrqOjChx9ONsHdB7NNsoUXNrve
 yiR9hxyHIC7UJtN/2lQkc/EsS+8neoHY5F65JchlBVNivWHIQGh5HyZq9ufc2It4M4
 f476cPG0hdIUcQW+0uVHLZD8BBngkwES7Y7Fb8INXdTSaJqkdEyT3FRIK3zIqAITXp
 d4948A/JOyvHw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=P7osGmom
Subject: Re: [Intel-wired-lan] [PATCH iwl-next,
 v1 0/3] Add Default Rx Queue Setting for igc driver
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
Cc: "Neftin, Sasha" <sasha.neftin@intel.com>,
 Brett Creeley <brett.creeley@amd.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Blanco Alcaine,
 Hector" <hector.blanco.alcaine@intel.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 "Gomes, Vinicius" <vinicius.gomes@intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>,
 Shinas Rasheed <srasheed@marvell.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "Tian, 
 Kevin" <kevin.tian@intel.com>, Jesper Dangaard Brouer <hawk@kernel.org>,
 Richard Cochran <richardcochran@gmail.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hay,
 Joshua A" <joshua.a.hay@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Song,
 Yoong Siang" <yoong.siang.song@intel.com>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 31 Jul 2024 09:41:16 -0700 Jacob Keller wrote:
> In this case, (I haven't dug into the actual patches or code), I suspect
> the driver will need to validate the location values when adding rules
> to ensure that all rules which don't use the default queue have higher
> priority than the wild card rule. The request to add a filter should
> reject the rule in the case where a default queue rule was added with a
> higher priority location.

Maybe I shouldn't say it aloud but picking a "known" location for such
a wildcard rule wouldn't be the worst thing. Obviously better if the
driver just understand ordering!
