Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 168A329AC7B
	for <lists+intel-wired-lan@lfdr.de>; Tue, 27 Oct 2020 13:51:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8605867BF;
	Tue, 27 Oct 2020 12:51:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VkQUDAyL1B44; Tue, 27 Oct 2020 12:51:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6543B867B0;
	Tue, 27 Oct 2020 12:51:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D558A1BF859
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 11:48:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CF39F854FC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 11:48:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r-tDMkR31a7N for <intel-wired-lan@lists.osuosl.org>;
 Tue, 27 Oct 2020 11:48:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 598C4854F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 27 Oct 2020 11:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1603799299;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+/AgwzcCTvrWgzyfiV85FVL0zRQS/mR6Y//U0UAucMk=;
 b=cHHBGpY06Vgtaj9wBGF/kI8H1b3ne+OW2EdaKaEuAAATWiYtMkDTp7YKmAdYykSbPzr50E
 8EXUHi300pGrd2Jw7u6EfO5EMdqEtPXuUo42v2QZdQFM01nIW2/cCgS/1yszNKZ7pOS1mq
 tPsfLuQAMOxNtAM0QWv1r12Klb0vspw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-319-i2czznU2M7Ou11EETDUbFw-1; Tue, 27 Oct 2020 07:48:15 -0400
X-MC-Unique: i2czznU2M7Ou11EETDUbFw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C121186DD41;
 Tue, 27 Oct 2020 11:48:12 +0000 (UTC)
Received: from fuller.cnet (ovpn-112-2.gru2.redhat.com [10.97.112.2])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D65D55C1BB;
 Tue, 27 Oct 2020 11:48:04 +0000 (UTC)
Received: by fuller.cnet (Postfix, from userid 1000)
 id 59ADC416C894; Tue, 27 Oct 2020 08:47:39 -0300 (-03)
Date: Tue, 27 Oct 2020 08:47:39 -0300
From: Marcelo Tosatti <mtosatti@redhat.com>
To: Nitesh Narayan Lal <nitesh@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201027114739.GA11336@fuller.cnet>
References: <20201023085826.GP2611@hirez.programming.kicks-ass.net>
 <9ee77056-ef02-8696-5b96-46007e35ab00@redhat.com>
 <87ft6464jf.fsf@nanos.tec.linutronix.de>
 <20201026173012.GA377978@fuller.cnet>
 <875z6w4xt4.fsf@nanos.tec.linutronix.de>
 <86f8f667-bda6-59c4-91b7-6ba2ef55e3db@intel.com>
 <87v9ew3fzd.fsf@nanos.tec.linutronix.de>
 <85b5f53e-5be2-beea-269a-f70029bea298@intel.com>
 <87lffs3bd6.fsf@nanos.tec.linutronix.de>
 <959997ee-f393-bab0-45c0-4144c37b9185@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <959997ee-f393-bab0-45c0-4144c37b9185@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mailman-Approved-At: Tue, 27 Oct 2020 12:51:36 +0000
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
Cc: juri.lelli@redhat.com, Peter Zijlstra <peterz@infradead.org>,
 linux-pci@vger.kernel.org, sassmann@redhat.com, vincent.guittot@linaro.org,
 hch@infradead.org, mingo@redhat.com, helgaas@kernel.org,
 intel-wired-lan@lists.osuosl.org, thomas.lendacky@amd.com, lgoncalv@redhat.com,
 frederic@kernel.org, jlelli@redhat.com, Jakub Kicinski <kuba@kernel.org>,
 jiri@nvidia.com, bhelgaas@google.com, mike.marciniszyn@intel.com,
 netdev@vger.kernel.org, dennis.dalessandro@intel.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBPY3QgMjYsIDIwMjAgYXQgMDY6MjI6MjlQTSAtMDQwMCwgTml0ZXNoIE5hcmF5YW4g
TGFsIHdyb3RlOgo+IAo+IE9uIDEwLzI2LzIwIDU6NTAgUE0sIFRob21hcyBHbGVpeG5lciB3cm90
ZToKPiA+IE9uIE1vbiwgT2N0IDI2IDIwMjAgYXQgMTQ6MTEsIEphY29iIEtlbGxlciB3cm90ZToK
PiA+PiBPbiAxMC8yNi8yMDIwIDE6MTEgUE0sIFRob21hcyBHbGVpeG5lciB3cm90ZToKPiA+Pj4g
T24gTW9uLCBPY3QgMjYgMjAyMCBhdCAxMjoyMSwgSmFjb2IgS2VsbGVyIHdyb3RlOgo+ID4+Pj4g
QXJlIHRoZXJlIGRyaXZlcnMgd2hpY2ggdXNlIG1vcmUgdGhhbiBvbmUgaW50ZXJydXB0IHBlciBx
dWV1ZT8gSSBrbm93Cj4gPj4+PiBkcml2ZXJzIGhhdmUgbXVsdGlwbGUgbWFuYWdlbWVudCBpbnRl
cnJ1cHRzLi4gYW5kIEkgZ3Vlc3Mgc29tZSBkcml2ZXJzCj4gPj4+PiBkbyBjb21iaW5lZCAxIGlu
dGVycnVwdCBwZXIgcGFpciBvZiBUeC9SeC4uICBJdCdzIGFsc28gcGxhdXNpYmxlIHRvIHRvCj4g
Pj4+PiBoYXZlIG11bHRpcGxlIHF1ZXVlcyBmb3Igb25lIGludGVycnVwdCAuLiBJJ20gbm90IHN1
cmUgaG93IGEgc2luZ2xlCj4gPj4+PiBxdWV1ZSB3aXRoIG11bHRpcGxlIGludGVycnVwdHMgd291
bGQgd29yayB0aG91Z2guCj4gPj4+IEZvciBibG9jayB0aGVyZSBpcyBhbHdheXMgb25lIGludGVy
cnVwdCBwZXIgcXVldWUuIFNvbWUgTmV0d29yayBkcml2ZXJzCj4gPj4+IHNlZW0gdG8gaGF2ZSBz
ZXBlcmF0ZSBSWCBhbmQgVFggaW50ZXJydXB0cyBwZXIgcXVldWUuCj4gPj4gVGhhdCdzIHRydWUg
d2hlbiB0aGlua2luZyBvZiBUeCBhbmQgUnggYXMgYSBzaW5nbGUgcXVldWUuIEFub3RoZXIgd2F5
IHRvCj4gPj4gdGhpbmsgYWJvdXQgaXQgaXMgIm9uZSByeCBxdWV1ZSIgYW5kICJvbmUgdHggcXVl
dWUiIGVhY2ggd2l0aCB0aGVpciBvd24KPiA+PiBpbnRlcnJ1cHQuLi4KPiA+Pgo+ID4+IEV2ZW4g
aWYgdGhlcmUgYXJlIGRldmljZXMgd2hpY2ggZm9yY2UgdGhlcmUgdG8gYmUgZXhhY3RseSBxdWV1
ZSBwYWlycywKPiA+PiB5b3UgY291bGQgc3RpbGwgdGhpbmsgb2YgdGhlbSBhcyBzZXBhcmF0ZSBl
bnRpdGllcz8KPiA+IEludGVyZXN0aW5nIHRob3VnaHQuCj4gPgo+ID4gQnV0IGFzIEpha3ViIGV4
cGxhaW5lZCBuZXR3b3JraW5nIHF1ZXVlcyBhcmUgZnVuZGFtZW50YWxseSBkaWZmZXJlbnQKPiA+
IGZyb20gYmxvY2sgcXVldWVzIG9uIHRoZSBSWCBzaWRlLiBGb3IgYmxvY2sgdGhlIHJlcXVlc3Qg
aXNzdWVkIG9uIHF1ZXVlCj4gPiBYIHdpbGwgcmFpc2UgdGhlIGNvbXBsZXRlIGludGVycnVwdCBv
biBxdWV1ZSBYLgo+ID4KPiA+IEZvciBuZXR3b3JraW5nIHRoZSBUWCBzaWRlIHdpbGwgcmFpc2Ug
dGhlIFRYIGludGVycnVwdCBvbiB0aGUgcXVldWUgb24KPiA+IHdoaWNoIHRoZSBwYWNrZXQgd2Fz
IHF1ZXVlZCBvYnZpb3VzbHkgb3Igc2hvdWxkIEkgc2F5IGhvcGVmdWxseS4gOikKPiAKPiBUaGlz
IGlzIG15IGltcHJlc3Npb24gYXMgd2VsbC4KPiAKPiA+IEJ1dCBpbmNvbWluZyBwYWNrZXRzIHdp
bGwgYmUgZGlyZWN0ZWQgdG8gc29tZSByZWNlaXZlIHF1ZXVlIGJhc2VkIG9uIGEKPiA+IGhhc2gg
b3Igd2hhdGV2ZXIgY3J5c3RhbGxiYWxsIGxvZ2ljIHRoZSBmaXJtd2FyZSBkZWNpZGVkIHRvIGlt
cGxlbWVudC4KPiA+Cj4gPiBXaGljaCBtYWtlcyB0aGlzIG5vdCByZWFsbHkgc3VpdGFibGUgZm9y
IHRoZSBtYW5hZ2VkIGludGVycnVwdCBhbmQKPiA+IHNwcmVhZGluZyBhcHByb2FjaCB3aGljaCBp
cyB1c2VkIGJ5IGJsb2NrLW1xLiBIcm0uLi4KPiA+Cj4gPiBCdXQgSSBzdGlsbCB0aGluayB0aGF0
IGZvciBjdXJpbmcgdGhhdCBpc29sYXRpb24gc3R1ZmYgd2Ugd2FudCBhdCBsZWFzdAo+ID4gc29t
ZSBpbmZvcm1hdGlvbiBmcm9tIHRoZSBkcml2ZXIuIEFsdGVybmF0aXZlIHNvbHV0aW9uIHdvdWxk
IGJlIHRvIGdyYW50Cj4gPiB0aGUgYWxsb2NhdGlvbiBvZiBpbnRlcnJ1cHRzIGFuZCBxdWV1ZXMg
YW5kIGhhdmUgc29tZSBzeXNmcyBrbm9iIHRvIHNodXQKPiA+IGRvd24gcXVldWVzIGF0IHJ1bnRp
bWUuIElmIHRoYXQgc2h1dGRvd24gcmVzdWx0cyBpbiByZWxlYXNpbmcgdGhlIHF1ZXVlCj4gPiBp
bnRlcnJ1cHQgKHZpYSBmcmVlX2lycSgpKSB0aGVuIHRoZSB2ZWN0b3IgZXhoYXVzdGlvbiBwcm9i
bGVtIGdvZXMgYXdheS4KPiAKPiBJIHRoaW5rIHRoaXMgaXMgY2xvc2UgdG8gd2hhdCBJIGFuZCBN
YXJjZWxvIHdlcmUgZGlzY3Vzc2luZyBlYXJsaWVyIHRvZGF5Cj4gcHJpdmF0ZWx5Lgo+IAo+IEkg
ZG9uJ3QgdGhpbmsgdGhlcmUgaXMgY3VycmVudGx5IGEgd2F5IHRvIGNvbnRyb2wgdGhlIGVuYWJs
ZW1lbnQvZGlzYWJsZW1lbnQgb2YKPiBpbnRlcnJ1cHRzIGZyb20gdGhlIHVzZXJzcGFjZS4KCkFz
IGxvbmcgYXMgdGhlIGludGVycnVwdCBvYmV5cyB0aGUgInRyaWdnZXIgd2hlbiByZXF1ZXN0IGhh
cyBiZWVuCnBlcmZvcm1lZCBieSBsb2NhbCBDUFUiIHJ1bGUgKCMxKSAoZm9yIE1TSSB0eXBlIGlu
dGVycnVwdHMsIHdoZXJlIGRyaXZlciBhbGxvY2F0ZXMKb25lIEkvTyBpbnRlcnJ1cHQgcGVyIENQ
VSksIGRvbid0IHNlZSBhIG5lZWQgZm9yIHRoZSBpbnRlcmZhY2UuCgpGb3Igb3RoZXIgdHlwZXMg
b2YgaW50ZXJydXB0cywgaW50ZXJydXB0IGNvbnRyb2xsZXIgc2hvdWxkIGJlIHByb2dyYW1tZWQK
dG8gbm90IGluY2x1ZGUgdGhlIGlzb2xhdGVkIENQVSBvbiBpdHMgImRlc3RpbmF0aW9uIENQVSBs
aXN0Ii4KCkFib3V0IHRoZSBibG9jayBWUyBuZXR3b3JrIGRpc2N1c3Npb24sIHdoYXQgd2UgYXJl
IHRyeWluZyB0byBkbyBhdCBza2IKbGV2ZWwgKFBhb2xvIEFiZW5pIENDJ2VkLCBhdXRob3Igb2Yg
dGhlIHN1Z2dlc3Rpb24pIGlzIHRvIHVzZSBSUFMgdG8KYXZvaWQgc2ticyBmcm9tIGJlaW5nIHF1
ZXVlZCB0byBhIENQVSAob24gUlgpLCBhbmQgdG8gcXVldWUgc2ticwpvbiBob3VzZWtlZXBpbmcg
Q1BVcyBmb3IgcHJvY2Vzc2luZyAoVFgpLgoKSG93ZXZlciwgaWYgcGVyLUNQVSBpbnRlcnJ1cHRz
IGFyZSBub3QgZGlzYWJsZWQsIHRoZW4gdGhlIChmb3IgZXhhbXBsZSkKbmV0d29yayBkZXZpY2Ug
aXMgZnJlZSB0byBpbmNsdWRlIHRoZSBDUFUgaW4gaXRzIGxpc3Qgb2YgZGVzdGluYXRpb25zLgpX
aGljaCB3b3VsZCByZXF1aXJlIG9uZSB0byBzYXksIGNvbmZpZ3VyZSBSUFMgKG9yIHdoYXRldmVy
IG1lY2hhbmlzbQppcyBkaXN0cmlidXRpbmcgaW50ZXJydXB0cykuCgpIdW0sIGl0IHdvdWxkIGZl
ZWwgc2FmZXIgKHJhdGhlciB0aGFuIHRydXN0IHRoZSAjMSBydWxlIHRvIGJlIHZhbGlkCmluIGFs
bCBjYXNlcykgdG8gYXNrIHRoZSBkcml2ZXIgdG8gZGlzYWJsZSB0aGUgaW50ZXJydXB0IChhZnRl
ciBzaHV0dGluZwpkb3duIHF1ZXVlKSBmb3IgdGhhdCBwYXJ0aWN1bGFyIENQVS4KCkJUVywgVGhv
bWFzLCBzb2Z0d2FyZSBpcyBmcmVlIHRvIGNvbmZpZ3VyZSBhIHBhcnRpY3VsYXIgTVNJLVggaW50
ZXJydXB0CnRvIHBvaW50IHRvIGFueSBDUFU6CgoxMC4xMSBNRVNTQUdFIFNJR05BTExFRCBJTlRF
UlJVUFRTClRoZSBQQ0kgTG9jYWwgQnVzIFNwZWNpZmljYXRpb24sIFJldiAyLjIgKHd3dy5wY2lz
aWcuY29tKSBpbnRyb2R1Y2VzIHRoZSBjb25jZXB0IG9mIG1lc3NhZ2Ugc2lnbmFsbGVkIGludGVy
cnVwdHMuCkFzIHRoZSBzcGVjaWZpY2F0aW9uIGluZGljYXRlczoK4oCcTWVzc2FnZSBzaWduYWxs
ZWQgaW50ZXJydXB0cyAoTVNJKSBpcyBhbiBvcHRpb25hbCBmZWF0dXJlIHRoYXQgZW5hYmxlcyBQ
Q0kgZGV2aWNlcyB0byByZXF1ZXN0CnNlcnZpY2UgYnkgd3JpdGluZyBhIHN5c3RlbS1zcGVjaWZp
ZWQgbWVzc2FnZSB0byBhIHN5c3RlbS1zcGVjaWZpZWQgYWRkcmVzcyAoUENJIERXT1JEIG1lbW9y
eQp3cml0ZSB0cmFuc2FjdGlvbikuIFRoZSB0cmFuc2FjdGlvbiBhZGRyZXNzIHNwZWNpZmllcyB0
aGUgbWVzc2FnZSBkZXN0aW5hdGlvbiB3aGlsZSB0aGUgdHJhbnNhY3Rpb24KZGF0YSBzcGVjaWZp
ZXMgdGhlIG1lc3NhZ2UuIFN5c3RlbSBzb2Z0d2FyZSBpcyBleHBlY3RlZCB0byBpbml0aWFsaXpl
IHRoZSBtZXNzYWdlIGRlc3RpbmF0aW9uIGFuZAptZXNzYWdlIGR1cmluZyBkZXZpY2UgY29uZmln
dXJhdGlvbiwgYWxsb2NhdGluZyBvbmUgb3IgbW9yZSBub24tc2hhcmVkIG1lc3NhZ2VzIHRvIGVh
Y2ggTVNJCmNhcGFibGUgZnVuY3Rpb24u4oCdCgpGaWVsZHMgaW4gdGhlIE1lc3NhZ2UgQWRkcmVz
cyBSZWdpc3RlciBhcmUgYXMgZm9sbG93czoKMS4gQml0cyAzMS0yMCDigJQgVGhlc2UgYml0cyBj
b250YWluIGEgZml4ZWQgdmFsdWUgZm9yIGludGVycnVwdCBtZXNzYWdlcyAoMEZFRUgpLiBUaGlz
IHZhbHVlIGxvY2F0ZXMgaW50ZXJydXB0cyBhdAp0aGUgMS1NQnl0ZSBhcmVhIHdpdGggYSBiYXNl
IGFkZHJlc3Mgb2YgNEcg4oCTIDE4TS4gQWxsIGFjY2Vzc2VzIHRvIHRoaXMgcmVnaW9uIGFyZSBk
aXJlY3RlZCBhcyBpbnRlcnJ1cHQKbWVzc2FnZXMuIENhcmUgbXVzdCB0byBiZSB0YWtlbiB0byBl
bnN1cmUgdGhhdCBubyBvdGhlciBkZXZpY2UgY2xhaW1zIHRoZSByZWdpb24gYXMgSS9PIHNwYWNl
LgoyLiBEZXN0aW5hdGlvbiBJRCDigJQgVGhpcyBmaWVsZCBjb250YWlucyBhbiA4LWJpdCBkZXN0
aW5hdGlvbiBJRC4gSXQgaWRlbnRpZmllcyB0aGUgbWVzc2FnZeKAmXMgdGFyZ2V0IHByb2Nlc3Nv
cihzKS4KVGhlIGRlc3RpbmF0aW9uIElEIGNvcnJlc3BvbmRzIHRvIGJpdHMgNjM6NTYgb2YgdGhl
IEkvTyBBUElDIFJlZGlyZWN0aW9uIFRhYmxlIEVudHJ5IGlmIHRoZSBJT0FQSUMgaXMgdXNlZCB0
bwpkaXNwYXRjaCB0aGUgaW50ZXJydXB0IHRvIHRoZSBwcm9jZXNzb3IocykuCgotLS0KClNvIHRh
a2luZyB0aGUgZXhhbXBsZSB3aGVyZSBjb21wdXRhdGlvbiBoYXBwZW5zIHdoaWxlIGlzb2xhdGVk
IGFuZCBsYXRlcgpzdG9yZWQgdmlhIGJsb2NrIGludGVyZmFjZSwgYXJlbid0IHdlIHJlc3RyaWN0
aW5nIHRoZSB1c2FnZSBzY2VuYXJpb3MKYnkgZW5mb3JjaW5nIHRoZSAicGVyLUNQVSBxdWV1ZSBo
YXMgaW50ZXJydXB0IHBvaW50aW5nIHRvIG93bmVyIENQVSIgcnVsZT8KCj4gSSB0aGluayBpbiB0
ZXJtcyBvZiB0aGUgaWRlYSB3ZSBuZWVkIHNvbWV0aGluZyBzaW1pbGFyIHRvIHdoYXQgaTQwZSBk
b2VzLAo+IHRoYXQgaXMgc2h1dGRvd24gYWxsIElSUXMgd2hlbiBDUFUgaXMgc3VzcGVuZGVkIGFu
ZCByZXN0b3JlcyB0aGUgaW50ZXJydXB0Cj4gc2NoZW1hIHdoZW4gdGhlIENQVSBpcyBiYWNrIG9u
bGluZS4KPiAKPiBUaGUgdHdvIGtleSBkaWZmZXJlbmNlIHdpbGwgYmUgdGhhdCB0aGlzIEFQSSBu
ZWVkcyB0byBiZSBnZW5lcmljIGFuZCBhbHNvCj4gbmVlZHMgdG8gYmUgZXhwb3NlZCB0byB0aGUg
dXNlcnNwYWNlIHRocm91Z2ggc29tZXRoaW5nIGxpa2Ugc3lzZnMgYXMgeW91Cj4gaGF2ZSBtZW50
aW9uZWQuCgoKPiAKPiAtLSAKPiBUaGFua3MKPiBOaXRlc2gKPiAKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
