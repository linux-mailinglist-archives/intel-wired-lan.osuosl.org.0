Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28229D012
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 603CF873E9;
	Wed, 28 Oct 2020 13:35:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nFbHMYdssnRH; Wed, 28 Oct 2020 13:35:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EE7CB873E0;
	Wed, 28 Oct 2020 13:35:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A67FE1BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A2E04873E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eyZO8IQAvM9C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 36C8B873E1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:45 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o7so2795539pgv.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pjXiaJJaFcfh/d5Hg7T1ivvJjPLwr7C0xxhr2qpyt5M=;
 b=GxjsphOX2zEbZqqdQjCwAyYsCORJvqE7NNfEH29SRF58gKtpndwV3xboOfeL6smVhr
 4g9HGrTfQyhg0GU/TbXK7hJt3NIiNdA2V8nV9goYxAa4mJST3cVcz/KhnqPh8EqWynDC
 sriF1cbKq5FLWJnxDmMDZg+khJmAWWy+d1pAz51gd8d4ihLk9EF2itAqhARQNy8Jq0ii
 SkL+OfhtU1GE//eVEggFflv5XZg0HQvYBN4ZTWsrISGG2pRxnVmvt9J1hvabHy0olmuR
 915k6mYOzmj3DXKD4SYLXVGkIPhldX8Acsy8lWnmYbC/VTdrJNcf9BwKVJw9n8v8xx+g
 5u5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pjXiaJJaFcfh/d5Hg7T1ivvJjPLwr7C0xxhr2qpyt5M=;
 b=uRxylyqlol3/mbygwvGa06Sq7bbKrLkf81VE3P0rRDOLe9QJMbu4obk0YOxjgLfsRL
 pHb43ErrIiKmKIgxEWbIvhGf/m5nRHkO9wp2cc/R6Z7LQJ1b1ebVj7oAm3S7wOg55J9c
 VZ6TSdNaMo37i4+kVKiUUXcQUvaENqSAyfB7rJgzGDx6xV+IhkAJ59/KxiDIAGej/uWe
 A5Xm28XuDSF8raYSERWLxz0+b9iru48atidkeG0+yrBME3xRBCPpt1hb9WxhaGSwTSs2
 pA93JKXG0tX+qwiDCYGBtkCmuPIKFumBconRKxUv3BWTUMNK9dLY+3LdACWtaqnzmHpu
 mI+w==
X-Gm-Message-State: AOAM532gngWnhNPie3lmnxjTzmsYNS9b0q+7uNqdLhADnjlrqXEVoxVg
 lGRqK50d7yjfR7ZIl0cu6/A=
X-Google-Smtp-Source: ABdhPJyIdK45Sv7Xjy21+qnn5zK3LkhfJoLsJXWYGmLi0HlZiH+Y7k2D41upxa+5dTuxo4y475uc9g==
X-Received: by 2002:a63:c211:: with SMTP id b17mr6356557pgd.195.1603892144863; 
 Wed, 28 Oct 2020 06:35:44 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:44 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:35 +0100
Message-Id: <20201028133437.212503-8-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 7/9] samples/bpf: use
 recvfrom() in xdpsock
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
Cc: daniel@iogearbox.net, jonathan.lemon@gmail.com, ast@kernel.org,
 edumazet@google.com, intel-wired-lan@lists.osuosl.org, qi.z.zhang@intel.com,
 kuba@kernel.org, =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKU3RhcnQgdXNpbmcg
cmVjdmZyb20oKSB0aGUgcnhkcm9wIHNjZW5hcmlvLgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTD
tnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIHNhbXBsZXMvYnBmL3hkcHNvY2tfdXNl
ci5jIHwgOCArKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYyBiL3NhbXBs
ZXMvYnBmL3hkcHNvY2tfdXNlci5jCmluZGV4IDExNDllOTRjYTMyZi4uOTZkMGI2NDgyYWM0IDEw
MDY0NAotLS0gYS9zYW1wbGVzL2JwZi94ZHBzb2NrX3VzZXIuYworKysgYi9zYW1wbGVzL2JwZi94
ZHBzb2NrX3VzZXIuYwpAQCAtMTE3Miw3ICsxMTcyLDcgQEAgc3RhdGljIGlubGluZSB2b2lkIGNv
bXBsZXRlX3R4X29ubHkoc3RydWN0IHhza19zb2NrZXRfaW5mbyAqeHNrLAogCX0KIH0KIAotc3Rh
dGljIHZvaWQgcnhfZHJvcChzdHJ1Y3QgeHNrX3NvY2tldF9pbmZvICp4c2ssIHN0cnVjdCBwb2xs
ZmQgKmZkcykKK3N0YXRpYyB2b2lkIHJ4X2Ryb3Aoc3RydWN0IHhza19zb2NrZXRfaW5mbyAqeHNr
KQogewogCXVuc2lnbmVkIGludCByY3ZkLCBpOwogCXUzMiBpZHhfcnggPSAwLCBpZHhfZnEgPSAw
OwpAQCAtMTE4Miw3ICsxMTgyLDcgQEAgc3RhdGljIHZvaWQgcnhfZHJvcChzdHJ1Y3QgeHNrX3Nv
Y2tldF9pbmZvICp4c2ssIHN0cnVjdCBwb2xsZmQgKmZkcykKIAlpZiAoIXJjdmQpIHsKIAkJaWYg
KHhza19yaW5nX3Byb2RfX25lZWRzX3dha2V1cCgmeHNrLT51bWVtLT5mcSkpIHsKIAkJCXhzay0+
YXBwX3N0YXRzLnJ4X2VtcHR5X3BvbGxzKys7Ci0JCQlyZXQgPSBwb2xsKGZkcywgbnVtX3NvY2tz
LCBvcHRfdGltZW91dCk7CisJCQlyZWN2ZnJvbSh4c2tfc29ja2V0X19mZCh4c2stPnhzayksIE5V
TEwsIDAsIE1TR19ET05UV0FJVCwgTlVMTCwgTlVMTCk7CiAJCX0KIAkJcmV0dXJuOwogCX0KQEAg
LTExOTMsNyArMTE5Myw3IEBAIHN0YXRpYyB2b2lkIHJ4X2Ryb3Aoc3RydWN0IHhza19zb2NrZXRf
aW5mbyAqeHNrLCBzdHJ1Y3QgcG9sbGZkICpmZHMpCiAJCQlleGl0X3dpdGhfZXJyb3IoLXJldCk7
CiAJCWlmICh4c2tfcmluZ19wcm9kX19uZWVkc193YWtldXAoJnhzay0+dW1lbS0+ZnEpKSB7CiAJ
CQl4c2stPmFwcF9zdGF0cy5maWxsX2ZhaWxfcG9sbHMrKzsKLQkJCXJldCA9IHBvbGwoZmRzLCBu
dW1fc29ja3MsIG9wdF90aW1lb3V0KTsKKwkJCXJlY3Zmcm9tKHhza19zb2NrZXRfX2ZkKHhzay0+
eHNrKSwgTlVMTCwgMCwgTVNHX0RPTlRXQUlULCBOVUxMLCBOVUxMKTsKIAkJfQogCQlyZXQgPSB4
c2tfcmluZ19wcm9kX19yZXNlcnZlKCZ4c2stPnVtZW0tPmZxLCByY3ZkLCAmaWR4X2ZxKTsKIAl9
CkBAIC0xMjM1LDcgKzEyMzUsNyBAQCBzdGF0aWMgdm9pZCByeF9kcm9wX2FsbCh2b2lkKQogCQl9
CiAKIAkJZm9yIChpID0gMDsgaSA8IG51bV9zb2NrczsgaSsrKQotCQkJcnhfZHJvcCh4c2tzW2ld
LCBmZHMpOworCQkJcnhfZHJvcCh4c2tzW2ldKTsKIAogCQlpZiAoYmVuY2htYXJrX2RvbmUpCiAJ
CQlicmVhazsKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
