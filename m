Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 01E68A8647C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Apr 2025 19:18:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2DEA96FA0E;
	Fri, 11 Apr 2025 17:18:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3J-q3ErMoJ33; Fri, 11 Apr 2025 17:18:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 701126FA11
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744391934;
	bh=kX9Ee1NVwUilB8STm8lSv1BafeXWvkACUePwnVD+esY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vNciVG3DTIdukNLu6uKDXIPR+GamV7cU2S3Dr5le+FVoKVL7MYog8dTQQNvg3xEr0
	 rpQ9MAbbEVLll300gTij1sLgJHZwx6Mbp6fonD3VjsblBJm4p3zHXDIi6SzT8AG6C4
	 NAYfuTBidyArVbxnXyJSfsgxu3zNtbhxtAAE33mZ5u5H59cyWvzgsePeGN0/t7wqDe
	 F5agv9G2A00tW5QVZa87spez2ZpUoHYetZOeORmEo0tcWzFNCgQLI78YxUdKjXPFOx
	 EV7UgS+prlLbE2SuV/yUUbWTSmbyrHtfq3EpAmWSHklup9kZ8ik81tVVmsVeoX6Ewf
	 EZVubkyMfBJHA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 701126FA11;
	Fri, 11 Apr 2025 17:18:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id DB90E193
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 17:18:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BD54C417FB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 17:18:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v1aNm212rdIR for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Apr 2025 17:18:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 11B0F41778
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11B0F41778
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11B0F41778
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Apr 2025 17:18:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 0CB98A4ACB8;
 Fri, 11 Apr 2025 17:13:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D951BC4CEE2;
 Fri, 11 Apr 2025 17:18:48 +0000 (UTC)
Date: Fri, 11 Apr 2025 20:18:44 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: Alexander Lobakin <aleksander.lobakin@intel.com>,
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
Message-ID: <20250411171844.GW199604@unreal>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
 <20250410134443.GS199604@unreal>
 <Z_fOu3veEUcPUxuh@soc-5CG4396X81.clients.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z_fOu3veEUcPUxuh@soc-5CG4396X81.clients.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744391930;
 bh=lRKwdQ9StQwDkVSRqJkrGUFaZtKmCreOQJCWpPe6TOg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d/7sWOt23ZlZr8J+iLl1EYrM58L9dFPTvPbIlatsExxzGuIxVT1UUyyg24+oQVGry
 SEdQi1+e99GeDZlxUNKzSEdEbYr7RbmFyrko36wM3zekG37pcpdzPMYByqN2JZNyCy
 qh/hETc2eQGD335bHdFLqds2ebuIy4c+nlaftBeMyUjnicXyVS/0M6/8w+/3aYHYVW
 Z1wX9usjrS7T0bs4Pg2OKOJNMvTe9sfwKZkNh9QF7AGN2ebb/pheWaaz+JkwRVOz0C
 qdvfN9sznMUUTprszvLIW9J75jwipVwWkKsimhjA+KJJ6bKkN+5KCPLtuBc6x5FjhR
 IfbGLAPmEWB1g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=d/7sWOt2
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

On Thu, Apr 10, 2025 at 03:59:23PM +0200, Larysa Zaremba wrote:
> On Thu, Apr 10, 2025 at 04:44:43PM +0300, Leon Romanovsky wrote:
> > On Thu, Apr 10, 2025 at 03:05:19PM +0200, Alexander Lobakin wrote:
> > > From: Leon Romanovsky <leon@kernel.org>
> > > Date: Thu, 10 Apr 2025 14:23:49 +0300
> > > 
> > > > On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> > > >> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> > > >>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> > > >>>> From: Phani R Burra <phani.r.burra@intel.com>
> > > >>>>
> > > >>>> Libeth will now support control queue setup and configuration APIs.
> > > >>>> These are mainly used for mailbox communication between drivers and
> > > >>>> control plane.
> > > >>>>
> > > >>>> Make use of the page pool support for managing controlq buffers.
> > 
> > <...>
> > 
> > > >> Module dependencies are as follows:
> > > >>
> > > >> libeth_rx and libeth_pci do not depend on other modules.
> > > >> libeth_cp depends on both libeth_rx and libeth_pci.
> > > >> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> > > >> ixd directly uses libeth_cp and libeth_pci.
> > > > 
> > > > You can do whatever module architecture for netdev devices, but if you
> > > > plan to expose it to RDMA devices, I will vote against any deep layered
> > > > module architecture for the drivers.
> > > 
> > > No plans for RDMA there.
> > > 
> > > Maybe link the whole kernel to one vmlinux then?
> > 
> > It seems that you didn't understand at all about what we are talking
> > here. Please use the opportunity that you are working for the same
> > company with Larysa and ask her offline. She understood perfectly about
> > which modules we are talking.
> >
> 
> While I do understand what kind of module relationship you consider problematic,

Awesome, thanks.

> I still struggle to understand why stateless lib hierarchy can be problematic.

As I said already, I wrote my remark as a general comment. It is just
a matter of time when perfectly working system will be changed to less
working one. So when you and Alexander are focused to see what is wrong
now, I see what can be in the future.

To make it clear, even for people who sentimentally attached to libeth code:
 I didn't ask to change anything, just tried to understand why
 you did it like you did it.

> The fixes that you linked relate more to problematic resource sharing, of which 
> libeth has none, it does not have its own memory or its own threads, this is 
> just collection of data structures and functions.

It is just a matter of time and you will get same issues like I posted.

Thanks

> 
> > > 
> > > > 
> > > > BTW, please add some Intel prefix to the modules names, they shouldn't
> > > > be called in generic names like libeth, e.t.c
> > > 
> > > Two modules with the same name can't exist within the kernel. libeth was
> > > available and I haven't seen anyone wanting to take it. It's not common
> > > at all to name a module starting with "lib".
> > 
> > Again, please talk with Larysa. ETH part is problematic in libeth name
> > and not LIB.
> > 
> > Thanks
