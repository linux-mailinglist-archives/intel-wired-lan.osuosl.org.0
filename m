Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BEE263402F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Nov 2022 16:29:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28C9F82068;
	Tue, 22 Nov 2022 15:29:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28C9F82068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669130949;
	bh=bSg5fEJ4VAqtbPLO69dSxsX9yD7nwB7SfNOXcG44dv8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G426+YcS5jSwMHvFGsSCJQOKvhkUltXqYjFMx+s9RFZqkHz6RIyBMlJy8PPOQYpdB
	 jCI1mHw5y5tgvCLpu0O65u8qtW4mIlPws7YBSGcmU8t//QR2aoCgBuduUn0wKgeJFf
	 IS07qqkdMv9jrbIe2duI9rPo6kiPOKzY7fBPSjdzr4N0GqwXL0OWp61JM6mw43p9Xn
	 HpXo3vIPpt1uMNzHImGn1lUuLjs5BY4vMZBeGFMbw8AX7EPyKWvgk0keIbp6YwuTMC
	 hcdbWITPQIwSHbVHqXSpHm656b6Z/aKOd7HpSbCIWjExcHW0S3+FYMz9ZBiNWSwv+D
	 //HJuo2OVUBfw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lqke-g4G49ji; Tue, 22 Nov 2022 15:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33AA68139F;
	Tue, 22 Nov 2022 15:29:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33AA68139F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 69B691BF330
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:29:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43F8040B39
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43F8040B39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7RW-QLEN1j3M for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Nov 2022 15:29:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B752740133
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com
 [IPv6:2607:f8b0:4864:20::632])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B752740133
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 15:29:02 +0000 (UTC)
Received: by mail-pl1-x632.google.com with SMTP id io19so13971694plb.8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Nov 2022 07:29:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=BWsgnK4bCpDB0AGVqu1iCJY+iEdGgMNXNw3iuBWpKl4=;
 b=ZQM7mhwfU0Kir+Y7pZGpTxV6QGotsf1OpkCRoCP4tZUsimaQVhrcaX90wQ1P9gG110
 ChERDylrdeaw1FW6MJie0PGD3/L99VQCtIeiraU7b+3+Jugl/hIRkbXE9N6F4Zm6Gxrw
 GoGyhs3IN+mQFviJJ9ktAuS7n1HML9YtQZJRRW3A+BJVlckDnRXLSZTnd1FRkhSOmW+Z
 RZieGXIE+Of6lWloLc/rkxH/6OJHnIyPQdM7RFgMlbAsqHdC/odm0tbrrKEXu64CSEEt
 aumA60Zre7r69ASPCFC77+wJGo8FhjTnyzp2Ux8n2jF/xvYsCsZrxveBfXYG+iEtXwiG
 NAQA==
X-Gm-Message-State: ANoB5pmZTWoZ3xBSqocxnWq1HHenejk6ERtkzE6G9D15tpqYhTEkFHQs
 NalROZxfgH91l9/KC+655KnI6Q==
X-Google-Smtp-Source: AA0mqf7B1EtJOIh1AdECaEOUjkvP/y56NRXjQ7NLbasAhREBuuunEHbSNrXkp4b0Tqc0hez5awtz+w==
X-Received: by 2002:a17:90b:2544:b0:20a:f341:4ed9 with SMTP id
 nw4-20020a17090b254400b0020af3414ed9mr31723607pjb.11.1669130942296; 
 Tue, 22 Nov 2022 07:29:02 -0800 (PST)
Received: from ?IPV6:2400:4050:c360:8200:8ae8:3c4:c0da:7419?
 ([2400:4050:c360:8200:8ae8:3c4:c0da:7419])
 by smtp.gmail.com with ESMTPSA id
 b8-20020aa78ec8000000b0056b8b17f914sm10736086pfr.216.2022.11.22.07.28.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Nov 2022 07:29:02 -0800 (PST)
Message-ID: <647a4053-bae0-6c06-3049-274d389c2bdd@daynix.com>
Date: Wed, 23 Nov 2022 00:28:58 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Paul Menzel <pmenzel@molgen.mpg.de>
References: <20221122092707.30981-1-akihiko.odaki@daynix.com>
 <24fd3d18-0c09-8235-c88d-d7e151110ebe@molgen.mpg.de>
From: Akihiko Odaki <akihiko.odaki@daynix.com>
In-Reply-To: <24fd3d18-0c09-8235-c88d-d7e151110ebe@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=daynix-com.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=BWsgnK4bCpDB0AGVqu1iCJY+iEdGgMNXNw3iuBWpKl4=;
 b=N6MluBTM8SIc6fkevZ4t+ccu7hYeeTAmlk8FRw7dcD9ZYNCTgsxpTZszko8Bo19BUs
 ZdiJCJ7IhfZE0FMjWhzZEoOHIeB8zfbCBJIP4XUeJT7I+/Mk7IVeTKkH/UmLtR+mzHJv
 q3wJjBzRFi/GARJ1G0RyGi2OHP0W+hez4n4CVGHbtfdMdNbwaGMxJzk+uQo8Hb7WzXnr
 RWfdo4rTs/HhxDUu6tDLan38dWvK6tBrBe4jCV5r/HVS6+c9NDbf/d8pBS1vy3Ed8o7x
 CWfu/D/G3gJcr12lcTpTiMOc7IJ3ZHP+FM0TCJ1I08nHGKo62GHiXDGdsy3SCTzn4NBR
 1RNQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=daynix-com.20210112.gappssmtp.com
 header.i=@daynix-com.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=N6MluBTM
Subject: Re: [Intel-wired-lan] [PATCH] igbvf: Regard vf reset nack as success
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yuri Benditovich <yuri.benditovich@daynix.com>,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Yan Vugenfirer <yan@daynix.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGksCgpPbiAyMDIyLzExLzIyIDIzOjE3LCBQYXVsIE1lbnplbCB3cm90ZToKPiBEZWFyIEFraWhp
a28sCj4gCj4gCj4gVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLgo+IAo+IAo+IEFtIDIyLjExLjIy
IHVtIDEwOjI3IHNjaHJpZWIgQWtpaGlrbyBPZGFraToKPj4gdmYgcmVzZXQgbmFjayBhY3R1YWxs
eSByZXByZXNlbnRzIHRoZSByZXNldCBvcGVyYXRpb24gaXRzZWxmIGlzCj4+IHBlcmZvcm1lZCBi
dXQgbm8gYWRkcmVzcyBpcyBub3QgYXNzaWduZWQuIFRoZXJlZm9yZSwgZTEwMDBfcmVzZXRfaHdf
dmYKPiAKPiBJcyDigKYgbm8g4oCmIG5vdCBhc3NpZ25lZCDigKYgaW50ZW50aW9uYWw/Cj4gCj4+
IHNob3VsZCBmaWxsIHRoZSAicGVybV9hZGRyIiB3aXRoIHRoZSB6ZXJvIGFkZHJlc3MgYW5kIHJl
dHVybiBzdWNjZXNzIG9uCj4+IHN1Y2ggYW4gb2NjYXNzaW9uLiBUaGlzIHByZXZlbnRzIGl0cyBj
YWxsZXJzIGluIG5ldGRldi5jIGZyb20gc2F5aW5nIFBGCj4gCj4gb2NjYXNpb24KCkkgaGF2ZSBq
dXN0IHNlbnQgdjIgd2l0aCB0aGUgbWVzc2FnZSBmaXhlZC4KCj4gCj4+IHN0aWxsIHJlc2V0dGlu
ZywgYW5kIGluc3RlYWQgYWxsb3dzIHRoZW0gdG8gY29ycmVjdGx5IHJlcG9ydCB0aGF0IG5vCj4+
IGFkZHJlc3MgaXMgYXNzaWduZWQuCj4gCj4gSW4gd2hhdCBlbnZpcm9ubWVudCBkbyB5b3UgaGl0
IHRoZSBwcm9ibGVtPwoKSSBmb3VuZCB0aGlzIGJ1ZyB3aGVuIEkgd2FzIGRldmVsb3BpbmcgYSBR
RU1VIHBhdGNoIHRvIGVtdWxhdGUgODI1NzYuCgpSZWdhcmRzLApBa2loaWtvIE9kYWtpCgo+IAo+
IFvigKZdCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IAo+IFBhdWwKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlz
dApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
