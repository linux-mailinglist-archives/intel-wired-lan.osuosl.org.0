Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D822AC1D81
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 May 2025 09:19:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id CA02483EC0;
	Fri, 23 May 2025 07:19:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjOAgA_yG_IJ; Fri, 23 May 2025 07:19:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AC08083EC1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1747984757;
	bh=C8+BNZNujDFN3eVZLxQWIwAo0uDlyJkI2TQ5gVhXrdI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=KuImRtjRjb9o5vbSuVNyhz+1DpTs4ZNRcp+1SQEvOo3qzDdamDDVf7lnPjMGPtSxA
	 JEE7FbpHSM2lcyFaNXN1Vp/oXYOT0QdR3Jw89PXulPfVM58une92WNf9hmKGBv0k8r
	 ZtgPalsxjHL8pPgJX4re+H5sqvwgSVI5TrXqgUr+smWVhn1RtmkbL8kSaCuByweDmQ
	 qJmw29TzQvf8k/kYjlgNvFOrLEZ5sEjXj1WPc5yUhqbdNJBfagoWLY/JP/uENZ2m7L
	 MVhxbPHSMMpKgrbLLKJc3le77gMNudL9gciL+f8kPyyjm1qGQjR+xILXAQO10uUEmi
	 gmwslpNVB/IlQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id AC08083EC1;
	Fri, 23 May 2025 07:19:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 00230119
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:19:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DA97C408BD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:19:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fF0ofaGIEPBA for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 May 2025 07:19:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44C5D405FA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44C5D405FA
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44C5D405FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 May 2025 07:19:15 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BC1D04A956;
 Fri, 23 May 2025 07:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55332C4CEE9;
 Fri, 23 May 2025 07:19:12 +0000 (UTC)
Date: Fri, 23 May 2025 08:19:09 +0100
From: Simon Horman <horms@kernel.org>
To: ALOK TIWARI <alok.a.tiwari@oracle.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, darren.kenny@oracle.com
Message-ID: <20250523071909.GO365796@horms.kernel.org>
References: <20250522074734.3634633-1-alok.a.tiwari@oracle.com>
 <20250522172108.GK365796@horms.kernel.org>
 <ce71fa5a-32c0-4cc2-b537-5849d9bdea69@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ce71fa5a-32c0-4cc2-b537-5849d9bdea69@oracle.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1747984754;
 bh=cF6q0OF3ObaHB4048Y7VWI+YiR+Cr3QfGImat8OqjCc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HJ73satFuXTVEnH5OOyw4KCJMCaxYOiGZR8TXbSN/JMNLWnpB1UJmybPYUWEWmktx
 sssB2YYTB/4C79MWep/M2+eVRjjEn7Yrt/z1+60+jMAE80IUNfTG2tco2a7sWORlpX
 rGEfL6OyqpLXLPISo9spiY2n1qucO9tTV0JhrPH+CJUN126EKjcYrzjVdNEEJEm61k
 TlhgoETlYeSNm8W3xM8vMuJ+HeVZmbIH7CRPMN2P22cFLgF4LZiv/uY6pGrcDG/Unk
 LVe2FjiQmkIAnpz4wJPG97oK1k9BKAlripxiXM+H9Fzc9fJItWvuxWR/5knm3zvlsp
 JMaCSY6kgnGVg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=HJ73satF
Subject: Re: [Intel-wired-lan] [External] : Re: [PATCH] ixgbe: Fix typos and
 clarify comments in X550 driver code
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

On Thu, May 22, 2025 at 11:41:00PM +0530, ALOK TIWARI wrote:
> Hi Simon,
> 
> Thanks for Your review.
> 
> On 22-05-2025 22:51, Simon Horman wrote:
> > > @@ -1754,7 +1754,7 @@ ixgbe_setup_mac_link_sfp_n(struct ixgbe_hw *hw, ixgbe_link_speed speed,
> > >   	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
> > >   	/* If no SFP module present, then return success. Return success since
> > > -	 * SFP not present error is not excepted in the setup MAC link flow.
> > > +	 * SFP not present error is not accepted in the setup MAC link flow.
> > I wonder if "excepted" was supposed to be "expected".
> 
> 
> Yes, "expected" definitely reads more naturally. However, I noticed that in
> one place, the comment uses "accepted" instead — perhaps to imply a policy
> or behavior enforcement.

Understood. I did hesitate in writing my previous email as I'm not entirely
sure what the intention was. I do agree that accepted makes sense.
And I'm happy to keep that in the absence of more information.

> 
> ------------------
> static int
> ixgbe_setup_mac_link_sfp_x550em(struct ixgbe_hw *hw,
>                                 ixgbe_link_speed speed,
>                                 __always_unused bool
> autoneg_wait_to_complete)
> {
>         bool setup_linear = false;
>         u16 reg_slice, reg_val;
>         int status;
> 
>         /* Check if SFP module is supported and linear */
>         status = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
> 
>         /* If no SFP module present, then return success. Return success
> since
>          * there is no reason to configure CS4227 and SFP not present error
> is
>          * not accepted in the setup MAC link flow.
>          */
>         if (status == -ENOENT)
> --------------------
> 
> > 
> > >   	 */
> > >   	if (ret_val == -ENOENT)
> > >   		return 0;
> > > @@ -1804,7 +1804,7 @@ ixgbe_setup_mac_link_sfp_x550a(struct ixgbe_hw *hw, ixgbe_link_speed speed,
> > >   	ret_val = ixgbe_supported_sfp_modules_X550em(hw, &setup_linear);
> > >   	/* If no SFP module present, then return success. Return success since
> > > -	 * SFP not present error is not excepted in the setup MAC link flow.
> > > +	 * SFP not present error is not accepted in the setup MAC link flow.
> > Ditto.
> > 
> > >   	 */
> > >   	if (ret_val == -ENOENT)
> > >   		return 0;
> > The above notwithstanding, this looks good to me.
> > 
> > Reviewed-by: Simon Horman<horms@kernel.org>
> 
> 
> Thanks,
> Alok
> 
