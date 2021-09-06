Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B7240226D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 Sep 2021 05:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6EA24054E;
	Tue,  7 Sep 2021 03:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2cLeHwrvzLQX; Tue,  7 Sep 2021 03:16:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CED6F404E8;
	Tue,  7 Sep 2021 03:16:54 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 459871BF2A0
 for <intel-wired-lan@osuosl.org>; Mon,  6 Sep 2021 12:05:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32849607C2
 for <intel-wired-lan@osuosl.org>; Mon,  6 Sep 2021 12:05:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dMWHrDjJxdQI for <intel-wired-lan@osuosl.org>;
 Mon,  6 Sep 2021 12:04:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5A92F605F6
 for <intel-wired-lan@osuosl.org>; Mon,  6 Sep 2021 12:04:59 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id u16so9517713wrn.5
 for <intel-wired-lan@osuosl.org>; Mon, 06 Sep 2021 05:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:cc:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=guQRS7HU7K3Lxpgg84arFm1G9yfXs4FoOMqi+WUfifE=;
 b=gr/FBoNa5EPCO1JBP6B7GjL2uldon3UTx6R+kdcxWJ8hKpSaT8/M5EG/t8J3SeijmW
 PYnP/ACniJvYohT+Ke2R9PSZyf3/VQ+ED52uBqb4jghanHCAR/oDIWreU0xYKbyJ3QAh
 0IqwlFCfudE7X5ALRkX8MH7JVZV/I8rwhqFxo5Yg6g/mkzrnFcVIv7AASdNjm5ccnIjX
 Z74EL5qFX3OiVMYj6VOOrTvOAbSC+YhDqiaiyA/ym+PT4L2LGb3gkNCoHXsDuF2D8fXC
 hoanyYrsWKd64W1/8V/rwp5WsbjOsqBYm5lUhKH/qlDfRryHgkeUslR+nTWqZ59NtNx9
 3lqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:cc:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=guQRS7HU7K3Lxpgg84arFm1G9yfXs4FoOMqi+WUfifE=;
 b=VY4JnUgfZSYN9yhufaInGRXGf22AV1QiE7A4CtSIwX3/fMpiANuWMw5ln6QHWshXh7
 FitYFXjQSXoIvS5Xa3fA03jdYOitNM4i94kBNr+HH76mEZpf5+RNNp9FR8gdR2T5+CQW
 BsjgCKWt8RiVwnumpHlgGmN7v8BBFAZ4n9d92JOIN1GPLqGNHkKR5ecFZ0lvicgJ47Zd
 HI5OPwMWhmQ9rNAfIq5CujAXyljO8GKs+xsOHDfVf/pG8YwF455nx8pgYpS1zkC5lw5k
 UOwFUTex9YVwLHNroJhbmzL+oUns+rR0HFxEIG7PK79k5mAuW/Wa0w1+Uaazk8Xt7Ycv
 G3cg==
X-Gm-Message-State: AOAM5309jYWhG57LEkm04UB/+3isxupU935vcL7y6rYGgarLYDl/aY1y
 Y7liGAHnmcJPNf4I+3eI1Rtej3NNXMwreg==
X-Google-Smtp-Source: ABdhPJzV7vm45artKArlDAph7ywkcHAC7XlhIZ2EVrod2yNlgddbQ5bI+JYhz1pHz0klB957dRclXA==
X-Received: by 2002:adf:e101:: with SMTP id t1mr13060063wrz.215.1630929896888; 
 Mon, 06 Sep 2021 05:04:56 -0700 (PDT)
Received: from [192.168.1.8] (ip5b40d22e.dynamic.kabel-deutschland.de.
 [91.64.210.46])
 by smtp.gmail.com with ESMTPSA id f18sm7003114wmc.6.2021.09.06.05.04.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Sep 2021 05:04:56 -0700 (PDT)
To: "Keller, Jacob E" <jacob.e.keller@intel.com>
References: <1f52bd29-43e7-0639-57cf-abfb7dc9804b@sect.tu-berlin.de>
 <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
From: Felicitas Hetzelt <felicitashetzelt@gmail.com>
Message-ID: <d656c5d2-bdb6-5b05-1c4a-bcf6ec9194df@gmail.com>
Date: Mon, 6 Sep 2021 14:04:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <c2ca99a7-9389-de32-bf2d-5128158a094a@intel.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 07 Sep 2021 03:16:44 +0000
Subject: Re: [Intel-wired-lan] Potential oob access in e100.c:get_regs(_len)
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
Cc: intel-wired-lan@osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
> Are you seeing the same thing I am?

Seems to me like you are right! I wonder why this was never caught though.

Also, KASAN did trigger on this path which I guess is an indication that
there in fact is a problem.


Regards,

Felicitas

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
