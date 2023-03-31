Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 807C66D2845
	for <lists+intel-wired-lan@lfdr.de>; Fri, 31 Mar 2023 20:55:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2614E84713;
	Fri, 31 Mar 2023 18:55:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2614E84713
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680288944;
	bh=tLJA5YzfOz/Jsp1w8U72xF2AboSuMXZXmufuY+4e7pw=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DuZgr1NqJ43kxUoiSLScDdQoDdQEeolUW7tShu314tR7WiICHVNPfXPN8VsFM8XRJ
	 z93RhlV9+UC4bP71Dcywdqia5+DMmmrM11oOerwjsbwMhXJsN/zITEkf5txfJfgkN5
	 +Rpu6OYtsuMdw+Fj1Ff1sezVPR1eSTvt8/5CRUomhn0rE+IIgDDVaIzs0bx0/pj+R0
	 S4uupdW6G8LmQX59Ww9GoefU9JGJCDTD18fLvQA+wB0qEUPWV431iJ3UqeI+QUg9eA
	 q0xExdDsUWFShTF/oouWlArNaizV1Tue8xdQo1CWQIIzhVThodKNS5wxYmit3rm6ny
	 iTCrRGdi8KsFw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Om0OL-yUZbxu; Fri, 31 Mar 2023 18:55:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C8A248470E;
	Fri, 31 Mar 2023 18:55:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C8A248470E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EF5AD1BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C89A460F28
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C89A460F28
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MawE6EWdc8fc for <intel-wired-lan@lists.osuosl.org>;
 Fri, 31 Mar 2023 18:55:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E520560F0F
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E520560F0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 31 Mar 2023 18:55:33 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-224-YE7SKifGMSaZUjcB2mmLvA-1; Fri, 31 Mar 2023 14:55:26 -0400
X-MC-Unique: YE7SKifGMSaZUjcB2mmLvA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
 [10.11.54.8])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ABDEA88B7A0;
 Fri, 31 Mar 2023 18:55:25 +0000 (UTC)
Received: from firesoul.localdomain (unknown [10.45.242.12])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3F54FC15BA0;
 Fri, 31 Mar 2023 18:55:25 +0000 (UTC)
Received: from [10.1.1.1] (localhost [IPv6:::1])
 by firesoul.localdomain (Postfix) with ESMTP id 52FF130736C72;
 Fri, 31 Mar 2023 20:55:24 +0200 (CEST)
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: bpf@vger.kernel.org, Stanislav Fomichev <sdf@google.com>,
 =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Date: Fri, 31 Mar 2023 20:55:24 +0200
Message-ID: <168028892429.4030852.15326913700183267061.stgit@firesoul>
In-Reply-To: <168028882260.4030852.1100965689789226162.stgit@firesoul>
References: <168028882260.4030852.1100965689789226162.stgit@firesoul>
User-Agent: StGit/1.4
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1680288932;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7ph+xCj8xMhhOD/k6lU+woQ5fwdBlFQod/UuSdGSJc0=;
 b=hg6fh+2Hz4kIRMNnEpPS6Fa0dZogOuDZOx7QlrhxqPOODeHIbhRvV7D9HfNDb4nzpqbtPf
 Z+E2bx6GKVHT6/rJ20PPW1fud1l8efSRYCu+XIIhe+YlcbjV7VfhNReRjehU+1+nq9UaOZ
 suq7u1uuIEDReETzsSi/0lvYtwWbesA=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=hg6fh+2H
Subject: [Intel-wired-lan] [PATCH bpf V5 5/5] selftests/bpf: Adjust
 bpf_xdp_metadata_rx_hash for new arg
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, daniel@iogearbox.net,
 larysa.zaremba@intel.com, netdev@vger.kernel.org, john.fastabend@gmail.com,
 ast@kernel.org, tariqt@nvidia.com, linux-kernel@vger.kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, pabeni@redhat.com,
 yoong.siang.song@intel.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 boon.leong.ong@intel.com, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org, davem@davemloft.net, edumazet@google.com,
 hawk@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VXBkYXRlIEJQRiBzZWxmdGVzdHMgdG8gdXNlIHRoZSBuZXcgUlNTIHR5cGUgYXJndW1lbnQgZm9y
IGtmdW5jCmJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaC4KClNpZ25lZC1vZmYtYnk6IEplc3BlciBE
YW5nYWFyZCBCcm91ZXIgPGJyb3VlckByZWRoYXQuY29tPgpBY2tlZC1ieTogVG9rZSBIw7hpbGFu
ZC1Kw7hyZ2Vuc2VuIDx0b2tlQHJlZGhhdC5jb20+CkFja2VkLWJ5OiBTdGFuaXNsYXYgRm9taWNo
ZXYgPHNkZkBnb29nbGUuY29tPgotLS0KIC4uLi9zZWxmdGVzdHMvYnBmL3Byb2dfdGVzdHMveGRw
X21ldGFkYXRhLmMgICAgICAgIHwgICAgMiArKwogLi4uL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9w
cm9ncy94ZHBfaHdfbWV0YWRhdGEuYyAgfCAgIDE0ICsrKysrKysrKy0tLS0tCiB0b29scy90ZXN0
aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhLmMgICB8ICAgIDYgKysrLS0tCiB0
b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRhMi5jICB8ICAgIDcg
KysrKy0tLQogdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jICAg
ICAgfCAgICAyICstCiB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYveGRwX21ldGFkYXRhLmgg
ICAgICAgICB8ICAgIDEgKwogNiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMiBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJv
Z190ZXN0cy94ZHBfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9n
X3Rlc3RzL3hkcF9tZXRhZGF0YS5jCmluZGV4IGFhNGJlYWU5OWY0Zi4uOGM1ZTk4ZGE5YWU5IDEw
MDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy94ZHBfbWV0
YWRhdGEuYworKysgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ190ZXN0cy94ZHBf
bWV0YWRhdGEuYwpAQCAtMjczLDYgKzI3Myw4IEBAIHN0YXRpYyBpbnQgdmVyaWZ5X3hza19tZXRh
ZGF0YShzdHJ1Y3QgeHNrICp4c2spCiAJaWYgKCFBU1NFUlRfTkVRKG1ldGEtPnJ4X2hhc2gsIDAs
ICJyeF9oYXNoIikpCiAJCXJldHVybiAtMTsKIAorCUFTU0VSVF9FUShtZXRhLT5yeF9oYXNoX3R5
cGUsIDAsICJyeF9oYXNoX3R5cGUiKTsKKwogCXhza19yaW5nX2NvbnNfX3JlbGVhc2UoJnhzay0+
cngsIDEpOwogCXJlZmlsbF9yeCh4c2ssIGNvbXBfYWRkcik7CiAKZGlmZiAtLWdpdCBhL3Rvb2xz
L3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYyBiL3Rvb2xzL3Rl
c3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwppbmRleCA0YzU1YjRk
NzlkM2QuLjdiM2ZjMTJlOTZkNiAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMv
YnBmL3Byb2dzL3hkcF9od19tZXRhZGF0YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy94ZHBfaHdfbWV0YWRhdGEuYwpAQCAtMTQsOCArMTQsOCBAQCBzdHJ1Y3Qgewog
CiBleHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVjdCB4
ZHBfbWQgKmN0eCwKIAkJCQkJIF9fdTY0ICp0aW1lc3RhbXApIF9fa3N5bTsKLWV4dGVybiBpbnQg
YnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKLQkJCQkg
ICAgX191MzIgKmhhc2gpIF9fa3N5bTsKK2V4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9o
YXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgX191MzIgKmhhc2gsCisJCQkJICAgIGVudW0g
eGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKSBfX2tzeW07CiAKIFNFQygieGRwIikKIGludCBy
eChzdHJ1Y3QgeGRwX21kICpjdHgpCkBAIC03NCwxMCArNzQsMTQgQEAgaW50IHJ4KHN0cnVjdCB4
ZHBfbWQgKmN0eCkKIAllbHNlCiAJCW1ldGEtPnJ4X3RpbWVzdGFtcCA9IDA7IC8qIFVzZWQgYnkg
QUZfWERQIGFzIG5vdCBhdmFpbCBzaWduYWwgKi8KIAotCWlmICghYnBmX3hkcF9tZXRhZGF0YV9y
eF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gpKQotCQlicGZfcHJpbnRrKCJwb3B1bGF0ZWQgcnhf
aGFzaCB3aXRoICV1IiwgbWV0YS0+cnhfaGFzaCk7Ci0JZWxzZQorCWlmICghYnBmX3hkcF9tZXRh
ZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gsICZtZXRhLT5yeF9oYXNoX3R5cGUpKSB7
CisJCWJwZl9wcmludGsoInBvcHVsYXRlZCByeF9oYXNoOjB4JVggdHlwZToweCVYIiwKKwkJCSAg
IG1ldGEtPnJ4X2hhc2gsIG1ldGEtPnJ4X2hhc2hfdHlwZSk7CisJCWlmICghKG1ldGEtPnJ4X2hh
c2hfdHlwZSAmIFhEUF9SU1NfTDQpKQorCQkJYnBmX3ByaW50aygicnhfaGFzaCBsb3cgcXVhbGl0
eSBMMyBoYXNoIHR5cGUiKTsKKwl9IGVsc2UgewogCQltZXRhLT5yeF9oYXNoID0gMDsgLyogVXNl
ZCBieSBBRl9YRFAgYXMgbm90IGF2YWlsIHNpZ25hbCAqLworCX0KIAogCXJldHVybiBicGZfcmVk
aXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVfaW5kZXgsIFhEUF9QQVNTKTsKIH0KZGlmZiAt
LWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYyBi
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYwppbmRleCA3
NzY3OGIwMzQzODkuLmQxNTFkNDA2YTEyMyAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxm
dGVzdHMvYnBmL3Byb2dzL3hkcF9tZXRhZGF0YS5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEuYwpAQCAtMjEsOCArMjEsOCBAQCBzdHJ1Y3Qgewog
CiBleHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfdGltZXN0YW1wKGNvbnN0IHN0cnVjdCB4
ZHBfbWQgKmN0eCwKIAkJCQkJIF9fdTY0ICp0aW1lc3RhbXApIF9fa3N5bTsKLWV4dGVybiBpbnQg
YnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwKLQkJCQkg
ICAgX191MzIgKmhhc2gpIF9fa3N5bTsKK2V4dGVybiBpbnQgYnBmX3hkcF9tZXRhZGF0YV9yeF9o
YXNoKGNvbnN0IHN0cnVjdCB4ZHBfbWQgKmN0eCwgX191MzIgKmhhc2gsCisJCQkJICAgIGVudW0g
eGRwX3Jzc19oYXNoX3R5cGUgKnJzc190eXBlKSBfX2tzeW07CiAKIFNFQygieGRwIikKIGludCBy
eChzdHJ1Y3QgeGRwX21kICpjdHgpCkBAIC01Niw3ICs1Niw3IEBAIGludCByeChzdHJ1Y3QgeGRw
X21kICpjdHgpCiAJaWYgKHRpbWVzdGFtcCA9PSAwKQogCQltZXRhLT5yeF90aW1lc3RhbXAgPSAx
OwogCi0JYnBmX3hkcF9tZXRhZGF0YV9yeF9oYXNoKGN0eCwgJm1ldGEtPnJ4X2hhc2gpOworCWJw
Zl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZtZXRhLT5yeF9oYXNoLCAmbWV0YS0+cnhfaGFz
aF90eXBlKTsKIAogCXJldHVybiBicGZfcmVkaXJlY3RfbWFwKCZ4c2ssIGN0eC0+cnhfcXVldWVf
aW5kZXgsIFhEUF9QQVNTKTsKIH0KZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3Rz
L2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEyLmMgYi90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
cHJvZ3MveGRwX21ldGFkYXRhMi5jCmluZGV4IGNmNjlkMDU0NTFjMy4uODVmODhkOWQ3YTc4IDEw
MDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYvcHJvZ3MveGRwX21ldGFkYXRh
Mi5jCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi9wcm9ncy94ZHBfbWV0YWRhdGEy
LmMKQEAgLTUsMTcgKzUsMTggQEAKICNpbmNsdWRlIDxicGYvYnBmX2hlbHBlcnMuaD4KICNpbmNs
dWRlIDxicGYvYnBmX2VuZGlhbi5oPgogCi1leHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhf
aGFzaChjb25zdCBzdHJ1Y3QgeGRwX21kICpjdHgsCi0JCQkJICAgIF9fdTMyICpoYXNoKSBfX2tz
eW07CitleHRlcm4gaW50IGJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjb25zdCBzdHJ1Y3QgeGRw
X21kICpjdHgsIF9fdTMyICpoYXNoLAorCQkJCSAgICBlbnVtIHhkcF9yc3NfaGFzaF90eXBlICpy
c3NfdHlwZSkgX19rc3ltOwogCiBpbnQgY2FsbGVkOwogCiBTRUMoImZyZXBsYWNlL3J4IikKIGlu
dCBmcmVwbGFjZV9yeChzdHJ1Y3QgeGRwX21kICpjdHgpCiB7CisJZW51bSB4ZHBfcnNzX2hhc2hf
dHlwZSB0eXBlID0gMDsKIAl1MzIgaGFzaCA9IDA7CiAJLyogQ2FsbCBfYW55XyBtZXRhZGF0YSBm
dW5jdGlvbiB0byBtYWtlIHN1cmUgd2UgZG9uJ3QgY3Jhc2guICovCi0JYnBmX3hkcF9tZXRhZGF0
YV9yeF9oYXNoKGN0eCwgJmhhc2gpOworCWJwZl94ZHBfbWV0YWRhdGFfcnhfaGFzaChjdHgsICZo
YXNoLCAmdHlwZSk7CiAJY2FsbGVkKys7CiAJcmV0dXJuIFhEUF9QQVNTOwogfQpkaWZmIC0tZ2l0
IGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jIGIvdG9vbHMv
dGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9od19tZXRhZGF0YS5jCmluZGV4IDFjOGFjYjY4Yjk3
Ny4uNGNhMjllMGM5NjQ2IDEwMDY0NAotLS0gYS90b29scy90ZXN0aW5nL3NlbGZ0ZXN0cy9icGYv
eGRwX2h3X21ldGFkYXRhLmMKKysrIGIvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9o
d19tZXRhZGF0YS5jCkBAIC0xNDEsNyArMTQxLDcgQEAgc3RhdGljIHZvaWQgdmVyaWZ5X3hkcF9t
ZXRhZGF0YSh2b2lkICpkYXRhKQogCW1ldGEgPSBkYXRhIC0gc2l6ZW9mKCptZXRhKTsKIAogCXBy
aW50ZigicnhfdGltZXN0YW1wOiAlbGx1XG4iLCBtZXRhLT5yeF90aW1lc3RhbXApOwotCXByaW50
ZigicnhfaGFzaDogJXVcbiIsIG1ldGEtPnJ4X2hhc2gpOworCXByaW50ZigicnhfaGFzaDogMHgl
WCBSU1MgdHlwZToweCVYXG4iLCBtZXRhLT5yeF9oYXNoLCBtZXRhLT5yeF9oYXNoX3R5cGUpOwog
fQogCiBzdGF0aWMgdm9pZCB2ZXJpZnlfc2tiX21ldGFkYXRhKGludCBmZCkKZGlmZiAtLWdpdCBh
L3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaCBiL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaAppbmRleCBmNjc4MGZiYjBhMjEuLjg5OWRh
ODcyZmVlMSAxMDA2NDQKLS0tIGEvdG9vbHMvdGVzdGluZy9zZWxmdGVzdHMvYnBmL3hkcF9tZXRh
ZGF0YS5oCisrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL2JwZi94ZHBfbWV0YWRhdGEuaApA
QCAtMTIsNCArMTIsNSBAQAogc3RydWN0IHhkcF9tZXRhIHsKIAlfX3U2NCByeF90aW1lc3RhbXA7
CiAJX191MzIgcnhfaGFzaDsKKwlfX3UzMiByeF9oYXNoX3R5cGU7CiB9OwoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWls
aW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wu
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
