Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE1BC90088
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Nov 2025 20:42:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B96FD843E1;
	Thu, 27 Nov 2025 19:42:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ArdaL9AupPif; Thu, 27 Nov 2025 19:42:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A446843FF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764272528;
	bh=sjaer9btj6sR9ubObLyn7KI3Hi5THUZqw6tidbbYp70=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dCUqglmcbTqbTPhaz63EjNuzfjN2SiaLFIDRt4xzRWWg7/K9arHerv1JGL2yi8Bbm
	 NtMGLysQIUM6rPnJ8ZWvei0zYuOPOqZ3qsSuyZ7BScRYErGhzmfy/EgbuvPT/ZBRnF
	 ZO5FOtTKPA1lzJ6TGihceYKpr8NGj85P56KbOv8OQifiR3gJYIHq5i7k6ea/K50wdn
	 3ey267rDMY6Hfq4u2tzymj3SbGneMfeEHOtPyT3lrmG/9OZb1TVXmUrhY4/icAZ0+i
	 FfJwbJW+efgDUVN1Ta2c3N347By/0v1UHuiFW+/B9Tz7FSapmM3Zj7qYAWXq/cxIfL
	 EHuL3YYsnJ4Vw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3A446843FF;
	Thu, 27 Nov 2025 19:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id BAAE92A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 19:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A06E360B46
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Nov 2025 19:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZR6xKzEClZA4 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Nov 2025 19:42:05 +0000 (UTC)
X-Greylist: delayed 1549 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Nov 2025 19:42:04 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D1C7F60B3A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1C7F60B3A
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1C7F60B3A
 for <intel-wired-lan@osuosl.org>; Thu, 27 Nov 2025 19:42:04 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1vOhTO-00FI6i-2x; Thu, 27 Nov 2025 20:16:10 +0100
Date: Thu, 27 Nov 2025 20:16:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>
Cc: intel-wired-lan@osuosl.org, netdev@vger.kernel.org,
 andrew+netdev@lunn.ch, horms@kernel.org, kuba@kernel.org,
 edumazet@google.com, davem@davemloft.net, pabeni@redhat.com
Message-ID: <a60a2c81-658a-4bfc-a0dd-59941676bf00@lunn.ch>
References: <20251127043047.728116-1-vitaly.lifshits@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251127043047.728116-1-vitaly.lifshits@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=sjaer9btj6sR9ubObLyn7KI3Hi5THUZqw6tidbbYp70=; b=2c+Cy9ljqZcwDdKNdZncjQJfKD
 l4Dz6VszHv6n7bciYX3yWcd/at6GcW2JbIw09suAyEOcprfsEgzTeCZgMUXzuEE4zz0U+a11TgRc7
 YTNNiwneG2gXfbeTM1JyendATfW1i74cYcQxtVd0g+ivv5zO8dx8D3YXuOIcxSAh1bsY=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=2c+Cy9lj
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 1/1] e1000e: introduce
 private flag to override XTAL clock frequency
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

On Thu, Nov 27, 2025 at 06:30:47AM +0200, Vitaly Lifshits wrote:
> On some TGP and ADP systems, the hardware XTAL clock is incorrectly
> set to 24MHz instead of the expected 38.4MHz, causing PTP timer
> inaccuracies. Since affected systems cannot be reliably detected,
> introduce an ethtool private flag that allows user-space to override
> the XTAL clock frequency.

Why cannot it be reliably detected? The timer is running at 62% the
expected speed. Cannot you read it twice with a 1ms sleep in the
middle and see the difference?

>  #define FLAG2_DFLT_CRC_STRIPPING          BIT(12)
>  #define FLAG2_CHECK_RX_HWTSTAMP           BIT(13)
>  #define FLAG2_CHECK_SYSTIM_OVERFLOW       BIT(14)
> -#define FLAG2_ENABLE_S0IX_FLOWS           BIT(15)
> -#define FLAG2_DISABLE_K1		   BIT(16)
> +
> +#define PRIV_FLAG_ENABLE_S0IX_FLOWS	   BIT(0)
> +#define PRIV_FLAG_DISABLE_K1		   BIT(1)
> +#define PRIV_FLAG_38_4MHZ_XTAL_CLK	   BIT(2)

Please split this up. Rename of FLAG2_ENABLE_S0IX_FLOWS and
FLAG2_DISABLE_K1 in one patch, 24MHz in another patch. That will make
review easier.

       Andrew
