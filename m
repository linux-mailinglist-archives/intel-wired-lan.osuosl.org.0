Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F698A2AD5B
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Feb 2025 17:12:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 31EB16FA5D;
	Thu,  6 Feb 2025 16:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TMZzbxDrlpkf; Thu,  6 Feb 2025 16:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BCD2B6FAA5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738858357;
	bh=goFHG8ttUyK2DIwKn/61AgjnHRGyVIbJtnRdtWRi+M0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=dw99mq8OLOPa8+8LRgGcWQvKnBpT6f4s5DnLHW5NcRSWZbdtcTXZhRxUHRCZynbJ7
	 XUYOPtLZllAxH5dkwcj6YUW32L0Y3QFNLdXFORIBOdl1yUXPlUeqYAARuSNgXhz/rX
	 F2Arm/BWglZlIbtKaSW5HOtEU1kCEckGrB8qwWVhuG3TH7Xuv76/2hzVfSK73NlCcy
	 Xl3y+hy0bKF58Tdn4yrRkGu2prh4DK8QNtt+Q1pm4Vsf3LEVijcNlXK1aAGSlaTEUQ
	 E06xfpkeHF+WtlktBr0cgoNIQ2Ba+1fCEMM956EAS2eqtV4rsLRN1s43VvGhx87gh+
	 UIj2VfV3GjhSA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id BCD2B6FAA5;
	Thu,  6 Feb 2025 16:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 20D88CF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 22:56:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DB2E8838AC
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 22:56:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id y5ymN9B6eC3V for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Feb 2025 22:56:24 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::433; helo=mail-wr1-x433.google.com;
 envelope-from=david.laight.linux@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9856B83794
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9856B83794
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9856B83794
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Feb 2025 22:56:23 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id
 ffacd0b85a97d-38da84c9e4bso171056f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 05 Feb 2025 14:56:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738796181; x=1739400981;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=goFHG8ttUyK2DIwKn/61AgjnHRGyVIbJtnRdtWRi+M0=;
 b=rVocIqGLtISFfYqc4GWNk7oNoBUVPLn7xRaDkdEwd9TB52VIwLuEPDDQ2Bbmpj1DGX
 5VOKyy9lV75DGDj/jjmWRIuB7z7GBThYq/x3Trbb7XjlxFED2akB4wkR0Q6UuW1le5yE
 ue8y+3S4OW8oeFDYw0OsIg+pMNaD8qDKmWTJjX/gk8npH5bBYOeE6/KQBsPpwpoh/+ZO
 OwfZbtgBxawdwKKCXLDITKpH+uPaTubLGqaDpDdENsLo2a4bA/GMi63lyn3FgMXHBDaV
 yoelO5I3vBNKIa3/aQTFLnpbGfAI5UQnir44U11qQtsKOaqCGhC7XHeyvn3EZSXqmx0v
 MhmQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCV0lsQXc5ituCo23M8savOAbw3r/SYVGieERRLi1/QLUjZiK9BJShU1dGJrVNbjX9HLGzmhwXuZh2RX4NNROJo=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyZRNqOUK8hFgraPfdOjK9xWR5NSKTK+GYvYk696zLioqhEeXX0
 YqLrUz/ZO+hdGBPiLkXtP/eCGaA0/VBE1791msAtYZlXtVYVqGO8
X-Gm-Gg: ASbGncv7ewwZWKOxPqcT+GJXRCwAeazqjWgDYVrCcCU5H0pSSEEcD/et61q4xpmWDzC
 ilIwdqj0/9gdy1keCyJ8J1SDlAVmhvXdvAN+iZfe4jYDQOCHAbv5DDgapjAaxugp2nhE2WGPuW7
 dF31r7lFSvc83U5ScnGKnHqnRze7jD/uO+Jekga8SeHYFO4iubi4HZFnmKHle++WPDbjJCJP2hU
 lU+8nIUEIcedyy4poHh0nUZnMrutkhQhDxWAqzH/ygwM8pSU7JpUb5W78iu4EErjdXi2cH3MxBu
 mNIVHZfXR0FPTZewgyotIg4qsiHJ1HlwbsGyGinA5jkJW1WySrfrOw==
X-Google-Smtp-Source: AGHT+IEm5cdECDcC075T2ciC+EHG/aGnVIfVUqsgpYBy81rbSVo6Q7McubPYJvFBi3u7SRszziz9Bg==
X-Received: by 2002:a05:6000:4020:b0:38c:5bc1:1ef5 with SMTP id
 ffacd0b85a97d-38db4857e36mr3935634f8f.3.1738796181166; 
 Wed, 05 Feb 2025 14:56:21 -0800 (PST)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38dbde0fbeesm23160f8f.66.2025.02.05.14.56.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Feb 2025 14:56:20 -0800 (PST)
Date: Wed, 5 Feb 2025 22:56:19 +0000
From: David Laight <david.laight.linux@gmail.com>
To: Simon Horman <horms@kernel.org>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Konrad Knitter <konrad.knitter@intel.com>, Michal
 Swiatkowski <michal.swiatkowski@linux.intel.com>, Qiuxu Zhuo
 <qiuxu.zhuo@intel.com>, Linus Torvalds <torvalds@linux-foundation.org>,
 Kees Cook <kees@kernel.org>, Nick Desaulniers <nick.desaulniers@gmail.com>,
 Jiri Slaby <jirislaby@kernel.org>
Message-ID: <20250205225619.31af041c@pumpkin>
In-Reply-To: <20250205204546.GM554665@kernel.org>
References: <20250205104252.30464-2-przemyslaw.kitszel@intel.com>
 <20250205204546.GM554665@kernel.org>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Thu, 06 Feb 2025 16:12:36 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1738796181; x=1739400981; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=goFHG8ttUyK2DIwKn/61AgjnHRGyVIbJtnRdtWRi+M0=;
 b=d9MsYwBxXv0Qy5H9dvpJ6XycKrFmHc0sG8nhBfYsacoIagPY2iC/BBevLsWicKElBC
 hrVZJYs8cLbFSEHr23LDKZ50lveTi9wRw3F4ZcaHQ/J+TZQ0g90DG2rERsmrD3t/BWSg
 ZLQETQkdxlgGrnItbWMsuvKUgr/39UIHpJA2Sav8Wh0p2dbYfo1nF836S6anhJ5ndXg3
 hHgxD2qrCP8z9/sHh6T+I0xWxE9p7qbPhsEzYwnP88cQG0tzly31AefSIwtKPFlwvt/w
 P3+bYrNeh68bl4DnJiUnBVHju5rc+hV4u4tkGYdPH6aP7YYdgfqNtSeJdQozSd8EY+Pm
 b15A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=d9MsYwBx
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] ice: health.c: fix
 compilation on gcc 7.5
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

On Wed, 5 Feb 2025 20:45:46 +0000
Simon Horman <horms@kernel.org> wrote:

> + Jiri
> 
> On Wed, Feb 05, 2025 at 11:42:12AM +0100, Przemek Kitszel wrote:
> > GCC 7 is not as good as GCC 8+ in telling what is a compile-time const,
> > and thus could be used for static storage. So we could not use variables
> > for that, no matter how much "const" keyword is sprinkled around.
> > 
> > Excerpt from the report:
> > My GCC is: gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0.
> > 
> >   CC [M]  drivers/net/ethernet/stmicro/stmmac/stmmac_mdio.o
> > drivers/net/ethernet/intel/ice/devlink/health.c:35:3: error: initializer element is not constant
> >    ice_common_port_solutions, {ice_port_number_label}},
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/ice/devlink/health.c:35:3: note: (near initialization for 'ice_health_status_lookup[0].solution')
> > drivers/net/ethernet/intel/ice/devlink/health.c:35:31: error: initializer element is not constant
> >    ice_common_port_solutions, {ice_port_number_label}},
> >                                ^~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/ice/devlink/health.c:35:31: note: (near initialization for 'ice_health_status_lookup[0].data_label[0]')
> > drivers/net/ethernet/intel/ice/devlink/health.c:37:46: error: initializer element is not constant
> >    "Change or replace the module or cable.", {ice_port_number_label}},
> >                                               ^~~~~~~~~~~~~~~~~~~~~
> > drivers/net/ethernet/intel/ice/devlink/health.c:37:46: note: (near initialization for 'ice_health_status_lookup[1].data_label[0]')
> > drivers/net/ethernet/intel/ice/devlink/health.c:39:3: error: initializer element is not constant
> >    ice_common_port_solutions, {ice_port_number_label}},
> >    ^~~~~~~~~~~~~~~~~~~~~~~~~
> > 
> > Fixes: 85d6164ec56d ("ice: add fw and port health reporters")
> > Reported-by: Qiuxu Zhuo <qiuxu.zhuo@intel.com>
> > Closes: https://lore.kernel.org/netdev/CY8PR11MB7134BF7A46D71E50D25FA7A989F72@CY8PR11MB7134.namprd11.prod.outlook.com
> > Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > ---
> > I would really like to bump min gcc to 8.5 (RH 8 family),
> > instead of supporting old Ubuntu. However SLES 15 is also stuck with gcc 7.5 :(
> > 
> > CC: Linus Torvalds <torvalds@linux-foundation.org>
> > CC: Kees Cook <kees@kernel.org>
> > CC: Nick Desaulniers <nick.desaulniers@gmail.com>  
> 
> Hi Prezemek,
> 
> I ran into a similar problem not so long ago and I'm wondering if
> the following, based on a suggestion by Jiri Slaby, resolves your
> problem.

I'm sure I remember from somewhere that although the variables are
'static const' they have to be real variables because they can still
be patched.

Which stops you using their contents as initialisers.

Maybe I'm mis-remembering it.

	David

> 
> diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
> index ea40f7941259..19c3d37aa768 100644
> --- a/drivers/net/ethernet/intel/ice/devlink/health.c
> +++ b/drivers/net/ethernet/intel/ice/devlink/health.c
> @@ -25,10 +25,10 @@ struct ice_health_status {
>   * The below lookup requires to be sorted by code.
>   */
>  
> -static const char *const ice_common_port_solutions =
> +static const char ice_common_port_solutions[] =
>  	"Check your cable connection. Change or replace the module or cable. Manually set speed and duplex.";
> -static const char *const ice_port_number_label = "Port Number";
> -static const char *const ice_update_nvm_solution = "Update to the latest NVM image.";
> +static const char ice_port_number_label[] = "Port Number";
> +static const char ice_update_nvm_solution[] = "Update to the latest NVM image.";
>  
>  static const struct ice_health_status ice_health_status_lookup[] = {
>  	{ICE_AQC_HEALTH_STATUS_ERR_UNKNOWN_MOD_STRICT, "An unsupported module was detected.",
> 
> 
> Link: https://lore.kernel.org/netdev/485dbc5a-a04b-40c2-9481-955eaa5ce2e2@kernel.org/
> Link: https://git.kernel.org/netdev/net-next/c/36fb51479e3c
> 

