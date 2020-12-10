Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 136D62D6391
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 18:31:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 72910203FF;
	Thu, 10 Dec 2020 17:31:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id goWAAXBkHNyO; Thu, 10 Dec 2020 17:31:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0BECE2152E;
	Thu, 10 Dec 2020 17:30:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A7B311BF31A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:30:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9EF62877AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:30:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rkp8oawrpmQJ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 17:30:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 64D1C877A9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 17:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607621451;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Q5P/qDi7wA+rvW2gtSqVQu3jB6OGZe46xx+pWi2+9CM=;
 b=QaYokDmicXZ8ni4Dq0RpFrVQJqfpChYhr99wr+nClw6hGyHfuEmGLMIcMkfoiyo/LAuv/l
 /unLTKh+qs82E6FUDPf/bYIDqBNcgLsfcdOVYDx8yq80ITbz7f28Xppa6CadwqscK1pku2
 fpYgpbN1A7w15DILJE8N3526rn875nw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-369-fj061OEpOeyugu0E_N0B1g-1; Thu, 10 Dec 2020 12:30:43 -0500
X-MC-Unique: fj061OEpOeyugu0E_N0B1g-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 9A5E1107ACE6;
 Thu, 10 Dec 2020 17:30:40 +0000 (UTC)
Received: from carbon (unknown [10.36.110.55])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10BC71F442;
 Thu, 10 Dec 2020 17:30:24 +0000 (UTC)
Date: Thu, 10 Dec 2020 18:30:23 +0100
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Magnus Karlsson <magnus.karlsson@gmail.com>
Message-ID: <20201210183023.4b299334@carbon>
In-Reply-To: <CAJ8uoz25rtO63-4nOSV-yr8bORNbNSquiBBWiEouLs-ZUv2o=A@mail.gmail.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-2-marekx.majtyka@intel.com>
 <878sad933c.fsf@toke.dk>
 <20201204124618.GA23696@ranger.igk.intel.com>
 <048bd986-2e05-ee5b-2c03-cd8c473f6636@iogearbox.net>
 <20201207135433.41172202@carbon>
 <5fce960682c41_5a96208e4@john-XPS-13-9370.notmuch>
 <20201207230755.GB27205@ranger.igk.intel.com>
 <5fd068c75b92d_50ce20814@john-XPS-13-9370.notmuch>
 <20201209095454.GA36812@ranger.igk.intel.com>
 <20201209125223.49096d50@carbon>
 <6913010d-2fd6-6713-94e9-8f5b8ad4b708@gmail.com>
 <20201210143211.2490f7f4@carbon>
 <CAJ8uoz25rtO63-4nOSV-yr8bORNbNSquiBBWiEouLs-ZUv2o=A@mail.gmail.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Subject: Re: [Intel-wired-lan] Explaining XDP redirect bulk size design
 (Was: [PATCH v2 bpf 1/5] net: ethtool: add xdp properties flag set)
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
Cc: Maciej Fijalkowski <maciejromanfijalkowski@gmail.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, "Michael S. Tsirkin" <mst@redhat.com>,
 Network Development <netdev@vger.kernel.org>,
 Toke =?UTF-8?B?SMO4aWxhbmQtSsO4cmdlbnNlbg==?= <toke@redhat.com>,
 Alexei Starovoitov <ast@kernel.org>, Marek Majtyka <marekx.majtyka@intel.com>,
 "David S. Miller" <davem@davemloft.net>, brouer@redhat.com,
 Marek Majtyka <alardam@gmail.com>, Jonathan Lemon <jonathan.lemon@gmail.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 David Ahern <dsahern@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Frey Alfredsson <freysteinn@freysteinn.com>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>, bpf <bpf@vger.kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVGh1LCAxMCBEZWMgMjAyMCAxNToxNDoxOCArMDEwMApNYWdudXMgS2FybHNzb24gPG1hZ251
cy5rYXJsc3NvbkBnbWFpbC5jb20+IHdyb3RlOgoKPiBPbiBUaHUsIERlYyAxMCwgMjAyMCBhdCAy
OjMyIFBNIEplc3BlciBEYW5nYWFyZCBCcm91ZXIKPiA8YnJvdWVyQHJlZGhhdC5jb20+IHdyb3Rl
Ogo+ID4KPiA+IE9uIFdlZCwgOSBEZWMgMjAyMCAwODo0NDozMyAtMDcwMAo+ID4gRGF2aWQgQWhl
cm4gPGRzYWhlcm5AZ21haWwuY29tPiB3cm90ZToKPiA+ICAKPiA+ID4gT24gMTIvOS8yMCA0OjUy
IEFNLCBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIHdyb3RlOiAgCj4gPiA+ID4gQnV0IEkgaGF2ZSBy
ZWRlc2lnbmVkIHRoZSBuZG9feGRwX3htaXQgY2FsbCB0byB0YWtlIGEgYnVsayBvZiBwYWNrZXRz
Cj4gPiA+ID4gKHVwLXRvIDE2KSBzbyBpdCBzaG91bGQgbm90IGJlIGEgcHJvYmxlbSB0byBzb2x2
ZSB0aGlzIGJ5IHNoYXJpbmcKPiA+ID4gPiBUWC1xdWV1ZSBhbmQgdGFsa2luZyBhIGxvY2sgcGVy
IDE2IHBhY2tldHMuICBJIHN0aWxsIHJlY29tbWVuZCB0aGF0LAo+ID4gPiA+IGZvciBmYWxsYmFj
ayBjYXNlLCAgeW91IGFsbG9jYXRlZCBhIG51bWJlciBhIFRYLXF1ZXVlIGFuZCBkaXN0cmlidXRl
Cj4gPiA+ID4gdGhpcyBhY3Jvc3MgQ1BVcyB0byBhdm9pZCBoaXR0aW5nIGEgY29uZ2VzdGVkIGxv
Y2sgKGFib3ZlIG1lYXN1cmVtZW50cwo+ID4gPiA+IGFyZSB0aGUgb3B0aW1hbCBub24tY29uZ2Vz
dGVkIGF0b21pYyBsb2NrIG9wZXJhdGlvbikgIAo+ID4gPgo+ID4gPiBJIGhhdmUgYmVlbiBtZWFu
aW5nIHRvIGFzayB5b3Ugd2h5IDE2IGZvciB0aGUgWERQIGJhdGNoaW5nPyBJZiB0aGUKPiA+ID4g
bmV0ZGV2IGJ1ZGdldCBpcyA2NCwgd2h5IG5vdCBzb21ldGhpbmcgaGlnaGVyIGxpa2UgMzIgb3Ig
NjQ/ICAKPiA+Cj4gPiBUaGFua3MgeW91IGZvciBhc2tpbmcgYXMgdGhlcmUgYXJlIG11bHRpcGxl
IGdvb2QgcmVhc29ucyBhbmQKPiA+IGNvbnNpZGVyYXRpb24gZm9yIHRoaXMgMTYgYmF0Y2ggc2l6
ZS4gIE5vdGljZSBjcHVtYXAgaGF2ZSBiYXRjaCBzaXplIDgsCj4gPiB3aGljaCBpcyBhbHNvIGFu
IGV4cGxpY2l0IGNob2ljZS4gIEFuZCBBRl9YRFAgd2VudCBpbiB0aGUgd3JvbmcKPiA+IGRpcmVj
dGlvbiBJTUhPIGFuZCBJIHRoaW5rIGhhdmUgMjU2LiAgSSBkZXNpZ25lZCB0aGlzIHRvIGJlIGEg
Y2hvaWNlIGluCj4gPiB0aGUgbWFwIGNvZGUsIGZvciB0aGUgbGV2ZWwgb2YgYnVsa2luZyBpdCBu
ZWVkcy93YW50cy4gIAo+IAo+IEZZSSwgYXMgZmFyIGFzIEkga25vdywgdGhlcmUgaXMgbm90aGlu
ZyBpbiBBRl9YRFAgdGhhdCBzYXlzIGJ1bGtpbmcKPiBzaG91bGQgYmUgMjU2LiBUaGVyZSBpcyBh
IDI1NiBudW1iZXIgaW4gdGhlIGk0MGUgZHJpdmVyIHRoYXQgc3RhdGVzCj4gdGhlIG1heGltdW0g
bnVtYmVyIG9mIHBhY2tldHMgdG8gYmUgc2VudCB3aXRoaW4gb25lIG5hcGlfcG9sbCBsb29wLgo+
IEJ1dCB0aGlzIGlzIGp1c3QgYSBtYXhpbXVtIG51bWJlciBhbmQgb25seSBmb3IgdGhhdCBkcml2
ZXIuIChJbiBjYXNlCj4geW91IHdvbmRlciwgdGhhdCBudW1iZXIgd2FzIGluaGVyaXRlZCBmcm9t
IHRoZSBvcmlnaW5hbCBza2IgVHgKPiBpbXBsZW1lbnRhdGlvbiBpbiB0aGUgZHJpdmVyLikgCgpB
aCwgdGhhdCBleHBsYWlucyB0aGUgaXNzdWUgSSBoYXZlIG9uIHRoZSBwcm9kdWN0aW9uIHN5c3Rl
bSB0aGF0IHJ1bnMKdGhlIEVEVC1wYWNlclsyXS4gIEkgc2VlIHRoYXQgaTQwZSBmdW5jdGlvbiBp
NDBlX2NsZWFuX3R4X2lycSgpIGlnbm9yZXMKbmFwaV9idWRnZXQgYnV0IHVzZXMgaXQgb3duIGJ1
ZGdldCwgdGhhdCBkZWZhdWx0cyB0byAyNTYuICBMb29rcyBsaWtlIEkKY2FuIGFkanVzdCB0aGlz
IHZpYSBldGh0b29sIC1DIHR4LWZyYW1lcy1pcnEuICAgSSB0dXJuZWQgdGhpcyBkb3duIHRvCjY0
ICgzMiB3YXMgZ2l2aW5nIHdvcnNlIHJlc3VsdHMsIGFuZCBiZWxvdyAxNiBzeXN0ZW0gYWN0ZWQg
c3RyYW5nZSkuCgpOb3cgdGhlIGlzc3VlIGlzIGdvbmUsIHdoaWNoIHdhcyB0aGF0IGlmIFRYLURN
QSBjb21wbGV0aW9uIHdhcyBydW5uaW5nCihpNDBlX2NsZWFuX3R4X2lycSgpKSBvbiB0aGUgc2Ft
ZSBDUFUgdGhhdCBzZW5kIHBhY2tldHMgdmlhIEZRLXBhY2VyCnFkaXNjLCB0aGVuIHRoZSBwYWNp
bmcgd2FzIG5vdCBhY2N1cmF0ZSwgYW5kIHdhcyBzZW5kaW5nIHRvbyBidXJzdHkuCgpTeXN0ZW0g
aGF2ZSBhbHJlYWR5IHR1bmVkICJuZXQvY29yZS9kZXZfd2VpZ2h0IiBhbmQgUlgvVFgtYmlhcyB0
bwpyZWR1Y2UgYnVsa2luZywgYXMgdGhpcyBjYW4gaW5mbHVlbmNlIGxhdGVuY3kgYW5kIHRoZSBF
RFQtcGFjaW5nCmFjY3VyYWN5LiAoSXQgaXMgYSBtaWRkbGVib3ggYnJpZGdpbmcgVkxBTnMgYW5k
IEJQRi1FRFQgdGllbXN0YW1waW5nIGFuZApGUS1wYWNpbmcgcGFja2V0cyB0byBzb2x2ZSBidXJz
dHMgb3ZlcmZsb3dpbmcgc3dpdGNoIHBvcnRzKS4KCiAgc3VkbyBzeXNjdGwgbmV0L2NvcmUvZGV2
X3dlaWdodAogIG5ldC5jb3JlLmRldl93ZWlnaHQgPSAxCiAgbmV0LmNvcmUuZGV2X3dlaWdodF9y
eF9iaWFzID0gMzIKICBuZXQuY29yZS5kZXZfd2VpZ2h0X3R4X2JpYXMgPSAxCgpUaGlzIG5ldC5j
b3JlLmRldl93ZWlnaHRfdHhfYmlhcz0xICh0b2dldGhlciB3aXRoIGRldl93ZWlnaHQ9MSkgY2F1
c2UKcWRpc2MgdHJhbnNtaXQgYnVkZ2V0IHRvIGJlY29tZSBvbmUgcGFja2V0LCBjeWNsaW5nIHRo
cm91Z2gKTkVUX1RYX1NPRlRJUlEgd2hpY2ggY29uc3VtZXMgdGltZSBhbmQgZ2l2ZXMgYSBsaXR0
bGUgbW9yZSBwYWNpbmcgc3BhY2UKZm9yIHRoZSBwYWNrZXRzLgoKCj4gVGhlIGFjdHVhbCBiYXRj
aCBzaXplIGlzIGNvbnRyb2xsZWQgYnkKPiB0aGUgYXBwbGljYXRpb24uIElmIGl0IHB1dHMgMSBw
YWNrZXQgaW4gdGhlIFR4IHJpbmcgYW5kIGNhbGxzIHNlbmQoKSwKPiB0aGUgYmF0Y2ggc2l6ZSB3
aWxsIGJlIDEuIElmIGl0IHB1dHMgMTI4IHBhY2tldHMgaW4gdGhlIFR4IHJpbmcgYW5kCj4gY2Fs
bHMgc2VuZCgpLCB5b3UgZ2V0IGEgYmF0Y2ggc2l6ZSBvZiAxMjgsIGFuZCBzbyBvbi4gSXQgaXMg
ZmxleGlibGUsCj4gc28geW91IGNhbiB0cmFkZS1vZmYgbGF0ZW5jeSB3aXRoIHRocm91Z2hwdXQg
aW4gdGhlIHdheSB0aGUKPiBhcHBsaWNhdGlvbiBkZXNpcmVzLiBSeCBiYXRjaCBzaXplIGhhcyBh
bHNvIGJlY29tZSBmbGV4aWJsZSBub3cgd2l0aAo+IHRoZSBpbnRyb2R1Y3Rpb24gb2YgQmrDtnJu
J3MgcHJlZmVyX2J1c3lfcG9sbCBwYXRjaCBzZXQgWzFdLgo+IAo+IFsxXSBodHRwczovL2xvcmUu
a2VybmVsLm9yZy9uZXRkZXYvMjAyMDExMzAxODUyMDUuMTk2MDI5LTEtYmpvcm4udG9wZWxAZ21h
aWwuY29tLwoKVGhpcyBsb29rcyBsaWtlIGEgY29vbCB0cmljaywgdG8gZ2V0IGV2ZW4gbW9yZSBh
Y2N1cmF0ZSBwYWNrZXQgc2NoZWR1bGluZy4KCkkgcGxheWVkIHdpdGggdGhlIHR1bmluZ3MsIGFu
ZCBjb3VsZCBzZWUgY2hhbmdlZCBiZWhhdmlvciB3aXRoIG1wc3RhdCwKYnV0IGVuZGVkIHVwIHR1
bmluZyBpdCBvZmYgYWdhaW4sIGFzIEkgY291bGQgbm90IG1lYXN1cmUgYSBkaXJlY3QKY29ycmVs
YXRpb24gd2l0aCB0aGUgYnBmdHJhY2UgdG9vbHNbM10uCgoKPiA+IFRoZSBsb3cgbGV2ZWwgZXhw
bGFuYXRpb24gaXMgdGhhdCB0aGVzZSA4IGFuZCAxNiBiYXRjaCBzaXplcyBhcmUKPiA+IG9wdGlt
aXplZCB0b3dhcmRzIGNhY2hlIHNpemVzIGFuZCBJbnRlbCdzIExpbmUtRmlsbC1CdWZmZXIgKHBy
ZWZldGNoZXIKPiA+IHdpdGggMTAgZWxlbWVudHMpLiAgSSdtIGJldHRpbmcgb24gdGhhdCBtZW1v
cnkgYmFja2luZyB0aGVzZSA4IG9yIDE2Cj4gPiBwYWNrZXRzIGhhdmUgaGlnaGVyIGNoYW5jZSB0
byByZW1haW4vYmVpbmcgaW4gY2FjaGUsIGFuZCBJIGNhbiBwcmVmZXRjaAo+ID4gdGhlbSB3aXRo
b3V0IGV2aWN0aW5nIHRoZW0gZnJvbSBjYWNoZSBhZ2Fpbi4gIEluIHNvbWUgY2FzZXMgdGhlIHBv
aW50ZXIKPiA+IHRvIHRoZXNlIHBhY2tldHMgYXJlIHF1ZXVlZCBpbnRvIGEgcHRyX3JpbmcsIGFu
ZCBpdCBpcyBtb3JlIG9wdGltYWwgdG8KPiA+IHdyaXRlIGNhY2hlbGluZSBzaXplcyAxICg4IHBv
aW50ZXJzKSBvciAyICgxNiBwb2ludGVycykgaW50byB0aGUgcHRyX3JpbmcuCj4gPgo+ID4gVGhl
IGdlbmVyYWwgZXhwbGFuYXRpb24gaXMgbXkgZ29hbCB0byBkbyBidWxraW5nIHdpdGhvdXQgYWRk
aW5nIGxhdGVuY3kuCj4gPiBUaGlzIGlzIGV4cGxpY2l0bHkgc3RhdGVkIGluIG15IHByZXNlbnRh
dGlvblsxXSBhcyBvZiBGZWIgMjAxNiwgc2xpZGUgMjAuCj4gPiBTdXJlLCB5b3Uvd2UgY2FuIGxp
a2VseSBtYWtlIHRoZSBtaWNyby1iZW5jaG1hcmtzIGxvb2sgYmV0dGVyIGJ5IHVzaW5nCj4gPiA2
NCBiYXRjaCBzaXplLCBidXQgdGhhdCB3aWxsIGludHJvZHVjZSBhZGRlZCBsYXRlbmN5IGFuZCBs
aWtlbHkgc2hvb3QKPiA+IG91ci1zZWx2ZXMgaW4gdGhlIGZvb3QgZm9yIHJlYWwgd29ya2xvYWRz
LiAgV2l0aCBleHBlcmllbmNlIGZyb20KPiA+IGJ1ZmZlcmJsb2F0IGFuZCByZWFsIG5ldHdvcmtz
LCB3ZSBrbm93IHRoYXQgbWFzc2l2ZSBUWCBidWxraW5nIGhhdmUgYmFkCj4gPiBlZmZlY3RzLiAg
U3RpbGwgWERQLXJlZGlyZWN0IGRvZXMgbWFzc2l2ZSBidWxraW5nIChOSUMgZmx1c2ggaXMgYWZ0
ZXIKPiA+IGZ1bGwgNjQgYnVkZ2V0KSBhbmQgd2UgZG9uJ3QgaGF2ZSBwdXNoYmFjayBvciBhIHF1
ZXVlIG1lY2hhbmlzbSAoc28gSQo+ID4ga25vdyB3ZSBhcmUgYWxyZWFkeSBzaG9vdGluZyBvdXJz
ZWx2ZXMgaW4gdGhlIGZvb3QpIC4uLiAgRm9ydHVuYXRlbHkgd2UKPiA+IG5vdyBoYXZlIGEgUGhE
IHN0dWRlbnQgd29ya2luZyBvbiBxdWV1aW5nIGZvciBYRFAuCj4gPgo+ID4gSXQgaXMgYWxzbyBp
bXBvcnRhbnQgdG8gdW5kZXJzdGFuZCB0aGF0IHRoaXMgaXMgYW4gYWRhcHRpdmUgYnVsa2luZwo+
ID4gc2NoZW1lLCB3aGljaCBjb21lcyBmcm9tIE5BUEkuICBXZSBkb24ndCB3YWl0IGZvciBwYWNr
ZXRzIGFycml2aW5nCj4gPiBzaG9ydGx5LCB3ZSBwaWNrdXAgd2hhdCBOSUMgaGF2ZSBhdmFpbGFi
bGUsIGJ1dCBieSBvbmx5IHRha2luZyA4IG9yIDE2Cj4gPiBwYWNrZXRzIChpbnN0ZWFkIG9mIGVt
cHR5aW5nIHRoZSBlbnRpcmUgUlgtcXVldWUpLCBhbmQgdGhlbiBzcGVuZGluZwo+ID4gc29tZSB0
aW1lIHRvIHNlbmQgdGhlbSBhbG9uZywgSSdtIGhvcGluZyB0aGF0IE5JQyBjb3VsZCBoYXZlIGdv
dHRlbgo+ID4gc29tZSBtb3JlIGZyYW1lLiAgRm9yIGNwdW1hcCBhbmQgdmV0aCAoaW4tc29tZS1j
YXNlcykgdGhleSBjYW4gc3RhcnQgdG8KPiA+IGNvbnN1bWUgcGFja2V0cyBmcm9tIHRoZXNlIGJh
dGNoZXMsIGJ1dCBOSUMgZHJpdmVycyBnZXRzIFhEUF9YTUlUX0ZMVVNICj4gPiBzaWduYWwgYXQg
TkFQSS1lbmQgKHhkcF9kb19mbHVzaCkuIFN0aWxsIGRlc2lnbiBhbGxvd3MgTklDIGRyaXZlcnMg
dG8KPiA+IHVwZGF0ZSB0aGVpciBpbnRlcm5hbCBxdWV1ZSBzdGF0ZSAoYW5kIEJRTCksIGFuZCBp
ZiBpdCBnZXRzIGNsb3NlIHRvCj4gPiBmdWxsIHRoZXkgY2FuIGNob29zZSB0byBmbHVzaC9kb29y
YmVsbCB0aGUgTklDIGVhcmxpZXIuICBXaGVuIGRvaW5nCj4gPiBxdWV1aW5nIGZvciBYRFAgd2Ug
bmVlZCB0byBleHBvc2UgdGhlc2UgTklDIHF1ZXVlIHN0YXRlcywgYW5kIGhhdmluZyA0Cj4gPiBj
YWxscyB3aXRoIDE2IHBhY2tldHMgKDY0IGJ1ZGdldCkgYWxzbyBnaXZlcyB1cyBtb3JlIGNoYW5j
ZXMgdG8gZ2V0IE5JQwo+ID4gcXVldWUgc3RhdGUgaW5mbyB3aGljaCB0aGUgTklDIGFscmVhZHkg
dG91Y2guCj4gPgo+ID4KPiA+IFsxXSBodHRwczovL3Blb3BsZS5uZXRmaWx0ZXIub3JnL2hhd2sv
cHJlc2VudGF0aW9ucy9kZXZjb25mMjAxNi9uZXRfc3RhY2tfY2hhbGxlbmdlc18xMDBHX0ZlYjIw
MTYucGRmCgpbMl0gaHR0cHM6Ly9naXRodWIuY29tL25ldG9wdGltaXplci9icGYtZXhhbXBsZXMv
dHJlZS9tYXN0ZXIvdHJhZmZpYy1wYWNpbmctZWR0LwoKWzNdIGh0dHBzOi8vZ2l0aHViLmNvbS9u
ZXRvcHRpbWl6ZXIvYnBmLWV4YW1wbGVzL3RyZWUvbWFzdGVyL3RyYWZmaWMtcGFjaW5nLWVkdC9i
cGZ0cmFjZQoKCi0tIApCZXN0IHJlZ2FyZHMsCiAgSmVzcGVyIERhbmdhYXJkIEJyb3VlcgogIE1T
Yy5DUywgUHJpbmNpcGFsIEtlcm5lbCBFbmdpbmVlciBhdCBSZWQgSGF0CiAgTGlua2VkSW46IGh0
dHA6Ly93d3cubGlua2VkaW4uY29tL2luL2Jyb3VlcgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
