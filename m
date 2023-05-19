Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1597E70A37F
	for <lists+intel-wired-lan@lfdr.de>; Sat, 20 May 2023 01:52:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 69ED7612DE;
	Fri, 19 May 2023 23:52:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 69ED7612DE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684540323;
	bh=SluuBS/vYdrJed/xUYpWY9PXfrgpC1hDW0YIq1n/Jzk=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=hmHrzZ3cSH5Edjusm14EZq1cVyNa0x5VRScQaxBccb18B92ouGbwe+pH345upTGIh
	 BCB5ddZ31zkBjEFiUOijtjA6Daqf7DgopgrMFN1BQK6Gkeq5SZFfHHMRnpLbOC4B3c
	 MRPeh0OsnTuLL9pIMdTI4u4nylSEdpmqU/+q5wKAgclqc2Y3wufD+h0yw8o0QnBibz
	 drVzP8Ncck9kQiHZlEgdRh+Ftkdt1Gt8ZLA1yRWwoLeXT0FJBETkMpkUiulWFudNMW
	 WgA4gA4HjRVBr+w4S63r/XTnV38kkQDoGwiUBHt5eNaNAL640aRePqf/gfJENwn2pJ
	 GwQxyg2cNGQew==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qz2-_NFk8pHX; Fri, 19 May 2023 23:52:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D7F2612D8;
	Fri, 19 May 2023 23:52:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D7F2612D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39E8B1BF40A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:13:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 11C9C83C11
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:13:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 11C9C83C11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6eEUohTf8MeB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 19 May 2023 17:13:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4E6183C0E
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B4E6183C0E
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 17:13:22 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-3f4234f67feso2685e9.0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 19 May 2023 10:13:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684516401; x=1687108401;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=s6WK+xWrHQ+JTxtp2AXeRwdsSH3wHXCWRGYlZ7c1BNA=;
 b=CCqvdm0XqMT8LltKz6gJT4fInaB18ZgERoXzcIJXl/WrmYMgP8V99JIVGqHR9Y1TSk
 J7hZFJQlaVlgK6l1332TVgxz2lM7bVEYO6TCfyw/Cqrbj/pr744B+BaU5dHOe0UglI/G
 wyUSmIB/lq4KhrmPM0WqrKYmYtB6gKUne7Nt5p0UeN/Vg/+zpDnl9V+38kGaO/oM36Ik
 xXh1Joj6tSIY0ntye1npu5NA9ThKaiEQnUgxkMZJ/jMstIn1ABpQ+GRojZwo4ZRUr4bA
 5SRiKMSLm1nf7yiLnPNTpz1vNNnmlEw9zfUqUEw/xgBbo3Ctk0NRhGX6rrcrw6X7q47r
 t/jA==
X-Gm-Message-State: AC+VfDya+TDDzk1Y5czv4h0TZsYB536yPv9eZm93AHb97yn4fx3vK8JA
 GQUV88tVSOjuAINwGjhDVmMzvF29XB02wJc0G7sHIg==
X-Google-Smtp-Source: ACHHUZ5hxQ9IcqaGkyOL1r+DTQU2ZAEAdORZv/jidrV9JGcURc4fHU4i/zAWrvZE323XlSufcz9ryYZf13pgCpkdf7w=
X-Received: by 2002:a05:600c:500b:b0:3f3:3855:c5d8 with SMTP id
 n11-20020a05600c500b00b003f33855c5d8mr198993wmr.6.1684516400646; Fri, 19 May
 2023 10:13:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230508194326.482-1-emil.s.tantilov@intel.com>
 <20230512023234-mutt-send-email-mst@kernel.org>
 <6a900cd7-470a-3611-c88a-9f901c56c97f@intel.com>
 <20230518130452-mutt-send-email-mst@kernel.org>
 <dba3d773-0834-10fe-01a1-511b4dd263e5@intel.com>
 <7969d09e-2b77-c1a7-0e38-f10d61c83638@amd.com>
In-Reply-To: <7969d09e-2b77-c1a7-0e38-f10d61c83638@amd.com>
From: Willem de Bruijn <willemb@google.com>
Date: Fri, 19 May 2023 13:12:43 -0400
Message-ID: <CA+FuTSfUvSDFZ95d8urmEcRLMU6pnb_t-7OwV-dcJPU=mAEnkg@mail.gmail.com>
To: Shannon Nelson <shannon.nelson@amd.com>
X-Mailman-Approved-At: Fri, 19 May 2023 23:51:57 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1684516401; x=1687108401;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=s6WK+xWrHQ+JTxtp2AXeRwdsSH3wHXCWRGYlZ7c1BNA=;
 b=lCYt0lkUpB9s7ZkslzFYXwgknS4qqvt8nSYrarjTslt+PDhmXqKCvJe5ZtRNE8EeIA
 QdxHnN+CBBnZbvzcBnBuPKe9OuXsbf/SGVGuJsv5a3iTwb+JnvcLDTbhK29mhPdi+v2h
 nOX3PM/wy74Rz34VnWwjI+E504H58SsEZOvPT7q5VVWgK0/kTAQ3cXz3mpJfyi8PyjJj
 mpqitaTd8k+xWnME0lrTVLAiKyr0FVmu1Fw6ACfWDlIBNeKhEiVe7vdMPbENTpjs2fz6
 G8ITujx4bbbGZqWot10rNiUOV83Wu9uASVW2HcbQFwtksa7oUTkwXEDDl5WCAPmzfcKJ
 5L2Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20221208 header.b=lCYt0lkU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 00/15] Introduce Intel
 IDPF driver
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
Cc: "Orr, Michael" <michael.orr@intel.com>, pabeni@redhat.com, leon@kernel.org,
 "Michael S. Tsirkin" <mst@redhat.com>, simon.horman@corigine.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 anthony.l.nguyen@intel.com, decot@google.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBNYXkgMTksIDIwMjMgYXQgMTI6MTfigK9QTSBTaGFubm9uIE5lbHNvbiA8c2hhbm5v
bi5uZWxzb25AYW1kLmNvbT4gd3JvdGU6Cj4KPiBPbiA1LzE4LzIzIDQ6MjYgUE0sIFNhbXVkcmFs
YSwgU3JpZGhhciB3cm90ZToKPiA+IE9uIDUvMTgvMjAyMyAxMDoxMCBBTSwgTWljaGFlbCBTLiBU
c2lya2luIHdyb3RlOgo+ID4+IE9uIFRodSwgTWF5IDE4LCAyMDIzIGF0IDA5OjE5OjMxQU0gLTA3
MDAsIFNhbXVkcmFsYSwgU3JpZGhhciB3cm90ZToKPiA+Pj4KPiA+Pj4KPiA+Pj4gT24gNS8xMS8y
MDIzIDExOjM0IFBNLCBNaWNoYWVsIFMuIFRzaXJraW4gd3JvdGU6Cj4gPj4+PiBPbiBNb24sIE1h
eSAwOCwgMjAyMyBhdCAxMjo0MzoxMVBNIC0wNzAwLCBFbWlsIFRhbnRpbG92IHdyb3RlOgo+ID4+
Pj4+IFRoaXMgcGF0Y2ggc2VyaWVzIGludHJvZHVjZXMgdGhlIEludGVsIEluZnJhc3RydWN0dXJl
IERhdGEgUGF0aAo+ID4+Pj4+IEZ1bmN0aW9uCj4gPj4+Pj4gKElEUEYpIGRyaXZlci4gSXQgaXMg
dXNlZCBmb3IgYm90aCBwaHlzaWNhbCBhbmQgdmlydHVhbCBmdW5jdGlvbnMuCj4gPj4+Pj4gRXhj
ZXB0Cj4gPj4+Pj4gZm9yIHNvbWUgb2YgdGhlIGRldmljZSBvcGVyYXRpb25zIHRoZSByZXN0IG9m
IHRoZSBmdW5jdGlvbmFsaXR5IGlzIHRoZQo+ID4+Pj4+IHNhbWUgZm9yIGJvdGggUEYgYW5kIFZG
LiBJRFBGIHVzZXMgdmlydGNobmwgdmVyc2lvbjIgb3Bjb2RlcyBhbmQKPiA+Pj4+PiBzdHJ1Y3R1
cmVzIGRlZmluZWQgaW4gdGhlIHZpcnRjaG5sMiBoZWFkZXIgZmlsZSB3aGljaCBoZWxwcyB0aGUg
ZHJpdmVyCj4gPj4+Pj4gdG8gbGVhcm4gdGhlIGNhcGFiaWxpdGllcyBhbmQgcmVnaXN0ZXIgb2Zm
c2V0cyBmcm9tIHRoZSBkZXZpY2UKPiA+Pj4+PiBDb250cm9sIFBsYW5lIChDUCkgaW5zdGVhZCBv
ZiBhc3N1bWluZyB0aGUgZGVmYXVsdCB2YWx1ZXMuCj4gPj4+Pgo+ID4+Pj4gU28sIGlzIHRoaXMg
Zm9yIG1lcmdlIGluIHRoZSBuZXh0IGN5Y2xlPyAgU2hvdWxkIHRoaXMgYmUgYW4gUkZDIHJhdGhl
cj8KPiA+Pj4+IEl0IHNlZW1zIHVubGlrZWx5IHRoYXQgdGhlIElEUEYgc3BlY2lmaWNhdGlvbiB3
aWxsIGJlIGZpbmFsaXplZCBieSB0aGF0Cj4gPj4+PiB0aW1lIC0gaG93IGFyZSB5b3UgZ29pbmcg
dG8gaGFuZGxlIGFueSBzcGVjaWZpY2F0aW9uIGNoYW5nZXM/Cj4gPj4+Cj4gPj4+IFllcy4gd2Ug
d291bGQgbGlrZSB0aGlzIGRyaXZlciB0byBiZSBtZXJnZWQgaW4gdGhlIG5leHQgY3ljbGUoNi41
KS4KPiA+Pj4gQmFzZWQgb24gdGhlIGNvbW11bml0eSBmZWVkYmFjayBvbiB2MSB2ZXJzaW9uIG9m
IHRoZSBkcml2ZXIsIHdlCj4gPj4+IHJlbW92ZWQgYWxsCj4gPj4+IHJlZmVyZW5jZXMgdG8gT0FT
SVMgc3RhbmRhcmQgYW5kIGF0IHRoaXMgdGltZSB0aGlzIGlzIGFuIGludGVsIHZlbmRvcgo+ID4+
PiBkcml2ZXIuCj4gPj4+Cj4gPj4+IExpbmtzIHRvIHYxIGFuZCB2MiBkaXNjdXNzaW9uIHRocmVh
ZHMKPiA+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjMwMzI5MTQwNDA0LjE2
NDc5MjUtMS1wYXZhbi5rdW1hci5saW5nYUBpbnRlbC5jb20vCj4gPj4+IGh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL25ldGRldi8yMDIzMDQxMTAxMTM1NC4yNjE5MzU5LTEtcGF2YW4ua3VtYXIubGlu
Z2FAaW50ZWwuY29tLwo+ID4+Pgo+ID4+PiBUaGUgdjEtPnYyIGNoYW5nZSBsb2cgcmVmbGVjdHMg
dGhpcyB1cGRhdGUuCj4gPj4+IHYxIC0tPiB2MjogbGluayBbMV0KPiA+Pj4gICAqIHJlbW92ZWQg
dGhlIE9BU0lTIHJlZmVyZW5jZSBpbiB0aGUgY29tbWl0IG1lc3NhZ2UgdG8gbWFrZSBpdCBjbGVh
cgo+ID4+PiAgICAgdGhhdCB0aGlzIGlzIGFuIEludGVsIHZlbmRvciBzcGVjaWZpYyBkcml2ZXIK
PiA+Pgo+ID4+IFllcyB0aGlzIG1ha2VzIHNlbnNlLgo+ID4+Cj4gPj4KPiA+Pj4gQW55IElEUEYg
c3BlY2lmaWNhdGlvbiB1cGRhdGVzIHdvdWxkIGJlIGhhbmRsZWQgYXMgcGFydCBvZiB0aGUKPiA+
Pj4gY2hhbmdlcyB0aGF0Cj4gPj4+IHdvdWxkIGJlIHJlcXVpcmVkIHRvIG1ha2UgdGhpcyBhIGNv
bW1vbiBzdGFuZGFyZHMgZHJpdmVyLgo+ID4+Cj4gPj4KPiA+PiBTbyBteSBxdWVzdGlvbiBpcywg
d291bGQgaXQgbWFrZSBzZW5zZSB0byB1cGRhdGUgS2NvbmZpZyBhbmQgbW9kdWxlIG5hbWUKPiA+
PiB0byBiZSAiaXB1IiBvciBpZiB5b3UgcHJlZmVyICJpbnRlbC1pZHBmIiB0byBtYWtlIGl0IGNs
ZWFyIHRoaXMgaXMKPiA+PiBjdXJyZW50bHkgYW4gSW50ZWwgdmVuZG9yIHNwZWNpZmljIGRyaXZl
cj8gIEFuZCB0aGVuIHdoZW4geW91IG1ha2UgaXQgYQo+ID4+IGNvbW1vbiBzdGFuZGFyZHMgZHJp
dmVyIHJlbmFtZSBpdCB0byBpZHBmPyAgVGhlIHBvaW50IGJlaW5nIHRvIGhlbHAgbWFrZQo+ID4+
IHN1cmUgdXNlcnMgYXJlIG5vdCBjb25mdXNlZCBhYm91dCB3aGV0aGVyIHRoZXkgZ290IGEgZHJp
dmVyIHdpdGgKPiA+PiBvciB3aXRob3V0IElEUEYgdXBkYXRlcy4gSXQncyBub3QgY3JpdGljYWwg
SSBndWVzcyBidXQgc2VlbXMgbGlrZSBhIGdvb2QKPiA+PiBpZGVhLiBXRFlUPwo+ID4KPiA+IEl0
IHdvdWxkIGJlIG1vcmUgZGlzcnVwdGl2ZSB0byBjaGFuZ2UgdGhlIG5hbWUgb2YgdGhlIGRyaXZl
ci4gV2UgY2FuCj4gPiB1cGRhdGUgdGhlIHBjaSBkZXZpY2UgdGFibGUsIG1vZHVsZSBkZXNjcmlw
dGlvbiBhbmQgcG9zc2libHkgZHJpdmVyCj4gPiB2ZXJzaW9uIHdoZW4gd2UgYXJlIHJlYWR5IHRv
IG1ha2UgdGhpcyBhIHN0YW5kYXJkIGRyaXZlci4KPiA+IFNvIHdlIHdvdWxkIHByZWZlciBub3Qg
Y2hhbmdpbmcgdGhlIGRyaXZlciBuYW1lLgo+Cj4gTW9yZSBkaXNydXB0aXZlIGZvciB3aG8/Cj4K
PiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBjaGFuZ2UgdGhlIG5hbWUgb2YgdGhlIG9u
ZSBkcml2ZXIgbm93Cj4gYmVmb3JlIGEgcHJvYmxlbSBpcyBjcmVhdGVkIGluIHRoZSB0cmVlIHRo
YW4gdG8gbGVhdmUgYSBwb2ludCBvZgo+IGNvbmZ1c2lvbiBmb3IgdGhlIHJlc3Qgb2YgdGhlIGRy
aXZlcnMgdG8gY29udGVuZCB3aXRoIGluIHRoZSBmdXR1cmUuCgpUaGlzIGRpc2N1c3Npb24gaXMg
cHJlbWlzZWQgb24gdGhlIGlkZWEgdGhhdCB0aGUgZHJpdmVycyB3aWxsCmluZXZpdGFibHkgZm9y
aywgd2l0aCBhbiBJbnRlbCBkcml2ZXIgYW5kIGEgbm9uLWJhY2t3YXJkIGNvbXBhdGlibGUKc3Rh
bmRhcmRpemVkIGRyaXZlci4KCkluc3RlYWQsIEkgZXhwZWN0IHRoYXQgdGhlIGdvYWwgaXMgdGhh
dCB0aGUgZnV0dXJlIHN0YW5kYXJkaXplZCBkcml2ZXIKd2lsbCBpdGVyYXRlIGFuZCBzdXBwb3J0
IGFkZGl0aW9uYWwgZmVhdHVyZXMuIEJ1dCB0aGF0IHRoZSBleGlzdGluZwpoYXJkd2FyZSB3aWxs
IGNvbnRpbnVlIHRvIGJlIHN1cHBvcnRlZCwgaWYgcGVyaGFwcyB3aXRoIHVwZGF0ZWQKZmlybXdh
cmUuCgpJRFBGIGZyb20gdGhlIHN0YXJ0IHVzZXMgZmVhdHVyZSBuZWdvdGlhdGlvbiBvdmVyIHZp
cnRjaGFubmVsIHRvIGJlCmhpZ2hseSBjb25maWd1cmFibGUuIEEgZnV0dXJlIGRyaXZlciBtaWdo
dCBkZXByZWNhdGUgb2xkZXIgZmVhdHVyZQoodmFyaWFudHMpLCB3aGlsZSBlaXRoZXIgc3RpbGwg
Y29udGludWUgdG8gc3VwcG9ydCB0aG9zZSBvciByZXF1aXJlCmZpcm13YXJlIHVwZGF0ZXMgdG8g
bWF0Y2ggdGhlIG5ldyB2ZXJzaW9uLgoKRXZlbiBpZiB0aGUgZGV2aWNlIEFQSSB3b3VsZCBicmVh
ayBpbiBhIG5vbi1iYWNrd2FyZCBjb21wYXRpYmxlIHdheSwKdGhlIHNhbWUgZHJpdmVyIGNhbiBz
dXBwb3J0IGJvdGggdmVyc2lvbnMuIFZpcnRpbyBpcyBhbiBleGFtcGxlIG9mCnRoaXMuCgpJZiBJ
J20gd3JvbmcgYW5kIGZvciBzb21lIHJlYXNvbiB0d28gZHJpdmVycyB3b3VsZCBoYXZlIHRvIGJl
CnN1cHBvcnRlZCwgdGhlbiBJJ20gc3VyZSB3ZSBjYW4gZmlndXJlIG91dCBhIHN1ZmZpeCBvciBw
cmVmaXggdG8gdGhlCnN0YW5kYXJkIGRyaXZlciB0aGF0IHNlcGFyYXRlcyBpdCBmcm9tIHRoZSBl
eGlzdGluZyBvbmUuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
