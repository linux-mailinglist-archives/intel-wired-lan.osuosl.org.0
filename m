Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5667E19D158
	for <lists+intel-wired-lan@lfdr.de>; Fri,  3 Apr 2020 09:37:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 02592880F8;
	Fri,  3 Apr 2020 07:37:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4UUlQ44gkANE; Fri,  3 Apr 2020 07:37:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8649881E8;
	Fri,  3 Apr 2020 07:37:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1729D1BF5A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 07:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0D272204E7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 07:37:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id d49L8DVj8moW for <intel-wired-lan@lists.osuosl.org>;
 Fri,  3 Apr 2020 07:37:30 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by silver.osuosl.org (Postfix) with ESMTPS id 24BD820481
 for <intel-wired-lan@lists.osuosl.org>; Fri,  3 Apr 2020 07:37:29 +0000 (UTC)
Received: from [192.168.1.6] (x590ea470.dyn.telefonica.de [89.14.164.112])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id C112C206442DE;
 Fri,  3 Apr 2020 09:37:26 +0200 (CEST)
To: Aaron Ma <aaron.ma@canonical.com>, Hans de Goede <hdegoede@redhat.com>,
 Jeff Kirsher <jeffrey.t.kirsher@intel.com>, davem@davemloft.net,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, sasha.neftin@intel.com
References: <20200323191639.48826-1-aaron.ma@canonical.com>
 <4f9f1ad0-e66a-d3c8-b152-209e9595e5d7@redhat.com>
 <1c0e602f-1fe7-62b1-2283-b98783782e87@canonical.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <2d7c1890-9cd8-8134-af12-5c55cd7e1a8e@molgen.mpg.de>
Date: Fri, 3 Apr 2020 09:37:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1c0e602f-1fe7-62b1-2283-b98783782e87@canonical.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH] e1000e: bump up timeout to wait when
 ME un-configure ULP mode
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBMaW51eCBmb2xrcywKCgpBbSAwMy4wNC4yMCB1bSAwNToxNSBzY2hyaWViIEFhcm9uIE1h
OgoKPiBJIGhhdmUgcmVjZWl2ZWQgdGhlIGVtYWlsIHRoYXQgeW91IGFwcGx5IHRoaXMgcGF0Y2gg
dG8gbmV4dC1xdWV1ZSBicmFuY2gKPiBkZXYtcXVldWUuCj4gCj4gQnV0IGFmdGVyIHRoaXMgYnJh
bmNoIGlzIHJlYmFzZWQgdG8gdjUuNiwgSSBjYW4ndCBmaW5kIGl0Lgo+IAo+IFdpbGwgeW91IGFw
cGx5IGFnYWluPwoKSSByZWFsbHkgdXJnZSB5b3UgdG8gd3JpdGUgbW9yZSBlbGFib3JhdGUgY29t
bWl0IG1lc3NhZ2VzLgoKVGhlIGV4YWN0IGVycm9yIGlzIG5vdCBsaXN0ZWQuIFRoZSBrbm93biBy
ZWdyZXNzZWQgZGV2aWNlcyBhcmUgbm90IApsaXN0ZWQsIHNvIHBvc3NpYmxlIHRlc3RlcnMgY2Fu
bm90IGVhc2lseSB0ZXN0IG9yIGFmZmVjdGVkIHBlb3BsZSBjYW5ub3QgCmZpbmQgaXQsIHdoZW4g
c2VhcmNoaW5nIHRoZSBMaW51eCBnaXQgaGlzdG9yeS4KCkhvdyBkaWQgeW91IGZpbmQgb3V0LCB0
aGF0IE1FIHRha2VzIG1vcmUgdGhhbiB0d28gc2Vjb25kcz8KCkFsc28sIGl04oCZcyBub3QgY2xl
YXIsIHdoYXQgZWZmZWN0IGluY3JlYXNpbmcgdGhlIHRpbWVvdXQgaGFzLiBEb2VzIHRoZSAKd2hv
bGUgcmVzdW1lIHByb2Nlc3MgdGFrZSBsb25nZXIgb3IganVzdCBnZXR0aW5nIHRoZSBFdGhlcm5l
dCBkZXZpY2UgCmJhY2sgdXA/CgpMYXN0bHksIGluIGNhc2Ugb2YgdGhlIHRpbWVvdXQsIGFuIGVy
cm9yIG1lc3NhZ2Ugc2hvdWxkIGJlIHByaW50ZWQsIHNvIApwZW9wbGUgd2l0aCBldmVuIG1vcmUg
YnJva2VuIE1FIGRldmljZXMsIGdldCBhIGNsdWUuCgpXaXRob3V0IHRoaXMgaW5mb3JtYXRpb24s
IGhvdyBjYW4gYW55Ym9keSBrbm93LCBpZiB0aGlzIGlzIHRoZSByaWdodCBmaXggCmFuZCBkaXN0
cmlidXRpb25zLCBpZiBpdCBzaG91bGQgYmUgYmFja3BvcnRlZD8KCgpLaW5kIHJlZ2FyZHMsCgpQ
YXVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6
Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
