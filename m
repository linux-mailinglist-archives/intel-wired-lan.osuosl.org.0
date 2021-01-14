Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD7D2F628B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Jan 2021 14:59:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0BF6E203E9;
	Thu, 14 Jan 2021 13:59:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VbxwzmgdHkfA; Thu, 14 Jan 2021 13:59:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9ABA42042E;
	Thu, 14 Jan 2021 13:59:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 780591BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 13:59:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 73C3786860
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 13:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5En0zGy57CkS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Jan 2021 13:59:35 +0000 (UTC)
X-Greylist: delayed 00:05:49 by SQLgrey-1.7.6
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com
 [209.85.222.181])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A88AC86854
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 13:59:35 +0000 (UTC)
Received: by mail-qk1-f181.google.com with SMTP id p14so7854862qke.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Jan 2021 05:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=kIAFytbmdessnycAX3uiv8K2v11OZa0lD0LZwo7UvlY=;
 b=mz5JxaFYNPT8hU4q1+3PLIWIvHc8E5o2DMsk8qRNecVOn2WiWvDgfD5Pdqd5+jPYE2
 eFJm4Xgv8EorZboNWf/Tzj8kTo82XV2WvBK+0/cuxKN2HlmcjUBAQwG1mc5vzGQdROo5
 k6tkSkibseGgePfKDvO9N2hrw/MDLGgoPrq8AD+vuZYF5YYrTUeXE66C5KM3qQ7mftzt
 kpsytgT5irFE91YnDi/VT8nMbOqlCxHlRIszK9NHPlN5meTnNwNclJbCRcDfo3imiOLJ
 ETUeoTYAi/4Ey/7rpjI50rkwyQLSJ9Et808vSPPZRW0w2aIcTuPozrXFAoWJPFOypoH+
 qjmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kIAFytbmdessnycAX3uiv8K2v11OZa0lD0LZwo7UvlY=;
 b=F6sp9I5RXnzfNSeNQwMH/wdiRRWilwkCQEgI0FQVclsgF0edwgSUZAHxUVtnX/hw9t
 NuySCq8MmwmL87cipPoTLwJzH6JbeUVwad2+6gBSeElg5Ej90Pw2qnnB4TBNmgMTExQk
 TBq3JUbbzJfEJRswGQUhUXvYpdLl4b/L/wmgW4KnjAEGZ1loaPqXaZ8+bJED+8JGf4dF
 6H6KfBHGYACy+fStyEWzCy55m9+smzaHmzLW/chbM31+Px9TkI7uYJD/Yvd7LlC2Z7ec
 gBuDPqvYYMsnntii/6vv2ykXNoKNAtm5r76W35RV1numFPDENLpUiLDIE5LKjic1AxjI
 xkkQ==
X-Gm-Message-State: AOAM530RL4qIe53qjAM0HZkskdWp9n0ZUKbs2wqAK9RyVBPEmpcyHnEU
 GuFzJhMb0UA/f7+31MEFJIpY4BJa3QFmgw==
X-Google-Smtp-Source: ABdhPJyaCQkHjZcepjLt7LuIO2/GsaaKvMMFrN7NOjSs5joQs9U/04m6/sMdKagRl3ox6T1YZEUjEw==
X-Received: by 2002:a37:ae44:: with SMTP id x65mr7281762qke.347.1610632425803; 
 Thu, 14 Jan 2021 05:53:45 -0800 (PST)
Received: from [192.168.2.48]
 (bras-base-kntaon1617w-grc-10-184-147-165-106.dsl.bell.ca. [184.147.165.106])
 by smtp.googlemail.com with ESMTPSA id k19sm2903502qkh.6.2021.01.14.05.53.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jan 2021 05:53:45 -0800 (PST)
To: Shannon Nelson <snelson@pensando.io>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
References: <20210106215539.2103688-1-jesse.brandeburg@intel.com>
 <20210106215539.2103688-2-jesse.brandeburg@intel.com>
 <1e4ee1cf-c2b7-8ba3-7cb1-5c5cb3ff1e84@pensando.io>
 <20210108102630.00004202@intel.com>
 <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Message-ID: <b940a75c-f00b-0dd8-ac33-01278c78210a@mojatatu.com>
Date: Thu, 14 Jan 2021 08:53:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <c11bb25a-f73d-3ae9-b1fd-7eb96bc79cc7@pensando.io>
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
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMS0wMS0wOCAyOjIxIHAubS4sIFNoYW5ub24gTmVsc29uIHdyb3RlOgo+IE9uIDEvOC8y
MSAxMDoyNiBBTSwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPj4gU2hhbm5vbiBOZWxzb24gd3Jv
dGU6Cj4+Cj4+PiBPbiAxLzYvMjEgMTo1NSBQTSwgSmVzc2UgQnJhbmRlYnVyZyB3cm90ZToKPj4+
PiBXaGVuIGRyaXZlcnMgY2FsbCB0aGUgdmFyaW91cyByZWNlaXZlIHVwY2FsbHMgdG8gcmVjZWl2
ZSBhbiBza2IKPj4+PiB0byB0aGUgc3RhY2ssIHNvbWV0aW1lcyB0aGF0IHN0YWNrIGNhbiBkcm9w
IHRoZSBwYWNrZXQuIFRoZSBnb29kCj4+Pj4gbmV3cyBpcyB0aGF0IHRoZSByZXR1cm4gY29kZSBp
cyBnaXZlbiB0byBhbGwgdGhlIGRyaXZlcnMgb2YKPj4+PiBORVRfUlhfRFJPUCBvciBHUk9fRFJP
UC4gVGhlIGJhZCBuZXdzIGlzIHRoYXQgbm8gZHJpdmVycyBleGNlcHQKPj4+PiB0aGUgb25lICJp
Y2UiIGRyaXZlciB0aGF0IEkgY2hhbmdlZCwgY2hlY2sgdGhlIHN0YXQgYW5kIGluY3JlbWVudAo+
Pj4gSWYgdGhlIHN0YWNrIGlzIGRyb3BwaW5nIHRoZSBwYWNrZXQsIGlzbid0IGl0IHVwIHRvIHRo
ZSBzdGFjayB0byB0cmFjawo+Pj4gdGhhdCwgcGVyaGFwcyB3aXRoIHNvbWV0aGluZyB0aGF0IHNo
b3dzIHVwIGluIG5ldHN0YXQgLXM/wqAgV2UgZG9uJ3QKPj4+IHJlYWxseSB3YW50IHRvIG1ha2Ug
dGhlIGRyaXZlciByZXNwb25zaWJsZSBmb3IgYW55IGRyb3BzIHRoYXQgaGFwcGVuCj4+PiBhYm92
ZSBpdHMgaGVhZCwgZG8gd2U/Cj4+IEkgdG90YWxseSBhZ3JlZSEKPj4KPj4gSW4gcGF0Y2ggMi8y
IEkgcmV2ZXJ0IHRoZSBkcml2ZXItc3BlY2lmaWMgY2hhbmdlcyBJIGhhZCBtYWRlIGluIGFuCj4+
IGVhcmxpZXIgcGF0Y2gsIGFuZCB0aGlzIHBhdGNoICp3YXMqIG15IGVmZm9ydCB0byBtYWtlIHRo
ZSBzdGFjayBzaG93IHRoZQo+PiBkcm9wcy4KPj4KPj4gTWF5YmUgSSB3YXNuJ3QgY2xlYXIuIEkn
bSBzZWVpbmcgcGFja2V0cyBkaXNhcHBlYXIgZHVyaW5nIFRDUAo+PiB3b3JrbG9hZHMsIGFuZCB0
aGlzIEdST19EUk9QIGNvZGUgd2FzIHRoZSBzb3VyY2Ugb2YgdGhlIGRyb3BzIChJIHNlZSBpdAo+
PiByZXR1cm5pbmcgaW5mcmVxdWVudGx5IGJ1dCByZWd1bGFybHkpCj4+Cj4+IFRoZSBkcml2ZXIg
cHJvY2Vzc2VzIHRoZSBwYWNrZXQgYnV0IHRoZSBzdGFjayBuZXZlciBzZWVzIGl0LCBhbmQgdGhl
cmUKPj4gd2VyZSBubyBkcm9wIGNvdW50ZXJzIGFueXdoZXJlIHRyYWNraW5nIGl0Lgo+Pgo+IAo+
IE15IHBvaW50IGlzIHRoYXQgdGhlIHBhdGNoIGluY3JlbWVudHMgYSBuZXRkZXYgY291bnRlciwg
d2hpY2ggdG8gbXkgbWluZCAKPiBpbW1lZGlhdGVseSBpbXBsaWNhdGVzIHRoZSBkcml2ZXIgYW5k
IGhhcmR3YXJlLCByYXRoZXIgdGhhbiB0aGUgc3RhY2suIAo+IEFzIGEgZHJpdmVyIG1haW50YWlu
ZXIsIEkgZG9uJ3Qgd2FudCB0byBiZSBjaGFzaW5nIGRyaXZlciBwYWNrZXQgZHJvcCAKPiByZXBv
cnRzIHRoYXQgYXJlIGEgc3RhY2sgcHJvYmxlbS7CoCBJJ2QgcmF0aGVyIHNlZSBhIG5ldyBjb3Vu
dGVyIGluIAo+IG5ldHN0YXQgLXMgdGhhdCByZWZsZWN0cyB0aGUgc3RhY2sgZGVjaXNpb24gYW5k
IGNhbiBiZXR0ZXIgaW1wbHkgd2hhdCAKPiB3ZW50IHdyb25nLsKgIEkgZG9uJ3QgaGF2ZSBhIGdv
b2Qgc3VnZ2VzdGlvbiBmb3IgYSBjb3VudGVyIG5hbWUgYXQgdGhlIAo+IG1vbWVudC4KPiAKPiBJ
IGd1ZXNzIHBhcnQgb2YgdGhlIGlzc3VlIGlzIHRoYXQgdGhpcyBpcyByaWdodCBvbiB0aGUgYm91
bmRhcnkgb2YgCj4gZHJpdmVyLXN0YWNrLsKgIEJ1dCBpZiB3ZSBmb2xsb3cgRXJpYydzIHN1Z2dl
c3Rpb25zLCBtYXliZSB0aGUgcHJvYmxlbSAKPiBtYWdpY2FsbHkgZ29lcyBhd2F5IDotKSAuCj4g
CgpTbzogSG93IGRvZXMgb25lIGtub3cgdGhhdCB0aGUgc3RhY2stdXBjYWxsIGRyb3BwZWQgYSBw
YWNrZXQgYmVjYXVzZQpvZiBHUk8gaXNzdWVzPyBEZWJ1Z2dpbmcgd2l0aCBrcHJvYmUgb3IgdHJh
Y2VzIGRvZXNudCBjb3VudCBhcyBhbgphbnN3ZXIuCgpjaGVlcnMsCmphbWFsCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1h
aWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9z
bC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
