Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SDnNEIxJd2mLdwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:01:32 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE7987719
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Jan 2026 12:01:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68DB3407F3;
	Mon, 26 Jan 2026 11:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id K12r6CvbSt7H; Mon, 26 Jan 2026 11:01:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8AE0406FA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769425285;
	bh=MYmX4+T5akMwfmJjYeYg/R1VNYNP7zJYZ7pMIwwLk8E=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VoXdH/C2irwCOqCPBKWfd2xZTCqrd00syy1CzAV+TQX/svxZJLgv6gYms7Kzqsm6l
	 yiiT2kqqbN8j/WIgzLBCO9fesZrD7ACmJZi4PQ4r5l0T4f5aNJF5R2RPm1BOPor2nA
	 Q/lxZwN4w9D+Myv7Vgoh5wFNOnwjYDdmmFJcFpLdCq4+7REvqpZG3UDP+YJ/FF10BX
	 o0hvnHN806NgBvaXXe8yIWdT3yQYkD2rLD0A+TikqJvY8xOfeeSGOxP53de4OPW7Xy
	 ZKj/ippFzOG/PAvaHI7N/HZt8u4tLL7+prQkUleF1clmDs76/H34hyaS6ruSODaLnE
	 H2mTCvrU8fG1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B8AE0406FA;
	Mon, 26 Jan 2026 11:01:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 29030355
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:01:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0BC1240836
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:01:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vnr5hlIYmVdD for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Jan 2026 11:01:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 54CAE40833
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 54CAE40833
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 54CAE40833
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Jan 2026 11:01:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id C812743445;
 Mon, 26 Jan 2026 11:01:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 354F8C116C6;
 Mon, 26 Jan 2026 11:01:21 +0000 (UTC)
Date: Mon, 26 Jan 2026 11:01:18 +0000
From: Simon Horman <horms@kernel.org>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
Cc: "Kwapulinski, Piotr" <piotr.kwapulinski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Message-ID: <aXdJfu8Lml_dnjd3@horms.kernel.org>
References: <20260122164632.112607-1-piotr.kwapulinski@intel.com>
 <aXPU4YQi73T088lS@horms.kernel.org>
 <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CO1PR11MB508945D598B6284773B6E9E4D694A@CO1PR11MB5089.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1769425282;
 bh=63TN7QkZFEfpjv3JCIQCeLZhAYXlS3k1CkWWAp/J7Ko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NXh8D1bI1mTXEW0Y0Eoa5tzXUgVWZsB9ygK+gp76mzHVBTYVx2AkipxEeCsdzGkLz
 r7C87jtd8YGiWP160roI8zhB0GQCtAnkHFEevyq/GFXXFT0nOqhGV4aMTDzUL/p7jo
 3WPr44xRNljALRQbOK+6GBjP0vnlW+ny/WOlw57UUGcZKILMu7eZLzWoP1ROG0uptN
 AMtSCQ5mFAdf8VZfjJD/0enoSNKq5fOHUd9whUmaFyNFWs4ZuPdlZQnB592ogufBF2
 J9aXoMOLWp9PI102j6Ht5V97DBbT/XOAifA3hnYRSEoRyo3FA9t/SAcEi1BvM2qKyx
 hXRugYFKcHDfw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=NXh8D1bI
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] ixgbe: e610: Convert
 ACI descriptor buffer to little endian
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,intel.com:email,mpg.de:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:piotr.kwapulinski@intel.com,m:netdev@vger.kernel.org,m:dan.carpenter@linaro.org,m:pmenzel@molgen.mpg.de,m:aleksandr.loktionov@intel.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3BE7987719
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 11:41:26PM +0000, Keller, Jacob E wrote:
> 
> 
> > -----Original Message-----
> > From: Simon Horman <horms@kernel.org>
> > Sent: Friday, January 23, 2026 12:07 PM
> > To: Kwapulinski, Piotr <piotr.kwapulinski@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org;
> > dan.carpenter@linaro.org; pmenzel@molgen.mpg.de; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>
> > Subject: Re: [PATCH iwl-next v2 1/2] ixgbe: e610: Convert ACI descriptor
> > buffer to little endian
> > 
> > On Thu, Jan 22, 2026 at 05:46:32PM +0100, Piotr Kwapulinski wrote:
> > > The ixgbe device registers/descriptors expect little-endian ordering. Make
> > > the code aware that the e610 adapter operates on data with little endian
> > > ordering. The extra conversion is required on big-endian hosts. In most
> > > scenarios this conversion is not required.
> > >
> > > Fixes: 46761fd52a88 ("ixgbe: Add support for E610 FW Admin Command
> > Interface")
> > > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> > > ---
> > >  drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > index c2f8189..f494e90 100644
> > > --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
> > > @@ -113,7 +113,8 @@ static int ixgbe_aci_send_cmd_execute(struct
> > ixgbe_hw *hw,
> > >
> > >  	/* Descriptor is written to specific registers */
> > >  	for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++)
> > > -		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i), raw_desc[i]);
> > > +		IXGBE_WRITE_REG(hw, IXGBE_PF_HIDA(i),
> > > +				le32_to_cpu(raw_desc[i]));
> > 
> > IXGBE_WRITE_REG is backed by writel.  And my understanding is that writel
> > converts values from host byte order to little endian.  So I'm confused
> > about where this is going.
> > 
> 
> Yes, it should. In this case, the raw_desc value is being converted *to* CPU order to work with writel... 

Yes, sorry. I seem to have completely confused myself there.

> > >  	/* SW has to set PF_HICR.C bit and clear PF_HICR.SV and
> > >  	 * PF_HICR_EV
> > > @@ -145,7 +146,7 @@ static int ixgbe_aci_send_cmd_execute(struct
> > ixgbe_hw *hw,
> > >  	if ((hicr & IXGBE_PF_HICR_SV)) {
> > >  		for (i = 0; i < IXGBE_ACI_DESC_SIZE_IN_DWORDS; i++) {
> > >  			raw_desc[i] = IXGBE_READ_REG(hw,
> > IXGBE_PF_HIDA(i));
> > > -			raw_desc[i] = raw_desc[i];
> > 
> > I'm also curious to know what the intent (if any) of the line above was/is.
> > 
> > > +			raw_desc[i] = cpu_to_le32(raw_desc[i]);
> 
> 
> It's being converted to LE32 order here. But if nothing else touches raw_desc is there any reason to convert??
> 
> > 
> > Please don't use the same variable to store both host byte order and little
> > endian values.  In this case I'd use another local variable, say scoped to
> > within this block, to store the intermediate value.
> > 
> > And if raw_desc will be used to hold __le32 values, it's type should be
> > updated.
> > 
> 
> If I understand Simon's comments correctly, this whole change is a no-op, and unnecessary. Writel and readl already handle conversion to CPU format, so unless you have some issue because raw_desc is assumed to be LE32 somewhere else, I think this patch should be dropped. If you do have a real case where something was wrong, can you please provide details?

Sorry for not being clearer.

I'm suspecting that the issue that this patch tries to address
is that the backing structure, struct libie_aq_desc, is described in terms
of __le integers.

I haven't dug deep enough to be able to say if that is a good approach or not.
But if that data is __le, then I expect that some sort of conversion along
the lines of this patch makes sense.
