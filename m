Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2BF77D070
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 18:55:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D23CC61144;
	Tue, 15 Aug 2023 16:55:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D23CC61144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692118528;
	bh=WN9S8Njc2tiAyYvTsvRD2mLgDtiW0AVJLknxGc99Mek=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8/Z66xxhcZOV6bRp/6v5AQn+j0UrAdV/SlLd0T3yAJyYxKyqKf/rGoBHSQ1HTikye
	 zRhhcxlnQ6/fQixGvoakoR5M/0sRCDsz5zdjZRuRsz0UnZFWTA1VKAvTg9E/eTgykD
	 nNifNp3hipI0QSmaE6tvSF0Cu07kCekJrpkkv5C6N+bt2NmgUAcPXIH28uUn9vgcPS
	 /TVwur0tey8NYy4nR2eK7yKrQPgX2hTFR4L/6gNwWUwFMLCsJn9FIOgLRoWAm2afxo
	 AWhqsg8BiORUBKJLX1Vt6E//qKa0GY/t+9iElGUzAvtx+4yN5OoT2QdEx5SIh26XWY
	 zcN+WbRQXJP0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X86WcdXfQNAY; Tue, 15 Aug 2023 16:55:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A913960C2B;
	Tue, 15 Aug 2023 16:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A913960C2B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 635AE1BF379
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:55:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3BA0E60C2B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:55:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3BA0E60C2B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gPlDLK5QD5KU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 16:55:22 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8759C60C16
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 16:55:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8759C60C16
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id AD5E261ADA;
 Tue, 15 Aug 2023 16:55:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51967C433CD;
 Tue, 15 Aug 2023 16:55:20 +0000 (UTC)
Date: Tue, 15 Aug 2023 09:55:19 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230815095519.76d06274@kernel.org>
In-Reply-To: <d5c30de7-df89-18dd-3ad8-a5d99c1e7108@linux.dev>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-5-vadim.fedorenko@linux.dev>
 <20230814202441.349586b4@kernel.org>
 <d5c30de7-df89-18dd-3ad8-a5d99c1e7108@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692118520;
 bh=0NoRpcHZaUX5im0cn9/N12oK9jNQtW6pqx60BrLK0cs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=h/qtXebOTThtIYgLdqHqoNRqfFRfa9y/NntkWbmyTvfgyh9BOctmFKj8k3XAsH1JF
 aoJAGqTrHqidY5JCD+vm0ExK6+BLcxDLSq3p717eHvClBAxkaQSQRbfU1psUYJ74Bd
 kRbPS0rjZmAdOGYHTHVXNwPnKjpnhSFi0B1wAuRKNJLkChNkLAJtDl052iMqhiYfZN
 gLXuKq0MKFOl6PONyTJmxtK4SAvnRX8Q7p9ID1pGkSED5bp6y1rmkY83gbeufmn7as
 b20tSiNqCkYQIn2ljZnydCYVtFoTrK3QNRMZqB4owFbaLyN+qC3eEAVhaUSNzJt1Kk
 YrHv4JWLD1v1g==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=h/qtXebO
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 4/9] dpll: netlink: Add
 DPLL framework base functions
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
Cc: Jiri Pirko <jiri@resnulli.us>, Bart Van Assche <bvanassche@acm.org>,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-arm-kernel@lists.infradead.org, Jiri Pirko <jiri@nvidia.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-clk@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 15 Aug 2023 16:18:16 +0100 Vadim Fedorenko wrote:
> On 15/08/2023 04:24, Jakub Kicinski wrote:
> > On Fri, 11 Aug 2023 21:03:35 +0100 Vadim Fedorenko wrote:  
> >> +	xa_for_each(&pin->dpll_refs, i, ref) {
> >> +		const struct dpll_pin_ops *ops = dpll_pin_ops(ref);
> >> +		struct dpll_device *dpll = ref->dpll;
> >> +
> >> +		if (!ops->frequency_set)
> >> +			return -EOPNOTSUPP;
> >> +		ret = ops->frequency_set(pin, dpll_pin_on_dpll_priv(dpll, pin),
> >> +					 dpll, dpll_priv(dpll), freq, extack);
> >> +		if (ret)
> >> +			return ret;
> >> +		__dpll_pin_change_ntf(pin);
> >> +	}  
> > 
> > only one freq is reported in get, AFAICT, so why send a notification
> > after each ref is updated?  
> 
> The pin can be technically connected to several DPLLs and app may watch
> for the specific DPLL messages only. We would like to inform all users 
> on any DPLL which has this pin connected to.

How does this end up looking in the notifications?
__dpll_pin_change_ntf() only takes the pin object, from a quick read 
it seems like it will generate the same notification multiple times.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
