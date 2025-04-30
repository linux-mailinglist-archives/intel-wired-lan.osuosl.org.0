Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4AEAA4607
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Apr 2025 10:55:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 167D540B4C;
	Wed, 30 Apr 2025 08:55:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id LMxhBk678iU8; Wed, 30 Apr 2025 08:55:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 456C040B45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1746003357;
	bh=s+2WfS2L0GRB4IkQUZbuZB3cNhN0r9lJ9I7LbbPvQus=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GaHnGLPjEEd8rp2NHhgj2z5p3wExBDtDVx+vcpL0CBsSbHfWf4lehHCiYDIMACZCV
	 IKzZRCO2EyBXphB5qlDxGSO98e26L9B6xINgskdDA+zsXGk+XBNZFy1YUrG2LSmNyz
	 3VsotqUcINDoZN5Po+l/BzwisiwFFexGTQV1xGC7jglKXd/q6fsdpfb+ocA24nhARP
	 J8+GDms74zSldVU8xQ+4tqVdy0RK6rK1b8it5kOwSt8EuLTZEEBB7Ce6rjoxNGu48E
	 KveanzOnYCCCKTAQcwFelJK2TP8C3hvaFjkr5bsuLUjsZX/XEqVWktKe/RMl5QOPi8
	 lCzAuq16+O3LQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 456C040B45;
	Wed, 30 Apr 2025 08:55:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 04AE8943
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id DFFE160E5D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oZpVZ-veracZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Apr 2025 08:55:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.105.4.254;
 helo=tor.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 234FC60758
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 234FC60758
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 234FC60758
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Apr 2025 08:55:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 92B3C615F2;
 Wed, 30 Apr 2025 08:55:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 37F93C4CEEC;
 Wed, 30 Apr 2025 08:55:47 +0000 (UTC)
Date: Wed, 30 Apr 2025 09:55:45 +0100
From: Simon Horman <horms@kernel.org>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Larysa Zaremba <larysa.zaremba@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Jiri Pirko <jiri@resnulli.us>,
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Lee Trager <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
 Sridhar Samudrala <sridhar.samudrala@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <20250430085545.GT3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
 <20250428161542.GD3339421@horms.kernel.org>
 <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <10fd9a4b-f071-47eb-bdde-13438218aee9@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1746003353;
 bh=xJSCsiMDZtliKUeMolwZ4YJOBTCwMnJKsGuYigXuz80=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LI1+81mjJXx23UKkeUU42/jgvJ0TacUjkeoQJ09A6EuBGvNiFLjDZU8n8Hmdyimtw
 nFOc0P4neTQgPtilp1PoVwE6XhA1tkA0qW3nJSnFcgB9kRxxhD2GYJR59POLppBHLf
 fpIXuyVkeihmh3+RF3qAi8vGaJSR8SEz81RdoGhGyoQXvRX75eM9ltt+3jktJ3hY6j
 W3RXh228Dy5hbwHNWI5v+3FAEtm43bgY3WDUhZn3U/0hpzNEje7+unz8fcempxxely
 mLecdZcVRmXHhs9B5eL22UyOYK7FSrj+0dMScbHs3GfsGD4w9AMIOPPY3DQHOKOfZu
 KyQj5g2Ul0wAg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LI1+81mj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 01/14] virtchnl: create
 'include/linux/intel' and move necessary header files
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

On Tue, Apr 29, 2025 at 11:47:58AM -0700, Jacob Keller wrote:
> 
> 
> On 4/28/2025 9:15 AM, Simon Horman wrote:
> > On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:
> >> From: Victor Raj <victor.raj@intel.com>
> >>
> >> Move intel specific header files into new folder
> >> include/linux/intel.
> >>
> >> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> >> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> >> Signed-off-by: Victor Raj <victor.raj@intel.com>
> >> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> >> ---
> >>  MAINTAINERS                                                 | 6 +++---
> >>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
> >>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
> >>  drivers/infiniband/hw/irdma/osdep.h                         | 2 +-
> >>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
> >>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
> >>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
> >>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
> >>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 2 +-
> >>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
> >>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
> >>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
> >>  drivers/net/ethernet/intel/ice/ice_virtchnl.h               | 2 +-
> >>  drivers/net/ethernet/intel/idpf/idpf.h                      | 2 +-
> >>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
> >>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
> >>  include/linux/{net => }/intel/i40e_client.h                 | 0
> >>  include/linux/{net => }/intel/iidc.h                        | 0
> >>  include/linux/{net => }/intel/libie/rx.h                    | 0
> >>  include/linux/{avf => intel}/virtchnl.h                     | 0
> >>  .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
> >>  .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
> >>  32 files changed, 29 insertions(+), 31 deletions(-)
> >>  rename include/linux/{net => }/intel/i40e_client.h (100%)
> >>  rename include/linux/{net => }/intel/iidc.h (100%)
> >>  rename include/linux/{net => }/intel/libie/rx.h (100%)
> >>  rename include/linux/{avf => intel}/virtchnl.h (100%)
> >>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
> >>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)
> >>
> >> diff --git a/MAINTAINERS b/MAINTAINERS
> >> index 657a67f9031e..2e2a57dfea8f 100644
> >> --- a/MAINTAINERS
> >> +++ b/MAINTAINERS
> >> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
> >>  F:	Documentation/networking/device_drivers/ethernet/intel/
> >>  F:	drivers/net/ethernet/intel/
> >>  F:	drivers/net/ethernet/intel/*/
> >> -F:	include/linux/avf/virtchnl.h
> >> -F:	include/linux/net/intel/iidc.h
> >> +F:	include/linux/intel/iidc.h
> >> +F:	include/linux/intel/virtchnl.h
> > 
> > I'm not sure that I understand the motivation for moving files out of
> > include/linux/net, but I guess the answer is that my suggestion, which
> > would be to move files into include/linux/net, is somehow less good.
> > 
> > But if file are moving out of include/linux/net then I think it would
> > make sense to make a corresponding update to NETWORKING DRIVERS.
> > 
> > Also, include/linux/intel, does feel a bit too general. These files
> > seem to relate to NICs (of some sort of flavour or another). But Intel
> > does a lot more than make NICs.
> > 
> 
> 'include/linux/net/intel' seems fine to me. I agree with moving
> virtchnl.h there since it is quite clear that any historical ambitions
> about AVF being vendor agnostic are long dead, so having it in its own
> 'non-intel' folder is silly.
> 
> Strictly speaking, I think the goal of moving the files is due to the
> fact that a lot of the core ixd code is not really network layer but
> instead PCI layer.

Sure. I was more thinking out loud in my previous email than requesting any
action. Thanks for filling in my understanding of the situation.

But could we please consider updating NETWORKING DRIVERS so
that get_maintainers.pl can help people to CC netdev and it's maintainers
as appropriate?
