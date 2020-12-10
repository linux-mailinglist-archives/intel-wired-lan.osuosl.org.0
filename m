Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F162D5A4A
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 13:19:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E51E485F74;
	Thu, 10 Dec 2020 12:19:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHw5J0Ur9XZf; Thu, 10 Dec 2020 12:19:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2876685F7E;
	Thu, 10 Dec 2020 12:19:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A34341BF31C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 12:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A5938426E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 12:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMIx380UM+Oq for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Dec 2020 12:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED862867F4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 12:19:34 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id u4so2662724plr.12
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Dec 2020 04:19:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=euIMWqXmb35zpjlHIisHFKgDZZP7z0+WRl9qw72DjtA=;
 b=FdiJ6B2Q0xa2wOJ2qvjoH8EDGRT+MYF/tXY9LAPkMSKTWUSwPtNXkdppnItTtzcOIP
 52rrJMDnHaBhKDAoVvWRKPQK692txMvbb024AaAPy2JZzxy2UF2RqTs2FPRYQfRc4WDx
 SCwphnAYXTPQ2VPxU+hSCEhMc2Lpc4L2F5uou2ICoKyWJCtS8Yat8U5fj37IUkCeNx35
 sXYHMCD5P1rgvl+FDB5F0xFfwBCcnYgaXGWyI7DArr8RFT0GkUAAU+rh9mQj8z7vD348
 WefOTHo0Z5YyV52mXkEH2BbOPqMStCi7nxESf3jaIl8vnbI0KsDm3GARLylfdiSrrf23
 MWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=euIMWqXmb35zpjlHIisHFKgDZZP7z0+WRl9qw72DjtA=;
 b=Bl1IIHswCeigJllhA6LFeXiPRB1m2GReerNoAI27SgkxtpCpjOcd5OUrFGJgfP4uw0
 nGcMkvhgQsfPqPWsj4ahbsDN/EA1Yt7u9coigWen6iENId7/Qr9i3lkkmjk8Gz6dYOau
 bH/etwY0froDaEsnWge96ij6kwamJqo448aVCwNWFy9Mroq/2zbpabiAw/obtAtixW0D
 84huZTmQ94ltXiOA/5Jd9LWFMaFrFdqfwWOs7aqfRdPt1T1j2kH5UkkXymphDg2o/NQ5
 KTIze2W+P6hzAtf/QoKIK0xKThmvWqDUd7/hWRvrkpOq0XCPxU5LTVwHEkHDaiIMH33M
 Svnw==
X-Gm-Message-State: AOAM530/r0iT3dvf1brycvOJnyvaRqiOmdil5i3wFCuO+5klr7JnKeYM
 ia+cgtoLHNALS/EIGaCmLzH95nJu+sF1VKRv
X-Google-Smtp-Source: ABdhPJxxXJ66n/tteNPghYVge4G9CwAIkXxi+Ru706CyI0rH6S2aSkipg4KIA3FBiHEV9qS/TyKUUg==
X-Received: by 2002:a17:902:bf03:b029:da:fcd1:b10 with SMTP id
 bi3-20020a170902bf03b02900dafcd10b10mr6050373plb.0.1607602773962; 
 Thu, 10 Dec 2020 04:19:33 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.55.45])
 by smtp.gmail.com with ESMTPSA id i123sm6411666pfb.28.2020.12.10.04.19.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 04:19:32 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 10 Dec 2020 13:19:15 +0100
Message-Id: <20201210121915.14412-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] ice,
 xsk: Move Rx alloction out of while-loop
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
Cc: netdev@vger.kernel.org, bpf@vger.kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKSW5zdGVhZCBvZiB0
cnlpbmcgdG8gYWxsb2NhdGUgZm9yIGVhY2ggcGFja2V0LCBtb3ZlIGl0IG91dHNpZGUgdGhlCndo
aWxlIGxvb3AgYW5kIHRyeSB0byBhbGxvY2F0ZSBvbmNlIGV2ZXJ5IE5BUEkgbG9vcC4KClRoaXMg
Y2hhbmdlIGJvb3N0cyB0aGUgeGRwc29jayByeGRyb3Agc2NlbmFyaW8gd2l0aCAxNSUgbW9yZQpw
YWNrZXRzLXBlci1zZWNvbmQuCgpSZXZpZXdlZC1ieTogTWFjaWVqIEZpamFsa293c2tpIDxtYWNp
ZWouZmlqYWxrb3dza2lAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxi
am9ybi50b3BlbEBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNl
L2ljZV94c2suYyB8IDkgKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfeHNrLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5j
CmluZGV4IDc5Nzg4NjUyNDA1NC4uMzk3NTdiNGNmOGY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L2ludGVsL2ljZS9pY2VfeHNrLmMKQEAgLTU3MCwxMiArNTcwLDYgQEAgaW50IGljZV9jbGVhbl9y
eF9pcnFfemMoc3RydWN0IGljZV9yaW5nICpyeF9yaW5nLCBpbnQgYnVkZ2V0KQogCQl1MTYgdmxh
bl90YWcgPSAwOwogCQl1OCByeF9wdHlwZTsKIAotCQlpZiAoY2xlYW5lZF9jb3VudCA+PSBJQ0Vf
UlhfQlVGX1dSSVRFKSB7Ci0JCQlmYWlsdXJlIHw9IGljZV9hbGxvY19yeF9idWZzX3pjKHJ4X3Jp
bmcsCi0JCQkJCQkJY2xlYW5lZF9jb3VudCk7Ci0JCQljbGVhbmVkX2NvdW50ID0gMDsKLQkJfQot
CiAJCXJ4X2Rlc2MgPSBJQ0VfUlhfREVTQyhyeF9yaW5nLCByeF9yaW5nLT5uZXh0X3RvX2NsZWFu
KTsKIAogCQlzdGF0X2Vycl9iaXRzID0gQklUKElDRV9SWF9GTEVYX0RFU0NfU1RBVFVTMF9ERF9T
KTsKQEAgLTY0Miw2ICs2MzYsOSBAQCBpbnQgaWNlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaWNl
X3JpbmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJCWljZV9yZWNlaXZlX3NrYihyeF9yaW5nLCBz
a2IsIHZsYW5fdGFnKTsKIAl9CiAKKwlpZiAoY2xlYW5lZF9jb3VudCA+PSBJQ0VfUlhfQlVGX1dS
SVRFKQorCQlmYWlsdXJlID0gIWljZV9hbGxvY19yeF9idWZzX3pjKHJ4X3JpbmcsIGNsZWFuZWRf
Y291bnQpOworCiAJaWNlX2ZpbmFsaXplX3hkcF9yeChyeF9yaW5nLCB4ZHBfeG1pdCk7CiAJaWNl
X3VwZGF0ZV9yeF9yaW5nX3N0YXRzKHJ4X3JpbmcsIHRvdGFsX3J4X3BhY2tldHMsIHRvdGFsX3J4
X2J5dGVzKTsKIAoKYmFzZS1jb21taXQ6IGE3MTA1ZTM0NzJiZjZiYjMwOTlkMTI5M2VhN2Q3MGU3
NzgzYWE1ODIKLS0gCjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5A
b3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC13aXJlZC1sYW4K
