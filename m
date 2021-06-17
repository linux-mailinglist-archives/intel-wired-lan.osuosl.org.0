Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B603ABCF9
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 21:37:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 208BC405F5;
	Thu, 17 Jun 2021 19:37:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v7LfgSx0FxvX; Thu, 17 Jun 2021 19:37:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 411C8400FA;
	Thu, 17 Jun 2021 19:37:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 69F281BF34D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:31:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 655D3842B5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:31:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y6WXlb_pUV_E for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 19:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7B7EA842E4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 19:31:19 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9787213A1;
 Thu, 17 Jun 2021 12:31:18 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98B2F3F694;
 Thu, 17 Jun 2021 12:31:10 -0700 (PDT)
To: Nitesh Narayan Lal <nitesh@redhat.com>, linux-kernel@vger.kernel.org,
 linux-scsi@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-api@vger.kernel.org,
 linux-pci@vger.kernel.org, tglx@linutronix.de, jesse.brandeburg@intel.com,
 mtosatti@redhat.com, mingo@kernel.org, jbrandeb@kernel.org,
 frederic@kernel.org, juri.lelli@redhat.com, abelits@marvell.com,
 bhelgaas@google.com, rostedt@goodmis.org, peterz@infradead.org,
 davem@davemloft.net, akpm@linux-foundation.org, sfr@canb.auug.org.au,
 stephen@networkplumber.org, rppt@linux.vnet.ibm.com,
 chris.friesen@windriver.com, maz@kernel.org, nhorman@tuxdriver.com,
 pjwaskiewicz@gmail.com, sassmann@redhat.com, thenzl@redhat.com,
 kashyap.desai@broadcom.com, sumit.saxena@broadcom.com,
 shivasharan.srikanteshwara@broadcom.com, sathya.prakash@broadcom.com,
 sreekanth.reddy@broadcom.com, suganath-prabu.subramani@broadcom.com,
 james.smart@broadcom.com, dick.kennedy@broadcom.com, jkc@redhat.com,
 faisal.latif@intel.com, shiraz.saleem@intel.com, tariqt@nvidia.com,
 ahleihel@redhat.com, kheib@redhat.com, borisp@nvidia.com, saeedm@nvidia.com,
 benve@cisco.com, govind@gmx.com, jassisinghbrar@gmail.com,
 luobin9@huawei.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com
References: <20210617182242.8637-1-nitesh@redhat.com>
 <20210617182242.8637-5-nitesh@redhat.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ddee52a6-ac70-6e2d-b48e-e9bf38c94265@arm.com>
Date: Thu, 17 Jun 2021 20:31:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210617182242.8637-5-nitesh@redhat.com>
Content-Language: en-GB
X-Mailman-Approved-At: Thu, 17 Jun 2021 19:37:49 +0000
Subject: Re: [Intel-wired-lan] [PATCH v1 04/14] scsi: megaraid_sas: Use
 irq_set_affinity_and_hint
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gMjAyMS0wNi0xNyAxOToyMiwgTml0ZXNoIE5hcmF5YW4gTGFsIHdyb3RlOgo+IFRoZSBkcml2
ZXIgdXNlcyBpcnFfc2V0X2FmZmluaXR5X2hpbnQoKSBzcGVjaWZpY2FsbHkgZm9yIHRoZSBoaWdo
IElPUFMKPiBxdWV1ZSBpbnRlcnJ1cHRzIGZvciB0d28gcHVycG9zZXM6Cj4gCj4gLSBUbyBzZXQg
dGhlIGFmZmluaXR5X2hpbnQgd2hpY2ggaXMgY29uc3VtZWQgYnkgdGhlIHVzZXJzcGFjZSBmb3IK
PiAgwqAgZGlzdHJpYnV0aW5nIHRoZSBpbnRlcnJ1cHRzCj4gCj4gLSBUbyBhcHBseSBhbiBhZmZp
bml0eSB0aGF0IGl0IHByb3ZpZGVzCj4gCj4gVGhlIGRyaXZlciBlbmZvcmNlcyBpdHMgb3duIGFm
ZmluaXR5IHRvIGJpbmQgdGhlIGhpZ2ggSU9QUyBxdWV1ZSBpbnRlcnJ1cHRzCj4gdG8gdGhlIGxv
Y2FsIE5VTUEgbm9kZS4gSG93ZXZlciwgaXJxX3NldF9hZmZpbml0eV9oaW50KCkgYXBwbHlpbmcg
dGhlCj4gcHJvdmlkZWQgY3B1bWFzayBhcyBhbiBhZmZpbml0eSBmb3IgdGhlIGludGVycnVwdCBp
cyBhbiB1bmRvY3VtZW50ZWQgc2lkZQo+IGVmZmVjdC4KPiAKPiBUbyByZW1vdmUgdGhpcyBzaWRl
IGVmZmVjdCBpcnFfc2V0X2FmZmluaXR5X2hpbnQoKSBoYXMgYmVlbiBtYXJrZWQKPiBhcyBkZXBy
ZWNhdGVkIGFuZCBuZXcgaW50ZXJmYWNlcyBoYXZlIGJlZW4gaW50cm9kdWNlZC4gSGVuY2UsIHJl
cGxhY2UgdGhlCj4gaXJxX3NldF9hZmZpbml0eV9oaW50KCkgd2l0aCB0aGUgbmV3IGludGVyZmFj
ZSBpcnFfc2V0X2FmZmluaXR5X2FuZF9oaW50KCkKPiB0aGF0IGNsZWFybHkgaW5kaWNhdGVzIHRo
ZSBwdXJwb3NlIG9mIHRoZSB1c2FnZSBhbmQgaXMgbWVhbnQgdG8gYXBwbHkgdGhlCj4gYWZmaW5p
dHkgYW5kIHNldCB0aGUgYWZmaW5pdHlfaGludCBwb2ludGVyLiBBbHNvLCByZXBsYWNlCj4gaXJx
X3NldF9hZmZpbml0eV9oaW50KCkgd2l0aCBpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQoKSB3aGVu
IG9ubHkKPiBhZmZpbml0eV9oaW50IG5lZWRzIHRvIGJlIHVwZGF0ZWQuCj4gCj4gQ2hhbmdlIHRo
ZSBtZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfaGludCBmdW5jdGlvbiBuYW1l
IHRvCj4gbWVnYXNhc19zZXRfaGlnaF9pb3BzX3F1ZXVlX2FmZmluaXR5X2FuZF9oaW50IHRvIGNs
ZWFybHkgaW5kaWNhdGUgdGhhdCB0aGUKPiBmdW5jdGlvbiBpcyBzZXR0aW5nIGJvdGggYWZmaW5p
dHkgYW5kIGFmZmluaXR5X2hpbnQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTml0ZXNoIE5hcmF5YW4g
TGFsIDxuaXRlc2hAcmVkaGF0LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvc2NzaS9tZWdhcmFpZC9t
ZWdhcmFpZF9zYXNfYmFzZS5jIHwgMjUgKysrKysrKysrKysrKystLS0tLS0tLS0KPiAgIDEgZmls
ZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nhc19iYXNlLmMgYi9kcml2ZXJz
L3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2UuYwo+IGluZGV4IDRkNGU5ZGJlNTE5My4u
NTRmNGVhYzA5NTg5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc2NzaS9tZWdhcmFpZC9tZWdhcmFp
ZF9zYXNfYmFzZS5jCj4gKysrIGIvZHJpdmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nhc19i
YXNlLmMKPiBAQCAtNTY2Niw3ICs1NjY2LDcgQEAgbWVnYXNhc19zZXR1cF9pcnFzX21zaXgoc3Ry
dWN0IG1lZ2FzYXNfaW5zdGFuY2UgKmluc3RhbmNlLCB1OCBpc19wcm9iZSkKPiAgIAkJCQkiRmFp
bGVkIHRvIHJlZ2lzdGVyIElSUSBmb3IgdmVjdG9yICVkLlxuIiwgaSk7Cj4gICAJCQlmb3IgKGog
PSAwOyBqIDwgaTsgaisrKSB7Cj4gICAJCQkJaWYgKGogPCBpbnN0YW5jZS0+bG93X2xhdGVuY3lf
aW5kZXhfc3RhcnQpCj4gLQkJCQkJaXJxX3NldF9hZmZpbml0eV9oaW50KAo+ICsJCQkJCWlycV91
cGRhdGVfYWZmaW5pdHlfaGludCgKPiAgIAkJCQkJCXBjaV9pcnFfdmVjdG9yKHBkZXYsIGopLCBO
VUxMKTsKPiAgIAkJCQlmcmVlX2lycShwY2lfaXJxX3ZlY3RvcihwZGV2LCBqKSwKPiAgIAkJCQkJ
ICZpbnN0YW5jZS0+aXJxX2NvbnRleHRbal0pOwo+IEBAIC01NzA5LDcgKzU3MDksNyBAQCBtZWdh
c2FzX2Rlc3Ryb3lfaXJxcyhzdHJ1Y3QgbWVnYXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpIHsKPiAg
IAlpZiAoaW5zdGFuY2UtPm1zaXhfdmVjdG9ycykKPiAgIAkJZm9yIChpID0gMDsgaSA8IGluc3Rh
bmNlLT5tc2l4X3ZlY3RvcnM7IGkrKykgewo+ICAgCQkJaWYgKGkgPCBpbnN0YW5jZS0+bG93X2xh
dGVuY3lfaW5kZXhfc3RhcnQpCj4gLQkJCQlpcnFfc2V0X2FmZmluaXR5X2hpbnQoCj4gKwkJCQlp
cnFfdXBkYXRlX2FmZmluaXR5X2hpbnQoCj4gICAJCQkJICAgIHBjaV9pcnFfdmVjdG9yKGluc3Rh
bmNlLT5wZGV2LCBpKSwgTlVMTCk7Cj4gICAJCQlmcmVlX2lycShwY2lfaXJxX3ZlY3RvcihpbnN0
YW5jZS0+cGRldiwgaSksCj4gICAJCQkJICZpbnN0YW5jZS0+aXJxX2NvbnRleHRbaV0pOwo+IEBA
IC01ODQwLDIyICs1ODQwLDI3IEBAIGludCBtZWdhc2FzX2dldF9kZXZpY2VfbGlzdChzdHJ1Y3Qg
bWVnYXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpCj4gICB9Cj4gICAKPiAgIC8qKgo+IC0gKiBtZWdh
c2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfaGludCAtCVNldCBhZmZpbml0eSBoaW50
IGZvciBoaWdoIElPUFMgcXVldWVzCj4gLSAqIEBpbnN0YW5jZToJCQkJCUFkYXB0ZXIgc29mdCBz
dGF0ZQo+IC0gKiByZXR1cm46CQkJCQl2b2lkCj4gKyAqIG1lZ2FzYXNfc2V0X2hpZ2hfaW9wc19x
dWV1ZV9hZmZpbml0eV9hbmRfaGludCAtCVNldCBhZmZpbml0eSBhbmQgaGludAo+ICsgKgkJCQkJ
CQlmb3IgaGlnaCBJT1BTIHF1ZXVlcwo+ICsgKiBAaW5zdGFuY2U6CQkJCQkJQWRhcHRlciBzb2Z0
IHN0YXRlCj4gKyAqIHJldHVybjoJCQkJCQl2b2lkCj4gICAgKi8KPiAgIHN0YXRpYyBpbmxpbmUg
dm9pZAo+IC1tZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfaGludChzdHJ1Y3Qg
bWVnYXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpCj4gK21lZ2FzYXNfc2V0X2hpZ2hfaW9wc19xdWV1
ZV9hZmZpbml0eV9hbmRfaGludChzdHJ1Y3QgbWVnYXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpCj4g
ICB7Cj4gICAJaW50IGk7Cj4gKwl1bnNpZ25lZCBpbnQgaXJxOwo+ICAgCWludCBsb2NhbF9udW1h
X25vZGU7Cj4gKwljb25zdCBzdHJ1Y3QgY3B1bWFzayAqbWFzazsKPiAgIAo+ICAgCWlmIChpbnN0
YW5jZS0+cGVyZl9tb2RlID09IE1SX0JBTEFOQ0VEX1BFUkZfTU9ERSkgewo+ICAgCQlsb2NhbF9u
dW1hX25vZGUgPSBkZXZfdG9fbm9kZSgmaW5zdGFuY2UtPnBkZXYtPmRldik7CgpEcml2ZS1ieSBu
aXQ6IHlvdSBjb3VsZCBhc3NpZ24gbWFzayBpbiB0aGlzIHNjb3BlLgoKPiAtCQlmb3IgKGkgPSAw
OyBpIDwgaW5zdGFuY2UtPmxvd19sYXRlbmN5X2luZGV4X3N0YXJ0OyBpKyspCj4gLQkJCWlycV9z
ZXRfYWZmaW5pdHlfaGludChwY2lfaXJxX3ZlY3RvcihpbnN0YW5jZS0+cGRldiwgaSksCj4gLQkJ
CQljcHVtYXNrX29mX25vZGUobG9jYWxfbnVtYV9ub2RlKSk7Cj4gKwkJZm9yIChpID0gMDsgaSA8
IGluc3RhbmNlLT5sb3dfbGF0ZW5jeV9pbmRleF9zdGFydDsgaSsrKSB7Cj4gKwkJCWlycSA9IHBj
aV9pcnFfdmVjdG9yKGluc3RhbmNlLT5wZGV2LCBpKTsKPiArCQkJbWFzayA9IGNwdW1hc2tfb2Zf
bm9kZShsb2NhbF9udW1hX25vZGUpOwo+ICsJCQlpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQoaXJx
LCBtYXNrKTsKCkFuZCB0aGlzIGRvZXNuJ3Qgc2VlbSB0byBtYXRjaCB3aGF0IHRoZSBjb21taXQg
bWVzc2FnZSBzYXlzPwoKUm9iaW4uCgo+ICsJCX0KPiAgIAl9Cj4gICB9Cj4gICAKPiBAQCAtNTk0
NCw3ICs1OTQ5LDcgQEAgbWVnYXNhc19hbGxvY19pcnFfdmVjdG9ycyhzdHJ1Y3QgbWVnYXNhc19p
bnN0YW5jZSAqaW5zdGFuY2UpCj4gICAJCWluc3RhbmNlLT5tc2l4X3ZlY3RvcnMgPSAwOwo+ICAg
Cj4gICAJaWYgKGluc3RhbmNlLT5zbXBfYWZmaW5pdHlfZW5hYmxlKQo+IC0JCW1lZ2FzYXNfc2V0
X2hpZ2hfaW9wc19xdWV1ZV9hZmZpbml0eV9oaW50KGluc3RhbmNlKTsKPiArCQltZWdhc2FzX3Nl
dF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfYW5kX2hpbnQoaW5zdGFuY2UpOwo+ICAgfQo+ICAg
Cj4gICAvKioKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
