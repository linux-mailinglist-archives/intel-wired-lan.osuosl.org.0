Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C7A2A7BCB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:29:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0064F22926;
	Thu,  5 Nov 2020 10:29:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oLI1ySvwp3yR; Thu,  5 Nov 2020 10:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4AFDB22D33;
	Thu,  5 Nov 2020 10:29:18 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6F2191BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6AEA385725
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pow1b0GAiuSv for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:29:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id F0E3785722
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:15 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id x23so575600plr.6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pjXiaJJaFcfh/d5Hg7T1ivvJjPLwr7C0xxhr2qpyt5M=;
 b=tu5KQKGOfAq/+kzkyjpohI6vnL31DNuBznHjUzGnMNP9aE7+Fz5h89Wm9deISFwNmW
 0D8990Sm3DsMfVLQ/90XbHJ/q5KAseae61Po/AYZTSYRu0ECZ2bGiVpfD6Hyjq5q1ITX
 bZMTf55h5Pq4LyicjWB6UutcnkCYO/4DOEEApsnnuPqayyepNlUUN3r4bE+fLwFn71Dg
 8Br+7dQ7pHZAYJdEDPAkTfSPpanONzyD17HugJseS5cWvNp35+uHRL7v7UDZzb7s0u1W
 zchoTyQar8q+rs+wKq9Ai/EX8X5+BpI/lh/ywxJMTZRJO51TfG5FjsqSE20JpxX0OoRO
 wmhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pjXiaJJaFcfh/d5Hg7T1ivvJjPLwr7C0xxhr2qpyt5M=;
 b=Rdh1U22CCn6aHAcAdQdOmym8H2flaBIysuPX1MJ0480OCSSquBWGh6n17sGg8pKFgD
 B7ho82ELIvYu0jsc7QyKw6Fm0X8mmRwlOrYNgNngpBYgIh3Yjwc8S+p0x8jJbKl1wsJ+
 4O0vAfGOdCX83qDEgLD4OShx2qk7CYp8q/AjFx+alP3mk0CpScXsdG3qsy/Avo2ufEDl
 H7gu7him9IUWNcq174j6cbfQHm8aeBs+9+YYqi43+jS/W5W7XAAZys0Ome3o6d73hDXQ
 s0axK4NHRZdC+sSgr56jj8OwpmXjoE+RwvkmVTgskuPtsTLw1+1CQy0KDAZnoEu59rtB
 DLRQ==
X-Gm-Message-State: AOAM531zh3FdUFYQaP/bJEUYsuK1HWawE4kwL6hg3DR/4/AhsrwTDkay
 cDHAjnSBianVKiRNCwSNkq7Z3MDqphnDvHVW
X-Google-Smtp-Source: ABdhPJweiqei02sQwGEWSXAXmvB96TXhjMxBPCROkBjzNNCRYD4bKAXypJqKLCTZ4N18nVmQLVEemQ==
X-Received: by 2002:a17:902:6f10:b029:d6:e6f5:1dab with SMTP id
 w16-20020a1709026f10b02900d6e6f51dabmr1762705plk.1.1604572155623; 
 Thu, 05 Nov 2020 02:29:15 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.29.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:29:14 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:10 +0100
Message-Id: <20201105102812.152836-8-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 7/9] samples/bpf: use
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
