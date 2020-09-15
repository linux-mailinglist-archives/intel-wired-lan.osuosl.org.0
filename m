Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1A826AE5A
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Sep 2020 22:03:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0F69586CF0;
	Tue, 15 Sep 2020 20:03:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id F+WQkWQScGPo; Tue, 15 Sep 2020 20:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 47CDB86D51;
	Tue, 15 Sep 2020 20:03:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 298231BF350
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2326B8666B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:03:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cilir3838B+2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Sep 2020 20:03:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 756B9864F4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Sep 2020 20:03:05 +0000 (UTC)
Received: from sx1.lan (c-24-6-56-119.hsd1.ca.comcast.net [24.6.56.119])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B73862078E;
 Tue, 15 Sep 2020 20:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600200185;
 bh=fwSKQ7aitXqMVUiZizEnwyYRbxX6M7vxYJj4zGHIAvM=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=sF46ny1YVnVuFLDI1ipPP6yW5Bt6mS6BXoJHX3F6rponb40I4WpFZSw8722pk845f
 S99j+d5lWfpEiDu4bVFPioABDcyrImkiuAY+/r48L/0JJgXJzLuv0knIoltsphENGV
 ANyg1FXLolu1h66eJveAPeWotA/B8Fek2C35QJVs=
Message-ID: <734f0c4595a18ab136263b6e5c97e7f48a93abe1.camel@kernel.org>
From: Saeed Mahameed <saeed@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>
Date: Tue, 15 Sep 2020 13:03:03 -0700
In-Reply-To: <20200915140326.GG3485708@lunn.ch>
References: <20200915014455.1232507-1-jesse.brandeburg@intel.com>
 <a28498acdf87f11e81d3282d63f18dbe1a3d5329.camel@kernel.org>
 <20200915140326.GG3485708@lunn.ch>
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32) 
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 00/10] make
 drivers/net/ethernet W=1 clean
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2020-09-15 at 16:03 +0200, Andrew Lunn wrote:
> On Mon, Sep 14, 2020 at 09:24:28PM -0700, Saeed Mahameed wrote:
> > On Mon, 2020-09-14 at 18:44 -0700, Jesse Brandeburg wrote:
> > > After applying the patches below, the drivers/net/ethernet
> > > directory can be built as modules with W=1 with no warnings (so
> > > far on x64_64 arch only!).
> > > As Jakub pointed out, there is much more work to do to clean up
> > > C=1, but that will be another series of changes.
> > > 
> > > This series removes 1,283 warnings and hopefully allows the
> > > ethernet directory to move forward from here without more
> > > warnings being added. There is only one objtool warning now.
> > > 
> > > Some of these patches are already sent to Intel Wired Lan, but
> > > the rest of the series titled drivers/net/ethernet affects other
> > > drivers. The changes are all pretty straightforward.
> > > 
> > > As part of testing this series I realized that I have ~1,500 more
> > > kdoc warnings to fix due to being in other arch or not compiled
> > > with my x86_64 .config. Feel free to run
> > > $ 'git ls-files *.[ch] | grep drivers/net/ethernet | xargs
> > > scripts/kernel-doc -none'
> > > to see the remaining issues.
> > > 
> > 
> > Reviewed-by: Saeed Mahameed <saeedm@nvidia.com>
> > 
> > Hi Jesse, 
> > What was the criteria to select which drivers to enable in your
> > .config
> > ?
> > 
> > I think we need some automation here and have a well known .config
> > that
> > enables as many drivers as we can for static + compilation testing,
> > otherwise we are going to need to repeat this patch every 2-3
> > months.
> 
> Hi Saeed
> 
> I would prefer we just enable W=1 by default for everything under
> driver/net. Maybe there is something we can set in
> driver/net/Makefile?
> 


Yes we can have our own gcc options in the Makfile regardless of what
you put in W command line argument.

Example:

KBUILD_CFLAGS += -Wextra -Wunused -Wno-unused-parameter
KBUILD_CFLAGS += -Wmissing-declarations
KBUILD_CFLAGS += -Wmissing-format-attribute
KBUILD_CFLAGS += -Wmissing-prototypes
KBUILD_CFLAGS += -Wold-style-definition
KBUILD_CFLAGS += -Wmissing-include-dirs



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
