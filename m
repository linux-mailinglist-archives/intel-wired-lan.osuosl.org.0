Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6354EBD4B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Mar 2022 11:10:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4C43340515;
	Wed, 30 Mar 2022 09:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGvr0nOEikAL; Wed, 30 Mar 2022 09:10:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4A650404EF;
	Wed, 30 Mar 2022 09:10:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 002011BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:10:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DD84D84560
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VdN2SQX9tLJ5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Mar 2022 09:10:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 29CE58454E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Mar 2022 09:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648631412; x=1680167412;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oVBDcKhQPIannLiyreJRo3QEwR2EwOYqp0Enn3LLlPU=;
 b=BCt8Pj7iN42SLYYGvOL6whLimFKQHT45eJkGvDK6DqMvA2GC1GyoNGiJ
 yCk+r9u1PDGqQLhDmrz8WNCPxLBHN2zRxktRKje2VIh4Fh/2+H3Yjdzib
 zgG1TYckPIaKWPaAGEryv6EK1QOZEtt3sc/4u1RCNVWehNxInZM/odUlM
 bFoZGQ2KCLFOq3DZ+dOiMMHGD7GlmySd5e9V2GnAVPX89gyJPWBHpyHCv
 27BLj6ALYoNexq1v25LAxNayqtWbXpuVtmK+C+ScCc28eUWc8xzBTxbr9
 9/3ZRWervMFLQwxWnrLMWms7Z8kL9mFM3pELplpwwRvYNqZ+h/GJgacl4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259207463"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="259207463"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 02:10:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="787940080"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga006.fm.intel.com with ESMTP; 30 Mar 2022 02:10:08 -0700
Received: from newjersey.igk.intel.com (newjersey.igk.intel.com
 [10.102.20.203])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 22U9A6qw001631; Wed, 30 Mar 2022 10:10:06 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Wed, 30 Mar 2022 11:07:34 +0200
Message-Id: <20220330090734.2725099-1-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <PH0PR11MB5782637EA9771D3ED4E56012FD1E9@PH0PR11MB5782.namprd11.prod.outlook.com>
References: <20220321105954.843154-1-alexandr.lobakin@intel.com>
 <20220321105954.843154-6-alexandr.lobakin@intel.com>
 <PH0PR11MB5782637EA9771D3ED4E56012FD1E9@PH0PR11MB5782.namprd11.prod.outlook.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 net-next 5/5] ice: switch: convert
 packet template match code to rodata
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
Cc: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Wojciech Drewek <wojciech.drewek@intel.com>
Date: Tue, 29 Mar 2022 15:12:44 +0000

> Hi Alex,
> 
> > -----Original Message-----
> > From: Lobakin, Alexandr <alexandr.lobakin@intel.com>
> > Sent: poniedzialek, 21 marca 2022 12:00
> > To: intel-wired-lan@lists.osuosl.org
> > Cc: Lobakin, Alexandr <alexandr.lobakin@intel.com>; Fijalkowski, Maciej <maciej.fijalkowski@intel.com>; Michal Swiatkowski
> > <michal.swiatkowski@linux.intel.com>; Drewek, Wojciech <wojciech.drewek@intel.com>; Marcin Szycik
> > <marcin.szycik@linux.intel.com>; Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>; David S. Miller
> > <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; netdev@vger.kernel.org; linux-
> > kernel@vger.kernel.org
> > Subject: [PATCH v4 net-next 5/5] ice: switch: convert packet template match code to rodata
> >
> > Trade text size for rodata size and replace tons of nested if-elses
> > to the const mask match based structs. The almost entire
> > ice_find_dummy_packet() now becomes just one plain while-increment
> > loop. The order in ice_dummy_pkt_profiles[] should be same with the
> > if-elses order previously, as masks become less and less strict
> > through the array to follow the original code flow.
> > Apart from removing 80 locs of 4-level if-elses, it brings a solid
> > text size optimization:
> >
> > add/remove: 0/1 grow/shrink: 1/1 up/down: 2/-1058 (-1056)
> > Function                                     old     new   delta
> > ice_fill_adv_dummy_packet                    289     291      +2
> > ice_adv_add_update_vsi_list                  201       -    -201
> > ice_add_adv_rule                            2950    2093    -857
> > Total: Before=414512, After=413456, chg -0.25%
> > add/remove: 53/52 grow/shrink: 0/0 up/down: 4660/-3988 (672)
> > RO Data                                      old     new   delta
> > ice_dummy_pkt_profiles                         -     672    +672
> > Total: Before=37895, After=38567, chg +1.77%
> >
> > Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
> > Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> > Tested-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > ---
> >  drivers/net/ethernet/intel/ice/ice_switch.c | 215 ++++++++++----------
> >  1 file changed, 108 insertions(+), 107 deletions(-)

--- 8< ---

> > +	ICE_PKT_PROFILE(vlan_udp, ICE_PKT_INNER_UDP | ICE_PKT_VLAN),
> > +	ICE_PKT_PROFILE(udp, ICE_PKT_INNER_UDP),
> > +	ICE_PKT_PROFILE(vlan_tcp_ipv6, ICE_PKT_INNER_IPV6 | ICE_PKT_VLAN),
> > +	ICE_PKT_PROFILE(tcp_ipv6, ICE_PKT_INNER_IPV6),
> 
> I think that in both "vlan_tcp_ipv6" and "tcp_ipv6" we should use ICE_PKT_OUTER_IPV6 instead
> of ICE_PKT_INNER_IPV6. We are not dealing with tunnels in those cases so inner addresses are 
> incorrect here.

Oh, some copy'n'paste braino indeed.
I'll send a fixup to Tony in a moment.

> 
> Thanks,
> Wojtek

Great catch, thanks for noticing!

> 
> > +	ICE_PKT_PROFILE(vlan_tcp, ICE_PKT_VLAN),
> > +	ICE_PKT_PROFILE(tcp, 0),
> > +};

--- 8< ---

> > --
> > 2.35.1

Al
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
