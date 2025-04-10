Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 259EFA8452E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 15:44:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D98E760DF9;
	Thu, 10 Apr 2025 13:44:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kqXJqSxuIYz7; Thu, 10 Apr 2025 13:44:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 553B260E02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744292696;
	bh=FCWPQ+XcAT/uWtJQTkhfGja7ActUBfRanXlQlVBtLfw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=5YfrJ0QvI+3veNPY1tHy+Ev0I+x5Wgd5iFq3Uk+cRhy18udnkYwEZ3/pC/DonrqxJ
	 z/l+NU3YgP5u3EV3c86fN0VKnAIpiXLCALQS5KFz+XhcRE+EEJHmnwtRftKjIAtuPP
	 ks4WYJoA9sGT9q2b9TCAVHYZlrDzCNSH4ZIuSe5a5Yx52u679yOdUB5MdJZEFZtYoO
	 cw1EzJyVBBHeDkQ3Xtc1WUfxS1t89YW1hBy//Xw5KOjupVEfE90HPD23PfKVZnLy/u
	 guK+xRSEO73C2Z/8B9fRfkQQMQ5wVhcTOv5q/nj0BYwWiknOHAPzLFNfvnZ7CC6hNN
	 Dl8+Ld61Aeh+Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 553B260E02;
	Thu, 10 Apr 2025 13:44:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1651E193
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0728060B4B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:44:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vqjb_Lw27K-F for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 13:44:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=leon@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 60EC160614
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 60EC160614
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 60EC160614
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 13:44:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 4A93C68449;
 Thu, 10 Apr 2025 13:44:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C278C4CEE9;
 Thu, 10 Apr 2025 13:44:49 +0000 (UTC)
Date: Thu, 10 Apr 2025 16:44:43 +0300
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
Message-ID: <20250410134443.GS199604@unreal>
References: <20250408124816.11584-1-larysa.zaremba@intel.com>
 <20250408124816.11584-6-larysa.zaremba@intel.com>
 <20250410082137.GO199604@unreal>
 <Z_ehEXmlEBREQWQM@soc-5CG4396X81.clients.intel.com>
 <20250410112349.GP199604@unreal>
 <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c1ff0342-4fe9-44ec-a212-9f547e333a5e@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744292690;
 bh=zIuv99jR6/DvhIj/ezFd7gDXDCcqNb+1BR6FZTmkWrc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WWFnvSErJGHoAFL49fO2hww9SHO0/RHs5AH/HqVziawMjh9vkYSNexmYM9V1qao//
 Uh5m0IBGBkSMOyIl6LkSlHlAzZ8YKtLENE/p8M8TUsEKyGyM9YU4yx4VNGvR+vZpeJ
 myK2knY44CdZhmM1cF4cFbU8prSB9k9gCLko941gW1mDLOBdONOpcnJXQkkw0Nuzng
 SOBwpUziCkn/UNnqzHR0tQdkzSkfGkkBfztnfEcXBSOrSxMfFsR97hoDLizOpcrsJY
 nBHLyuWvuLHh2P7ENrjNiNabOB/jqF0W7PDRh3p6iblYP0qF5q//7SvENLREFz9+8M
 sxOCOcCxwnQcQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=WWFnvSEr
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

On Thu, Apr 10, 2025 at 03:05:19PM +0200, Alexander Lobakin wrote:
> From: Leon Romanovsky <leon@kernel.org>
> Date: Thu, 10 Apr 2025 14:23:49 +0300
> 
> > On Thu, Apr 10, 2025 at 12:44:33PM +0200, Larysa Zaremba wrote:
> >> On Thu, Apr 10, 2025 at 11:21:37AM +0300, Leon Romanovsky wrote:
> >>> On Tue, Apr 08, 2025 at 02:47:51PM +0200, Larysa Zaremba wrote:
> >>>> From: Phani R Burra <phani.r.burra@intel.com>
> >>>>
> >>>> Libeth will now support control queue setup and configuration APIs.
> >>>> These are mainly used for mailbox communication between drivers and
> >>>> control plane.
> >>>>
> >>>> Make use of the page pool support for managing controlq buffers.

<...>

> >> Module dependencies are as follows:
> >>
> >> libeth_rx and libeth_pci do not depend on other modules.
> >> libeth_cp depends on both libeth_rx and libeth_pci.
> >> idpf directly uses libeth_pci, libeth_rx and libeth_cp.
> >> ixd directly uses libeth_cp and libeth_pci.
> > 
> > You can do whatever module architecture for netdev devices, but if you
> > plan to expose it to RDMA devices, I will vote against any deep layered
> > module architecture for the drivers.
> 
> No plans for RDMA there.
> 
> Maybe link the whole kernel to one vmlinux then?

It seems that you didn't understand at all about what we are talking
here. Please use the opportunity that you are working for the same
company with Larysa and ask her offline. She understood perfectly about
which modules we are talking.

> 
> > 
> > BTW, please add some Intel prefix to the modules names, they shouldn't
> > be called in generic names like libeth, e.t.c
> 
> Two modules with the same name can't exist within the kernel. libeth was
> available and I haven't seen anyone wanting to take it. It's not common
> at all to name a module starting with "lib".

Again, please talk with Larysa. ETH part is problematic in libeth name
and not LIB.

Thanks
