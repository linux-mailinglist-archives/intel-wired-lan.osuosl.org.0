Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A238A9B267
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Apr 2025 17:33:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6BD442CF8;
	Thu, 24 Apr 2025 15:33:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ydOdlSQy1XPq; Thu, 24 Apr 2025 15:33:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0F63942D06
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1745508803;
	bh=1NumDrkN4RnzVjq5kAuuXo0VMoqYnoDa0Xtql4dRV0Q=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PVaBmPCCAQseTsMOvBWvEs1TMsjc2krS3KeeEkD8oGZkqubTr9vcVJYanfN05kMhr
	 n2LlVMfzCYxWJj1GKASNqtIii53q1sPnOIkwf+TLQmLKiipA8aFM9xrpI6rFAgxtnc
	 AL2K1AudjSrG3PYM8pEJknKpPKL1bSg3tR9BSqemcB5M09eVlLaEw5ybU5NJot4+ap
	 H1UzdtKngyWtFU4tJi7QUV37o2ojAMGc/uhuuuvl+o8DVYJvoEWdP0f0rA4x3JgNhU
	 K2ahoKsRL0sAKlf5hPRHHvLQ/59vvUMgLaCeAjAAKuUGuKXFSpfWRYriU7NWHe5rp1
	 qg8KE3kaewFAQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0F63942D06;
	Thu, 24 Apr 2025 15:33:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E830D2A6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:33:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E526983BAD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:33:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7vgA9UBOsO5M for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Apr 2025 15:33:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E6FDC83B85
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6FDC83B85
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E6FDC83B85
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Apr 2025 15:33:18 +0000 (UTC)
Received: from [141.14.220.36] (g36.guest.molgen.mpg.de [141.14.220.36])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 049956016243C;
 Thu, 24 Apr 2025 17:32:18 +0200 (CEST)
Message-ID: <744538a0-a1f5-48a5-b454-f1a2530268b7@molgen.mpg.de>
Date: Thu, 24 Apr 2025 17:32:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Larysa Zaremba <larysa.zaremba@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen
 <anthony.l.nguyen@intel.com>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, Jiri Pirko
 <jiri@resnulli.us>, Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>, Lee Trager
 <lee@trager.us>, Madhavan Srinivasan <maddy@linux.ibm.com>,
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
 Michal Kubiak <michal.kubiak@intel.com>
References: <20250424113241.10061-1-larysa.zaremba@intel.com>
 <20250424113241.10061-9-larysa.zaremba@intel.com>
Content-Language: en-US
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20250424113241.10061-9-larysa.zaremba@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 08/14] idpf: refactor idpf
 to use libie controlq and Xn APIs
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

Dear Larysa, dear Pavan,


Thank you for the patch.

Am 24.04.25 um 13:32 schrieb Larysa Zaremba:
> From: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> 
> Support to initialize and configure controlq, Xn manager,
> MMIO and reset APIs was introduced in libie. As part of it,
> most of the existing controlq structures are renamed and
> modified. Use those APIs in idpf and make all the necessary changes.
> 
> Previously for the send and receive virtchnl messages, there
> used to be a memcpy involved in controlq code to copy the buffer
> info passed by the send function into the controlq specific
> buffers. There was no restriction to use automatic memory
> in that case. The new implementation in libie removed copying
> of the send buffer info and introduced DMA mapping of the
> send buffer itself. To accommodate it, use dynamic memory for
> the send buffers. In case of receive, idpf receives a page pool
> buffer allocated by the libie and care should be taken to
> release it after use in the idpf.
> 
> The changes are fairly trivial and localized, with a notable exception
> being the consolidation of idpf_vc_xn_shutdown and idpf_deinit_dflt_mbx
> under the latter name. This has some additional consequences that are
> addressed in the following patches.

(You could reflow the text above to have consistent line length.)

Also, how can your patchset be verified? Does the module size change? Is 
the resource usage different for certain test cases?

> Reviewed-by: Michal Kubiak <michal.kubiak@intel.com>
> Signed-off-by: Pavan Kumar Linga <pavan.kumar.linga@intel.com>
> Co-developed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
> ---
>   drivers/net/ethernet/intel/idpf/Kconfig       |    1 +
>   drivers/net/ethernet/intel/idpf/Makefile      |    2 -
>   drivers/net/ethernet/intel/idpf/idpf.h        |   42 +-
>   .../net/ethernet/intel/idpf/idpf_controlq.c   |  624 -------
>   .../net/ethernet/intel/idpf/idpf_controlq.h   |  130 --
>   .../ethernet/intel/idpf/idpf_controlq_api.h   |  177 --
>   .../ethernet/intel/idpf/idpf_controlq_setup.c |  171 --
>   drivers/net/ethernet/intel/idpf/idpf_dev.c    |   91 +-
>   drivers/net/ethernet/intel/idpf/idpf_lib.c    |   49 +-
>   drivers/net/ethernet/intel/idpf/idpf_main.c   |   87 +-
>   drivers/net/ethernet/intel/idpf/idpf_mem.h    |   20 -
>   drivers/net/ethernet/intel/idpf/idpf_txrx.h   |    2 +-
>   drivers/net/ethernet/intel/idpf/idpf_vf_dev.c |   89 +-
>   .../net/ethernet/intel/idpf/idpf_virtchnl.c   | 1622 ++++++-----------
>   .../net/ethernet/intel/idpf/idpf_virtchnl.h   |   89 +-
>   .../ethernet/intel/idpf/idpf_virtchnl_ptp.c   |  303 ++-
>   16 files changed, 886 insertions(+), 2613 deletions(-)
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_api.h
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_controlq_setup.c
>   delete mode 100644 drivers/net/ethernet/intel/idpf/idpf_mem.h

[…]


Kind regards,

Paul
