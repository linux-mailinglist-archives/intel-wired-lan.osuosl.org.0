Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AAF74D9BC
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jul 2023 17:22:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB4FB60F6C;
	Mon, 10 Jul 2023 15:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB4FB60F6C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689002554;
	bh=+DaMMqatZUKA7MtjYcJ6Kjtm8vCH2MkeWsjtGeBLPwE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zaNZuHIwWqZsblDbsHwENWWbUFHkNHTYm/rrWY2x0qjngdATX7IxuowDSSalTHsP6
	 Aa3rHS/w+VkmFjQnnuax0LBzdVU3UULE2oSWCX8yL1hqn+XWlMsrp+YmlzC36iP93U
	 Omzf1amLWRZMEMW7PANsIMCflfX56Ch+8ey16vb8+Y0JmXws2QHR/jOQ85K9jLJdaL
	 2AithQr2GfmkYmTC9HHhelmYh3v22ukJnno8YsQ4IdeV28Xmd5b3vG41lAl6wQoY9t
	 moXVwr4hHO//d0fEDZkWhtw3oJ2FEJc+D1sxKY5TJx8bQvD6YG7kwM4O5k1pL6kQBb
	 xcthEpKWvPc9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mqmhtgBkn0WT; Mon, 10 Jul 2023 15:22:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AC56360F60;
	Mon, 10 Jul 2023 15:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AC56360F60
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB7741BF8C7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:02:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A0360409B2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:02:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A0360409B2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q3orYNqu1wkz for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jul 2023 01:02:44 +0000 (UTC)
X-Greylist: delayed 00:07:07 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2919409B1
Received: from mx2.ucr.edu (mx2.ucr.edu [138.23.62.3])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2919409B1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jul 2023 01:02:43 +0000 (UTC)
Received: from mail-wr1-f71.google.com ([209.85.221.71])
 by smtp2.ucr.edu with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 09 Jul 2023 17:55:36 -0700
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-30793c16c78so2728609f8f.3
 for <intel-wired-lan@lists.osuosl.org>; Sun, 09 Jul 2023 17:55:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688950533; x=1691542533;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=qCDKDJuhMe/luM3VFI5ib+K9xMOi0C+lL24R61nDELU=;
 b=MKAHAasD1T5zRsRpeLjTO4oYy6ckjEZ2G7smNfGRQ6jEd1/FBKK2+IKWgN2x69Bdnx
 9c8/9zVCK6HG0FYyj5nrlmi/3QMR/AzfPdrSUfxZXo9VgJgAz5wC1nZ13oEMTKDXYjtS
 NU3Blb5ukJuhFUxiUCCb5ZI9IjtzF2MfUjfsr1hDc8JsCDQH5bLWge+cOTW26ByTk7H/
 7UYJevhbMe8RHO8du9bkRYcWGwTcTe+Zl6bn4kmt+G7IyyqB9uMdwZNiKB9Z21lkJmu4
 dc//63i0D+ppGvRiw+3VTtn8aHB5GAudCGaL/kHJgkd9JLLatcqJSx9y6S+8fN/vyHP+
 uLuw==
X-Gm-Message-State: ABy/qLbLKZUjJnThqFM7fPIiDueScx2snbpmuqnhUzwJCbgq9tl60Bgx
 izOAPNwXA3Rb2GZ67WEPl/ruiqnE3StiA/fzwPWYZGjpffiM2421mRqCzA66foLLuIVVEpHjeEP
 QNHE0qW7/ufG4KZt9cLyBHp0jqsXn6qNzn3YBG2C5FVc6pq0=
X-Received: by 2002:a05:6000:100d:b0:313:ef24:6ff2 with SMTP id
 a13-20020a056000100d00b00313ef246ff2mr12720812wrx.2.1688950533266; 
 Sun, 09 Jul 2023 17:55:33 -0700 (PDT)
X-Google-Smtp-Source: APBJJlF77PbPgC2orYPAxraE+vB+6gHcJRG+ezUH+qNiru1V7ZNzxhdB+WTVUrRGi5UhCucCnyJwvy3hOvQxpdaOpKo=
X-Received: by 2002:a05:6000:100d:b0:313:ef24:6ff2 with SMTP id
 a13-20020a056000100d00b00313ef246ff2mr12720796wrx.2.1688950532984; Sun, 09
 Jul 2023 17:55:32 -0700 (PDT)
MIME-Version: 1.0
References: <CA+UBctC57Lx=8Eh6P51cVz+cyb02GE_B-dWnYhffWoc-nm7v6Q@mail.gmail.com>
 <9fff2b17-0b66-93a0-87aa-ca6479cb0663@intel.com>
In-Reply-To: <9fff2b17-0b66-93a0-87aa-ca6479cb0663@intel.com>
From: Yu Hao <yhao016@ucr.edu>
Date: Sun, 9 Jul 2023 17:55:22 -0700
Message-ID: <CA+UBctDVMXGcCi1ZVepNCGSZvhw4OR8fqWOOQjLkOQ6NXNAnJA@mail.gmail.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>
X-Mailman-Approved-At: Mon, 10 Jul 2023 15:22:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=ucr.edu; i=@ucr.edu; q=dns/txt; s=selector3;
 t=1688950965; x=1720486965;
 h=mime-version:references:in-reply-to:from:date:message-id:
 subject:to:cc:content-transfer-encoding;
 bh=byXT/xFmqDD+CZsNnq9g4TTQ5FLhdllwCHHpJVlkyxA=;
 b=OCcB4WbVPKKSK0q9pXCCTIJg6efJLSmmXtl9vEk4ffHslJYIqvybFPTG
 +28TPKUIffMVychMItS2E0Q5cYizOgsZZOY5Pt+j9K3p+aa1Nxwa130eY
 E2ZB1huGdQqE04pXasIq94hkTdGLddPcLq2Tvi1cjvlM04f+Ekf+LRDZf
 vd+o4kgK7EwbM52ZiPCML/0Fqx3vHlMizJag1NKktvTwWN9HCkp81bDdz
 OGcSNBnjbjO43eKRWeCj1UjYS/0wWQAPmFgcInej7b4YRH7GMVDN5DyjL
 e4cElC607otq7Hx7j6DVrSgmcI49WNrCoO17dTonoYFfaD1Tb0RG9HopJ
 g==;
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ucr.edu; s=rmail; t=1688950533; x=1691542533;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qCDKDJuhMe/luM3VFI5ib+K9xMOi0C+lL24R61nDELU=;
 b=E5yAXUur4ozLmLijl5wf9gsUVFry5Mi0buAfkkuxU82pMwaEK+nEGz82sa1z22nFTy
 0lpTFvX9C4wxp3OJSS3qu5i3WphSDO3hRNERLr6Qx0iHQuPodZxlxgLrDoMh1TY802Zc
 UKVKywJVkXqSjMCyFwhF03VBq6XtA1iRWSzSE=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=selector3 header.b=OCcB4WbV; 
 dkim=pass (1024-bit key) header.d=ucr.edu header.i=@ucr.edu
 header.a=rsa-sha256 header.s=rmail header.b=E5yAXUur
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: e1000e: Fix possible uninit
 bug
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
Cc: "Ruinskiy, Dima" <dima.ruinskiy@intel.com>,
 intel-wired-lan@lists.osuosl.org, jesse.brandeburg@intel.com,
 linux-kernel <linux-kernel@vger.kernel.org>, "Edri,
 Michael" <michael.edri@intel.com>, edumazet@google.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SSB0aGluayB1MTYgcGh5X2RhdGEgPSAwIHdvdWxkIG5vdCBodXJ0IHVzLgpMZXQgbWUgc3VibWl0
IGEgcGF0Y2ggd2hpY2gganVzdCBpbml0aWFsaXplcyB1MTYgcGh5X2RhdGEgPSAwLgoKWXUgSGFv
CgpPbiBXZWQsIEp1bCA1LCAyMDIzIGF0IDg6NDfigK9BTSBOZWZ0aW4sIFNhc2hhIDxzYXNoYS5u
ZWZ0aW5AaW50ZWwuY29tPiB3cm90ZToKPgo+IE9uIDcvNS8yMDIzIDAzOjEwLCBZdSBIYW8gd3Jv
dGU6Cj4gPiBUaGUgdmFyaWFibGUgcGh5X2RhdGEgc2hvdWxkIGJlIGluaXRpYWxpemVkIGluIGZ1
bmN0aW9uIGUxZV9ycGh5Lgo+ID4gSG93ZXZlciwgdGhlcmUgaXMgbm90IHJldHVybiB2YWx1ZSBj
aGVjaywgd2hpY2ggbWVhbnMgdGhlcmUgaXMgYQo+ID4gcG9zc2libGUgdW5pbml0IHJlYWQgbGF0
ZXIgZm9yIHRoZSB2YXJpYWJsZS4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBZdSBIYW8gPHloYW8w
MTZAdWNyLmVkdT4KPiA+IC0tLQo+ID4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAw
MGUvbmV0ZGV2LmMgfCA1ICsrKystCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvZXRoZXJu
ZXQvaW50ZWwvZTEwMDBlL25ldGRldi5jCj4gPiBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2UxMDAwZS9uZXRkZXYuYwo+ID4gaW5kZXggNzcxYTNjOTA5YzQ1Li40NTVhZjVlNTVjYzYgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9lMTAwMGUvbmV0ZGV2LmMK
PiA+ICsrKyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2UxMDAwZS9uZXRkZXYuYwo+ID4g
QEAgLTY5MTAsOCArNjkxMCwxMSBAQCBzdGF0aWMgaW50IF9fZTEwMDBfcmVzdW1lKHN0cnVjdCBw
Y2lfZGV2ICpwZGV2KQo+ID4gICAgICAvKiByZXBvcnQgdGhlIHN5c3RlbSB3YWtldXAgY2F1c2Ug
ZnJvbSBTMy9TNCAqLwo+ID4gICAgICBpZiAoYWRhcHRlci0+ZmxhZ3MyICYgRkxBRzJfSEFTX1BI
WV9XQUtFVVApIHsKPiA+ICAgICAgICAgIHUxNiBwaHlfZGF0YTsKPiA+ICsgICAgICAgczMyIHJl
dF92YWw7Cj4KPiB3aHkganVzdCBub3QgaW5pdGlhbGl6ZSB1MTYgcGh5X2RhdGEgPSAwPyBIb3cg
ZGlkIGl0IGh1cnQgdXM/IChsZWdhY3kpCj4KPiA+Cj4gPiAtICAgICAgIGUxZV9ycGh5KCZhZGFw
dGVyLT5odywgQk1fV1VTLCAmcGh5X2RhdGEpOwo+ID4gKyAgICAgICByZXRfdmFsID0gZTFlX3Jw
aHkoJmFkYXB0ZXItPmh3LCBCTV9XVVMsICZwaHlfZGF0YSk7Cj4gPiArICAgICAgIGlmIChyZXRf
dmFsKQo+ID4gKyAgICAgICAgICAgcmV0dXJuIHJldF92YWw7Cj4gPiAgICAgICAgICBpZiAocGh5
X2RhdGEpIHsKPiA+ICAgICAgICAgICAgICBlX2luZm8oIlBIWSBXYWtldXAgY2F1c2UgLSAlc1xu
IiwKPiA+ICAgICAgICAgICAgICAgICAgICAgcGh5X2RhdGEgJiBFMTAwMF9XVVNfRVggPyAiVW5p
Y2FzdCBQYWNrZXQiIDoKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vv
c2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdp
cmVkLWxhbgo=
