Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D11D88F5D7
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Aug 2019 22:39:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C98448843F;
	Thu, 15 Aug 2019 20:38:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ywlyWucOHc2O; Thu, 15 Aug 2019 20:38:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 41C1C882EC;
	Thu, 15 Aug 2019 20:38:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF5CB1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 17:11:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6D288625E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 17:11:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e6FINX6ymHzK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Aug 2019 17:11:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D218085FA8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 17:11:13 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id x19so2669075eda.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Aug 2019 10:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version:content-transfer-encoding;
 bh=DG21KkKuGbE22qd7U7CNhzev33PvnhgSnKWOMcxhx0o=;
 b=nn3/hPm2BwLBfwnsBHWE6Xd24oH0VhPPazctP/kEtZ4g9rLUjx3pbC5glBCUpKGf5Z
 Siq08yqN2JCYU0x2YRut4mA4cijtID6gK8/AAwlhW5Zgv3pydNRLa1prJCMdXvL2MDmX
 uzdpIo31xQpnMHx1iFk/CiG0mmivKsA84anQ1ozAfxJOtWZyycirryzQ/5hJTF3o4/Gc
 RScDqpePzX0XF0L88Jjx7OUUl3vChdXkv+F3wjlk7G7u7yKzxc/zc9mMCY7U3TQtHdQJ
 zyc4dd0oU7vs30q18LIg5r1q/+vdCops81h9L7l4DexOxsvzNBXcfCkV2pp+r9wcGoUz
 s2yg==
X-Gm-Message-State: APjAAAWQBPfYDJLQON8tu1h8ncYP9Z1PRD4xOAwJ7mfO14eJFZ8oFxjT
 OWKmGLubAOqyyaB15nwhwRmyTA==
X-Google-Smtp-Source: APXvYqwBCG6PXQ1zbJIvWQF6cb4SXcTTFbXx1veojnlRTDWLgRqtU+ZpZEdGvpBGRpyLhNF7FITOQg==
X-Received: by 2002:a17:906:eb8d:: with SMTP id
 mh13mr5279618ejb.98.1565889072181; 
 Thu, 15 Aug 2019 10:11:12 -0700 (PDT)
Received: from alrua-x1.borgediget.toke.dk ([2a00:7660:6da:443::2])
 by smtp.gmail.com with ESMTPSA id w14sm652036edf.7.2019.08.15.10.11.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 10:11:11 -0700 (PDT)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 224FB181C2E; Thu, 15 Aug 2019 19:11:11 +0200 (CEST)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: "Samudrala\, Sridhar" <sridhar.samudrala@intel.com>,
 magnus.karlsson@intel.com, bjorn.topel@intel.com, netdev@vger.kernel.org,
 bpf@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 maciej.fijalkowski@intel.com, tom.herbert@intel.com
In-Reply-To: <b9423054-247e-8b57-ea59-42368f60ea1e@intel.com>
References: <1565840783-8269-1-git-send-email-sridhar.samudrala@intel.com>
 <87ftm2adi2.fsf@toke.dk> <b9423054-247e-8b57-ea59-42368f60ea1e@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Thu, 15 Aug 2019 19:11:11 +0200
Message-ID: <87ftm2wdzk.fsf@toke.dk>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 15 Aug 2019 20:38:54 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next 0/5] Add support for SKIP_BPF
 flag for AF_XDP sockets
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

IlNhbXVkcmFsYSwgU3JpZGhhciIgPHNyaWRoYXIuc2FtdWRyYWxhQGludGVsLmNvbT4gd3JpdGVz
OgoKPiBPbiA4LzE1LzIwMTkgNDoxMiBBTSwgVG9rZSBIw7hpbGFuZC1Kw7hyZ2Vuc2VuIHdyb3Rl
Ogo+PiBTcmlkaGFyIFNhbXVkcmFsYSA8c3JpZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPiB3cml0
ZXM6Cj4+IAo+Pj4gVGhpcyBwYXRjaCBzZXJpZXMgaW50cm9kdWNlcyBYRFBfU0tJUF9CUEYgZmxh
ZyB0aGF0IGNhbiBiZSBzcGVjaWZpZWQKPj4+IGR1cmluZyB0aGUgYmluZCgpIGNhbGwgb2YgYW4g
QUZfWERQIHNvY2tldCB0byBza2lwIGNhbGxpbmcgdGhlIEJQRgo+Pj4gcHJvZ3JhbSBpbiB0aGUg
cmVjZWl2ZSBwYXRoIGFuZCBwYXNzIHRoZSBidWZmZXIgZGlyZWN0bHkgdG8gdGhlIHNvY2tldC4K
Pj4+Cj4+PiBXaGVuIGEgc2luZ2xlIEFGX1hEUCBzb2NrZXQgaXMgYXNzb2NpYXRlZCB3aXRoIGEg
cXVldWUgYW5kIGEgSFcKPj4+IGZpbHRlciBpcyB1c2VkIHRvIHJlZGlyZWN0IHRoZSBwYWNrZXRz
IGFuZCB0aGUgYXBwIGlzIGludGVyZXN0ZWQgaW4KPj4+IHJlY2VpdmluZyBhbGwgdGhlIHBhY2tl
dHMgb24gdGhhdCBxdWV1ZSwgd2UgZG9uJ3QgbmVlZCBhbiBhZGRpdGlvbmFsCj4+PiBCUEYgcHJv
Z3JhbSB0byBkbyBmdXJ0aGVyIGZpbHRlcmluZyBvciBsb29rdXAvcmVkaXJlY3QgdG8gYSBzb2Nr
ZXQuCj4+Pgo+Pj4gSGVyZSBhcmUgc29tZSBwZXJmb3JtYW5jZSBudW1iZXJzIGNvbGxlY3RlZCBv
bgo+Pj4gICAgLSAyIHNvY2tldCAyOCBjb3JlIEludGVsKFIpIFhlb24oUikgUGxhdGludW0gODE4
MCBDUFUgQCAyLjUwR0h6Cj4+PiAgICAtIEludGVsIDQwR2IgRXRoZXJuZXQgTklDIChpNDBlKQo+
Pj4KPj4+IEFsbCB0ZXN0cyB1c2UgMiBjb3JlcyBhbmQgdGhlIHJlc3VsdHMgYXJlIGluIE1wcHMu
Cj4+Pgo+Pj4gdHVyYm8gb24gKGRlZmF1bHQpCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0JCj4+PiAgICAgICAgICAgICAgICAgICAgICAgIG5vLXNraXAt
YnBmICAgIHNraXAtYnBmCj4+PiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0JCj4+PiByeGRyb3AgemVyb2NvcHkgICAgICAgICAgIDIxLjkgICAgICAgICAzOC41
Cj4+PiBsMmZ3ZCAgemVyb2NvcHkgICAgICAgICAgIDE3LjAgICAgICAgICAyMC41Cj4+PiByeGRy
b3AgY29weSAgICAgICAgICAgICAgIDExLjEgICAgICAgICAxMy4zCj4+PiBsMmZ3ZCAgY29weSAg
ICAgICAgICAgICAgICAxLjkgICAgICAgICAgMi4wCj4+Pgo+Pj4gbm8gdHVyYm8gOiAgZWNobyAx
ID4gL3N5cy9kZXZpY2VzL3N5c3RlbS9jcHUvaW50ZWxfcHN0YXRlL25vX3R1cmJvCj4+PiAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0JCj4+PiAgICAgICAgICAg
ICAgICAgICAgICAgIG5vLXNraXAtYnBmICAgIHNraXAtYnBmCj4+PiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0JCj4+PiByeGRyb3AgemVyb2NvcHkgICAgICAg
ICAgIDE1LjQgICAgICAgICAyOS4wCj4+PiBsMmZ3ZCAgemVyb2NvcHkgICAgICAgICAgIDExLjgg
ICAgICAgICAxOC4yCj4+PiByeGRyb3AgY29weSAgICAgICAgICAgICAgICA4LjIgICAgICAgICAx
MC41Cj4+PiBsMmZ3ZCAgY29weSAgICAgICAgICAgICAgICAxLjcgICAgICAgICAgMS43Cj4+PiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4gCj4+IFlvdSdy
ZSBnZXR0aW5nIHRoaXMgcGVyZm9ybWFuY2UgYm9vc3QgYnkgYWRkaW5nIG1vcmUgY29kZSBpbiB0
aGUgZmFzdAo+PiBwYXRoIGZvciBldmVyeSBYRFAgcHJvZ3JhbTsgc28gd2hhdCdzIHRoZSBwZXJm
b3JtYW5jZSBpbXBhY3Qgb2YgdGhhdCBmb3IKPj4gY2FzZXMgd2hlcmUgd2UgZG8gcnVuIGFuIGVC
UEYgcHJvZ3JhbT8KPgo+IFRoZSBuby1za2lwLWJwZiByZXN1bHRzIGFyZSBwcmV0dHkgY2xvc2Ug
dG8gd2hhdCBpIHNlZSBiZWZvcmUgdGhlIAo+IHBhdGNoZXMgYXJlIGFwcGxpZWQuIEFzIHVtZW0g
aXMgY2FjaGVkIGluIHJ4X3JpbmcgZm9yIHplcm9jb3B5IHRoZSAKPiBvdmVyaGVhZCBpcyBtdWNo
IHNtYWxsZXIgY29tcGFyZWQgdG8gdGhlIGNvcHkgc2NlbmFyaW8gd2hlcmUgaSBhbSAKPiBjdXJy
ZW50bHkgY2FsbGluZyB4ZHBfZ2V0X3VtZW1fZnJvbV9xaWQoKS4KCkkgbWVhbnQgbW9yZSBmb3Ig
b3RoZXIgWERQIHByb2dyYW1zOyB3aGF0IGlzIHRoZSBwZXJmb3JtYW5jZSBpbXBhY3Qgb2YKWERQ
X0RST1AsIGZvciBpbnN0YW5jZT8KCj4+IEFsc28sIHRoaXMgaXMgYmFzaWNhbGx5IGEgc3BlY2lh
bC1jYXNpbmcgb2YgYSBwYXJ0aWN1bGFyIGRlcGxveW1lbnQKPj4gc2NlbmFyaW8uIFdpdGhvdXQg
YSB3YXkgdG8gY29udHJvbCBSWCBxdWV1ZSBhc3NpZ25tZW50IGFuZCB0cmFmZmljCj4+IHN0ZWVy
aW5nLCB5b3UncmUgYmFzaWNhbGx5IGhhcmQtY29kaW5nIGEgcGFydGljdWxhciBhcHAncyB0YWtl
b3ZlciBvZgo+PiB0aGUgbmV0d29yayBpbnRlcmZhY2U7IEknbSBub3Qgc3VyZSB0aGF0IGlzIHN1
Y2ggYSBnb29kIGlkZWEuLi4KPgo+IFllcy4gVGhpcyBpcyBtYWlubHkgdGFyZ2V0ZWQgZm9yIGFw
cGxpY2F0aW9uIHRoYXQgY3JlYXRlIDEgQUZfWERQCj4gc29ja2V0IHBlciBSWCBxdWV1ZSBhbmQg
Y2FuIHVzZSBhIEhXIGZpbHRlciAodmlhIGV0aHRvb2wgb3IgVEMgZmxvd2VyKQo+IHRvIHJlZGly
ZWN0IHRoZSBwYWNrZXRzIHRvIGEgcXVldWUgb3IgYSBncm91cCBvZiBxdWV1ZXMuCgpZZWFoLCBh
bmQgSSdkIHByZWZlciBpdCBpZiB0aGUgaGFuZGxpbmcgb2YgdGhpcyB0byBiZSB1bmlmaWVkIHNv
bWVob3cuLi4KCi1Ub2tlCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
