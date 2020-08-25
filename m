Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 73DE32517BE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Aug 2020 13:36:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C896786958;
	Tue, 25 Aug 2020 11:36:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R6KTWhyz_6Qr; Tue, 25 Aug 2020 11:36:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A88A86946;
	Tue, 25 Aug 2020 11:36:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CB9B1BF48D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 52CFD204BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YnBvRQwU5l1w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Aug 2020 11:36:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B67CC214E6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 11:36:16 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id k1so291472pfu.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Aug 2020 04:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MKByQ46pgwwug2FS04MHEvNcYmmcyxdFTwu8Aog6KoM=;
 b=KxPN3LdURiJQJJHI+7W95jH6ria7e92JnvDmYZ7sJfxiC4VpG4107WK+DCGB8aH2Yb
 W0rzC1IL3n7ra0sbNPycNgX0fPf3XmQZhGterI4gFWkEvPn0txoDpmCeuWo54CogFORG
 kwGLMlHDdpS2vJqtiCmIHqP8RqkCh1NB/Q7O4jxcpIzopQAw5x+Ohdjdnq1BuAajGHcg
 3ao4QtB8ptWDYRQKqTao2pULQiiig48U0PaQ4s0jm3LcE4g8YYwRsaUGHBXMEtydSUTc
 6AGWG9jx08aI2ffMNyDlVi0TjDz4/Hzx+VsP9hGI4m6pzfdN2My74O548l4jiuAMoQxt
 6szA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MKByQ46pgwwug2FS04MHEvNcYmmcyxdFTwu8Aog6KoM=;
 b=G/9HPH27tevH6TfV2LbNAag4Q/rI0u5k2GYY/1RpRL5/XBqGlwO/xs6RHYpIb+QQp9
 Ois3GzG/O1qDZSBSMYi0BVm7v6JmxmrosYTzqNPavhnP5OBq+Dn8edCKHpdn1tLhqcEf
 R0AfOQvAm310MMCQpiPiNwdOfLiN0iiaSZczB7eL+opSPjHRsZFbZ5v146ReiZfpLunC
 n4zpwb9AwwEB/+onJXWhPZ+Uk569SnLgUW+vydKlZpqPrdjo23qYPqrFzLMAjyamXbPj
 grwIYucx+OS24FM3f/DsihT7SDK+ThjOu91wN0NsblUk6n86kU7xFLSUjrqZJD+QhaIi
 DgSg==
X-Gm-Message-State: AOAM531aTd1gwAL1+sgYLdLhh1Z6tHOEm2JYNzr+R12LwMyCuEnKghfG
 IGubtnw2XhV99oQo/YhLit0IXo+Vh1a0Rg==
X-Google-Smtp-Source: ABdhPJy089I37yUmgoghRv6ll7QM6Tz7TRYt0VT7Dn/UuGtC67TNorNbHf/g6lUG6Bo5pMugRHcQkQ==
X-Received: by 2002:a17:902:780f:: with SMTP id
 p15mr7737669pll.56.1598355375887; 
 Tue, 25 Aug 2020 04:36:15 -0700 (PDT)
Received: from btopel-mobl.ger.intel.com ([192.55.54.40])
 by smtp.gmail.com with ESMTPSA id e7sm12699937pgn.64.2020.08.25.04.36.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Aug 2020 04:36:15 -0700 (PDT)
From: =?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn.topel@gmail.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 25 Aug 2020 13:35:54 +0200
Message-Id: <20200825113556.18342-2-bjorn.topel@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200825113556.18342-1-bjorn.topel@gmail.com>
References: <20200825113556.18342-1-bjorn.topel@gmail.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v2 1/3] i40e,
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
 magnus.karlsson@intel.com, kuba@kernel.org
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
