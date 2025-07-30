Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id E051DB1604C
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jul 2025 14:26:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EDF9083DC5;
	Wed, 30 Jul 2025 12:26:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3fbdwzxC4ySn; Wed, 30 Jul 2025 12:26:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 618A983D02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1753878383;
	bh=+LP51TJm8dISaosFKCpGTh4TYAMN3Q+nI+H4aWw5P+0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=j0IbeNPWKHWLimKBVkTVAE7bEBeOjsMGaaS05X093ZlwNJ7q5j0+0AdFCS/p4u+NQ
	 XCnr798zP+0usIy0EnBZ/EHYYz1DYz8R3tdUiioxBSwAkhAlWrTcBGM2SFBY3pLoT2
	 FqVKoKFpLuG58TmYJslnAANK1jhk7I6N9vCobx4u+9nxuv2L068WNwnF3xpkjwnEgO
	 zX81TCHFfyqoZdVPzJXmwlOSW2SZPx40Z9/imKd1aHImdwVMIoOjDlu4NYUGR+RKLK
	 TQfeZ9pXyBFrl5e7InAMScgn8OovFoFEn8sgPqPoec5236XpUjewNPzPtMb3HK6q3i
	 GvIQaXcFjbGtA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 618A983D02;
	Wed, 30 Jul 2025 12:26:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id F186916B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:26:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E35EC40CDF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:26:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DV__LfJZA_PW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jul 2025 12:26:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52c; helo=mail-ed1-x52c.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6178340870
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6178340870
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6178340870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 12:26:18 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-60789b450ceso12757554a12.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jul 2025 05:26:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1753878376; x=1754483176;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+LP51TJm8dISaosFKCpGTh4TYAMN3Q+nI+H4aWw5P+0=;
 b=ZwUF0xjotuBrx1FLxUZ1e/9zb4KrHt8BF257FmFEPTFhFaUtrbyvM6M2UoulvyWlFx
 QcWIXWDtYrTT/BOZQRvJ49z2t193/BhkBkgTR2OnTPa9nfoYgBAjJHAdZXmSQvbDG9Zq
 GuBmAcSDUWS6ugX1aoMYhxHETFy3WYGOyg/GGUD3InC6zUCSp8ZcSrs/dmpSZtNqSxn2
 JxjXD/7GqezougBFULHCOvO5g+AgJQNGBTfFEaDglZYvMqVnp1q1LSqypKcHiox55E/P
 i6YkAFHMA2m1gJm7hvPFw1HacLStKnMWJixX4XV2nPbxGb15z2eFTsq+PYtsiuLpoUd6
 O8Hg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYgnZqjw32SvffFMuwViXwo7GQt/cHze2WgD42IVPzAxqQrLECVCRql3TzRDfW38Z6DSegmXmaIKjCPZNLep8=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzeX9wx8hnrGJv889tYOfh0wrNrYyNZAukVe+fQV40XZwlbZZPn
 XYsqgXNHX8hzyABlaJe0fuohRTzDPJ3k1ONOlRgF04JPeGtB1PxJtm+AZjE9tgqW1vY=
X-Gm-Gg: ASbGncvpfXh3ZgRsAvit3qMp50FZnvyZfMaBTXLwKhdZUeEbKtzrn6NPiZB0T7BHOcr
 P6PbfGKF7eRwgQ3gWUfQIAM5FdIos+i/0cNtx/1ONvqVA/OHMOaL7ujVXyeMZ0wSIIU3G+B3f6T
 zEyOaYZ7bvRj37F12bkahV7Cn1EqWsNS2kbzZlt2v8YaB2oPF8TkhPdj1cjKYqxulUXdM25wIfw
 Qc/Ijm5cuhErRyRWhwUBqZ3Nd/UtBgsZHc2sBvAAq4x+g5j04fJtzOEjNg1O7QfCUP+gdkLvRzV
 I+C5mI4BCqzIQEI+XmBxPxsgTQdP82h1hKwKK1rgQQxAVNUdNYAxO/+htP2Z7y5PGbOBbDPntO6
 gnZvGetq/rtloIlvNxgtfpGdQynrTZGC09w==
X-Google-Smtp-Source: AGHT+IHKmQuJBcyurJqjso+EQtT2hv+uRozjr/hSsB9kfXnfZX4KNBg+3NUqbOWeTkLYA6c562pzyA==
X-Received: by 2002:a17:907:e849:b0:ae3:7b53:31bd with SMTP id
 a640c23a62f3a-af8fd97316emr411726166b.28.1753878376235; 
 Wed, 30 Jul 2025 05:26:16 -0700 (PDT)
Received: from jiri-mlt ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-af63586008dsm741418566b.16.2025.07.30.05.26.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Jul 2025 05:26:15 -0700 (PDT)
Date: Wed, 30 Jul 2025 14:26:12 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, 
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, 
 pabeni@redhat.com, horms@kernel.org, sdf@fomichev.me, almasrymina@google.com, 
 asml.silence@gmail.com, leitao@debian.org, kuniyu@google.com, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <p4tnkuf3zh7ja45d4y2pas6fj6epbqdqdqtfai2vmyul3n43lf@v3e5dvvbphiv>
References: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729104528.1984928-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1753878376; x=1754483176;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=+LP51TJm8dISaosFKCpGTh4TYAMN3Q+nI+H4aWw5P+0=;
 b=CczcRLt0SKHjLWOg+nzrvTa46iTA3jdq/c8IlH55mAMgiC3n6oqEe8z0qKzXgomi2K
 qYYsuc/yadtn58VDFvXCz3/SKKbTbgGble1T4edt5nGdyAkE9fT+itaEFVH66OBJtGyD
 BmB4qfQoDWWcpaYEV+AfWs/E+gKhdkU58bAZOXdigmSrjrX6/pqB6ErY4g5xbf0YAlmX
 QPn+X/tgd5Fwr9VoDvz4PMeifEU4d0kDCfPQGJ7sn0sAeUv4Wt4GjKb3OJFYojKjgghd
 FmFC9/7iNjksZPznOME7SQuMzS2v26r0Xbn5+Aoz7AVI8KEdDoGl11mqwVMw0iLJWeIu
 zT5Q==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=CczcRLt0
Subject: Re: [Intel-wired-lan] [RFC PATCH] net: add net-device TX clock
 source selection framework
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

Tue, Jul 29, 2025 at 12:45:28PM +0200, arkadiusz.kubalewski@intel.com wrote:

[...]

>User interface:
>- Read /sys/class/net/<device>/tx_clk/<clock_name> to get status (0/1)
>- Write "1" to switch to that clock source

I wonder, if someone invented a time machine and sent me back to 2005...

[...]
