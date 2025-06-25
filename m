Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E264AE7DAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Jun 2025 11:44:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 75CEE41C54;
	Wed, 25 Jun 2025 09:44:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DLASi9QA4Og5; Wed, 25 Jun 2025 09:44:20 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED31041C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750844660;
	bh=I0utu56aZ6n5Owg4n+tilq/bJ1wfn2/ogGKNJ8f5FkU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XP2OKhpwcsnykrh45jb3f2A2Mm8x2s0DqZXOnEvIEuHBwLTfKaAnXMT0QKdV1zdSs
	 sUY0SXI2Op2q0HdTndnZk+lkcrFDzFNdlfakmOSBPJTv79RIeYSBB5T5SUOliMMk+C
	 H/utXbRSCMDMC7OPEJw+mBrhq2Juyq9NotFWyddu3qtyqEMbaLmKQGtYB7knlFNzYx
	 egCHCHHSRdOM9jpFOHGY0l6mZdA+tliMLV8q8SL5F65XMDhnm7Hn6RHBUeMmyGzt6A
	 ByjCgPZGjIzrFevzCd5ZGFTSI78dgFhRBZyYzEo9dMjWHqGWK1T5PoM0oI0GViXH7S
	 30WxcOaSYlEUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED31041C2E;
	Wed, 25 Jun 2025 09:44:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id D16C712C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 09:44:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C36B141C1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 09:44:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1nz2QB4hdJSW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Jun 2025 09:44:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 32CA941BF6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 32CA941BF6
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 32CA941BF6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Jun 2025 09:44:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id D7D5EA52017;
 Wed, 25 Jun 2025 09:44:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CBDDC4CEEA;
 Wed, 25 Jun 2025 09:44:13 +0000 (UTC)
Date: Wed, 25 Jun 2025 10:44:11 +0100
From: Simon Horman <horms@kernel.org>
To: Jacek Kowalski <jacek@jacekk.info>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vlad URSU <vlad@ursu.me>
Message-ID: <20250625094411.GM1562@horms.kernel.org>
References: <91030e0c-f55b-4b50-8265-2341dd515198@jacekk.info>
 <5c75ef9b-12f5-4923-aef8-01d6c998f0af@jacekk.info>
 <20250624194237.GI1562@horms.kernel.org>
 <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0407b67d-e63f-4a85-b3b4-1563335607dc@jacekk.info>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1750844655;
 bh=W44FJCHamTXPtN10U+bjllFqugIjjnTsBA1YGbThxRM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gfPTpJOxbuMLdlTMAF+9mgPwUBR8J9wF8R1FHHTG/AYf5uLPtu66JDmM4kOPMXOqm
 S+CE17kn0TWN3xnPG6GdGi+c/MhcPQShwaeNs48TacWFObdCejN543F4YPaW7lAunK
 nr/sPNanr+JA74wdS46gs8GTePilYZwA83AzN22VXAt7ltxVg/dEzYwu51APvM6UfM
 ln+KN77ghsEHASZMRzPa2REzw7wBNOhD+f/A29htGHmDdv2wrX/Q0GBGT94vewmJQV
 XSQv2l1yLsfb8bH2OabsCyEe9dVtLYKw3yyGaN31k/luJwFdsANt7YGlogo0KH9oh5
 56wn4q5tdWYnQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=gfPTpJOx
Subject: Re: [Intel-wired-lan] [PATCH v3 2/2] e1000e: ignore factory-default
 checksum value on TGP platform
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

On Tue, Jun 24, 2025 at 11:05:05PM +0200, Jacek Kowalski wrote:
> > > Unfortunately some systems have left the factory with an empty
> > > checksum. NVM is not modifiable on this platform, hence ignore
> > > checksum 0xFFFF on Tiger Lake systems to work around this.
> > 
> > I think that you need to update the patch description. As of v3 it's
> > the last word of the checksum that is being checked, not the entire
> > checksum.
> 
> As I understood it, "sum" is the resulting value while "checksum" is the
> value appended so that the "sum" is equal to some constant.
> 
> But my understanding is utterly broken by this line:
> 
> > > if (checksum != (u16)NVM_SUM) {
> 
> Where variable checksum (shall it be "sum"?) that includes
> "checksum" (or maybe checksum word?) from the *checksum* register address
> (NVM_CHECKSUM_REG) is compared to a constant called "NVM_SUM".

I agree with you in so far that there is room for interpretation on what
these terms mean. And I think your interpretation is internally consistent
(even if I might have interpreted things differently myself). But as you
say, the code seems to use these terms differently.

> Is something like this fine by you:
> 
> > Unfortunately some systems have left the factory with an unmodified
> > value of 0xFFFF at register address 0x3F (checksum word location).
> > So on Tiger Lake platform we ignore the computed checksum when such
> > condition is encountered.
> 
> ?

Yes, I think that matches the code change nicely.

> > > +#define NVM_CHECKSUM_FACTORY_DEFAULT 0xFFFF
> > 
> > Perhaps it is too long, but I liked Vlad's suggestion of naming this
> > NVM_CHECKSUM_WORD_FACTORY_DEFAULT.
> 
> I can update it as well once we agree on the wording.

Thanks.

> 
> 
> > > +	if (hw->mac.type == e1000_pch_tgp && nvm_data == NVM_CHECKSUM_FACTORY_DEFAULT) {
> > 
> > Please wrap the line above so it is 80 columns wide or less.
> 
> Wilco.

Likewise, thanks.
