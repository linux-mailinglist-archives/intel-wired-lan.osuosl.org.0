Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 411DF2A7BCE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:29:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 022688569B;
	Thu,  5 Nov 2020 10:29:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZjlKp4HustgA; Thu,  5 Nov 2020 10:29:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B781E855F1;
	Thu,  5 Nov 2020 10:29:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45E3E1BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 429B585725
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YDd8Aze_Ke0G for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:29:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A07F985722
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:22 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id 10so1144948pfp.5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:29:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=e54cykKKHzKa+d5ONTAfuqf456gCG71r+1AOG3S3TU4=;
 b=DcsWOFdd6pQtBVGTRL3mmOOvfQ+ygKkndJR4vrHEGnx1pJnKzq3pm11TP/5rwyNv+f
 MZZgxSnVLcDHMo/+7p5zl+aUMxB5G/xxetpwB7fkOl5wS++ZllRgCR2qt6GOtuOb/Wkn
 hwlVRg6Ly8Xh+2adG2AhrySjvpHV3oAE2kH5WMQUBq5R7uV92PE1rlbkDpX5ZqB2q2Tc
 sAekTQeE1nLARcDogoQz0JUVKfOO/n0u1TwrRWP+7SA6dBHWskRqihTpKpgaNS7AGcdm
 P3NPZxaKYwkVaXDAK0UFGNVWrsiqW29AAAJJaoJmdxplM/Cf4BRAewhUoxyfxCTzkydS
 EJyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=e54cykKKHzKa+d5ONTAfuqf456gCG71r+1AOG3S3TU4=;
 b=Rvk/HCv9xzRHfK5oJAKEuHNJ82EfDBTSzGvryO9FFwn2Xh/2y7LpqQFvfAPsy13o1a
 SVRsKccMv1OA8xP9G6wcmP7IJuXGLzFF8sIn0dr1x6VNkGp6k3CuibzNOuYeujb41msD
 wwMfAFvqUIS+okVPRiqFKagNgtbJ9RjBGcY4Os0jBmzs/xdZmD7LK9nLMXEfu21uGOzo
 8w6uZ0A4K3qMG+1fQtTwh47yqyhyJ6L2a3j0qMhMxt04ZEsGa174trNQEFM2PKLAYatv
 pNl3ALQ0RCzXiBdcm3HdP9noF6Dkrc0L61ZRW2Twq9EI3Nw52ZjxT2bBSMEihXIQjDkE
 brYg==
X-Gm-Message-State: AOAM530wFXkckfgrmFdmEgauEWif9ffDNGO23GJ0ignDPHB6LNjePPL3
 fsR/GFIY9jo+hcXUIrIzI4A=
X-Google-Smtp-Source: ABdhPJwMtU3Wi9jdorhaJZwiNiXEZp0tZP7uMOm91tr1jCKbWP9yw8KYkzc2jbaBCrfNZsTZFUNGMQ==
X-Received: by 2002:aa7:8154:0:b029:156:4b89:8072 with SMTP id
 d20-20020aa781540000b02901564b898072mr1831231pfn.51.1604572162219; 
 Thu, 05 Nov 2020 02:29:22 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.29.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:29:21 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:11 +0100
Message-Id: <20201105102812.152836-9-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 8/9] samples/bpf: add
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
IGIvc2FtcGxlcy9icGYveGRwc29ja191c2VyLmMKaW5kZXggOTZkMGI2NDgyYWM0Li4xNjI0NDRm
YTk2MjcgMTAwNjQ0Ci0tLSBhL3NhbXBsZXMvYnBmL3hkcHNvY2tfdXNlci5jCisrKyBiL3NhbXBs
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
IChzZXRzb2Nrb3B0KHhza19zb2NrZXRfX2ZkKHhzay0+eHNrKSwgU09MX1NPQ0tFVCwgU09fUFJF
RkVSX0JVU1lfUE9MTCwKKwkJICAgICAgICh2b2lkICopJnNvY2tfb3B0LCBzaXplb2Yoc29ja19v
cHQpKSA8IDApCisJCWV4aXRfd2l0aF9lcnJvcihlcnJubyk7CisKKwlzb2NrX29wdCA9IDIwOyAv
LyByYW5kb21seSBwaWNrZWQgOi1QCisJaWYgKHNldHNvY2tvcHQoeHNrX3NvY2tldF9fZmQoeHNr
LT54c2spLCBTT0xfU09DS0VULCBTT19CVVNZX1BPTEwsCisJCSAgICAgICAodm9pZCAqKSZzb2Nr
X29wdCwgc2l6ZW9mKHNvY2tfb3B0KSkgPCAwKQorCQlleGl0X3dpdGhfZXJyb3IoZXJybm8pOwor
fQorCiBpbnQgbWFpbihpbnQgYXJnYywgY2hhciAqKmFyZ3YpCiB7CiAJc3RydWN0IHJsaW1pdCBy
ID0ge1JMSU1fSU5GSU5JVFksIFJMSU1fSU5GSU5JVFl9OwpAQCAtMTUwMiw2ICsxNTI1LDkgQEAg
aW50IG1haW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQogCWZvciAoaSA9IDA7IGkgPCBvcHRfbnVt
X3hza3M7IGkrKykKIAkJeHNrc1tudW1fc29ja3MrK10gPSB4c2tfY29uZmlndXJlX3NvY2tldCh1
bWVtLCByeCwgdHgpOwogCisJZm9yIChpID0gMDsgaSA8IG9wdF9udW1feHNrczsgaSsrKQorCQlh
cHBseV9zZXRzb2Nrb3B0KHhza3NbaV0pOworCiAJaWYgKG9wdF9iZW5jaCA9PSBCRU5DSF9UWE9O
TFkpIHsKIAkJZ2VuX2V0aF9oZHJfZGF0YSgpOwogCi0tIAoyLjI3LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5n
IGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
