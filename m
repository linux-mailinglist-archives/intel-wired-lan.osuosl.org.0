Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9996693BF
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 11:09:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E721E40329;
	Fri, 13 Jan 2023 10:09:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E721E40329
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673604568;
	bh=Ci4GVhb5TIuLeLF4rqROxH+9IbjGwJQQpyhQQlpxuK8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=PYCJgSB6jMYccdeuU4nzlSvjzrXZrJUClOMbLnN5jpZgfa8tUgyl/I/P05Oo8AMaP
	 VY1+aZANGcZ45Eg/ZwiS1n28e4h/z1mLJe6nyd+9C6JogufkK9CWAeP8SyZZ/TIN3H
	 DLa/JMBT36GKXDV3tRqD6ebA5prbxF7z9YPYhD8YyDWV8aAwBiKw8Xp7kpfvxb434B
	 ieWc1usAqifDf16Z4zKFFkAK8/WVdjXIY7XivfmHahvjosuB0gAdiL0a1GyqljgZao
	 eJ9Q+BzafVqKejcnHDDeMQ5h9F4E81AA8x61CEoZQmFxMvnMu31pxRUKAwcHpQ/a1A
	 esZV6tPxyyZUg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VtqdMBkdas7f; Fri, 13 Jan 2023 10:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA00A4025F;
	Fri, 13 Jan 2023 10:09:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA00A4025F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44C6D1BF32C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:09:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1F31F40122
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:09:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F31F40122
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zAOE-Zsgg8x3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 10:09:20 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6D0CB4025F
Received: from mx3.molgen.mpg.de (mx3.molgen.mpg.de [141.14.17.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6D0CB4025F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 10:09:20 +0000 (UTC)
Received: from [192.168.0.2] (ip5f5ae98f.dynamic.kabel-deutschland.de
 [95.90.233.143])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested) (Authenticated sender: pmenzel)
 by mx.molgen.mpg.de (Postfix) with ESMTPSA id ADFC260027FC1;
 Fri, 13 Jan 2023 11:09:16 +0100 (CET)
Message-ID: <9f804e8f-6218-47b3-99a8-583cc65ccde7@molgen.mpg.de>
Date: Fri, 13 Jan 2023 11:09:16 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Zhu Yanjun <yanjun.zhu@intel.com>
References: <20230113231912.22423-1-yanjun.zhu@intel.com>
From: Paul Menzel <pmenzel@molgen.mpg.de>
In-Reply-To: <20230113231912.22423-1-yanjun.zhu@intel.com>
Subject: Re: [Intel-wired-lan] [PATCH 1/1] ice: Add the CEE DCBX support in
 the comments
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
Cc: intel-wired-lan@lists.osuosl.org, Zhu Yanjun <yanjun.zhu@linux.dev>,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBaaHUsCgoKVGhhbmsgeW91IGZvciB5b3VyIHBhdGNoLiAoVW5mb3J0dW5hdGVseSB5b3Vy
IHN5c3RlbSB0aW1lIGlzIGluY29ycmVjdCwgCnNvIHRoZSBtZXNzYWdlIGRhdGUgaXMgZnJvbSB0
aGUgZnV0dXJlLikKCkFtIDE0LjAxLjIzIHVtIDAwOjE5IHNjaHJpZWIgWmh1IFlhbmp1bjoKPiBG
cm9tOiBaaHUgWWFuanVuIDx5YW5qdW4uemh1QGxpbnV4LmRldj4KCk1heWJlIHVzZSB0aGUgZm9s
bG93aW5nIHN1bW1hcnkvdGl0bGUvc3ViamVjdDoKCmljZTogTWVudGlvbiBDRUUgRENCWCBpbiBj
b2RlIGNvbW1lbnQKCj4gRnJvbSB0aGUgZnVuY3Rpb24gaWNlX3BhcnNlX29yZ190bHYsIENFRSBE
Q0JYIFRMViBpcyBhbHNvIHN1cHBvcnRlZC4KPiBUaGUgY29tbWVudHMgYXJlIGNoYW5nZWQuCgri
gKYsIHNvIHVwZGF0ZSB0aGUgY29tbWVudC4KCj4gU2lnbmVkLW9mZi1ieTogWmh1IFlhbmp1biA8
eWFuanVuLnpodUBsaW51eC5kZXY+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pY2UvaWNlX2RjYi5jIHwgNCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25z
KCspLCAyIGRlbGV0aW9ucygtKQoKVGhlIHJlc3QgbG9va3MgZ29vZC4KClvigKZdCgoKS2luZCBy
ZWdhcmRzLAoKUGF1bApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wu
b3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVk
LWxhbgo=
