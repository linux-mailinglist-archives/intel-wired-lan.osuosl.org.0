Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F8683C177
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jan 2024 12:59:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 571E343567;
	Thu, 25 Jan 2024 11:59:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 571E343567
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706183962;
	bh=biHPs08dT5XzmM/VMCa9rChUlH5shkrQSS3J208w2iI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Vt01/S0hpb9u/Wr2flPPeKWzKl9gTzSjHJtJx8KjSN6AlMI9/1j8yqgaOL2ncV/gb
	 htHG0IeqBilJgabk3ipib6tKuhto0RVpb92Gh38S/xuhFb+6WX++HOSX8Y+eNYmFuf
	 Gac9L0D7M/w4YPoc/+xAwHrfAiX0StnwhmQf2zTt3l6iac/iuGJsBI5CzUCccNenYu
	 r4/0TB9AVZ/7+DR5yp8o6IhpygonAgV8fPPLB6Elgi+LWlATfm6xn3GslpaIVF2Nlz
	 MVWXNerlvGoG3VA8v7bVHv/1Bw9fqjWqQiVrEgk3tcqUdpcLNV5uY89uABJHETYuZ4
	 g8SEPN7pd9kIQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1L9UCJdQpyYQ; Thu, 25 Jan 2024 11:59:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5B18C4051B;
	Thu, 25 Jan 2024 11:59:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B18C4051B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 165B61BF20B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4E6761422
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E4E6761422
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bIiL6mqv-3Cw for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jan 2024 11:59:15 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 717B7605B3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jan 2024 11:59:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 717B7605B3
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 99FD6620DC;
 Thu, 25 Jan 2024 11:59:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01821C433F1;
 Thu, 25 Jan 2024 11:59:11 +0000 (UTC)
Date: Thu, 25 Jan 2024 11:59:09 +0000
From: Simon Horman <horms@kernel.org>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <20240125115909.GK217708@kernel.org>
References: <20240124085532.58841-1-kurt@linutronix.de>
 <20240124085532.58841-3-kurt@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240124085532.58841-3-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1706183954;
 bh=sy9jnTnu4ekf4cfjw+OBOmGCKjYTwRsNcuaX3R73FmY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z/rv7L1Apr8g+uThWhZEKLyRt2GAuF/PcPSkIfAGWW2iBBScM51/2blHe7ofrnDuf
 MGLwfH4SSvWcjaczDA833/I/kzmiO7XD1TjlJDK6uHTX0Y6GDDILW5qOCRe05FaJXe
 JPjM2DjXBWtAsgSqkrZnJ3QD38ga732MLPVUSdOXlWi5id6aNapzgR8SSIlC+bFiWj
 JYOET5vYHIedEP/RED6XhcTRlicUowSNaBTkN3Rx3PfzcxXrisBtcCOWRfWG3Zbt2r
 nfzwbhSuFRcsYOLeSPHP9bYc4uIqfG/4FTin4Aae+DjaDgEvBWy5aNMn1FladJ5bHO
 Kr4M6MrIDnvdA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Z/rv7L1A
Subject: Re: [Intel-wired-lan] [PATCH v2 iwl-next 2/3] igc: Use netdev
 printing functions for flex filters
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
 intel-wired-lan@lists.osuosl.org,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jan 24, 2024 at 09:55:31AM +0100, Kurt Kanzenbach wrote:
> All igc filter implementations use netdev_*() printing functions except for
> the flex filters. Unify it.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

