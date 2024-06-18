Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CA990D199
	for <lists+intel-wired-lan@lfdr.de>; Tue, 18 Jun 2024 15:44:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 38518610AA;
	Tue, 18 Jun 2024 13:44:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ohNHWMj6JZ9y; Tue, 18 Jun 2024 13:44:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A19C60F12
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718718250;
	bh=NWikXjpkRj2Id4OGHyodH6vOtWSmxTQcha4p8kJZ9Gk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=y9VtXMBznSwkJVorNbe3IcGwkpK3hwD9cBNB03leQS6CRVWLY8Say4BGyT+nnLOdp
	 JB/I6IzNg2HYv24zx+4r2ums1wSw6aOzsI18jg7LUM0+EGXTQQJgfbEU4Sx3z22ddI
	 armccB0wy9iBXS8joRozWa+dwDFyECK96iNKj4ESKIEahCC/ytTtV8WY+T/aSZC9Rb
	 OhPGr9kbaGMiLGzG6oCRYK4sCMYzeXtMX5d8QLNnNoyX+8blMPANZ7vRjXPLSZIlOx
	 0OyzlFVJKW3HhLlSBZjFckbB8FPly73Aa0IRneKLRfgtqbkLqMpzIdpyyLSQRvZksU
	 G5pnEvSuqtxXg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A19C60F12;
	Tue, 18 Jun 2024 13:44:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0719E1BF3BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:44:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 99BD880D8E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:44:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bznjxILFf00M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 18 Jun 2024 13:44:06 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org DEE7180D51
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DEE7180D51
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DEE7180D51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 13:44:03 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-42179dafd6bso40123255e9.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 18 Jun 2024 06:44:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718718242; x=1719323042;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=NWikXjpkRj2Id4OGHyodH6vOtWSmxTQcha4p8kJZ9Gk=;
 b=EAMaob0qp69wfLM9NTm9OYWwWLSf09x9LvoG6evTalSmce8/ne5o1xSKbXQyWwMvQa
 k0dVLgwz18oR2SFONeHbkl7e9G6ZJ5CAoD+iOaZ7iEGqWde1nIyOYs+rxLeDiI0LTzNx
 toqu4+NAZQ5hCiJuHcMuDG1ON6lZtFR/bzJzoIlOZdxZ267mg4+MU1BU+7fjc+GHEq1e
 wEwc7UjHZFgQFz2aVPuoYilgfvKiEdwkB9aQDKb8jM19vaumJ6pMkEoAOnj9U2Ifwm4L
 SHSR9X2E1d1hkrEgcNLrDeh/ZtVzffskGMEiLhXady3oYI4GPg7pHRULJS3s5YZRZYpL
 vxyQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUfnqOUKFfpYynpPHYIt7smJLfSm0mbibaYRQ3vxhSdkN8b6Umb9t+PgYEy9874duoAat6ob+CRYLsCMbHl4+oigaEvy1AARXbc4tJUWry+2A==
X-Gm-Message-State: AOJu0YwDBxYakkXS7A6qEfc/ct/mg0xIa+nmfnhwqJvnQ6+fmwmcLzUN
 KQiC9WTXUiIFaf0opJWVOSQKtkNTIvLnqgVlwbWyxm+8ZthxDnH8VRhzltJUE5g=
X-Google-Smtp-Source: AGHT+IGT9NyeAwKGPItuCbiIYyLLhAcu28obA1HAvzNX5/D53inMb/HpuoISsfJg4pIy+rUEWHwkEw==
X-Received: by 2002:a05:600c:3b9a:b0:424:7443:e6d8 with SMTP id
 5b1f17b1804b1-4247443e76bmr8350025e9.9.1718718241629; 
 Tue, 18 Jun 2024 06:44:01 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-422874e73b1sm227480455e9.45.2024.06.18.06.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Jun 2024 06:44:01 -0700 (PDT)
Date: Tue, 18 Jun 2024 15:43:57 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZnGPHez662_8E7AA@nanopsycho.orion>
References: <20240618111119.721648-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240618111119.721648-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1718718242; x=1719323042;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=NWikXjpkRj2Id4OGHyodH6vOtWSmxTQcha4p8kJZ9Gk=;
 b=XvtOA/wlvIj8jaa/FpqwtcCIBuw4taSiiJZpUXl0KuoSE55L94eXPhZaqD12OjcBa7
 p3X3S3PkAN9Qs8RNnNP4JoLoQI8G3GttGYVnYdER89MJ1E/cEBOrfIJYufoqiMCkPzrI
 105wCCxO5VYGY0t2FR+K85BKhpvejChrhTv2RenSBlc6dm0DMWRL6LUjQYzExA6exR2a
 X86VogmU5yITHvdmJ3thx6u5ErryoZ697nshzaOa8xJHNRc2SzahOo/CbXsulu+NtkzN
 rx6oKIszdBnJR8i58W95W8l0/kmPX3ZRcob4kVAqTyENn9EI+uGrysIqN7LSZhJ6mDVs
 cFyQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=XvtOA/wl
Subject: Re: [Intel-wired-lan] [PATCH net v3] ice: use proper macro for
 testing bit
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
Cc: ivecera@redhat.com, netdev@vger.kernel.org,
 Marcin Domagala <marcinx.domagala@intel.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Joyner <eric.joyner@intel.com>,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 horms@kernel.org, przemyslaw.kitszel@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Tue, Jun 18, 2024 at 01:11:19PM CEST, poros@redhat.com wrote:
>Do not use _test_bit() macro for testing bit. The proper macro for this
>is one without underline.
>
>_test_bit() is what test_bit() was prior to const-optimization. It
>directly calls arch_test_bit(), i.e. the arch-specific implementation
>(or the generic one). It's strictly _internal_ and shouldn't be used
>anywhere outside the actual test_bit() macro.
>
>test_bit() is a wrapper which checks whether the bitmap and the bit
>number are compile-time constants and if so, it calls the optimized
>function which evaluates this call to a compile-time constant as well.
>If either of them is not a compile-time constant, it just calls _test_bit().
>test_bit() is the actual function to use anywhere in the kernel.
>
>IOW, calling _test_bit() avoids potential compile-time optimizations.
>
>The sensors is not a compile-time constant, thus most probably there
>are no object code changes before and after the patch.
>But anyway, we shouldn't call internal wrappers instead of
>the actual API.
>
>Fixes: 4da71a77fc3b ("ice: read internal temperature sensor")
>Acked-by: Ivan Vecera <ivecera@redhat.com>
>Reviewed-by: Alexander Lobakin <aleksander.lobakin@intel.com>
>Signed-off-by: Petr Oros <poros@redhat.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
