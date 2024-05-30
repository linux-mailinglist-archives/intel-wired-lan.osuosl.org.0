Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D4C8D509E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 May 2024 19:11:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 99D1841994;
	Thu, 30 May 2024 17:11:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fGoTLVK_igJn; Thu, 30 May 2024 17:11:18 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3500141995
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717089078;
	bh=b5dMIK+YmRjKcd+w3hKSLG4KLhKC/IhFM8M8zHEuCAE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=F652PFWoTnwd6/SUcFY8r45lYFVIpUgOi32d1zQ5bqK+U1+qM7gYkFy9rqb3AIYQN
	 +Vs59BofE8LDtygB5A+waJTUuqs6KWoH+RSClhIoQbtukNGtCzJIFlU+Y3RuJVUzUE
	 0Dmfco0w2+opQ66D4gwkSBR4nvYjRPA2ycJ94EyGToDtpxdp6/tQtqv/oZxRENssxV
	 QA5Lj2zUxrqEsdcx531u27FtDTQPRZrsghJWY4sLSohfMB2p0FqR56s6p6yFTIRH3l
	 fsSMYoD0X+fQiXZmbJSuOYp6MjOlxP8D+VmQgHuD2M5T3CpTA8mcoX6TVG5w8Pm+C1
	 miUBVGYihKWuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3500141995;
	Thu, 30 May 2024 17:11:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A984E1D48F3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:11:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 947A86062A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:11:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u84mgVo8n_YN for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 May 2024 17:11:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=yury.norov@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 28DF6605E7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 28DF6605E7
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 28DF6605E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 17:11:15 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-1f480624d0fso9139295ad.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 May 2024 10:11:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1717089074; x=1717693874;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=b5dMIK+YmRjKcd+w3hKSLG4KLhKC/IhFM8M8zHEuCAE=;
 b=NLFKee1NaFbWXNNK194q39xs4yvJMHgNkS1VbskEL8elvZu1KkaSdvYm+Zw0oNG/8f
 dZHiSbYIXQVK+HyfzFLot7gWcxbF4WJs9TZ3WUZuQ33HaOxKsbax7c8eCq8svBvmvfw4
 TLn5Jomx9d4IfFsrru9/RxxMjy7+w+UO+XJ/1K7RCZUSH9sw00qx5R21PF6RaZZTPYW6
 zy4E6tc/yrZTF7zTf6nwiA6yhjQ5SgtCkKWgzSliRciz/uuVQeZNkZRMye6ttli0yhov
 XOgHNEPgteWF1xWgQi1k56iwRI2ewPFD/x5ycreVfzifzKussnMRswHSCvU8gQAO5sdc
 MRqQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWrEaEzcWzyYx5XCeBEHgAYJviOe1je7dow5AwqXWW62NYec1azsL2qPDAZ8Z2GI2xMmsnqOeWSF7ZJzyxD6s9dO2n7sXHcCjUEhC2xiS7/Vg==
X-Gm-Message-State: AOJu0YwER/U0CVxxxWj4wD/KUOCVRhdeVkLGwVrSMjxAEj0ZxkzCzpjJ
 6sNS3KY+K1ij2VcWlxF/3MzBq9b3qes+p/RJy1MdGx5K2V9fO9X7
X-Google-Smtp-Source: AGHT+IEBj73siAJfZoLiX9gqpPn+nv1DxMqUBBrc8uKp//jC475DsqApjM9Y16BLcPTu9eoocFrNUA==
X-Received: by 2002:a17:902:c7d2:b0:1f3:a14:5203 with SMTP id
 d9443c01a7336-1f61962bd45mr20087525ad.38.1717089074324; 
 Thu, 30 May 2024 10:11:14 -0700 (PDT)
Received: from localhost ([216.228.127.129]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1f6323dd824sm203895ad.128.2024.05.30.10.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 May 2024 10:11:13 -0700 (PDT)
Date: Thu, 30 May 2024 10:11:11 -0700
From: Yury Norov <yury.norov@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ZlizL6d1_ePq-eKs@yury-ThinkPad>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-14-aleksander.lobakin@intel.com>
 <5a18f5ac-4e9a-4baf-b720-98eac7b6792f@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5a18f5ac-4e9a-4baf-b720-98eac7b6792f@arm.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1717089074; x=1717693874; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=b5dMIK+YmRjKcd+w3hKSLG4KLhKC/IhFM8M8zHEuCAE=;
 b=nocljYB3UsgxWP4zo7G9YFbUDi2lfJ8Eph8AxD9OHB8VUvTKDWaOEZgWbfezAK7L4e
 pmdsDRVr7qxio7Xfngc2JpMOGDXTfSRBTgzeCiE/9kU1noDEN5giYV9IufDLhe4VmkX1
 Xp6UjPI/PQo5sKVXEPVwcXIp7oE+t1N7kHw8hENHCIZmYdOyPfAauh6uBS+ifEDsL5r2
 K0TGoN+El7qiBgRU4bPzJmqmrA+n9EXPa9XlrlkYk7hazAzcnYLEEsnEWruGOk1vgJcB
 i4igPKq5P7XGtXyVci3WvHkmfBTLz8D7WQGvxt4I0CMJbRwy1iwJ6LTWnqK5GYm0wZ0/
 l4yg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=nocljYB3
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 13/21] bitmap: make
 bitmap_{get, set}_value8() use bitmap_{read, write}()
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
Cc: intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org,
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Alexander Potapenko <glider@google.com>,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, May 29, 2024 at 04:12:25PM +0100, Robin Murphy wrote:
> Hi Alexander,
> 
> On 27/03/2024 3:23 pm, Alexander Lobakin wrote:
> > Now that we have generic bitmap_read() and bitmap_write(), which are
> > inline and try to take care of non-bound-crossing and aligned cases
> > to keep them optimized, collapse bitmap_{get,set}_value8() into
> > simple wrappers around the former ones.
> > bloat-o-meter shows no difference in vmlinux and -2 bytes for
> > gpio-pca953x.ko, which says the optimization didn't suffer due to
> > that change. The converted helpers have the value width embedded
> > and always compile-time constant and that helps a lot.
> 
> This change appears to have introduced a build failure for me on arm64
> (with GCC 9.4.0 from Ubuntu 20.04.02) - reverting b44759705f7d makes
> these errors go away again:
> 
> In file included from drivers/gpio/gpio-pca953x.c:12:
> drivers/gpio/gpio-pca953x.c: In function ‘pca953x_probe’:
> ./include/linux/bitmap.h:799:17: error: array subscript [1, 1024] is outside array bounds of ‘long unsigned int[1]’ [-Werror=array-bounds]
>   799 |  map[index + 1] &= BITMAP_FIRST_WORD_MASK(start + nbits);
>       |                 ^~
> In file included from ./include/linux/atomic.h:5,
>                  from drivers/gpio/gpio-pca953x.c:11:
> drivers/gpio/gpio-pca953x.c:1015:17: note: while referencing ‘val’
>  1015 |  DECLARE_BITMAP(val, MAX_LINE);
>       |                 ^~~
> ./include/linux/types.h:11:16: note: in definition of macro ‘DECLARE_BITMAP’
>    11 |  unsigned long name[BITS_TO_LONGS(bits)]
>       |                ^~~~
> In file included from drivers/gpio/gpio-pca953x.c:12:
> ./include/linux/bitmap.h:800:17: error: array subscript [1, 1024] is outside array bounds of ‘long unsigned int[1]’ [-Werror=array-bounds]
>   800 |  map[index + 1] |= (value >> space);
>       |  ~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~
> In file included from ./include/linux/atomic.h:5,
>                  from drivers/gpio/gpio-pca953x.c:11:
> drivers/gpio/gpio-pca953x.c:1015:17: note: while referencing ‘val’
>  1015 |  DECLARE_BITMAP(val, MAX_LINE);
>       |                 ^~~
> ./include/linux/types.h:11:16: note: in definition of macro ‘DECLARE_BITMAP’
>    11 |  unsigned long name[BITS_TO_LONGS(bits)]
>       |                ^~~~
> 
> I've not dug further since I don't have any interest in the pca953x
> driver - it just happened to be enabled in my config, so for now I've
> turned it off. However I couldn't obviously see any other reports of
> this, so here it is.

It's a compiler false-positive. The straightforward fix is to disable the warning
For gcc9+, and it's in Andrew Morton's tree alrady. but there's some discussion 
ongoing on how it should be mitigated properlu:

https://lore.kernel.org/all/0ab2702f-8245-4f02-beb7-dcc7d79d5416@app.fastmail.com/T/

Thanks,
YUry
