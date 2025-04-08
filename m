Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAE9A7F19C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  8 Apr 2025 02:24:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FCDC80EFE;
	Tue,  8 Apr 2025 00:24:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Qnlqlqltms72; Tue,  8 Apr 2025 00:24:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 88FF1820B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744071875;
	bh=siuFjj+RbT84DvTvYDeM7Qevd/gL4oB18k+caTuTpy4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=9kSHiRe/UTD0FPE2lHV1CdFPGbConTT4pcvVYAklZpXLhNXyrVQvrESLRCEbr4hWm
	 ePzdlXxCXrQyzucyfgiTv1q3Cwo4YKfSTId1NoC1qgYLvvtVrLigNtZhSaMvackV3s
	 rElFWJ24XGXyRDUV0Ptcak90gjLeg3Ca+zTunvrMyi1OmzNWZklB/dmVvquvqufqtf
	 /tXpqTWwOVojI8LWa9OhLiTiesH2C2eLsQDkUl1xh850XiUmMBlwlqMK4pLHO/u9Xg
	 isa2oxlJiWumDyLnxMTWVkMVPMQ9hDBGCzRR/I96gZQW2MJ8VaEkqu7SUZF7UnhPjm
	 j9mvEOnIpMIbQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88FF1820B9;
	Tue,  8 Apr 2025 00:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 53AF41F1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 00:24:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4D7264096D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 00:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BdjR2gQBPceO for <intel-wired-lan@lists.osuosl.org>;
 Tue,  8 Apr 2025 00:24:33 +0000 (UTC)
X-Greylist: delayed 571 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 08 Apr 2025 00:24:33 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org BB7FF408EB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB7FF408EB
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=jpoimboe@kernel.org; receiver=<UNKNOWN> 
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BB7FF408EB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  8 Apr 2025 00:24:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A29C943D5A;
 Tue,  8 Apr 2025 00:15:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A05AC4CEDD;
 Tue,  8 Apr 2025 00:15:01 +0000 (UTC)
Date: Mon, 7 Apr 2025 17:14:59 -0700
From: Josh Poimboeuf <jpoimboe@kernel.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Cc: linux-kernel@vger.kernel.org, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>, 
 Eric Dumazet <edumazet@google.com>, "David S. Miller" <davem@davemloft.net>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Peter Zijlstra <peterz@infradead.org>
Message-ID: <6nzfoyak4cewjpmdflg5yi7jh2mqqdsfqgljoolx5lvdo2p65p@rwjfl7cqkfoo>
References: <4970551.GXAFRqVoOG@natalenko.name>
 <5874052.DvuYhMxLoT@natalenko.name>
 <ficwjo5aa6enekhu6nsmsi5vfp6ms7dgyc326yqknda22pthdn@puk4cdrmem23>
 <2983242.e9J7NaK4W3@natalenko.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2983242.e9J7NaK4W3@natalenko.name>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1744071302;
 bh=p6MZUSqU/sLAunm0i5UVvuGHuAIYSf5Oj5/EKR2DRKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LdGDAG2hgb+NyDTKjmLOYhwyctZI8CG3KVx95SQMiC4tyXDVEOVReqD3wTUk84/MQ
 7j3azr1DYeCpYDQFP1fy1l+jZ2cr+LMdDHh5OAJD7iR7qRv+B7YXpliggHVnsc4jaD
 2uQI3qK8+T7KJmhI7/Iybfd7jAsUQXV5YH59g18waMkj7NSprj991TBx+SqusjJrwf
 tDBzScRmYQjNogmZloPriZL3LjQc4qYCMMpzSohypLsjRAUtW+q+a5Dc3EhFLmN8sD
 9Uj89CTBhPupTyhbRY5l/bYYD8aKx0ER+Kvo6Fxvp6gMq2qCwb+0Mqx76U2jGztFie
 Kgy38iSJ+0kFQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=LdGDAG2h
Subject: Re: [Intel-wired-lan] objtool warning in ice_free_prof_mask
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

On Mon, Apr 07, 2025 at 11:49:35PM +0200, Oleksandr Natalenko wrote:
> $ make drivers/net/ethernet/intel/ice/ice.o
> …
>   LD [M]  drivers/net/ethernet/intel/ice/ice.o
> drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0() falls through to next function ice_free_flow_profs.cold()
> drivers/net/ethernet/intel/ice/ice.o: error: objtool: ice_free_prof_mask.isra.0.cold() is missing an ELF size annotation

Thanks, I was able to recreate.

This is the -O3 optimizer noticing that ice_write_prof_mask_reg() is
only called with ICE_BLK_RSS or ICE_BLK_FD.  So it optimizes out the
impossible 'default' case in this switch statement:

	switch (blk) {
	case ICE_BLK_RSS:
		offset = GLQF_HMASK(mask_idx);
		val = FIELD_PREP(GLQF_HMASK_MSK_INDEX_M, idx);
		val |= FIELD_PREP(GLQF_HMASK_MASK_M, mask);
		break;
	case ICE_BLK_FD:
		offset = GLQF_FDMASK(mask_idx);
		val = FIELD_PREP(GLQF_FDMASK_MSK_INDEX_M, idx);
		val |= FIELD_PREP(GLQF_FDMASK_MASK_M, mask);
		break;
	default:
		ice_debug(hw, ICE_DBG_PKG, "No profile masks for block %d\n",
			  blk);
		return;
	}

Unfortunately, instead of finishing the optimization, it inserts
undefined behavior for the 'default' case by branching off to some
random code.

So there doesn't seem to be any underlying bug, it's just that objtool
doesn't like undefined behavior.

So for building with -O3 I'd recommend just disabling
CONFIG_OBJTOOL_WERROR and ignoring any objtool warnings.

-- 
Josh
