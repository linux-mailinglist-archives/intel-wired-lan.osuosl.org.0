Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC4F92646F
	for <lists+intel-wired-lan@lfdr.de>; Wed,  3 Jul 2024 17:10:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7B5EB6066D;
	Wed,  3 Jul 2024 15:10:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mt7JBCGyAr1v; Wed,  3 Jul 2024 15:10:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 53D3E60EF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1720019421;
	bh=Sp+S9V4camCGEgk40sFdrG2J77GnMTLeZHKZIvKJoN0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dFf5M28f9o2G4io4x/Na01pOhrdc1S0GCt3NLyqZlyFpwKRm++qv3l+fyG3n6/c+Q
	 Hq8WvS5SMA81/PATP6h1ThsCs+xXWeE3a082MmgseutFDLHwO3dT+1XO36kQOZsI+w
	 q/EI6KO+8I/tTJSYm7xKxNhQ2H0CrWklRdjIOTat/DeWNWUVTi6K67KCPWB1bPitDA
	 WAiJu94QmExVVULA/+ch9f++qxmHoefYgaWUpY02kqdPwHJsuZEwEqu1vinxeVJxgp
	 67xPwqI2YAHz9LSHKeNXWq7SwgJ58CAqMrb6cAErjJygFwoN6y8iugfa7LSrHiIzNf
	 pXeCHZuHUX/WA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 53D3E60EF5;
	Wed,  3 Jul 2024 15:10:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3C0111BF2FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 27016417FC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id dzMiVHljBVtg for <intel-wired-lan@lists.osuosl.org>;
 Wed,  3 Jul 2024 15:10:18 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 3812B417ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3812B417ED
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3812B417ED
 for <intel-wired-lan@lists.osuosl.org>; Wed,  3 Jul 2024 15:10:17 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id 87496CE2CCC;
 Wed,  3 Jul 2024 15:10:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D5FAC4AF0C;
 Wed,  3 Jul 2024 15:10:10 +0000 (UTC)
Date: Wed, 3 Jul 2024 16:10:08 +0100
From: Simon Horman <horms@kernel.org>
To: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>
Message-ID: <20240703151008.GP598357@kernel.org>
References: <20240702040926.3327530-1-faizal.abdul.rahim@linux.intel.com>
 <20240702040926.3327530-4-faizal.abdul.rahim@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240702040926.3327530-4-faizal.abdul.rahim@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1720019412;
 bh=8fLf5saJRRvwzPYwzm3t4nhdxaXW8budd0rLUeJYNfU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=p58rk8swixnthiPBPiCb3f1y/SBWnQBaZlg9xHhtZ24NfKUZH4XLfIKVUYZOsqhV1
 jrEStna4xS/WqMKpQLFvHJB9Nt8SWg9dfcjJ/LKtpESJNJQ5omGCl3s4CeVT3NMtKB
 GHEoDZdS5SYtpJ4ZUsdpGKw7HBORcVoIUhBT76MmgRrqHjSPL3fkglGeDbXG0wXiJg
 Z6MP1oAxEuYPnNkbU/kqfoXOJtB7BF8UuD61EhOINs8U3MSoCQu+L24Uoml4LKioO0
 HTEKuUdY78TyhVeFJqN5XRGIuUBbd6NaBwXVlpwxOtkU04w8qu5Pm9fF9SoZelJANY
 7oMiXSK0rdZWw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=p58rk8sw
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v1 3/4] igc: Remove unused
 qbv_count
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
Cc: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jul 02, 2024 at 12:09:25AM -0400, Faizal Rahim wrote:
> Removing qbv_count which is now obsolete after these 2 patches:
> "igc: Fix reset adapter logics when tx mode change"
> "igc: Fix qbv_config_change_errors logics"
> 
> The variable qbv_count serves to indicate whether Taprio is active or if
> the tx mode is in TSN (IGC_TQAVCTRL_TRANSMIT_MODE_TSN). This is due to its
> unconditional increment within igc_tsn_enable_offload(), which both runs
> Taprio and sets the tx mode to TSN.
> 
> Signed-off-by: Faizal Rahim <faizal.abdul.rahim@linux.intel.com>

Hi Faizal,

This change looks good to me.
However, it seems more appropriate as a clean-up for iwl-next
once the previous to patches make it there via iwl-net.

That notwithstanding,

Reviewed-by: Simon Horman <horms@kernel.org>

...
