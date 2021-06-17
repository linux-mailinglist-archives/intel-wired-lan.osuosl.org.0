Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 869813ABB79
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Jun 2021 20:24:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4C6260E89;
	Thu, 17 Jun 2021 18:24:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FmsXSTYMhqIJ; Thu, 17 Jun 2021 18:24:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A477D60E88;
	Thu, 17 Jun 2021 18:24:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3EB71BF339
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9E82B83D8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXv8XLRox8KH for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Jun 2021 18:23:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A5DCF83ECE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Jun 2021 18:23:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1623954193;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=zM68hbAHAIMOq7xMr7KE4zrDHYPaxIaEF68LhoRJqFo=;
 b=amhsLiSbiioMStGQ9D1bpY8F2dKPo+LfKfrmlPeSPdoTU+CKb64Y0jfdRa1WxXuZJAuiq4
 HNoynDXnycT2m6UJz2rRRKbOSRtd6/TdqPBVP9Zh3y9npp3/wyS5d6ZkQBHYvngcJKJ4gw
 eL/Oar4+qOphtBVfzcRLqlIAkO3VO5w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-49-ZpU273kTOTWQ_4Ywm7JjkQ-1; Thu, 17 Jun 2021 14:23:10 -0400
X-MC-Unique: ZpU273kTOTWQ_4Ywm7JjkQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D2940C7405;
 Thu, 17 Jun 2021 18:23:03 +0000 (UTC)
Received: from virtlab719.virt.lab.eng.bos.redhat.com
 (virtlab719.virt.lab.eng.bos.redhat.com [10.19.153.15])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9ED1860E3A;
 Thu, 17 Jun 2021 18:22:49 +0000 (UTC)
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
Date: Thu, 17 Jun 2021 14:22:28 -0400
Message-Id: <20210617182242.8637-1-nitesh@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mailman-Approved-At: Thu, 17 Jun 2021 18:24:06 +0000
Subject: [Intel-wired-lan] [PATCH v1 00/14] genirq: Cleanup the usage of
 irq_set_affinity_hint
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

VGhlIGRyaXZlcnMgY3VycmVudGx5IHJlbHkgb24gaXJxX3NldF9hZmZpbml0eV9oaW50KCkgdG8g
ZWl0aGVyIHNldCB0aGUKYWZmaW5pdHlfaGludCB0aGF0IGlzIGNvbnN1bWVkIGJ5IHRoZSB1c2Vy
c3BhY2UgYW5kL29yIHRvIGVuZm9yY2UgYSBjdXN0b20KYWZmaW5pdHkuCgppcnFfc2V0X2FmZmlu
aXR5X2hpbnQoKSBhcyB0aGUgbmFtZSBzdWdnZXN0cyBpcyBvcmlnaW5hbGx5IGludHJvZHVjZWQg
dG8Kb25seSBzZXQgdGhlIGFmZmluaXR5X2hpbnQgdG8gaGVscCB0aGUgdXNlcnNwYWNlIGluIGd1
aWRpbmcgdGhlIGludGVycnVwdHMKYW5kIG5vdCB0aGUgYWZmaW5pdHkgaXRzZWxmLiBIb3dldmVy
LCBzaW5jZSB0aGUgY29tbWl0CgoJZTJlNjRhOTMyNTU2ICJnZW5pcnE6IFNldCBpbml0aWFsIGFm
ZmluaXR5IGluIGlycV9zZXRfYWZmaW5pdHlfaGludCgpIgoKaXJxX3NldF9hZmZpbml0eV9oaW50
KCkgYWxzbyBzdGFydGVkIGFwcGx5aW5nIHRoZSBwcm92aWRlZCBjcHVtYXNrIChpZiBub3QKTlVM
TCkgYXMgdGhlIGFmZmluaXR5IGZvciB0aGUgaW50ZXJydXB0cy4gVGhlIGlzc3VlIHRoYXQgdGhp
cyBjb21taXQgd2FzCnRyeWluZyB0byBzb2x2ZSBpcyB0byBhbGxvdyB0aGUgZHJpdmVycyB0byBl
bmZvcmNlIHRoZWlyIGFmZmluaXR5IG1hc2sgdG8KZGlzdHJpYnV0ZSB0aGUgaW50ZXJydXB0cyBh
Y3Jvc3MgdGhlIENQVXMgc3VjaCB0aGF0IHRoZXkgZG9uJ3QgYWx3YXlzIGVuZAp1cCBvbiBDUFUw
LiBUaGlzIGlzc3VlIGhhcyBiZWVuIHJlc29sdmVkIHdpdGhpbiB0aGUgaXJxIHN1YnN5c3RlbSBz
aW5jZSB0aGUKY29tbWl0CgoJYTBjOTI1OWRjNGUxICJpcnEvbWF0cml4OiBTcHJlYWQgaW50ZXJy
dXB0cyBvbiBhbGxvY2F0aW9uIgoKSGVuY2UsIHRoZXJlIGlzIG5vIG5lZWQgZm9yIHRoZSBkcml2
ZXJzIHRvIG92ZXJ3cml0ZSB0aGUgYWZmaW5pdHkgdG8gc3ByZWFkCmFzIGl0IGlzIGR5bmFtaWNh
bGx5IHBlcmZvcm1lZCBhdCB0aGUgdGltZSBvZiBhbGxvY2F0aW9uLgoKQWxzbywgaXJxX3NldF9h
ZmZpbml0eV9oaW50KCkgc2V0dGluZyBhZmZpbml0eSB1bmNvbmRpdGlvbmFsbHkgaW50cm9kdWNl
cwppc3N1ZXMgZm9yIHRoZSBkcml2ZXJzIHRoYXQgb25seSB3YW50IHRvIHNldCB0aGVpciBhZmZp
bml0eV9oaW50IGFuZCBub3QgdGhlCmFmZmluaXR5IGl0c2VsZiBhcyBmb3IgdGhlc2UgZHJpdmVy
IGludGVycnVwdHMgdGhlIGRlZmF1bHRfc21wX2FmZmluaXR5X21hc2sKaXMgY29tcGxldGVseSBp
Z25vcmVkIChmb3IgZGV0YWlsZWQgaW52ZXN0aWdhdGlvbiBwbGVhc2UgcmVmZXIgdG8gWzFdKS4K
ClVuZm9ydHVuYXRlbHkgcmV2ZXJ0aW5nIHRoZSBjb21taXQgZTJlNjRhOTMyNTU2IGlzIG5vdCBh
biBvcHRpb24gYXQgdGhpcwpwb2ludCBmb3IgdHdvIHJlYXNvbnMgWzJdOgoKLSBTZXZlcmFsIGRy
aXZlcnMgZm9yIGEgdmFsaWQgcmVhc29uIChwZXJmb3JtYW5jZSkgcmVseSBvbiB0aGlzIEFQSSB0
bwrCoCBlbmZvcmNlIHRoZWlyIG93biBhZmZpbml0eSBtYXNrCgotIFVudGlsIHZlcnkgcmVjZW50
bHkgdGhpcyB3YXMgdGhlIG9ubHkgZXhwb3J0ZWQgaW50ZXJmYWNlIHRoYXQgd2FzCsKgIGF2YWls
YWJsZQoKVG8gY2xlYXIgdGhpcyBvdXQgVGhvbWFzIGhhcyBjb21lIHVwIHdpdGggdGhlIGZvbGxv
d2luZyBpbnRlcmZhY2VzOgoKLSBpcnFfc2V0X2FmZmluaXR5KCk6IG9ubHkgc2V0cyBhZmZpbml0
eSBvZiBhbiBJUlEgWzNdCi0gaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50KCk6IE9ubHkgc2V0cyB0
aGUgaGludCBbNF0KLSBpcnFfc2V0X2FmZmluaXR5X2FuZF9oaW50KCk6IFNldHMgYm90aCBhZmZp
bml0eSBhbmQgdGhlIGhpbnQgbWFzayBbNF0KClRoZSBmaXJzdCBBUEkgaXMgYWxyZWFkeSBtZXJn
ZWQgaW4gdGhlIGxpbnV4LW5leHQgdHJlZSBhbmQgYSB2MiBmb3IgdGhlCnJlbWFpbmluZyB0d28g
aXMgaW5jbHVkZWQgd2l0aCB0aGlzIHBhdGNoLXNldC4KClRvIG1vdmUgdG8gdGhlIHN0YWdlIHdo
ZXJlIHdlIGNhbiBzYWZlbHkgZ2V0IHJpZCBvZiB0aGUKaXJxX3NldF9hZmZpbml0eV9oaW50KCks
IHdoaWNoIGhhcyBiZWVuIG1hcmtlZCBkZXByZWNhdGVkLCB3ZSBoYXZlIHRvCm1vdmUgYWxsIGl0
cyBjb25zdW1lcnMgdG8gdGhlc2UgbmV3IGludGVyZmFjZXMuIEluIHRoaXMgcGF0Y2gtc2V0LCBJ
IGhhdmUKZG9uZSB0aGF0IGZvciBhIGZldyBkcml2ZXJzIGFuZCB3aWxsIGhvcGVmdWxseSB0cnkg
dG8gbW92ZSB0aGUgcmVtYWluaW5nIG9mCnRoZW0gaW4gdGhlIGNvbWluZyBkYXlzLgoKVGVzdGlu
ZwotLS0tLS0tCkluIHRlcm1zIG9mIHRlc3RpbmcsIEkgaGF2ZSBwZXJmb3JtZWQgc29tZSBiYXNp
YyB0ZXN0aW5nIG9uIHg4NiB0byB2ZXJpZnkKdGhpbmdzIHN1Y2ggYXMgdGhlIGludGVycnVwdHMg
YXJlIGV2ZW5seSBzcHJlYWQgb24gYWxsIENQVXMsIGhpbnQgbWFzayBpcwpjb3JyZWN0bHkgc2V0
IGV0Yy4gZm9yIHRoZSBkcml2ZXJzIC0gaTQwZSwgaWF2ZiwgbWx4NSwgbWx4NCwgaXhnYmUsIGk0
MGl3CmFuZCBlbmljIG9uIHRvcCBvZjoKCWdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGlu
dXgva2VybmVsL2dpdC90aXAvdGlwLmdpdCAKCW1hc3RlciAtIDUuMTMuMC1yYzYKU28gbW9yZSB0
ZXN0aW5nIGlzIHByb2JhYmx5IHJlcXVpcmVkIGZvciB0aGVzZSBhbmQgdGhlIGRyaXZlcnMgdGhh
dCBJIGRpZG4ndAp0ZXN0IGFuZCBhbnkgaGVscCB3aWxsIGJlIG11Y2ggYXBwcmVjaWF0ZWQuCgpb
MV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8xYTA0NGExNC0wODg0LWVlZGItNWQzMC0y
OGI0YmVjMjRiMjNAcmVkaGF0LmNvbS8KWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXBjaS9kMWQ1ZTc5Ny00OWVlLTQ5NjgtODhjNi1jMDcxMTkzNDM0OTJAYXJtLmNvbS8KWzNdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAyMTA1MTgwOTE3MjUuMDQ2
Nzc0NzkyQGxpbnV0cm9uaXguZGUvCls0XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9wYXRjaHdv
cmsvcGF0Y2gvMTQzNDMyNi8KCgpOaXRlc2ggTmFyYXlhbiBMYWwgKDEzKToKICBpYXZmOiBVc2Ug
aXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50CiAgaTQwZTogVXNlIGlycV91cGRhdGVfYWZmaW5pdHlf
aGludAogIHNjc2k6IG1lZ2FyYWlkX3NhczogVXNlIGlycV9zZXRfYWZmaW5pdHlfYW5kX2hpbnQK
ICBzY3NpOiBtcHQzc2FzOiBVc2UgaXJxX3NldF9hZmZpbml0eV9hbmRfaGludAogIFJETUEvaTQw
aXc6IFVzZSBpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQKICBlbmljOiBVc2UgaXJxX3VwZGF0ZV9h
ZmZpbml0eV9oaW50CiAgYmUybmV0OiBVc2UgaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50CiAgaXhn
YmU6IFVzZSBpcnFfdXBkYXRlX2FmZmluaXR5X2hpbnQKICBtYWlsYm94OiBVc2UgaXJxX3VwZGF0
ZV9hZmZpbml0eV9oaW50CiAgc2NzaTogbHBmYzogVXNlIGlycV9zZXRfYWZmaW5pdHkKICBoaW5p
YzogVXNlIGlycV9zZXRfYWZmaW5pdHlfYW5kX2hpbnQKICBuZXQvbWx4NTogVXNlIGlycV91cGRh
dGVfYWZmaW5pdHlfaGludAogIG5ldC9tbHg0OiBVc2UgaXJxX3VwZGF0ZV9hZmZpbml0eV9oaW50
CgpUaG9tYXMgR2xlaXhuZXIgKDEpOgogIGdlbmlycTogUHJvdmlkZSBuZXcgaW50ZXJmYWNlcyBm
b3IgYWZmaW5pdHkgaGludHMKCiBkcml2ZXJzL2luZmluaWJhbmQvaHcvaTQwaXcvaTQwaXdfbWFp
bi5jICAgICAgfCAgNCArLQogZHJpdmVycy9tYWlsYm94L2JjbS1mbGV4cm0tbWFpbGJveC5jICAg
ICAgICAgIHwgIDQgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2Npc2NvL2VuaWMvZW5pY19tYWlu
LmMgICB8ICA2ICstLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvZW11bGV4L2JlbmV0L2JlX21haW4u
YyAgIHwgIDQgKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2h1YXdlaS9oaW5pYy9oaW5pY19yeC5j
ICB8ICA0ICstCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfbWFpbi5jICAg
fCAgOCArKy0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pYXZmL2lhdmZfbWFpbi5jICAg
fCAgOCArKy0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9tYWluLmMg
fCAgNiArLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L21lbGxhbm94L21seDQvZXEuYyAgICAgICB8
ICA2ICstLQogLi4uL25ldC9ldGhlcm5ldC9tZWxsYW5veC9tbHg1L2NvcmUvcGNpX2lycS5jIHwg
IDYgKy0tCiBkcml2ZXJzL3Njc2kvbHBmYy9scGZjX2luaXQuYyAgICAgICAgICAgICAgICAgfCAg
NCArLQogZHJpdmVycy9zY3NpL21lZ2FyYWlkL21lZ2FyYWlkX3Nhc19iYXNlLmMgICAgIHwgMjUg
KysrKysrLS0tLS0KIGRyaXZlcnMvc2NzaS9tcHQzc2FzL21wdDNzYXNfYmFzZS5jICAgICAgICAg
ICB8IDE1ICsrKystLS0KIGluY2x1ZGUvbGludXgvaW50ZXJydXB0LmggICAgICAgICAgICAgICAg
ICAgICB8IDQxICsrKysrKysrKysrKysrKysrKy0KIGtlcm5lbC9pcnEvbWFuYWdlLmMgICAgICAg
ICAgICAgICAgICAgICAgICAgICB8ICA4ICsrLS0KIDE1IGZpbGVzIGNoYW5nZWQsIDk1IGluc2Vy
dGlvbnMoKyksIDU0IGRlbGV0aW9ucygtKQoKLS0gIAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRl
bC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
