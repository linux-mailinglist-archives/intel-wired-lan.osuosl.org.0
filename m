Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1232A7FF44B
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Nov 2023 17:02:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 47F7043604;
	Thu, 30 Nov 2023 16:02:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47F7043604
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701360156;
	bh=7Hrs5eX+8AWbTjn3ih9rD9pnAHt8rZ3gpM68t7jJlok=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Reply-To:From;
	b=FIaMmUejHOB+343WzzivoRi8lfkuNAau6GwjiMwmN209v0bOhp+ARez8kpzaAviaS
	 ooySJLXyLUH3HyVYwxAsrBYNmu5aKDGcS/oMsgE64SO7ps2eCmPkA7PMdPajGtnvOZ
	 hMD1+sgjXUmzgTFG3Ek6N1/Cfz3z4/Cgcrxsjkw/R4RwtH8S2gccKmERYVl6n3GvsD
	 9uTevG1LHQumZMLEtJgsaKovlL13BLcW76Mvv4RrCO4ejv65HV/VG1XwapnxmzLnoT
	 +/TGELhv6STIAm+qqDrK8XKTXIlytsYfRWC72bUB2Y0YxFpsijPwhN66BuaZCfAQ2M
	 vpAb/OjchxGyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T_i2alIzFOAp; Thu, 30 Nov 2023 16:02:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A432140133;
	Thu, 30 Nov 2023 16:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A432140133
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E5261BF4E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 19:30:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2438641C24
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 19:30:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2438641C24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rQ5gmkLhTp4i for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Nov 2023 19:30:29 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com
 [IPv6:2a00:1450:4864:20::530])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5A7AB41C14
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 19:30:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A7AB41C14
Received: by mail-ed1-x530.google.com with SMTP id
 4fb4d7f45d1cf-54b545ec229so236407a12.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Nov 2023 11:30:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1701286227; x=1701891027;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7Z0sJrD/YiC4EF7bA+ddXCOXmfj593nXpHh3X2snZec=;
 b=C3yk21R4IdfcmOadSAs7Wmb6Pz+W2KcCzS9nmZVDqPXxH4S7v7d+aIttM77g5ojgF6
 xUpYjNdN0dy5IfLnnvte5+VQb7Sax86AxhvR+/c28XqiMPu3NsuNEXu7mt8ZBrGEAkfJ
 0qQ1vGOsJ7v7hlkXehbvWfjbUGPz4b6u3lYjuFOE4YA2sITsHL4QC/7IATWKqRpuwg6n
 IXaisvBNnqfK67LLNyCCtLv+E0FJFmehAfZD3GWk7dHH8vpVI4IGyao/lDvulFVWJ6m4
 RwMw5R2gSRlh5jGzfrxIeD7T7unLTz/KCideGTCJGX1jpgTKftK4PcUHndLytiAaSRcB
 XF1Q==
X-Gm-Message-State: AOJu0YxU8nXsGTRzq3tmrqQFrEkJKp0O5i92r/NATyA8weqsJjKL3zP3
 c0DBy1TkcQRbQqj2+5z3GwEhKsGGMHAxyhKARbVLUhpndg==
X-Google-Smtp-Source: AGHT+IFcIBvTnSSg77pgKpr/GWEqNBLvcjTU0RT3Z7RZkaTLrTH4hEHgPkJ0KV5ogkQME7CU4TCh/gglTqJUi5jFErs=
X-Received: by 2002:aa7:d388:0:b0:54a:ee59:fdb9 with SMTP id
 x8-20020aa7d388000000b0054aee59fdb9mr12837629edq.41.1701286226864; Wed, 29
 Nov 2023 11:30:26 -0800 (PST)
MIME-Version: 1.0
From: tedheadster <tedheadster@gmail.com>
Date: Wed, 29 Nov 2023 14:30:15 -0500
Message-ID: <CAP8WD_YOLS5wGCWJw6yLmzXmRVHcekXhSV2=qNuEZEz4DtEjfw@mail.gmail.com>
To: intel-wired-lan@lists.osuosl.org
X-Mailman-Approved-At: Thu, 30 Nov 2023 16:02:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1701286227; x=1701891027; darn=lists.osuosl.org;
 h=content-transfer-encoding:to:subject:message-id:date:from:reply-to
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7Z0sJrD/YiC4EF7bA+ddXCOXmfj593nXpHh3X2snZec=;
 b=czSBgc8iautLdGGmIlK/m0PY9FYClktBKFuCQvGB/GZCSRTKOFK8qoQaiANlIiBDfS
 npYAMuDHyidqlz0aMnwvFLhgRHVz+g8bz3oYFraZkmESzryh29ZzSpfZh1a7ZZ4CQ0AX
 hL+G3bUS09S05Wt9CMErqpWl+pkTWfT6+53uYnT0CI6xJqYlnvmaWWYEDdVeEXfqpwoA
 FqCSNniBl0AO2xV4qANgaERjOAGgY3tqwRCsGSYRa0WoJbUtEab1zMB10jK7x3dSxA4n
 601V2cOiw5QkBB1YzhrJARVylDz6yf4e0QCxynGW2p6W9mWe8Hn40Y9ynABdxJkMr15K
 /OcQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=czSBgc8i
Subject: [Intel-wired-lan] Compile Time Error for 'ice' Driver on 5.10.197
 Kernel
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
Reply-To: whiteheadm@acm.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSBnZXQgdGhlIGZvbGxvd2luZyBjb21waWxlIHRpbWUgZXJyb3IgZm9yIHRoZSAxLjExLjE0ICdp
Y2UnIGRyaXZlciBvbgphIDMyLWJpdCA1LjEwLjE5NyBpMzg2IGtlcm5lbDoKCm1ha2UgQVJDSD1p
Mzg2IENGTEFHU19FWFRSQT0iLURHTlNTX1NVUFBPUlQiCm1ha2UgIGNjZmxhZ3MteT0iLURHTlNT
X1NVUFBPUlQgLURVU0VfSU5URUxfQVVYX0JVUyIgLUMKIi9saWIvbW9kdWxlcy81LjEwLjE5Ny5p
Njg2LXBlbnRpdW00LW1wZW50aXVtNC1sZW5vdm8vc291cmNlIgpDT05GSUdfSUNFPW0gQ09ORklH
X01PRFVMRV9TSUc9biBDT05GSUdfTU9EVUxFX1NJR19BTEw9Ck09Ii90bXAvaWNlLTEuMTEuMTQv
c3JjIiAgIE5FRURfQVVYX0JVUz0iMiIgIG1vZHVsZXMKICBDQyBbTV0gIC90bXAvaWNlLTEuMTEu
MTQvc3JjL2ljZV9tYWluLm8KSW4gZmlsZSBpbmNsdWRlZCBmcm9tIC90bXAvaWNlLTEuMTEuMTQv
c3JjL2tjb21wYXQuaDozMzUxLAogICAgICAgICAgICAgICAgIGZyb20gL3RtcC9pY2UtMS4xMS4x
NC9zcmMvaWNlLmg6NywKICAgICAgICAgICAgICAgICBmcm9tIC90bXAvaWNlLTEuMTEuMTQvc3Jj
L2ljZV9tYWluLmM6ODoKL3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdF9pbXBsLmg6ODUxOjIw
OiBlcnJvcjogcmVkZWZpbml0aW9uIG9mCuKAmGV0aF9od19hZGRyX3NldOKAmQogIDg1MSB8IHN0
YXRpYyBpbmxpbmUgdm9pZCBldGhfaHdfYWRkcl9zZXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwK
Y29uc3QgdTggKmFkZHIpCiAgICAgIHwgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+
fgpJbiBmaWxlIGluY2x1ZGVkIGZyb20gL3RtcC9pY2UtMS4xMS4xNC9zcmMva2NvbXBhdC5oOjE2
OgouL2luY2x1ZGUvbGludXgvZXRoZXJkZXZpY2UuaDozMDk6MjA6IG5vdGU6IHByZXZpb3VzIGRl
ZmluaXRpb24gb2YK4oCYZXRoX2h3X2FkZHJfc2V04oCZIHdpdGggdHlwZSDigJh2b2lkKHN0cnVj
dCBuZXRfZGV2aWNlICosIGNvbnN0IHU4ICop4oCZCntha2Eg4oCYdm9pZChzdHJ1Y3QgbmV0X2Rl
dmljZSAqLCBjb25zdCB1bnNpZ25lZCBjaGFyICop4oCZfQogIDMwOSB8IHN0YXRpYyBpbmxpbmUg
dm9pZCBldGhfaHdfYWRkcl9zZXQoc3RydWN0IG5ldF9kZXZpY2UgKmRldiwKY29uc3QgdTggKmFk
ZHIpCiAgICAgIHwgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fgpJbiBmaWxlIGlu
Y2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2JpdHMuaDo2LAogICAgICAgICAgICAgICAgIGZy
b20gLi9pbmNsdWRlL2xpbnV4L2JpdG9wcy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2lu
Y2x1ZGUvbGludXgva2VybmVsLmg6MTIsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUv
YXNtLWdlbmVyaWMvYnVnLmg6MjAsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2FyY2gveDg2L2lu
Y2x1ZGUvYXNtL2J1Zy5oOjkzLAogICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4
L2J1Zy5oOjUsCiAgICAgICAgICAgICAgICAgZnJvbSAuL2luY2x1ZGUvbGludXgvaW8uaDoxMSwK
ICAgICAgICAgICAgICAgICBmcm9tIC90bXAvaWNlLTEuMTEuMTQvc3JjL2tjb21wYXQuaDoxMzoK
L3RtcC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzogSW4gZnVuY3Rpb24g4oCYaWNlX3BmX2Z3
bG9nX2lzX2lucHV0X3ZhbGlk4oCZOgouL2luY2x1ZGUvdmRzby9iaXRzLmg6Nzo0MDogd2Fybmlu
ZzogbGVmdCBzaGlmdCBjb3VudCA+PSB3aWR0aCBvZiB0eXBlClstV3NoaWZ0LWNvdW50LW92ZXJm
bG93XQogICAgNyB8ICNkZWZpbmUgQklUKG5yKSAgICAgICAgICAgICAgICAgKFVMKDEpIDw8IChu
cikpCiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KL3Rt
cC9pY2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzo1OTkyOjIzOiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYQklU4oCZCiA1OTkyIHwgICAgICAgICBpZiAoZXZlbnRzID49IEJJVChJQ0Vf
QVFDX0ZXX0xPR19JRF9NQVgpKSB7CiAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgIF5+fgou
L2luY2x1ZGUvdmRzby9iaXRzLmg6Nzo0MDogd2FybmluZzogbGVmdCBzaGlmdCBjb3VudCA+PSB3
aWR0aCBvZiB0eXBlClstV3NoaWZ0LWNvdW50LW92ZXJmbG93XQogICAgNyB8ICNkZWZpbmUgQklU
KG5yKSAgICAgICAgICAgICAgICAgKFVMKDEpIDw8IChucikpCiAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgXn4KLi9pbmNsdWRlL2xpbnV4L2Rldl9wcmludGsu
aDoxMTI6Mzk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhCSVTigJkKICAxMTIgfCAg
ICAgICAgIF9kZXZfZXJyKGRldiwgZGV2X2ZtdChmbXQpLCAjI19fVkFfQVJHU19fKQogICAgICB8
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn4KL3RtcC9p
Y2UtMS4xMS4xNC9zcmMvaWNlX21haW4uYzo1OTkzOjE3OiBub3RlOiBpbiBleHBhbnNpb24gb2Yg
bWFjcm8g4oCYZGV2X2VycuKAmQogNTk5MyB8ICAgICAgICAgICAgICAgICBkZXZfZXJyKGljZV9w
Zl90b19kZXYocGYpLCAiSW52YWxpZCBGVyBsb2cKZXZlbnRzIDB4JWx4LCBhbGwgRlcgbG9nIGV2
ZW50IGJpdHMgPj0gMHglbHggYXJlIGludmFsaWRcbiIsCiAgICAgIHwgICAgICAgICAgICAgICAg
IF5+fn5+fn4KbWFrZVsyXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjI4NjoKL3RtcC9p
Y2UtMS4xMS4xNC9zcmMvaWNlX21haW4ub10gRXJyb3IgMQptYWtlWzFdOiAqKiogW01ha2VmaWxl
OjE4MzI6IC90bXAvaWNlLTEuMTEuMTQvc3JjXSBFcnJvciAyCm1ha2U6ICoqKiBbTWFrZWZpbGU6
MTQ5OiBhbGxdIEVycm9yIDIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1
b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13
aXJlZC1sYW4K
