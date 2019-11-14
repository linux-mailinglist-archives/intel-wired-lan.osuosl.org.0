Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26446FCE06
	for <lists+intel-wired-lan@lfdr.de>; Thu, 14 Nov 2019 19:45:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DDD489C98;
	Thu, 14 Nov 2019 18:45:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3QbXNx4bBswb; Thu, 14 Nov 2019 18:45:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C450089C90;
	Thu, 14 Nov 2019 18:45:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9911F1BF289
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8F6CA882E0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1e3OU3LievgE for <intel-wired-lan@lists.osuosl.org>;
 Thu, 14 Nov 2019 18:45:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E1A56882BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 18:45:15 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id j12so3019737plt.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 14 Nov 2019 10:45:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5PpCROqLUVCSPUX0tvoqkWmvSCrAux1rzZqUUXzDoo=;
 b=cPhBmbIdmtQyfQF5AzbqYAvH2xoRj/40g6d2qV5pdY0c1+x9QJjtVhWv32MQqPBmNc
 Sk6GtuGCYW8VDpn/EN2UxzavB3UQ97D36VdcOf+oVrOKj8VG6hJUtXZo7kYhh/Y8TFKn
 E2uKmuVao6l+yWztnczXHEXRQt/NKrdxorFH7K+nk19Obb34h7PhMpC2hk6ewz8CAMxW
 Oc1q41H87UAMM/EpVkDyJAbTMcE1/bIjmru0tVvXGVBnd/vbvQwcp4UR+DE4Os4Rfq37
 fStGwklceIwevHB10wpqPsz8vj6wfNcplYtGBWKOGQiowq1zh9MttEduJM2LX+jcC9Lw
 7VUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y5PpCROqLUVCSPUX0tvoqkWmvSCrAux1rzZqUUXzDoo=;
 b=FA2c7gqqKZYoPq2QS7mj48LSRDU7M6eGFXGrYn4IUzBP8h7ONA3kuXZV9EKYrJ7aPG
 iXqbnEo2doEJgJvM9uU6JPkv0IQK5zyNTKxaRWXtDTnBjHg/2A3OX14+rQnYMbFvMIfu
 eoOBBq4AUxnZ0Hv8JPfpIVwKXWKFvdM8oGGrY/F9VZbV7qlDdE8mQ3WovuSasJ95hvhX
 H38+g6ML9pQUjgLSj9Ff0/bV6du6Cljw8W8lo4CWx4Pzq0Ctoh4M786QYNfTaRZXg0li
 CRjgPaS9GtJmM1f90JTQwhtQ8Y/zFpnbuIMogCxX9bae+ebjYeUpB3SbzJ5U9c0l+dEw
 8w0w==
X-Gm-Message-State: APjAAAXf8agxhvE0W5MDMwAQGFRlweG0Is1L8uwg/37zesDoWrjlJfNs
 iYzL1EnNoHJAJ576jVjdxFE=
X-Google-Smtp-Source: APXvYqxwXzvhDmITW4QOWmuk5/jUBwai9RuM5ACXa/w6RYjVf9/qTI18CLm1V501Va+erWE2fXAFHA==
X-Received: by 2002:a17:902:6a88:: with SMTP id
 n8mr637917plk.226.1573757115373; 
 Thu, 14 Nov 2019 10:45:15 -0800 (PST)
Received: from localhost.localdomain (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id 23sm6819507pgw.8.2019.11.14.10.45.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 10:45:14 -0800 (PST)
From: Richard Cochran <richardcochran@gmail.com>
To: netdev@vger.kernel.org
Date: Thu, 14 Nov 2019 10:44:58 -0800
Message-Id: <20191114184507.18937-5-richardcochran@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 04/13] dp83640: reject unsupported
 external timestamp flags
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
Cc: Christopher Hall <christopher.s.hall@intel.com>,
 Brandon Streiff <brandon.streiff@ni.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Felipe Balbi <felipe.balbi@linux.intel.com>,
 Eugenia Emantayev <eugenia@mellanox.com>, Feras Daoud <ferasda@mellanox.com>,
 intel-wired-lan@lists.osuosl.org, David Miller <davem@davemloft.net>,
 Stefan Sorensen <stefan.sorensen@spectralink.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+CgpGaXggdGhlIGRw
ODM2NDAgUFRQIHN1cHBvcnQgdG8gZXhwbGljaXRseSByZWplY3QgYW55IGZ1dHVyZSBmbGFncyB0
aGF0CmdldCBhZGRlZCB0byB0aGUgZXh0ZXJuYWwgdGltZXN0YW1wIHJlcXVlc3QgaW9jdGwuCgpJ
biBvcmRlciB0byBtYWludGFpbiBjdXJyZW50bHkgZnVuY3Rpb25pbmcgY29kZSwgdGhpcyBwYXRj
aCBhY2NlcHRzIGFsbAp0aHJlZSBjdXJyZW50IGZsYWdzLiBUaGlzIGlzIGJlY2F1c2UgdGhlIFBU
UF9SSVNJTkdfRURHRSBhbmQKUFRQX0ZBTExJTkdfRURHRSBmbGFncyBoYXZlIHVuY2xlYXIgc2Vt
YW50aWNzIGFuZCBlYWNoIGRyaXZlciBzZWVtcyB0bwpoYXZlIGludGVycHJldGVkIHRoZW0gc2xp
Z2h0bHkgZGlmZmVyZW50bHkuCgpGb3IgdGhlIHJlY29yZCwgdGhlIHNlbWFudGljcyBvZiB0aGlz
IGRyaXZlciBhcmU6CgogIGZsYWdzICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIE1lYW5pbmcKICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tICAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogIFBUUF9FTkFC
TEVfRkVBVFVSRSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFRpbWUgc3RhbXAg
cmlzaW5nIGVkZ2UKICBQVFBfRU5BQkxFX0ZFQVRVUkV8UFRQX1JJU0lOR19FREdFICAgICAgICAg
ICAgICAgICAgICBUaW1lIHN0YW1wIHJpc2luZyBlZGdlCiAgUFRQX0VOQUJMRV9GRUFUVVJFfFBU
UF9GQUxMSU5HX0VER0UgICAgICAgICAgICAgICAgICAgVGltZSBzdGFtcCBmYWxsaW5nIGVkZ2UK
ICBQVFBfRU5BQkxFX0ZFQVRVUkV8UFRQX1JJU0lOR19FREdFfFBUUF9GQUxMSU5HX0VER0UgICBU
aW1lIHN0YW1wIGZhbGxpbmcgZWRnZQoKQ2M6IFN0ZWZhbiBTw7hyZW5zZW4gPHN0ZWZhbi5zb3Jl
bnNlbkBzcGVjdHJhbGluay5jb20+CkNjOiBSaWNoYXJkIENvY2hyYW4gPHJpY2hhcmRjb2NocmFu
QGdtYWlsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBSaWNoYXJkIENvY2hyYW4gPHJpY2hhcmRjb2NocmFuQGdt
YWlsLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9waHkvZHA4MzY0MC5jIHwgNSArKysrKwogMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3BoeS9k
cDgzNjQwLmMgYi9kcml2ZXJzL25ldC9waHkvZHA4MzY0MC5jCmluZGV4IDA0YWQ3Nzc1ODkyMC4u
Mjc4MWIwZTJkOTQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9waHkvZHA4MzY0MC5jCisrKyBi
L2RyaXZlcnMvbmV0L3BoeS9kcDgzNjQwLmMKQEAgLTQ2OSw2ICs0NjksMTEgQEAgc3RhdGljIGlu
dCBwdHBfZHA4MzY0MF9lbmFibGUoc3RydWN0IHB0cF9jbG9ja19pbmZvICpwdHAsCiAKIAlzd2l0
Y2ggKHJxLT50eXBlKSB7CiAJY2FzZSBQVFBfQ0xLX1JFUV9FWFRUUzoKKwkJLyogUmVqZWN0IHJl
cXVlc3RzIHdpdGggdW5zdXBwb3J0ZWQgZmxhZ3MgKi8KKwkJaWYgKHJxLT5leHR0cy5mbGFncyAm
IH4oUFRQX0VOQUJMRV9GRUFUVVJFIHwKKwkJCQkJUFRQX1JJU0lOR19FREdFIHwKKwkJCQkJUFRQ
X0ZBTExJTkdfRURHRSkpCisJCQlyZXR1cm4gLUVPUE5PVFNVUFA7CiAJCWluZGV4ID0gcnEtPmV4
dHRzLmluZGV4OwogCQlpZiAoaW5kZXggPj0gTl9FWFRfVFMpCiAJCQlyZXR1cm4gLUVJTlZBTDsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
