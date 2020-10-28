Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B79E229D010
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Oct 2020 14:35:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2A9CE86AD7;
	Wed, 28 Oct 2020 13:35:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AXjlOVGfp0dy; Wed, 28 Oct 2020 13:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 15EED86A60;
	Wed, 28 Oct 2020 13:35:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7A41BF857
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 21ADF204D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mrCNWq8bXOfy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Oct 2020 13:35:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 94CDC20394
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 13:35:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id r10so2783275pgb.10
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Oct 2020 06:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=sBa77MmCFN0T1+VtUx1HDnNMT2/Xv5NhXqq896ClIPA=;
 b=ThThPoDIPRt59MZkfI1qQFRnAS2OlQaGLzpGPN2cxTSQfDtCdz08ENqwNG9U8jzOSq
 s34Q276RHnCcq8eK/nTv0czP0MtEL51wsFyO+l0/EF/aZx+dKou4D7B6eVgK94JVOkJy
 gNfNJgZzXGP//V7CiqZ3l8ybUm24uPVJ0zBOsk3MEzh+BQ/TucW/kMC61IEEHLyMgwnz
 6TaxNwP8l906lqpO77tS0TEDJFzAltKegGSigo6TgM+iVrTnY7ITYI4zxmNp2cKEmth2
 8o4dgHKzSDhquPjaHN+aQt5e/yANa4V1Nlnmnor+iDQiKXFMgUOhuOG8XxBJGAdtrER9
 PYdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=sBa77MmCFN0T1+VtUx1HDnNMT2/Xv5NhXqq896ClIPA=;
 b=pOl62gJZSh0fonB7rxN7ndqhySPSpcK8VMuscdXrUVwA5AQgUBtlHljNy9Ob+FwFoH
 KbBSrngIaLEEXIedQKrRb44wTBsmxfpK8eyZx95x2jkCAHabClegsiyJceYTnPsiYE1Z
 2bBrrIReEZpo/2NCKmJeF68SAW6OBJOBpMaqQ9h21ZC8E/6Ng6v3ppNdxgJEOHXzSogs
 LW/gOA7jbW1pXc1fidmghP8SpgKooFMjwaTqiR3CMV4SMj7ZcSkU0tgMSCPZhxEkrPiT
 L65U4bW1bplVGN1JPqknJ352c/37obhIPmsRZ6OKdrkAU4vsCvmjnMe4iz+ZJSOxyJp8
 p18w==
X-Gm-Message-State: AOAM531Wou5seBQTs2jPgMBZhIU533MpIkJAHNLlIgbSrUpYk4vMeBtm
 ajeRCvHR9frm+nKHcpA16U4=
X-Google-Smtp-Source: ABdhPJx1sVLTojg+U9YZMBvRLhAg0GBPcu5nq1fPysti/X+d+Gmy//kTyoSjwtScwRHBrv8BGUyEYA==
X-Received: by 2002:a62:ea0c:0:b029:164:3789:547b with SMTP id
 t12-20020a62ea0c0000b02901643789547bmr7074341pfh.27.1603892133273; 
 Wed, 28 Oct 2020 06:35:33 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id q14sm5935393pjp.43.2020.10.28.06.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Oct 2020 06:35:32 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: netdev@vger.kernel.org,
	bpf@vger.kernel.org
Date: Wed, 28 Oct 2020 14:34:33 +0100
Message-Id: <20201028133437.212503-6-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201028133437.212503-1-bjorn.topel@gmail.com>
References: <20201028133437.212503-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [RFC PATCH bpf-next 5/9] xsk: add busy-poll
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
