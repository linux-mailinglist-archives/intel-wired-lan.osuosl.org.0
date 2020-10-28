Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A3429D013
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB29C873E0;
	Wed, 28 Oct 2020 13:35:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VMngHrySciJe; Wed, 28 Oct 2020 13:35:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 654AF87445;
	Wed, 28 Oct 2020 13:35:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C1A8F1BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A1DCE204D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3def6NURoitT for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id 2398520394
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:51 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id x13so2933797pfa.9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wUafzXmN1fiYZSw7cbOBZF12NArhlfVl1gsXYHPJ9hM=;
 b=UYBUdFIvxBj29SgLEr+PGFX5gVUE8FB3CJJRd/bfzpIQQ5KYJtggQpbY18+Pv5Cp9U
 GETiiq9f9VgN6/0CGEKAuvp5kSsWipRguLnJ8NAhl0vX8PWSPjbxjcbxJBoCoHvFafwf
 W23JBMb9GkgESvHW/T5YT+zmhkBYllOpcFPAMyYGUWadanyIQZ3LpPrVWAW+fIzBF9lo
 0kj8lQoCHvovgnZmqayUr/fUgssea4HlPXT4VbSIgJwyvU5Fj6YscXekqqCglCv5NoiE
 JzavnYIycuqqz9tI8hlAoIZdaUKxNEH9tmqgEBH1OefZ3RvsPIECbr+xvUzf5vWy/UOP
 zyuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wUafzXmN1fiYZSw7cbOBZF12NArhlfVl1gsXYHPJ9hM=;
 b=Uwnbe+gpq5xhMfyxDfCsFXpF80cnIunzZ1MW9DFEHIgalVGrXQS4xDwL9Vsl4ZWE9I
 ZJ6Y6ezgiX/U58AuiUexbm4mXsTGatr6PEnEyiRD/V/hnNzfDAYBELkXqz7UPWcI9AOc
 pJW9Nh2z7F3IsDvq1tFG+HcRjl4p3Bw8nY2VTT2Lm3PM1jYgaK//jQO9Dqg1CkoMnIE/
 OoGZVxeZ0mGUxq08CPh1BH2Ga3dFaGZAWFr3QN8fZHKlrvqwPhEvv1JRdGkZL95dpjad
 5Y/ynw+fhRL7ZBmmHi7e4Rh1e4ikdPqGPAEDWdqz++mZj4Xxb+dcKFXQ1tRsiyXpq2Yi
 jvLg==
X-Gm-Message-State: AOAM5315AwAxeFhnBeiie6jnfFerXeUuymUWyBdSGFcg/Kw/+N9Bod/0
 GZitEU0PZb+Gor4xb5H/Hfc=
X-Google-Smtp-Source: ABdhPJzErfbq9Axb2rnwLp5dHWjy9HVcmEllOuyy9jBLW7mTYF4ZduBV2MEQaTfs1jwmX5emGT7rtA==
X-Received: by 2002:aa7:9d03:0:b029:164:2981:2331 with SMTP id
 k3-20020aa79d030000b029016429812331mr7939350pfp.0.1603892150737; 
 Wed, 28 Oct 2020 06:35:50 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:50 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:36 +0100
Message-Id: <20201028133437.212503-9-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 8/9] samples/bpf: add
 busy-poll support to xdpsock
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKQWRkIGEgbmV3IG9w
dGlvbiB0byB4ZHBzb2NrLCAnQicsIGZvciBidXN5LXBvbGxpbmcuIFRoaXMgb3B0aW9uIHdpbGwK
YWxzbyBzZXQgdGhlIGJhdGNoaW5nIHNpemUsICdiJyBvcHRpb24sIHRvIHRoZSBidXN5LXBvbGwg
YnVkZ2V0LgoKU2lnbmVkLW9mZi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwu
Y29tPgotLS0KIHNhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jIHwgNDAgKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25zKCsp
LCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5j
IGIvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKaW5kZXggOTZkMGI2NDgyYWM0Li43ZWYyYzAx
YTEwOTQgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jCisrKyBiL3NhbXBs
ZXMvYnBmL3hkcHNvY2tfdXNlci5jCkBAIC05NSw2ICs5NSw3IEBAIHN0YXRpYyBpbnQgb3B0X3Rp
bWVvdXQgPSAxMDAwOwogc3RhdGljIGJvb2wgb3B0X25lZWRfd2FrZXVwID0gdHJ1ZTsKIHN0YXRp
YyB1MzIgb3B0X251bV94c2tzID0gMTsKIHN0YXRpYyB1MzIgcHJvZ19pZDsKK3N0YXRpYyBib29s
IG9wdF9idXN5X3BvbGw7CiAKIHN0cnVjdCB4c2tfcmluZ19zdGF0cyB7CiAJdW5zaWduZWQgbG9u
ZyByeF9ucGt0czsKQEAgLTkxMSw2ICs5MTIsNyBAQCBzdGF0aWMgc3RydWN0IG9wdGlvbiBsb25n
X29wdGlvbnNbXSA9IHsKIAl7InF1aWV0Iiwgbm9fYXJndW1lbnQsIDAsICdRJ30sCiAJeyJhcHAt
c3RhdHMiLCBub19hcmd1bWVudCwgMCwgJ2EnfSwKIAl7ImlycS1zdHJpbmciLCBub19hcmd1bWVu
dCwgMCwgJ0knfSwKKwl7ImJ1c3ktcG9sbCIsIG5vX2FyZ3VtZW50LCAwLCAnQid9LAogCXswLCAw
LCAwLCAwfQogfTsKIApAQCAtOTQ5LDYgKzk1MSw3IEBAIHN0YXRpYyB2b2lkIHVzYWdlKGNvbnN0
IGNoYXIgKnByb2cpCiAJCSIgIC1RLCAtLXF1aWV0ICAgICAgICAgIERvIG5vdCBkaXNwbGF5IGFu
eSBzdGF0cy5cbiIKIAkJIiAgLWEsIC0tYXBwLXN0YXRzCURpc3BsYXkgYXBwbGljYXRpb24gKHN5
c2NhbGwpIHN0YXRpc3RpY3MuXG4iCiAJCSIgIC1JLCAtLWlycS1zdHJpbmcJRGlzcGxheSBkcml2
ZXIgaW50ZXJydXB0IHN0YXRpc3RpY3MgZm9yIGludGVyZmFjZSBhc3NvY2lhdGVkIHdpdGggaXJx
LXN0cmluZy5cbiIKKwkJIiAgLUIsIC0tYnVzeS1wb2xsICAgICAgQnVzeSBwb2xsLlxuIgogCQki
XG4iOwogCWZwcmludGYoc3RkZXJyLCBzdHIsIHByb2csIFhTS19VTUVNX19ERUZBVUxUX0ZSQU1F
X1NJWkUsCiAJCW9wdF9iYXRjaF9zaXplLCBNSU5fUEtUX1NJWkUsIE1JTl9QS1RfU0laRSwKQEAg
LTk2NCw3ICs5NjcsNyBAQCBzdGF0aWMgdm9pZCBwYXJzZV9jb21tYW5kX2xpbmUoaW50IGFyZ2Ms
IGNoYXIgKiphcmd2KQogCW9wdGVyciA9IDA7CiAKIAlmb3IgKDs7KSB7Ci0JCWMgPSBnZXRvcHRf
bG9uZyhhcmdjLCBhcmd2LCAiRnJ0bGk6cTpwU05uOmN6ZjptdU1kOmI6QzpzOlA6eFFhSToiLAor
CQljID0gZ2V0b3B0X2xvbmcoYXJnYywgYXJndiwgIkZydGxpOnE6cFNObjpjemY6bXVNZDpiOkM6
czpQOnhRYUk6QiIsCiAJCQkJbG9uZ19vcHRpb25zLCAmb3B0aW9uX2luZGV4KTsKIAkJaWYgKGMg
PT0gLTEpCiAJCQlicmVhazsKQEAgLTEwNjIsNyArMTA2NSw5IEBAIHN0YXRpYyB2b2lkIHBhcnNl
X2NvbW1hbmRfbGluZShpbnQgYXJnYywgY2hhciAqKmFyZ3YpCiAJCQkJZnByaW50ZihzdGRlcnIs
ICJFUlJPUjogRmFpbGVkIHRvIGdldCBpcnFzIGZvciAlc1xuIiwgb3B0X2lycV9zdHIpOwogCQkJ
CXVzYWdlKGJhc2VuYW1lKGFyZ3ZbMF0pKTsKIAkJCX0KLQorCQkJYnJlYWs7CisJCWNhc2UgJ0In
OgorCQkJb3B0X2J1c3lfcG9sbCA9IDE7CiAJCQlicmVhazsKIAkJZGVmYXVsdDoKIAkJCXVzYWdl
KGJhc2VuYW1lKGFyZ3ZbMF0pKTsKQEAgLTExMzIsNyArMTEzNyw3IEBAIHN0YXRpYyBpbmxpbmUg
dm9pZCBjb21wbGV0ZV90eF9sMmZ3ZChzdHJ1Y3QgeHNrX3NvY2tldF9pbmZvICp4c2ssCiAJCXdo
aWxlIChyZXQgIT0gcmN2ZCkgewogCQkJaWYgKHJldCA8IDApCiAJCQkJZXhpdF93aXRoX2Vycm9y
KC1yZXQpOwotCQkJaWYgKHhza19yaW5nX3Byb2RfX25lZWRzX3dha2V1cCgmdW1lbS0+ZnEpKSB7
CisJCQlpZiAob3B0X2J1c3lfcG9sbCB8fCB4c2tfcmluZ19wcm9kX19uZWVkc193YWtldXAoJnVt
ZW0tPmZxKSkgewogCQkJCXhzay0+YXBwX3N0YXRzLmZpbGxfZmFpbF9wb2xscysrOwogCQkJCXJl
dCA9IHBvbGwoZmRzLCBudW1fc29ja3MsIG9wdF90aW1lb3V0KTsKIAkJCX0KQEAgLTExODAsNyAr
MTE4NSw3IEBAIHN0YXRpYyB2b2lkIHJ4X2Ryb3Aoc3RydWN0IHhza19zb2NrZXRfaW5mbyAqeHNr
KQogCiAJcmN2ZCA9IHhza19yaW5nX2NvbnNfX3BlZWsoJnhzay0+cngsIG9wdF9iYXRjaF9zaXpl
LCAmaWR4X3J4KTsKIAlpZiAoIXJjdmQpIHsKLQkJaWYgKHhza19yaW5nX3Byb2RfX25lZWRzX3dh
a2V1cCgmeHNrLT51bWVtLT5mcSkpIHsKKwkJaWYgKG9wdF9idXN5X3BvbGwgfHwgeHNrX3Jpbmdf
cHJvZF9fbmVlZHNfd2FrZXVwKCZ4c2stPnVtZW0tPmZxKSkgewogCQkJeHNrLT5hcHBfc3RhdHMu
cnhfZW1wdHlfcG9sbHMrKzsKIAkJCXJlY3Zmcm9tKHhza19zb2NrZXRfX2ZkKHhzay0+eHNrKSwg
TlVMTCwgMCwgTVNHX0RPTlRXQUlULCBOVUxMLCBOVUxMKTsKIAkJfQpAQCAtMTE5MSw3ICsxMTk2
LDcgQEAgc3RhdGljIHZvaWQgcnhfZHJvcChzdHJ1Y3QgeHNrX3NvY2tldF9pbmZvICp4c2spCiAJ
d2hpbGUgKHJldCAhPSByY3ZkKSB7CiAJCWlmIChyZXQgPCAwKQogCQkJZXhpdF93aXRoX2Vycm9y
KC1yZXQpOwotCQlpZiAoeHNrX3JpbmdfcHJvZF9fbmVlZHNfd2FrZXVwKCZ4c2stPnVtZW0tPmZx
KSkgeworCQlpZiAob3B0X2J1c3lfcG9sbCB8fCB4c2tfcmluZ19wcm9kX19uZWVkc193YWtldXAo
Jnhzay0+dW1lbS0+ZnEpKSB7CiAJCQl4c2stPmFwcF9zdGF0cy5maWxsX2ZhaWxfcG9sbHMrKzsK
IAkJCXJlY3Zmcm9tKHhza19zb2NrZXRfX2ZkKHhzay0+eHNrKSwgTlVMTCwgMCwgTVNHX0RPTlRX
QUlULCBOVUxMLCBOVUxMKTsKIAkJfQpAQCAtMTM0Miw3ICsxMzQ3LDcgQEAgc3RhdGljIHZvaWQg
bDJmd2Qoc3RydWN0IHhza19zb2NrZXRfaW5mbyAqeHNrLCBzdHJ1Y3QgcG9sbGZkICpmZHMpCiAK
IAlyY3ZkID0geHNrX3JpbmdfY29uc19fcGVlaygmeHNrLT5yeCwgb3B0X2JhdGNoX3NpemUsICZp
ZHhfcngpOwogCWlmICghcmN2ZCkgewotCQlpZiAoeHNrX3JpbmdfcHJvZF9fbmVlZHNfd2FrZXVw
KCZ4c2stPnVtZW0tPmZxKSkgeworCQlpZiAob3B0X2J1c3lfcG9sbCB8fCB4c2tfcmluZ19wcm9k
X19uZWVkc193YWtldXAoJnhzay0+dW1lbS0+ZnEpKSB7CiAJCQl4c2stPmFwcF9zdGF0cy5yeF9l
bXB0eV9wb2xscysrOwogCQkJcmV0ID0gcG9sbChmZHMsIG51bV9zb2Nrcywgb3B0X3RpbWVvdXQp
OwogCQl9CkBAIC0xMzU0LDcgKzEzNTksNyBAQCBzdGF0aWMgdm9pZCBsMmZ3ZChzdHJ1Y3QgeHNr
X3NvY2tldF9pbmZvICp4c2ssIHN0cnVjdCBwb2xsZmQgKmZkcykKIAkJaWYgKHJldCA8IDApCiAJ
CQlleGl0X3dpdGhfZXJyb3IoLXJldCk7CiAJCWNvbXBsZXRlX3R4X2wyZndkKHhzaywgZmRzKTsK
LQkJaWYgKHhza19yaW5nX3Byb2RfX25lZWRzX3dha2V1cCgmeHNrLT50eCkpIHsKKwkJaWYgKG9w
dF9idXN5X3BvbGwgfHwgeHNrX3JpbmdfcHJvZF9fbmVlZHNfd2FrZXVwKCZ4c2stPnR4KSkgewog
CQkJeHNrLT5hcHBfc3RhdHMudHhfd2FrZXVwX3NlbmR0b3MrKzsKIAkJCWtpY2tfdHgoeHNrKTsK
IAkJfQpAQCAtMTQ2MSw2ICsxNDY2LDI0IEBAIHN0YXRpYyB2b2lkIGVudGVyX3hza3NfaW50b19t
YXAoc3RydWN0IGJwZl9vYmplY3QgKm9iaikKIAl9CiB9CiAKK3N0YXRpYyB2b2lkIGFwcGx5X3Nl
dHNvY2tvcHQoc3RydWN0IHhza19zb2NrZXRfaW5mbyAqeHNrKQoreworCWludCBzb2NrX29wdDsK
KworCWlmICghb3B0X2J1c3lfcG9sbCkKKwkJcmV0dXJuOworCisJc29ja19vcHQgPSAxOworCWlm
IChzZXRzb2Nrb3B0KHhza19zb2NrZXRfX2ZkKHhzay0+eHNrKSwgU09MX1NPQ0tFVCwgU09fQklB
U19CVVNZX1BPTEwsCisJCSAgICAgICAodm9pZCAqKSZzb2NrX29wdCwgc2l6ZW9mKHNvY2tfb3B0
KSkgPCAwKQorCQlleGl0X3dpdGhfZXJyb3IoZXJybm8pOworCisJc29ja19vcHQgPSAyMDsgLy8g
cmFuZG9tbHkgcGlja2VkIDotUAorCWlmIChzZXRzb2Nrb3B0KHhza19zb2NrZXRfX2ZkKHhzay0+
eHNrKSwgU09MX1NPQ0tFVCwgU09fQlVTWV9QT0xMLAorCQkgICAgICAgKHZvaWQgKikmc29ja19v
cHQsIHNpemVvZihzb2NrX29wdCkpIDwgMCkKKwkJZXhpdF93aXRoX2Vycm9yKGVycm5vKTsKK30K
KwogaW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogewogCXN0cnVjdCBybGltaXQgciA9
IHtSTElNX0lORklOSVRZLCBSTElNX0lORklOSVRZfTsKQEAgLTE1MDIsNiArMTUyNSw5IEBAIGlu
dCBtYWluKGludCBhcmdjLCBjaGFyICoqYXJndikKIAlmb3IgKGkgPSAwOyBpIDwgb3B0X251bV94
c2tzOyBpKyspCiAJCXhza3NbbnVtX3NvY2tzKytdID0geHNrX2NvbmZpZ3VyZV9zb2NrZXQodW1l
bSwgcngsIHR4KTsKIAorCWZvciAoaSA9IDA7IGkgPCBvcHRfbnVtX3hza3M7IGkrKykKKwkJYXBw
bHlfc2V0c29ja29wdCh4c2tzW2ldKTsKKwogCWlmIChvcHRfYmVuY2ggPT0gQkVOQ0hfVFhPTkxZ
KSB7CiAJCWdlbl9ldGhfaGRyX2RhdGEoKTsKIAotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
