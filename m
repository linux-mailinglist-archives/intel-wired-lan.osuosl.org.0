Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E79395EF99
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 Aug 2024 13:17:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5CAE60763;
	Mon, 26 Aug 2024 11:17:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fAcq366oBoKF; Mon, 26 Aug 2024 11:17:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4A6F660731
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1724671039;
	bh=BeeKjSeu/IotUBDN38yV/e9Uvcg1qhe4n/stuPS3x48=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rOiQ2rQg2ezd0kdHsbu+6KQTZhGpUPC0MRy4ccr1z4U01g7f+HzVLNTohpHqx9FYv
	 GKqUJEV+RAW/yBA1V4H/y8imuVlyrtndaWH98X0zlMRItPXLUPFyrrawm0rgzMuty/
	 ba27Qc71cCllthLSiwwa3ABXlUWaw8BSEFZfkux55zz5jWU69RPSvPlVt8iXD5QhwH
	 IB9I1mq2WlDQ9lnGmJYZZlFmCvYUQEZALvJfllTSJtSO9bag/3kIURn3VuryZzgxjR
	 +Yyh90HSUiqaALcprP5ZOzzcepAUZ2qH6p/uQPx7iu1gnrWlRqXr2O2CGrTUaumUXk
	 CLpL06pPcxBsg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4A6F660731;
	Mon, 26 Aug 2024 11:17:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 757D21BF308
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:17:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 61F2480F62
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:17:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9XvFX5tmM3w for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 Aug 2024 11:17:15 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0E30F80F65
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E30F80F65
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0E30F80F65
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 11:17:13 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4280ca0791bso37413465e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 Aug 2024 04:17:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724671031; x=1725275831;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BeeKjSeu/IotUBDN38yV/e9Uvcg1qhe4n/stuPS3x48=;
 b=AE3c5nhN4yuUrOGmsIgmqRXwnlGp1r3+EzThyXTBMBj8hkq9i+TJtdJHI4vWWYzn1c
 rDv+3eoSo6M+7dtlUHa3HxoSEX13khhTWHXbUtTvUbvUii28V4aMcwaD7tR6tDQyvUSP
 wXDPbbJ2GYaELHiv1xdxtp3+rthzZE9wroKs3+FUTV1VH13w45L3tsBGe28QS7Ls0Juu
 GRSlEBtsWNM7eI36FSRB2hbBVF7O4VnTpSd4ReCO08BV/v7xKAwpak5iXk0Gbb7l6N04
 2EDwq4ROZ03RKmRpVwZGZwaVJLku5nBQIbCY9iSPS+KlRyJMLYp0qaH4gDdyM4xglRbu
 KuRQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVhUSaetX4tKCy/kwC0lf8F4AIcpjVun+br2OIGmo7bWJh9wnhTgR+Tn38I9qzCaXOxDGmvIL2bP3SwTbka32w=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyfG/U4K6mEV5Kf3PvxxMQb+C3eebNmQ+TRQEGiS235bkWQCqWF
 hfvE3Akpd9ibQ0Zre2/t6QmCWAi62tcdZehsbKvxyW0bCLZcea1ZtjsJV3zjIqg=
X-Google-Smtp-Source: AGHT+IH3LF5TgW/96b8uQrBttjNQY1xzoK+kqZn39Elvs0wiG1Pqxhyat+LJxE5XRzi93o0N3TNueA==
X-Received: by 2002:a05:600c:3546:b0:426:6822:861 with SMTP id
 5b1f17b1804b1-42acc9fddf0mr55152175e9.36.1724671031029; 
 Mon, 26 Aug 2024 04:17:11 -0700 (PDT)
Received: from localhost (37-48-50-18.nat.epc.tmcz.cz. [37.48.50.18])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37308265518sm10430049f8f.108.2024.08.26.04.17.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2024 04:17:10 -0700 (PDT)
Date: Mon, 26 Aug 2024 13:17:09 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Thomas Bogendoerfer <tbogendoerfer@suse.de>
Message-ID: <ZsxkNTbTHYSEEA7D@nanopsycho.orion>
References: <20240826085830.28136-1-tbogendoerfer@suse.de>
 <ZsxNv6jN5hld7jYl@nanopsycho.orion>
 <20240826121710.7fcd856e@samweis>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240826121710.7fcd856e@samweis>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1724671031; x=1725275831;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=BeeKjSeu/IotUBDN38yV/e9Uvcg1qhe4n/stuPS3x48=;
 b=zgcwUgIJPn29P2Ez09rb/3ntbM3gfq9ArG+3Jg06vjEIvg5LvsSk19gsPy7qLYqFU3
 OWJvTxdetDA628tXPemP3hqaFq3KCPFIopYUX7rFHqCjJe21tRNMIBJaJBA2NY//94BR
 +kC7CAATBvQizS5OE+U6py/2JwKaDph+2eNFcPcGZ8OKZ43jC6fvhUPobh7bkpFOZu9h
 OcrYdmubFeu35VyF/hp73rnfP4kG5Pg0Ws5qrCTQbyALKgYsNQ9I5XGaN0lhBo9wLsig
 1pgtSw1WpTjOxX9yyu5KdppPe6xgi9tu0ltu1+cXGmawZ2dBnoHXOZeRaVTyknkUwNGl
 pp5g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=zgcwUgIJ
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix NULL pointer access,
 if PF doesn't support SRIOV_LAG
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
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Aug 26, 2024 at 12:17:10PM CEST, tbogendoerfer@suse.de wrote:
>On Mon, 26 Aug 2024 11:41:19 +0200
>Jiri Pirko <jiri@resnulli.us> wrote:
>
>> Mon, Aug 26, 2024 at 10:58:30AM CEST, tbogendoerfer@suse.de wrote:
>> >For PFs, which don't support SRIOV_LAG, there is no pf->lag struct
>> >allocated. So before accessing pf->lag a NULL pointer check is needed.
>> >
>> >Signed-off-by: Thomas Bogendoerfer <tbogendoerfer@suse.de>  
>> 
>> You need to add a "fixes" tag blaming the commit that introduced the
>> bug.
>
>of course...
>
>Fixes: 1e0f9881ef79 ("ice: Flesh out implementation of support for SRIOV on
>bonded interface")
>
>Should I resend the patch ?

Yes.

>
>Thomas.
>
>-- 
>SUSE Software Solutions Germany GmbH
>HRB 36809 (AG Nürnberg)
>Geschäftsführer: Ivo Totev, Andrew McDonald, Werner Knoblich
