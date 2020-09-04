Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ECE25DA8D
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Sep 2020 15:54:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9D3B486A90;
	Fri,  4 Sep 2020 13:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nWYZ2Zi4unSp; Fri,  4 Sep 2020 13:54:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C795486BBB;
	Fri,  4 Sep 2020 13:54:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 809311BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7CA8D874FE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ei69l75UVSBE for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Sep 2020 13:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D654F874FC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Sep 2020 13:54:14 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id m15so82820pls.8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Sep 2020 06:54:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6p167BPsiF1zCEf+N843XcEpo+Z9u7WNQshAXfhw53E=;
 b=nGTEE85eET4Yo/K0po0+3VC/lho4Sptjai1sa27si/N2Pw9KQwRo/4JcoMOUr3AUIC
 OkZj0RRwmNGcYQOet6ZCVuUpdP3FSoudXnbTtIwVB5OyXVM0DexMLRilWu39Zi7zJew8
 SNir4AG8wQL8ytTXD0RCe0+pYBHAS32jDxSnyHFB5S2vQ6cqY2InZ3SLbjUB9UtcWHr5
 xHhUW7NT3cCcJiwZC21q1JBiJ12flAWDXjp6fjKQdifZVeUE8L1IbrISXNVvwJNFReN4
 EIPGXPS3WhRlmMG2xwNJyUYYiwHBWWQWfTBfA/eaFVAQNEJxv2cLMHSVKWiceNV2nV7s
 qbnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6p167BPsiF1zCEf+N843XcEpo+Z9u7WNQshAXfhw53E=;
 b=dnxqst8LGcCJHgl73nUeSoMYH6e+TW68jn/GtdLSKnw0GW5zq2pfewDPBEQeRepus4
 W4dBtJ8+fbVkoJpQbrLJVn+fojLAvNSfZlaFfIEeyWOV6zRSzQXlEhpuxGjy1ItWvunB
 hc9Erqaa2Gy2pLtZlb1jzOiMsSEOlWr8nXX7HIgzTUD1nN/aJkRjzz4hPzS6Lyk/nmXR
 9M1ImtSLiQxTRrUk5cOyJ/B6qF6a4E+6q43njh074cPYyEIm6kdNQ8C7KnTIr/KL5dP4
 VCj+YcoWjYGuXi3VUtPsUgDTAhJ7W+ngbx4q4h9FXRIUp+Deb9DqGI7fLHw96vYrGZZ5
 9rCg==
X-Gm-Message-State: AOAM530S4bbNS1OH5H/GTPUP4IWxMC5pwzpX1mloeCiZzMf6fosaUxD4
 JMkfaaaSQafFSXaqIgzlW8A=
X-Google-Smtp-Source: ABdhPJz49bRPhGh1Ztm9ufAlKTs0J93VJw8p0pB+61IOeisgN9GSLaKg24JMuQcmFL63AhwbMGyVJQ==
X-Received: by 2002:a17:90a:4046:: with SMTP id
 k6mr8232176pjg.11.1599227654415; 
 Fri, 04 Sep 2020 06:54:14 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.41])
 by smtp.gmail.com with ESMTPSA id g9sm6931239pfr.172.2020.09.04.06.54.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 06:54:13 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Fri,  4 Sep 2020 15:53:26 +0200
Message-Id: <20200904135332.60259-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904135332.60259-1-bjorn.topel@gmail.com>
References: <20200904135332.60259-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 1/6] xsk: improve
 xdp_do_redirect() error codes
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
Cc: hawk@kernel.org, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIGVycm9yIGNv
ZGVzIHJldHVybmVkIGJ5IHhkcF9kb19yZWRpcmVjdCgpIHdoZW4gcmVkaXJlY3RpbmcgYSBmcmFt
ZQp0byBhbiBBRl9YRFAgc29ja2V0IGhhcyBub3QgYmVlbiB2ZXJ5IHVzZWZ1bC4gQSBkcml2ZXIg
Y291bGQgbm90CmRpc3Rpbmd1aXNoIGJldHdlZW4gZGlmZmVyZW50IGVycm9ycy4gUHJpb3IgdGhp
cyBjaGFuZ2UgdGhlIGZvbGxvd2luZwpjb2RlcyB3aGVyZSB1c2VkOgoKU29ja2V0IG5vdCBib3Vu
ZCBvciBpbmNvcnJlY3QgcXVldWUvbmV0ZGV2OiBFSU5WQUwKWERQIGZyYW1lL0FGX1hEUCBidWZm
ZXIgc2l6ZSBtaXNtYXRjaDogRU5PU1BDCkNvdWxkIG5vdCBhbGxvY2F0ZSBidWZmZXIgKGNvcHkg
bW9kZSk6IEVOT1NQQwpBRl9YRFAgUnggYnVmZmVyIGZ1bGw6IEVOT1NQQwoKQWZ0ZXIgdGhpcyBj
aGFuZ2U6CgpTb2NrZXQgbm90IGJvdW5kIG9yIGluY29ycmVjdCBxdWV1ZS9uZXRkZXY6IEVJTlZB
TApYRFAgZnJhbWUvQUZfWERQIGJ1ZmZlciBzaXplIG1pc21hdGNoOiBFTk9TUEMKQ291bGQgbm90
IGFsbG9jYXRlIGJ1ZmZlciAoY29weSBtb2RlKTogRU5PTUVNCkFGX1hEUCBSeCBidWZmZXIgZnVs
bDogRU5PQlVGUwoKQW4gQUZfWERQIHplcm8tY29weSBkcml2ZXIgY2FuIG5vdyBwb3RlbnRpYWxs
eSBkZXRlcm1pbmUgaWYgdGhlCmZhaWx1cmUgd2FzIGR1ZSB0byBhIGZ1bGwgUnggYnVmZmVyLCBh
bmQgaWYgc28gc3RvcCBwcm9jZXNzaW5nIG1vcmUKZnJhbWVzLCB5aWVsZGluZyB0byB0aGUgdXNl
cmxhbmQgQUZfWERQIGFwcGxpY2F0aW9uLgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8
Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIG5ldC94ZHAveHNrLmMgICAgICAgfCAyICstCiBu
ZXQveGRwL3hza19xdWV1ZS5oIHwgMiArLQogMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvbmV0L3hkcC94c2suYyBiL25ldC94ZHAv
eHNrLmMKaW5kZXggMzg5NTY5N2Y4NTQwLi5kYjM4NTYwYzRhZjcgMTAwNjQ0Ci0tLSBhL25ldC94
ZHAveHNrLmMKKysrIGIvbmV0L3hkcC94c2suYwpAQCAtMTk3LDcgKzE5Nyw3IEBAIHN0YXRpYyBp
bnQgX194c2tfcmN2KHN0cnVjdCB4ZHBfc29jayAqeHMsIHN0cnVjdCB4ZHBfYnVmZiAqeGRwLCB1
MzIgbGVuLAogCXhza194ZHAgPSB4c2tfYnVmZl9hbGxvYyh4cy0+cG9vbCk7CiAJaWYgKCF4c2tf
eGRwKSB7CiAJCXhzLT5yeF9kcm9wcGVkKys7Ci0JCXJldHVybiAtRU5PU1BDOworCQlyZXR1cm4g
LUVOT01FTTsKIAl9CiAKIAl4c2tfY29weV94ZHAoeHNrX3hkcCwgeGRwLCBsZW4pOwpkaWZmIC0t
Z2l0IGEvbmV0L3hkcC94c2tfcXVldWUuaCBiL25ldC94ZHAveHNrX3F1ZXVlLmgKaW5kZXggMmQ4
ODNmNjMxYzg1Li5iNzY5NjZjZjEyMmUgMTAwNjQ0Ci0tLSBhL25ldC94ZHAveHNrX3F1ZXVlLmgK
KysrIGIvbmV0L3hkcC94c2tfcXVldWUuaApAQCAtMzA1LDcgKzMwNSw3IEBAIHN0YXRpYyBpbmxp
bmUgaW50IHhza3FfcHJvZF9yZXNlcnZlX2Rlc2Moc3RydWN0IHhza19xdWV1ZSAqcSwKIAl1MzIg
aWR4OwogCiAJaWYgKHhza3FfcHJvZF9pc19mdWxsKHEpKQotCQlyZXR1cm4gLUVOT1NQQzsKKwkJ
cmV0dXJuIC1FTk9CVUZTOwogCiAJLyogQSwgbWF0Y2hlcyBEICovCiAJaWR4ID0gcS0+Y2FjaGVk
X3Byb2QrKyAmIHEtPnJpbmdfbWFzazsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
