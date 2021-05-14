Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0BE380BCA
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 May 2021 16:29:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61D6C4034C;
	Fri, 14 May 2021 14:29:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4DzkloPteADH; Fri, 14 May 2021 14:29:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C5E7D4026F;
	Fri, 14 May 2021 14:29:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3D8251BF5EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 08:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2ABF74056B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 08:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l5fY2jGPdF0H for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 May 2021 08:21:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0B21940561
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 May 2021 08:21:28 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id C728061408;
 Fri, 14 May 2021 08:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620980488;
 bh=gH2wh+Hc0GOhQOIRbo/h4JAX62sDUeKs2tmsR+5ILos=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=e4qbUbfx0hxY+yj5rwe10X7fv77kQb6ZtXwJRT57564V2F/AP6l30KEqmfnQ8Z9/m
 GbE6KTSFaLVgK/IALz8lgNCCJI09Wv6ypJxw7X8+NYsSH+qLTaA3rBVUJFbnXj6RkO
 OLP+toeaBJ59mDypgIfhUX1EfHY2OFa2Ex63sriWaBCbSg8WSO+y0qdrgc5mMfEUKi
 zoIKuKJCbIWchz7V1P1kNvQQPYr/hVEIXMXwl9v4IpEIdTp9mOKu3ZsGi5lbDjocf7
 LN9AhGRwhMXdDuYb3SF+qI1QUoGfgKM56pIxwAOv5jsDOpM5r9sAA4fr4BFVLy6RmQ
 IhAi7M7Jw2dRw==
Date: Fri, 14 May 2021 10:21:18 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20210514102118.1b71bec3@coco.lan>
In-Reply-To: <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
References: <cover.1620823573.git.mchehab+huawei@kernel.org>
 <d2fed242fbe200706b8d23a53512f0311d900297.camel@infradead.org>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 14 May 2021 14:29:00 +0000
Subject: Re: [Intel-wired-lan] [PATCH v2 00/40] Use ASCII subset instead of
 UTF-8 alternate symbols
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
Cc: alsa-devel@alsa-project.org, kvm@vger.kernel.org,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>, linux-iio@vger.kernel.org,
 linux-pci@vger.kernel.org, dri-devel@lists.freedesktop.org,
 keyrings@vger.kernel.org, linux-sgx@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org,
 linux-acpi@vger.kernel.org, Mali DP Maintainers <malidp@foss.arm.com>,
 linux-input@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-ext4@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-media@vger.kernel.org, linux-pm@vger.kernel.org,
 coresight@lists.linaro.org, rcu@vger.kernel.org,
 mjpeg-users@lists.sourceforge.net, linux-arm-kernel@lists.infradead.org,
 linux-edac@vger.kernel.org, linux-hwmon@vger.kernel.org,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-integrity@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RW0gV2VkLCAxMiBNYXkgMjAyMSAxODowNzowNCArMDEwMApEYXZpZCBXb29kaG91c2UgPGR3bXcy
QGluZnJhZGVhZC5vcmc+IGVzY3JldmV1OgoKPiBPbiBXZWQsIDIwMjEtMDUtMTIgYXQgMTQ6NTAg
KzAyMDAsIE1hdXJvIENhcnZhbGhvIENoZWhhYiB3cm90ZToKPiA+IFN1Y2ggY29udmVyc2lvbiB0
b29scyAtIHBsdXMgc29tZSB0ZXh0IGVkaXRvciBsaWtlIExpYnJlT2ZmaWNlICBvciBzaW1pbGFy
ICAtIGhhdmUKPiA+IGEgc2V0IG9mIHJ1bGVzIHRoYXQgdHVybnMgc29tZSB0eXBlZCBBU0NJSSBj
aGFyYWN0ZXJzIGludG8gVVRGLTggYWx0ZXJuYXRpdmVzLAo+ID4gZm9yIGluc3RhbmNlIGNvbnZl
cnRpbmcgY29tbWFzIGludG8gY3VybHkgY29tbWFzIGFuZCBhZGRpbmcgbm9uLWJyZWFrYWJsZQo+
ID4gc3BhY2VzLiBBbGwgb2YgdGhvc2UgYXJlIG1lYW50IHRvIHByb2R1Y2UgYmV0dGVyIHJlc3Vs
dHMgd2hlbiB0aGUgdGV4dCBpcwo+ID4gZGlzcGxheWVkIGluIEhUTUwgb3IgUERGIGZvcm1hdHMu
ICAKPiAKPiBBbmQgZG9uJ3Qgd2UgcmVuZGVyIG91ciBkb2N1bWVudGF0aW9uIGludG8gSFRNTCBv
ciBQREYgZm9ybWF0cz8gCgpZZXMuCgo+IEFyZQo+IHNvbWUgb2YgdGhvc2Ugbm9uLWJyZWFraW5n
IHNwYWNlcyBub3QgYWN0dWFsbHkgKnVzZWZ1bCogZm9yIHRoZWlyCj4gaW50ZW5kZWQgcHVycG9z
ZT8KCk5vLgoKVGhlIHRoaW5nIGlzOiBub24tYnJlYWtpbmcgc3BhY2UgY2FuIGNhdXNlIGEgbG90
IG9mIHByb2JsZW1zLgoKV2UgZXZlbiBoYWQgdG8gZGlzYWJsZSBTcGhpbnggdXNhZ2Ugb2Ygbm9u
LWJyZWFraW5nIHNwYWNlIGZvcgpQREYgb3V0cHV0cywgYXMgdGhpcyB3YXMgY2F1c2luZyBiYWQg
TGFUZVgvUERGIG91dHB1dHMuCgpTZWUsIGNvbW1pdDogM2I0Yzk2MzI0M2IxICgiZG9jczogY29u
Zi5weTogYWRqdXN0IHRoZSBMYVRlWCBkb2N1bWVudCBvdXRwdXQiKQoKVGhlIGFmb3JlIG1lbnRp
b25lZCBwYXRjaCBkaXNhYmxlcyBTcGhpbnggZGVmYXVsdCBiZWhhdmlvciBvZgp1c2luZyBOT04t
QlJFQUtBQkxFIFNQQUNFIG9uIGxpdGVyYWwgYmxvY2tzIGFuZCBzdHJpbmdzLCB1c2luZyB0aGlz
CnNwZWNpYWwgc2V0dGluZzogInBhcnNlZGxpdGVyYWx3cmFwcz10cnVlIi4KCldoZW4gTk9OLUJS
RUFLQUJMRSBTUEFDRSB3ZXJlIHVzZWQgb24gUERGIG91dHB1dHMsIHNldmVyYWwgcGFydHMgb2Yg
CnRoZSBtZWRpYSB1QVBJIGRvY3Mgd2VyZSB2aW9sYXRpbmcgdGhlIGRvY3VtZW50IG1hcmdpbnMg
YnkgZmFyLApjYXVzaW5nIHRleHRzIHRvIGJlIHRydW5jYXRlZC4KClNvLCBwbGVhc2UgKipkb24n
dCBhZGQgTk9OLUJSRUFLQUJMRSBTUEFDRSoqLCB1bmxlc3MgeW91IHRlc3QKKGFuZCBrZWVwIHRl
c3RpbmcgaXQgZnJvbSB0aW1lIHRvIHRpbWUpIGlmIG91dHB1dHMgb24gYWxsCmZvcm1hdHMgYXJl
IHByb3Blcmx5IHN1cHBvcnRpbmcgaXQgb24gZGlmZmVyZW50IFNwaGlueCB2ZXJzaW9ucy4KCi0K
CkFsc28sIG1vc3Qgb2YgdGhvc2UgY2FtZSBmcm9tIGNvbnZlcnNpb24gdG9vbHMsIHRvZ2V0aGVy
IHdpdGggb3RoZXIKZWNjZW50cmljaXRpZXMsIGxpa2UgdGhlIHVzYWdlIG9mIFUrRkVGRiAoQk9N
KSBjaGFyYWN0ZXIgYXQgdGhlCnN0YXJ0IG9mIHNvbWUgZG9jdW1lbnRzLiBUaGUgcmVtYWluaW5n
IG9uZXMgc2VlbSB0byBjYW1lIGZyb20gCmN1dC1hbmQtcGFzdGUuCgpGb3IgaW5zdGFuY2UsICBi
aWJsaW9ncmFwaGljIHJlZmVyZW5jZXMgKHRoZXJlIGFyZSBhIGNvdXBsZSBvZgp0aG9zZSBvbiBt
ZWRpYSkgc29tZXRpbWVzIGhhdmUgTk9OLUJSRUFLQUJMRSBTUEFDRS4gSSdtIHByZXR0eQpzdXJl
IHRoYXQgdGhvc2UgY2FtZSBmcm9tIGN1dC1hbmQtcGFzdGluZyB0aGUgZG9jdW1lbnQgdGl0bGVz
CmZyb20gdGhlaXIgbmFtZXMgYXQgdGhlIG9yaWdpbmFsIFBERiBkb2N1bWVudHMgb3Igd2ViIHBh
Z2VzIHRoYXQKYXJlIHJlZmVyZW5jZWQuCgo+ID4gV2hpbGUgaXQgaXMgcGVyZmVjdGx5IGZpbmUg
dG8gdXNlIFVURi04IGNoYXJhY3RlcnMgaW4gTGludXgsIGFuZCBzcGVjaWFsbHkgYXQKPiA+IHRo
ZSBkb2N1bWVudGF0aW9uLCAgaXQgaXMgYmV0dGVyIHRvICBzdGljayB0byB0aGUgQVNDSUkgc3Vi
c2V0ICBvbiBzdWNoCj4gPiBwYXJ0aWN1bGFyIGNhc2UsICBkdWUgdG8gYSBjb3VwbGUgb2YgcmVh
c29uczoKPiA+IAo+ID4gMS4gaXQgbWFrZXMgbGlmZSBlYXNpZXIgZm9yIHRvb2xzIGxpa2UgZ3Jl
cDsgIAo+IAo+IEJhcmVseSwgYXMgbm90ZWQsIGJlY2F1c2Ugb2YgdGhpbmdzIGxpa2UgbGluZSBm
ZWVkcy4KCllvdSBjYW4gdXNlIGdyZXAgd2l0aCAiLXoiIHRvIHNlZWsgZm9yIG11bHRpLWxpbmUg
c3RyaW5ncygqKSwgTGlrZToKCgkkIGdyZXAgLVB6bCAnZ3JhY2UgcGVyaW9kIHN0YXJ0ZWQsXHMq
dGhlbicgJChmaW5kIERvY3VtZW50YXRpb24vIC10eXBlIGYpCglEb2N1bWVudGF0aW9uL1JDVS9E
ZXNpZ24vRGF0YS1TdHJ1Y3R1cmVzL0RhdGEtU3RydWN0dXJlcy5yc3QKCigqKSBVbmZvcnR1bmF0
ZWx5LCB3aGlsZSAiZ2l0IGdyZXAiIGFsc28gaGFzIGEgIi16IiBmbGFnLCBpdAogICAgc2VlbXMg
dGhhdCB0aGlzIGlzIChjdXJyZW50bHk/KSBicm9rZW4gd2l0aCByZWdhcmRzIG9mIGhhbmRsaW5n
IG11bHRpbGluZXM6CgoJJCBnaXQgZ3JlcCAtUHpsICdncmFjZSBwZXJpb2Qgc3RhcnRlZCxccyp0
aGVuJwoJJAoKPiA+IDIuIHRoZXkgZWFzaWVyIHRvIGVkaXQgd2l0aCB0aGUgc29tZSBjb21tb25s
eSB1c2VkIHRleHQvc291cmNlCj4gPiAgICBjb2RlIGVkaXRvcnMuICAKPiAKPiBUaGF0IGlzIG5v
bnNlbnNlLiBBbnkgYnV0IHRoZSBtb3N0IGJyb2tlbiBhbmQvb3IgYW5hY2hyb25pc3RpYwo+IGVu
dmlyb25tZW50cyBhbmQgZWRpdG9ycyB3aWxsIGJlIGp1c3QgZmluZS4KCk5vdCByZWFsbHkuCgpJ
IGRvIHVzZSBhIGxvdCBvZiBVVEYtOCBoZXJlLCBhcyBJIHR5cGUgdGV4dHMgaW4gUG9ydHVndWVz
ZSwgYnV0IEkgcmVseQpvbiB0aGUgVVMtaW50bCBrZXlib2FyZCBzZXR0aW5ncywgdGhhdCBhbGxv
dyBtZSB0byB0eXBlIGFzICInYSIgZm9yIMOhLgpIb3dldmVyLCB0aGVyZSdzIG5vIHNob3J0Y3V0
IGZvciBub24tTGF0aW4gVVRGLWNvZGVzLCBhcyBmYXIgYXMgSSBrbm93LgoKU28sIGlmIHdvdWxk
IG5lZWQgdG8gdHlwZSBhIGN1cmx5IGNvbW1hIG9uIHRoZSB0ZXh0IGVkaXRvcnMgSSBub3JtYWxs
eSAKdXNlIGZvciBkZXZlbG9wbWVudCAodmltLCBuYW5vLCBrYXRlKSwgSSB3b3VsZCBuZWVkIHRv
IGN1dC1hbmQtcGFzdGUKaXQgZnJvbSBzb21ld2hlcmVbMV0uCgpbMV0gSWYgSSBoYXZlIGEgdGFi
bGUgd2l0aCBVVEYtOCBjb2RlcyBoYW5keSwgSSBjb3VsZCB0eXBlIHRoZSBVVEYtOCAKICAgIG51
bWJlciBtYW51YWxseS4uLiBIb3dldmVyLCBpdCBzZWVtcyB0aGF0IHRoaXMgaXMgY3VycmVudGx5
IGJyb2tlbiAKICAgIGF0IGxlYXN0IG9uIEZlZG9yYSAzMyAod2l0aCBNYXRlIERlc2t0b3AgYW5k
IFVTIGludGwga2V5Ym9hcmQgd2l0aCAKICAgIGRlYWQga2V5cykuCgogICAgSGVyZSwgPENUUkw+
PFNISUZUPlUgaXMgbm90IHdvcmtpbmcuIE5vIGlkZWEgd2h5LiBJIGhhdmVuJ3QgCiAgICB0ZXN0
IGl0IGZvciAqeWVhcnMqLCBhcyBJIGRpbid0IHNlZSBhbnkgcmVhc29uIHdoeSBJIHdvdWxkCiAg
ICBuZWVkIHRvIHR5cGUgVVRGLTggY2hhcmFjdGVycyBieSBudW1iZXJzIHVudGlsIHdlIHN0YXJ0
ZWQKICAgIHRoaXMgdGhyZWFkLgogCkluIHByYWN0aWNlLCBvbiB0aGUgdmVyeSByYXJlIGNhc2Vz
IHdoZXJlIEkgbmVlZGVkIHRvIHdyaXRlCm5vbi1MYXRpbiB1dGYtOCBjaGFycyAobWF5YmUgb25j
ZSBpbiBhIHllYXIgb3Igc28sIExpa2Ugd2hlbiBJCndvdWxkIG5lZWQgdG8gdXNlIGEgR3JlZWsg
bGV0dGVyIG9yIHNvbWUgd2VpcmQgc3ltYm9sKSwgdGhlcmUgY2hhbmdlcwphcmUgaGlnaCB0aGF0
IEkgd291bGRuJ3QgcmVtZW1iZXIgaXRzIFVURi04IGNvZGUuCgpTbywgSWYgSSBuZWVkIHRvIHNw
ZW5kIHRpbWUgdG8gc2VlayBmb3IgYW4gc3BlY2lmaWMgc3ltYm9sLCBhZnRlcgpmaW5kaW5nIGl0
LCBJIGp1c3QgY3V0LWFuZC1wYXN0ZSBpdC4KCkJ1dCBldmVuIGluIHRoZSBiZXN0IGNhc2Ugc2Nl
bmFyaW8gd2hlcmUgSSBrbm93IHRoZSBVVEYtOCBhbmQKPENUUkw+PFNISUZUPlUgd29ya3MsIGlm
IEkgd2FudGVkIHRvIHVzZSwgZm9yIGluc3RhbmNlLCBhIGN1cmx5CmNvbW1hLCB0aGUga2V5c3Ry
b2tlIHNlcXVlbmNlIHdvdWxkIGJlOgoKCTxDVFJMPjxTSElGVD5VMjAxY3NvbWUgc3RyaW5nPENU
Ukw+PFNISUZUPlUyMDFkCgpUaGF0J3MgYSBsb3QgaGFyZGVyIHRoYW4gdHlwaW5nIGFuZCBoYXMg
YSBoaWdoZXIgY2hhbmNlcyBvZgptaXN0YWtlbmx5IGFkZCBhIHdyb25nIHN5bWJvbCB0aGFuIGp1
c3QgdHlwaW5nOgoKCSJzb21lIHN0cmluZyIKCktub3dpbmcgdGhhdCBib3RoIHdpbGwgcHJvZHVj
ZSAqZXhhY3RseSogdGhlIHNhbWUgb3V0cHV0LCB3aHkKc2hvdWxkIEkgYm90aGVyIGRvaW5nIGl0
IHRoZSBoYXJkIHdheT8KCi0KCk5vdywgSSdtIG5vdCBhcmd1aW5nIHRoYXQgeW91IGNhbid0IHVz
ZSB3aGF0ZXZlciBVVEYtOCBzeW1ib2wgeW91CndhbnQgb24geW91ciBkb2NzLiBJJ20ganVzdCBz
YXlpbmcgdGhhdCwgbm93IHRoYXQgdGhlIGNvbnZlcnNpb24gCmlzIG92ZXIgYW5kIGEgbG90IG9m
IGRvY3VtZW50cyBlbmRlZCBnZXR0aW5nIHNvbWUgVVRGLTggY2hhcmFjdGVycwpieSBhY2NpZGVu
dCwgaXQgaXMgdGltZSBmb3IgYSBjbGVhbnVwLgoKVGhhbmtzLApNYXVybwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
