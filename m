Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF60E784EA6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Aug 2023 04:21:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2048C41713;
	Wed, 23 Aug 2023 02:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2048C41713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692757292;
	bh=93y5MeRVl7+whJ3fKhZjYmUpJ9+DgtBEsUkUFoG7Wp4=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cszNdvZ3ZC1gvJNGM8kzERsL+7+zXIPL3G5lLsnaJhjiMQsmulzhkkGBkKkuKZgYS
	 WxhLWPGe8coGjDPFEOQY5qh9UkEnN1nby7WjQbN1Iq9w5LsC7mIRr9Gj+I9M3xT8pk
	 H45y198FuNvGu2WlKGeLY0QxBA3MM8JApkE0ZjRijEF9WRtC7MdcmlOiTyzDV1DXvc
	 DYOjDzXrb67fIOdcipF7lLTOrrIcx8Dzzrb4E6lyx0JKPIAG7vkHuz9zir2Fm9BF1S
	 NSrPpIg0fgGLZqjeDsP0mYrRvI3n8d8GyHBau3nlGJsPubHor3AOgWH7ewKsyakUB9
	 qn5xJqSsYzigA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eWNnY4Y79arA; Wed, 23 Aug 2023 02:21:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50DE416E2;
	Wed, 23 Aug 2023 02:21:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E50DE416E2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 587C91BF300
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2E7AE416FC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:21:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E7AE416FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DhAtmEXRciPE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Aug 2023 02:21:25 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 56188416E3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Aug 2023 02:21:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56188416E3
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 79F9B61FDD;
 Wed, 23 Aug 2023 02:21:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2924BC433C7;
 Wed, 23 Aug 2023 02:21:23 +0000 (UTC)
Date: Tue, 22 Aug 2023 19:21:22 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230822192122.00f40f0b@kernel.org>
In-Reply-To: <20230822230037.809114-3-vadim.fedorenko@linux.dev>
References: <20230822230037.809114-1-vadim.fedorenko@linux.dev>
 <20230822230037.809114-3-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692757283;
 bh=OmMA2cNYi5uqKLHPnfTToPfIm8rFnARJwjZuYF8l5O0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=S8vOctK3xYd212kYXplu2O1YDGiuTVzX9xYC1oDbF2J/lEwXexfsXjw/SDEtO0pZo
 LLu1T+tb+HC02BQjjW9V+B/hcC81C4+jE68+nBKHSnvFFnEtg/psgz44XtQsPpq+Fa
 OaCYXa+XrK1DYXNVKdauB8oOAxEu9PZeyP8iK2iwi5sQZ6YMVokD+5jiHlQOTmayM/
 Obthv8xeDzHKvchuYZMU6Tql0k6Ez4iPbBF+jhqA6SE5VYNdu0ULOHhg8j6r6jHQjQ
 CFE16sC24RsTfxCl+nbemFt1koF53LF/4EW4wshk/haqajHu+BjXxcUb80VttDmSuo
 JhZ+RuZVjjnZQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=S8vOctK3
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/9] dpll: spec: Add
 Netlink spec in YAML
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

On Wed, 23 Aug 2023 00:00:30 +0100 Vadim Fedorenko wrote:
> +      -
> +        name: dpll-caps
> +        type: u32

Why is this one called dpll-caps (it's in the pin space)?
"doc:" could help clarify the rationale?

Also enum: pin-caps ?
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
