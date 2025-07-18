Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FCD9B0AAFA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Jul 2025 22:09:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4A88984483;
	Fri, 18 Jul 2025 20:09:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OtoKmlooX9ob; Fri, 18 Jul 2025 20:09:02 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A6EBB84485
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1752869342;
	bh=1BLEtuK7pDnuFkTWGAtQMzEYdQPy5o20piclzcYw/wA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=xcoaudPBFB4BlbKxMGu8n2QFP8h4pnUHJLd80wK87IUV5LfQh31vtu/ohxnCnH5Od
	 XQ44+i0VcXYtyFBKzl6ImKSd/6E18Qc/pwuxBPE2/BIn4G8hmzEYHWK+octLx4plfI
	 NvAbzEpKgXbXWFtxLk2mBMurgftoPjS9IBcoTOk/7x6DgvhbyZuT7rai5iXmG//NZW
	 AM4D4g74+QWCeIqzBAOEvkbN+HiPs1OD2r0UPA3dT+FSbQdRTFDw7aZ6piBLoeU8mk
	 yAu/XrW3sEjRUygP+TWv6G1P0TQ3KIQLsnra6gaFX4Wht34oNPXyYb3a1DooSq1E6y
	 abrOydl+Hc4hQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A6EBB84485;
	Fri, 18 Jul 2025 20:09:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 592461A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 20:09:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3F75F417A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 20:09:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id i3Tlk_wiAjME for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Jul 2025 20:09:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:45d1:ec00::3; helo=nyc.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8C47D417A3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C47D417A3
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8C47D417A3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Jul 2025 20:09:00 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2EE65A5763C;
 Fri, 18 Jul 2025 20:08:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D8CDC4CEEB;
 Fri, 18 Jul 2025 20:08:57 +0000 (UTC)
Date: Fri, 18 Jul 2025 21:08:55 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 vgrinber@redhat.com, netdev@vger.kernel.org
Message-ID: <20250718200855.GN2459@horms.kernel.org>
References: <20250717-jk-ddp-safe-mode-issue-v1-0-e113b2baed79@intel.com>
 <20250717-jk-ddp-safe-mode-issue-v1-2-e113b2baed79@intel.com>
 <20250718165024.GI2459@horms.kernel.org>
 <95ddc646-d348-45e3-b1f8-b0f114163b11@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95ddc646-d348-45e3-b1f8-b0f114163b11@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1752869338;
 bh=NIAirv361kSK6wQiQmEm6VjaF36ZiNPPXMjFWF6plVw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oVKxT+fTu3BKTXZmbOMbGvbjWZlFeMQZlnIg7O3zbf1V+GSIHoiHklNba75yOYL59
 MHzFKlhzZ/+QJfDB7ugDVYY8dcyAQrW9bOvHnpAd6eAgHsV7n+XDHbuHkZvyJMZ0xx
 e0wJ0w/Q5hawTXUP0l8tGaPCvOVGjF4IOpSBVkBTT5WxSFF++tyT3zBYYq/uu23wry
 NmoHKc0KH33mpwrhcar1FBW43a5+H8/V8xVHUz30t/7m9EZjw026+QZtwsAfjd3B9V
 BJXecBSNFqsvibI3WpNVK6TN1C7UDg28LNE2rl/sNDuCi0DYlZhLTfivQy4NSMMLcD
 Gszq4HObfooNw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=oVKxT+fT
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] ice: don't leave device
 non-functional if Tx scheduler config fails
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

On Fri, Jul 18, 2025 at 12:56:29PM -0700, Jacob Keller wrote:
> 
> 
> On 7/18/2025 9:50 AM, Simon Horman wrote:
> > On Thu, Jul 17, 2025 at 09:57:09AM -0700, Jacob Keller wrote:
> >>
> >> Fixes: 91427e6d9030 ("ice: Support 5 layer topology")
> >> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> > 
> > Thanks for the extensive explanation.
> > 
> 
> Thanks. This took me forever to track down exactly what went wrong,
> enough that I had to have the customer send me the card back because we
> thought the firmware was unrecoverable and bricked.

Ouch!

...

> >>  	msleep(1000);
> >>  	ice_reset(hw, ICE_RESET_CORER);
> >> -	/* CORER will clear the global lock, so no explicit call
> >> -	 * required for release.
> >> -	 */
> >> +	ice_check_reset(hw);
> >>  
> >> -	return 0;
> >> +reinit_hw:
> > 
> > nit: I think you can move this label above ice_check_reset().
> >      As the only place that jumps to this label calls ice_check_reset()
> >      immediately before doing so. If so, renaming the label might
> >      also be appropriate (up to you on all fronts:)
> > 
> 
> You're right thats probably slightly better. I'm not sure its worth a
> re-roll vs getting this fix out since its a pretty minor difference.

Yes, agreed. I'm happy to let this lie if you prefer.

...
