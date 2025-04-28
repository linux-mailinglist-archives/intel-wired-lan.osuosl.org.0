Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DBB89A9F565
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Apr 2025 18:15:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAAAF606E2;
	Mon, 28 Apr 2025 16:15:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MEZmIUE72FeI; Mon, 28 Apr 2025 16:15:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B99AB60A40
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745856953;
	bh=5Pl8iNgY6PbQdg8tLLJ5TKhaIMfzLklE22PXi1CCmWg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VY1lDlni1Ia8O2rLPbz7ApAv8arRi/lrXXM76mvaXuJcQkpUIm8cegSFZ5DUF4SDd
	 gItsZyaPR8wA29l4HZakcs6JnhcwgDxrkM+TkL4+p9HO0vMX7NINHYx20A7gN83R3r
	 dVzmf0F35b3wYQszMnlSIKCS95gqTzSHNHeVcl7DK6jAhSwtLvcMiqE2uVzpw04qLO
	 VDcKki+6mXyX47JopXXInlgDiKQjjQr6ChNlw1aWs6LkiLxi6uvCTElcwe+Jy14k6M
	 Y99i3G/+B7KuCvkUHkvsqrDykrLFvtC4SqyXRjfr0jjogtpcNyF9IoP9qYj4iA1ZlI
	 VpNfgy2PHT2Rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B99AB60A40;
	Mon, 28 Apr 2025 16:15:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id A1EB331
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:15:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 878136065F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:15:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mXLzHm9HEaFh for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Apr 2025 16:15:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A7DDA60652
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A7DDA60652
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A7DDA60652
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Apr 2025 16:15:51 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 5E7525C57FB;
 Mon, 28 Apr 2025 16:13:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80881C4CEE4;
 Mon, 28 Apr 2025 16:15:44 +0000 (UTC)
Date: Mon, 28 Apr 2025 17:15:42 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
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
 Jacob Keller <jacob.e.keller@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Ahmed Zaki <ahmed.zaki@intel.com>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 Emil Tantilov <emil.s.tantilov@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, Josh Hay <joshua.a.hay@intel.com>,
 Milena Olech <milena.olech@intel.com>, pavan.kumar.linga@intel.com,
 "Singhai, Anjali" <anjali.singhai@intel.com>
Message-ID: <20250428161542.GD3339421@horms.kernel.org>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-2-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424113241.10061-2-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1745856950;
 bh=iqNP0hU3IjnWmgdEg95YCQHUyyxU09ifoxYOSrBliRY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W97oK6cgtJNEwz7oFlcr70nFNj4Po9ZAS/hCsNrAudkGxxsu8wN7r5SRbb0MqaZCY
 k662rjsyf+P9yksDWy1s/nsOrs2LP/rHhxXa8nbjBPvqvYgo8TQELXMQ4arsKiSWpY
 IbcrSbi0efDBZ9wUiMc/ft/XQxflEkhvv/KB8nP8Ty7qrTJ2LxBT2JEF5HVwNiiG0T
 2rN7zHKP1GPzgYiqPDtVSYjL+/sEgcB15zMPScEaMtaJA22jVo1YRT5TizQjOILy+l
 NnQxEBJhNNsMF2EqOXYHgufBJyLyBYxI6c7UYkaciAwQi1NXYOwdslL3nvLkYlqXtd
 XudoKVyVepEWw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=W97oK6cg
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

On Thu, Apr 24, 2025 at 01:32:24PM +0200, Larysa Zaremba wrote:
> From: Victor Raj <victor.raj@intel.com>
> 
> Move intel specific header files into new folder
> include/linux/intel.
> 
> Suggested-by: Alexander Lobakin <aleksander.lobakin@intel.com>
> Reviewed-by: Sridhar Samudrala <sridhar.samudrala@intel.com>
> Signed-off-by: Victor Raj <victor.raj@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>  MAINTAINERS                                                 | 6 +++---
>  drivers/infiniband/hw/irdma/i40iw_if.c                      | 2 +-
>  drivers/infiniband/hw/irdma/main.h                          | 2 +-
>  drivers/infiniband/hw/irdma/osdep.h                         | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e.h                      | 4 ++--
>  drivers/net/ethernet/intel/i40e/i40e_client.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_common.c               | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.c                 | 2 +-
>  drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.h          | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf.h                      | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_common.c               | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_main.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_prototype.h            | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_txrx.c                 | 2 +-
>  drivers/net/ethernet/intel/iavf/iavf_types.h                | 4 +---
>  drivers/net/ethernet/intel/iavf/iavf_virtchnl.c             | 2 +-
>  drivers/net/ethernet/intel/ice/ice.h                        | 2 +-
>  drivers/net/ethernet/intel/ice/ice_common.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/ice_idc_int.h                | 2 +-
>  drivers/net/ethernet/intel/ice/ice_txrx_lib.c               | 2 +-
>  drivers/net/ethernet/intel/ice/ice_vf_lib.h                 | 2 +-
>  drivers/net/ethernet/intel/ice/ice_virtchnl.h               | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf.h                      | 2 +-
>  drivers/net/ethernet/intel/idpf/idpf_txrx.h                 | 2 +-
>  drivers/net/ethernet/intel/libie/rx.c                       | 2 +-
>  include/linux/{net => }/intel/i40e_client.h                 | 0
>  include/linux/{net => }/intel/iidc.h                        | 0
>  include/linux/{net => }/intel/libie/rx.h                    | 0
>  include/linux/{avf => intel}/virtchnl.h                     | 0
>  .../ethernet/intel/idpf => include/linux/intel}/virtchnl2.h | 0
>  .../intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h | 0
>  32 files changed, 29 insertions(+), 31 deletions(-)
>  rename include/linux/{net => }/intel/i40e_client.h (100%)
>  rename include/linux/{net => }/intel/iidc.h (100%)
>  rename include/linux/{net => }/intel/libie/rx.h (100%)
>  rename include/linux/{avf => intel}/virtchnl.h (100%)
>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2.h (100%)
>  rename {drivers/net/ethernet/intel/idpf => include/linux/intel}/virtchnl2_lan_desc.h (100%)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 657a67f9031e..2e2a57dfea8f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11884,8 +11884,8 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/tnguy/next-queue.git
>  F:	Documentation/networking/device_drivers/ethernet/intel/
>  F:	drivers/net/ethernet/intel/
>  F:	drivers/net/ethernet/intel/*/
> -F:	include/linux/avf/virtchnl.h
> -F:	include/linux/net/intel/iidc.h
> +F:	include/linux/intel/iidc.h
> +F:	include/linux/intel/virtchnl.h

I'm not sure that I understand the motivation for moving files out of
include/linux/net, but I guess the answer is that my suggestion, which
would be to move files into include/linux/net, is somehow less good.

But if file are moving out of include/linux/net then I think it would
make sense to make a corresponding update to NETWORKING DRIVERS.

Also, include/linux/intel, does feel a bit too general. These files
seem to relate to NICs (of some sort of flavour or another). But Intel
does a lot more than make NICs.

>  
>  INTEL ETHERNET PROTOCOL DRIVER FOR RDMA
>  M:	Mustafa Ismail <mustafa.ismail@intel.com>
> @@ -13534,7 +13534,7 @@ L:	netdev@vger.kernel.org
>  S:	Maintained
>  T:	git https://github.com/alobakin/linux.git
>  F:	drivers/net/ethernet/intel/libie/
> -F:	include/linux/net/intel/libie/
> +F:	include/linux/intel/libie/
>  K:	libie
>  
>  LIBNVDIMM BTT: BLOCK TRANSLATION TABLE

...
