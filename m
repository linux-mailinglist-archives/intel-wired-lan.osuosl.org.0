Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 45349CA915F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Dec 2025 20:37:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6F1E86F4A5;
	Fri,  5 Dec 2025 19:37:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WqivvO7utiFZ; Fri,  5 Dec 2025 19:37:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C49766F4A2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764963428;
	bh=X5FyjUIS9qgEZBxRsHEDHxccTlWb8j6jPm6tkMWDSnA=;
	h=Date:To:From:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=cYgFW6d/BnLsDPZZ4olDDbkkhR0pIrZR7YXFriGSanJ/42mC0B6hwd118YDXspSLH
	 3mpfxNTxeLPB3kMNL3Wxr+t4kTvzsAgCywFmnZJ/7EofE5Tgj51hs90LZ25AxUZBKh
	 OWaasMhes2J7FP1pM6+3y5j0yRfcBLYGmwpmgLMxO/ehp+QLOXRCCe39FtjVPAoZ0h
	 hL4Fi1jaX4MVGbHq6aWcbmZYjGsFt/9nn6qbQXqM3+s10VMxYjZXYq9YsZzFkZZc6g
	 YwAAJute+YYvF0SkAWX1iZrTwgTPAzP2Po6k0WnLnmSaOI0c6kkBfKF4bdXF7SnL67
	 zK2nFy6ibzjMQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C49766F4A2;
	Fri,  5 Dec 2025 19:37:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5EA84258
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:37:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45928403EF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:37:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id C9npUe2QxwkM for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Dec 2025 19:37:06 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=jbrandeburg@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7CBB8403ED
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CBB8403ED
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CBB8403ED
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Dec 2025 19:37:06 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-7bc0cd6a13aso1497326b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 05 Dec 2025 11:37:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764963426; x=1765568226;
 h=content-transfer-encoding:autocrypt:subject:from:to
 :content-language:user-agent:mime-version:date:message-id:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=X5FyjUIS9qgEZBxRsHEDHxccTlWb8j6jPm6tkMWDSnA=;
 b=rhAiOFKNKhGjcwjda+kyTzspjVUhxnmoOL42ZagAZ1fPucFJ3DQsiyDhmkCi4PL438
 SejzzURL5PMCdh5Fdd1kg5zktOAgSAyBIomDh9BNHuYIzTfmCWRG7de2tlO8OIaDRmbO
 g16K/3pwA3iUdc1Ew0hSyvFweZjGjYh4X1iy/Wp3l62jRSH53opF3m5oavffkYZVb+jL
 ULTj5LbQuhcgLOkL+10rbCNnI46Lw0Tu08SLTvvPdKwzbBSJzLqH4ILVteQh8omKNPA2
 HMi6IJ+EkJ6GWKFmOCgNClJnjkFpT0I5V29Xdqnf6bX13ext7Ik4eF3GO7ObUA6JZeuv
 vi4Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCUG2lUYZMqCw6q3TOEFJCKYUompQ5vt1JyRNZ4fGL2SAAUwhHqzuyM8OLSR2h9GQVyII1McJoQ6TKvGFlwrGLs=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yy55Z8EJbwSArtvvCGfhXpKAze5jhql+lXmv9TkPlPWOLpmB8yR
 a/NH7MJtAojZ2ZHmmPFGwD7jUcus+m0VvDQ9jThLMyNUSvVcQ4a2sDoRvRC/C06arHU=
X-Gm-Gg: ASbGncsDosFIst7Kw8p2np3lVsgruZb0zxllwbAeXnMHElYRDZFTyAQhQRSsE8w07ID
 sBDIGNPnsJuO/Lx7VhU0B1V9DDf5ASZJOaE4mg2EKu1lH10tmfFsPsGqLcYLkYWJB+VTT0ubn1o
 Wu0CznkNAH77aW1wNokthF7XL0gsM+QA53+wJ6AOiiOdI3LZjCrjbMqi/BnqsnJl/XK5Sb7267l
 q/C4DnaA/ibk2F41BVgZTcLVByuRsPKEe/GjuMSvudDzluq5mO3I5INCLE5UpRKVRSUTYY2wskj
 nwVwMHhTRM+rv+UHkxaU1ZpfaagEhHQpmESI1qasGxijhaEH06Q8yHkaSyIhyldzv4Mf8zlb0v/
 l31g4ukBibKA/LGaSTQc4R/uEkKUdv5GIqvz2PgTr28bAjMVqt/ZUV5a8Fko6ZHWzao9Lo7/qKh
 IiWexWVqMJ5sgd6ceV288DihDZ
X-Google-Smtp-Source: AGHT+IFmboq1cPOQFQUpt4igStKoNP93iAYzsyAct4m0Qo8ompK5hGA3Pp66tdfzJKk2IW+LJl9r8A==
X-Received: by 2002:a05:6a21:338f:b0:366:14b0:4b18 with SMTP id
 adf61e73a8af0-366180292c6mr388534637.35.1764963425725; 
 Fri, 05 Dec 2025 11:37:05 -0800 (PST)
Received: from [100.96.46.103] ([104.28.205.247])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-bf6a14f5d0fsm5358004a12.23.2025.12.05.11.37.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Dec 2025 11:37:05 -0800 (PST)
Message-ID: <dddf6b9b-74f0-42cc-bf1d-5fc8b8d4df8b@cloudflare.com>
Date: Fri, 5 Dec 2025 11:37:04 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>
From: Jesse Brandeburg <jbrandeburg@cloudflare.com>
Autocrypt: addr=jbrandeburg@cloudflare.com; keydata=
 xjMEZs5VGxYJKwYBBAHaRw8BAQdAUXN66Fq6fDRHlu6zZLTPwJ/h0HAPFdy8PYYCdZZ3wfjN
 LUplc3NlIEJyYW5kZWJ1cmcgPGpicmFuZGVidXJnQGNsb3VkZmxhcmUuY29tPsKZBBMWCgBB
 FiEEbDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwMFCQWjmoAFCwkIBwICIgIGFQoJCAsC
 BBYCAwECHgcCF4AACgkQwWdFDvX9eL/S7QD7BVW5aabfPjCwaGfLU2si1OkRh2lOHeWx7cvG
 fGUD3CUBAIYDDglURDpWnxWcN34nE2IHAnowjBpGnjG1ffX+h4UFzjgEZs5VGxIKKwYBBAGX
 VQEFAQEHQBkrBJLpr10LX+sBL/etoqvy2ZsqJ1JO2yXv+q4nTKJWAwEIB8J+BBgWCgAmFiEE
 bDWZ8Owh8iVtmZ5hwWdFDvX9eL8FAmbOVRsCGwwFCQWjmoAACgkQwWdFDvX9eL8blgEA4ZKn
 npEoWmyR8uBK44T3f3D4sVs0Fmt3kFKp8m6qoocBANIyEYnUUfsJFtHh+5ItB/IUk67vuEXg
 snWjdbYM6ZwN
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1764963426; x=1765568226;
 darn=lists.osuosl.org; 
 h=content-transfer-encoding:autocrypt:subject:from:to
 :content-language:user-agent:mime-version:date:message-id:from:to:cc
 :subject:date:message-id:reply-to;
 bh=X5FyjUIS9qgEZBxRsHEDHxccTlWb8j6jPm6tkMWDSnA=;
 b=E/YL5pX/pQhY1bGkwsdGKs+YXNsTX6V7QfkwnORgmktL1XwZcuYMwfAguV9aXyjluQ
 /1Gaon4yS17d5tqR29n3UFmtC10dPasVk6evSse9xN7MTQdZL+WHM13NIXIo3ndTuH4h
 KvDY9UEm0JQB3MU67S5RUC25IkRyP7/UF5ubH61id6ikdnOPzPagj80WlM3rk8gkpiaz
 DkzR1AvgXwFiIBPDH5a8+3KL/BMqSW3nxJtKSDDJJuXU+8LcqAhFphV2h+TzPlktlH1l
 mhGYEfnrcazT+MPb9fZmOYY13jbUMI5fmu05dlQY2kyogpNVAkis8lqdb1JMnv2zbe/9
 XnDw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=E/YL5pX/
Subject: [Intel-wired-lan] BUG: ice: E830 fails RSS table adjustment with
 ethtool -X
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

Filed at:
https://bugzilla.kernel.org/show_bug.cgi?id=220839

Kernel: stable-6.12.58
NIC: E830 100G dual port

When trying to adjust RSS table # of queues on E830 with

ethtool -X eth0 equal 8

we see this error in logs

    [ 6112.110022] [ T303140] ice 0000:c1:00.1: Failed to configure RSS 
hash for VSI 8, error -5
     [ 6112.528002] [ T303170] ice 0000:c1:00.0: Failed to configure RSS 
hash for VSI 6, error -5

This command works fine on E810 nics with the same driver.

Firmware/package, and NVM version info attached to bugzilla.

We're already trying this on 6.18 but data not available yet, however 
it's still a bug.

