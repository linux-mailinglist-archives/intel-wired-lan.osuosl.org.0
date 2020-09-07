Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2F425FC8F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Sep 2020 17:02:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA5DB8612B;
	Mon,  7 Sep 2020 15:02:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FBHOffgVec7q; Mon,  7 Sep 2020 15:02:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1BD9086130;
	Mon,  7 Sep 2020 15:02:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BE8731BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B4766867F5
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xeaRgIqHubRO for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
 [209.85.215.193])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2D6FB867FE
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Sep 2020 15:02:48 +0000 (UTC)
Received: by mail-pg1-f193.google.com with SMTP id m5so8147965pgj.9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 07 Sep 2020 08:02:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oi4BSZHdphLvMn4ImifMad+2Dzg1/daPi3Jxv2xnQrs=;
 b=NcmCsZqyCCq+KwtlcULSkCBfkjSDbIC6YHcT/uAIpORTGHCs3JrlZ0GL17TJSobwkq
 n4FhtNTGrv/AnGiFZoZkLj9JY1Y+4wY4lBiOWFx7+b8yYXemJKwnsfcFpgz11t27Ik4z
 gaitglCZf7n37ihZLFM2alBSrmcWjaSTu4O/pDozVCCeunH1UGTKCy/7ANBQ9oaaWaSy
 F/il0qCN65nxGXP/lWtzxcf+vKv25+T4QP4gZyuAaBis/1TPJByNvJ8TR08rLz2KVeu1
 NYaXHvlqndCRvd8KcUGC9x//1Q24d1C9Dk4NQXDXG3SqKl9cC1ucsovrAJYgxwwKKCP3
 X2+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oi4BSZHdphLvMn4ImifMad+2Dzg1/daPi3Jxv2xnQrs=;
 b=fn582p3YNjdkK1obrKKnSso8dYcDmWhEca3CHsfwm71zi+qzhWYUt+e81/ixUjPEzx
 eLBtR78w06eDDdyp0nKITG1m9XoMyJf+9FmMCsWr+D5+leB3JffhgeFMd7ozHqQHnFld
 +dgwQvXwhrsbcJf1A1O9AdYCwTwfyRAnbaZOHpBp786dFnzPXRYPlliAqgj8ZEUujkWE
 ute1msqMpU9x81SI7/cOREQgnOzr9ePpY3UEMV0TLsiCI9UDWg99BHnSzY3pUd4XoqDz
 beOHgcRbkl6YK7bUKBE44FUFBbWSqtYP/IqD5MfvnjcBpIXQ5M0kCs7Y2Z1ZUHv8Wqt1
 JwnA==
X-Gm-Message-State: AOAM53176pqHZ2JpuyB6LgjptLHK8kLFvXciEj3CzJgyb+17fCpZHbbd
 f3NvBHNeNIpAPYlm7LH+RWg=
X-Google-Smtp-Source: ABdhPJyK0Eh/ki5AGgO8dibVUfobmkKI1lVGKcG2ekDu8CgUcH2I44/GYY3jjsR8QDXg9+H8arJEZw==
X-Received: by 2002:a62:14d4:: with SMTP id 203mr1508796pfu.186.1599490967814; 
 Mon, 07 Sep 2020 08:02:47 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.55.43])
 by smtp.gmail.com with ESMTPSA id g129sm15436022pfb.33.2020.09.07.08.02.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Sep 2020 08:02:47 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: ast@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org,
 bpf@vger.kernel.org
Date: Mon,  7 Sep 2020 17:02:16 +0200
Message-Id: <20200907150217.30888-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907150217.30888-1-bjorn.topel@gmail.com>
References: <20200907150217.30888-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH bpf-next 3/4] ice,
 xsk: use XSK_NAPI_WEIGHT as NAPI poll budget
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
Cc: kuba@kernel.org,
 =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@intel.com>,
 intel-wired-lan@lists.osuosl.org, magnus.karlsson@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKU3RhcnQgdXNpbmcg
WFNLX05BUElfV0VJR0hUIGFzIE5BUEkgcG9sbCBidWRnZXQgZm9yIHRoZSBBRl9YRFAgUngKemVy
by1jb3B5IHBhdGguCgpTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3BlbEBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaWNlL2ljZV94c2suYyB8
IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMgYi9kcml2
ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX3hzay5jCmluZGV4IDc5Nzg4NjUyNDA1NC4u
Y2I0NzNjY2RmNjEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2Uv
aWNlX3hzay5jCisrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfeHNrLmMK
QEAgLTU2MSw3ICs1NjEsNyBAQCBpbnQgaWNlX2NsZWFuX3J4X2lycV96YyhzdHJ1Y3QgaWNlX3Jp
bmcgKnJ4X3JpbmcsIGludCBidWRnZXQpCiAJdW5zaWduZWQgaW50IHhkcF94bWl0ID0gMDsKIAli
b29sIGZhaWx1cmUgPSBmYWxzZTsKIAotCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0cyA8
ICh1bnNpZ25lZCBpbnQpYnVkZ2V0KSkgeworCXdoaWxlIChsaWtlbHkodG90YWxfcnhfcGFja2V0
cyA8IFhTS19OQVBJX1dFSUdIVCkpIHsKIAkJdW5pb24gaWNlXzMyYl9yeF9mbGV4X2Rlc2MgKnJ4
X2Rlc2M7CiAJCXVuc2lnbmVkIGludCBzaXplLCB4ZHBfcmVzID0gMDsKIAkJc3RydWN0IGljZV9y
eF9idWYgKnJ4X2J1ZjsKLS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJl
ZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC13aXJlZC1sYW4K
