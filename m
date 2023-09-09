Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81877799A44
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Sep 2023 19:34:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1486581C6E;
	Sat,  9 Sep 2023 17:34:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1486581C6E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694280892;
	bh=uKm5kQLI6/gbtn2axhQd0wSK61onK7sPrX3gVJI5GMU=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ebrGYMjIQmcHNi2AgQpFzSGbljn56lCQRcDKL5c8N/UvrlCplwjn/2dHJi03I5Mo5
	 zNuzNqYk/c8HyotZfVAggyenFg9scXHjI5/jy8jvNyKYJSxZKel4bdkPAL6fWDcmec
	 88KrFMz3JQ7RpElr1N5w/jaE31BZFqJ1u3HKoernkgEpS6RH94tGJp2MSXgYAOwx8l
	 vEMZgpeyfVSTP4mTGMPTscOfWsEEIgk7iYEfbHTq+kgQdwxf1pmgujX5nPKHNia0o2
	 gd4anMLHLPZH465QmCDRExdUTD+bF6/WuevMtJXiIZFQAu9OwOpxlfRWNGKB2xQrl6
	 Owk06VLZfIbjQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0r2BlUuSJ-pK; Sat,  9 Sep 2023 17:34:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA31181A5F;
	Sat,  9 Sep 2023 17:34:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA31181A5F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D18A71BF2EB
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 17:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A0CD2402E0
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 17:34:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0CD2402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 11h-rO7FY0Dq for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Sep 2023 17:34:42 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com
 [IPv6:2607:f8b0:4864:20::433])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A26C8402BC
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Sep 2023 17:34:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A26C8402BC
Received: by mail-pf1-x433.google.com with SMTP id
 d2e1a72fcca58-68a3e943762so2897732b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 09 Sep 2023 10:34:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694280882; x=1694885682;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rb7Lm6JGvWMPHNMySSc24TURh8IEOR8HmhYqff4klrA=;
 b=VulhJSXYq1ZBc8pKunlFH8W8jXtKaP0pPYg0zRwTy5DI3TYS4fLOast19YZM0RgJ0f
 yiQHs7VZ6QOzhrhZ3S4xdWQoH687/nbUzAmYiEk73FY6e3KbWyBsS4U6UaGeCIwbR8Qb
 pOd813Sc3ulKpTN6cqxL0+H6Ig6V0rpN81gv4ZaBHGMHmjfl6qwfNU2N66LRLGrV+cgk
 bnUyOQ8Iir1xABqng/9dnfc66HS/rWeSUHkjgzfZf30I50k0d5Rn0R9pKdmy2Rnsasix
 DjIcVSUPLpKZbGTiR31QqxjiVhVv6n09dv7ZUP3kpdFUCdMll0h9nwafHHy4JarBuJVO
 SKYw==
X-Gm-Message-State: AOJu0Yx7EdSqSQphk9RcNHsQ/WRzra04n5UIERHlD+DWKk9LCuT4pcS4
 HlifsBgsrVjDf2tPJrSdYzVqNNDdqt1j2TXZHEes7g==
X-Google-Smtp-Source: AGHT+IEyO6XoHIO8++WS7nm+NWWPjY8eeZ+5YNf/eR0XHp6bi084Ex2eXiughOlaXFTz/E18FD2BE32lP1UlqFPMLRI=
X-Received: by 2002:a05:6a20:7fa7:b0:141:69d:8041 with SMTP id
 d39-20020a056a207fa700b00141069d8041mr8030130pzj.48.1694280881974; Sat, 09
 Sep 2023 10:34:41 -0700 (PDT)
MIME-Version: 1.0
References: <20230904021455.3944605-1-junfeng.guo@intel.com>
 <20230905153734.18b9bc84@kernel.org>
 <CALx6S34B_BvkNuqALCCT+2V2dL8rwr9n_DnRfevjkW4UwMF=pw@mail.gmail.com>
 <8df3c9c6-19ed-acc8-f2ac-1826a81ab53c@intel.com>
In-Reply-To: <8df3c9c6-19ed-acc8-f2ac-1826a81ab53c@intel.com>
From: Tom Herbert <tom@herbertland.com>
Date: Sat, 9 Sep 2023 10:34:30 -0700
Message-ID: <CALx6S345sufnhn6zVO03ZauDiU52F9SbbZTgaGm6xxr=yKyPUQ@mail.gmail.com>
To: "Samudrala, Sridhar" <sridhar.samudrala@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=herbertland.com; s=google; t=1694280882; x=1694885682; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rb7Lm6JGvWMPHNMySSc24TURh8IEOR8HmhYqff4klrA=;
 b=D0/6S9/1f4foTbOos4C+whXkk1SoBmEwnB4li/OHQ1yi4oLjDeUpqyZNmA8OJGpZxa
 7D6i2+ZBkQMSPjLvzMzCRZViS9b+hptxUZ4OiM9OOFTxZ6LE/JkwM+cHE3nanomvF7D2
 Nf3xwWKeui7g/+/lsfqLuehLJeu402muYCd9zkX+QD2islpQp4AolSrO51I22TAnwqT5
 MSeBfa+O7hC+xnKRLgMIG3xYpQsX1517lgWMUCOUbbrdT9FomIgHHEzqDr05BMPl+CAi
 mS7+eRzxNfPrIH2vOaCdiFF9cZ1QGbls/t+JMDfm4M7D33fD+SQRSrVwrV260gr6sM4V
 5DjQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=herbertland.com header.i=@herbertland.com
 header.a=rsa-sha256 header.s=google header.b=D0/6S9/1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v9 00/15] Introduce the
 Parser Library
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
Cc: ivecera@redhat.com, pabeni@redhat.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 horms@kernel.org, qi.z.zhang@intel.com, Jakub Kicinski <kuba@kernel.org>,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCBTZXAgNywgMjAyMyBhdCAxMjoxMOKAr1BNIFNhbXVkcmFsYSwgU3JpZGhhcgo8c3Jp
ZGhhci5zYW11ZHJhbGFAaW50ZWwuY29tPiB3cm90ZToKPgo+Cj4KPiBPbiA5LzUvMjAyMyA2OjA1
IFBNLCBUb20gSGVyYmVydCB3cm90ZToKPiA8c25pcD4KPgo+ID4gWWVzLCBjcmVhdGluZyBhbiBl
bGFib3JhdGUgbWVjaGFuaXNtIHRoYXQgaXMgb25seSB1c2FibGUgZm9yIG9uZQo+ID4gdmVuZG9y
LCBlLmcuIGEgZmVhdHVyZSBvZiBERFAsIHJlYWxseSBpc24ndCB2ZXJ5IGhlbHBmdWwuIFBhcnNp
bmcgaXMgYQo+ID4gdmVyeSBjb21tb24gb3BlcmF0aW9uIGluIHRoZSBuZXR3b3JraW5nIHN0YWNr
LCBhbmQgaWYgdGhlcmUncwo+ID4gc29tZXRoaW5nIHdpdGggdGhlIHZhbmdsb3Jpb3VzIG5hbWUg
b2YgIlBhcnNlciBMaWJyYXJ5IiByZWFsbHkgc2hvdWxkCj4gPiBzdGFydCBvZmYgYXMgYmVpbmcg
YSBjb21tb24sIGZvdW5kYXRpb25hbCwgdmVuZG9yIGFnbm9zdGljIGxpYnJhcnkgdG8KPiA+IHNv
bHZlIHRoZSBsYXJnZXIgcHJvYmxlbSBhbmQgcHJvdmlkZSB0aGUgbW9zdCB1dGlsaXR5LiBUaGUg
Y29tbW9uCj4gPiBjb21wb25lbnRzIHdvdWxkIGRlZmluZSBjb25zaXN0ZW50IHVzZXIgYW5kIGtl
cm5lbCBpbnRlcmZhY2VzIGZvcgo+ID4gcGFyc2VyIG9mZmxvYWQsIGludGVyZmFjZXMgaW50byB0
aGUgTklDIGRyaXZlcnMgd291bGQgYmUgZGVmaW5lZCB0bwo+ID4gYWxsb3cgZGlmZmVyZW50IHZl
bmRvcnMgdG8gaW1wbGVtZW50IHBhcnNlciBvZmZsb2FkIGluIHRoZWlyIGRldmljZXMuCj4KPiBJ
IHRoaW5rIG5hbWluZyB0aGlzIGZyYW1ld29yayBhcyAncGFyc2VyIGxpYnJhcnknIG1heSBoYXZl
IGNhdXNlZCB0aGUKPiBtaXN1bmRlcnN0YW5kaW5nLiBXaWxsIGZpeCBpbiB0aGUgbmV4dCByZXZp
c2lvbi4gVGhpcyBpcyBub3QgYSBnZW5lcmljCj4gbmV0d29yayBwYWNrZXQgcGFyc2VyIGFuZCBu
b3QgYXBwbGljYWJsZSB0byBrZXJuZWwgZmxvdyBkaXNzZWN0b3IuIEl0IGlzCj4gc3BlY2lmaWMg
dG8gaWNlIGFuZCBlbmFibGVzIHRoZSBkcml2ZXIgdG8gbGVhcm4gdGhlIGhhcmR3YXJlIHBhcnNl
cgo+IGNhcGFiaWxpdGllcyBmcm9tIHRoZSBERFAgcGFja2FnZSB0aGF0IGlzIGRvd25sb2FkZWQg
dG8gaGFyZHdhcmUuIFRoaXMKPiBpbmZvcm1hdGlvbiBhbG9uZyB3aXRoIHRoZSByYXcgcGFja2V0
L21hc2sgaXMgdXNlZCB0byBmaWd1cmUgb3V0IGFsbCB0aGUKPiBtZXRhZGF0YSByZXF1aXJlZCB0
byBhZGQgYSBmaWx0ZXIgcnVsZS4KClNyaWlkaGFyLAoKT2theSwgdGhlIEREUCBpbmNsdWRlcyBh
IHByb2dyYW1tYWJsZSBwYXJzZXIgdG8gc29tZSBleHRlbnQsIGFuZCB0aGVzZQpwYXRjaGVzIHN1
cHBvcnQgdGhlIGRyaXZlciBsb2dpYyB0byBzdXBwb3J0IHRoYXQgcHJvZ3JhbW1hYmxlIGhhcmR3
YXJlCnBhcnNlciBpbiBJQ0UuIEl0J3Mgc3RpbGwgdW5jbGVhciB0byBtZSBob3cgdGhlIHJlc3Qg
b2YgdGhlIHdvcmxkIHdpbGwKdXNlIHRoaXMuIFdoZW4geW91IHNheSB5b3UgdGhlIGluZm9ybWF0
aW9uICJpcyB1c2VkIHRvIGZpZ3VyZSBvdXQgYWxsCnRoZSBtZXRhZGF0YSByZXF1aXJlZCB0byBh
ZGQgYSBmaWx0ZXIgcnVsZSIsIHdobyBpcyBhZGRpbmcgdGhlc2UKZmlsdGVyIHJ1bGVzIGFuZCB3
aGF0IEFQSXMgYXJlIHRoZXkgdXNpbmc/IENvbnNpZGVyaW5nIHlvdSBtZW50aW9uCml0J3Mgbm90
IGFwcGxpY2FibGUgdG8ga2VybmVsIGZsb3cgZGlzc2VjdG9yIHRoYXQgbGVhZHMgbWUgdG8gYmVs
aWV2ZQp0aGF0IHlvdSdyZSB2aWV3aW5nIGhhcmR3YXJlIHBhcnNlciBjYXBhYmlsaXRpZXMgdG8g
YmUgaW5kZXBlbmRlbnQgb2YKdGhlIGtlcm5lbCBhbmQgbWlnaHQgZXZlbiBiZSB1c2luZyB2ZW5k
b3IgcHJvcHJpZXRhcnkgdG9vbHMgdG8gcHJvZ3JhbQp0aGUgcGFyc2VyLiBCdXQgYXMgSSBzYWlk
LCBoYXJkd2FyZSBwYXJzZXJzIGFyZSBiZWNvbWluZyBjb21tb24sIHVzZXJzCmJlbmVmaXQgaWYg
d2UgY2FuIHByb3ZpZGUgY29tbW9uIGFuZCBjb25zaXN0ZW50IHRvb2xzIHRvIHByb2dyYW0gYW5k
CnVzZSB0aGVtLgoKRm9yIGluc3RhbmNlLCB0aGUgZHJhZnQgbWVudGlvbnMgdGhlIEZsb3cgRGly
ZWN0b3IgdXNlIGNhc2UuIEhvdyBkb2VzCnRoZSB1c2VyIHByb2dyYW0gdGhlIGRldmljZSBmb3Ig
YSBuZXcgcHJvdG9jb2wgaW4gRmxvdyBEaXJlY3Rvcj8gRG8KeW91IGV4cGVjdCB0aGlzIHRvIGJl
IGRvbmUgdXNpbmcgY29tbW9uIEFQSXMsIG9yIHdvdWxkIHlvdSB1c2Ugc29tZQpjb21tb24gQVBJ
IGxpa2UgVEMgRmxvd2VyIG9mZmxvYWQuIEFuZCBub3RlIHRoYXQgd2hpbGUgRmxvdyBEaXJlY3Rv
cgptaWdodCBiZSBJbnRlbCBzcGVjaWZpYyBhbmQgbm90IHZpc2libGUgdG8gdGhlIGtlcm5lbCwg
c29tZXRoaW5nIGxpa2UKYVJGUyBpcyB2aXNpYmxlIHRvIHRoZSBrZXJuZWwgYnV0IGNvdWxkIGJl
bmVmaXQgZnJvbSBhIHByb2dyYW1tYWJsZQpoYXJkd2FyZSBwYXJzZXIgYXMgd2VsbC4gQW5kIHJl
YWxseSwgd2hlbiB5b3UgdGhpbmsgYWJvdXQsIHdoYXQgd2UKcmVhbGx5IHdhbnQgZm9yIFJTUywg
RmxvdyBESXJlY3RvciwgYW5kIGFSRlMgaXMgKmV4YWN0bHkqIGFuIG9mZmxvYWQKdGhlIGtlcm5l
bCBmbG93IGRpcmVjdG9yIGJlY2F1c2UgdGhvc2UgYXJlIGVmZmVjdGl2ZWx5IG9mZmxvYWRzIG9m
IFJQUwphbmQgUkZTIHdoaWNoIHJlbHkgb24gZmxvdyBkaXNzZWN0b3IgZm9yIHBhY2tldCBzdGVl
cmluZyBpbiB0aGUgaG9zdAooaW4gZmFjdCwgdGhlIHZlcnkgZmlyc3QgZmxvdyBkaXNzZWN0b3Ig
d2FzIGNyZWF0ZWQgZXhhY3RseSB0byBwcm9kdWNlCmFzIHBhY2tldCBoYXNoIGZvciB1c2Ugd2l0
aCBSUFMpLgoKV3J0IGZsb3cgZGlzc2VjdG9yLCB0aGUgbWlzc2luZyBwaWVjZSBpcyB0aGF0IGl0
J3Mgbm90IHVzZXIKcHJvZ3JhbW1hYmxlLCBldmVyeSB0aW1lIHdlIGFkZCBhIG5ldyBwcm90b2Nv
bCBpdCdzIGEgbWFqb3IgcGFpbiBhbmQKdGhlcmUncyBubyB3YXkgZm9yIHVzZXJzIHRvIGFkZCB0
aGVpciBvd24gY3VzdG9tIHByb3RvY29scy4gRnJhbmtseSwKaXQncyBhbHNvIHNwYWdoZXR0aSBj
b2RlIHRoYXQgaXMgcHJvbmUgdG8gYnVncyAoSSB0YWtlIGxpYmVydHkgaW4KY2FsbGluZyBpdCBz
cGFnaGV0dGkgY29kZSBiZWNhdXNlIEkgYW0gb25lIG9mIHRoZSBwYXJ0aWVzIHJlc3BvbnNpYmxl
CmZvciBjcmVhdGluZyBpdCA6LSkgKS4gV2UgYXJlIHdvcmtpbmcgdG8gY29tcGxldGVseSByZXBs
YWNlIHRoZSBmbG93CmRpc3NlY3RvciB3aXRoIGFuIGVCUEYgcHJvZ3JhbSB0byBzb2x2ZSB0aGF0
LiBJIGRvbid0IGJlbGlldmUgd2UKc2hvdWxkIGZvcmNlIGRldmljZXMgdG8gcnVuIGFuIGVCUEYg
Vk0sIHNvIGluIG9yZGVyIHRvIGRvIHBhcnNlcgpvZmZsb2FkIHdlIGNhbiBzdGFydCB3aXRoIGEg
aGlnaGVyIGxheWVyIGFic3RyYWN0aW9uIG9mIHRoZSBwYXJzZXIgaW4KYSBkZWNsYXJhdGl2ZSBy
ZXByZXNlbnRhdGlvbiAoZm9yIGluc3RhbmNlLCBzZWUgdGhlIENvbW1vbiBQYXJzZXIKTGFuZ3Vh
Z2UgSSBwcmVzZW50ZWQgYXQgbmV0ZGV2IGNvbmZlcmVuY2UpLiBHaXZlbiB0aGUgYWJzdHJhY3Rl
ZApwcm9ncmFtLCB0aGUgaWRlYSBpcyB0aGF0IGEgY29tcGlsZXIgY291bGQgcHJvZHVjZSB0aGUg
aW5zdHJ1Y3Rpb25zIHRvCnByb2dyYW0gdGhlIGhhcmR3YXJlIHBhcnNlciBpbiBhIGRldmljZSB3
aXRoIHRoZSBleGFjdCBzYW1lCmZ1bmN0aW9uYWxpdHkgdGhhdCB3ZSdkIGhhdmUgaW4gYSBwcm9n
cmFtbWFibGUga2VybmVsIGZsb3cgZGlzc2VjdG9yLgpJbiB0aGlzIHdheSwgd2UgY2FuIGFjaGll
dmUgYSBwcm9wZXIgcGFyc2VyIG9mZmxvYWQuCgpTbyBJIHRoaW5rIG9uZSBvZiB0aGUgcmVxdWly
ZW1lbnRzIGluIGhhcmR3YXJlIHBhcnNlcnMgaXMgdG8gb2ZmbG9hZApmbG93IGRpc3NlY3Rvci4g
SWYgdGhhdCBpcyB0aGUgcmVxdWlyZW1lbnQsIGRvIHlvdSB0aGluayB0aGVzZSBwYXRjaGVzCmFy
ZSBhbGlnbmVkIHdpdGggdGhhdD8KClRvbQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
