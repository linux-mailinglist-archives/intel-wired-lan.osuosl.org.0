Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 924C4379263
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 17:19:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EF68E83E6C;
	Mon, 10 May 2021 15:19:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7uWdK_EPUQh; Mon, 10 May 2021 15:19:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EA1F083E67;
	Mon, 10 May 2021 15:19:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3A6341BF38E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1C8A983342
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8PCqEH0hrNx1 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 14:33:51 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com
 [IPv6:2a00:1450:4864:20::42b])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5908782E4F
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 14:33:51 +0000 (UTC)
Received: by mail-wr1-x42b.google.com with SMTP id l13so16849836wru.11
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 07:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=iXsxoOt9fS3DXvxCyyFOaJfbPkU6WlTqA1MG4BgEpJA=;
 b=jIc4OS4UG1e9Htue39hs2SdJXCmPLn+MTostxG/pw06sXYt4cF0beJY8cOPd4XkNvN
 wMkWqq4rS4nqVWqmlHYwknDCThc4F5oj3a10x6AGXMwZ0Kkxjgx6mU53ky5S6gct5IOF
 gb8YE/CdqFeQhJSfkuXg75IoXDsEW/QKbfnCDm8DSyF/6zHxA2in236S9Jv233h02Cag
 nY/zUkluYzDhxrfM75C6Qnf/beBRBG9DBN2uslTW/jB8AmOrnU4strwuRTlIYCmTiED9
 Adakd2gy/AYmhY6PfiGery2Nb+BVYLJb2xN6RqR96XQSpLkoAkrrTIc1zJH3tzspThUx
 eDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=iXsxoOt9fS3DXvxCyyFOaJfbPkU6WlTqA1MG4BgEpJA=;
 b=WZ/JFcljtVCGqi7gTJerglMRDR+tcICGrbfhu+PN3nUdhiKxFBqQcUH2Mbrvav+C2Q
 OotHCq/qePwIVWQo8o2woqSDJ3v6BRyIM8uhZ7DtJVGKGlNZRVbJ0L2IO1YEiV+TfC45
 JsylgE5k61pWonddpv8xWFNqt/apqK1YcLawG0mNBUEWXSFbkybufk0vrAOk2pZVDUEr
 XaTP5aiCMMMk1BwZA3NbXsqNc6XQNE3/K0kVfUDK7KSKrGU9vq8uhcEMVixDgqy67Bb8
 bxRBYum2X83Er4r41jrkpdk87ALcx7BdjDLuLPaECvu+RUj3gd9OvacpqX0xKTzX75Fz
 WOlQ==
X-Gm-Message-State: AOAM530VfPXg7jYI5Wd9fh/NCdEAOz/K4CmHyINjaC8IldZxjKQoHIcK
 dhJSlFFF9iuI7IlZXJ1VNl4=
X-Google-Smtp-Source: ABdhPJze1q8t3iuv5DjzOv0RveTjqSpEwnprh+IG3St78u9eWCZrU93KSEZYLbobgkyZLBZ/m0bYBQ==
X-Received: by 2002:adf:e98c:: with SMTP id h12mr30469476wrm.314.1620657229579; 
 Mon, 10 May 2021 07:33:49 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id h9sm20117820wmb.35.2021.05.10.07.33.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 07:33:48 -0700 (PDT)
To: Matthew Wilcox <willy@infradead.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
 <YJk8LMFViV7Z3Uu7@casper.infradead.org>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <ed65025c-1087-9672-7451-6d28e7ab8f92@gmail.com>
Date: Mon, 10 May 2021 15:33:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <YJk8LMFViV7Z3Uu7@casper.infradead.org>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 May 2021 15:19:01 +0000
Subject: Re: [Intel-wired-lan] [PATCH 00/53] Get rid of UTF-8 chars that can
 be mapped as ASCII
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-fpga@vger.kernel.org,
 dri-devel@lists.freedesktop.org, keyrings@vger.kernel.org,
 linux-riscv@lists.infradead.org, Jonathan Corbet <corbet@lwn.net>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, x86@kernel.org,
 linux-acpi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, linux-ext4@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-media@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-sgx@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-rdma@vger.kernel.org, linux-integrity@vger.kernel.org,
 David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 10/05/2021 14:59, Matthew Wilcox wrote:
> Most of these
> UTF-8 characters come from latex conversions and really aren't
> necessary (and are being used incorrectly).
I fully agree with fixing those.
The cover-letter, however, gave the impression that that was not the
 main purpose of this series; just, perhaps, a happy side-effect.

> You seem quite knowedgeable about the various differences.  Perhaps
> you'd be willing to write a document for Documentation/doc-guide/
> that provides guidance for when to use which kinds of horizontal
> line?I have Opinions about the proper usage of punctuation, but I also know
 that other people have differing opinions.  For instance, I place
 spaces around an em dash, which is nonstandard according to most
 style guides.  Really this is an individual enough thing that I'm not
 sure we could have a "kernel style guide" that would be more useful
 than general-purpose guidance like the page you linked.
Moreover, such a guide could make non-native speakers needlessly self-
 conscious about their writing and discourage them from contributing
 documentation at all.  I'm not advocating here for trying to push
 kernel developers towards an eats-shoots-and-leaves level of
 linguistic pedantry; rather, I merely think that existing correct
 usages should be left intact (and therefore, excising incorrect usage
 should only be attempted by someone with both the expertise and time
 to check each case).

But if you really want such a doc I wouldn't mind contributing to it.

-ed
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
