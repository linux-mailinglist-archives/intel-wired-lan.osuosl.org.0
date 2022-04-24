Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F46550E239
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 15:46:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1EE740571;
	Mon, 25 Apr 2022 13:46:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dkIt9RuHEmLq; Mon, 25 Apr 2022 13:46:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF3484045C;
	Mon, 25 Apr 2022 13:46:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C5D941BF316
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B1F7C401B2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0TwsL3ZizfjR for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 19:03:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8808E4019E
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 19:03:59 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id p4so503468edx.0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 12:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=qJq22moH50D3yv21TnAqKX91eugYhGfPDI8P8HcZhgY=;
 b=u4f9uaPTM2qqSek3Ph5UN5CThDaMVDlVcGSOQ5d2lcd1ujtvYPbN+NMRXl4Q6K93KX
 tsRtItnFuZXrcIeMzf32whW8fYf/mK/BTclzbG7AEf2zI8xoKjfppuT3P+vhD70Y3Bka
 uo/+265lmvNoy4vRb7bB6bOXhCH5YaCaXT2npe4SsKJKh1wkWhI4M8RwLgbBH3ax2pFX
 27TYnAhsYH712KbrUwq7TdbsQ11T7lHRIXWNuLwFiPmV6p9TOHQFheUmO35D8sXkt1zF
 KFVs1/LlHNiYtQcictJS6vxebKuQM7fd9vvEBSgXAcW6JRlTLDdZsvHg008KyIGKQYBz
 2w2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qJq22moH50D3yv21TnAqKX91eugYhGfPDI8P8HcZhgY=;
 b=NKzg0OWZCLSj2FHWPikA2txmJNXN2DXeoK/8r/AC+Ey/ug4U1HvwcaNFFSWooCANEP
 x6kZxddB2nWz9imckA4+q0qX4P18MjppdhjCnhzUxQECjMb5quwhuCeN4eNXVUCmB66E
 snCOkrLOVd8WkPyt3BnlWzr5D6y+RZ9eM3KSRtJg7At7cPFrlOKGwnHxNqKhDU8Slx3+
 EyN1Ii3D/tA1hSP/OJ0Ky/vxBCFt9uo4WUYjWYkOHq5+cdsZ9d8/BFdI75F4Lnkd0QG6
 Yj7xVBrTy5zsT50QXgEWCheX+HtN/iCHlAVWPn4J8arn39wYnPClwVzPahKU690wF/Cu
 Rgsg==
X-Gm-Message-State: AOAM532ksphDnl9v8paKfFSeBVKzJ1MXrNpgMQwcLmUZce3mfGEqT8Ik
 etgng9jsCoJZkqsrCXDtHGXjxQ==
X-Google-Smtp-Source: ABdhPJyUVaMPjUt+mdsjqcf930Ct9uv9xglikY4FGgz8i3dp7UkGqa4JXcCFi8ZR3vHIZp8MjPpMFw==
X-Received: by 2002:aa7:cb96:0:b0:413:8d05:ebc with SMTP id
 r22-20020aa7cb96000000b004138d050ebcmr15415684edt.81.1650827037726; 
 Sun, 24 Apr 2022 12:03:57 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 q7-20020a170906540700b006d5eca5c9cfsm2847723ejo.191.2022.04.24.12.03.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:03:57 -0700 (PDT)
Message-ID: <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
Date: Sun, 24 Apr 2022 22:03:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
X-Mailman-Approved-At: Mon, 25 Apr 2022 13:46:25 +0000
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan:
 vxlan_core.c: Add extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjQvMDQvMjAyMiAyMTo1MiwgQWxhYSBNb2hhbWVkIHdyb3RlOgo+IAo+IE9uINmi2aTigI8v
2aTigI8v2aLZoNmi2aIg2aHZqDrZodmlLCBKdWxpYSBMYXdhbGwgd3JvdGU6Cj4+Cj4+IE9uIFN1
biwgMjQgQXByIDIwMjIsIEFsYWEgTW9oYW1lZCB3cm90ZToKPj4KPj4+IEFkZCBleHRhY2sgdG8g
dnhsYW5fZmRiX2RlbGV0ZSBhbmQgdnhsYW5fZmRiX3BhcnNlCj4+IEl0IGNvdWxkIGJlIGhlbHBm
dWwgdG8gc2F5IG1vcmUgYWJvdXQgd2hhdCBhZGRpbmcgZXh0YWNrIHN1cHBvcnQgaW52b2x2ZXMu
Cj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbGFhIE1vaGFtZWQgPGVuZy5hbGFhbW9oYW1lZHNvbGlt
YW4uYW1AZ21haWwuY29tPgo+Pj4gLS0tCj4+PiBjaGFuZ2VzIGluIFYyOgo+Pj4gwqDCoMKgwqAt
IGZpeCBzcGVsbGluZyB2eGxhbl9mZGJfZGVsZXRlCj4+PiDCoMKgwqDCoC0gYWRkIG1pc3Npbmcg
YnJhY2VzCj4+PiDCoMKgwqDCoC0gZWRpdCBlcnJvciBtZXNzYWdlCj4+PiAtLS0KPj4+IGNoYW5n
ZXMgaW4gVjM6Cj4+PiDCoMKgwqDCoGZpeCBlcnJvcnMgcmVwb3J0ZWQgYnkgY2hlY2twYXRjaC5w
bAo+PiBCdXQgeW91ciBjaGFuZ2VzIHdvdWxkIHNlZW0gdG8gYWxzbyBiZSBpbnRyb2R1Y2luZyBt
b3JlIGNoZWNrcGF0Y2ggZXJyb3JzLAo+PiBiZWNhdXNlIHRoZSBMaW51eCBrZXJuZWwgY29kaW5n
IHN0eWxlIHB1dHMgYSBzcGFjZSBiZWZvcmUgYW4geyBhdCB0aGUKPj4gc3RhcnQgb2YgYW4gaWYg
YnJhbmNoLgo+IEkgcmFuIGNoZWNrcGF0Y2ggc2NyaXB0IGJlZm9yZSBzdWJtaXR0aW5nIHRoaXMg
cGF0Y2ggYW5kIGdvdCBubyBlcnJvcgoKVGhpcyBpcyB3aGF0IEkgZ290OgpXQVJOSU5HOiBzdXNw
ZWN0IGNvZGUgaW5kZW50IGZvciBjb25kaXRpb25hbCBzdGF0ZW1lbnRzICg4LCAyNCkKIzM2Njog
RklMRTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjExMzc6CiAJaWYgKHRiW05EQV9O
SF9JRF0gJiYgKHRiW05EQV9EU1RdIHx8IHRiW05EQV9WTkldIHx8IHRiW05EQV9JRklOREVYXSB8
fApbLi4uXQorCQkJTkxfU0VUX0VSUl9NU0coZXh0YWNrLCAiRFNULCBWTkksIGlmaW5kZXggYW5k
IHBvcnQgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSB3aXRoIE5IX0lEIik7CgpXQVJOSU5HOiBsaW5l
IGxlbmd0aCBvZiAxMTEgZXhjZWVkcyAxMDAgY29sdW1ucwojMzcwOiBGSUxFOiBkcml2ZXJzL25l
dC92eGxhbi92eGxhbl9jb3JlLmM6MTEzOToKKwkJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgIkRT
VCwgVk5JLCBpZmluZGV4IGFuZCBwb3J0IGFyZSBtdXR1YWxseSBleGNsdXNpdmUgd2l0aCBOSF9J
RCIpOwoKRVJST1I6IHNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGUgb3BlbiBicmFjZSAneycKIzM3
NzogRklMRTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjExNDU6CisJCWlmIChlcnIp
ewoKRVJST1I6IHNwYWNlIHJlcXVpcmVkIGJlZm9yZSB0aGUgb3BlbiBicmFjZSAneycKIzM4OTog
RklMRTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjExNjQ6CisJCWlmIChubGFfbGVu
KHRiW05EQV9QT1JUXSkgIT0gc2l6ZW9mKF9fYmUxNikpewoKRVJST1I6IHNwYWNlIHJlcXVpcmVk
IGJlZm9yZSB0aGUgb3BlbiBicmFjZSAneycKIzQwMDogRklMRTogZHJpdmVycy9uZXQvdnhsYW4v
dnhsYW5fY29yZS5jOjExNzQ6CisJCWlmIChubGFfbGVuKHRiW05EQV9WTkldKSAhPSBzaXplb2Yo
dTMyKSl7CgpFUlJPUjogc3BhY2UgcmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJyYWNlICd7Jwoj
NDExOiBGSUxFOiBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmM6MTE4NDoKKwkJaWYgKG5s
YV9sZW4odGJbTkRBX1NSQ19WTkldKSAhPSBzaXplb2YodTMyKSl7CgpFUlJPUjogc3BhY2UgcmVx
dWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJyYWNlICd7JwojNDIzOiBGSUxFOiBkcml2ZXJzL25ldC92
eGxhbi92eGxhbl9jb3JlLmM6MTE5NjoKKwkJaWYgKG5sYV9sZW4odGJbTkRBX0lGSU5ERVhdKSAh
PSBzaXplb2YodTMyKSl7CgpFUlJPUjogc3BhY2UgcmVxdWlyZWQgYmVmb3JlIHRoZSBvcGVuIGJy
YWNlICd7JwojNDMwOiBGSUxFOiBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmM6MTIwMjoK
KwkJaWYgKCF0ZGV2KXsKCkVSUk9SOiBzcGFjZSByZXF1aXJlZCBhZnRlciB0aGF0ICcsJyAoY3R4
OlZ4VikKIzQzMTogRklMRTogZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jOjEyMDM6CisJ
CQlOTF9TRVRfRVJSX01TRyhleHRhY2ssIkRldmljZSBub3QgZm91bmQiKTsKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
