Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AC97CE299
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Oct 2023 18:20:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98F0241895;
	Wed, 18 Oct 2023 16:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98F0241895
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697646024;
	bh=gbsVYWiY6kMcCv2eowkVJPYh1V8KHTWb/UaBiXo9Zj0=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XgjSkDAxiF3ko20KfJZZOlQGTAPGX/ikIIHUVrK/nl0q6To7MwMHSY7wBf6gCGH3V
	 Mkaa+0oaL76SRXDKtIUU59HgpZezF5Gy9kU0QROnub0cxrxDWEdCewq7vD5TsnGgMI
	 CBWW+16BPuxUJMpBKl7SEBm49eikuXbrwezwM+wi1zKeDRE5XvU4eUqq+4NrtQKPnP
	 wvUIhzsg4d6a3DTeWIexSPqycnTuqy6w8MJwOLaHbhBYivpQy1l2u6cB16LJb++Sw3
	 Qv945kU4xxN8N8yJWVlUfOuiGVYrDujZtWmnRTwoevQgSXJQ+oDOU/dymMKnsjMJuN
	 GX7sMb/vfm3qA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HwPh3O22szAM; Wed, 18 Oct 2023 16:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 36B2E41902;
	Wed, 18 Oct 2023 16:20:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 36B2E41902
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4C3CF1BF5A3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 16:20:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2FB1C41895
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 16:20:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2FB1C41895
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EHgVV8hPbe5u for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Oct 2023 16:20:15 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com
 [IPv6:2607:f8b0:4864:20::b2a])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 838944011F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 16:20:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 838944011F
Received: by mail-yb1-xb2a.google.com with SMTP id
 3f1490d57ef6-d9ad90e1038so7612106276.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Oct 2023 09:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697646014; x=1698250814;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5L0ftx8gbLC+xr2pL7y3oGFwZgyV4cm0SgTFI25QzVw=;
 b=XG8xWQOq6h+i+0DFtwMyNVAVo8zQvN+/i+CoYWCCNGsQLwhPGnlCYVOqEu1/IxA7+L
 r2SssGTBnhmLks9vk2EjtdSKebP6mpPcZts8a9TsXJy4ccj9ucjgWJtpJbXVr6wNDr8V
 tw4grHNdjeJPriq0hbpdNAs2DmNzzQB/XIW75p6YnvBGhYFhG617i+p9sK0p7WQ+8MsS
 pE6Izc60HTmFP8HBmaK2Cs5AEWs7P3XdjVpXEySDfEOm4IkOYNX/bONLAp+aQg6+DPh7
 EAM/sIK4o7xxyr2AVjGnDbHoTNjdLMPaNaZ3yHf5eYf+s4giR4Zhl8HmwrVv/8JVcPmA
 pXJQ==
X-Gm-Message-State: AOJu0YxoIi+5Y6MdcgZjACh0VSpwk2qA7sVnavI3o8UtLJSH5d/LD3u8
 8ygAsZehhvdN06oq233kdG8IXt5WQKBoWVzYw9Y=
X-Google-Smtp-Source: AGHT+IFjjYZkrXWdeKcUaLTuaPe4tFQWuJ/yaL9u2gDs+qgC4Ebk83MvyMHkPAPd8vqIYG6js+mqy4mojHTsTM2SKMw=
X-Received: by 2002:a25:f56:0:b0:d9b:90bf:e74b with SMTP id
 83-20020a250f56000000b00d9b90bfe74bmr5775931ybp.7.1697646014247; Wed, 18 Oct
 2023 09:20:14 -0700 (PDT)
MIME-Version: 1.0
References: <20231012060115.107183-1-hayatake396@gmail.com>
 <20231016152343.1fc7c7be@kernel.org>
 <CADFiAcKOKiTXFXs-e=WotnQwhLB2ycbBovqS2YCk9hvK_RH2uQ@mail.gmail.com>
 <CADFiAcLiAcyqaOTsRZHex8g-wSBQjCzt_0SBtBaW3CJHz9afug@mail.gmail.com>
 <CADFiAcLvrpm+HGotr=UWiqyLGG-Bp1vf1E7bwKH_-MTCc84Jjw@mail.gmail.com>
 <ZS-WjVVaoBXqdZgB@nataraja>
In-Reply-To: <ZS-WjVVaoBXqdZgB@nataraja>
From: takeru hayasaka <hayatake396@gmail.com>
Date: Thu, 19 Oct 2023 01:20:03 +0900
Message-ID: <CADFiAcJYEdieGA6gFme26KqZA1A7UhKqDaY-jVDz1QL+gUkXRQ@mail.gmail.com>
To: Harald Welte <laforge@gnumonks.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697646014; x=1698250814; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5L0ftx8gbLC+xr2pL7y3oGFwZgyV4cm0SgTFI25QzVw=;
 b=NPuW9YEnUUXlSIN2LYHet/o0zVnLwMpDZG695ilp0n6cRjyC5+3dUGmMQ9lPjH31Pq
 KWn469OEahANnHbCoAx4+DDmcCI7NXmlQGh7fy3eNAlCtRQCef56ZFQ95ntbjyN5I4or
 g+TrHKlBNQur/2XrkZyPrG+R3DLgnk12LHlyJOnC1McGJAbdODS0CZB6du6Ah+p5xeCg
 CmdOQc8zSN8CTtKMpTCy2zJq6LvzioWTMgTfPs84++j6AvTdDytIFRzbtd+agrcwRAOC
 m+MkHsM2vUqDzSfpvN066baF4FQc+Hgd6YR/XybQN/k8EahWGpR+pT8SjN5lCDI5q8v1
 XyNA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=NPuW9YEn
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
 intel-wired-lan@lists.osuosl.org, osmocom-net-gprs@lists.osmocom.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Pablo Neira Ayuso <pablo@netfilter.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgSGFyYWxkLXNhbiBhbmQgYWxsLgoKVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3IGFuZCBjb21t
ZW50IQoKPiBTbyBvbmx5IGluIGNhc2UgdGhlIHVzZXIgaW50ZW50aW9uYWxseSBjb25maWd1cmVz
IHRoZWlyIG5ldHdvcmsgdG8gdXNlCj4gdGhlIHNhbWUgSVAgYWRkcmVzcyBmb3IgR1RQLUMgYW5k
IEdUUC1VIHRyYWZmaWMgb25lIHdpbGwgbmVlZCB0byBzdGFydAo+IGRpc3Rpbmd1aXNoaW5nIEdU
UC1DIGFuZCBHVFAtVSBvbiBvbmUgaG9zdC9OSUMgd2l0aCB0aGUgUlNTIG1lY2hhbmlzbToKPiBT
dGVlciB0aGUgR1RQLUMgdHJhZmZpYyB0byB0aGUgY29udHJvbCBwbGFuZSBpbnN0YW5jZSBvbiBv
bmUgQ1BVIGFuZAo+IHNwcmVhZCB0aGUgR1RQLVUgdHJhZmZpYyB2aWEgaGFzaCBmdW5jdGlvbiB0
byBtdWx0aXBsZSBvdGhlcgo+IHF1ZXVlcy9DUFVzLiAgSSBwZXJzb25hbGx5IHRoaW5rIGl0J3Mg
c2hvcnQtc2lnaHRlZCB0byB1c2UgaWRlbnRpY2FsIElQcwo+IGZvciBjb250cm9sIGFuZCB1c2Vy
IHBsYW5lLCBhcyBpdCBtZWFucyB5b3UgY2FuIG5ldmVyIHNjYWxlIG91dCB0bwo+IG11bHRpcGxl
IG1hY2hpbmVzIHdpdGhvdXQgaW50cm9kdWNpbmcgc29tZSBraW5kIG9mIGRlZGljYXRlZCBsb2Fk
Cj4gYmFsYW5jZXIgaW4gZnJvbnQuICBCdXQgYXNzdW1pbmcgc29tZSBwZW9wbGUgc3RpbGwgd2Fu
dCB0byBkbyBpdCB0aGF0Cj4gd2F5OiBZZXMsIHRoZW4geW91IG5lZWQgdGhlIGZlYXR1cmUgdG8g
c3BsaXQgR1RQLUMgZm9ybSBHVFAtVSB2aWEgUlNTIHRvCj4gc2NhbGUgd2VsbC4KCkkgZG9uJ3Qg
ZGVueSB0aGF0IHVzaW5nIHRoZSBzYW1lIElQIGlzIHNob3J0LXNpZ2h0ZWQuIEhvd2V2ZXIsIGlu
CmVudmlyb25tZW50cyBzdWNoIGFzIFByaXZhdGUgNUcgYW5kIFByaXZhdGUgTFRFLCBpdCBpcyBw
b3NzaWJsZSB0aGF0IGEKc21hbGwgbW9iaWxlIGNvcmUgT1NTIChlLmcuLCBOZXh0RVBDLCBGcmVl
NUdDLCBldGMuKSBpcyBwbGFjZWQuIEV2ZW4KaWYgdGhlIGFkZHJlc3NlcyBhcmUgc2VwYXJhdGVk
LCBwcm9jZXNzaW5nIG9uIHRoZSBzYW1lIGNvbXB1dGVyCmluc3RhbmNlIGlzIGEgcG9zc2libGUg
c2NlbmFyaW8sIHNvIHRoZXJlIGFyZSBwcmFjdGljYWwgdXNlIGNhc2VzLgoKPiBhZ3JlZWQuICBU
aG91Z2ggSSdtIG5vdCBlbnRpcmVseSBzdXJlIG9uZSB3b3VsZCB1c3VhbGx5IHdhbnQgdG8gdHJl
YXQgdjQKPiBkaWZmZXJlbnQgZnJvbSB2Ni4gIEknZCBhc3N1bWUgdGhleSB3b3VsZCB1c3VhbGx5
IGJvdGggZm9sbG93IHRoZSBzYW1lCj4gUlNTIHNjaGVtZT8KCkluZGVlZCwgeW91IG1pZ2h0IHdh
bnQgdGhlbSB0byBiZSB0cmVhdGVkIGluIHRoZSBzYW1lIHdheS4KQnV0IHRoaXMgZm9sbG93cyB0
aGUgZXhpc3RpbmcgZGVzaWduIG9mIEV0aHRvb2wuCkluIGZhY3QsIGZvcm1hdHMgbGlrZSB0Y3A0
LCB0Y3A2LCBldGMuLi4gd2l0aCB0aGUgTDMgdmVyc2lvbiBhcHBlbmRlZCwKYXJlIGdpdmVuLCBh
bmQgdGhlIGV4aXN0aW5nIGltcGxlbWVudGF0aW9uIG9mIEV0aHRvb2wgaXMgZGVzY3JpYmVkIGlu
CnRoZSBmb3JtYXQgb2YgSVB2NHw2ICsgTDQuIEkgZG9u4oCZdCBrbm93IHdoeSB0aGUgZXhpc3Rp
bmcKaW1wbGVtZW50YXRpb24gaXMgZGl2aWRlZCBpbnRvIElQdjQgYW5kIHY2LgoKPiBEb24ndCB3
b3JyeSwgeW91IHdlcmUgdmVyeSBjbGVhciBpbiB0aGlzIGUtbWFpbC4KClRoYW5rIHlvdSBmb3Ig
eW91ciBraW5kIGNvbW1lbnQgOikKCj4gVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUuICBBcyBz
dGF0ZWQsIEkgdGhpbmsgaXQgd291bGQgYmUgYmVzdCB0byBoYXZlCj4gdGhlc2Ugb3Igc29tZSBv
dGhlciBzb21lIGJyaWVmIGNvbW1lbnRzIGFib3V0IHRoZSBkaWZmZXJlbnQgZmxvdyB0eXBlcwo+
IGluIHRoZSBzb3VyY2UgY29kZSAoYW5kIGVzcGVjaWFsbHkgdGhlIGRvY3VtZW50YXRpb24pIG9m
IGV0aHRvb2wuCgpVbmRlcnN0b29kLiBJ4oCZbSB0aGlua2luZyBvZiB3cml0aW5nIGEgZGVmaW5p
dGlvbiBpbiB0aGUgRXRodG9vbCBoZWFkZXIKYWJvdXQgdGhpcyBmbG93IGluIHRoZSBuZXh0IHZl
cnNpb24gb2YgdGhlIHBhdGNoIDopCgo+IEJhc2VkIG9uIHlvdXIgZXhwbGFuYXRpb24sIEkgYWdy
ZWUgdGhhdCBpbmRlZWQgdGhvc2UgYXJlIGFsbCBkaWZmZXJlbnQKPiBmbG93IHR5cGVzIHRoYXQg
b2NjdXIgaW4gcmVhbC1saWZlIG9uIFBHVy9VUEYgYW5kIG90aGVyIDNHUFAgbmV0d29yawo+IGVs
ZW1lbnRzL2Z1bmN0aW9ucy4gIEkgY2FuIGFsc28gdmVyeSB3ZWxsIGltYWdpbmUgdGhhdCB0aGVy
ZSBhcmUgdXNlCj4gY2FzZXMgdG8gc3RlZXIgYWxsIG9mIHRob3NlIHNlcGFyYXRlbHksIGluY2x1
ZGluZyB0aGUgRUggYW5kIFVML0RMIHR5cGVzCj4geW91IG1lbnRpb25lZC4KClRoYW5rcy4gSSdt
IGdsYWQgeW91IHVuZGVyc3Rvb2QuIEkgYXBwcmVjaWF0ZSB5b3VyIHJldmlldyBhbmQgY29tbWVu
dHMuCgpJJ3ZlIGJlZW4gYWJsZSB0byBvcmdhbml6ZSB2YXJpb3VzIGNvbW1lbnRzIGFuZCBJIHRo
aW5rIHlvdSd2ZQp1bmRlcnN0b29kIHdoYXQgaXMgb3BlcmF0ZWQgYnkgdGhlIHBhdGNoIEkgc2Vu
dC4KCk5vdywgaGVyZSwgSeKAmWQgbGlrZSB0byBwcm9wb3NlIHR3byBwb2xpY2llcyBmb3IgdGhl
IG5leHQgdmVyc2lvbiBvZiB0aGUgcGF0Y2guCgoxLiBLZWVwIHRoaXMgcGF0Y2ggYXMgaXMgYW5k
IHdyaXRlIHRoZSBuZWNlc3Nhcnkgc3VwcGxlbWVudGFyeQpjb21tZW50cyAob2YgY291cnNlLCBu
aXRzIGZpeCB3aWxsIGJlIGRvbmUpLgpUaGUgZ29vZCB0aGluZyBhYm91dCB0aGlzIGlzIHRoYXQg
aXQgY2FuIGhhbmRsZSBkZXRhaWxlZCB1c2UgY2FzZXMgKGFzCkhhcmFsZC1zYW4gdW5kZXJzdG9v
ZCkKClRoZXJlIG1pZ2h0IGJlIHNvbWV0aGluZyBtb3JlIHBsZWFzYW50IHRoYW4gZXhwZWN0ZWQg
dXNlIGNhc2VzLiBUaGUKYmFkIHRoaW5nIGlzIHRoZSBtdWx0aXR1ZGUgb2YgZmxvdyBmb3JtYXRz
LiBDb25zaWRlcmluZyA2RywgaXQgbWF5CmluY3JlYXNlIGEgYml0IG1vcmUuCgoyLkxpbWl0IHRo
ZSByeC1mbG93LWhhc2ggZmxvdyB0eXBlIHRvIGd0cHU0fDYgYW5kIGd0cGM0fDYsIGFuZCByZXdy
aXRlCnRvIGltcGxpY2l0bHkgZXhlY3V0ZSB0aGUgcHJldmlvdXMgZnVuY3Rpb24uCndlIHdpbGwg
YWRkIGNvbW1lbnRzIChUaGVyZSB3aWxsIGJlIGZld2VyIGNvbW1lbnRzIHRoYW4gcGxhbiAxKS4K
CkluIG90aGVyIHdvcmRzLCBpbiBJbnRlbCBJY2UsIHRoZSBwcm9wb3NhbCBoYXMgdGhlIGZvbGxv
d2luZyBzZW1hbnRpY3MuCmd0cHU0fDY6IEdUUFVfVig0fDYpX0ZMT1cgKyBHVFBVX0VIX1YoNHw2
KV9GTE9XCmd0cGM0fDY6IEdUUENfVig0fDYpX0ZMT1cgKyBHVFBDX1RFSURfVig0fDYpX0ZMT1cK
ClRoZSBnb29kIHRoaW5nIGlzIHRoYXQgaXQgc2VlbXMgZWFzeSBmb3IgdXNlcnMgdG8gdXNlLCBh
bmQgdGhlIGZvcm1hdApvZiB0aGUgR1RQLXJlbGF0ZWQgZmxvdyBpcyBsZXNzIGxpa2VseSB0byBp
bmNyZWFzZSBvciBkZWNyZWFzZSBpbiB0aGUKZnV0dXJlLgpUaGUgYmFkIHRoaW5nIGlzIHRoYXQg
aXQgbWF5IG5vdCBiZSBhYmxlIHRvIGhhbmRsZSBkZXRhaWxlZCB1c2UgY2FzZXMuCgpQbGVhc2Ug
bGV0IG1lIGtub3cgd2hpY2ggb25lLCAxIG9yIDIsIHlvdSBwcmVmZXIuCkFsc28sIEkgd291bGQg
YmUgaGFwcHkgaWYgdGhlcmUgaXMgYW55IGZ1cnRoZXIgZmVlZGJhY2shCgpUaGFua3MKCjIwMjPl
ubQxMOaciDE45pelKOawtCkgMTc6MjYgSGFyYWxkIFdlbHRlIDxsYWZvcmdlQGdudW1vbmtzLm9y
Zz46Cj4KPiBIaSBUYWtlcnUsCj4KPiBPbiBXZWQsIE9jdCAxOCwgMjAyMyBhdCAwMTo0OTowOEFN
ICswOTAwLCB0YWtlcnUgaGF5YXNha2Egd3JvdGU6Cj4gPiBJJ20gbm90IHZlcnkgcHJvZmljaWVu
dCBpbiBFbmdsaXNoLCBzbyBJJ20gd29ycmllZCB3aGV0aGVyIEkgY2FuCj4gPiBleHBsYWluIGl0
IHdlbGwuCj4KPiBEb24ndCB3b3JyeSwgeW91IHdlcmUgdmVyeSBjbGVhciBpbiB0aGlzIGUtbWFp
bC4KPgo+ID4gVGhlcmVmb3JlLCBJIHdpbGwgdHJ5IHRvIGJyaWVmbHkgZXhwbGFpbiB0aGUgZmxv
dyBhbmQgd2hhdCBraW5kIG9mCj4gPiBjYXNlcyB0aGVzZSBhcmUgaW4gYSBzdHJhaWdodGZvcndh
cmQgbWFubmVyLgo+Cj4gVGhhbmtzIGZvciB0YWtpbmcgdGhlIHRpbWUuICBBcyBzdGF0ZWQsIEkg
dGhpbmsgaXQgd291bGQgYmUgYmVzdCB0byBoYXZlCj4gdGhlc2Ugb3Igc29tZSBvdGhlciBzb21l
IGJyaWVmIGNvbW1lbnRzIGFib3V0IHRoZSBkaWZmZXJlbnQgZmxvdyB0eXBlcwo+IGluIHRoZSBz
b3VyY2UgY29kZSAoYW5kIGVzcGVjaWFsbHkgdGhlIGRvY3VtZW50YXRpb24pIG9mIGV0aHRvb2wu
Cj4KPiBCYXNlZCBvbiB5b3VyIGV4cGxhbmF0aW9uLCBJIGFncmVlIHRoYXQgaW5kZWVkIHRob3Nl
IGFyZSBhbGwgZGlmZmVyZW50Cj4gZmxvdyB0eXBlcyB0aGF0IG9jY3VyIGluIHJlYWwtbGlmZSBv
biBQR1cvVVBGIGFuZCBvdGhlciAzR1BQIG5ldHdvcmsKPiBlbGVtZW50cy9mdW5jdGlvbnMuICBJ
IGNhbiBhbHNvIHZlcnkgd2VsbCBpbWFnaW5lIHRoYXQgdGhlcmUgYXJlIHVzZQo+IGNhc2VzIHRv
IHN0ZWVyIGFsbCBvZiB0aG9zZSBzZXBhcmF0ZWx5LCBpbmNsdWRpbmcgdGhlIEVIIGFuZCBVTC9E
TCB0eXBlcwo+IHlvdSBtZW50aW9uZWQuCj4KPiBTbyBJJ20gc3VwcG9yaW5nIHlvdXIgcGF0Y2gg
d2l0aCBhbGwgaXRzIG1hbnkgZGlmZmVyZW50IGZsb3cgdHlwZXMgZm9yIFJTUy4KPgo+IFRoYW5r
cywKPiAgICAgICAgIEhhcmFsZAo+IC0tCj4gLSBIYXJhbGQgV2VsdGUgPGxhZm9yZ2VAZ251bW9u
a3Mub3JnPiAgICAgICAgICBodHRwczovL2xhZm9yZ2UuZ251bW9ua3Mub3JnLwo+ID09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KPiAiUHJpdmFjeSBpbiByZXNpZGVudGlhbCBhcHBsaWNhdGlvbnMgaXMgYSBk
ZXNpcmFibGUgbWFya2V0aW5nIG9wdGlvbi4iCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAoRVRTSSBFTiAzMDAgMTc1LTcgQ2guIEE2KQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4g
bWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1
b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
