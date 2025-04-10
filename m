Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 297F5A8457B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:58:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D311441241;
	Thu, 10 Apr 2025 13:58:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CJDhe1AgkAvA; Thu, 10 Apr 2025 13:58:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B368A40498
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744293531;
	bh=dsQqq85Vci3q0M/4x6RyRw57iBJHDyVAwlEi+/NwHtY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=nzTN1RccNhPrc/qpmTfmHoKf/suHi5oMBShvNquLW/6+7/Yx9DMLIOnz5hpomu4FE
	 AJiIAsPgONayfjf9aP6WzCzk7UfNn9SyACf6ipljHDMtDd7mumGwOQhsZPzllMidx8
	 W8ob1lbVbk97pXtYFZG+xJoN8s0abcyHxqtzbNs0DTmiwAnesg08ZWzWiMLQr4nkTk
	 cJggOpliQLwKOIH3x+qncFI05uG77NXOO/D1yPqmtRzTGRpG1TcLpkgSdxWIbl8XrU
	 vG/BwGzq77Zxx31ozWAYNiyqLb+EouMJViTvXrsxmgcOSUEhTUO+f7IcX6XAqpMrp0
	 CljcNjhM+iEag==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B368A40498;
	Thu, 10 Apr 2025 13:58:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A5E5193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:58:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C34841E9F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:58:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fL6m9ZJ8c4WP for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:58:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A44B041F00
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A44B041F00
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A44B041F00
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:58:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 6552C4510B;
 Thu, 10 Apr 2025 13:58:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 061C7C4CEDD;
 Thu, 10 Apr 2025 13:58:47 +0000 (UTC)
Date: Thu, 10 Apr 2025 16:58:43 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Michael Ellerman <mpe@ellerman.id.au>,
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
Message-ID: <20250410135843.GV199604@unreal>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <Z_fAdLJ4quuP2lip@soc-5CG4396X81.clients.intel.com>
 <20250410132706.GR199604@unreal>
 <7e3f2eb8-b668-4ac5-8b49-43eebff2b3e0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7e3f2eb8-b668-4ac5-8b49-43eebff2b3e0@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744293528;
 bh=tc3sjsEyh+ECbexe09u7lpewpQnE1mf7v/fkj4+zOy0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TKApxj71kO7MtG3mvtlzsnBLPdsk6DOvpqsDJLj5Zp2cK0YLoAFOsmy157pN4IXf2
 BZ428qjsIMaN2cDly63aH7BoR4eqDIQA/J10/KETejdkzXCHVDNaTx5Gtb7YfYUCz5
 OMyBZ7xyBzph+iaBZXlVpXZHQkGJDDf71Ct49kMF8E6u4HXJxxIV9ZuICkRQFon32x
 AkUQWwvQB9uosvTnIs+rOib20WBt2FSJZe3ilEJpwdMpBF0llh0wCrxoUpS8LACVfM
 xFp2XDBhNNWjN+DF5IkSDGRNewTMEgcItf9JkODT7Js4xgeHryVP9R20ppzOgkJ2C6
 nw1+mRfubH16g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=TKApxj71
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

On Thu, Apr 10, 2025 at 03:33:40PM +0200, Alexander Lobakin wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Thu, 10 Apr 2025 16:27:06 +0300
> 
> > On Thu, Apr 10, 2025 at 02:58:28PM +0200, Larysa Zaremba wrote:
> >> On Thu, Apr 10, 2025 at 02:23:49PM +0300, Leon Romanovsky wrote:
> >>> On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> >>>> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> >>>>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> >>>>>> From: Phani R Burra <phani.r.burra@intel.com>
> >>>>>>
> >>>>>> Libeth will now support control queue setup and configuration APIs.
> >>>>>> These are mainly used for mailbox communication between drivers and
> >>>>>> control plane.
> >>>>>>
> >>>>>> Make use of the page pool support for managing controlq buffers.
> >>>>>
> >>>>> <...>
> >>>>>
> >>>>>>  libeth-y			:= rx.o
> >>>>>>  
> >>>>>> +obj-$(CONFIG_LIBETH_CP)		+= libeth_cp.o
> >>>>>> +
> >>>>>> +libeth_cp-y			:= controlq.o
> >>>>>
> >>>>> So why did you create separate module for it?
> >>>>> Now you have pci -> libeth -> libeth_cp -> ixd, with the potential races between ixd and libeth, am I right?
> >>>>>
> >>>>
> >>>> I am not sure what kind of races do you mean, all libeth modules themselves are 
> >>>> stateless and will stay this way [0], all used data is owned by drivers.
> >>>
> >>> Somehow such separation doesn't truly work. There are multiple syzkaller
> >>> reports per-cycle where module A tries to access module C, which already
> >>> doesn't exist because it was proxied through module B.
> >>
> >> Are there similar reports for libeth and libie modules when iavf is enabled?
> > 
> > To get such report, syzkaller should run on physical iavf, it looks like it doesn't.
> > Did I miss it here?
> > https://syzkaller.appspot.com/upstream/s/net
> > 
> >> It is basically the same hierarchy. (iavf uses both libeth and libie, libie 
> >> depends on libeth).
> >>
> >> I am just trying to understand, is this a regular situation or did I just mess 
> >> smth up?
> > 
> > My review comment was general one. It is almost impossible to review
> > this newly proposed architecture split for correctness.
> > 
> >>
> >>>
> >>>>
> >>>> As for the module separation, I think there is no harm in keeping it modular. 
> >>>
> >>> Syzkaller reports disagree with you. 
> >>>
> >>
> >> Could you please share them?
> > 
> > It is not an easy question to answer, because all these reports are complaining
> > about some wrong locking order or NULL-pointer access. You will never know if
> > it is because of programming or design error.
> > 
> > As an approximate example, see commits a27c6f46dcec ("RDMA/bnxt_re: Fix an issue in bnxt_re_async_notifier")
> > and f0df225d12fc ("RDMA/bnxt_re: Add sanity checks on rdev validity").
> > At the first glance, they look unrelated to our discussion, however
> > they can serve as an example or races between deinit/disable paths in
> > parent module vs. child.
> 
> Unrelated. At first, you were talking about module dependencies, now
> you're talking about struct device etc dependencies, which is a
> completely different thing.
> 
> As already said, libeth is stateless, so the latter one can't happen.
> The former one is impossible at all. As long as at least 1 child module
> is loaded, you can't unload the parent. And load/unload is serialized,
> see module core code.

It is not only module load/unload. It is bind/unbind, devlink operations
e.t.c, everything that can cause to reload driver in module C.

Thanks
