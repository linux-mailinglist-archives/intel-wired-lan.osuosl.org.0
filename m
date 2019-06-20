Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 375C04DD1D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jun 2019 23:56:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E79B685194;
	Thu, 20 Jun 2019 21:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NXvD+w7uqXKu; Thu, 20 Jun 2019 21:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 97FD3854D0;
	Thu, 20 Jun 2019 21:56:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BC5B61BF5E6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:56:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B85BF85194
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:56:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8s6+mbSU6C+j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jun 2019 21:56:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com
 [209.85.222.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 24B1584F96
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 21:56:32 +0000 (UTC)
Received: by mail-qk1-f195.google.com with SMTP id b18so3003789qkc.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jun 2019 14:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/qT8+w13sh5bxkSQag4fh6UhgmcT4J7HP+qFcMaHogQ=;
 b=Vb1GIfyBKvrb79uXZDeac7rN+yGMmk3N0wBT0FHCODFJZKdCjO72lZxMfHUHauloqj
 sJeOkZeU6PrsElYTkjVwNp8nejxYTTnexlaKLzx9fH7cJPtfgVPPgj5RpRl1Amuw33F+
 Td9oaM/qzq5xXHG4DtAoRVAbrXSxCyyWC5x+iX9Y2xI31NWFZgpzVI9rF4Ny799KGAsi
 b6p2yhuT9xaMgCjfRqt9qqWpEZ6LxqNtXXJf8Zb7wcikqb7cRmd0zm1AEFsJU1B/aRl3
 8xS5CbmZAUPczMH+D2HbEWhccjoXjTyESGKyGu15uInq0DZLlJ22BB3rUvdHLpEW1U1K
 M5yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/qT8+w13sh5bxkSQag4fh6UhgmcT4J7HP+qFcMaHogQ=;
 b=Jw6dg5VZOFZXgLCP20Ui6A+CiqLKCZBh4E8glhZdiAtUertcQXZRwNNQSlH9J6dYVU
 OTEQQtD19AtTQSBZLPrEULP4XBHSEJ3JxsQurl3Yt49OjVu7xd13VGg4tN0FmIRGLWcJ
 8eKHi1kFXi2jY0o9jJ9sZhT8OGes6PzsaZ/NUHbP3YEkUXLBmwGv45GYto2qCIA8xRvw
 PE8GgHKJsVv1KS0QzbEe7NN98zJv+UszwZmVqGfCWjW246eolRpN9XzA6YK5JBIv77Mp
 0WDp/zWb3ZI+iqepd2lncxgmJwtKpGmxLnXSWyTTjG8cVNdaA6k19ZjaVmY+ln9orqYi
 B/bQ==
X-Gm-Message-State: APjAAAXFdjN533oQc4NkvNReQiqiz8Z6ZPsnaYJk42vce1UaH2ILEd5k
 h8Y7e/U/JEyn+ox1carVdDI=
X-Google-Smtp-Source: APXvYqx/YADWsc2H55VU4Ggqmkj+zGgGpvxIfx+TVi7RM7RN1zxi7sJuS1W5UmH+RYMCs5afvy9Ikw==
X-Received: by 2002:ae9:f209:: with SMTP id m9mr20277705qkg.251.1561067791225; 
 Thu, 20 Jun 2019 14:56:31 -0700 (PDT)
Received: from [10.246.221.134] ([50.234.174.228])
 by smtp.gmail.com with ESMTPSA id d17sm339727qtp.84.2019.06.20.14.56.28
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 14:56:29 -0700 (PDT)
To: "Patel, Vedang" <vedang.patel@intel.com>,
 Eric Dumazet <eric.dumazet@gmail.com>
References: <1560966016-28254-1-git-send-email-vedang.patel@intel.com>
 <1560966016-28254-2-git-send-email-vedang.patel@intel.com>
 <d6655497-5246-c24e-de35-fc6acdad0bf1@gmail.com>
 <A1A5CF42-A7D4-4DC4-9D57-ED0340B04A6F@intel.com>
 <99e834ed-1c78-d35c-84dc-511d377284a1@gmail.com>
 <D1A9515C-D317-40F3-81A2-451F7228A853@intel.com>
From: Eric Dumazet <eric.dumazet@gmail.com>
Message-ID: <799b2d75-a60d-4d93-b8d7-c29442b73dce@gmail.com>
Date: Thu, 20 Jun 2019 17:56:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <D1A9515C-D317-40F3-81A2-451F7228A853@intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 1/7] igb: clear out tstamp
 after sending the packet
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Murali Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiA2LzIwLzE5IDE6MzIgUE0sIFBhdGVsLCBWZWRhbmcgd3JvdGU6Cj4gCgo+IEFoaC4uIHRo
YXTigJlzIGNsZWFybHkgYSBmYWxzZSBzdGF0ZW1lbnQuIFNrYi0+dHN0YW1wIGlzIGNsZWFyZWQg
c28KPiB0aGF0IGl0IGlzIG5vdCBpbnRlcnByZXRlZCBhcyBhIHNvZnR3YXJlIHRpbWVzdGFtcCB3
aGVuIHRyeWluZyB0bwo+IHNlbmQgdGhlIEhhcmR3YXJlIFRYIHRpbWVzdGFtcCB0byB0aGUgdXNl
cnNwYWNlLiBJIHdpbGwgcmVwaHJhc2UgdGhlCj4gY29tbWl0IG1lc3NhZ2UgaW4gdGhlIG5leHQg
dmVyc2lvbi4KPiAKPiBTb21lIG1vcmUgZGV0YWlsczogVGhlIHByb2JsZW0gb2NjdXJzIHdoZW4g
dXNpbmcgdGhlIHR4dGltZS1hc3Npc3QKPiBtb2RlIG9mIHRhcHJpbyB3aXRoIHBhY2tldHMgd2hp
Y2ggYWxzbyByZXF1ZXN0IHRoZSBoYXJkd2FyZSB0cmFuc21pdAo+IHRpbWVzdGFtcCAoZS5nLiBQ
VFAgcGFja2V0cykuIFdoZW5ldmVyIHR4dGltZS1hc3Npc3QgbW9kZSBpcyBzZXQsCj4gdGFwcmlv
IHdpbGwgYXNzaWduIGEgaGFyZHdhcmUgdHJhbnNtaXQgdGltZXN0YW1wIHRvIGFsbCB0aGUgcGFj
a2V0cwo+IChpbiBza2ItPnRzdGFtcCkuIFBUUCBwYWNrZXRzIHdpbGwgYWxzbyByZXF1ZXN0IHRo
ZSBoYXJkd2FyZSB0cmFuc21pdAo+IHRpbWVzdGFtcCBiZSBzZW50IHRvIHRoZSB1c2Vyc3BhY2Ug
YWZ0ZXIgcGFja2V0IGlzIHRyYW5zbWl0dGVkLgo+IAo+IFdoZW5ldmVyIGEgbmV3IHRpbWVzdGFt
cCBpcyBkZXRlY3RlZCBieSB0aGUgZHJpdmVyICh0aGlzIHdvcmsgaXMgZG9uZQo+IGluIGlnYl9w
dHBfdHhfd29yaygpIHdoaWNoIGNhbGxzIGlnYl9wdHBfdHhfaHd0c3RhbXBzKCkgaW4KPiBpZ2Jf
cHRwLmNbMV0pLCBpdCB3aWxsIHF1ZXVlIHRoZSB0aW1lc3RhbXAgaW4gdGhlIEVSUl9RVUVVRSBm
b3IgdGhlCj4gdXNlcnNwYWNlIHRvIHJlYWQuIFdoZW4gdGhlIHVzZXJzcGFjZSBpcyByZWFkeSwg
aXQgd2lsbCBpc3N1ZSBhCj4gcmVjdm1zZygpIGNhbGwgdG8gY29sbGVjdCB0aGlzIHRpbWVzdGFt
cC4gVGhlIHByb2JsZW0gaXMgaW4gdGhpcwo+IHJlY3Ztc2coKSBjYWxsLiBJZiB0aGUgc2tiLT50
c3RhbXAgaXMgbm90IGNsZWFyZWQgb3V0LCBpdCB3aWxsIGJlCj4gaW50ZXJwcmV0ZWQgYXMgYSBz
b2Z0d2FyZSB0aW1lc3RhbXAgYW5kIHRoZSBoYXJkd2FyZSB0eCB0aW1lc3RhbXAKPiB3aWxsIG5v
dCBiZSBzdWNjZXNzZnVsbHkgc2VudCB0byB0aGUgdXNlcnNwYWNlLiBMb29rIGF0Cj4gc2tiX2lz
X3N3dHhfdHN0YW1wKCkgYW5kIHRoZSBjYWxsZWUgZnVuY3Rpb24gX19zb2NrX3JlY3ZfdGltZXN0
YW1wKCkKPiBpbiBuZXQvc29ja2V0LmMgZm9yIG1vcmUgZGV0YWlscy4KCgpUaGF0IGFtb3VudCBv
ZiBkZXRhaWxzIGluIHRoZSBjaGFuZ2Vsb2cgd291bGQgYmUgcmVhbGx5IG5pY2UgOykKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1s
YW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMu
b3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
