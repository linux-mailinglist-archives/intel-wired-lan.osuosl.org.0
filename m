Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4EB29F7D86
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Dec 2024 16:01:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED29B83B44;
	Thu, 19 Dec 2024 15:01:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SREYLuOqwaLU; Thu, 19 Dec 2024 15:01:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5AEE283B15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1734620495;
	bh=MmG5yPAwJimVagbIlzy3QYFL/gbvegmXZ5hlAqrdtBI=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gXWG0oiH8viM7dqcUZEctYqTgDZPWPpN5VtY0Ue4DPGLRFk3qapF91tQZdqmIgbAJ
	 jTFX1mmeZeaIIpufiC7lFBDQ8qReLMpqikQBRE0Tglp+Vqvwb6JF2i6omYDEzM6ICy
	 bqQzulCyvJsc42pFb5NNTss3hyFE6+ndjcwknhdXwFJgAJKe1BXe38uUKbcrVZbUWG
	 5BSacHQTd7r9vG/WciyPJiBBEDERSLpK5odABdYYiiQry4GGXlve8O2lMRRFW5lrD/
	 ED26Zv6qcY8DHfx5ucRaG08wd3rm0RJYLZPBQZpWr5dJhbWMowCKuFxXxTuRbdRl7S
	 igFg8Sye6FhtQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5AEE283B15;
	Thu, 19 Dec 2024 15:01:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 30ED8730
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:01:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1EB6F83B10
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:01:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GAvgyOtS_Ovq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Dec 2024 15:01:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::82d; helo=mail-qt1-x82d.google.com;
 envelope-from=willemdebruijn.kernel@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9F1AB83B15
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9F1AB83B15
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com
 [IPv6:2607:f8b0:4864:20::82d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9F1AB83B15
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 15:01:31 +0000 (UTC)
Received: by mail-qt1-x82d.google.com with SMTP id
 d75a77b69052e-467a6ecaa54so6380431cf.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Dec 2024 07:01:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1734620490; x=1735225290;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=MmG5yPAwJimVagbIlzy3QYFL/gbvegmXZ5hlAqrdtBI=;
 b=qYx+2i5B0CbMCKNWlup7tm23Xul6QDdtGGbAle+yxA/lcFhasX1ZO7/nm+bex+2+VE
 nCT5hNzYG9WkTMUvJBQa08Ao/wEZzsuMf5MtNc8pgEDin4HtbqrI0SE8MESxQabo/+9C
 6MX2t9jwMS20/+xUuWgTQIrNUQuQIo+foZ6XpXJ5R+XbQXPr5TPeJRp+sn4YzoXUKYgo
 jbMQvMw5dp+shw41SNnhvE4Q8MGg3pu1tZsB2G09gl3WSVyt0uoWOer3whtQ9r2vLeqc
 Jox7hVmvLBL0y2p/07VnByWhx99dHBkZYF0/EGVNeCxhzYMnrLdH/XfkXatNqSkR3M34
 5C2Q==
X-Forwarded-Encrypted: i=1;
 AJvYcCWHkK+SZanJNj69cStZv7BmFVJWDa47/QbppnU21IqhOes4J+24gP1s6NqosLXT5fjdgPwS0FMTbweSKUu82V0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwFv4ltGSKmfEBPafqdgnwS+UE5Qy4METiR+94EkbJ2Goy8Sj5z
 i1KWnwEGJhTloYqPxP71bnsj9VK1YJsLVObDNo96bqzSNx388CMR
X-Gm-Gg: ASbGncs0cROhD/DPp6G0JgNDb+UmHpQkQCXuTbeLE3AmtVaEtbOwXqhiw9emyabN5zo
 v9A8RtkyYrOhLHJRnA6pt4nOOwnM3R3bu3ucp8leXu5By9ixA+yeS4xWYyWEUM+GNYSYLRilzy5
 lzY2d4TcAZMOWgP3hMy6sklRJZIuVcDjR4lJXLZkhhxuuAvF5A5xkfY9Cdw/Uhga7F06TYhBgcy
 nmohrz7vtcO5lQR70RJCNjJbYqxPYxsv0voMic3nTYgNsI5WWBsgCFjUeIjpnXKgxZUL8cFQUnQ
 vCRAbyUYfnzATIwP3UVfv7Cbjee6GJkdkg==
X-Google-Smtp-Source: AGHT+IGcbJQmMdv2/L5QG/PihDrviubYJfkoAHws+kOELeBXr0OTca4+vHua2LQtw13KGxYVdmJoYQ==
X-Received: by 2002:a05:622a:1a1c:b0:467:5457:c380 with SMTP id
 d75a77b69052e-46908ec139cmr131097961cf.52.1734620490168; 
 Thu, 19 Dec 2024 07:01:30 -0800 (PST)
Received: from localhost (96.206.236.35.bc.googleusercontent.com.
 [35.236.206.96]) by smtp.gmail.com with ESMTPSA id
 af79cd13be357-7b9ac2bcfd8sm54765885a.14.2024.12.19.07.01.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2024 07:01:29 -0800 (PST)
Date: Thu, 19 Dec 2024 10:01:29 -0500
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
To: Milena Olech <milena.olech@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com, 
 przemyslaw.kitszel@intel.com, Milena Olech <milena.olech@intel.com>
Message-ID: <6764354958acc_1d0f5c29479@willemb.c.googlers.com.notmuch>
In-Reply-To: <20241219094411.110082-10-milena.olech@intel.com>
References: <20241219094411.110082-1-milena.olech@intel.com>
 <20241219094411.110082-10-milena.olech@intel.com>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1734620490; x=1735225290; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:subject:references
 :in-reply-to:message-id:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MmG5yPAwJimVagbIlzy3QYFL/gbvegmXZ5hlAqrdtBI=;
 b=l5PWgk0WKubjV4gt1meAzQEkSf5R1K/KFR5/H0PMr/MRQX+UCxisns1KRGEdxC4ft4
 ZFATPpda8X7JU6zXY+2OTb/2Y5YyVolqsTywZngZvsmdeznJQR7g8U29cBBdW9fpgzsI
 pXhMynbDU5QX4rL98CJ39c7PWLnLM/h9z8QXO0fH797T0zvJhSnYGEWzkC1dlVc5h2a0
 r4h+MlMjqOv6fTo1glfb/97x9iwiyesODvD0Rkm4Q4caChMb7wZ0LyW1swGPq9nBtdkj
 IeA6ahXT0cv8Td3wqb5tCTeOXV8X1/C3KVoJPZM7aY/7Kj0SVz6lrhttDtxvhou37OJm
 Q32w==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=l5PWgk0W
Subject: Re: [Intel-wired-lan] [PATCH v3 iwl-next 09/10] idpf: add support
 for Rx timestamping
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

Milena Olech wrote:
> Add Rx timestamp function when the Rx timestamp value is read directly
> from the Rx descriptor. In order to extend the Rx timestamp value to 64
> bit in hot path, the PHC time is cached in the receive groups.
> Add supported Rx timestamp modes.
> 
> Signed-off-by: Milena Olech <milena.olech@intel.com>

Reviewed-by: Willem de Bruijn <willemb@google.com>
