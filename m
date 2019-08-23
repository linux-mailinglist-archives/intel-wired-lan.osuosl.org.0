Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A23949B4E1
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 18:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D5E6688683;
	Fri, 23 Aug 2019 16:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2ihQA16maru; Fri, 23 Aug 2019 16:48:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51B358867D;
	Fri, 23 Aug 2019 16:48:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 674131BF263
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 16:10:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 62E0784D56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 16:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qL_cT5k9GpxV for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 16:10:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 4C62084E74
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 16:10:10 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id f19so5828471plr.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 09:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=brEz57KSv9M0lzRju932ZTp5uWTNGJMBeYQNt57q3B8=;
 b=LSk4JaiG3kNahJym5ph4p7/DJszhGCxXYsNz9CSryZBvZSEWdvgKnM9o/iYlhJpnhY
 CIxBe/BWxYQDTnOwVGPWaxb7855aVGTWS2LKsP+jgxko4VMfvsyEeaWp11bI5zR40AxO
 SmqZ1nUYR4g85pD5hbkGczt5q5VVEQvWbckzs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=brEz57KSv9M0lzRju932ZTp5uWTNGJMBeYQNt57q3B8=;
 b=WFe+gQZD/NIOUkHrXjTKsADAtAYBJikvWdnRDBA/rZEz2Bai0zDmzcXQ/tKIt4SdJT
 nC8mwn2WZmJDVsyI/pljs4JQqtNqDo3QZtTnutiU6JkRzYeglNVq5b43EuIoz6leWyP7
 Rl06v3nWtz5lz8v8xBiGKKuSTgMrWQ9tW5ujpVJz1pry7i5q/N3HT1Hil1b4p5k5wlZa
 VgwRJZSihEi68gC4U2i8aMfrC9uq/hob7M7lZAV3gcQbtWrrNkLzROW1OxOtIqzrlLa1
 EVwo0W38ndx5n6CqCeXvFyaewEhpcRpuYS0U4HyZMvBcrNoFVY+VJUvuH586MZ8nwHno
 /TSA==
X-Gm-Message-State: APjAAAUtoFQV6u1QOWVFU2QOWcSJXzsnwAetvksjW4ySskDoPbgfpjjL
 N064Kg/30Alz9aY632BpjRTt+A==
X-Google-Smtp-Source: APXvYqxiP2ekIBBxAiFgPENCMVwHMGc68Z6hyNSBFfdXPSdkPG9bT4Of774IUlvHarZSaUjmecbKzA==
X-Received: by 2002:a17:902:f24:: with SMTP id
 33mr3626425ply.309.1566576609501; 
 Fri, 23 Aug 2019 09:10:09 -0700 (PDT)
Received: from [10.136.13.65] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id a142sm3342737pfd.147.2019.08.23.09.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:10:08 -0700 (PDT)
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Markus Elfring <Markus.Elfring@web.de>, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, intel-wired-lan@lists.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, UNGLinuxDriver@microchip.com,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Allison Randal <allison@lohutok.net>,
 Bryan Whitehead <bryan.whitehead@microchip.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, Doug Berger <opendmb@gmail.com>,
 Douglas Miller <dougmill@linux.ibm.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>,
 Jilayne Lovejoy <opensource@jilayne.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>, Jose Abreu
 <joabreu@synopsys.com>, Kate Stewart <kstewart@linuxfoundation.org>
References: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
 <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
From: Scott Branden <scott.branden@broadcom.com>
Message-ID: <c90f0649-0dc0-df9a-21e6-ae6566ca5935@broadcom.com>
Date: Fri, 23 Aug 2019 09:10:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
Content-Language: en-US
X-Mailman-Approved-At: Fri, 23 Aug 2019 16:48:39 +0000
Subject: Re: [Intel-wired-lan] 
 =?utf-8?q?=5BPATCH=5D_ethernet=3A_Delete_unnec?=
 =?utf-8?q?essary_checks_before_the_macro_call_=E2=80=9Cdev=5Fkfree=5Fskb?=
 =?utf-8?b?4oCd?=
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDIwMTktMDgtMjMgNzowOCBhLm0uLCBDaHJpc3RvcGhlIEpBSUxMRVQgd3JvdGU6Cj4gSGks
Cj4KPiBpbiB0aGlzIHBhdGNoLCB0aGVyZSBpcyBvbmUgcGllY2UgdGhhdCBsb29rZWQgYmV0dGVy
IGJlZm9yZS4gKHNlZSBiZWxvdykKPgo+IFJlbW92aW5nIHRoZSAnaWYgKHNrYiknIGlzIGZpbmUs
IGJ1dCBjb25jYXRlbmluZyBldmVyeXRoaW5nIGluIG9uZSAKPiBzdGF0ZW1lbnQganVzdCB0byBz
YXZlIDIgdmFyaWFibGVzIGFuZCBhIGZldyBMT0MgaXMgb2Ygbm8gdXNlLCBJTUhPLCAKPiBhbmQg
dGhlIGNvZGUgaXMgbGVzcyByZWFkYWJsZS4KQWdyZWVkLgo+Cj4ganVzdCBteSAyYy4KPgo+Cj4g
Q0oKPgo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0
L2JjbWdlbmV0LmMgCj4gYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21n
ZW5ldC5jCj4gaW5kZXggZDNhMGI2MTRkYmZhLi44YjE5ZGRjZGFmYWEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vZ2VuZXQvYmNtZ2VuZXQuYwo+ICsrKyBiL2Ry
aXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0L2JjbWdlbmV0LmMKPiBAQCAtMjUxNSwx
OSArMjUxNSwxNCBAQCBzdGF0aWMgaW50IGJjbWdlbmV0X2RtYV90ZWFyZG93bihzdHJ1Y3QgCj4g
YmNtZ2VuZXRfcHJpdiAqcHJpdikKPiDCoHN0YXRpYyB2b2lkIGJjbWdlbmV0X2ZpbmlfZG1hKHN0
cnVjdCBiY21nZW5ldF9wcml2ICpwcml2KQo+IMKgewo+IMKgwqDCoMKgIHN0cnVjdCBuZXRkZXZf
cXVldWUgKnR4cTsKPiAtwqDCoMKgIHN0cnVjdCBza19idWZmICpza2I7Cj4gLcKgwqDCoCBzdHJ1
Y3QgZW5ldF9jYiAqY2I7Cj4gwqDCoMKgwqAgaW50IGk7Cj4KPiDCoMKgwqDCoCBiY21nZW5ldF9m
aW5pX3J4X25hcGkocHJpdik7Cj4gwqDCoMKgwqAgYmNtZ2VuZXRfZmluaV90eF9uYXBpKHByaXYp
Owo+Cj4gLcKgwqDCoCBmb3IgKGkgPSAwOyBpIDwgcHJpdi0+bnVtX3R4X2JkczsgaSsrKSB7Cj4g
LcKgwqDCoMKgwqDCoMKgIGNiID0gcHJpdi0+dHhfY2JzICsgaTsKPiAtwqDCoMKgwqDCoMKgwqAg
c2tiID0gYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+cGRldi0+ZGV2LCBjYik7Cj4gLcKgwqDC
oMKgwqDCoMKgIGlmIChza2IpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2tmcmVlX3Nr
Yihza2IpOwo+IC3CoMKgwqAgfQo+ICvCoMKgwqAgZm9yIChpID0gMDsgaSA8IHByaXYtPm51bV90
eF9iZHM7IGkrKykKPiArIGRldl9rZnJlZV9za2IoYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+
cGRldi0+ZGV2LAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBwcml2LT50eF9jYnMgKyBpKSk7Cj4KPiDCoMKgwqDCoCBmb3IgKGkgPSAwOyBpIDwg
cHJpdi0+aHdfcGFyYW1zLT50eF9xdWV1ZXM7IGkrKykgewo+IMKgwqDCoMKgwqDCoMKgwqAgdHhx
ID0gbmV0ZGV2X2dldF90eF9xdWV1ZShwcml2LT5kZXYsIHByaXYtPnR4X3JpbmdzW2ldLnF1ZXVl
KTsKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
