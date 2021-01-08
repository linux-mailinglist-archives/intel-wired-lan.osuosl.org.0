Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 382DB2EF861
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Jan 2021 20:50:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C564E87468;
	Fri,  8 Jan 2021 19:50:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xeol5U2Nz+U2; Fri,  8 Jan 2021 19:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D01C887460;
	Fri,  8 Jan 2021 19:50:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 725E81BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 19:50:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D72F8745D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 19:50:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3XeFtCeIgLi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Jan 2021 19:50:32 +0000 (UTC)
X-Greylist: delayed 00:22:01 by SQLgrey-1.7.6
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com
 [209.85.167.171])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9CCA78745C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Jan 2021 19:50:32 +0000 (UTC)
Received: by mail-oi1-f171.google.com with SMTP id l207so12642279oib.4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 08 Jan 2021 11:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pensando.io; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=dBC1YMdtvT3Z9+9jU03+XCfqPLlCOumqVm97SHmv0dk=;
 b=cYAu0m7MXxQty+Qy1nnRae1TJSyA0AlBMPng2O4QVqd6HnoWiX37FcJKIFG+JJcTuG
 b0fKYHfLsM/1TCMLnNfi6Fq7Vq3P05FwYYmdZZ3VtxYn4IlxQ84ddv0JhAlGiaBIbkDu
 9hx9ywJiCrjFRC5lrnaWUdzdqNV821dNkuYmA5ZxvEhBaJlP6rf9uYWsbZ2FxjR6hNYE
 qoTSUD5y1v4uB37cZMaM5h5X/5xIItVTb8D2AcUT4/s2ETxtx6VflZvjPVh3FB1fqkms
 N0iI0nKZMRWG5xJQbmDmJD8eyekLUXYo1LcprsihIJ7yl+WQkC3OkqRNwX7TU6gKJdJe
 3YNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=dBC1YMdtvT3Z9+9jU03+XCfqPLlCOumqVm97SHmv0dk=;
 b=aPn5lVnoZuMtJvU1TTz8VOlg+Qlljh/bJpj/nI0K4MPAkcqhUtAcBvGhtbqHTFY1Qj
 vmiK/3LGDjk+JKg0BDV5Pjad2VX5EYa3Z/+vINRDq7k+bTC2I9zBVi09H9VxyKjOFIxV
 Pzh/VOB8Jf+077tYfAnEqwWAB3O7r+BfA0rP5m4xSUT3I+VDWz/5hyeE883/mb7g2TIU
 WCfJPa2AHZq3ILP6JmQ5ycRQY4KqpS7L5blrYZc3JW1/pPM+M+lImaH8ck64wvnhib/z
 dmDqmuG0zN+aGLhuoyzNNiYgoI0czh4CM4SumW2q67EvvbZOIrOK3/aDBvK1h6ucYh0I
 cppw==
X-Gm-Message-State: AOAM532GfpKFFDNXgELTdY5Oosr5qFyu5/xqpp+t4G2JxWFX2BVKgec5
 EkiCPSFc1+SPELz1Wnzq8zvrrI3SZdX5KA==
X-Google-Smtp-Source: ABdhPJzvPRqg2mccrMstcg71t5qx7TlwTTmeXopdlTfvbENK3Vw9oqBtQM1y4iovJECygjC+XRnAlA==
X-Received: by 2002:a17:90a:b395:: with SMTP id
 e21mr5260844pjr.197.1610133700858; 
 Fri, 08 Jan 2021 11:21:40 -0800 (PST)
Received: from Shannons-MacBook-Pro.local
 (static-50-53-47-17.bvtn.or.frontiernet.net. [50.53.47.17])
 by smtp.gmail.com with ESMTPSA id j20sm9379186pfd.106.2021.01.08.11.21.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 Jan 2021 11:21:40 -0800 (PST)
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
 <20210108102630.00004202@intel.com>
From: Shannon Nelson <snelson@pensando.io>
Message-ID: <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
Date: Fri, 8 Jan 2021 11:21:38 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210108102630.00004202@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 1/2] net: core: count
 drops from GRO
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
Cc: netdev@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jamal Hadi Salim <jhs@mojatatu.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMS84LzIxIDEwOjI2IEFNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3RlOgo+IFNoYW5ub24gTmVs
c29uIHdyb3RlOgo+Cj4+IE9uIDEvNi8yMSAxOjU1IFBNLCBKZXNzZSBCcmFuZGVidXJnIHdyb3Rl
Ogo+Pj4gV2hlbiBkcml2ZXJzIGNhbGwgdGhlIHZhcmlvdXMgcmVjZWl2ZSB1cGNhbGxzIHRvIHJl
Y2VpdmUgYW4gc2tiCj4+PiB0byB0aGUgc3RhY2ssIHNvbWV0aW1lcyB0aGF0IHN0YWNrIGNhbiBk
cm9wIHRoZSBwYWNrZXQuIFRoZSBnb29kCj4+PiBuZXdzIGlzIHRoYXQgdGhlIHJldHVybiBjb2Rl
IGlzIGdpdmVuIHRvIGFsbCB0aGUgZHJpdmVycyBvZgo+Pj4gTkVUX1JYX0RST1Agb3IgR1JPX0RS
T1AuIFRoZSBiYWQgbmV3cyBpcyB0aGF0IG5vIGRyaXZlcnMgZXhjZXB0Cj4+PiB0aGUgb25lICJp
Y2UiIGRyaXZlciB0aGF0IEkgY2hhbmdlZCwgY2hlY2sgdGhlIHN0YXQgYW5kIGluY3JlbWVudAo+
PiBJZiB0aGUgc3RhY2sgaXMgZHJvcHBpbmcgdGhlIHBhY2tldCwgaXNuJ3QgaXQgdXAgdG8gdGhl
IHN0YWNrIHRvIHRyYWNrCj4+IHRoYXQsIHBlcmhhcHMgd2l0aCBzb21ldGhpbmcgdGhhdCBzaG93
cyB1cCBpbiBuZXRzdGF0IC1zP8KgIFdlIGRvbid0Cj4+IHJlYWxseSB3YW50IHRvIG1ha2UgdGhl
IGRyaXZlciByZXNwb25zaWJsZSBmb3IgYW55IGRyb3BzIHRoYXQgaGFwcGVuCj4+IGFib3ZlIGl0
cyBoZWFkLCBkbyB3ZT8KPiBJIHRvdGFsbHkgYWdyZWUhCj4KPiBJbiBwYXRjaCAyLzIgSSByZXZl
cnQgdGhlIGRyaXZlci1zcGVjaWZpYyBjaGFuZ2VzIEkgaGFkIG1hZGUgaW4gYW4KPiBlYXJsaWVy
IHBhdGNoLCBhbmQgdGhpcyBwYXRjaCAqd2FzKiBteSBlZmZvcnQgdG8gbWFrZSB0aGUgc3RhY2sg
c2hvdyB0aGUKPiBkcm9wcy4KPgo+IE1heWJlIEkgd2Fzbid0IGNsZWFyLiBJJ20gc2VlaW5nIHBh
Y2tldHMgZGlzYXBwZWFyIGR1cmluZyBUQ1AKPiB3b3JrbG9hZHMsIGFuZCB0aGlzIEdST19EUk9Q
IGNvZGUgd2FzIHRoZSBzb3VyY2Ugb2YgdGhlIGRyb3BzIChJIHNlZSBpdAo+IHJldHVybmluZyBp
bmZyZXF1ZW50bHkgYnV0IHJlZ3VsYXJseSkKPgo+IFRoZSBkcml2ZXIgcHJvY2Vzc2VzIHRoZSBw
YWNrZXQgYnV0IHRoZSBzdGFjayBuZXZlciBzZWVzIGl0LCBhbmQgdGhlcmUKPiB3ZXJlIG5vIGRy
b3AgY291bnRlcnMgYW55d2hlcmUgdHJhY2tpbmcgaXQuCj4KCk15IHBvaW50IGlzIHRoYXQgdGhl
IHBhdGNoIGluY3JlbWVudHMgYSBuZXRkZXYgY291bnRlciwgd2hpY2ggdG8gbXkgbWluZCAKaW1t
ZWRpYXRlbHkgaW1wbGljYXRlcyB0aGUgZHJpdmVyIGFuZCBoYXJkd2FyZSwgcmF0aGVyIHRoYW4g
dGhlIHN0YWNrLsKgIApBcyBhIGRyaXZlciBtYWludGFpbmVyLCBJIGRvbid0IHdhbnQgdG8gYmUg
Y2hhc2luZyBkcml2ZXIgcGFja2V0IGRyb3AgCnJlcG9ydHMgdGhhdCBhcmUgYSBzdGFjayBwcm9i
bGVtLsKgIEknZCByYXRoZXIgc2VlIGEgbmV3IGNvdW50ZXIgaW4gCm5ldHN0YXQgLXMgdGhhdCBy
ZWZsZWN0cyB0aGUgc3RhY2sgZGVjaXNpb24gYW5kIGNhbiBiZXR0ZXIgaW1wbHkgd2hhdCAKd2Vu
dCB3cm9uZy7CoCBJIGRvbid0IGhhdmUgYSBnb29kIHN1Z2dlc3Rpb24gZm9yIGEgY291bnRlciBu
YW1lIGF0IHRoZSAKbW9tZW50LgoKSSBndWVzcyBwYXJ0IG9mIHRoZSBpc3N1ZSBpcyB0aGF0IHRo
aXMgaXMgcmlnaHQgb24gdGhlIGJvdW5kYXJ5IG9mIApkcml2ZXItc3RhY2suwqAgQnV0IGlmIHdl
IGZvbGxvdyBFcmljJ3Mgc3VnZ2VzdGlvbnMsIG1heWJlIHRoZSBwcm9ibGVtIAptYWdpY2FsbHkg
Z29lcyBhd2F5IDotKSAuCgpzbG4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
