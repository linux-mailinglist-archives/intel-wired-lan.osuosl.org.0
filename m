Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E05AE3B754E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 17:29:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 028E84029B;
	Tue, 29 Jun 2021 15:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g0Aq6HUatoAa; Tue, 29 Jun 2021 15:29:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B06784024E;
	Tue, 29 Jun 2021 15:29:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C658A1BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B4E9783955
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:29:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dz4v0Xvh3GYN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 15:29:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0501B83942
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 15:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1624980552;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=tMJGLbOPQkBBjpyqO4GycXxqoo139IXpm2o/vzlxKk0=;
 b=Otm16GxFkMAZO2QU0G4K7vtBkujKGA/4OKASlSEhqyndwYV/we+7m5SI2sAUxIJZx+aruP
 RtmQVUxiZuVv/vGXulJ8a89xu4s+UPxxC6NzB1rHiNXUQyBSdV9KtRnMb2puLmZSavaRCD
 ErWkQ7/mr8E7LaGMyZczIgLzyzNh2+M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-436-4saXpwAnM32n1JwKi0jEAw-1; Tue, 29 Jun 2021 11:29:07 -0400
X-MC-Unique: 4saXpwAnM32n1JwKi0jEAw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11E0F100CCCA;
 Tue, 29 Jun 2021 15:29:02 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 58AC2604CC;
 Tue, 29 Jun 2021 15:28:58 +0000 (UTC)
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
 jassisinghbrar@gmail.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 nilal@redhat.com, tatyana.e.nikolova@intel.com, mustafa.ismail@intel.com,
 ahs3@redhat.com, leonro@nvidia.com
Date: Tue, 29 Jun 2021 11:27:36 -0400
Message-Id: <20210629152746.2953364-5-nitesh@redhat.com>
In-Reply-To: <20210629152746.2953364-1-nitesh@redhat.com>
References: <20210629152746.2953364-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mailman-Approved-At: Tue, 29 Jun 2021 15:29:29 +0000
Subject: [Intel-wired-lan] [PATCH v2 04/14] scsi: megaraid_sas: Use
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
ZCBjcHVtYXNrIGFzIGFuIGFmZmluaXR5IGZvciB0aGUgaW50ZXJydXB0IGlzIGFuIHVuZG9jdW1l
bnRlZCBzaWRlCmVmZmVjdC4KClRvIHJlbW92ZSB0aGlzIHNpZGUgZWZmZWN0IGlycV9zZXRfYWZm
aW5pdHlfaGludCgpIGhhcyBiZWVuIG1hcmtlZAphcyBkZXByZWNhdGVkIGFuZCBuZXcgaW50ZXJm
YWNlcyBoYXZlIGJlZW4gaW50cm9kdWNlZC4gSGVuY2UsIHJlcGxhY2UgdGhlCmlycV9zZXRfYWZm
aW5pdHlfaGludCgpIHdpdGggdGhlIG5ldyBpbnRlcmZhY2UgaXJxX3NldF9hZmZpbml0eV9hbmRf
aGludCgpCnRoYXQgY2xlYXJseSBpbmRpY2F0ZXMgdGhlIHB1cnBvc2Ugb2YgdGhlIHVzYWdlIGFu
ZCBpcyBtZWFudCB0byBhcHBseSB0aGUKYWZmaW5pdHkgYW5kIHNldCB0aGUgYWZmaW5pdHlfaGlu
dCBwb2ludGVyLiBBbHNvLCByZXBsYWNlCmlycV9zZXRfYWZmaW5pdHlfaGludCgpIHdpdGggaXJx
X3VwZGF0ZV9hZmZpbml0eV9oaW50KCkgd2hlbiBvbmx5CmFmZmluaXR5X2hpbnQgbmVlZHMgdG8g
YmUgdXBkYXRlZC4KCkNoYW5nZSB0aGUgbWVnYXNhc19zZXRfaGlnaF9pb3BzX3F1ZXVlX2FmZmlu
aXR5X2hpbnQgZnVuY3Rpb24gbmFtZSB0bwptZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZm
aW5pdHlfYW5kX2hpbnQgdG8gY2xlYXJseSBpbmRpY2F0ZSB0aGF0IHRoZQpmdW5jdGlvbiBpcyBz
ZXR0aW5nIGJvdGggYWZmaW5pdHkgYW5kIGFmZmluaXR5X2hpbnQuCgpTaWduZWQtb2ZmLWJ5OiBO
aXRlc2ggTmFyYXlhbiBMYWwgPG5pdGVzaEByZWRoYXQuY29tPgotLS0KIGRyaXZlcnMvc2NzaS9t
ZWdhcmFpZC9tZWdhcmFpZF9zYXNfYmFzZS5jIHwgMjcgKysrKysrKysrKysrKy0tLS0tLS0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2UuYyBiL2RyaXZl
cnMvc2NzaS9tZWdhcmFpZC9tZWdhcmFpZF9zYXNfYmFzZS5jCmluZGV4IDRkNGU5ZGJlNTE5My4u
ZjU5Yjk5OTI1ODMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRf
c2FzX2Jhc2UuYworKysgYi9kcml2ZXJzL3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2Uu
YwpAQCAtNTY2Niw3ICs1NjY2LDcgQEAgbWVnYXNhc19zZXR1cF9pcnFzX21zaXgoc3RydWN0IG1l
Z2FzYXNfaW5zdGFuY2UgKmluc3RhbmNlLCB1OCBpc19wcm9iZSkKIAkJCQkiRmFpbGVkIHRvIHJl
Z2lzdGVyIElSUSBmb3IgdmVjdG9yICVkLlxuIiwgaSk7CiAJCQlmb3IgKGogPSAwOyBqIDwgaTsg
aisrKSB7CiAJCQkJaWYgKGogPCBpbnN0YW5jZS0+bG93X2xhdGVuY3lfaW5kZXhfc3RhcnQpCi0J
CQkJCWlycV9zZXRfYWZmaW5pdHlfaGludCgKKwkJCQkJaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50
KAogCQkJCQkJcGNpX2lycV92ZWN0b3IocGRldiwgaiksIE5VTEwpOwogCQkJCWZyZWVfaXJxKHBj
aV9pcnFfdmVjdG9yKHBkZXYsIGopLAogCQkJCQkgJmluc3RhbmNlLT5pcnFfY29udGV4dFtqXSk7
CkBAIC01NzA5LDcgKzU3MDksNyBAQCBtZWdhc2FzX2Rlc3Ryb3lfaXJxcyhzdHJ1Y3QgbWVnYXNh
c19pbnN0YW5jZSAqaW5zdGFuY2UpIHsKIAlpZiAoaW5zdGFuY2UtPm1zaXhfdmVjdG9ycykKIAkJ
Zm9yIChpID0gMDsgaSA8IGluc3RhbmNlLT5tc2l4X3ZlY3RvcnM7IGkrKykgewogCQkJaWYgKGkg
PCBpbnN0YW5jZS0+bG93X2xhdGVuY3lfaW5kZXhfc3RhcnQpCi0JCQkJaXJxX3NldF9hZmZpbml0
eV9oaW50KAorCQkJCWlycV91cGRhdGVfYWZmaW5pdHlfaGludCgKIAkJCQkgICAgcGNpX2lycV92
ZWN0b3IoaW5zdGFuY2UtPnBkZXYsIGkpLCBOVUxMKTsKIAkJCWZyZWVfaXJxKHBjaV9pcnFfdmVj
dG9yKGluc3RhbmNlLT5wZGV2LCBpKSwKIAkJCQkgJmluc3RhbmNlLT5pcnFfY29udGV4dFtpXSk7
CkBAIC01ODQwLDIyICs1ODQwLDI1IEBAIGludCBtZWdhc2FzX2dldF9kZXZpY2VfbGlzdChzdHJ1
Y3QgbWVnYXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpCiB9CiAKIC8qKgotICogbWVnYXNhc19zZXRf
aGlnaF9pb3BzX3F1ZXVlX2FmZmluaXR5X2hpbnQgLQlTZXQgYWZmaW5pdHkgaGludCBmb3IgaGln
aCBJT1BTIHF1ZXVlcwotICogQGluc3RhbmNlOgkJCQkJQWRhcHRlciBzb2Z0IHN0YXRlCi0gKiBy
ZXR1cm46CQkJCQl2b2lkCisgKiBtZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlf
YW5kX2hpbnQgLQlTZXQgYWZmaW5pdHkgYW5kIGhpbnQKKyAqCQkJCQkJCWZvciBoaWdoIElPUFMg
cXVldWVzCisgKiBAaW5zdGFuY2U6CQkJCQkJQWRhcHRlciBzb2Z0IHN0YXRlCisgKiByZXR1cm46
CQkJCQkJdm9pZAogICovCiBzdGF0aWMgaW5saW5lIHZvaWQKLW1lZ2FzYXNfc2V0X2hpZ2hfaW9w
c19xdWV1ZV9hZmZpbml0eV9oaW50KHN0cnVjdCBtZWdhc2FzX2luc3RhbmNlICppbnN0YW5jZSkK
K21lZ2FzYXNfc2V0X2hpZ2hfaW9wc19xdWV1ZV9hZmZpbml0eV9hbmRfaGludChzdHJ1Y3QgbWVn
YXNhc19pbnN0YW5jZSAqaW5zdGFuY2UpCiB7CiAJaW50IGk7Ci0JaW50IGxvY2FsX251bWFfbm9k
ZTsKKwl1bnNpZ25lZCBpbnQgaXJxOworCWNvbnN0IHN0cnVjdCBjcHVtYXNrICptYXNrOwogCiAJ
aWYgKGluc3RhbmNlLT5wZXJmX21vZGUgPT0gTVJfQkFMQU5DRURfUEVSRl9NT0RFKSB7Ci0JCWxv
Y2FsX251bWFfbm9kZSA9IGRldl90b19ub2RlKCZpbnN0YW5jZS0+cGRldi0+ZGV2KTsKKwkJbWFz
ayA9IGNwdW1hc2tfb2Zfbm9kZShkZXZfdG9fbm9kZSgmaW5zdGFuY2UtPnBkZXYtPmRldikpOwog
Ci0JCWZvciAoaSA9IDA7IGkgPCBpbnN0YW5jZS0+bG93X2xhdGVuY3lfaW5kZXhfc3RhcnQ7IGkr
KykKLQkJCWlycV9zZXRfYWZmaW5pdHlfaGludChwY2lfaXJxX3ZlY3RvcihpbnN0YW5jZS0+cGRl
diwgaSksCi0JCQkJY3B1bWFza19vZl9ub2RlKGxvY2FsX251bWFfbm9kZSkpOworCQlmb3IgKGkg
PSAwOyBpIDwgaW5zdGFuY2UtPmxvd19sYXRlbmN5X2luZGV4X3N0YXJ0OyBpKyspIHsKKwkJCWly
cSA9IHBjaV9pcnFfdmVjdG9yKGluc3RhbmNlLT5wZGV2LCBpKTsKKwkJCWlycV9zZXRfYWZmaW5p
dHlfYW5kX2hpbnQoaXJxLCBtYXNrKTsKKwkJfQogCX0KIH0KIApAQCAtNTk0NCw3ICs1OTQ3LDcg
QEAgbWVnYXNhc19hbGxvY19pcnFfdmVjdG9ycyhzdHJ1Y3QgbWVnYXNhc19pbnN0YW5jZSAqaW5z
dGFuY2UpCiAJCWluc3RhbmNlLT5tc2l4X3ZlY3RvcnMgPSAwOwogCiAJaWYgKGluc3RhbmNlLT5z
bXBfYWZmaW5pdHlfZW5hYmxlKQotCQltZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5p
dHlfaGludChpbnN0YW5jZSk7CisJCW1lZ2FzYXNfc2V0X2hpZ2hfaW9wc19xdWV1ZV9hZmZpbml0
eV9hbmRfaGludChpbnN0YW5jZSk7CiB9CiAKIC8qKgotLSAKMi4yNy4wCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGlu
ZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
