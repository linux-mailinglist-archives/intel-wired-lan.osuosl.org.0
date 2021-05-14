Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A25D380BC8
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 16:29:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0B600405F0;
	Fri, 14 May 2021 14:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nTrC0LxedwCo; Fri, 14 May 2021 14:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 13E0140490;
	Fri, 14 May 2021 14:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7B021BF339
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B208884521
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t9cjXqUjkDZi for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 11:08:40 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id CF944844F7
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 11:08:39 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 s5-20020a7bc0c50000b0290147d0c21c51so1262696wmh.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 04:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DnsDrIqkWnYf7da8HpIWFBQQt2XImu+6ZyHWBvjrfcE=;
 b=sDX/4vOZ59ic93Kj1k7EQHH5H75TwRxFQdfU97NsB2/Y+xVttZgCu6VcmdiZBbTXV4
 Yd9dS94Y1asR2VIYZN7NEerfwgmtEUFK3NZSUIzeY6J/4AmyVofgnwxiuO5puvulkCHX
 zAH+iCNJUU2yLFhQkplxklOlcyZUbrmQbTIThNq4BukYbZy9X610Bla24hpoPnMCKKtF
 HaX7GWwtAjZyjiNuvWcCoIBPkXTf9xY5aCFfjMGcrbRCdRoMLY/c+VX1+t1XGHSYNqtQ
 /vEAS8jymBn+QTD3oR/5dtU3nH62pPJpzKh6iPn38AjBb8Fr8EpkCArPsjTRrMSNZ8n3
 9CtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DnsDrIqkWnYf7da8HpIWFBQQt2XImu+6ZyHWBvjrfcE=;
 b=DbyT0xJUZVhE+UGwHyKwmkypoSFmkYmTho311WltgVFPYVgSCw4RSiL9BVBKCgrGfQ
 aIBReAE61A2FNY3G2VfeD0mSwMsO40EPJ+saLe/QSms4gHLVqNFvgWK0Rm3z8fWXBBjZ
 OoYtel803vyTOWu+/HrwPUBt1T5c43eSkgxYQ1vEzUCyyB1Rz8FKe0q5H9SAiyIHJgTW
 hVMBxuheOUcpjvUYRFga2CfMEP9ABAsTW5vr6lcNZkOdlCyrkckjqGOUHD2JlfgK9pbn
 oazisa7HCgdFZiXwhLH786c02w/FQNA+hQAEi6mGPfOJyEHOZrE0xiQiDf1i/q58yp1v
 FAVw==
X-Gm-Message-State: AOAM530MxglW9wdJOhoMPv6SlkIRDK1QUelpaGyB+eZctDVXuQxZbc01
 o6JytjaX0djO14dzfZMC2OY=
X-Google-Smtp-Source: ABdhPJwViz0BDPUuVH349RqXP0p4zCVFhrVjXNorTYnm55dAjMiaqH0FajvtM+sJwCYcinjBh5k1qQ==
X-Received: by 2002:a7b:c005:: with SMTP id c5mr21007074wmb.113.1620990517974; 
 Fri, 14 May 2021 04:08:37 -0700 (PDT)
Received: from [192.168.1.122]
 (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
 by smtp.gmail.com with ESMTPSA id b10sm7116349wrr.27.2021.05.14.04.08.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 May 2021 04:08:37 -0700 (PDT)
To: David Woodhouse <dwmw2@infradead.org>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
 <20210514102118.1b71bec3@coco.lan>
 <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <8b8bc929-2f07-049d-f24c-cb1f1d85bbaa@gmail.com>
Date: Fri, 14 May 2021 12:08:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <61c286b7afd6c4acf71418feee4eecca2e6c80c8.camel@infradead.org>
Content-Language: en-GB
X-Mailman-Approved-At: Fri, 14 May 2021 14:29:00 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 00/40] Use ASCII subset instead of
 UTF-8 alternate symbols
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
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

PiBPbiBGcmksIDIwMjEtMDUtMTQgYXQgMTA6MjEgKzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhh
YiB3cm90ZToKPj4gSSBkbyB1c2UgYSBsb3Qgb2YgVVRGLTggaGVyZSwgYXMgSSB0eXBlIHRleHRz
IGluIFBvcnR1Z3Vlc2UsIGJ1dCBJIHJlbHkKPj4gb24gdGhlIFVTLWludGwga2V5Ym9hcmQgc2V0
dGluZ3MsIHRoYXQgYWxsb3cgbWUgdG8gdHlwZSBhcyAiJ2EiIGZvciDDoS4KPj4gSG93ZXZlciwg
dGhlcmUncyBubyBzaG9ydGN1dCBmb3Igbm9uLUxhdGluIFVURi1jb2RlcywgYXMgZmFyIGFzIEkg
a25vdy4KPj4KPj4gU28sIGlmIHdvdWxkIG5lZWQgdG8gdHlwZSBhIGN1cmx5IGNvbW1hIG9uIHRo
ZSB0ZXh0IGVkaXRvcnMgSSBub3JtYWxseSAKPj4gdXNlIGZvciBkZXZlbG9wbWVudCAodmltLCBu
YW5vLCBrYXRlKSwgSSB3b3VsZCBuZWVkIHRvIGN1dC1hbmQtcGFzdGUKPj4gaXQgZnJvbSBzb21l
d2hlcmUKCkZvciBhbnlvbmUgd2hvIGRvZXNuJ3Qga25vdyBhYm91dCBpdDogWCBoYXMgdGhpcyB3
b25kZXJmdWwgdGhpbmcgY2FsbGVkCiB0aGUgQ29tcG9zZSBrZXlbMV0uICBGb3IgaW5zdGFuY2Us
IHR5cGUg4o6ELS0tIHRvIGdldCDigJQsIG9yIOKOhDwiIGZvciDigJwuCk11Y2ggbW9yZSBtbmVt
b25pYyB0aGFuIFVuaWNvZGUgY29kZXBvaW50czsgYW5kIHlvdSBjYW4gZXh0ZW5kIGl0IHdpdGgK
IHVzZXItZGVmaW5lZCBzZXF1ZW5jZXMgaW4geW91ciB+Ly5YQ29tcG9zZSBmaWxlLgooSSBhc3N1
bWUgV2F5bGFuZCBzdXBwb3J0cyBhbGwgdGhpcyB0b28sIGJ1dCBkb24ndCBrbm93IHRoZSBkZXRh
aWxzLikKCk9uIDE0LzA1LzIwMjEgMTA6MDYsIERhdmlkIFdvb2Rob3VzZSB3cm90ZToKPiBBZ2Fp
biwgaWYgeW91IHdhbnQgdG8gbWFrZSBzcGVjaWZpYyBmaXhlcyBsaWtlIHJlbW92aW5nIG5vbi1i
cmVha2luZwo+IHNwYWNlcyBhbmQgYnl0ZSBvcmRlciBtYXJrcywgd2l0aCBzcGVjaWZpYyByZWFz
b25zLCB0aGVuIHRob3NlIG1ha2UKPiBzZW5zZS4gQnV0IGl0J3MgZ290IHZlcnkgbGl0dGxlIHRv
IGRvIHdpdGggVVRGLTggYW5kIGhvdyBlYXN5IGl0IGlzIHRvCj4gdHlwZSB0aGVtLiBBbmQgdGhl
IGV4Y3VzZSB5b3UndmUgcHV0IGluIHRoZSBjb21taXQgY29tbWVudCBmb3IgeW91cgo+IHBhdGNo
ZXMgaXMgdXR0ZXJseSBib2d1cy4KCisxCgotZWQKClsxXSBodHRwczovL2VuLndpa2lwZWRpYS5v
cmcvd2lraS9Db21wb3NlX2tleQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
