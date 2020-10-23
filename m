Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id B287C29789A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Oct 2020 23:01:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7609A8723E;
	Fri, 23 Oct 2020 21:01:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eoq8zhd8RzlT; Fri, 23 Oct 2020 21:00:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D00E58720F;
	Fri, 23 Oct 2020 21:00:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 70F461BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 21:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B3BA877A6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 21:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id meSSMm7K1D1Q for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Oct 2020 21:00:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 62E9587657
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Oct 2020 21:00:56 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1603486852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0RSzWnnhjduTWCuacybUxNyH2jm/Ejki0DZB09ZfMEo=;
 b=uC/F8SS7ceachXOn7laO0v51Jz5qp/rU44VpsVtuP1Na+r9KOVItKiq2MvIK91/vJKqdM/
 Yon7/psKTWzxsjJayfT4a72WsiroXOtKf7tzvwjPn5Fri6uLj7pDlxOtFwe4DM4XqReG3m
 QiPGbJhJac2HT/rR70hkUr0UOq7Pn6lKWKmgnTr40/2fMqKA7qiZguR2dxaaMgmmeJGHzC
 bv6taa5peKBeMMjOF71Ta78FrppqLS9dSNpODsEjYibkDhoIylQ2mQwweYG4g9fc0pDJfr
 qKrJ7YsxMLUrh+7aRcH/GMIBQYf42IvPRrPsiYLISmDrqKxG2zoiTpaIIwOLxg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1603486852;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0RSzWnnhjduTWCuacybUxNyH2jm/Ejki0DZB09ZfMEo=;
 b=7RgxZS9baabbqKcQfsa0dn/XjSu7U/Vml4D0Og0NWaVNkzdzTSdGSZiL1/090nxRSD5pkh
 LfLURkRpikZlX+Dg==
To: Nitesh Narayan Lal <nitesh@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>
In-Reply-To: <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
References: <20200928183529.471328-5-nitesh@redhat.com>
 <20201016122046.GP2611@hirez.programming.kicks-ass.net>
 <79f382a7-883d-ff42-394d-ec4ce81fed6a@redhat.com>
 <20201019111137.GL2628@hirez.programming.kicks-ass.net>
 <20201019140005.GB17287@fuller.cnet>
 <20201020073055.GY2611@hirez.programming.kicks-ass.net>
 <078e659e-d151-5bc2-a7dd-fe0070267cb3@redhat.com>
 <20201020134128.GT2628@hirez.programming.kicks-ass.net>
 <6736e643-d4ae-9919-9ae1-a73d5f31463e@redhat.com>
 <260f4191-5b9f-6dc1-9f11-085533ac4f55@redhat.com>
 <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
Date: Fri, 23 Oct 2020 23:00:52 +0200
Message-ID: <87ft6464jf.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH v4 4/4] PCI: Limit
 pci_alloc_irq_vectors() to housekeeping CPUs
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
Cc: juri.lelli@redhat.com, linux-pci@vger.kernel.org, sassmann@redhat.com,
 vincent.guittot@linaro.org, hch@infradead.org, mingo@redhat.com,
 intel-wired-lan@lists.osuosl.org, helgaas@kernel.org, thomas.lendacky@amd.com,
 lgoncalv@redhat.com, frederic@kernel.org, jlelli@redhat.com, jiri@nvidia.com,
 bhelgaas@google.com, mike.marciniszyn@intel.com, netdev@vger.kernel.org,
 dennis.dalessandro@intel.com, Marcelo Tosatti <mtosatti@redhat.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBPY3QgMjMgMjAyMCBhdCAwOToxMCwgTml0ZXNoIE5hcmF5YW4gTGFsIHdyb3RlOgo+
IE9uIDEwLzIzLzIwIDQ6NTggQU0sIFBldGVyIFppamxzdHJhIHdyb3RlOgo+PiBPbiBUaHUsIE9j
dCAyMiwgMjAyMCBhdCAwMTo0NzoxNFBNIC0wNDAwLCBOaXRlc2ggTmFyYXlhbiBMYWwgd3JvdGU6
Cj4+IFNvIHNob3VsZG4ndCB3ZSB0aGVuIGZpeCB0aGUgZHJpdmVycyAvIGludGVyZmFjZSBmaXJz
dCwgdG8gZ2V0IHJpZCBvZgo+PiB0aGlzIGluY29uc2lzdGVuY3k/Cj4+Cj4gQ29uc2lkZXJpbmcg
d2UgYWdyZWUgdGhhdCBleGNlc3MgdmVjdG9yIGlzIGEgcHJvYmxlbSB0aGF0IG5lZWRzIHRvIGJl
Cj4gc29sdmVkIGFjcm9zcyBhbGwgdGhlIGRyaXZlcnMgYW5kIHRoYXQgeW91IGFyZSBjb21mb3J0
YWJsZSB3aXRoIHRoZSBvdGhlcgo+IHRocmVlIHBhdGNoZXMgaW4gdGhlIHNldC4gSWYgSSBtYXkg
c3VnZ2VzdCB0aGUgZm9sbG93aW5nOgo+Cj4gLSBXZSBjYW4gcGljayB0aG9zZSB0aHJlZSBwYXRj
aGVzIGZvciBub3csIGFzIHRoYXQgd2lsbCBhdGxlYXN0IGZpeCBhCj4gwqAgZHJpdmVyIHRoYXQg
aXMgY3VycmVudGx5IGltcGFjdGluZyBSVCB3b3JrbG9hZHMuIElzIHRoYXQgYSBmYWlyCj4gwqAg
ZXhwZWN0YXRpb24/CgpOby4gQmxpbmRseSByZWR1Y2luZyB0aGUgbWF4aW11bSB2ZWN0b3JzIHRv
IHRoZSBudW1iZXIgb2YgaG91c2VrZWVwaW5nCkNQVXMgaXMgcGF0ZW50bHkgd3JvbmcuIFRoZSBQ
Q0kgY29yZSBfY2Fubm90XyBqdXN0IG5pbGx5IHdpbGx5IGRlY2lkZQp3aGF0IHRoZSByaWdodCBu
dW1iZXIgb2YgaW50ZXJydXB0cyBmb3IgdGhpcyBzaXR1YXRpb24gaXMuCgpNYW55IG9mIHRoZXNl
IGRyaXZlcnMgbmVlZCBtb3JlIHRoYW4gcXVldWUgaW50ZXJydXB0cywgYWRtaW4sIGVycm9yCmlu
dGVycnVwdCBhbmQgc29tZSBvcGVyYXRlIGJlc3Qgd2l0aCBzZXBlcmF0ZSBSWC9UWCBpbnRlcnJ1
cHRzIHBlcgpxdWV1ZS4gVGhleSBhbGwgY2FuICJ3b3JrIiB3aXRoIGEgc2luZ2xlIFBDSSBpbnRl
cnJ1cHQgb2YgY291cnNlLCBidXQKdGhlIHByaWNlIHlvdSBwYXkgaXMgcGVyZm9ybWFuY2UuCgpB
biBpc29sYXRlZCBzZXR1cCwgd2hpY2ggSSdtIGZhbWlsaWFyIHdpdGgsIGhhcyB0d28gaG91c2Vr
ZWVwaW5nCkNQVXMuIFNvIGZhciBJIHJlc3RyaWN0ZWQgdGhlIG51bWJlciBvZiBuZXR3b3JrIHF1
ZXVlcyB3aXRoIGEgbW9kdWxlCmFyZ3VtZW50IHRvIHR3bywgd2hpY2ggYWxsb2NhdGVzIHR3byBt
YW5hZ2VtZW50IGludGVycnVwdHMgZm9yIHRoZQpkZXZpY2UgYW5kIHR3byBpbnRlcnJ1cHRzIChS
WC9UWCkgcGVyIHF1ZXVlLCBpLmUuIGEgdG90YWwgb2Ygc2l4LgoKTm93IEkgcmVkdWNlZCB0aGUg
bnVtYmVyIG9mIGF2YWlsYWJsZSBpbnRlcnJ1cHRzIHRvIHR3byBhY2NvcmRpbmcgdG8KeW91ciBo
YWNrLCB3aGljaCBtYWtlcyBpdCB1c2Ugb25lIHF1ZXVlIFJYL1RYIGNvbWJpbmVkIGFuZCBvbmUK
bWFuYWdlbWVudCBpbnRlcnJ1cHQuIEd1ZXNzIHdoYXQgaGFwcGVucz8gTmV0d29yayBwZXJmb3Jt
YW5jZSB0YW5rcyB0bwp0aGUgcG9pbnRzIHRoYXQgaXQgYnJlYWtzIGEgY2FyZWZ1bGx5IGNyYWZ0
ZWQgc2V0dXAuCgpUaGUgc2FtZSBhcHBsaWVzIHRvIGEgZGV2aWNlIHdoaWNoIGlzIGFwcGxpY2F0
aW9uIHNwZWNpZmljIGFuZCB3YW50cyBvbmUKY2hhbm5lbCBpbmNsdWRpbmcgYW4gaW50ZXJydXB0
IHBlciBpc29sYXRlZCBhcHBsaWNhdGlvbiBjb3JlLiBUb2RheSBJCmNhbiBpc29sYXRlIDggb3V0
IG9mIDEyIENQVXMgYW5kIGxldCB0aGUgZGV2aWNlIGNyZWF0ZSA4IGNoYW5uZWxzIGFuZApzZXQg
b25lIGludGVycnVwdCBhbmQgY2hhbm5lbCBhZmZpbmUgdG8gZWFjaCBpc29sYXRlZCBDUFUuIFdp
dGggeW91cgpoYWNrLCBJIGdldCBvbmx5IDQgaW50ZXJydXB0cyBhbmQgY2hhbm5lbHMuIEZhaWwh
CgpZb3UgY2Fubm90IGRlY2xhcmUgdGhhdCBhbGwgdGhpcyBpcyBwZXJmZWN0bHkgZmluZSwganVz
dCBiZWNhdXNlIGl0IGRvZXMKbm90IG1hdHRlciBmb3IgeW91ciBwYXJ0aWN1bGFyIHVzZSBjYXNl
LgoKU28gd2l0aG91dCBpbmZvcm1hdGlvbiBmcm9tIHRoZSBkcml2ZXIgd2hpY2ggdGVsbHMgd2hh
dCB0aGUgYmVzdCBudW1iZXIKb2YgaW50ZXJydXB0cyBpcyB3aXRoIGEgcmVkdWNlZCBudW1iZXIg
b2YgQ1BVcywgdGhpcyBjdXRvZmYgd2lsbCBjYXVzZQptb3JlIHByb2JsZW1zIHRoYW4gaXQgc29s
dmVzLiBSZWdyZXNzaW9ucyBndWFyYW50ZWVkLgoKTWFuYWdlZCBpbnRlcnJ1cHRzIGJhc2UgdGhl
aXIgaW50ZXJydXB0IGFsbG9jYXRpb24gYW5kIHNwcmVhZGluZyBvbgppbmZvcm1hdGlvbiB3aGlj
aCBpcyBoYW5kZWQgaW4gYnkgdGhlIGluZGl2aWR1YWwgZHJpdmVyIGFuZCBub3Qgb24gY3J1ZGUK
YXNzdW1wdGlvbnMuIFRoZXkgYXJlIG5vdCBpbXBvc2luZyByZXN0cmljdGlvbnMgb24gdGhlIHVz
ZSBjYXNlLgoKSXQncyBwZXJmZWN0bHkgZmluZSBmb3IgaXNvbGF0ZWQgd29yayB0byBzYXZlIGEg
ZGF0YSBzZXQgdG8gZGlzayBhZnRlcgpjb21wdXRhdGlvbiBoYXMgZmluaXNoZWQgYW5kIHRoYXQg
anVzdCB3b3JrcyB3aXRoIHRoZSBwZXItY3B1IEkvTyBxdWV1ZQp3aGljaCBpcyBvdGhlcndpc2Ug
Y29tcGxldGVseSBzaWxlbnQuIEFsbCBpc29sYXRlZCB3b3JrZXJzIGNhbiBkbyB0aGUKc2FtZSBp
biBwYXJhbGxlbCB3aXRob3V0IHRyYW1wbGluZyBvbiBlYWNoIG90aGVyIHRvZXMgYnkgY29tcGV0
aW5nIGZvciBhCnJlZHVjZWQgbnVtYmVyIG9mIHF1ZXVlcyB3aGljaCBhcmUgYWZmaW5lIHRvIHRo
ZSBob3VzZWtlZXBlciBDUFVzLgoKVW5mb3J0dW5hdGVseSBuZXR3b3JrIG11bHRpLXF1ZXVlIGlz
IHN1YnN0YW50aWFsbHkgZGlmZmVyZW50IGZyb20gYmxvY2sKbXVsdGktcXVldWUgKGFzIEkgbGVh
cm5lZCBpbiB0aGlzIGNvbnZlcnNhdGlvbiksIHNvIHRoZSBjb25jZXB0IGNhbm5vdApiZSBhcHBs
aWVkIG9uZS10by1vbmUgdG8gbmV0d29ya2luZyBhcyBpcy4gQnV0IHRoZXJlIGFyZSBjZXJ0YWlu
bHkgcGFydApvZiBpdCB3aGljaCBjYW4gYmUgcmV1c2VkLgoKVGhpcyBuZWVkcyBhIGxvdCBtb3Jl
IHRob3VnaHQgdGhhbiBqdXN0IHRoZXNlIGNydWRlIGhhY2tzLgoKRXNwZWNpYWxseSB1bmRlciB0
aGUgYXNwZWN0IHRoYXQgdGhlcmUgYXJlIHRhbGtzIGFib3V0IG1ha2luZyBpc29sYXRpb24KcnVu
dGltZSBzd2l0Y2hhYmxlLiBBcmUgeW91IGdvaW5nIHRvIHJtbW9kL2luc21vZCB0aGUgaTQwZSBu
ZXR3b3JrCmRyaXZlciB0byBkbyBzbz8gVGhhdCdzIGdvaW5nIHRvIHdvcmsgZmluZSBpZiB5b3Ug
ZG8gdGhhdApyZWNvbmZpZ3VyYXRpb24gb3ZlciBuZXR3b3JrLi4uCgpUaGFua3MsCgogICAgICAg
IHRnbHgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRw
czovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
