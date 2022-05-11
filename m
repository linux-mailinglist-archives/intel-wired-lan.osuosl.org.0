Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B1832523477
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 May 2022 15:41:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 672E983E3C;
	Wed, 11 May 2022 13:41:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iZHCK_2oHazJ; Wed, 11 May 2022 13:41:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 56B5983E39;
	Wed, 11 May 2022 13:41:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 43B001BF870
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3097F83118
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9qLrEu3wXSk3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 May 2022 06:27:09 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0C502830E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 May 2022 06:27:08 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id
 l20-20020a17090a409400b001dd2a9d555bso1220821pjg.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 May 2022 23:27:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=x1zLYmhBeI9VQ2C3yYg/lgfsb9MaFzisQ7CwqFC2jmg=;
 b=hHaUp+j61WDKc8GZukvFRmcrez5Eo+p29rj/DmGz267KV5ynjQbVgbh78lQEejCpdp
 mOQ+f7MW2xbOnb3vWbjQqUZaaa6Wu7W8fN8Ne1An/+zU4exu6yCWQdBJkslVUhZvow74
 XgF0E1YZlPM5JPTeiXucJhumMPm2ysvAuizPp8WvCz4lZ2yKKVj4iWjLLTG7746zSJKc
 l0Y3VmyURfFp973dWkCtZLl4u7dxiAwihJqC2dQSvqa6eZdXdIaGr9RYFqk56M0WnFjR
 gUOKo3URBEN0mlkzJKZGe61NlbFOn0VqXYDKl2miH/MNSD3ftSDTJ/aAgs1uAf56ktXs
 YYlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=x1zLYmhBeI9VQ2C3yYg/lgfsb9MaFzisQ7CwqFC2jmg=;
 b=prjhNQ5jkpcYXqqrlYEvsK95YypX7kRaEO8xbzyY7noYqSmCFEKh+M3G6M58FA7FIo
 yCi6WCQshoqn8vXar7BpffnpArZtj4DXXP7mITSWPlo/tBW7GYVomwVBM1SOnyxKnWz9
 r0PePu8y+QJYICsYaao6uctCUTm+7h1wQ2+ui6WeYQN0HwbjhoW2DJuIEXpyPbWzGpKn
 8PDHHWMW/qX+9hwvN/8va5SDJRsYcLVssbR8wHI8EsWwiDD7DL09SabK6vpAUrDGIY+3
 RRXsv02PHStjaM8Kc2xJpz7jZyX46jvwmz9k35OccCKwiyERuzAYF6dSI4S1W0Q5IMBr
 3u/g==
X-Gm-Message-State: AOAM533WYFSSJwNUCuqUEH6I77YjD7mpRAWh0sNDmONyj+6uN3NBfWGR
 vF2vNZUaz91BGNPvDYSMWBk=
X-Google-Smtp-Source: ABdhPJwi9mUk6axdi6D2408McpV1dtefei+41H+UbmGqouDOCcK9NQYGojl152WiHURwgqbET1uz+w==
X-Received: by 2002:a17:903:20f:b0:158:d86a:f473 with SMTP id
 r15-20020a170903020f00b00158d86af473mr23969735plh.92.1652250428373; 
 Tue, 10 May 2022 23:27:08 -0700 (PDT)
Received: from smtpclient.apple ([223.104.68.106])
 by smtp.gmail.com with ESMTPSA id
 a18-20020a17090a481200b001d90c8b6141sm808592pjh.53.2022.05.10.23.27.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 10 May 2022 23:27:08 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.80.82.1.1\))
From: lixue liang <lixue.liang5086@gmail.com>
In-Reply-To: <7963e252-05cb-349e-5902-c4e38f7e9405@intel.com>
Date: Wed, 11 May 2022 14:26:45 +0800
Message-Id: <AD31AFC0-2621-4671-986A-8BCE2AA9F514@gmail.com>
References: <20220510012159.8924-1-lianglixue@greatwall.com.cn>
 <7963e252-05cb-349e-5902-c4e38f7e9405@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
X-Mailer: Apple Mail (2.3696.80.82.1.1)
X-Mailman-Approved-At: Wed, 11 May 2022 13:40:58 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igb_ethtool: fix efficiency issues in
 igb_set_eeprom
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
Cc: Jakub Kicinski <kuba@kernel.org>, intel-wired-lan@lists.osuosl.org,
 Netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGhhbmsgeW91IHZlcnkgbXVjaCBmb3IgcmVwbHlpbmcgdG8gbXkgcXVlc3Rpb24gYW5kIGZvciBz
dWdnZXN0aW5nIGNvcnJlY3Rpb25zLgoKU2luY2UgdGhlIGludGVyZmFjZSAoaWdiX3NldF9lZXBy
b20pIGZvciBhcmJpdHJhcmlseSBtb2RpZnlpbmcgdGhlIG1hYyBhZGRyZXNzIGlzIHByb3ZpZGVk
LCAKaXQgaXMgZXF1aXZhbGVudCB0byBwcm92aWRpbmcgYSB3YXkgdG8gbW9kaWZ5IHRoZSBtYWMg
YWRkcmVzcyBhcmJpdHJhcmlseSBhbmQgY2F1c2UgdGhlIGlnYiAKZHJpdmVyIHRvIGZhaWwgdG8g
bG9hZC4gVGhlcmVmb3JlLCBhIHdheSB0byByZXN0b3JlIGEgdmFsaWQgbWFjIGFkZHJlc3Mgc2hv
dWxkIGFsc28gYmUgcmVzZXJ2ZWQsIApzbyBhcyB0byBwcmV2ZW50IG1vc3QgdXNlcnMgZnJvbSBi
ZWluZyBoZWxwbGVzcyBpbiB0aGUgY2FzZSBvZiBhbiBpbnZhbGlkIG1hYyBhZGRyZXNzLgoKRXhj
ZXB0IGJ5IHVzaW5nIHRvb2xzIHRvIGZsYXNoIHRoZSBmaXJtd2FyZSBvciBtb2RpZnkgdGhlIGln
YiBkcml2ZXIgdG8gY29udGludWUgbG9hZGluZyB1bmRlciAKYW4gaW52YWxpZCBtYWMgYWRkcmVz
cywgaG93ZXZlciBtb3N0IHVzZXJzIGRvIG5vdCBoYXZlIHRoaXMgYWJpbGl0eS4gSW4gdGhlIGNh
c2Ugb2YgaW52YWxpZGl0eSwgCnRoZSBpbnZhbGlkIG1hYyBhZGRyZXNzIG11c3QgYmUgY2hhbmdl
ZCB0byBhIGxlZ2FsIGFkZHJlc3MsIHNvIGl0IGlzIGFsd2F5cyBiZXR0ZXIgdG8gdXNlIGEgCnZh
bGlkIG1hYyBhZGRyZXNzIHRvIGNvbnRpbnVlIHByZXRlbmRpbmcgdG8gYmUgYSBuZXR3b3JrIGNh
cmQgZHJpdmVyIHdoZW4gdGhlIG1hYyBhZGRyZXNzIGlzIGludmFsaWQsCiB3aGljaCBpcyBhbHdh
eXMgYmV0dGVyIHRoYW4gbm90IGJlaW5nIGFibGUgdG8gbG9hZCB0aGUgZHJpdmVyLCBzdWNoIGFz
IHRoZSBtaWNyb2NoaXAgbmV0d29yayBjYXJkIChsYW43NDN4KSBkcml2ZXIgLgoKSSB0aGluayBp
dCBpcyB3b3J0aHdoaWxlIHRvIHJlcGxhY2UgdGhlIGludmFsaWQgbWFjIGFkZHJlc3Mgd2l0aCBh
IHJhbmRvbSB2YWxpZCBtYWMgYWRkcmVzcyB0byAKY29tcGxldGUgdGhlIGlnYiBkcml2ZXIgbG9h
ZGluZy4gSW4gcmVzcG9uc2UgdG8gdGhlIGFib3ZlIHByb2JsZW0sIEkgd2lsbCBwcm92aWRlIGEg
cGF0Y2ggb24gaWdiX21haW4uYyBhZ2Fpbi4uCgpUaGFuayB5b3UgZm9yIHRha2luZyB0aGUgdGlt
ZS4KCj4gMjAyMuW5tDXmnIgxMeaXpSAwMzo0M++8jEplc3NlIEJyYW5kZWJ1cmcgPGplc3NlLmJy
YW5kZWJ1cmdAaW50ZWwuY29tPiDlhpnpgZPvvJoKPiAKPiBQbGVhc2UgaW5jbHVkZSBuZXRkZXYg
bWFpbGluZyBsaXN0IHdoZW4gbWFpbGluZyB0aGUgbWFpbnRhaW5lcnMgb2YgbmV0ZGV2LgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQt
bGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3Rz
Lm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
