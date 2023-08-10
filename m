Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 265CE7770A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Aug 2023 08:45:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F72E61006;
	Thu, 10 Aug 2023 06:45:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7F72E61006
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691649939;
	bh=L0F2inFKu2B2MUT1yjC0PajBeqQXMCvncHccVdO1naY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GrMqlGjXaeqlfQmCZE1kTxLUR9J/MmSenqfKk2LZjN2KnA2uIr3L/oMUEBJQmWjeH
	 B9ASNljxFfNmoFMdRN1SABkzJwDDbyZzF1QgeWlq2IfE6GmE53WWu+sFBLdCTWU0sP
	 OFENo2oKjkp3+Xb1xf5je6gsvhUNz2I2wZLLxZYB/78UYOL3di9h3YkoaDMcD2D2X0
	 8+p9CRFbAtn6rnmHXz36UrcWXHxpJ4wvUQr+zKXLyog9v2JY+IAanXu5MaiDCZG09j
	 I4GbCSiZvpMQlzkDXSTDLbx97hdrOP0CYzithgm+t5Jw4EJ8zgVklTLc5fzbwm88Hz
	 E7lT0vjY9chdA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id njIPflcBPR47; Thu, 10 Aug 2023 06:45:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5CC1B60FD9;
	Thu, 10 Aug 2023 06:45:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5CC1B60FD9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D6F311BF39F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:45:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AECB2839E5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:45:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AECB2839E5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3zQ18WtAbLs for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Aug 2023 06:45:32 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE19A839DB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Aug 2023 06:45:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE19A839DB
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-318015ade49so597743f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 09 Aug 2023 23:45:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691649930; x=1692254730;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W4ffl1XH7KIn+SiaL6sUHT2H7UHV5v1krkqjETa0n6A=;
 b=b1LJPt4u1vYVmdxgvBONcrbTAKNxIYbuSeJpj+q5uwTvAnC93vCUO+pdInYYVoTDhW
 npiKQR4M34x9hBqGTYNic+9CEgdrq3VEJ/kWva/qQE7bqLWC0j507rhnLPhwWAJcnwzx
 08JakCRjqQ2LOayzB336B2huf/sEe7y/IT1YRaDEtaazwELT75OqykceI1EyOyREmGwp
 WuVp2gjox7BFWXDBngtyj9ilmVf8ryylVJjFUbAygL9mN/dqVuHeyjNZIx1Vfm5iUIhc
 Nye4z9n3NPoV0BdIsFhQrNcbqgK4tq/L3kz/HkXN50aDZqi9GJhKYR0yTBUSeTMKp/dh
 wlgA==
X-Gm-Message-State: AOJu0Yzd+HoOnjG5Z6U8ZdwnysLx2A1Vv64n1iYuI0Z4Lg7FhSeFir2i
 IDEasZUYfB3xZio8K8ZvaKCoKw==
X-Google-Smtp-Source: AGHT+IGFvrLjbuJB4FD5M6F0v2JfDH28y3XkYhjdjaautLE8uNRvGJeA5rtj65lI/y4KtK3nZqgikA==
X-Received: by 2002:adf:da45:0:b0:316:f3cf:6f12 with SMTP id
 r5-20020adfda45000000b00316f3cf6f12mr1233331wrl.48.1691649929884; 
 Wed, 09 Aug 2023 23:45:29 -0700 (PDT)
Received: from localhost ([212.23.236.67]) by smtp.gmail.com with ESMTPSA id
 x13-20020a5d444d000000b00317f29ad113sm1060251wrr.32.2023.08.09.23.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Aug 2023 23:45:29 -0700 (PDT)
Date: Thu, 10 Aug 2023 08:45:28 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vadim Fedorenko <vadim.fedorenko@linux.dev>
Message-ID: <ZNSHiOUiTbOAFIIR@nanopsycho>
References: <20230809214027.556192-1-vadim.fedorenko@linux.dev>
 <20230809214027.556192-2-vadim.fedorenko@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230809214027.556192-2-vadim.fedorenko@linux.dev>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1691649930; x=1692254730; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=W4ffl1XH7KIn+SiaL6sUHT2H7UHV5v1krkqjETa0n6A=;
 b=DDldgCJW7Dq2a+hTMqDydw8C3st3SKwTwiqzsxjJPrc3F2RqjST2+aBrsgFow/Ecu4
 tlKbUhPybA89feLYcoUS1F9cXFxRHxDtcK0OebvThMtEYUuM/TQhZu19oUwdZLRpu8sg
 wZbgAFehdUp+N8899eV1nkf7vs6kPSZF4ibaWVaI3IqWnq3jEZdQl3/vjEQjStW9iDX3
 hBar7reO22GFSQlDwp8tAlEROVglqHuZyUhBEi6X1VZAXi+pYW2jDGGBK4XXWc6joaWN
 sxuW0EwIfgDDHEo5eyGq3Cti9t/W4ksHHctTFpahH/mNqbdsqRPMiaGSqBmUY5x5iev9
 DHiA==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=DDldgCJW
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/9] dpll: documentation
 on DPLL subsystem interface
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
Cc: Bart Van Assche <bvanassche@acm.org>, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-arm-kernel@lists.infradead.org,
 Bagas Sanjaya <bagasdotme@gmail.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-clk@vger.kernel.org,
 Milena Olech <milena.olech@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Wed, Aug 09, 2023 at 11:40:19PM CEST, vadim.fedorenko@linux.dev wrote:
>Add documentation explaining common netlink interface to configure DPLL
>devices and monitoring events. Common way to implement DPLL device in
>a driver is also covered.
>
>Co-developed-by: Bagas Sanjaya <bagasdotme@gmail.com>
>Signed-off-by: Bagas Sanjaya <bagasdotme@gmail.com>
>Signed-off-by: Vadim Fedorenko <vadim.fedorenko@linux.dev>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Signed-off-by: Jiri Pirko <jiri@nvidia.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
