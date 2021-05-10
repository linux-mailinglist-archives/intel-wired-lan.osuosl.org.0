Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 943E9378FD7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 16:02:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B39940E5C;
	Mon, 10 May 2021 14:02:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Cpbmipx-Bfxb; Mon, 10 May 2021 14:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30F6040E51;
	Mon, 10 May 2021 14:02:20 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0417A1BF316
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:59:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E5FB640237
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:59:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1rISne5DxI9J for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 May 2021 13:59:03 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com
 [IPv6:2a00:1450:4864:20::32d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 095B840226
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 13:59:02 +0000 (UTC)
Received: by mail-wm1-x32d.google.com with SMTP id
 b19-20020a05600c06d3b029014258a636e8so8956717wmn.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 May 2021 06:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=oOiV5WgMi7Wi96u1A0j7aVHx72rSJUWKb9L7JASEw6U=;
 b=eI3N1Fpg9OGfxDYeN9CkM6JnUmUHl5WgQKsZJBAEe06N6eQIW+N/2eMqTIlrsyK/qM
 Xa35uzmXt4bi7Z5ExQmBDGcCmQr1UD910O1m2RozktwaOIV8OjhOXtuMqdS2t5KIlfV2
 /xSjuQtpNfwsgUMZT4YbuSWeEoVUpnkLWdYWx57GHC/JMnIbfeomB6X1EwhI6GqtNjJz
 5mS+m2iGgDDSAr7pACiBgtShvHO5CxZyag+ZmeEb/XAmakP22Iz1mAVAu5X4yPcneMls
 MNKS6aX+UYGYTiDpkPzh+zNyC5KsbwVbzbmTl9DNNLPJNUbSwFzwjXpWYoyfaT3bHk/5
 tcow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oOiV5WgMi7Wi96u1A0j7aVHx72rSJUWKb9L7JASEw6U=;
 b=mLKRLkna1Bkm+EqQQzeMj5eGQiwF3IDdmhqc56g1Uc1OqTikvBf3H0Njp2Mefyg2Pw
 sPrgL+1601Rg+N4l2GzKCWGru+JkfZVxnVybTWu+zydFlnKazWYePgpnkKRzFI5k7Zda
 tAVNyrk8/RtTM6a0+/g5im2QzcI4l5ZF5hJF80WmLw7O2NX0h75Im2t7irE1X0aHiBue
 /vruSLFdrmK5JdTQ9rpvKNn6o2LQpNURUjlOCScxpexyzjstMKom9wiRpxbhs06VjiS8
 Vnm58jgvKuwlA9Tgl7/gAI77sUenfn2NS3o7eeSq14Hs4CovDr6vTzYELRUX5XV3Sjh6
 Kbdg==
X-Gm-Message-State: AOAM533qgmeX9aRuAHP7PFHPq/+cDU5+BhpLccBvb50gGp/hhC+QzemE
 8f+2npRLp+ot34yWoChNj48=
X-Google-Smtp-Source: ABdhPJxuRWxshXLY3D3BIGKPZC8k+BUcpGElfoLV7AagS8fiv45gCBBhTdzQWkysFh21R1ZatES2dQ==
X-Received: by 2002:a1c:e38a:: with SMTP id
 a132mr26226331wmh.135.1620655141215; 
 Mon, 10 May 2021 06:59:01 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id d127sm25703586wmd.14.2021.05.10.06.58.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 06:59:00 -0700 (PDT)
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1620641727.git.mchehab+huawei@kernel.org>
 <2ae366fdff4bd5910a2270823e8da70521c859af.camel@infradead.org>
 <20210510135518.305cc03d@coco.lan>
 <df6b4567-030c-a480-c5a6-fe579830e8c0@gmail.com>
 <20210510153807.4405695e@coco.lan>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <b3366f65-35e1-8f1a-d8d8-ebd444c9499d@gmail.com>
Date: Mon, 10 May 2021 14:58:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210510153807.4405695e@coco.lan>
Content-Language: en-GB
X-Mailman-Approved-At: Mon, 10 May 2021 14:02:15 +0000
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
 linux-rdma@vger.kernel.org, x86@kernel.org, linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-sgx@vger.kernel.org, coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org, David Woodhouse <dwmw2@infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMTAvMDUvMjAyMSAxNDozOCwgTWF1cm8gQ2FydmFsaG8gQ2hlaGFiIHdyb3RlOgo+IEVtIE1v
biwgMTAgTWF5IDIwMjEgMTQ6MTY6MTYgKzAxMDAKPiBFZHdhcmQgQ3JlZSA8ZWNyZWUueGlsaW54
QGdtYWlsLmNvbT4gZXNjcmV2ZXU6Cj4+IEJ1dCB3aGF0IGtpbmRzIG9mIHRoaW5ncyB3aXRoIMOX
IG9yIOKAlCBpbiBhcmUgZ29pbmcgdG8gYmUgZ3JlcHQgZm9yPwo+IAo+IEFjdHVhbGx5LCBvbiBh
bG1vc3QgYWxsIHBsYWNlcywgdGhvc2UgYXJlbid0IHVzZWQgaW5zaWRlIG1hdGggZm9ybXVsYWUs
IGJ1dAo+IGluc3RlYWQsIHRoZXkgZGVzY3JpYmUgdmlkZW8gc29tZSByZXNvbHV0aW9uczoKRWho
LCB0aG9zZSBhcmUgYWxzbyBwcm9wZXIgdXNlcyBvZiDDly4gIEl0J3Mgc3RpbGwgYSBtdWx0aXBs
aWNhdGlvbiwKIGFmdGVyIGFsbC4KCj4gaXQgaXMgYSB3YXkgbW9yZSBsaWtlbHkgdGhhdCwgaWYg
c29tZW9uZSB3YW50cyB0byBncmVwLCB0aGV5IHdvdWxkIGJlIAo+IGRvaW5nIHNvbWV0aGluZyBs
aWtlIHRoaXMsIGluIG9yZGVyIHRvIGdldCB2aWRlbyByZXNvbHV0aW9uczoKV2h5IHdvdWxkIHNv
bWVvbmUgYmUgZ3JlcHBpbmcgZm9yICJhbGwgdmlkZW8gcmVzb2x1dGlvbnMgbWVudGlvbmVkIGlu
CiB0aGUgZG9jdW1lbnRhdGlvbiI/ICBUaGF0IHNlZW1zIGNvbnRyaXZlZCB0byBtZS4KCi1lZApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
