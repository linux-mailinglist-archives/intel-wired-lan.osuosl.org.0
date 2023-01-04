Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1635B65CD1C
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Jan 2023 07:31:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 84B17417DE;
	Wed,  4 Jan 2023 06:31:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 84B17417DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1672813905;
	bh=4bARJahpiLgurs5xkpk5LbKx85BnkoYM8q+KVMRpCZ0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zn2K/nS+hw4Nk83lsufNuzniv6R5daxHNdZCL7ESz11iInd0L41mzudH/k6mnqGbO
	 ArU9Mw/jw7Ja3SOTZoQGe3nUpWFamH5juBeGEXz1fwHcnWFkVLNzcnBXdFCmEa5TKo
	 TuEle5R69kFQF32/ieHzH7wuGc61Oh4lYvTQjRKKUAhfg1OM+AzWLvjG9nHQWQ1c1N
	 Fg7oSDynTLXBEtrI/IffHHjQqhDnRADwAdLO9kmxFC3EEHTZg2SHT6h9UmHGtDV7kD
	 7hxaHxU4sk2uf5JccD3xBAFOUsJbJdxGpl7gMyHexTJYxacYJcIF3R4b3Vpg6OJOED
	 zInM/RWzsHX/Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FiJ51EPoPCHQ; Wed,  4 Jan 2023 06:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4350F417D9;
	Wed,  4 Jan 2023 06:31:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4350F417D9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1BBB61BF836
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 06:31:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0228C81ED8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 06:31:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0228C81ED8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KYOiQlhoUXaW for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Jan 2023 06:31:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4861081990
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4861081990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Jan 2023 06:31:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 29CB8615B0;
 Wed,  4 Jan 2023 06:31:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDD17C433D2;
 Wed,  4 Jan 2023 06:31:35 +0000 (UTC)
Date: Wed, 4 Jan 2023 08:31:31 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <Y7UdQ3aHzKejN0Aj@unreal>
References: <Y7QYxAhcUa2JtjSy@unreal> <20230103142104.GA996978@bhelgaas>
 <Y7RjCkanr0Ulx3TD@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y7RjCkanr0Ulx3TD@unreal>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1672813896;
 bh=Jq89Kt6GXbDbgoUy01U5qC9TI8NvX/meP04iOIsIWiI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tsyBcvrO9BpqHYiYlcjjB3N0yH9nUsyCTkPW7A/evdYAongrrcXQX4nAzJL6wC3/K
 HA6PDhkl9YJln6ARlXdV2EPyjOJbVAJ4wEQVonw6o7o4nQV8Kkn4kCCNzXKwfotpth
 GlUZOfj/YqcjPoSj4CyL39AUxwcCdXwGQnSMyQpGnVFTJkl/7Br0xPtA2oVrv+W2Iw
 QuAixiTJuVlBl+L1WSixJ6cRESXTwJcOt0xf3L+hl6AM84HcZbHeDnIm3WAd0SouGs
 4AnHa5iixo/WzKvmVbCNof3Sb1WBmV8VnvvX7Ffl88xwqOmAaZ9Y0vaTvZvX7yKVgL
 Gqte4Rc26WGkw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=tsyBcvrO
Subject: Re: [Intel-wired-lan] [PATCH] igc: Mask replay rollover/timeout
 errors in I225_LMVP
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Rajat Khandelwal <rajat.khandelwal@linux.intel.com>, netdev@vger.kernel.org,
 rajat.khandelwal@intel.com, jesse.brandeburg@intel.com,
 linux-kernel@vger.kernel.org, kuba@kernel.org, edumazet@google.com,
 anthony.l.nguyen@intel.com, linux-pci@vger.kernel.org,
 Bjorn Helgaas <bhelgaas@google.com>, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 03, 2023 at 07:16:58PM +0200, Leon Romanovsky wrote:
> On Tue, Jan 03, 2023 at 08:21:04AM -0600, Bjorn Helgaas wrote:

<...>

> > > > If a quirk like this is only needed when the driver is loaded, 
> > > 
> > > This is always the case with PCI devices managed through kernel, isn't it?
> > > Users don't care/aware about "broken" devices unless they start to use them.
> > 
> > Indeed, that's usually the case.  There's a lot of stuff in quirks.c
> > that could probably be in drivers instead.
> 
> NP, so or deprecate quirks.c and prohibit any change to that file or
> don't allow drivers to mangle PCI in their probe routines.
> Everything in-between will cause to enormous mess in long run.

Another thing to consider what if you go with "probe variant", users
will see behavioral differences between drivers and subsystems on
how to control these quirks.

As an example, see proposal in this thread to add ethtool private flag
to enable/disable quirk. In other places, it will be module parameter,
sysfs or special to that subsystem tool.

Thanks

> 
> Thanks
> 
> > 
> > Bjorn
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
