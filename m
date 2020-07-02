Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C9A212815
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 17:37:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A8BA78A6A2;
	Thu,  2 Jul 2020 15:37:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J-V+V4wbX3Qh; Thu,  2 Jul 2020 15:37:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 608EC8A6BF;
	Thu,  2 Jul 2020 15:37:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 99D5B1BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9707E88D15
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRIGRHIigvRy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 15:37:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2532088D0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:51 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id e18so13641399pgn.7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 08:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=m1fTPOms7HfNTYc8QafSCZasiJ/Gyb5Jn/b+AGL8eyI=;
 b=JtDEB+H5kQ3MV2/5t5nfLpbDJFYrh5Onf+piei00axIsFy3f2QI6X0uCqjYdcgGx7b
 6FM+4TAhZLlE1gy29Zay9BcHlgc75sobkhoa7twO0yg76WaihpSDR02l+a92EVCRdA+J
 QslusQFJN0yXlC/DZpgJ01NCyiENJUVstNCTW5juFbQS7XZ0PCAnoS5JSwKHqfLNL8YE
 2G3qgKvPYZA074XB9aGgIFwiIToSrfbYxJyBONDzg57rigb5Wa+XEZVjskZJWykJknsQ
 oC2QF4CNS15Eg4Wsmb50oSTuPw2UDramYjL97FB9Ap1T4ajx7J5De3e3YbHnFlXZOuc8
 NQuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=m1fTPOms7HfNTYc8QafSCZasiJ/Gyb5Jn/b+AGL8eyI=;
 b=OJSRe0WUpNgz1ee62M58xWz5UIBdvV9nZCy/90+fIpzgbkgjyPzMLUNnw8I0M1tapz
 6LA0+N86KANMBn8shp+TRMFASgP6NNBXttRfh/d4eQVE9vjQQhyXlB97DPlxk+3UTWte
 3ImRgu3SlbeS4SMSKcbDcAAuuCt6A+x7UwKJ3E26tMJz5w5PfaDBjVgduVstOWM1syQZ
 TkF1zU77LYEBP49xFn++pLtyMC5VJgzqOD0pKfhjP+8VTaJRYtJ5VO61a2fhvadRUmWy
 QCWCLaRK47E5fBoR4U0GH4VUL44iLLyrmATU4XrvxERM94qzKWHE4N/WukxYMN/VAuwC
 TOjQ==
X-Gm-Message-State: AOAM531Vj5vLgYf0rfIN+IVlriUMBJl4+6FwX7OoY6gtKxFBldgjC3+s
 xyNlFWXVQG2PuI3TPMFHWZvm5T06RW0=
X-Google-Smtp-Source: ABdhPJxDLBb6iDqdP109wdVQ5Ck5yUF6UL5pu5Rb6KHGe8evc0pz4Dx+bhqsXsNNpqx6q529EC3W5A==
X-Received: by 2002:a63:3603:: with SMTP id d3mr22361536pga.200.1593704270379; 
 Thu, 02 Jul 2020 08:37:50 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (jfdmzpr04-ext.jf.intel.com.
 [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id r6sm552651pgn.65.2020.07.02.08.37.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:37:49 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jul 2020 17:37:29 +0200
Message-Id: <20200702153730.575738-4-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702153730.575738-1-bjorn.topel@gmail.com>
References: <20200702153730.575738-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 3/4] i40e,
 xsk: increase budget for AF_XDP path
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIG5hcGlfYnVk
Z2V0LCBtZWFuaW5nIHRoZSBudW1iZXIgb2YgcmVjZWl2ZWQgcGFja2V0cyB0aGF0IGFyZQphbGxv
d2VkIHRvIGJlIHByb2Nlc3NlZCBmb3IgZWFjaCBuYXBpIGludm9jYXRpb24sIHRha2VzIGludG8K
Y29uc2lkZXJhdGlvbiB0aGF0IGVhY2ggcmVjZWl2ZWQgcGFja2V0IGlzIGFpbWVkIGZvciB0aGUg
a2VybmVsCm5ldHdvcmtpbmcgc3RhY2suCgpUaGF0IGlzIG5vdCB0aGUgY2FzZSBmb3IgdGhlIEFG
X1hEUCByZWNlaXZlIHBhdGgsIHdoZXJlIHRoZSBjb3N0IG9mCmVhY2ggcGFja2V0IGlzIHNpZ25p
ZmljYW50bHkgbGVzcy4gVGhlcmVmb3JlLCB0aGlzIGNvbW1pdCBkaXNyZWdhcmRzCnRoZSBuYXBp
IGJ1ZGdldCBhbmQgaW5jcmVhc2VzIGl0IHRvIDI1Ni4gUHJvY2Vzc2luZyAyNTYgcGFja2V0cwp0
YXJnZXRlZCBmb3IgQUZfWERQIGlzIHN0aWxsIGxlc3Mgd29yayB0aGFuIDY0IChuYXBpIGJ1ZGdl
dCkgcGFja2V0cwpnb2luZyB0byB0aGUga2VybmVsIG5ldHdvcmtpbmcgc3RhY2suCgpUaGUgcGVy
Zm9ybWFuY2UgZm9yIHRoZSByeF9kcm9wIHNjZW5hcmlvIGlzIHVwIDclLgoKU2lnbmVkLW9mZi1i
eTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0
L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2lu
dGVsL2k0MGUvaTQwZV94c2suYwppbmRleCAxZjJkZDU5MWRiZjEuLjk5ZjRhZmRjNDAzZCAxMDA2
NDQKLS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCisrKyBi
L2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV94c2suYwpAQCAtMjY1LDYgKzI2
NSw4IEBAIHN0YXRpYyB2b2lkIGk0MGVfaW5jX250YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5n
KQogCXJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPSBudGM7CiB9CiAKKyNkZWZpbmUgSTQwRV9YU0tf
Q0xFQU5fUlhfQlVER0VUIDI1NlUKKwogLyoqCiAgKiBpNDBlX2NsZWFuX3J4X2lycV96YyAtIENv
bnN1bWVzIFJ4IHBhY2tldHMgZnJvbSB0aGUgaGFyZHdhcmUgcmluZwogICogQHJ4X3Jpbmc6IFJ4
IHJpbmcKQEAgLTI4MCw3ICsyODIsNyBAQCBpbnQgaTQwZV9jbGVhbl9yeF9pcnFfemMoc3RydWN0
IGk0MGVfcmluZyAqcnhfcmluZywgaW50IGJ1ZGdldCkKIAlib29sIGZhaWx1cmUgPSBmYWxzZTsK
IAlzdHJ1Y3Qgc2tfYnVmZiAqc2tiOwogCi0Jd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNrZXRz
IDwgKHVuc2lnbmVkIGludClidWRnZXQpKSB7CisJd2hpbGUgKGxpa2VseSh0b3RhbF9yeF9wYWNr
ZXRzIDwgSTQwRV9YU0tfQ0xFQU5fUlhfQlVER0VUKSkgewogCQl1bmlvbiBpNDBlX3J4X2Rlc2Mg
KnJ4X2Rlc2M7CiAJCXN0cnVjdCB4ZHBfYnVmZiAqKmJpOwogCQl1bnNpZ25lZCBpbnQgc2l6ZTsK
LS0gCjIuMjUuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9y
ZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1s
YW4K
