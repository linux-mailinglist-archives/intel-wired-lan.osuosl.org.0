Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2BD3D0549
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jul 2021 01:28:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FDFB402E9;
	Tue, 20 Jul 2021 23:28:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J1-q2aZsaPCv; Tue, 20 Jul 2021 23:28:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5B8640207;
	Tue, 20 Jul 2021 23:28:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 549951BF32A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 23:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4F4606082E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 23:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j50x_hCseQ0Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jul 2021 23:27:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8365F6062E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jul 2021 23:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626823628;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=LcUE+Ykyp7TUpfxrTLCdo1t8nVQ8beSKO1+WFe5MKv4=;
 b=KOrbf3CKKW6xq1AyHc7nN3rXjF7r1brIJIfIlo1u6YAZQejJJ/xNS++ytXIOJGyjgHtb5+
 Kv+gbRKWMjI+JmxHJKFV/muCrt/cpk0f8hYQ3JRKImWurKsNAzdc+bc9LtBXGAPSEgxinG
 G4uuls1TP8iPeYaWHAEpSqHd1MiIDX0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-nIanXxHFPK-XpK55HIJldA-1; Tue, 20 Jul 2021 19:27:06 -0400
X-MC-Unique: nIanXxHFPK-XpK55HIJldA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EACCB343CF;
 Tue, 20 Jul 2021 23:27:00 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D9E6369CB4;
 Tue, 20 Jul 2021 23:26:52 +0000 (UTC)
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
 ahs3@redhat.com, leonro@nvidia.com, chandrakanth.patil@broadcom.com,
 bjorn.andersson@linaro.org, chunkuang.hu@kernel.org,
 yongqiang.niu@mediatek.com, baolin.wang7@gmail.com, poros@redhat.com,
 minlei@redhat.com, emilne@redhat.com, jejb@linux.ibm.com,
 martin.petersen@oracle.com, _govind@gmx.com, kabel@kernel.org,
 viresh.kumar@linaro.org, Tushar.Khandelwal@arm.com, kuba@kernel.org
Date: Tue, 20 Jul 2021 19:26:14 -0400
Message-Id: <20210720232624.1493424-5-nitesh@redhat.com>
In-Reply-To: <20210720232624.1493424-1-nitesh@redhat.com>
References: <20210720232624.1493424-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=nitesh@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: [Intel-wired-lan] [PATCH v5 04/14] scsi: megaraid_sas: Use
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
aGludCgpCndoZXJlIHRoZSBwcm92aWRlZCBtYXNrIG5lZWRzIHRvIGJlIGFwcGxpZWQgYXMgdGhl
IGFmZmluaXR5IGFuZAphZmZpbml0eV9oaW50IHBvaW50ZXIgbmVlZHMgdG8gYmUgc2V0IGFuZCBy
ZXBsYWNlIHdpdGgKaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50KCkgd2hlcmUgb25seSBhZmZpbml0
eV9oaW50IG5lZWRzIHRvIGJlIHVwZGF0ZWQuCgpDaGFuZ2UgdGhlIG1lZ2FzYXNfc2V0X2hpZ2hf
aW9wc19xdWV1ZV9hZmZpbml0eV9oaW50IGZ1bmN0aW9uIG5hbWUgdG8KbWVnYXNhc19zZXRfaGln
aF9pb3BzX3F1ZXVlX2FmZmluaXR5X2FuZF9oaW50IHRvIGNsZWFybHkgaW5kaWNhdGUgdGhhdCB0
aGUKZnVuY3Rpb24gaXMgc2V0dGluZyBib3RoIGFmZmluaXR5IGFuZCBhZmZpbml0eV9oaW50LgoK
U2lnbmVkLW9mZi1ieTogTml0ZXNoIE5hcmF5YW4gTGFsIDxuaXRlc2hAcmVkaGF0LmNvbT4KLS0t
CiBkcml2ZXJzL3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2UuYyB8IDI3ICsrKysrKysr
KysrKystLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTUgaW5zZXJ0aW9ucygrKSwgMTIgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nh
c19iYXNlLmMgYi9kcml2ZXJzL3Njc2kvbWVnYXJhaWQvbWVnYXJhaWRfc2FzX2Jhc2UuYwppbmRl
eCBlYzEwYjI0OTczMTAuLjgzNmExYjEzZjcxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zY3NpL21l
Z2FyYWlkL21lZ2FyYWlkX3Nhc19iYXNlLmMKKysrIGIvZHJpdmVycy9zY3NpL21lZ2FyYWlkL21l
Z2FyYWlkX3Nhc19iYXNlLmMKQEAgLTU3MTgsNyArNTcxOCw3IEBAIG1lZ2FzYXNfc2V0dXBfaXJx
c19tc2l4KHN0cnVjdCBtZWdhc2FzX2luc3RhbmNlICppbnN0YW5jZSwgdTggaXNfcHJvYmUpCiAJ
CQkJIkZhaWxlZCB0byByZWdpc3RlciBJUlEgZm9yIHZlY3RvciAlZC5cbiIsIGkpOwogCQkJZm9y
IChqID0gMDsgaiA8IGk7IGorKykgewogCQkJCWlmIChqIDwgaW5zdGFuY2UtPmxvd19sYXRlbmN5
X2luZGV4X3N0YXJ0KQotCQkJCQlpcnFfc2V0X2FmZmluaXR5X2hpbnQoCisJCQkJCWlycV91cGRh
dGVfYWZmaW5pdHlfaGludCgKIAkJCQkJCXBjaV9pcnFfdmVjdG9yKHBkZXYsIGopLCBOVUxMKTsK
IAkJCQlmcmVlX2lycShwY2lfaXJxX3ZlY3RvcihwZGV2LCBqKSwKIAkJCQkJICZpbnN0YW5jZS0+
aXJxX2NvbnRleHRbal0pOwpAQCAtNTc2MSw3ICs1NzYxLDcgQEAgbWVnYXNhc19kZXN0cm95X2ly
cXMoc3RydWN0IG1lZ2FzYXNfaW5zdGFuY2UgKmluc3RhbmNlKSB7CiAJaWYgKGluc3RhbmNlLT5t
c2l4X3ZlY3RvcnMpCiAJCWZvciAoaSA9IDA7IGkgPCBpbnN0YW5jZS0+bXNpeF92ZWN0b3JzOyBp
KyspIHsKIAkJCWlmIChpIDwgaW5zdGFuY2UtPmxvd19sYXRlbmN5X2luZGV4X3N0YXJ0KQotCQkJ
CWlycV9zZXRfYWZmaW5pdHlfaGludCgKKwkJCQlpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQoCiAJ
CQkJICAgIHBjaV9pcnFfdmVjdG9yKGluc3RhbmNlLT5wZGV2LCBpKSwgTlVMTCk7CiAJCQlmcmVl
X2lycShwY2lfaXJxX3ZlY3RvcihpbnN0YW5jZS0+cGRldiwgaSksCiAJCQkJICZpbnN0YW5jZS0+
aXJxX2NvbnRleHRbaV0pOwpAQCAtNTg5MiwyMiArNTg5MiwyNSBAQCBpbnQgbWVnYXNhc19nZXRf
ZGV2aWNlX2xpc3Qoc3RydWN0IG1lZ2FzYXNfaW5zdGFuY2UgKmluc3RhbmNlKQogfQogCiAvKioK
LSAqIG1lZ2FzYXNfc2V0X2hpZ2hfaW9wc19xdWV1ZV9hZmZpbml0eV9oaW50IC0JU2V0IGFmZmlu
aXR5IGhpbnQgZm9yIGhpZ2ggSU9QUyBxdWV1ZXMKLSAqIEBpbnN0YW5jZToJCQkJCUFkYXB0ZXIg
c29mdCBzdGF0ZQotICogcmV0dXJuOgkJCQkJdm9pZAorICogbWVnYXNhc19zZXRfaGlnaF9pb3Bz
X3F1ZXVlX2FmZmluaXR5X2FuZF9oaW50IC0JU2V0IGFmZmluaXR5IGFuZCBoaW50CisgKgkJCQkJ
CQlmb3IgaGlnaCBJT1BTIHF1ZXVlcworICogQGluc3RhbmNlOgkJCQkJCUFkYXB0ZXIgc29mdCBz
dGF0ZQorICogcmV0dXJuOgkJCQkJCXZvaWQKICAqLwogc3RhdGljIGlubGluZSB2b2lkCi1tZWdh
c2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfaGludChzdHJ1Y3QgbWVnYXNhc19pbnN0
YW5jZSAqaW5zdGFuY2UpCittZWdhc2FzX3NldF9oaWdoX2lvcHNfcXVldWVfYWZmaW5pdHlfYW5k
X2hpbnQoc3RydWN0IG1lZ2FzYXNfaW5zdGFuY2UgKmluc3RhbmNlKQogewogCWludCBpOwotCWlu
dCBsb2NhbF9udW1hX25vZGU7CisJdW5zaWduZWQgaW50IGlycTsKKwljb25zdCBzdHJ1Y3QgY3B1
bWFzayAqbWFzazsKIAogCWlmIChpbnN0YW5jZS0+cGVyZl9tb2RlID09IE1SX0JBTEFOQ0VEX1BF
UkZfTU9ERSkgewotCQlsb2NhbF9udW1hX25vZGUgPSBkZXZfdG9fbm9kZSgmaW5zdGFuY2UtPnBk
ZXYtPmRldik7CisJCW1hc2sgPSBjcHVtYXNrX29mX25vZGUoZGV2X3RvX25vZGUoJmluc3RhbmNl
LT5wZGV2LT5kZXYpKTsKIAotCQlmb3IgKGkgPSAwOyBpIDwgaW5zdGFuY2UtPmxvd19sYXRlbmN5
X2luZGV4X3N0YXJ0OyBpKyspCi0JCQlpcnFfc2V0X2FmZmluaXR5X2hpbnQocGNpX2lycV92ZWN0
b3IoaW5zdGFuY2UtPnBkZXYsIGkpLAotCQkJCWNwdW1hc2tfb2Zfbm9kZShsb2NhbF9udW1hX25v
ZGUpKTsKKwkJZm9yIChpID0gMDsgaSA8IGluc3RhbmNlLT5sb3dfbGF0ZW5jeV9pbmRleF9zdGFy
dDsgaSsrKSB7CisJCQlpcnEgPSBwY2lfaXJxX3ZlY3RvcihpbnN0YW5jZS0+cGRldiwgaSk7CisJ
CQlpcnFfc2V0X2FmZmluaXR5X2FuZF9oaW50KGlycSwgbWFzayk7CisJCX0KIAl9CiB9CiAKQEAg
LTU5OTYsNyArNTk5OSw3IEBAIG1lZ2FzYXNfYWxsb2NfaXJxX3ZlY3RvcnMoc3RydWN0IG1lZ2Fz
YXNfaW5zdGFuY2UgKmluc3RhbmNlKQogCQlpbnN0YW5jZS0+bXNpeF92ZWN0b3JzID0gMDsKIAog
CWlmIChpbnN0YW5jZS0+c21wX2FmZmluaXR5X2VuYWJsZSkKLQkJbWVnYXNhc19zZXRfaGlnaF9p
b3BzX3F1ZXVlX2FmZmluaXR5X2hpbnQoaW5zdGFuY2UpOworCQltZWdhc2FzX3NldF9oaWdoX2lv
cHNfcXVldWVfYWZmaW5pdHlfYW5kX2hpbnQoaW5zdGFuY2UpOwogfQogCiAvKioKLS0gCjIuMjcu
MAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
d2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczov
L2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
