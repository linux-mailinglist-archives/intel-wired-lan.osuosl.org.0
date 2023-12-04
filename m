Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 603758041AC
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Dec 2023 23:26:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 02CE8820CE;
	Mon,  4 Dec 2023 22:26:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02CE8820CE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701728762;
	bh=MFrAithHhmrFnaD5oH8S5GmMyREqRYuNyaUhbQ2tX1U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DP8c4G01ZguwUj27zot/xVskYhXJ4huMwfmWGLIDLgLEyzz2q2PdIA5cCEsO9s/6G
	 8Ce1yeRm5oAjUCECNuMm5TV/aQv3MWhKMCJfHn3cDcZr1PrdtfEZOkQ2R49V85lNf5
	 vvbj2gL9Fs1Gj8KOA+HlTxFNI+FLbchvU2fgS+2nn+kv/TA7iRZppWI4rkndqwuWjt
	 TXc5CEkeAv3jWzZ/FRBu4hIvk+Iym8ES5N5YOwPoQh9F7kx8MhbklFoa/Mo0kaorCC
	 Qmj8i2rQW5w6WMRqf1qtoiTPs2AyyM+qlqx8B9ehkyE79IkQKtEUwK+5Ptjy8xBChC
	 3BOU5J6Z2nLbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YYOmtKRaklhn; Mon,  4 Dec 2023 22:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BC0D081CE1;
	Mon,  4 Dec 2023 22:26:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BC0D081CE1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0AF681BF303
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:25:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6F7281E21
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:25:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6F7281E21
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gDC4DPGuaw6 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Dec 2023 22:25:55 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 10FE381CE1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Dec 2023 22:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 10FE381CE1
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAHNr-0000000FIS0-1ZJ1; Mon, 04 Dec 2023 23:25:47 +0100
Message-ID: <c4404a84e6490295a8aba37bab7d3152c44ff0ba.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Jakub Kicinski <kuba@kernel.org>
Date: Mon, 04 Dec 2023 23:25:46 +0100
In-Reply-To: <20231204142217.176ed99f@kernel.org>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231204200038.GA9330@merlins.org>
 <a6ac887f7ce8af0235558752d0c781b817f1795a.camel@sipsolutions.net>
 <20231204203622.GB9330@merlins.org>
 <24577c9b8b4d398fe34bd756354c33b80cf67720.camel@sipsolutions.net>
 <20231204205439.GA32680@merlins.org> <20231204212849.GA25864@merlins.org>
 <69c0fa67c2b0930f72e99c19c72fc706627989af.camel@sipsolutions.net>
 <20231204142217.176ed99f@kernel.org>
User-Agent: Evolution 3.50.1 (3.50.1-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=bK+byPxsZuHaPYRYQodVTgZI8myAPdyvRrsGFJ0hqUs=; 
 t=1701728755; x=1702938355; b=h77tw5yGtJ+ckwcUN/AInD96+wfpUB/DO++99LsUwTxEf5L
 2HNxyxlo4gfy6vUS+Y1qzeY/4tTiBD+QXJh7taDtt+DKQEAAedA1702wryT53y/yfiAjsJNcCycQ9
 2Z3QFF2Rox875X5t9N2vU3bLoIRXhhZk42seaE/mMxm0rf6603BlzTLv11scVp2uDVlbAPow0Ac0n
 g6LdupZ+DFpuE73ff322dd2AitOSw0/9SU3CatVvk/bP6boRMkOESFDBPle7NLcMAC/smTkZxzhWr
 rVcbIK+2u1Ver/LI024nL5VqD14+LO550PsF6XR5eT+Rfl9OEc7efBIB/tqshgKA==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=h77tw5yG
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: ethtool: do runtime PM
 outside RTNL
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
Cc: netdev@vger.kernel.org, Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, 2023-12-04 at 14:22 -0800, Jakub Kicinski wrote:
> On Mon, 04 Dec 2023 22:32:25 +0100 Johannes Berg wrote:
> > Well, I was hoping that
> > 
> >  (a) ethtool folks / Jakub would comment if this makes sense, but I
> >      don't see a good reason to do things the other way around (other
> >      than "code is simpler"); and
> 
> My opinion on RPM is pretty uneducated. But taking rtnl_lock to resume
> strikes me as shortsighted. RPM functionality should be fairly
> self-contained, and deserving of a separate lock.
> Or at the very least having looked at the igc RPM code in the past,
> I'm a bit cautious about bending the core to fit it, as it is hardly
> a model...

I could agree with that. The reason it seems to do that is that it
invokes some other ifup/down related code in suspend/resume...

On the other hand it also seems a bit odd to do something as unrelated
to networking as runtime PM (which you can also trigger through various
other paths such as sysfs) under RTNL, holding RTNL for longer than
seems necessary, and creating more contention on it?

johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
