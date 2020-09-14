Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2641B26833C
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Sep 2020 05:43:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 99B2487166;
	Mon, 14 Sep 2020 03:43:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vihVq5hroFyz; Mon, 14 Sep 2020 03:43:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B410E8716A;
	Mon, 14 Sep 2020 03:43:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D72541BF962
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 03:43:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D2D7985F2F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 03:43:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wtpN-cu5gxCl for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Sep 2020 03:43:01 +0000 (UTC)
X-Greylist: delayed 00:38:19 by SQLgrey-1.7.6
Received: from vps0.lunn.ch (vps0.lunn.ch [185.16.172.187])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 09A3385F2B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Sep 2020 03:43:01 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94)
 (envelope-from <andrew@lunn.ch>)
 id 1kHen3-00EXn4-NQ; Mon, 14 Sep 2020 05:04:25 +0200
Date: Mon, 14 Sep 2020 05:04:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Edward Cree <ecree@solarflare.com>
Message-ID: <20200914030425.GG3463198@lunn.ch>
References: <20200911012337.14015-1-jesse.brandeburg@intel.com>
 <20200911012337.14015-12-jesse.brandeburg@intel.com>
 <227d2fe4-ddf8-89c9-b80b-142674c2cca0@solarflare.com>
 <20200911144207.00005619@intel.com>
 <e2e637ae-8cda-c9a4-91ce-93dbd475fc0c@solarflare.com>
 <20200911152642.62923ba2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <115bce2a-daaa-a7c5-3c48-44ce345ea008@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <115bce2a-daaa-a7c5-3c48-44ce345ea008@solarflare.com>
Subject: Re: [Intel-wired-lan] [RFC PATCH net-next v1 11/11]
 drivers/net/ethernet: clean up mis-targeted comments
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Sep 12, 2020 at 12:11:20AM +0100, Edward Cree wrote:
> On 11/09/2020 23:26, Jakub Kicinski wrote:
> > "Toolchain" sounds a little grand in this context, the script that
> > parses kdoc does basic regexps to convert the standard kernel macros:
> > ...
> > IDK if we can expect it to understand random driver's macros..
> I wasn't suggesting it should _understand_ this macro, justrecognise
> =A0when something _is_ a macro it doesn't understand, and refrain from
> =A0warning about it in that case.

Is it possible to get the C preprocessor to expand the macros without
stripping the comments? Run the kerneldoc validator on that?

	  Andrew
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
