Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DF93CCB8AD7
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Dec 2025 12:11:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A71C60A52;
	Fri, 12 Dec 2025 11:11:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RoqvsAu7vtwv; Fri, 12 Dec 2025 11:11:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E7D060A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765537910;
	bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=noDBGRAR1rnz7lLHaR6zcmr6et4gncgbnwlCTTcD0v2gYYqkPMulBMY6kFvESHqFa
	 a94TkBm6RLT0ObH6dVGKOFKmuUxdfX7k/ntyWNKyBJBkkR5Ge31Hz9baydZHvSwT++
	 iw8HOPT/eFuQgb/MP9Kfo02see7lBNols0Lo/QwQhYvPMV8R25bCWYQP/UIKzjQX17
	 p72eaErEHd+KR0cp8sbkMNxtcT+xZAHwp/WisttGRktWOGal+5qgO5/2yHnIitxDSN
	 vusYhEe3D3h1+Jk6LmFwe6rrOzg7caivqJEo8GmbWb7y25z8tt6CXRDQvUAGbMmxYx
	 x19UXT5K+EmSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E7D060A95;
	Fri, 12 Dec 2025 11:11:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id BFFCF2C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:11:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BD6C840320
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:11:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Pk19asWDEd8O for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Dec 2025 11:11:47 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::635; helo=mail-ej1-x635.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org A1124401C9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1124401C9
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com
 [IPv6:2a00:1450:4864:20::635])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1124401C9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 11:11:44 +0000 (UTC)
Received: by mail-ej1-x635.google.com with SMTP id
 a640c23a62f3a-b7697e8b01aso219598566b.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Dec 2025 03:11:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765537902; x=1766142702;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
 b=Ionro2GggeV+hM60mgJFUYfdULuc8vKLfp7I2fGwAcdAVoHS65H/jHFIcCTFaM14tO
 ij0E2Xp7KWGlMBlWP8ioZfr3+VwiXFn9jcawHcMn9MhNQtkYEplZw5PGwBAA99CsGp5/
 DEUSWArMy/9J3F3hi/1bvoXNiNhqQl2SmpMr1dTpfzX5SuoCLTubeqDpV0i8NsVeRNey
 WG6ftRwycUneR+3hX85LW+ZrktrUetJqPUDXq/MIIsmrvrpZF96RNCyv7u76EmWbUaJE
 U2mM/H0N9D4Dmr1ZjLUSaKDdxjAWcTMOcGLZDbBL8BhXAexT1bP294FhOxPSFCpLhQ/q
 9nLg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVmjpOQj20eK0rhqAYMJFb41sZfsSnfO3/6b95GyxBpqvNbgEwgJQOnvpmlxfMv8laEWaaBMdVsSC0AoaeS1AA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzfLd7kZe9akxcpmpXx6AKRKCvkHtnDHUop9EG9qr1O4wKIj67h
 NfwNrVjpgWEgVfbfyEd4UGSuDbEvBGfvugBBCiz9r8qex7a/nhfpjdxFYvbe6vQXGK4=
X-Gm-Gg: AY/fxX48zGIo+vCG7FVZhx+HbzQc14DP+c7tciXUO5UJWZ/O+njjt6a/h9/Z0vNvS2F
 0OAlw8pXvjmVLuCjauJ1bUGN4b8v5/fQSsohLZ/aAWFTEFYi55fiEkwykRXJa9/OruRFz8pp2m9
 cUNIfs+bJZxOeWRdFKmFkK20RH6MBKFErAdSE7Z9y9BYLXCNSo46tQXXT8sl26UBtBzZtzS2vzD
 iF+UvVGGxNrKkj4jejjbKAtMsLhCART99+PhSmpwGCWA7/9SliL7+u+W3JU1Ma9rFim4HhvDTZd
 MDJdIZ2FN1iBMUQ9xAImBH+4yU6EaXwKUp2crYdyZy23n+bFJ1yQJFbPSo4axlHjCB1XwNABJYK
 8dd3U5e47F0gGa+bUQD4lcWFggZpaXeB8KIvP7UZhNyThX0paGdpPkSBrQcBDaYLV41Ays4Z9Mv
 12i9L1n+WDvL7ojYkVdeQ=
X-Google-Smtp-Source: AGHT+IFmv5COMcmA4FT2YaOWuFJZ5E1bCiuQtdXozfcy670hljn+VWTpNS9TuLAE+vRQXNnfHH9yBw==
X-Received: by 2002:a17:907:960d:b0:b72:ddfd:bca7 with SMTP id
 a640c23a62f3a-b7d23c1b1a9mr146070066b.35.1765537902376; 
 Fri, 12 Dec 2025 03:11:42 -0800 (PST)
Received: from FV6GYCPJ69 ([85.163.81.98]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b7cfa570174sm530693266b.55.2025.12.12.03.11.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Dec 2025 03:11:41 -0800 (PST)
Date: Fri, 12 Dec 2025 12:11:38 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <utlzkss7sj6xgur4aysi3wpt2v4ssxmh5rxsrk7hiqitjlx2qi@btkzluwtapsb>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-12-ivecera@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211194756.234043-12-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765537902; x=1766142702;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=Qi0kf4DHgZSF0itXehy4M1IigW5Ye60xVK7z3FqTfn4=;
 b=oyVgF5AS3BcPecjNrof1IUDemk0/0hiU7G4DkuMt65i8ecQwvI/GH00sRSvYPNDpPn
 f070uT7iZEVAYoohyYJsRRwe1Kq4PDuZtamBsa3NHc4JLP9xmuiTDmPwqZ7EcA9iIL2w
 L+Dbq2l5id1KYwma/T/KsXJghsqd1XTc3tq8kZVHycGjxx53B2Y7TsKggHuuKbrgCHUU
 0x0a10fuynyxau2+AiTxDY54uh1X32uuzyUme6OubYWMttX2yk8Bc0lACu2r7w4HAgSn
 doT/KKgXJRiB9iKBrpTZXpGhuunWZ7qBr5U7fB5iIot48XMmD3apl7h1+tpY8K3kPYDb
 n9Bg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=oyVgF5AS
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 11/13] dpll: zl3073x:
 Enable reference count tracking
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Thu, Dec 11, 2025 at 08:47:54PM +0100, ivecera@redhat.com wrote:
>Update the zl3073x driver to utilize the DPLL reference count tracking
>infrastructure.
>
>Add dpll_tracker fields to the driver's internal device and pin
>structures. Pass pointers to these trackers when calling
>dpll_device_get/put() and dpll_pin_get/put().
>
>This allows a developer to inspect the specific references held by this
>driver via debugfs when CONFIG_DPLL_REFCNT_TRACKER is enabled, aiding
>in the debugging of resource leaks.
>
>Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Care to do this for the rest of the users? Not so many of them...
