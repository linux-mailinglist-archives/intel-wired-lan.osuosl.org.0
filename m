Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 338A4377A38
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 May 2021 04:46:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F16FF405E6;
	Mon, 10 May 2021 02:46:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bHZfuHOwHYN; Mon, 10 May 2021 02:46:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 779CC405E4;
	Mon, 10 May 2021 02:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0EF0E1BF402
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 10:26:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F159D4020F
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 10:26:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=natalenko.name
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZF7sUKlr9LzJ for <intel-wired-lan@lists.osuosl.org>;
 Sat,  8 May 2021 10:26:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from vulcan.natalenko.name (vulcan.natalenko.name [104.207.131.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 53CD340003
 for <intel-wired-lan@lists.osuosl.org>; Sat,  8 May 2021 10:26:40 +0000 (UTC)
Received: from localhost (unknown [151.237.229.131])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by vulcan.natalenko.name (Postfix) with ESMTPSA id 035B0A6D98D;
 Sat,  8 May 2021 12:26:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=natalenko.name;
 s=dkim-20170712; t=1620469591;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zLjmoZ8ttQhofZn3V8LsDPESwFpALm5tULY6M5XKZ3A=;
 b=qcwjU+kf1DVXOPxq+EBvgywzag9EGWH0ifsVqWZMvsGdYrvWNd/JpfUL/BWok7UoxgPIFI
 kcj5kaXoFqpdSghrNpyMTwfE9S0PI1W4fYPtZ7K069qNU/pxMR4guQ/apOH8E7PRXI3e2e
 YPkiqGZIiXZM593eZ8FyBu+JpPekRNA=
Date: Sat, 8 May 2021 12:26:30 +0200
From: Oleksandr Natalenko <oleksandr@natalenko.name>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <20210508102630.rytwqgkn7ariwru6@spock.localdomain>
References: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210507023001.2621951-1-jesse.brandeburg@intel.com>
X-Mailman-Approved-At: Mon, 10 May 2021 02:46:11 +0000
Subject: Re: [Intel-wired-lan] [PATCH net] igb: fix netpoll exit with traffic
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
Cc: Alexander Duyck <alexanderduyck@fb.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGVsbG8uCgpPbiBUaHUsIE1heSAwNiwgMjAyMSBhdCAwNzozMDowMVBNIC0wNzAwLCBKZXNzZSBC
cmFuZGVidXJnIHdyb3RlOgo+IE9sZWtzYW5kciBicm91Z2h0IGEgYnVnIHJlcG9ydCB3aGVyZSBu
ZXRwb2xsIGNhdXNlcyB0cmFjZSBtZXNzYWdlcyBpbgo+IHRoZSBsb2cgb24gaWdiLgo+IAo+IFsy
MjAzOC43MTA4MDBdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUgXS0tLS0tLS0tLS0tLQo+IFsyMjAz
OC43MTA4MDFdIGlnYl9wb2xsKzB4MC8weDE0NDAgW2lnYl0gZXhjZWVkZWQgYnVkZ2V0IGluIHBv
bGwKPiBbMjIwMzguNzEwODAyXSBXQVJOSU5HOiBDUFU6IDEyIFBJRDogNDAzNjIgYXQgbmV0L2Nv
cmUvbmV0cG9sbC5jOjE1NSBuZXRwb2xsX3BvbGxfZGV2KzB4MThhLzB4MWEwCj4gCj4gQWZ0ZXIg
c29tZSBkaXNjdXNzaW9uIGFuZCBkZWJ1ZyBmcm9tIHRoZSBsaXN0LCBpdCB3YXMgZGVlbWVkIHRo
YXQgdGhlCj4gcmlnaHQgdGhpbmcgdG8gZG8gaXMgaW5pdGlhbGl6ZSB0aGUgY2xlYW5fY29tcGxl
dGUgdmFyaWFibGUgdG8gZmFsc2UKPiB3aGVuIHRoZSAibmV0cG9sbCBtb2RlIiBvZiBwYXNzaW5n
IGEgemVybyBidWRnZXQgaXMgdXNlZC4KPiAKPiBUaGlzIGxvZ2ljIHNob3VsZCBiZSBzYW5lIGFu
ZCBub3Qgcmlza3kgYmVjYXVzZSB0aGUgb25seSB0aW1lIGJ1ZGdldAo+IHNob3VsZCBiZSB6ZXJv
IG9uIGVudHJ5IGlzIG5ldHBvbGwuICBDaGFuZ2UgaW5jbHVkZXMgYSBzbWFsbCByZWZhY3Rvcgo+
IG9mIGxvY2FsIHZhcmlhYmxlIGFzc2lnbm1lbnRzIHRvIGNsZWFuIHVwIHRoZSBsb29rLgo+IAo+
IEZpeGVzOiAxNmViODgxNWMyMzUgKCJpZ2I6IFJlZmFjdG9yIGNsZWFuX3J4X2lycSB0byByZWR1
Y2Ugb3ZlcmhlYWQgYW5kIGltcHJvdmUgcGVyZm9ybWFuY2UiKQo+IFJlcG9ydGVkLWJ5OiBPbGVr
c2FuZHIgTmF0YWxlbmtvIDxvbGVrc2FuZHJAbmF0YWxlbmtvLm5hbWU+Cj4gU3VnZ2VzdGVkLWJ5
OiBBbGV4YW5kZXIgRHV5Y2sgPGFsZXhhbmRlci5kdXlja0BnbWFpbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogSmVzc2UgQnJhbmRlYnVyZyA8amVzc2UuYnJhbmRlYnVyZ0BpbnRlbC5jb20+Cj4gUmV2
aWV3ZWQtYnk6IEFsZXhhbmRlciBEdXljayA8YWxleGFuZGVyZHV5Y2tAZmIuY29tPgo+IC0tLQo+
IAo+IENvbXBpbGUgdGVzdGVkIE9OTFksIGJ1dCBmdW5jdGlvbmFsbHkgaXQgc2hvdWxkIGJlIGV4
YWN0bHkgdGhlIHNhbWUgZm9yCj4gYWxsIGNhc2VzIGV4Y2VwdCB3aGVuIGJ1ZGdldCBpcyB6ZXJv
IG9uIGVudHJ5LCB3aGljaCB3aWxsIGhvcGVmdWxseSBmaXgKPiB0aGUgYnVnLgo+IAo+IFNlbmRp
bmcgdGhpcyB0aHJvdWdoIGludGVsLXdpcmVkLWxhbiB3aXRoIEFsZXgncyBBQ0suCj4gLS0tCj4g
IGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIHwgMTIgKysrKysrKyst
LS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5j
IGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWdiL2lnYl9tYWluLmMKPiBpbmRleCAwY2Qz
N2FkODFiNGUuLmIwYTliZWQxNDA3MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5l
dC9pbnRlbC9pZ2IvaWdiX21haW4uYwo+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2lnYi9pZ2JfbWFpbi5jCj4gQEAgLTc5OTEsMTIgKzc5OTEsMTYgQEAgc3RhdGljIHZvaWQgaWdi
X3JpbmdfaXJxX2VuYWJsZShzdHJ1Y3QgaWdiX3FfdmVjdG9yICpxX3ZlY3RvcikKPiAgICoqLwo+
ICBzdGF0aWMgaW50IGlnYl9wb2xsKHN0cnVjdCBuYXBpX3N0cnVjdCAqbmFwaSwgaW50IGJ1ZGdl
dCkKPiAgewo+IC0Jc3RydWN0IGlnYl9xX3ZlY3RvciAqcV92ZWN0b3IgPSBjb250YWluZXJfb2Yo
bmFwaSwKPiAtCQkJCQkJICAgICBzdHJ1Y3QgaWdiX3FfdmVjdG9yLAo+IC0JCQkJCQkgICAgIG5h
cGkpOwo+IC0JYm9vbCBjbGVhbl9jb21wbGV0ZSA9IHRydWU7Cj4gKwlzdHJ1Y3QgaWdiX3FfdmVj
dG9yICpxX3ZlY3RvcjsKPiArCWJvb2wgY2xlYW5fY29tcGxldGU7Cj4gIAlpbnQgd29ya19kb25l
ID0gMDsKPiAgCj4gKwkvKiBpZiBidWRnZXQgaXMgemVybywgd2UgaGF2ZSBhIHNwZWNpYWwgY2Fz
ZSBmb3IgbmV0Y29uc29sZSwgc28KPiArCSAqIG1ha2Ugc3VyZSB0byBzZXQgY2xlYW5fY29tcGxl
dGUgdG8gZmFsc2UgaW4gdGhhdCBjYXNlLgo+ICsJICovCj4gKwljbGVhbl9jb21wbGV0ZSA9ICEh
YnVkZ2V0Owo+ICsKPiArCXFfdmVjdG9yID0gY29udGFpbmVyX29mKG5hcGksIHN0cnVjdCBpZ2Jf
cV92ZWN0b3IsIG5hcGkpOwo+ICAjaWZkZWYgQ09ORklHX0lHQl9EQ0EKPiAgCWlmIChxX3ZlY3Rv
ci0+YWRhcHRlci0+ZmxhZ3MgJiBJR0JfRkxBR19EQ0FfRU5BQkxFRCkKPiAgCQlpZ2JfdXBkYXRl
X2RjYShxX3ZlY3Rvcik7Cj4gLS0gCj4gMi4zMC4yCj4gCgpUaGlzIGRpZG4ndCBmaXggdGhlIGlz
c3VlIG5laXRoZXIgZm9yIG1lLCBub3IgZm9yIGFub3RoZXIgcGVyc29uIGZyb20KdGhlIGtlcm5l
bCBidWd6aWxsYSBbMV0uCgpUaGUgc2FtZSBwcmludG91dCBzdGlsbCBoYXBwZW5zOgoKYGBgCk1h
eSAwNyAyMDoyNjo1NSBzcG9jayBrZXJuZWw6IGlnYl9wb2xsKzB4MC8weDE0NDAgW2lnYl0gZXhj
ZWVkZWQgYnVkZ2V0IGluIHBvbGwKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogV0FSTklO
RzogQ1BVOiAxMyBQSUQ6IDEyMjg1IGF0IG5ldC9jb3JlL25ldHBvbGwuYzoxNTQgbmV0cG9sbF9w
b2xsX2RldisweDE4YS8weDFhMArigKYKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogQ2Fs
bCBUcmFjZToKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogIG5ldHBvbGxfc2VuZF9za2Ir
MHgxYTAvMHgyNjAKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogIHdyaXRlX21zZysweGU1
LzB4MTAwIFtuZXRjb25zb2xlXQpNYXkgMDcgMjA6MjY6NTUgc3BvY2sga2VybmVsOiAgY29uc29s
ZV91bmxvY2srMHg0MmYvMHg3MjAKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtlcm5lbDogIHN1c3Bl
bmRfZGV2aWNlc19hbmRfZW50ZXIrMHgyYWMvMHg3ZjAKTWF5IDA3IDIwOjI2OjU1IHNwb2NrIGtl
cm5lbDogIHBtX3N1c3BlbmQuY29sZCsweDMyMS8weDM2YwpNYXkgMDcgMjA6MjY6NTUgc3BvY2sg
a2VybmVsOiAgc3RhdGVfc3RvcmUrMHhhNi8weDE0MApNYXkgMDcgMjA6MjY6NTUgc3BvY2sga2Vy
bmVsOiAga2VybmZzX2ZvcF93cml0ZV9pdGVyKzB4MTI0LzB4MWIwCk1heSAwNyAyMDoyNjo1NSBz
cG9jayBrZXJuZWw6ICBuZXdfc3luY193cml0ZSsweDE2YS8weDIwMApNYXkgMDcgMjA6MjY6NTUg
c3BvY2sga2VybmVsOiAgdmZzX3dyaXRlKzB4MjIzLzB4MmUwCk1heSAwNyAyMDoyNjo1NSBzcG9j
ayBrZXJuZWw6ICBfX3g2NF9zeXNfd3JpdGUrMHg2ZC8weGYwCmBgYAoKUHJvYmFibHksIHlvdXIg
cGF0Y2ggaXMgc3RpbGwgZmluZSwgYnV0IGFub3RoZXIgaWRlYSBpcyBkZXNwZXJhdGVseQpuZWVk
ZWQgOikuCgpUaGFua3MuCgpbMV0gaHR0cHM6Ly9idWd6aWxsYS5rZXJuZWwub3JnL3Nob3dfYnVn
LmNnaT9pZD0yMTI1NzMKCi0tIAogIE9sZWtzYW5kciBOYXRhbGVua28gKHBvc3QtZmFjdHVtKQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJl
ZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlz
dHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
