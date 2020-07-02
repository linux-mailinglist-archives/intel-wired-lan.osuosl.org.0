Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2E521280C
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jul 2020 17:37:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1EA398A69C;
	Thu,  2 Jul 2020 15:37:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4QLPiy30I3av; Thu,  2 Jul 2020 15:37:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3A2158A6A9;
	Thu,  2 Jul 2020 15:37:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 10B341BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0D92C8A69C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oX9lmnhnsYJJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2020 15:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6C4F28A69A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2020 15:37:45 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w19so770405ply.9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jul 2020 08:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MKByQ46pgwwug2FS04MHEvNcYmmcyxdFTwu8Aog6KoM=;
 b=aNzCTHKM3gapvmJb3IY3wPNpOzs9PdYRDtlxS/xcyfeKsrofUW1jZDo7JfB/9HAOJy
 wiKc9yESsjKqf4kBJokxCrervIpX0SutNdEbxm7c6M5hQkG2Qk3gwDIv6BgKtwyBtrm4
 QxAGMo3or3dqGcPp75KFJ1WsUpBuxXdVt3fYM6LPin8lekhSU63klxnjx4a5kVLu7h5p
 mYm91S77piPyqj40MkXuFwdaTzyCnR1qw2WpmwIOKPFREdjDrlaf1iwKw52JIkfLo3DM
 W3NMFvhSOfUkshKp+qPV4OEJ2FCHVDvwzCSdBMe2ULg76+8wrdmuQtckt8vA9O2djOPb
 4VZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MKByQ46pgwwug2FS04MHEvNcYmmcyxdFTwu8Aog6KoM=;
 b=p0foFA9qaaDASwQkN0ev5gVdD/oy6Q2I7Q7XqPYb3FvgRmcVquru/ng7ydriW3X8vg
 zdlBixJPJFkaXMBpkLoSzQugHJyQXUsEvnlYzEE65bEhRYSKGHWnCv8ik1VUqiAAsa8C
 10LxVhCf4bVXeR/2/djbwtD8UbBKdROs2lm4EZdapHdBp+gQdC1I7PvGlY/p7azHZk5X
 h0/NFSc4f3Yx5IYNH53I6CL8emZtnVKVBpMY3BN+Zb27eLr9b73+wGy/QlNiwDolRss+
 zRkIkcK9h3bw5o9vCo4mLAPSfz75k/QePBGvXd95BBEvfKwy+tkroKpU9DvCtGWNgqiR
 14Mg==
X-Gm-Message-State: AOAM532YJqdJ+3tF35rJO1iVTFBW6zSMmoS2nuVscXCkCH/gN3r5fOSm
 D39N39B0hv1pCvH815naglFKcayXrqg=
X-Google-Smtp-Source: ABdhPJxx6EcFOxz8w9IU/G9WY1sqs/dZRjNtcHIjOAhcwZTBpooIkvD/F3ANC6BbCsypQgleYwIcCg==
X-Received: by 2002:a17:90a:ff92:: with SMTP id
 hf18mr26992214pjb.10.1593704264564; 
 Thu, 02 Jul 2020 08:37:44 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com (jfdmzpr04-ext.jf.intel.com.
 [134.134.137.73])
 by smtp.gmail.com with ESMTPSA id r6sm552651pgn.65.2020.07.02.08.37.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jul 2020 08:37:43 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  2 Jul 2020 17:37:27 +0200
Message-Id: <20200702153730.575738-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200702153730.575738-1-bjorn.topel@gmail.com>
References: <20200702153730.575738-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 1/4] i40e,
 xsk: remove HW descriptor prefetch in AF_XDP path
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

RnJvbTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgoKVGhlIHNvZnR3YXJl
IHByZWZldGNoaW5nIG9mIEhXIGRlc2NyaXB0b3JzIGhhcyBhIG5lZ2F0aXZlIGltcGFjdCBvbgp0
aGUgcGVyZm9ybWFuY2UuIFRoZXJlZm9yZSwgaXQgaXMgbm93IHJlbW92ZWQuCgpQZXJmb3JtYW5j
ZSBmb3IgdGhlIHJ4X2Ryb3AgYmVuY2htYXJrIGluY3JlYXNlZCB3aXRoIDIlLgoKU2lnbmVkLW9m
Zi1ieTogQmrDtnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMv
bmV0L2V0aGVybmV0L2ludGVsL2k0MGUvaTQwZV90eHJ4LmMgICAgICAgIHwgMTMgKysrKysrKysr
KysrKwogZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnhfY29tbW9uLmgg
fCAxMyAtLS0tLS0tLS0tLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVf
eHNrLmMgICAgICAgICB8IDEyICsrKysrKysrKysrKwogMyBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNl
cnRpb25zKCspLCAxMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhl
cm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aTQwZS9pNDBlX3R4cnguYwppbmRleCAzZTVjNTY2Y2ViMDEuLmUxYTc2ZmMwNWI4ZCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3R4cnguYworKysgYi9k
cml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeC5jCkBAIC0yMjk5LDYgKzIy
OTksMTkgQEAgdm9pZCBpNDBlX2ZpbmFsaXplX3hkcF9yeChzdHJ1Y3QgaTQwZV9yaW5nICpyeF9y
aW5nLCB1bnNpZ25lZCBpbnQgeGRwX3JlcykKIAl9CiB9CiAKKy8qKgorICogaTQwZV9pbmNfbnRj
OiBBZHZhbmNlIHRoZSBuZXh0X3RvX2NsZWFuIGluZGV4CisgKiBAcnhfcmluZzogUnggcmluZwor
ICoqLworc3RhdGljIHZvaWQgaTQwZV9pbmNfbnRjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3Jpbmcp
Cit7CisJdTMyIG50YyA9IHJ4X3JpbmctPm5leHRfdG9fY2xlYW4gKyAxOworCisJbnRjID0gKG50
YyA8IHJ4X3JpbmctPmNvdW50KSA/IG50YyA6IDA7CisJcnhfcmluZy0+bmV4dF90b19jbGVhbiA9
IG50YzsKKwlwcmVmZXRjaChJNDBFX1JYX0RFU0MocnhfcmluZywgbnRjKSk7Cit9CisKIC8qKgog
ICogaTQwZV9jbGVhbl9yeF9pcnEgLSBDbGVhbiBjb21wbGV0ZWQgZGVzY3JpcHRvcnMgZnJvbSBS
eCByaW5nIC0gYm91bmNlIGJ1ZgogICogQHJ4X3Jpbmc6IHJ4IGRlc2NyaXB0b3IgcmluZyB0byB0
cmFuc2FjdCBwYWNrZXRzIG9uCmRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pNDBlL2k0MGVfdHhyeF9jb21tb24uaCBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2k0
MGUvaTQwZV90eHJ4X2NvbW1vbi5oCmluZGV4IDY2N2M0ZGM0YjM5Zi4uMTM5N2RkM2MxYzU3IDEw
MDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21t
b24uaAorKysgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0MGVfdHhyeF9jb21t
b24uaApAQCAtOTksMTkgKzk5LDYgQEAgc3RhdGljIGlubGluZSBib29sIGk0MGVfcnhfaXNfcHJv
Z3JhbW1pbmdfc3RhdHVzKHU2NCBxd29yZDEpCiAJcmV0dXJuIHF3b3JkMSAmIEk0MEVfUlhEX1FX
MV9MRU5HVEhfU1BIX01BU0s7CiB9CiAKLS8qKgotICogaTQwZV9pbmNfbnRjOiBBZHZhbmNlIHRo
ZSBuZXh0X3RvX2NsZWFuIGluZGV4Ci0gKiBAcnhfcmluZzogUnggcmluZwotICoqLwotc3RhdGlj
IGlubGluZSB2b2lkIGk0MGVfaW5jX250YyhzdHJ1Y3QgaTQwZV9yaW5nICpyeF9yaW5nKQotewot
CXUzMiBudGMgPSByeF9yaW5nLT5uZXh0X3RvX2NsZWFuICsgMTsKLQotCW50YyA9IChudGMgPCBy
eF9yaW5nLT5jb3VudCkgPyBudGMgOiAwOwotCXJ4X3JpbmctPm5leHRfdG9fY2xlYW4gPSBudGM7
Ci0JcHJlZmV0Y2goSTQwRV9SWF9ERVNDKHJ4X3JpbmcsIG50YykpOwotfQotCiB2b2lkIGk0MGVf
eHNrX2NsZWFuX3J4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqcnhfcmluZyk7CiB2b2lkIGk0MGVf
eHNrX2NsZWFuX3R4X3Jpbmcoc3RydWN0IGk0MGVfcmluZyAqdHhfcmluZyk7CiBib29sIGk0MGVf
eHNrX2FueV9yeF9yaW5nX2VuYWJsZWQoc3RydWN0IGk0MGVfdnNpICp2c2kpOwpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jIGIvZHJpdmVycy9u
ZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5jCmluZGV4IDhjZTU3YjUwN2EyMS4uMWYy
ZGQ1OTFkYmYxIDEwMDY0NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pNDBlL2k0
MGVfeHNrLmMKKysrIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQwZS9pNDBlX3hzay5j
CkBAIC0yNTMsNiArMjUzLDE4IEBAIHN0YXRpYyBzdHJ1Y3Qgc2tfYnVmZiAqaTQwZV9jb25zdHJ1
Y3Rfc2tiX3pjKHN0cnVjdCBpNDBlX3JpbmcgKnJ4X3JpbmcsCiAJcmV0dXJuIHNrYjsKIH0KIAor
LyoqCisgKiBpNDBlX2luY19udGM6IEFkdmFuY2UgdGhlIG5leHRfdG9fY2xlYW4gaW5kZXgKKyAq
IEByeF9yaW5nOiBSeCByaW5nCisgKiovCitzdGF0aWMgdm9pZCBpNDBlX2luY19udGMoc3RydWN0
IGk0MGVfcmluZyAqcnhfcmluZykKK3sKKwl1MzIgbnRjID0gcnhfcmluZy0+bmV4dF90b19jbGVh
biArIDE7CisKKwludGMgPSAobnRjIDwgcnhfcmluZy0+Y291bnQpID8gbnRjIDogMDsKKwlyeF9y
aW5nLT5uZXh0X3RvX2NsZWFuID0gbnRjOworfQorCiAvKioKICAqIGk0MGVfY2xlYW5fcnhfaXJx
X3pjIC0gQ29uc3VtZXMgUnggcGFja2V0cyBmcm9tIHRoZSBoYXJkd2FyZSByaW5nCiAgKiBAcnhf
cmluZzogUnggcmluZwotLSAKMi4yNS4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVk
LWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLXdpcmVkLWxhbgo=
