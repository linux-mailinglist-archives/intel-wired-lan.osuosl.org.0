Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EE07DBCB4
	for <lists+intel-wired-lan@lfdr.de>; Mon, 30 Oct 2023 16:35:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACF0670A95;
	Mon, 30 Oct 2023 15:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACF0670A95
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698680124;
	bh=jj/PgvDrJJzk38H7FcgXpdT0grnKfYZ/T/Paz36o+9Q=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=yt+1y8V6XTG2DukXteTcliRobfdXxj9iN5XgaQNzE/c6lTpiFcusOwTb2/BBzjNN5
	 XOGo2ooykCEe/ArnoQFBO5yVG+xbJMmB/8Esrhl20tCjGwA1g3pxdtYPDaz/tsOr+A
	 3nZcMFCsxKm4DnQW2D5UBiLuUHl8zpknkO+0TfT0wXxBpMIo4icLr2ONuctf27nymT
	 umEyr41OPM3mD/KiWb+8HgvdjWERzBSvSZEbJUpp8d3TG468mOYE/YJvuW4Fwii7AP
	 GRtdUBu0fSyZrkMZnOzWmb7Xw0yVZhNWetQKB0uPiqq1PD2gzyTsh/cp7lUqsvRMlE
	 Z3aPcEiU65WeQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kVasNdOTewb2; Mon, 30 Oct 2023 15:35:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7350170925;
	Mon, 30 Oct 2023 15:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7350170925
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id CB7AB1BF2FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B13C18210D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B13C18210D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CTsdZlg1rnaP for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Oct 2023 23:59:24 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 957D78210A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 23:59:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 957D78210A
Received: by mail-lf1-x136.google.com with SMTP id
 2adb3069b0e04-507f1c29f25so360728e87.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Oct 2023 16:59:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698278362; x=1698883162;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=rOKIo8DF+sUuPmcncHrP3egXRJzB8ddS10YhGbuNSzU=;
 b=n4I2OjRqF8cF4pcPPiZL3/rpaAnI7P6Wyenbm0JKopsbFD5y8JkiyMs+riT1lZJpL/
 5qj6zvdYVqVk/4ftGmmXqDdKZlkSQZsh3MToTtVOv9tvqPQGIlA8n+Yt0702ODgnKdXH
 Le4nndVkDPgeuBof8D79T3S/8xWTZDzI6+E+PtVSPPFImaYy0m2fwwKjhiKYTbooAh8q
 kRolG37/eDOJmQE9GY0DDYPgXm+7mPtHxMMVBcsJhnvVmh8qVFEUDXnoM11U8Xna3g6Q
 VXo+0m4TheCEyOQ2B/VQS+gr1YmMJYCdRTKm/FVsKB+a3xWlcJHFGqYEk7M4UAYzg3xs
 fDiA==
X-Gm-Message-State: AOJu0Yxr7I+l8q4cL+lPpsXn/GTsslHkPkTDyCasl08n0e1nz+PG30BX
 9gpiWapqDlB72wJ0lDWCzBPcVC3rCRKyNXCylIHk0Q==
X-Google-Smtp-Source: AGHT+IGtsFDBZKN+N/ZF4VcJsolWlfdEFrnQ/DXEW85XQ02kN1A3YBCHAzvuiK4AYre/UMSRQEecJKagI7QT12Wqsd4=
X-Received: by 2002:a19:2d54:0:b0:507:ceba:a94d with SMTP id
 t20-20020a192d54000000b00507cebaa94dmr12847400lft.14.1698278362169; Wed, 25
 Oct 2023 16:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <20231025-ethtool_puts_impl-v1-0-6a53a93d3b72@google.com>
 <20231025-ethtool_puts_impl-v1-2-6a53a93d3b72@google.com>
 <10a072f549e187bc2fdc735c0161c09c90fc1392.camel@perches.com>
In-Reply-To: <10a072f549e187bc2fdc735c0161c09c90fc1392.camel@perches.com>
From: Justin Stitt <justinstitt@google.com>
Date: Wed, 25 Oct 2023 16:59:10 -0700
Message-ID: <CAFhGd8r5YFJrpy7xvhi2LZUrsPNTTpWKy2PYgDOjnrnTNBN3Bg@mail.gmail.com>
To: Joe Perches <joe@perches.com>
X-Mailman-Approved-At: Mon, 30 Oct 2023 15:34:59 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1698278362; x=1698883162; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rOKIo8DF+sUuPmcncHrP3egXRJzB8ddS10YhGbuNSzU=;
 b=nHc+ILKaaKYzigBmOyA96MBnfkMksECE0HR3o7HrOYuLNjWkY+a4ohtrp97Chlsdmp
 GwpZj4gsM2xZWSUDXMdgXp23oEkNf10c561An/rBiNTf8n/swQh92He7YrvfUEN0hHc6
 D9VIIaUXPcvgmh1wN88HWvoDBlpdiFRAPgVi5O7xSxKuwXScP9PPhIorkNMpUfamCcAn
 XmZsjbFns/W3TymEAbxJWKa2vK710H/4X4mehayqiYCCDTJnBGd2iEMzUcuKwIjbdGJY
 mbFrJru15BwRWMvb8vEjUB2oTbZXXUz48x5U9SsI23ywbPFGFcRPeL6gmPwyncJqSxch
 cY1g==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=nHc+ILKa
Subject: Re: [Intel-wired-lan] [PATCH 2/3] treewide: Convert some
 ethtool_sprintf() to ethtool_puts()
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
Cc: linux-hyperv@vger.kernel.org, Brett Creeley <brett.creeley@amd.com>,
 Ronak Doshi <doshir@vmware.com>,
 VMware PV-Drivers Reviewers <pv-drivers@vmware.com>,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Arthur Kiyanovski <akiyano@amazon.com>, Louis Peens <louis.peens@corigine.com>,
 Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, Noam Dagan <ndagan@amazon.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Yisen Zhuang <yisen.zhuang@huawei.com>,
 Shay Agroskin <shayagr@amazon.com>, Kees Cook <keescook@chromium.org>,
 Haiyang Zhang <haiyangz@microsoft.com>, Nathan Chancellor <nathan@kernel.org>,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, Andy Whitcroft <apw@canonical.com>,
 drivers@pensando.io, Salil Mehta <salil.mehta@huawei.com>,
 GR-Linux-NIC-Dev@marvell.com, Rasesh Mody <rmody@marvell.com>,
 David Arinzon <darinzon@amazon.com>, oss-drivers@corigine.com,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Dwaipayan Ray <dwaipayanray1@gmail.com>, Saeed Bishara <saeedb@amazon.com>,
 Dimitris Michailidis <dmichail@fungible.com>,
 Sudarsana Kalluru <skalluru@marvell.com>,
 Shannon Nelson <shannon.nelson@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gV2VkLCBPY3QgMjUsIDIwMjMgYXQgNDo1MeKAr1BNIEpvZSBQZXJjaGVzIDxqb2VAcGVyY2hl
cy5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCAyMDIzLTEwLTI1IGF0IDIzOjQwICswMDAwLCBKdXN0
aW4gU3RpdHQgd3JvdGU6Cj4gPiBUaGlzIHBhdGNoIGNvbnZlcnRzIHNvbWUgYmFzaWMgY2FzZXMg
b2YgZXRodG9vbF9zcHJpbnRmKCkgdG8KPiA+IGV0aHRvb2xfcHV0cygpLgo+ID4KPiA+IFRoZSBj
b252ZXJzaW9ucyBhcmUgdXNlZCBpbiBjYXNlcyB3aGVyZSBldGh0b29sX3NwcmludGYoKSB3YXMg
YmVpbmcgdXNlZAo+ID4gd2l0aCBqdXN0IHR3byBhcmd1bWVudHM6Cj4gPiA+ICAgICAgIGV0aHRv
b2xfc3ByaW50ZigmZGF0YSwgYnVmZmVyW2ldLm5hbWUpOwo+Cj4gT0suCj4KPiA+IG9yIHdoZW4g
aXQncyB1c2VkIHdpdGggZm9ybWF0IHN0cmluZzogIiVzIgo+ID4gPiAgICAgICBldGh0b29sX3Nw
cmludGYoJmRhdGEsICIlcyIsIGJ1ZmZlcltpXS5uYW1lKTsKPiA+ID4gd2hpY2ggYm90aCBub3cg
YmVjb21lOgo+ID4gPiAgICAgICBldGh0b29sX3B1dHMoJmRhdGEsIGJ1ZmZlcltpXS5uYW1lKTsK
Pgo+IFdoeSBkbyB5b3Ugd2FudCB0aGlzIGNvbnZlcnNpb24/Cj4gSXMgaXQgbm90IHBvc3NpYmxl
IGZvciAubmFtZSB0byBjb250YWluIGEgZm9ybWF0dGluZyBmaWVsZD8KClRoZSBjYXNlIG9mIHVz
aW5nIGp1c3QgdHdvIGFyZ3VtZW50cyB0byBhIGV0aHRvb2xfc3ByaW50ZgpjYWxsIG1heSBjYXVz
ZSAtV2Zvcm1hdC1zZWN1cml0eSB3YXJuaW5ncy4gSWYgaXQgZGlkIGluZGVlZApoYXZlIGZvcm1h
dCBzcGVjaWZpZXJzIHRoZW4gd2Ugd291bGQgaGF2ZSBtb3JlIGZvcm1hdApzcGVjaWZpZXJzIHRo
YW4gYXJndW1lbnRzLiBOb3QgaWRlYWwuCgpUaGUgc2Vjb25kIGNhc2Ugb2YgaGF2aW5nIGEgc3Rh
bmRhbG9uZSAiJXMiIGlzbid0Cm5lY2Vzc2FyaWx5IGJhZCBvciB3cm9uZy4gSSB1c2VkIHRoaXMg
ZXhhY3QgYXBwcm9hY2ggdG8KcmVwbGFjZSBzb21lIHN0cm5jcHkoKSB1c2FnZSBpbiBuZXQgZHJp
dmVycyBbMV0uCgpJJ20gd29ya2luZyBvZmYgZ3VpZGFuY2UgZnJvbSBBbmRyZXcgTHVubiBbMl0g
YW5kIEtlZXMKd2hvIHNhaWQgaXQgbWF5IGJlIGEgZ29vZCBpZGVhIHRvIHRpZHkgdGhpcyB1cCB3
aXRoIGEgcHV0cygpLgoKQWxsIGluIGFsbCwgdGhpcyBwYXRjaCBkb2Vzbid0IGRvIG11Y2ggYnV0
IGZpeCBzb21lIHdhcm5pbmdzCmFuZCBwcm92aWRlIGEgbW9yZSBvYnZpb3VzIGludGVyZmFjZS4g
VGhlIG51bWJlciBvZgphY3R1YWwgcmVwbGFjZW1lbnRzIGFyZSByZWxhdGl2ZWx5IGxvdyAoYXJv
dW5kIDIwaXNoKSBzbwpJIHdhcyBob3BpbmcgdG8gc25lYWsgdGhlbSBpbiB2aWEgdGhpcyBzZXJp
ZXMuCgo+CgpbMV06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8/cT1kZmIlM0FldGh0b29s
X3NwcmludGYrQU5EK2YlM0FqdXN0aW5zdGl0dApbMl06IGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2FsbC9hOTU4ZDM1ZS05OGI2LTRhOTUtYjUwNS03NzY0ODJkMTE1MGNAbHVubi5jaC8KClRoYW5r
cwpKdXN0aW4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpo
dHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
