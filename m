Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429AE845913
	for <lists+intel-wired-lan@lfdr.de>; Thu,  1 Feb 2024 14:39:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A936240541;
	Thu,  1 Feb 2024 13:39:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A936240541
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1706794762;
	bh=d30XK/xhz/M8EM/HxhwiWkuWUBYT82Myggey1+TGD6g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Nefse8xycAk2yAZti6LMYtg4cWmImlSPFUaXJXcD7YfGxDXEcoIS6crCivQSGoCZF
	 ZGlYuRBAK2FNtPLK6X+n489a3yl41Xl2Xwa0VTxJK8oa6AUpuFtQvZzCMB8AXbMIS4
	 6TrQn8A+w7cfT5FM1Lni9AEiO8C+Amp3yayeNhSaA1oJoCDq5RAXjFBfYxSK1TBFmB
	 zdoSsbcbh7AZFAO4l1MypHskRgsweza/8u+mm30XT9fiIa8+x/eyTt90Xs/qEOBD56
	 6gdsuSYqmPXaqoH4M7aJ557FaTtTjsICoUQaX6aYIARpitdndKwYICjfE/kJfY2TcQ
	 PCacufG7tB2hA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mEE6Ha9Ot_dz; Thu,  1 Feb 2024 13:39:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64D0E4047B;
	Thu,  1 Feb 2024 13:39:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64D0E4047B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AAD791BF396
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8285981F25
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:39:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8285981F25
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sn2PsPSUcsdT for <intel-wired-lan@lists.osuosl.org>;
 Thu,  1 Feb 2024 13:39:14 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D8F781EB6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  1 Feb 2024 13:39:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D8F781EB6
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1rVXHR-006g6Z-Aw; Thu, 01 Feb 2024 14:39:01 +0100
Date: Thu, 1 Feb 2024 14:39:01 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Kurt Kanzenbach <kurt@linutronix.de>
Message-ID: <3629e504-4c22-4222-b218-32c9945ff77e@lunn.ch>
References: <20240201125946.44431-1-kurt@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240201125946.44431-1-kurt@linutronix.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=d30XK/xhz/M8EM/HxhwiWkuWUBYT82Myggey1+TGD6g=; b=pfWVp3HEOPYU9Q9TVf75m3an89
 pKfeQElyNcmTeR+Eho2Fr1P7Hrd0ajyQ1o4xTBIZNrgFn0fOoKqFCHnuOKn5SjNWueJXLYXLW91h6
 pZu6PyytOQOt1SKwYWB7II4655SSWPWPgUy/2lrHGm/Jre6oHABvH/L9WPlGu/wmwn9I=;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=pfWVp3HE
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] igc: Add support for LEDs
 on i225/i226
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

On Thu, Feb 01, 2024 at 01:59:46PM +0100, Kurt Kanzenbach wrote:
> Add support for LEDs on i225/i226. The LEDs can be controlled via sysfs
> from user space using the netdev trigger. The LEDs are named as
> igc-<bus><device>-<led> to be easily identified.
> 
> Offloading link speed is supported. Other modes are simulated in software
> by using on/off. Tested on Intel i225.
> 
> Signed-off-by: Kurt Kanzenbach <kurt@linutronix.de>
> ---
> 
> Changes since v1:
> 
>  * Add brightness_set() to allow software control (Andrew)
>  * Remove offloading of activity, because the software control is more flexible

Please could you expand on that. Activity is quite expensive in
software, since it needs to get the statistics every 50ms and then
control the LED. So if activity can be offloaded, it should
be. Sometimes the hardware can only offload a subset of activity
indications, which is fine. It should implement those it can, and
leave the rest to software.

	Andrew
