Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 749EF2A7BC5
	for <lists+intel-wired-lan@lfdr.de>; Thu,  5 Nov 2020 11:29:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 37F1320373;
	Thu,  5 Nov 2020 10:29:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ewahTvQbNkV7; Thu,  5 Nov 2020 10:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F58622D10;
	Thu,  5 Nov 2020 10:29:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0CFB71BF59A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 01B3122926
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BoRiy6gZ7DMo for <intel-wired-lan@lists.osuosl.org>;
 Thu,  5 Nov 2020 10:29:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
 [209.85.210.193])
 by silver.osuosl.org (Postfix) with ESMTPS id B0C6120373
 for <intel-wired-lan@lists.osuosl.org>; Thu,  5 Nov 2020 10:29:03 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id q10so526020pfn.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 05 Nov 2020 02:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBa77MmCFN0T1+VtUx1HDnNMT2/Xv5NhXqq896ClIPA=;
 b=FHg4fGeatDUqCffVP36y1CuuIEMORtXfpf9gxR4uh7SMFpFDy/2ix1LRwXRkjE0bBo
 DvpfGmAkZTLPobKe75fLiw1yTAzM8e+Ns1+TfGZNWiZ6ENQ9Nme/uNmjDA7RXBxPB5xe
 TbykhLAeoGjZ2SmRNlfgWIRRLiRt7U1PhpH3a47s0ECBLHJKgXzCg+4u/kB3dg1A4pdn
 nV9nTvjX+ex7fYUGsXYQ9pQEUC+g65ryt8F0cb1iJao4gVf1PpZtLfxny1WlDoD48WdX
 jndxBLDCzprkgSny6Rp/DUXWfKpzqqMe5utrRs2eeYRgW8JlTYzcTPezkVliF8Ff/JpN
 PfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBa77MmCFN0T1+VtUx1HDnNMT2/Xv5NhXqq896ClIPA=;
 b=obLeFJ6Us4eKLdW80/duR+fjp4mCNJSgXoTL1yIBMnOY415dEfeuS/LwrOGmg51nSj
 D47yD0DaMec1B4DMCFh47INwQwK8SeRCSm+L6zIvNQrnyGdf7QUvsv4RRBxw6lQ38HdB
 h4MyC8ikob1xtimr1klOWY4nRvWbU2VCP3ndRSK3iB7lW3zwGA/T0aoCZQOjqxPFPYXc
 ME9gC7SWS2m0PZix3AHFI22cAbrna+M+uhdX1DIyswOuy3ejTqez9Tf6fu5BOQDwaZiG
 fvaocOEs7/QxHJwqCNLFymjM3lGW6QfcUMdmrr/zsgZvVkeZDkoTusEKMg7/BvZJK8ng
 6eMA==
X-Gm-Message-State: AOAM530jI7yGWUqphKKtuVh9myA834IXavirHbarQS49VvDTPwOcVypK
 VedxCryHmYbNOknFgoNl6wk=
X-Google-Smtp-Source: ABdhPJwDC8auIg61mIgZESl4abBUHxxmScdtxOTlhH3feYBhtCObnRv1/YdpIB2hW4nAn7lN7EIcxg==
X-Received: by 2002:a63:da47:: with SMTP id l7mr1771055pgj.417.1604572143367; 
 Thu, 05 Nov 2020 02:29:03 -0800 (PST)
Received: from btopel-mobl.ger.intel.com (fmdmzpr03-ext.fm.intel.com.
 [192.55.54.38])
 by smtp.gmail.com with ESMTPSA id 192sm2050117pfz.200.2020.11.05.02.28.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Nov 2020 02:29:02 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Thu,  5 Nov 2020 11:28:08 +0100
Message-Id: <20201105102812.152836-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201105102812.152836-1-bjorn.topel@gmail.com>
References: <20201105102812.152836-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next v2 5/9] xsk: add busy-poll
 support for {recv, send}msg()
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKV2lyZS11cCBYRFAg
c29ja2V0IGJ1c3ktcG9sbCBzdXBwb3J0IGZvciByZWN2bXNnKCkgYW5kIHNlbmRtc2coKS4KClNp
Z25lZC1vZmYtYnk6IEJqw7ZybiBUw7ZwZWwgPGJqb3JuLnRvcGVsQGludGVsLmNvbT4KLS0tCiBu
ZXQveGRwL3hzay5jIHwgNyArKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
CgpkaWZmIC0tZ2l0IGEvbmV0L3hkcC94c2suYyBiL25ldC94ZHAveHNrLmMKaW5kZXggMmU1Yjlm
MjdjN2EzLi5kYTY0OWI0ZjM3N2MgMTAwNjQ0Ci0tLSBhL25ldC94ZHAveHNrLmMKKysrIGIvbmV0
L3hkcC94c2suYwpAQCAtMjMsNiArMjMsNyBAQAogI2luY2x1ZGUgPGxpbnV4L25ldGRldmljZS5o
PgogI2luY2x1ZGUgPGxpbnV4L3JjdWxpc3QuaD4KICNpbmNsdWRlIDxuZXQveGRwX3NvY2tfZHJ2
Lmg+CisjaW5jbHVkZSA8bmV0L2J1c3lfcG9sbC5oPgogI2luY2x1ZGUgPG5ldC94ZHAuaD4KIAog
I2luY2x1ZGUgInhza19xdWV1ZS5oIgpAQCAtNDcyLDYgKzQ3Myw5IEBAIHN0YXRpYyBpbnQgeHNr
X3NlbmRtc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgc2l6ZV90IHRv
dGFsX2xlbikKIAlpZiAodW5saWtlbHkobmVlZF93YWl0KSkKIAkJcmV0dXJuIC1FT1BOT1RTVVBQ
OwogCisJaWYgKHNrX2Nhbl9idXN5X2xvb3Aoc2spKQorCQlza19idXN5X2xvb3Aoc2ssIDEpOyAv
KiBvbmx5IHN1cHBvcnQgbm9uLWJsb2NraW5nIHNvY2tldHMgKi8KKwogCXBvb2wgPSB4cy0+cG9v
bDsKIAlpZiAocG9vbC0+Y2FjaGVkX25lZWRfd2FrZXVwICYgWERQX1dBS0VVUF9UWCkKIAkJcmV0
dXJuIF9feHNrX3NlbmRtc2coc2spOwpAQCAtNDkzLDYgKzQ5Nyw5IEBAIHN0YXRpYyBpbnQgeHNr
X3JlY3Ztc2coc3RydWN0IHNvY2tldCAqc29jaywgc3RydWN0IG1zZ2hkciAqbSwgc2l6ZV90IGxl
biwgaW50IGZsCiAJaWYgKHVubGlrZWx5KG5lZWRfd2FpdCkpCiAJCXJldHVybiAtRU9QTk9UU1VQ
UDsKIAorCWlmIChza19jYW5fYnVzeV9sb29wKHNrKSkKKwkJc2tfYnVzeV9sb29wKHNrLCAxKTsg
Lyogb25seSBzdXBwb3J0IG5vbi1ibG9ja2luZyBzb2NrZXRzICovCisKIAlpZiAoeHMtPnBvb2wt
PmNhY2hlZF9uZWVkX3dha2V1cCAmIFhEUF9XQUtFVVBfUlggJiYgeHMtPnpjKQogCQlyZXR1cm4g
eHNrX3dha2V1cCh4cywgWERQX1dBS0VVUF9SWCk7CiAJcmV0dXJuIDA7Ci0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
