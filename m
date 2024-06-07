Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 992AC90024E
	for <lists+intel-wired-lan@lfdr.de>; Fri,  7 Jun 2024 13:37:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9784C8490C;
	Fri,  7 Jun 2024 11:37:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id XkMUJEcbOy6u; Fri,  7 Jun 2024 11:37:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D96AA84917
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717760270;
	bh=1mFvJX/XrH/iQqx8Jt6mbOrdBvbYZbMWI3BvV8LFQgQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=55MS4OLXgIO+d48yta3gEY3LaVvI83WIJKS4N8PXfCsUCZ5rdFQNpQp2t0oUs494t
	 2JdXKaoCqmNnknWt1ozsA3vrBAhg1Wm0aapY2AGgR7QDz0z2Ps3BH+XJFx74TzgfZV
	 17vXbCXVbOMj6zfAXkHpMby6MbgGpFk5ezcfJMFQCpR9CFAZQQjVhwhpb7OihmG6Jc
	 IvLRPsTbaleUotY4cqGXf23/wJfRXznanUU9CGmKswkuevNV71AXp9Y9rmppTQ2Lsn
	 FnRGUVZJ+fKL5ZKYu4XA4tcRE9r5FcBVVaRTL+BNaQpoqBvTgmAeuI7pyT9WWbEs/1
	 iartCiuOFTRtw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D96AA84917;
	Fri,  7 Jun 2024 11:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7AD651BF48B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 11:37:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 73488401AF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 11:37:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k0u4MNFxjU3U for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Jun 2024 11:37:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6610540184
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6610540184
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6610540184
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Jun 2024 11:37:47 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 3C9ADCE1CEE;
 Fri,  7 Jun 2024 11:37:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42264C2BBFC;
 Fri,  7 Jun 2024 11:37:41 +0000 (UTC)
Date: Fri, 7 Jun 2024 12:37:38 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240607113738.GB27689@kernel.org>
References: <20240605141744.601582-2-marcin.szycik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240605141744.601582-2-marcin.szycik@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1717760262;
 bh=kiptBnS9JUMvhBxMkWjliFSytL9F2qoeGgcaS142Giw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=o94QypjpysWVa/IAq24fPx2jXexO8oSfEC21XYxwUEC3KWB8e6chZ5Wq5jYMHMRLV
 BRecJDAzovKXyLxI6rBdWVATruts6DR4LGaEVjY9V2cekxI7mDA8Z8IR2RmauP/Gp8
 AgjnYXFVRGnkXi7JuWcEPT8G1PB5pL3N613gUZaoIWjMkcoHeCikMRu4ahNfhfzUUs
 LobQdLI4qgUpkHBkcLL6N8S2Q5Tilrq2Og03wiPno78UebhE+Efa3LVlcYZaqsfL81
 SMSrlvstILwXZVi0QxPK7b2fBWKyw/EamMEKZ6sGcyAhotlhHY5RN0pA0e6J6oQNog
 JgEsDvKvNYahQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=o94Qypjp
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: Fix VSI list rule with
 ICE_SW_LKUP_LAST type
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 05, 2024 at 04:17:45PM +0200, Marcin Szycik wrote:
> Adding/updating VSI list rule, as well as allocating/freeing VSI list
> resource are called several times with type ICE_SW_LKUP_LAST, which fails
> because ice_update_vsi_list_rule() and ice_aq_alloc_free_vsi_list()
> consider it invalid. Allow calling these functions with ICE_SW_LKUP_LAST.
> 
> This fixes at least one issue in switchdev mode, where the same rule with
> different action cannot be added, e.g.:
> 
>   tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
>     dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF1_PR
>   tc filter add dev $PF1 ingress protocol arp prio 0 flower skip_sw \
>     dst_mac ff:ff:ff:ff:ff:ff action mirred egress redirect dev $VF2_PR
> 
> Fixes: 0f94570d0cae ("ice: allow adding advanced rules")
> Suggested-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

