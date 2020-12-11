Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7336F2D784A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 11 Dec 2020 15:57:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0C96F871CE;
	Fri, 11 Dec 2020 14:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N0TLMEIBO0eA; Fri, 11 Dec 2020 14:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6693787270;
	Fri, 11 Dec 2020 14:57:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A48331BF286
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A06A086511
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4XoqQpH0Y0HW for <intel-wired-lan@lists.osuosl.org>;
 Fri, 11 Dec 2020 14:57:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2F6FF864EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 14:57:27 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id j13so2468415pjz.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 11 Dec 2020 06:57:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=em3A8Nk5NANt9qY2CmZu+QBzc0KhlKLYPaDCn5zjKkg=;
 b=V3Lkv+YY2A3P68sn1Q5ogUsPDc2gLjspi25MWWecVaHNaeRrM839vnaY0n13na7eif
 +lneKVV7mjKxwGvg1+WaspqvzEnuZKGz1uyG5Di1nezMbfNF5N4DCurMKtag308aGcRU
 VRI0javscWSV2DcHwaAMspU6+0YEtN0C6t+gkSZHtfRab5K9W2QgxTG+6QIa/uXj+lbS
 lYTlySuk/JxlPcw332mAne67vbmpf4cHinRMYgIV5uNPDFKU6Ve6QVwOLibV6E8DF/aM
 GNWvV/38tujPdPrCVjNSrXEiIs5sULyoW7ngTfGiprRdthagDmAJWypdNMu8YeJbBH2z
 UY4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=em3A8Nk5NANt9qY2CmZu+QBzc0KhlKLYPaDCn5zjKkg=;
 b=jsps5gA42BGIjjQcYGJ7XySCRCnAyuaT+UN+o6qzkiQifu4tZguG0D7NViGtUi7+u9
 2uolrmK9RMTgBg8hk5sJDrkge3Oe/yD4FpKIHTbkCCsNJ8BAvx3DaGJbzlvFPJCpZbC4
 tdYfeVXX3FZYZuLlQ/rVlJ9Z6aXCkPkpk46UfR1vBMDKu5dz2DdzUi21Z3hoN/kxBPQN
 5B99/8SwpFLJcEZkRsdUvUTDZf7ObSQZ6pE8pDZEpz4nzy9gDLWYtRzsHQgvFVaW4bYO
 mWcoC1TSymbmWQtmMT+sAOq6N83vqK8XWNnMsNGY7BmvA7HdQmzYbPYulod6Vo1zsop4
 w4JA==
X-Gm-Message-State: AOAM533RNRmCk5olCOBXJGZ+Sla8rpdmdgAWNW+ADWj2LUMpik7R55QW
 TA7lOBpLDmkdUQSJwedEKQ4Ot5t4XcRwarNh
X-Google-Smtp-Source: ABdhPJxjg3pIx/LnT0LvpNBF2pBEJoV7ksCRTR0KJ2foHrMJcnVmNEStJfX4fTzFBvoQMop0m6ZSfg==
X-Received: by 2002:a17:90b:388:: with SMTP id
 ga8mr13725684pjb.108.1607698646153; 
 Fri, 11 Dec 2020 06:57:26 -0800 (PST)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id k23sm10583085pfk.50.2020.12.11.06.57.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Dec 2020 06:57:24 -0800 (PST)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 11 Dec 2020 15:57:10 +0100
Message-Id: <20201211145712.72957-1-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net 0/2] i40e/ice AF_XDP ZC fixes
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
Cc: bpf@vger.kernel.org, magnus.karlsson@intel.com, netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhpcyBzZXJpZXMgYWRkcmVzcyB0d28gY3Jhc2hlcyBpbiB0aGUgQUZfWERQIHplcm8tY29weSBt
b2RlIGZvciBpY2UKYW5kIGk0MGUuIE1vcmUgZGV0YWlscyBpbiBlYWNoIGluZGl2aWR1YWwgdGhl
IGNvbW1pdCBtZXNzYWdlLgoKClRoYW5rcywKQmrDtnJuCgpCasO2cm4gVMO2cGVsICgyKToKICBp
Y2UsIHhzazogY2xlYXIgdGhlIHN0YXR1cyBiaXRzIGZvciB0aGUgbmV4dF90b191c2UgZGVzY3Jp
cHRvcgogIGk0MGUsIHhzazogY2xlYXIgdGhlIHN0YXR1cyBiaXRzIGZvciB0aGUgbmV4dF90b191
c2UgZGVzY3JpcHRvcgoKIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2su
YyB8IDUgKysrKy0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgICB8
IDUgKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQoKCmJhc2UtY29tbWl0OiBkOTgzOGIxZDM5MjgzYzEyMDBjMTNmOTA3NjQ3NGM3NjI0YjhlYzM0
Ci0tIAoyLjI3LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5v
cmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQt
bGFuCg==
