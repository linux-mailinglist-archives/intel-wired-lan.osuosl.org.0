Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 737567C6087
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Oct 2023 00:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D894941750;
	Wed, 11 Oct 2023 22:46:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D894941750
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697064400;
	bh=5DwFtDUOBfrryTG41CnsVRm8yMOp2y4/Z0J4ULOy9/c=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=va/6feIsp37rGtCzpJsJnDbNCyigWeEM6j7RTgTFkr7FtXR907BPEq/XEC5LW1Xug
	 IiJNPe6dwvD+5A4L6HsfzYkvsjTelkBJOqgtbaAlLAuPsIduYRXcjp5+xGp4AeC+CN
	 KaHhFyQPgr4NwRUFpHjuPnLpuAGrI1Ax6hjm6bHGfd0wB4yzWxgR4osFyXw63vkiPz
	 6KM8AwrN/MCjS5kxbTT9Rprwx1CIWGWw9vBLuuieXWq+yIeEmg5MTQz+CyrgL906JL
	 HeznA3vbLYANzxLhtPEdsNnl5kJliC4EQa00XI0cfP3goS6D69mCjtfO0I+JrTd1n+
	 REsCPEw6J8eGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id khDgXwnhKHDh; Wed, 11 Oct 2023 22:46:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18C664091A;
	Wed, 11 Oct 2023 22:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18C664091A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 462B11BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 22:46:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1AD44400C7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 22:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AD44400C7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YyD0rdwmFbFW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 22:46:31 +0000 (UTC)
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com
 [IPv6:2607:f8b0:4864:20::e2d])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C2A5D40467
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 22:46:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2A5D40467
Received: by mail-vs1-xe2d.google.com with SMTP id
 ada2fe7eead31-4527d65354bso173426137.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 15:46:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697064390; x=1697669190;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IOOGj4FT+5gX1rlvqGHMOmPnG2/tINaWmHLr2bpYqtI=;
 b=KJnIVoimJBjG0iU2Y8X2kR3sHyE+x7Yg8GgiTnfESWWnnQNbNigbgICKsZvvi8s63y
 AnMMFYH9Q9Z4w9TGymW5QYHgVqGI4ookDGMF8YQlXp+vSmThIr8+OGBzp2Agwv55jDRW
 Tt+BqsQYezcp0/npqEU/NHvmdu3LUxtw/7ahw5RWX4PK5zbMLpmSyTcpZ4oiN1eBiST5
 b7FWLnm5sTT+aSJnJvZ0nZ9B4unEEnrjr2+yNLF+qDq2YQwEag5KvKtGu69dHlSlEqn5
 mUHiMOee5VPjHs+MPhGnjcJIm3MWyry9qY5JM6wXIzrdcAV32abteXZq7Q0ebKf3e2SN
 SWhQ==
X-Gm-Message-State: AOJu0YwtfN8l/e361ismst0ZNr5w5+2PIEegDoSRQE7e5do8z6dZj4pT
 grEAdkZKTOD2O+hHbZAZhTCnPfDB2woK/MGVn+Q=
X-Google-Smtp-Source: AGHT+IHpruLFHbdkRHSTdD5JP6c6RcKHxFe6sib6nIIXZZro91ynBkGQjPpLhL4IviLRmfE7p24ElSW5cpdJKq9Uym0=
X-Received: by 2002:a05:6102:3169:b0:44d:48bf:591c with SMTP id
 l9-20020a056102316900b0044d48bf591cmr20190061vsm.30.1697064390554; Wed, 11
 Oct 2023 15:46:30 -0700 (PDT)
MIME-Version: 1.0
References: <20231010200437.9794-1-ahmed.zaki@intel.com>
 <20231010200437.9794-2-ahmed.zaki@intel.com>
 <CAF=yD-+=3=MqqsHESPsgD0yCQSCA9qBe1mB1OVhSYuB_GhZK6g@mail.gmail.com>
 <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
In-Reply-To: <8d205051-d04c-42ff-a2c5-98fcd8545ecb@intel.com>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Wed, 11 Oct 2023 18:45:54 -0400
Message-ID: <CAF=yD-J=6atRuyhx+a9dvYkr3_Ydzqwwp0Pd1HkFsgNzzk01DQ@mail.gmail.com>
To: Ahmed Zaki <ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697064390; x=1697669190; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IOOGj4FT+5gX1rlvqGHMOmPnG2/tINaWmHLr2bpYqtI=;
 b=CCBPlykBWJGT0a35oyIXDUbL9jDhXaNi8IdBLiuxk/jwm855sZP2rkxvrZ9/ixE/gx
 lLGOSGcO1v7zzHh7KnpZodHBlBQPmH/eC342NeMcIiDDvnAC9BBPLIk/a84KKXb84m5F
 V8onFUwujV6LE3jg7+ojPQy9PrlALSyDPQSb5nAV4zXOIBu6H4C4zE8pdI5/tH+lHG5W
 ADddv19F6DVz9tJLXGp12KtJjiK42/i4RlZltXzXnifBLMiHgAUtXOw3ABSY61Y2GB5a
 jhBIcPNbcMceWBwgvwaTQKtWiJNLUHiotQ7x+oQXGeo/Xo7ke/Xgzz8T72zk8xbAm0Qz
 OkJQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=CCBPlykB
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/6] net: ethtool: allow
 symmetric-xor RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 vladimir.oltean@nxp.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBPY3QgMTAsIDIwMjMgYXQgNTozNOKAr1BNIEFobWVkIFpha2kgPGFobWVkLnpha2lA
aW50ZWwuY29tPiB3cm90ZToKPgo+Cj4gT24gMjAyMy0xMC0xMCAxNDo0MCwgV2lsbGVtIGRlIEJy
dWlqbiB3cm90ZToKPgo+IE9uIFR1ZSwgT2N0IDEwLCAyMDIzIGF0IDQ6MDXigK9QTSBBaG1lZCBa
YWtpIDxhaG1lZC56YWtpQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBTeW1tZXRyaWMgUlNTIGhhc2gg
ZnVuY3Rpb25zIGFyZSBiZW5lZmljaWFsIGluIGFwcGxpY2F0aW9ucyB0aGF0IG1vbml0b3IKPiBi
b3RoIFR4IGFuZCBSeCBwYWNrZXRzIG9mIHRoZSBzYW1lIGZsb3cgKElEUywgc29mdHdhcmUgZmly
ZXdhbGxzLCAuLmV0YykuCj4gR2V0dGluZyBhbGwgdHJhZmZpYyBvZiB0aGUgc2FtZSBmbG93IG9u
IHRoZSBzYW1lIFJYIHF1ZXVlIHJlc3VsdHMgaW4KPiBoaWdoZXIgQ1BVIGNhY2hlIGVmZmljaWVu
Y3kuCj4KPiBBIE5JQyB0aGF0IHN1cHBvcnRzICJzeW1tZXRyaWMteG9yIiBjYW4gYWNoaWV2ZSB0
aGlzIFJTUyBoYXNoIHN5bW1ldHJ5Cj4gYnkgWE9SaW5nIHRoZSBzb3VyY2UgYW5kIGRlc3RpbmF0
aW9uIGZpZWxkcyBhbmQgcGFzcyB0aGUgdmFsdWVzIHRvIHRoZQo+IFJTUyBoYXNoIGFsZ29yaXRo
bS4KPgo+IE9ubHkgZmllbGRzIHRoYXQgaGFzIGNvdW50ZXJwYXJ0cyBpbiB0aGUgb3RoZXIgZGly
ZWN0aW9uIGNhbiBiZQo+IGFjY2VwdGVkOyBJUCBzcmMvZHN0IGFuZCBMNCBzcmMvZHN0IHBvcnRz
Lgo+Cj4gVGhlIHVzZXIgbWF5IHJlcXVlc3QgUlNTIGhhc2ggc3ltbWV0cnkgZm9yIGEgc3BlY2lm
aWMgZmxvdyB0eXBlLCB2aWE6Cj4KPiAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxvdy1o
YXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljLXhvcgo+Cj4gb3IgdHVybiBzeW1tZXRy
eSBvZmYgKGFzeW1tZXRyaWMpIGJ5Ogo+Cj4gICAgICMgZXRodG9vbCAtTnwtVSBldGgwIHJ4LWZs
b3ctaGFzaCA8Zmxvd190eXBlPiBzfGR8ZnxuCj4KPiBSZXZpZXdlZC1ieTogV29qY2llY2ggRHJl
d2VrIDx3b2pjaWVjaC5kcmV3ZWtAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFobWVkIFph
a2kgPGFobWVkLnpha2lAaW50ZWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL25ldHdvcmtp
bmcvc2NhbGluZy5yc3QgfCAgNiArKysrKysKPiAgaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wu
aCAgICAgICAgIHwgMTcgKysrKysrKysrLS0tLS0tLS0KPiAgbmV0L2V0aHRvb2wvaW9jdGwuYyAg
ICAgICAgICAgICAgICAgIHwgMTEgKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAyNiBp
bnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9zY2FsaW5nLnJzdCBiL0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2Fs
aW5nLnJzdAo+IGluZGV4IDkyYzlmYjQ2ZDZhMi4uNjRmM2Q3NTY2NDA3IDEwMDY0NAo+IC0tLSBh
L0RvY3VtZW50YXRpb24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+ICsrKyBiL0RvY3VtZW50YXRp
b24vbmV0d29ya2luZy9zY2FsaW5nLnJzdAo+IEBAIC00NCw2ICs0NCwxMiBAQCBieSBtYXNraW5n
IG91dCB0aGUgbG93IG9yZGVyIHNldmVuIGJpdHMgb2YgdGhlIGNvbXB1dGVkIGhhc2ggZm9yIHRo
ZQo+ICBwYWNrZXQgKHVzdWFsbHkgYSBUb2VwbGl0eiBoYXNoKSwgdGFraW5nIHRoaXMgbnVtYmVy
IGFzIGEga2V5IGludG8gdGhlCj4gIGluZGlyZWN0aW9uIHRhYmxlIGFuZCByZWFkaW5nIHRoZSBj
b3JyZXNwb25kaW5nIHZhbHVlLgo+Cj4gK1NvbWUgTklDcyBzdXBwb3J0IHN5bW1ldHJpYyBSU1Mg
aGFzaGluZyB3aGVyZSwgaWYgdGhlIElQIChzb3VyY2UgYWRkcmVzcywKPiArZGVzdGluYXRpb24g
YWRkcmVzcykgYW5kIFRDUC9VRFAgKHNvdXJjZSBwb3J0LCBkZXN0aW5hdGlvbiBwb3J0KSB0dXBs
ZXMKPiArYXJlIHN3YXBwZWQsIHRoZSBjb21wdXRlZCBoYXNoIGlzIHRoZSBzYW1lLiBUaGlzIGlz
IGJlbmVmaWNpYWwgaW4gc29tZQo+ICthcHBsaWNhdGlvbnMgdGhhdCBtb25pdG9yIFRDUC9JUCBm
bG93cyAoSURTLCBmaXJld2FsbHMsIC4uLmV0YykgYW5kIG5lZWQKPiArYm90aCBkaXJlY3Rpb25z
IG9mIHRoZSBmbG93IHRvIGxhbmQgb24gdGhlIHNhbWUgUnggcXVldWUgKGFuZCBDUFUpLgo+ICsK
Pgo+IE1heWJlIGFkZCBhIHNob3J0IGV0aHRvb2wgZXhhbXBsZT8KPgo+IFNhbWUgZXhhbXBsZSBh
cyBpbiBjb21taXQgbWVzc2FnZSBpcyBPSz8KPgo+IEFGQUlLLCB0aGUgImV0aHRvb2wiIHBhdGNo
IGhhcyB0byBiZSBzZW50IGFmdGVyIHRoaXMgc2VyaWVzIGlzIGFjY2VwdGVkLiBTbyBJIGFtIG5v
dCAxMDAlIHN1cmUgb2YgaG93IHRoZSBldGh0b29sIHNpZGUgd2lsbCBsb29rIGxpa2UsIGJ1dCBJ
IGNhbiBhZGQgdGhlIGxpbmUgYWJvdmUgdG8gRG9jLgoKR29vZCBwb2ludC4gVGhlbiBsZXQncyBu
b3QgaWYgdGhlIEFQSSBpcyBub3QgZmluYWwgeWV0Lgo+Cj4KPiAgU29tZSBhZHZhbmNlZCBOSUNz
IGFsbG93IHN0ZWVyaW5nIHBhY2tldHMgdG8gcXVldWVzIGJhc2VkIG9uCj4gIHByb2dyYW1tYWJs
ZSBmaWx0ZXJzLiBGb3IgZXhhbXBsZSwgd2Vic2VydmVyIGJvdW5kIFRDUCBwb3J0IDgwIHBhY2tl
dHMKPiAgY2FuIGJlIGRpcmVjdGVkIHRvIHRoZWlyIG93biByZWNlaXZlIHF1ZXVlLiBTdWNoIOKA
nG4tdHVwbGXigJ0gZmlsdGVycyBjYW4KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4
L2V0aHRvb2wuaCBiL2luY2x1ZGUvdWFwaS9saW51eC9ldGh0b29sLmgKPiBpbmRleCBmN2ZiYTBk
Yzg3ZTUuLmI5ZWU2NjdhZDdlNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL3VhcGkvbGludXgvZXRo
dG9vbC5oCj4gKysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2V0aHRvb2wuaAo+IEBAIC0yMDE4LDE0
ICsyMDE4LDE1IEBAIHN0YXRpYyBpbmxpbmUgaW50IGV0aHRvb2xfdmFsaWRhdGVfZHVwbGV4KF9f
dTggZHVwbGV4KQo+ICAjZGVmaW5lICAgICAgICBGTE9XX1JTUyAgICAgICAgMHgyMDAwMDAwMAo+
Cj4gIC8qIEwzLUw0IG5ldHdvcmsgdHJhZmZpYyBmbG93IGhhc2ggb3B0aW9ucyAqLwo+IC0jZGVm
aW5lICAgICAgICBSWEhfTDJEQSAgICAgICAgKDEgPDwgMSkKPiAtI2RlZmluZSAgICAgICAgUlhI
X1ZMQU4gICAgICAgICgxIDw8IDIpCj4gLSNkZWZpbmUgICAgICAgIFJYSF9MM19QUk9UTyAgICAo
MSA8PCAzKQo+IC0jZGVmaW5lICAgICAgICBSWEhfSVBfU1JDICAgICAgKDEgPDwgNCkKPiAtI2Rl
ZmluZSAgICAgICAgUlhIX0lQX0RTVCAgICAgICgxIDw8IDUpCj4gLSNkZWZpbmUgICAgICAgIFJY
SF9MNF9CXzBfMSAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NU
UCAqLwo+IC0jZGVmaW5lICAgICAgICBSWEhfTDRfQl8yXzMgICAgKDEgPDwgNykgLyogZHN0IHBv
cnQgaW4gY2FzZSBvZiBUQ1AvVURQL1NDVFAgKi8KPiAtI2RlZmluZSAgICAgICAgUlhIX0RJU0NB
UkQgICAgICgxIDw8IDMxKQo+ICsjZGVmaW5lICAgICAgICBSWEhfTDJEQSAgICAgICAgICAgICAg
ICAoMSA8PCAxKQo+ICsjZGVmaW5lICAgICAgICBSWEhfVkxBTiAgICAgICAgICAgICAgICAoMSA8
PCAyKQo+ICsjZGVmaW5lICAgICAgICBSWEhfTDNfUFJPVE8gICAgICAgICAgICAoMSA8PCAzKQo+
ICsjZGVmaW5lICAgICAgICBSWEhfSVBfU1JDICAgICAgICAgICAgICAoMSA8PCA0KQo+ICsjZGVm
aW5lICAgICAgICBSWEhfSVBfRFNUICAgICAgICAgICAgICAoMSA8PCA1KQo+ICsjZGVmaW5lICAg
ICAgICBSWEhfTDRfQl8wXzEgICAgICAgICAgICAoMSA8PCA2KSAvKiBzcmMgcG9ydCBpbiBjYXNl
IG9mIFRDUC9VRFAvU0NUUCAqLwo+ICsjZGVmaW5lICAgICAgICBSWEhfTDRfQl8yXzMgICAgICAg
ICAgICAoMSA8PCA3KSAvKiBkc3QgcG9ydCBpbiBjYXNlIG9mIFRDUC9VRFAvU0NUUCAqLwo+ICsj
ZGVmaW5lICAgICAgICBSWEhfU1lNTUVUUklDX1hPUiAgICAgICAoMSA8PCAzMCkKPiArI2RlZmlu
ZSAgICAgICAgUlhIX0RJU0NBUkQgICAgICAgICAgICAgKDEgPDwgMzEpCj4KPiBBcmUgdGhlc2Ug
aW5kZW50YXRpb24gY2hhbmdlcyBpbnRlbnRpb25hbD8KPgo+Cj4gWWVzLCBmb3IgYWxpZ25tZW50
ICgiUlhIX1NZTU1FVFJJQ19YT1IiIGlzIHRvbyBsb25nKS4KCkkgdGhpbmsgaXQncyBwcmVmZXJh
YmxlIHRvIG5vdCB0b3VjaCBvdGhlciBsaW5lcy4gQW1vbmcgb3RoZXJzLCB0aGF0Cm1lc3NlcyB1
cCBnaXQgYmxhbWUuIEJ1dCBpdCdzIHN1YmplY3RpdmUuIEZvbGxvdyB5b3VyIHByZWZlcmVuY2Ug
aWYgbm8Kb25lIGVsc2UgY2hpbWVzIGluLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
