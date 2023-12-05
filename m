Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E74805EC8
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 20:48:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 818B6829FD;
	Tue,  5 Dec 2023 19:48:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 818B6829FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701805714;
	bh=C2oMlRVBJVH2pAbt4p2g74eNVS6zsJLuuPcCZagb61c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1DJQgyxKMUrHr3AzigVPoonmSrbqtD+cF5r/9ETerv1E7MY96vZriR2E8fS0i+8DZ
	 FNhUsLfNCckBHH3fpqBlbTNXXRMRlfRujFKlk7xE4GeKNtmm2VnOWk0lVZkM0qqKQ3
	 +SmKe07Q+SDUW1ut//T267J6n9bICehguSsRi9ynMmqMLXKn7OupOkSL4ijoIP2LNl
	 TWo2vGOw8/gBTglH2BbFUb+MZtMZE7OvDix+34n0iAWQsLogUoHklB84APxz1ChJVV
	 QZ9QF/AMKpR4mfcy5m9atkALD5vVbLhydhpooslP73UFsM/mfUvgdRsCUmI5J1TVJO
	 i6pkWmf1X7ULA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbnn42NbTfpi; Tue,  5 Dec 2023 19:48:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 45CE5828F2;
	Tue,  5 Dec 2023 19:48:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45CE5828F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EE6131BF363
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:48:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BC09E605E3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:48:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BC09E605E3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ehos3DbYYTMU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 19:48:26 +0000 (UTC)
Received: from sipsolutions.net (s3.sipsolutions.net
 [IPv6:2a01:4f8:242:246e::2])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AD6D7600BB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 19:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD6D7600BB
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.97) (envelope-from <johannes@sipsolutions.net>)
 id 1rAbP2-0000000GWku-2LDb; Tue, 05 Dec 2023 20:48:20 +0100
Message-ID: <709eff7500f2da223df9905ce49c026a881cb0e0.camel@sipsolutions.net>
From: Johannes Berg <johannes@sipsolutions.net>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org
Date: Tue, 05 Dec 2023 20:48:19 +0100
In-Reply-To: <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
References: <20231204200710.40c291e60cea.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <d0fc7d04-e3c9-47c0-487e-666cb2a4e3bc@intel.com>
User-Agent: Evolution 3.50.1 (3.50.1-1.fc39) 
MIME-Version: 1.0
X-malware-bazaar: not-scanned
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=sipsolutions.net; s=mail; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-To:
 Resent-Cc:Resent-Message-ID; bh=soPdmCRcIztlx9Qn+p7ZQyp8LgTp6+uQ1GZoBpjgHvA=; 
 t=1701805706; x=1703015306; b=KUgpWwdFUnt6SjEzDa8dyL0WP93N3vLpC94ecb5rnwYAByO
 lQASwdg9pGF6xxdEpmPlJ9h44YxxPhrKibhfJQvTPkMm1xC4+QTN4n5bLd409bOMrHVz6yn5vwC19
 cvLuKF3WVVJPcfAmirTBHnvwGbdTHAP6uZzkn8QKy9xtmDuP1ZZUwOL14/nlXZKOJ19OXn1zOUIXy
 r177kzy0j0MNbq5f9jq5qPiT8F3aY06LS4vytbWF4HrtufwqARw9UX/5QgdIxUmJ1e4zG+RCQOzRs
 w+Y8uU9cWwJEKmfiuS0hkzLVAo0bmgNTXYKOf1f5o5L4h9elsg3yLLyJxBRX2+zQ==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=sipsolutions.net header.i=@sipsolutions.net
 header.a=rsa-sha256 header.s=mail header.b=KUgpWwdF
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
Cc: Marc MERLIN <marc@merlins.org>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-12-05 at 06:19 +0100, Przemek Kitszel wrote:
> On 12/4/23 20:07, Johannes Berg wrote:
> > From: Johannes Berg <johannes.berg@intel.com>
> > 
> > As reported by Marc MERLIN in [1], at least one driver (igc)
> 
> perhaps Reported-by tag? (I know this is RFC as of now)

I guess.

> > wants/needs to acquire the RTNL inside suspend/resume ops,
> > which can be called from here in ethtool if runtime PM is
> > enabled.
> > 
> > [1] https://lore.kernel.org/r/20231202221402.GA11155@merlins.org
> > 
> > Allow this by doing runtime PM transitions without the RTNL
> > held. For the ioctl to have the same operations order, this
> > required reworking the code to separately check validity and
> > do the operation. For the netlink code, this now has to do
> > the runtime_pm_put a bit later.
> > 
> > Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> > ---
> >   net/ethtool/ioctl.c   | 71 ++++++++++++++++++++++++++-----------------
> >   net/ethtool/netlink.c | 32 ++++++++-----------
> >   2 files changed, 56 insertions(+), 47 deletions(-)
> > 
> Thank you for the patch,
> 
> I like the idea of split into validate + do for dev_ethtool(),
> what minimizes unneeded PM touching. Moving pm_runtime_get_sync() out of 
> RTNL is also a great improvement per se. Also from the pure coding 
> perspective I see no obvious flaws in the patch. I think that igc code
> was just accidental to the issue, in a way that it was not deliberate to
> hold RTNL for extended periods.

Well Jakub was arguing igc shouldn't be taking rtnl in suspend/resume,
maybe, but dunno.

> With your patch fixing the bug, there is
> no point with waiting IMO, so
> 
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Well, according to the checks, the patch really should use
netdev_get_by_name() and netdev_put()? But I don't know how to do that
on short-term stack thing ... maybe it doesn't have to?

johannes
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
