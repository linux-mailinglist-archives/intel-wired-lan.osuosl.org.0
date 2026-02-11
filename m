Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNt7AKMcjGkYhAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 07:07:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 159181218EE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Feb 2026 07:07:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4D49360BB2;
	Wed, 11 Feb 2026 06:07:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 02LTtX98Z8tp; Wed, 11 Feb 2026 06:07:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65AD460BB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770790047;
	bh=TCDUbnfCXAkhDk913I45jYViqFk57Jw592xCzOGRf7o=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bOHe4JKBMTGsbpsFmFjihY2edRDy495hEDTkgzv1XWx6z8spRclM0kjsyvg10BNGA
	 DoY2btNF5n4ElsHwtlawlTimm005Nfmg1gaG5UeQJFAAnzJ0MQ014jFggP7gPNOwUT
	 96iEV5lQA1UmFlQwlbFUnvwTV1S/XpRJ4y5VDyCATyXYapd9tKs0C/xl+vvbnmoHLq
	 KueA3Ds9CNL8HSaN4TnFOCdCOznSEe0tcD/nUSrsKvIgFkFeC70287s0g32pp4cx/M
	 dYKknB9isJcI9BTXmJJKjkt9Ox7TNkLm+xIMkxpXukmXyqbL0gsj5goh9uszDrjKfU
	 h7aeSdCGTdVhg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65AD460BB4;
	Wed, 11 Feb 2026 06:07:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2B361F6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 06:07:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A78B660BB1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 06:07:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 74LaukJH6Eg0 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Feb 2026 06:07:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8E37F60B9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E37F60B9B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E37F60B9B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Feb 2026 06:07:23 +0000 (UTC)
X-CSE-ConnectionGUID: l59bep0DS+2IufTsayXmbw==
X-CSE-MsgGUID: nKnoiIcMSuqAAvMjUtigCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="71916412"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="71916412"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2026 22:07:23 -0800
X-CSE-ConnectionGUID: iCFmfES2RPi7IUyc5cpXeA==
X-CSE-MsgGUID: Q/uPc977Sg2laEKdR2gC0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="216678499"
Received: from lkp-server01.sh.intel.com (HELO 765f4a05e27f) ([10.239.97.150])
 by orviesa004.jf.intel.com with ESMTP; 10 Feb 2026 22:07:16 -0800
Received: from kbuild by 765f4a05e27f with local (Exim 4.98.2)
 (envelope-from <lkp@intel.com>) id 1vq3NZ-00000000pjI-1CEq;
 Wed, 11 Feb 2026 06:07:13 +0000
Date: Wed, 11 Feb 2026 14:07:10 +0800
From: kernel test robot <lkp@intel.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>,
 Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 Stanislav Fomichev <sdf@fomichev.me>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 Eduard Zingerman <eddyz87@gmail.com>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Cc: oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
 Jakub Sitnicki <jakub@cloudflare.com>, bpf@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-kselftest@vger.kernel.org
Message-ID: <202602111429.7z0nNd0Q-lkp@intel.com>
References: <20260210-bpf-xdp-meta-rxcksum-v1-3-e5d55caa0541@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260210-bpf-xdp-meta-rxcksum-v1-3-e5d55caa0541@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770790045; x=1802326045;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=xM91Tfu8SEyUDujMWffkdlLQ6abgiRKLRx//M74JqmM=;
 b=Aa0i8DjAO8zRmBNWWps67MzcR8TmE0UcdZk5i8wvefFkN3GfHKpFV0A6
 S9DBErws/tMNsJiOKtIWXh3c5QV3N2rYAxX5EmE8vp4VeSO4CPveYP2ZT
 YmOCcBSdNMicOYAK/ScQXAfX3DfnBLxREo0iZ3X6c/98QWB700a/B03Dl
 T1yIaPym/LDc8AsqjekrKFUYYLMuTJ7YOam9zkrJTg00tZxcbq2sKX7zD
 mpebiSALvtvabBwsXA1IUeqCcdaRBBvl31RYe79EoP/9kRr/+PoaJTZn+
 FEDZi9w2M0VXhGhIe+RbXFL1oIvo+LEtxS3YV6zBfXMumkIVeHrgqyeSp
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Aa0i8DjA
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 3/5] net: ice: Add
 xmo_rx_checksum callback
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.79 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lorenzo@kernel.org,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:ast@kernel.org,m:daniel@iogearbox.net,m:hawk@kernel.org,m:john.fastabend@gmail.com,m:sdf@fomichev.me,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksander.lobakin@intel.com,m:andrii@kernel.org,m:martin.lau@linux.dev,m:eddyz87@gmail.com,m:song@kernel.org,m:yonghong.song@linux.dev,m:kpsingh@kernel.org,m:haoluo@google.com,m:jolsa@kernel.org,m:skhan@linuxfoundation.org,m:maciej.fijalkowski@intel.com,m:oe-kbuild-all@lists.linux.dev,m:netdev@vger.kernel.org,m:jakub@cloudflare.com,m:bpf@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:donaldhunter@gmail.com,m:johnfastabend@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,intel.com:mid,intel.com:email,osuosl.org:dkim];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,davemloft.net,google.com,redhat.com,iogearbox.net,fomichev.me,lunn.ch,intel.com,linux.dev,linuxfoundation.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lkp@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: 159181218EE
X-Rspamd-Action: no action

Hi Lorenzo,

kernel test robot noticed the following build warnings:

[auto build test WARNING on db975debcb8c4cd367a78811bc1ba84c83f854bd]

url:    https://github.com/intel-lab-lkp/linux/commits/Lorenzo-Bianconi/netlink-specs-Add-XDP-RX-checksum-capability-to-XDP-metadata-specs/20260211-012550
base:   db975debcb8c4cd367a78811bc1ba84c83f854bd
patch link:    https://lore.kernel.org/r/20260210-bpf-xdp-meta-rxcksum-v1-3-e5d55caa0541%40kernel.org
patch subject: [Intel-wired-lan] [PATCH bpf-next 3/5] net: ice: Add xmo_rx_checksum callback
config: i386-randconfig-063-20260211 (https://download.01.org/0day-ci/archive/20260211/202602111429.7z0nNd0Q-lkp@intel.com/config)
compiler: gcc-14 (Debian 14.2.0-19) 14.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20260211/202602111429.7z0nNd0Q-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202602111429.7z0nNd0Q-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/net/ethernet/intel/ice/ice_txrx_lib.c:109:29: sparse: sparse: incorrect type in assignment (different base types) @@     expected unsigned int [usertype] @@     got restricted __wsum @@
   drivers/net/ethernet/intel/ice/ice_txrx_lib.c:109:29: sparse:     expected unsigned int [usertype]
   drivers/net/ethernet/intel/ice/ice_txrx_lib.c:109:29: sparse:     got restricted __wsum
>> drivers/net/ethernet/intel/ice/ice_txrx_lib.c:181:27: sparse: sparse: incorrect type in assignment (different base types) @@     expected restricted __wsum [usertype] csum @@     got unsigned int [addressable] [usertype] cksum_meta @@
   drivers/net/ethernet/intel/ice/ice_txrx_lib.c:181:27: sparse:     expected restricted __wsum [usertype] csum
   drivers/net/ethernet/intel/ice/ice_txrx_lib.c:181:27: sparse:     got unsigned int [addressable] [usertype] cksum_meta
   drivers/net/ethernet/intel/ice/ice_txrx_lib.c:515:9: sparse: sparse: context imbalance in 'ice_finalize_xdp_rx' - different lock contexts for basic block

vim +109 drivers/net/ethernet/intel/ice/ice_txrx_lib.c

    83	
    84	static void
    85	ice_get_rx_csum(const union ice_32b_rx_flex_desc *rx_desc, u16 ptype,
    86			struct ice_rx_ring *ring, enum xdp_checksum *ip_summed,
    87			u32 *cksum_meta)
    88	{
    89		struct libeth_rx_pt decoded = libie_rx_pt_parse(ptype);
    90		u16 rx_status0, rx_status1;
    91		bool ipv4, ipv6;
    92	
    93		if (!libeth_rx_pt_has_checksum(ring->netdev, decoded))
    94			goto checksum_none;
    95	
    96		rx_status0 = le16_to_cpu(rx_desc->wb.status_error0);
    97		rx_status1 = le16_to_cpu(rx_desc->wb.status_error1);
    98		if ((ring->flags & ICE_RX_FLAGS_RING_GCS) &&
    99		    rx_desc->wb.rxdid == ICE_RXDID_FLEX_NIC &&
   100		    (decoded.inner_prot == LIBETH_RX_PT_INNER_TCP ||
   101		     decoded.inner_prot == LIBETH_RX_PT_INNER_UDP ||
   102		     decoded.inner_prot == LIBETH_RX_PT_INNER_ICMP)) {
   103			const struct ice_32b_rx_flex_desc_nic *desc;
   104			u16 csum;
   105	
   106			desc = (struct ice_32b_rx_flex_desc_nic *)rx_desc;
   107			*ip_summed = XDP_CHECKSUM_COMPLETE;
   108			csum = (__force u16)desc->raw_csum;
 > 109			*cksum_meta = csum_unfold((__force __sum16)swab16(csum));
   110			return;
   111		}
   112	
   113		/* check if HW has decoded the packet and checksum */
   114		if (!(rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_L3L4P_S)))
   115			goto checksum_none;
   116	
   117		ipv4 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV4;
   118		ipv6 = libeth_rx_pt_get_ip_ver(decoded) == LIBETH_RX_PT_OUTER_IPV6;
   119	
   120		if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EIPE_S)))) {
   121			ring->vsi->back->hw_rx_eipe_error++;
   122			goto checksum_none;
   123		}
   124	
   125		if (ipv4 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_IPE_S))))
   126			goto checksum_fail;
   127	
   128		if (ipv6 && (rx_status0 & (BIT(ICE_RX_FLEX_DESC_STATUS0_IPV6EXADD_S))))
   129			goto checksum_fail;
   130	
   131		/* check for L4 errors and handle packets that were not able to be
   132		 * checksummed due to arrival speed
   133		 */
   134		if (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_L4E_S))
   135			goto checksum_fail;
   136	
   137		/* check for outer UDP checksum error in tunneled packets */
   138		if ((rx_status1 & BIT(ICE_RX_FLEX_DESC_STATUS1_NAT_S)) &&
   139		    (rx_status0 & BIT(ICE_RX_FLEX_DESC_STATUS0_XSUM_EUDPE_S)))
   140			goto checksum_fail;
   141	
   142		/* If there is an outer header present that might contain a checksum
   143		 * we need to bump the checksum level by 1 to reflect the fact that
   144		 * we are indicating we validated the inner checksum.
   145		 */
   146		if (decoded.tunnel_type >= LIBETH_RX_PT_TUNNEL_IP_GRENAT)
   147			*cksum_meta = 1;
   148	
   149		*ip_summed = XDP_CHECKSUM_UNNECESSARY;
   150		return;
   151	
   152	checksum_fail:
   153		ring->vsi->back->hw_csum_rx_error++;
   154	checksum_none:
   155		*ip_summed = XDP_CHECKSUM_NONE;
   156		*cksum_meta = 0;
   157	}
   158	
   159	/**
   160	 * ice_rx_csum - Indicate in skb if checksum is good
   161	 * @ring: the ring we care about
   162	 * @skb: skb currently being received and modified
   163	 * @rx_desc: the receive descriptor
   164	 * @ptype: the packet type decoded by hardware
   165	 *
   166	 * skb->protocol must be set before this function is called
   167	 */
   168	static void
   169	ice_rx_csum(struct ice_rx_ring *ring, struct sk_buff *skb,
   170		    union ice_32b_rx_flex_desc *rx_desc, u16 ptype)
   171	{
   172		enum xdp_checksum ip_summed;
   173		u32 cksum_meta;
   174	
   175		ice_get_rx_csum(rx_desc, ptype, ring, &ip_summed, &cksum_meta);
   176		switch (ip_summed) {
   177		case XDP_CHECKSUM_UNNECESSARY:
   178			skb->csum_level = cksum_meta;
   179			break;
   180		case XDP_CHECKSUM_COMPLETE:
 > 181			skb->csum = cksum_meta;
   182			break;
   183		default:
   184			break;
   185		}
   186		skb->ip_summed = ip_summed;
   187	}
   188	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
