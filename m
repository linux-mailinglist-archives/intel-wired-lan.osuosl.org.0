Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FA9885F587
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Feb 2024 11:21:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50F0841B6E;
	Thu, 22 Feb 2024 10:21:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Rqz8WPqNKf8r; Thu, 22 Feb 2024 10:21:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93B2941B5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708597309;
	bh=+WEazJwM3qfcPs1tjbWvVQyam9fsjKxlztGL6uXpGHo=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=SbbLJio9O7YEy6PcZUzAMm4DUx5mP5nM9thK9RN9gML+OBglYXBy7lIt3A6cy5MNi
	 W3G5fSUDQoLdfk8EWuF5vuEj5hhouEltWbXrJdGwnJuGp/747aYangRrE0RF3hDvzO
	 bhEkQsKymtraxwH0pxJycQyBQi0snpDiJhCej/4jg+hnKRTjr5DHKvPWZPeodssKwh
	 YDWiW/VirnR57hWcEL+0SNsX3Mbcdo7SkdU1fQO173zbruS9WOQicYbfCOav+Xz/Rp
	 DDEjHQ1Voiaq69Xcbl5qVJAu20et7gUpePvbHmPnj8cU7sOkNumW1kdj8E0ZYR3s7a
	 nYDQRY1RCppAw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93B2941B5B;
	Thu, 22 Feb 2024 10:21:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0C54F1BF3FF
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:21:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 035C0823EB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:21:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zV9JkVmR8iBz for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Feb 2024 10:21:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=141.14.17.11;
 helo=mx3.molgen.mpg.de; envelope-from=pmenzel@molgen.mpg.de;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D01928235D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D01928235D
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D01928235D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Feb 2024 10:21:44 +0000 (UTC)
Received: from [192.168.0.6] (ip5f5af3d6.dynamic.kabel-deutschland.de
 [95.90.243.214])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id 57D4861E5FE01;
 Thu, 22 Feb 2024 11:21:11 +0100 (CET)
Message-ID: <7e3adb79-4eec-4631-bedd-047f849c6b4b@molgen.mpg.de>
Date: Thu, 22 Feb 2024 11:21:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Arnd Bergmann <arnd@kernel.org>
References: <20240222100324.453272-1-arnd@kernel.org>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20240222100324.453272-1-arnd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=molgen.mpg.de
Subject: Re: [Intel-wired-lan] [PATCH] igc: fix LEDS_CLASS dependency
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
Cc: Andrew Lunn <andrew@lunn.ch>, Arnd Bergmann <arnd@arndb.de>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Dear Arnd,


Thank you for the patch.


Am 22.02.24 um 11:02 schrieb Arnd Bergmann:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> When IGC is built-in but LEDS_CLASS is a loadable module, there is
> a link failure:
> 
> x86_64-linux-ld: drivers/net/ethernet/intel/igc/igc_leds.o: in function `igc_led_setup':
> igc_leds.c:(.text+0x75c): undefined reference to `devm_led_classdev_register_ext'
> 
> Add another dependency that prevents this combination.
> 
> Fixes: ea578703b03d ("igc: Add support for LEDs on i225/i226")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>   drivers/net/ethernet/intel/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
> index af7fa6856707..6e7901e12699 100644
> --- a/drivers/net/ethernet/intel/Kconfig
> +++ b/drivers/net/ethernet/intel/Kconfig
> @@ -372,6 +372,7 @@ config IGC
>   config IGC_LEDS
>   	def_bool LEDS_TRIGGER_NETDEV
>   	depends on IGC && LEDS_CLASS
> +	depends on LEDS_CLASS=y || IGC=m

Should it be ordered as the line above?

>   	help
>   	  Optional support for controlling the NIC LED's with the netdev
>   	  LED trigger.


Kind regards,

Paul
