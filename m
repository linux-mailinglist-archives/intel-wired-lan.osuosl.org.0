Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA52A4F5A4D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Apr 2022 11:53:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6A4FD405BA;
	Wed,  6 Apr 2022 09:53:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilcZ8gCLFrE6; Wed,  6 Apr 2022 09:53:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5EE4040475;
	Wed,  6 Apr 2022 09:53:17 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BD7481BF95F
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BBCD3823E2
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=6wind.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c7WWOUBWRpwY for <intel-wired-lan@osuosl.org>;
 Wed,  6 Apr 2022 09:53:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6E93C81D5A
 for <intel-wired-lan@osuosl.org>; Wed,  6 Apr 2022 09:53:05 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 i6-20020a1c3b06000000b0038e710da2dcso3273303wma.1
 for <intel-wired-lan@osuosl.org>; Wed, 06 Apr 2022 02:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6wind.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gP5E+S0OVvLHVCYowDmq4iA9V2CqyXmy3UTP8YLCsUQ=;
 b=aWgtn74kxNKy9HpEzEjzXwMNsdnkVaxExsUFyJoRf3oRN5do1LxVccwBniu1Cpm2Hl
 W5iZNTQPM7ShvPMkwVJL9MrQmyw37iP54Jihrctsusrzx2DSdOEiqu2p4hRcWHG61TnW
 u2/A/TNjcE4pDR6DYwMEIK/1dvYYrMSxOG+Q1vRb371iKW+Ku2UM5OlXQ8gU5TiudqiZ
 y9y9le1APbJaKQudw2gfhJLpr0LORJYZs6alsg5Hpy6miW1fENrdVVvI9vKTsm8KF1SE
 KCL7tSInLWMW+1L7YMWw+MV4zX+TV73oPCvmYujeTMLqpEYBTg6Rwz2PROIoxup+K3IP
 gN0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gP5E+S0OVvLHVCYowDmq4iA9V2CqyXmy3UTP8YLCsUQ=;
 b=a5M7QNmwpg6/+pXMSqyRneojAlk1OtYsovsv7FdJCRKQJ7MbOl8ipiK3s1IdxnBTaJ
 6R14JWOm6Aps6qCkcIgguWdazy4cHUFHgUvFbD2ExtMrTaTeGS5aNlsorMzNR5h+aSg/
 sqA8x54DFkUvzyFl2ayjG7rhLxJX4qOKgBAWit+QchvQglA0HUtuXtkqcsfk5iVTkEDL
 5Xq22xFLOvlJKF2wz+fAtv8XvNtmAymCj/IREPjeWJNWIxGZ9jdLklMTzMXI+j9ISm25
 z5WA18Hk2YnCyjSS2001skJMJMnwC7r+4KbBDBFINDJ1YDgPnMYbL9naWfTb7nc2Eu4y
 5YRw==
X-Gm-Message-State: AOAM531qwYsi0ZghElxELIJm23BU5PaLt2xlyzrXP9WjE2Vi7YVlT7Uw
 oc8pTtpGDQxnQZbAbnErxIqT5Q==
X-Google-Smtp-Source: ABdhPJzja+5DtRKA2qMLTVogcaM1f3qK/EOT2bNBO+YXRkTMRbcqErtfSQbdb1JXWGZ5qdHhkv3k0A==
X-Received: by 2002:a05:600c:a08:b0:38c:93c8:36e9 with SMTP id
 z8-20020a05600c0a0800b0038c93c836e9mr6762147wmp.97.1649238783664; 
 Wed, 06 Apr 2022 02:53:03 -0700 (PDT)
Received: from gojira.dev.6wind.com ([185.13.181.2])
 by smtp.gmail.com with ESMTPSA id
 f18-20020a5d6652000000b001e669ebd528sm13874604wrw.91.2022.04.06.02.53.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Apr 2022 02:53:03 -0700 (PDT)
From: Olivier Matz <olivier.matz@6wind.com>
To: netdev@vger.kernel.org
Date: Wed,  6 Apr 2022 11:52:52 +0200
Message-Id: <20220406095252.22338-3-olivier.matz@6wind.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220406095252.22338-1-olivier.matz@6wind.com>
References: <20220406095252.22338-1-olivier.matz@6wind.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net v2 2/2] ixgbe: fix unexpected VLAN Rx
 in promisc mode on VF
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>, intel-wired-lan@osuosl.org,
 stable@vger.kernel.org, Jakub Kicinski <kuba@kernel.org>,
 Nicolas Dichtel <nicolas.dichtel@6wind.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2hlbiB0aGUgcHJvbWlzY3VvdXMgbW9kZSBpcyBlbmFibGVkIG9uIGEgVkYsIHRoZSBJWEdCRV9W
TU9MUl9WUEUKYml0IChWTEFOIFByb21pc2N1b3VzIEVuYWJsZSkgaXMgc2V0LiBUaGlzIG1lYW5z
IHRoYXQgdGhlIFZGIHdpbGwKcmVjZWl2ZSBwYWNrZXRzIHdob3NlIFZMQU4gaXMgbm90IHRoZSBz
YW1lIHRoYW4gdGhlIFZMQU4gb2YgdGhlIFZGLgoKRm9yIGluc3RhbmNlLCBpbiB0aGlzIHNpdHVh
dGlvbjoKCuKUjOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkCAgICDilIzilIDilIDilIDilIDi
lIDilIDilIDilIDilJAgICAg4pSM4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSQCuKUgiAgICAg
ICAg4pSCICAgIOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCCuKUgiAgICAgICAg4pSC
ICAgIOKUgiAgICAgICAg4pSCICAgIOKUgiAgICAgICAg4pSCCuKUgiAgICAgVkYw4pSc4pSA4pSA
4pSA4pSA4pSkVkYxICBWRjLilJzilIDilIDilIDilIDilKRWRjMgICAgIOKUggrilIIgICAgICAg
IOKUgiAgICDilIIgICAgICAgIOKUgiAgICDilIIgICAgICAgIOKUggrilJTilIDilIDilIDilIDi
lIDilIDilIDilIDilJggICAg4pSU4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSA4pSYICAgIOKUlOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUmAogICBWTTEgICAgICAgICAgIFZNMiAgICAgICAgICAg
Vk0zCgp2ZiAwOiAgdmxhbiAxMDAwCnZmIDE6ICB2bGFuIDEwMDAKdmYgMjogIHZsYW4gMTAwMQp2
ZiAzOiAgdmxhbiAxMDAxCgpJZiB3ZSB0Y3BkdW1wIG9uIFZGMywgd2Ugc2VlIGFsbCB0aGUgcGFj
a2V0cywgZXZlbiB0aG9zZSB0cmFuc21pdHRlZApvbiB2bGFuIDEwMDAuCgpUaGlzIGJlaGF2aW9y
IHByZXZlbnRzIHRvIGJyaWRnZSBWRjEgYW5kIFZGMiBpbiBWTTIsIGJlY2F1c2UgaXQgd2lsbApj
cmVhdGUgYSBsb29wOiBwYWNrZXRzIHRyYW5zbWl0dGVkIG9uIFZGMSB3aWxsIGJlIHJlY2VpdmVk
IGJ5IFZGMiBhbmQKdmljZS12ZXJzYSwgYW5kIGJyaWRnZWQgYWdhaW4gdGhyb3VnaCB0aGUgc29m
dHdhcmUgYnJpZGdlLgoKVGhpcyBwYXRjaCByZW1vdmUgdGhlIGFjdGl2YXRpb24gb2YgVkxBTiBQ
cm9taXNjdW91cyB3aGVuIGEgVkYgZW5hYmxlcwp0aGUgcHJvbWlzY3VvdXMgbW9kZS4gSG93ZXZl
ciwgdGhlIElYR0JFX1ZNT0xSX1VQRSBiaXQgKFVuaWNhc3QKUHJvbWlzY3VvdXMpIGlzIGtlcHQs
IHNvIHRoYXQgYSBWRiByZWNlaXZlcyBhbGwgcGFja2V0cyB0aGF0IGhhcyB0aGUKc2FtZSBWTEFO
LCB3aGF0ZXZlciB0aGUgZGVzdGluYXRpb24gTUFDIGFkZHJlc3MuCgpGaXhlczogODQ0M2MxYTRi
MTkyICgiaXhnYmUsIGl4Z2JldmY6IEFkZCBuZXcgbWJveCBBUEkgeGNhc3QgbW9kZSIpCkNjOiBz
dGFibGVAdmdlci5rZXJuZWwub3JnCkNjOiBOaWNvbGFzIERpY2h0ZWwgPG5pY29sYXMuZGljaHRl
bEA2d2luZC5jb20+ClNpZ25lZC1vZmYtYnk6IE9saXZpZXIgTWF0eiA8b2xpdmllci5tYXR6QDZ3
aW5kLmNvbT4KLS0tCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlv
di5jIHwgNCArKy0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2Jl
X3NyaW92LmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5j
CmluZGV4IDhkMTA4YTc4OTQxYi4uZDRlNjNmMDY0NGMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL25l
dC9ldGhlcm5ldC9pbnRlbC9peGdiZS9peGdiZV9zcmlvdi5jCisrKyBiL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2l4Z2JlL2l4Z2JlX3NyaW92LmMKQEAgLTEyMDgsOSArMTIwOCw5IEBAIHN0
YXRpYyBpbnQgaXhnYmVfdXBkYXRlX3ZmX3hjYXN0X21vZGUoc3RydWN0IGl4Z2JlX2FkYXB0ZXIg
KmFkYXB0ZXIsCiAJCQlyZXR1cm4gLUVQRVJNOwogCQl9CiAKLQkJZGlzYWJsZSA9IDA7CisJCWRp
c2FibGUgPSBJWEdCRV9WTU9MUl9WUEU7CiAJCWVuYWJsZSA9IElYR0JFX1ZNT0xSX0JBTSB8IElY
R0JFX1ZNT0xSX1JPTVBFIHwKLQkJCSBJWEdCRV9WTU9MUl9NUEUgfCBJWEdCRV9WTU9MUl9VUEUg
fCBJWEdCRV9WTU9MUl9WUEU7CisJCQkgSVhHQkVfVk1PTFJfTVBFIHwgSVhHQkVfVk1PTFJfVVBF
OwogCQlicmVhazsKIAlkZWZhdWx0OgogCQlyZXR1cm4gLUVPUE5PVFNVUFA7Ci0tIAoyLjMwLjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
