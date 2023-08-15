Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A48C577C608
	for <lists+intel-wired-lan@lfdr.de>; Tue, 15 Aug 2023 04:43:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 101C060F12;
	Tue, 15 Aug 2023 02:43:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 101C060F12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692067427;
	bh=hsQXpep1uLEwLY7YM8TfjwtbUpk+LuN83szoy/irxZw=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bfGSrXmsT657ZfSFEiMZ+yk4Dp1RS/iWqGm18ALdK/IJR2uqVU3/J33pAHBr5lBJ7
	 rPdmqThrC8XXX+O/1nwLuYQ1dOw+6ocIX+S8+NDexl9/gJAvDsahkSOHaRafwGMQxK
	 1SIfSQ8JQJwBx3sUG1zNQCfEaJaywowbcY8ZZFIpv0eKSA0+qJEgLLnO3hKN3Ctb7U
	 +JcX/NPRVAIekhmcI7/ipuVxLf1EHHfzQHi8YAtNlzPdEd/5SoXEuk7CPVsPfy5G8x
	 Hc2kk1AN8cBIz3WmOUrkOR1cRxpg4wKHjnWu1qULO2WtzqRf+oZbub++duKLP9tUCg
	 nPv81cb1EZqgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqOelD3zsDPn; Tue, 15 Aug 2023 02:43:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0ECAA60BA7;
	Tue, 15 Aug 2023 02:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0ECAA60BA7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0818C1BF2B6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:43:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D9ECC408AE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D9ECC408AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5b_18NNZs2fX for <intel-wired-lan@lists.osuosl.org>;
 Tue, 15 Aug 2023 02:43:40 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA8FB408AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 15 Aug 2023 02:43:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA8FB408AB
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A33F96495A;
 Tue, 15 Aug 2023 02:43:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64589C433C8;
 Tue, 15 Aug 2023 02:43:37 +0000 (UTC)
Date: Mon, 14 Aug 2023 19:43:36 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <20230814194336.55642f34@kernel.org>
In-Reply-To: <20230811200340.577359-3-vadim.fedorenko@linux.dev>
References: <20230811200340.577359-1-vadim.fedorenko@linux.dev>
 <20230811200340.577359-3-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1692067418;
 bh=7blTAewUXh9WclBQZ+mReosFc6JNCK0kdPIFgrfLNQw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=bL23djTCRcM7r+1Gp9qSDhPMBmz3x/C4x5iSW4nmvHKAbKinIWMu1gpgCHV4bQVvO
 iocZQpk1ugrWIBmTlyjBYz5Fvl9hd/E+NoXEsPmh+rGNp31RAAKtoxKTO8IEl0Gwoi
 uUldRosk0KIrHE/IQPDAjJ8cgdfeDS1VMB+IcNrZrxPJL9JgBvr/jscPaqc7XPbxg1
 2aF7Hq0AWIZ7l7eqt7jdapEwypftzA2y2QjPKmz22u2HCEuwNz3EblWVp3FbN0p5RS
 cYrQr31icAt0/4PEiCaf6+BlAmGP9viia3Y2nGMjQ9XfUPNzOM+9WK2H4UgWY2UNXz
 CM5OJBRgrf65Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bL23djTC
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/9] dpll: spec: Add
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

On Fri, 11 Aug 2023 21:03:33 +0100 Vadim Fedorenko wrote:
> +attribute-sets:
> +  -
> +    name: dpll
> +    enum-name: dpll_a
> +    attributes:
> +      -
> +        name: id
> +        type: u32
> +        value: 1

value: 1 is the default

> +      -
> +        name: module-name
> +        type: string
> +      -
> +        name: clock-id
> +        type: u64

I don't see a pad, you have a u64 without a pad?

> +      -
> +        name: mode
> +        type: u8

It's an enum, should always be u32 or bigger at protocol level.
Netlink pads to 4B, you're not saving any space.

> +        enum: mode
> +      -
> +        name: mode-supported
> +        type: u8

Same.

> +        enum: mode
> +        multi-attr: true
> +      -
> +        name: lock-status
> +        type: u8

And here.

> +        enum: lock-status
> +      -
> +        name: temp
> +        type: s32
> +      -
> +        name: type
> +        type: u8

And here, etc.

Why are all attributes in a single attr space? :(
More than half of them are prefixed with a pin- does it really 
not scream to you that they belong to a different space?

> +operations:
> +  enum-name: dpll_cmd
> +  list:
> +    -
> +      name: device-id-get
> +      doc: |
> +        Get id of dpll device that matches given attributes
> +      value: 1

is the default
-- 
pw-bot: cr
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
