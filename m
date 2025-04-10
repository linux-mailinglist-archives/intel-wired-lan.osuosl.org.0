Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDC4A844E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:34:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 311686F4A8;
	Thu, 10 Apr 2025 13:34:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1waxufQN6gZ3; Thu, 10 Apr 2025 13:34:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 461116F4A7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744292082;
	bh=aYx0K8+VwgisVM4GNKbq4z6H+MZi6gsGH7dM/pu8iF8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=2RBP7v2giO++YilfXIMuQ0jPRVjAw9gR7eVt0jA4+h57HmvcKfzYMiAUta0hre1dl
	 P4Rg3of3BoLiV/MQU2yjYeXzfJqmnnib0aewQoxi0BgsNu01IThqDkre0UptUZ5rZK
	 j4VW7vmv7l6ZfMuT9/iHRxToUWFY8a5Qt6EPPNQjIlU1oLYlPjaX7e4p9FUTFiCuNw
	 fdoBzabs7Ih7ZaWeEuYPu8vzKf14WRjf6/EG94SljU5SNOszw1DvHxgVXQUvQ+JmZ6
	 zFJcrrw+KsQBaGN0waxdQGc6VIh4YQkOh/B3AzBi4Dn64JE3lIfRg7YqDOowjL8tRI
	 XlXw31RjS2ewg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 461116F4A7;
	Thu, 10 Apr 2025 13:34:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 2C6E2193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:34:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 11C3060707
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:34:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V7r5LWeuPv5G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:34:39 +0000 (UTC)
X-Greylist: delayed 445 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 10 Apr 2025 13:34:39 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 261E960BF3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 261E960BF3
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 261E960BF3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:34:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 5738C4A43A;
 Thu, 10 Apr 2025 13:27:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9CBD8C4CEE8;
 Thu, 10 Apr 2025 13:27:12 +0000 (UTC)
Date: Thu, 10 Apr 2025 16:27:06 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>,
 Phani R Burra <phani.r.burra@intel.com>
Message-ID: <20250410132706.GR199604@unreal>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <Z_fAdLJ4quuP2lip@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z_fAdLJ4quuP2lip@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744291634;
 bh=uJNt4QupPmB5L6K4f/LhHjqr0GkS2EqrPb2R93LqjUg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PUVN7kZ2Fp/FqfPqkbfWtE/lYMV3vJzYKXcBEzQdd4Si6dFhD8w0kUy9vnDtP+J1h
 mgfXKHawgVbFbUmGImkPo2AbKFiyAxDgnU9oicMqt99ev1eUk4EhkQqRe5/QJ3YhCg
 rezqbqC/LnQ1bj79R6LAHBg8W5OKYmxKeBzXMkEcXS+PHWPYIkGyl/ukyGbD4KK7Za
 xzHjr9XSH0Sy6QuSVLeqPszgKihI8h///9GmK7IrzkkrMQn9EWyxp005B5dxT9ae6g
 Nkr1sjNNfJdSwode/OtBqP1Ul9qR0MmsKrhzxMMlOhwKyUuV5nCOleJy4bxdVZWlO8
 zJRGh8PwnLRTg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=PUVN7kZ2
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 05/14] libeth: add control
 queue support
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

On Thu, Apr 10, 2025 at 02:58:28PM +0200, Larysa Zaremba wrote:
> On Thu, Apr 10, 2025 at 02:23:49PM +0300, Leon Romanovsky wrote:
> > On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> > > On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> > > > On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> > > > > From: Phani R Burra <phani.r.burra@intel.com>
> > > > > 
> > > > > Libeth will now support control queue setup and configuration APIs.
> > > > > These are mainly used for mailbox communication between drivers and
> > > > > control plane.
> > > > > 
> > > > > Make use of the page pool support for managing controlq buffers.
> > > > 
> > > > <...>
> > > > 
> > > > >  libeth-y			:= rx.o
> > > > >  
> > > > > +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
> > > > > +
> > > > > +libeth_cp-y			:= controlq.o
> > > > 
> > > > So why did you create separate module for it?
> > > > Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
> > > >
> > > 
> > > I am not sure what kind of races do you mean, all libeth modules themselves are 
> > > stateless and will stay this way [0], all used data is owned by drivers.
> > 
> > Somehow such separation doesn't truly work. There are multiple syzkaller
> > reports per-cycle where module A tries to access module C, which already
> > doesn't exist because it was proxied through module B.
> 
> Are there similar reports for libeth and libie modules when iavf is enabled?

To get such report, syzkaller should run on physical iavf, it looks like it doesn't.
Did I miss it here?
https://syzkaller.appspot.com/upstream/s/net

> It is basically the same hierarchy. (iavf uses both libeth and libie, libie 
> depends on libeth).
> 
> I am just trying to understand, is this a regular situation or did I just mess 
> smth up?

My review comment was general one. It is almost impossible to review
this newly proposed architecture split for correctness.

> 
> > 
> > > 
> > > As for the module separation, I think there is no harm in keeping it modular. 
> > 
> > Syzkaller reports disagree with you. 
> >
> 
> Could you please share them?

It is not an easy question to answer, because all these reports are complaining
about some wrong locking order or NULL-pointer access. You will never know if
it is because of programming or design error.

As an approximate example, see commits a27c6f46dcec ("RDMA/bnxt_re: Fix an issue in bnxt_re_async_notifier")
and f0df225d12fc ("RDMA/bnxt_re: Add sanity checks on rdev validity").
At the first glance, they look unrelated to our discussion, however
they can serve as an example or races between deinit/disable paths in
parent module vs. child.

>  
> > > We intend to use basic libeth (libeth_rx) in drivers that for sure have no use 
> > > for libeth_cp. libeth_pci and libeth_cp separation is more arbitral, as we have 
> > > no plans for now to use them separately.
> > 
> > So let's not over-engineer it.
> > 
> > > 
> > > Module dependencies are as follows:
> > > 
> > > libeth_rx and libeth_pci do not depend on other modules.
> > > libeth_cp depends on both libeth_rx and libeth_pci.
> > > idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> > > ixd directly uses libeth_cp and libeth_pci.
> > 
> 
> I need to amend this: libeth_cp does not depend on libeth_pci in terms of 
> module namespace, it only uses the header to access struct device that is 
> stored in libeth_pci-specific mmio_info.

So why did you add SELECT in kconfig?

> 
> > You can do whatever module architecture for netdev devices, but if you
> > plan to expose it to RDMA devices, I will vote against any deep layered
> > module architecture for the drivers.
> > 
> > BTW, please add some Intel prefix to the modules names, they shouldn't
> > be called in generic names like libeth, e.t.c
> >
> 
> We did not think this would be a problem, intel has a tradition of calling the 
> modules pretty ambiguously.

I know and it is worth to be changed.

> 
> > Thanks
> > 
> > > 
> > > [0] https://lore.kernel.org/netdev/61bfa880-6a88-4eac-bab7-040bf72a11ef@intel.com/
> > > 
> > > > Thanks
> 
