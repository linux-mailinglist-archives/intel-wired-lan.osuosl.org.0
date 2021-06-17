Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6653ABB84
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 20:24:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9FC4342266;
	Thu, 17 Jun 2021 18:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QZmis-kkDLTK; Thu, 17 Jun 2021 18:24:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B976842274;
	Thu, 17 Jun 2021 18:24:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5D401BF339
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 939E083ECE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D7KXhNcM_J_S for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 18:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DBECD83ED3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623954230;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bgx+Wd4CjmxKDJhnej4MvAUpn8O2pHaLYXMM+6os36Y=;
 b=LMAuDbKVBw8b15MJt951a9IjUNqbryKuK0X5FqhHOzxFRmwpl9MUGRJWvuQpJUXF+g4adB
 9C5QcsbGy3dT1Mzk1sD97hB2e3eLK1HDw6Q+8zs1kIPhrPDXuVSaliX6duTGLlwIldGXVt
 JFKmhY3P+bWnKPS9T5uzKyguMy17FCg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-579-D5Xm0RcAP7S56RXc_kNEWA-1; Thu, 17 Jun 2021 14:23:49 -0400
X-MC-Unique: D5Xm0RcAP7S56RXc_kNEWA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E86FF80ED8B;
 Thu, 17 Jun 2021 18:23:43 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9729760C05;
 Thu, 17 Jun 2021 18:23:31 +0000 (UTC)
From: Nitesh Narayan Lal <nitesh@redhat.com>
To: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-api@vger.kernel.org, linux-pci@vger.kernel.org, tglx@linutronix.de,
 jesse.brandeburg@intel.com, robin.murphy@arm.com, mtosatti@redhat.com,
 mingo@kernel.org, jbrandeb@kernel.org, frederic@kernel.org,
 juri.lelli@redhat.com, abelits@marvell.com, bhelgaas@google.com,
 rostedt@goodmis.org, peterz@infradead.org, davem@davemloft.net,
 akpm@linux-foundation.org, sfr@canb.auug.org.au,
 stephen@networkplumber.org, rppt@linux.vnet.ibm.com,
 chris.friesen@windriver.com, maz@kernel.org, nhorman@tuxdriver.com,
 pjwaskiewicz@gmail.com, sassmann@redhat.com, thenzl@redhat.com,
 kashyap.desai@broadcom.com, sumit.saxena@broadcom.com,
 shivasharan.srikanteshwara@broadcom.com, sathya.prakash@broadcom.com,
 sreekanth.reddy@broadcom.com, suganath-prabu.subramani@broadcom.com,
 james.smart@broadcom.com, dick.kennedy@broadcom.com, jkc@redhat.com,
 faisal.latif@intel.com, shiraz.saleem@intel.com, tariqt@nvidia.com,
 ahleihel@redhat.com, kheib@redhat.com, borisp@nvidia.com,
 saeedm@nvidia.com, benve@cisco.com, govind@gmx.com,
 jassisinghbrar@gmail.com, luobin9@huawei.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com
Date: Thu, 17 Jun 2021 14:22:33 -0400
Message-Id: <20210617182242.8637-6-nitesh@redhat.com>
In-Reply-To: <20210617182242.8637-1-nitesh@redhat.com>
References: <20210617182242.8637-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Thu, 17 Jun 2021 18:24:31 +0000
Subject: [Intel-wired-lan] [PATCH v1 05/14] scsi: mpt3sas: Use
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhlIGRyaXZlciB1c2VzIGlycV9zZXRfYWZmaW5pdHlfaGludCgpIHNwZWNpZmljYWxseSBmb3Ig
dGhlIGhpZ2ggSU9QUwpxdWV1ZSBpbnRlcnJ1cHRzIGZvciB0d28gcHVycG9zZXM6CgotIFRvIHNl
dCB0aGUgYWZmaW5pdHlfaGludCB3aGljaCBpcyBjb25zdW1lZCBieSB0aGUgdXNlcnNwYWNlIGZv
cgrCoCBkaXN0cmlidXRpbmcgdGhlIGludGVycnVwdHMKCi0gVG8gYXBwbHkgYW4gYWZmaW5pdHkg
dGhhdCBpdCBwcm92aWRlcwoKVGhlIGRyaXZlciBlbmZvcmNlcyBpdHMgb3duIGFmZmluaXR5IHRv
IGJpbmQgdGhlIGhpZ2ggSU9QUyBxdWV1ZSBpbnRlcnJ1cHRzCnRvIHRoZSBsb2NhbCBOVU1BIG5v
ZGUuIEhvd2V2ZXIsIGlycV9zZXRfYWZmaW5pdHlfaGludCgpIGFwcGx5aW5nIHRoZQpwcm92aWRl
ZCBjcHVtYXNrIGFzIGFuIGFmZmluaXR5IChpZiBub3QgTlVMTCkgZm9yIHRoZSBpbnRlcnJ1cHQg
aXMgYW4KdW5kb2N1bWVudGVkIHNpZGUgZWZmZWN0LgoKVG8gcmVtb3ZlIHRoaXMgc2lkZSBlZmZl
Y3QgaXJxX3NldF9hZmZpbml0eV9oaW50KCkgaGFzIGJlZW4gbWFya2VkCmFzIGRlcHJlY2F0ZWQg
YW5kIG5ldyBpbnRlcmZhY2VzIGhhdmUgYmVlbiBpbnRyb2R1Y2VkLiBIZW5jZSwgcmVwbGFjZSB0
aGUKaXJxX3NldF9hZmZpbml0eV9oaW50KCkgd2l0aCB0aGUgbmV3IGludGVyZmFjZSBpcnFfc2V0
X2FmZmluaXR5X2FuZF9oaW50KCkKdGhhdCBjbGVhcmx5IGluZGljYXRlcyB0aGUgcHVycG9zZSBv
ZiB0aGUgdXNhZ2UgYW5kIGlzIG1lYW50IHRvIGFwcGx5IHRoZQphZmZpbml0eSBhbmQgc2V0IHRo
ZSBhZmZpbml0eV9oaW50IHBvaW50ZXIuIEFsc28sIHJlcGxhY2UKaXJxX3NldF9hZmZpbml0eV9o
aW50KCkgd2l0aCBpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQoKSB3aGVuIG9ubHkKYWZmaW5pdHlf
aGludCBuZWVkcyB0byBiZSB1cGRhdGVkLgoKU2lnbmVkLW9mZi1ieTogTml0ZXNoIE5hcmF5YW4g
TGFsIDxuaXRlc2hAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3Njc2kvbXB0M3Nhcy9tcHQzc2Fz
X2Jhc2UuYyB8IDE1ICsrKysrKystLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9u
cygrKSwgOCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Njc2kvbXB0M3Nhcy9t
cHQzc2FzX2Jhc2UuYyBiL2RyaXZlcnMvc2NzaS9tcHQzc2FzL21wdDNzYXNfYmFzZS5jCmluZGV4
IDU3NzlmMzEzZjZmOC4uYzExMmMzMDU3N2JiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Njc2kvbXB0
M3Nhcy9tcHQzc2FzX2Jhc2UuYworKysgYi9kcml2ZXJzL3Njc2kvbXB0M3Nhcy9tcHQzc2FzX2Jh
c2UuYwpAQCAtMjk5OCw4ICsyOTk4LDggQEAgX2Jhc2VfZnJlZV9pcnEoc3RydWN0IE1QVDNTQVNf
QURBUFRFUiAqaW9jKQogCWxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShyZXBseV9xLCBuZXh0LCAm
aW9jLT5yZXBseV9xdWV1ZV9saXN0LCBsaXN0KSB7CiAJCWxpc3RfZGVsKCZyZXBseV9xLT5saXN0
KTsKIAkJaWYgKGlvYy0+c21wX2FmZmluaXR5X2VuYWJsZSkKLQkJCWlycV9zZXRfYWZmaW5pdHlf
aGludChwY2lfaXJxX3ZlY3Rvcihpb2MtPnBkZXYsCi0JCQkgICAgcmVwbHlfcS0+bXNpeF9pbmRl
eCksIE5VTEwpOworCQkJaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50KHBjaV9pcnFfdmVjdG9yKGlv
Yy0+cGRldiwKKwkJCQkJCXJlcGx5X3EtPm1zaXhfaW5kZXgpLCBOVUxMKTsKIAkJZnJlZV9pcnEo
cGNpX2lycV92ZWN0b3IoaW9jLT5wZGV2LCByZXBseV9xLT5tc2l4X2luZGV4KSwKIAkJCSByZXBs
eV9xKTsKIAkJa2ZyZWUocmVwbHlfcSk7CkBAIC0zMDU1LDE1ICszMDU1LDEzIEBAIF9iYXNlX3Jl
cXVlc3RfaXJxKHN0cnVjdCBNUFQzU0FTX0FEQVBURVIgKmlvYywgdTggaW5kZXgpCiAgKiBAaW9j
OiBwZXIgYWRhcHRlciBvYmplY3QKICAqCiAgKiBUaGUgZW5kdXNlciB3b3VsZCBuZWVkIHRvIHNl
dCB0aGUgYWZmaW5pdHkgdmlhIC9wcm9jL2lycS8jL3NtcF9hZmZpbml0eQotICoKLSAqIEl0IHdv
dWxkIG5pY2UgaWYgd2UgY291bGQgY2FsbCBpcnFfc2V0X2FmZmluaXR5LCBob3dldmVyIGl0IGlz
IG5vdAotICogYW4gZXhwb3J0ZWQgc3ltYm9sCiAgKi8KIHN0YXRpYyB2b2lkCiBfYmFzZV9hc3Np
Z25fcmVwbHlfcXVldWVzKHN0cnVjdCBNUFQzU0FTX0FEQVBURVIgKmlvYykKIHsKLQl1bnNpZ25l
ZCBpbnQgY3B1LCBucl9jcHVzLCBucl9tc2l4LCBpbmRleCA9IDA7CisJdW5zaWduZWQgaW50IGNw
dSwgbnJfY3B1cywgbnJfbXNpeCwgaW5kZXggPSAwLCBpcnE7CiAJc3RydWN0IGFkYXB0ZXJfcmVw
bHlfcXVldWUgKnJlcGx5X3E7CisJY29uc3Qgc3RydWN0IGNwdW1hc2sgKm1hc2s7CiAJaW50IGxv
Y2FsX251bWFfbm9kZTsKIAogCWlmICghX2Jhc2VfaXNfY29udHJvbGxlcl9tc2l4X2VuYWJsZWQo
aW9jKSkKQEAgLTMwOTAsOCArMzA4OCw5IEBAIF9iYXNlX2Fzc2lnbl9yZXBseV9xdWV1ZXMoc3Ry
dWN0IE1QVDNTQVNfQURBUFRFUiAqaW9jKQogCQkJbG9jYWxfbnVtYV9ub2RlID0gZGV2X3RvX25v
ZGUoJmlvYy0+cGRldi0+ZGV2KTsKIAkJCWZvciAoaW5kZXggPSAwOyBpbmRleCA8IGlvYy0+aGln
aF9pb3BzX3F1ZXVlczsKIAkJCSAgICBpbmRleCsrKSB7Ci0JCQkJaXJxX3NldF9hZmZpbml0eV9o
aW50KHBjaV9pcnFfdmVjdG9yKGlvYy0+cGRldiwKLQkJCQkgICAgaW5kZXgpLCBjcHVtYXNrX29m
X25vZGUobG9jYWxfbnVtYV9ub2RlKSk7CisJCQkJaXJxID0gcGNpX2lycV92ZWN0b3IoaW9jLT5w
ZGV2LCBpbmRleCk7CisJCQkJbWFzayA9IGNwdW1hc2tfb2Zfbm9kZShsb2NhbF9udW1hX25vZGUp
OworCQkJCWlycV9zZXRfYWZmaW5pdHlfYW5kX2hpbnQoaXJxLCBtYXNrKTsKIAkJCX0KIAkJfQog
Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
