Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 33CA38475F3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  2 Feb 2024 18:18:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4DC3C613ED;
	Fri,  2 Feb 2024 17:18:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DC3C613ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706894300;
	bh=vgaegNq0ZEFkbpkqVTL7AfQLw/wHbFiGW6bQkt+zPgs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3z2WnKQXUvF6QEqCSmk2k9ptI70AfQkLTB8us5CqqNFyc9XBjp+1Llvdj7EsRb9xK
	 P5ki6XJHi828/1qO9VagND0yU1l6VZJaPgmU1iDNumumKt841rEoLcqdzVNP7yMWLg
	 F6ayvEbmGLmcCBJAz3l1uJ9/AQfC5AdyFIANrOf3cNiVmyjcqwbGdrUT69TOlrvo90
	 eLMZ+K+MGi1H/Q3WsbzJe1JxicJZ5TTh0NWqO7CofWoOVdwDW6dFO0c1Gh6ZJcf9MN
	 k5aPx6FZSaGyf6mBbFykHWK14Y0znivs/GpLzb2TU/l7rg3v2s1r60vXe6uLVoLzdF
	 HjwKMQKhNLzFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U3KecT8n3336; Fri,  2 Feb 2024 17:18:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 62B7B60011;
	Fri,  2 Feb 2024 17:18:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 62B7B60011
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D3DF21BF3A3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 17:18:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id ABB23613ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 17:18:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABB23613ED
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sx1XDnt16Kz5 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  2 Feb 2024 17:18:13 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05429613C2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  2 Feb 2024 17:18:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05429613C2
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CE8AD62505;
 Fri,  2 Feb 2024 17:18:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C4AAEC433F1;
 Fri,  2 Feb 2024 17:18:08 +0000 (UTC)
Date: Fri, 2 Feb 2024 18:18:05 +0100
From: Simon Horman <horms@kernel.org>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <20240202171805.GS530335@kernel.org>
References: <20240125125314.852914-1-michal.swiatkowski@linux.intel.com>
 <20240125125314.852914-5-michal.swiatkowski@linux.intel.com>
 <20240129105541.GH401354@kernel.org> <ZbtCom/grznFpesc@mev-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZbtCom/grznFpesc@mev-dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706894291;
 bh=mTQpAVj7Ewz7qRcOhpB8XMamGD5kDsPz+5ZWXExfk9k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ofEWPwwtqDkSqZIOv2vLm45rJ/UEXBWf2MUUNgpMkSPDt8EakRtXkBob4QnyVg6gq
 cYPZHriD97iFyR1hvqV4BI23G382E8+YOnrHptmNz1BURXZcwmYo2hnj9p36hfHX9i
 k2MYM2fkLAu5QmHMCdYVynjO6TqVD/6qqnQDs460lkfL0Df0tXyJ9P4KIa9PXgq8m4
 SgtgAc5GrWD4O9PMqX97LeS74LEFrS/yVNNlcgnfKjxt/ChgBmh0ue+t8jTP7SHljZ
 et0oqbXD+Uyy3JJGHB1NOBrFUr+gi6z/eIU089C2C58e1cXrTHgMyXb0DAECssXPhj
 +a0xg3MJ0bL4A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=ofEWPwwt
Subject: Re: [Intel-wired-lan] [iwl-next v1 4/8] ice: control default Tx
 rule in lag
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
Cc: wojciech.drewek@intel.com, marcin.szycik@intel.com,
 Marcin Szycik <marcin.szycik@linux.intel.com>, netdev@vger.kernel.org,
 sridhar.samudrala@intel.com, intel-wired-lan@lists.osuosl.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Feb 01, 2024 at 08:05:06AM +0100, Michal Swiatkowski wrote:
> On Mon, Jan 29, 2024 at 10:55:41AM +0000, Simon Horman wrote:
> > On Thu, Jan 25, 2024 at 01:53:10PM +0100, Michal Swiatkowski wrote:
> > > Tx rule in switchdev was changed to use PF instead of additional control
> > > plane VSI. Because of that during lag we should control it. Control
> > > means to add and remove the default Tx rule during lag active/inactive
> > > switching.
> > > 
> > > It can be done the same way as default Rx rule.
> > 
> > Hi Michal,
> > 
> > Can I confirm that LAG TX/RX works both before and after this patch?
> > 
> 
> Hi Simon,
> 
> This part of LAG code is related to the LAG + switchdev feature (it
> isn't chaning LAG core code). Hope that normal LAG also works well. This
> is the scenario when you have PF in switchdev, bond created of two PFs
> connected to the bridge with representors. Switching between interfaces
> from bond needs to add default Rx rule, and after my changes also
> default Tx rule.
> 
> Do you think I should add this description to commit message?

Thanks Michal,

I think that might be a good idea.

But my question was a bit different: I'm asking if this patch addresses
a regression introduced earlier in the series. Sorry for not being clearer
the first time around.
