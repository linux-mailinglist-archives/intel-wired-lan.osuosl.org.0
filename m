Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0619B4E0
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Aug 2019 18:48:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDD3F86DF2;
	Fri, 23 Aug 2019 16:48:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vfoPgEROwR0J; Fri, 23 Aug 2019 16:48:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DBBF686DEC;
	Fri, 23 Aug 2019 16:48:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABA471BF3C0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 14:08:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A1B1E885C4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 14:08:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V0YGmTJvmE3o for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Aug 2019 14:08:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtp.smtpout.orange.fr (smtp03.smtpout.orange.fr
 [80.12.242.125])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EDB59885C1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Aug 2019 14:08:38 +0000 (UTC)
Received: from [192.168.1.41] ([90.126.160.115]) by mwinf5d06 with ME
 id se8M200092Vh0YS03e8M18; Fri, 23 Aug 2019 16:08:36 +0200
X-ME-Helo: [192.168.1.41]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Fri, 23 Aug 2019 16:08:36 +0200
X-ME-IP: 90.126.160.115
To: Markus Elfring <Markus.Elfring@web.de>, netdev@vger.kernel.org,
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
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Message-ID: <4ab7f2a5-f472-f462-9d4c-7c8d5237c44e@wanadoo.fr>
Date: Fri, 23 Aug 2019 16:08:20 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <af1ae1cf-4a01-5e3a-edc2-058668487137@web.de>
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

SGksCgppbiB0aGlzIHBhdGNoLCB0aGVyZSBpcyBvbmUgcGllY2UgdGhhdCBsb29rZWQgYmV0dGVy
IGJlZm9yZS4gKHNlZSBiZWxvdykKClJlbW92aW5nIHRoZSAnaWYgKHNrYiknIGlzIGZpbmUsIGJ1
dCBjb25jYXRlbmluZyBldmVyeXRoaW5nIGluIG9uZSAKc3RhdGVtZW50IGp1c3QgdG8gc2F2ZSAy
IHZhcmlhYmxlcyBhbmQgYSBmZXcgTE9DIGlzIG9mIG5vIHVzZSwgSU1ITywgYW5kIAp0aGUgY29k
ZSBpcyBsZXNzIHJlYWRhYmxlLgoKanVzdCBteSAyYy4KCgpDSgoKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9icm9hZGNvbS9nZW5ldC9iY21nZW5ldC5jIApiL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2Jyb2FkY29tL2dlbmV0L2JjbWdlbmV0LmMKaW5kZXggZDNhMGI2MTRkYmZhLi44
YjE5ZGRjZGFmYWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2Jyb2FkY29tL2dl
bmV0L2JjbWdlbmV0LmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vZ2VuZXQv
YmNtZ2VuZXQuYwpAQCAtMjUxNSwxOSArMjUxNSwxNCBAQCBzdGF0aWMgaW50IGJjbWdlbmV0X2Rt
YV90ZWFyZG93bihzdHJ1Y3QgCmJjbWdlbmV0X3ByaXYgKnByaXYpCiDCoHN0YXRpYyB2b2lkIGJj
bWdlbmV0X2ZpbmlfZG1hKHN0cnVjdCBiY21nZW5ldF9wcml2ICpwcml2KQogwqB7CiDCoMKgwqDC
oCBzdHJ1Y3QgbmV0ZGV2X3F1ZXVlICp0eHE7Ci3CoMKgwqAgc3RydWN0IHNrX2J1ZmYgKnNrYjsK
LcKgwqDCoCBzdHJ1Y3QgZW5ldF9jYiAqY2I7CiDCoMKgwqDCoCBpbnQgaTsKCiDCoMKgwqDCoCBi
Y21nZW5ldF9maW5pX3J4X25hcGkocHJpdik7CiDCoMKgwqDCoCBiY21nZW5ldF9maW5pX3R4X25h
cGkocHJpdik7CgotwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBwcml2LT5udW1fdHhfYmRzOyBpKysp
IHsKLcKgwqDCoMKgwqDCoMKgIGNiID0gcHJpdi0+dHhfY2JzICsgaTsKLcKgwqDCoMKgwqDCoMKg
IHNrYiA9IGJjbWdlbmV0X2ZyZWVfdHhfY2IoJnByaXYtPnBkZXYtPmRldiwgY2IpOwotwqDCoMKg
wqDCoMKgwqAgaWYgKHNrYikKLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGV2X2tmcmVlX3NrYihz
a2IpOwotwqDCoMKgIH0KK8KgwqDCoCBmb3IgKGkgPSAwOyBpIDwgcHJpdi0+bnVtX3R4X2Jkczsg
aSsrKQorIGRldl9rZnJlZV9za2IoYmNtZ2VuZXRfZnJlZV90eF9jYigmcHJpdi0+cGRldi0+ZGV2
LAorwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJp
di0+dHhfY2JzICsgaSkpOwoKIMKgwqDCoMKgIGZvciAoaSA9IDA7IGkgPCBwcml2LT5od19wYXJh
bXMtPnR4X3F1ZXVlczsgaSsrKSB7CiDCoMKgwqDCoMKgwqDCoMKgIHR4cSA9IG5ldGRldl9nZXRf
dHhfcXVldWUocHJpdi0+ZGV2LCBwcml2LT50eF9yaW5nc1tpXS5xdWV1ZSk7Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
