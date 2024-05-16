Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BF628C72BF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 May 2024 10:27:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BC2640B75;
	Thu, 16 May 2024 08:27:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 69WH45n4sKzv; Thu, 16 May 2024 08:27:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8EA3641C7D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715848043;
	bh=8hBF7tpJr16x0wIWbdc4Wr4SNml531faoWZIDjkVO7Q=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NTLfvifvgmD4kAmvQ87U18cXMopacJNuR1EpEk42OgziaDwYx8pLoW7C1CCILfDRG
	 bbWwAiRgNtsQNHVPCeKO1US8Swsz/WsmVBDVdKgy0nOiaHev1r8UUEou/lqrWHznsc
	 85vQzM8kRUTzzawcpQD6xR3ddkStBWUT7rGvuO+Cf1Fd/kMSAn0sTiI9Whd7kkDF5B
	 MngGZulnIJ8R9olL6M8Fw1Vu0L2AI//mw+lixlKiYezF8pmtPazPXPt0i0D+LTW+47
	 NElZVwZbWVJPjI/XxPJxlm7MlNd0O1EOp5jCqk9xKNKopVtc8US0NdubsmH7V0kuxE
	 ZhidZj3PpdqNw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8EA3641C7D;
	Thu, 16 May 2024 08:27:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 19F921BF855
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0235360BF5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D2L-bRXFGvgt for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 May 2024 08:27:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 3A4EA60BE7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A4EA60BE7
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3A4EA60BE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 May 2024 08:27:21 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 114DD615F4;
 Thu, 16 May 2024 08:27:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48018C113CC;
 Thu, 16 May 2024 08:27:16 +0000 (UTC)
Date: Thu, 16 May 2024 09:27:13 +0100
From: Simon Horman <horms@kernel.org>
To: Larysa Zaremba <larysa.zaremba@intel.com>
Message-ID: <20240516082713.GC179178@kernel.org>
References: <20240515160246.5181-1-larysa.zaremba@intel.com>
 <20240515160246.5181-4-larysa.zaremba@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240515160246.5181-4-larysa.zaremba@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1715848039;
 bh=XS+c13dsUKZqV4fhUJ4NseTT8YN+F9dJ7nFDGFXcNrs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W+e1arsPk3v9M3A8EeaJpe0Z8uAAfgVylWc7wCMixoFpsYxiO9MFuM1ocFVQWmAeR
 KXFZOav5FfjYm03+McmjOpIdXEii1bxqkQ7/8xTAZEo2U8XQP2rBp6ipgo4uPalkuV
 pI3G5UHIJFYjL0qdyyW6ncIlnV77pQwjI/oV4GeDMHeZ7LFeQvodFEnlwh6ocDojZr
 Rhs+0VJzxcuD+TJmk93Zdt4cUvlMlwGtl17UBaYbgqvPjPtKbodCgnDVOZUE/yT/c6
 S0rmmeB4QipQDwpYo8jNBtAQs0cXym7XCM1RjrkdHC2gnkNB/buheVMKzkKahzGDYt
 IN9+Y3ltxHvdA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=W+e1arsP
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: map XDP queues to
 vectors in ice_vsi_map_rings_to_vectors()
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
Cc: maciej.fijalkowski@intel.com, Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 bpf@vger.kernel.org, Paolo Abeni <pabeni@redhat.com>,
 Magnus Karlsson <magnus.karlsson@gmail.com>, igor.bagnucki@intel.com,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 15, 2024 at 06:02:16PM +0200, Larysa Zaremba wrote:
> ice_pf_dcb_recfg() re-maps queues to vectors with
> ice_vsi_map_rings_to_vectors(), which does not restore the previous
> state for XDP queues. This leads to no AF_XDP traffic after rebuild.
> 
> Map XDP queues to vectors in ice_vsi_map_rings_to_vectors().
> Also, move the code around, so XDP queues are mapped independently only
> through .ndo_bpf().

Hi Larysa,

I take it the last sentence refers to the placement of ice_map_xdp_rings()
in ice_prepare_xdp_rings() after rather than before the
(cfg_type == ICE_XDP_CFG_PART) condition.

If so, I see that it is a small change. But I do wonder if it is separate
from fixing the issue described in the first paragraph. And thus would
be better as a separate patch.

Also, (I'm raising a separate issue :) breaking out logic into
ice_xdp_ring_from_qid() seems very nice.  But I wonder if this ought to be
part of a cleanup-patch for 'iwl' rather than a fixes patch for 'iwl-next'.

OTOH, I do see that breaking out ice_map_xdp_rings() makes sense in the
context of this fix as the same logic is to be called in two places.

Splitting patches aside, the resulting code looks good to me.

...
