Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4D96734F1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 10:59:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B039682140;
	Thu, 19 Jan 2023 09:59:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B039682140
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674122395;
	bh=XPtumV4D12tuo01ydRznc/B0rgGfqTF2HUkneTcJFJM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=SUmLsZ9IsJozN+lz/8YfeLVsZzeRLPUMCN1EI+gJgE7q+i2yUOysxsHsghTBB8Yxl
	 wKGZigNKGnY9BvXd30XnJaSNrZpY113aBgsmIatWa3ukZ4m0uTQ38Nknr4yC3DMfzw
	 wyQfjkt0Rn5MY/mw/hdl1vuqYMtV19H6pGK8JgkEhkJrr4lXCqlsO4nU4qFF9hfXBu
	 +IxDqtORjrl3FlCJFUMlw3oJmCn70I1fU0aIEwL76c1wVyvYMY6KWVooH7juxeCSn9
	 E62MYkv4WcH8LskuVe/2BgyHWr9Tqza8gM+l/PUaaJd9hwm+uoE/nqsdhqq1gYLoWF
	 aVMmCcUDHtp1Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MJfP8sLYD8N4; Thu, 19 Jan 2023 09:59:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB1AC8211E;
	Thu, 19 Jan 2023 09:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB1AC8211E
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A60D01BF25F
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 09:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 895CB41975
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 09:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 895CB41975
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ydG4zCDBNlSJ for <intel-wired-lan@osuosl.org>;
 Thu, 19 Jan 2023 09:59:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DD83419A8
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com
 [IPv6:2a00:1450:4864:20::333])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5DD83419A8
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 09:59:43 +0000 (UTC)
Received: by mail-wm1-x333.google.com with SMTP id
 c4-20020a1c3504000000b003d9e2f72093so3180785wma.1
 for <intel-wired-lan@osuosl.org>; Thu, 19 Jan 2023 01:59:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=42cryF3aHdOt3l2hk9TxHQldgbBfZW/EDi284p2y0rA=;
 b=NWgCsw+DaykFmKfy7YgwGalbHXEMC4mkyF5dw8y1zwKHDhJh8AZSdeZF4FoEX96gDq
 iVFarJ6G1cSzqEDReOA3ML6jxkKLv+68EJ+QlDU2HvqMebGmEFQd8t2U4H2K9xS/M9oy
 35IU8GmaZusGxn3s8mePBdLiy9mCtY/eof8gS8bQvt3gulxU0gsdn1zrJAkwW2HxA5fd
 LEOhmyFx20nyBoYcoaTTdEUJCwBLnvcJz8vOD2y8INeirCVQN1tOMuxBQmOG71lrm4nT
 nV6yymjthb59ogmRVrPjgAERVoY1idiSrfF+Y4/algPDlVEs6K576VE2qmdYihK5OvXI
 eUHg==
X-Gm-Message-State: AFqh2kqfX+L6u0+j+SxlDB3VmAjhQWhqEWDaRp/AMR71onH9Enamklyt
 d0QPxgJj4zGCgk5TX8jCiMZdY+rA91E=
X-Google-Smtp-Source: AMrXdXsn6xQYg3eU6mH8jMK7RR4F1+A8fllYNm03foZw3lUTb2c2RaavgA0wCtTFj2FysXzSXeOrcA==
X-Received: by 2002:a05:600c:3511:b0:3cf:9ac8:c537 with SMTP id
 h17-20020a05600c351100b003cf9ac8c537mr5706055wmq.14.1674122381510; 
 Thu, 19 Jan 2023 01:59:41 -0800 (PST)
Received: from [10.0.10.31] (rejtana.telefonserwis.pl. [91.231.125.228])
 by smtp.gmail.com with ESMTPSA id
 p10-20020a1c544a000000b003db16770bc5sm3681223wmi.6.2023.01.19.01.59.40
 for <intel-wired-lan@osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Jan 2023 01:59:40 -0800 (PST)
Message-ID: <13ff239a-40d6-11e0-c702-a6da4a36be0e@gmail.com>
Date: Thu, 19 Jan 2023 10:59:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: pl
From: Bartek Kois <bartek.kois@gmail.com>
To: intel-wired-lan@osuosl.org
References: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
In-Reply-To: <d1530cba-1a72-cae8-6a04-ed8ec0f82e6e@gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=42cryF3aHdOt3l2hk9TxHQldgbBfZW/EDi284p2y0rA=;
 b=PYiamJTUmQPvGXkxV7jkXdHyBwjtAvnkSdhY4gjKmHhkWJ38QgD/4RzVma/67cLf4M
 HqSHvC8CqiBMns0kf5N4f3WfzJvZeo6lyAx8cqN3r1rHR3jW3tNs+LqL1eK7SZ9GbcBB
 1GRCn42yK2VF2KLSo4KJa4MP72zsepnA7k7UlrYehm0/nWlkHXtgIbbeK8gVMJvS6amH
 zCXnEvVLpWulRW5pLH07c0YesrNLw/5Tqdb2NBk6JwLntJDRo2yx/6Y9xbibFHvCIR2T
 8neqVkREMf8hWH7h7sEU2VV4JdLKpNUvnjDPUxQFAw9BS/R/x35ZGRmiAx9fdVQYuF7J
 LKfQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=PYiamJTU
Subject: Re: [Intel-wired-lan] Supermicro AOC-STGN-I1S (Intel 82599EN based
 10G adapter) - poor network perfomance after moving to Debian 11.5
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkKRG9lcyBhbnlvbmUgY291bGQgaGVscCBtZSB3aXRoIHRoYXQgcHJvYmxlbSBvciBhdCBsZWFz
dCBnaXZlIG1lIHNvbWUgCnRpcHMgb24gaG93IHRvIGRlYnVnIGl0IGZ1dGhlcj8KCkJlc3QgcmVn
YXJkcwpCYXJ0ZWsgS29pcwpXIGRuaXUgMTQuMDEuMjAyMyBvwqAxMToyMywgQmFydGVrIEtvaXMg
cGlzemU6Cj4gSGkKPgo+IEFmdGVyIG1vdmluZyBmcm9tIERlYmlhbiA5LjcgdG8gMTEuNSBhcyBz
b29uIGFzIEkgcGVyZm9ybSAiaXAgbGluayBzZXQgCj4gZW5wMXMwIHVwIiBmb3IgbXkgMTBHIGFk
YXB0ZXIgKEFPQy1TVEdOLUkxUyAtIEludGVsIDgyNTk5RU4gYmFzZWQgMTBHIAo+IGFkYXB0ZXIp
IEkgYW0gZXhwZXJpZW5jaW5nIGhpZ2ggY3B1IGxvYWQgKGV2ZW4gaWYgbm8gdHJhZmZpYyBpcyAK
PiBwYXNzaW5nIHRocm91Z2ggdGhlIGFkYXB0ZXIpIGFuZCBuZXR3b3JrIHBlcmZvcm1hbmNlIGlz
IGxvdyAod2hlbiAKPiBuZXR3b3JrIGlzIGNvbm5lY3RlZCkuIFRoZSBjcHUgbG9hZCBpcyBvc2Np
bGF0aW9uZyBiZXR3ZWVuIDAuMSBhbmQgMC4zIAo+IG9uIHZhbmlsbGEgc3lzdGVtIHdpdGggbm8g
bmV0d29yayBhdHRhY2hlZC4gVGhlIHByb2JsZW0gY2FuIGJlIAo+IG9ic2VydmVkIG9uIHRoZSBm
b2xsb3dpbmcgcGxhdGZvcm1zOiBTdXBlcm1pY3JvIFg5U0NMIChJbnRlbCBDMjAyIFBDSCkgCj4g
YW5kIFN1cGVybWljcm8gWDEwU0xMKy1GIChJbnRlbCBDMjIyIEV4cHJlc3MgUENIKSwgYnV0IGZv
ciB0aGUgCj4gU3VwZXJtaWNybyBYMTFTU0wtRiAoSW50ZWzCriBDMjMyIGNoaXBzZXQpIGV2ZXJ5
dGluZyBpcyB3b3JraW5nIHdlbGwuCj4KPiBUZXN0ZWQgZW52aXJvbWVudHM6Cj4gRGViaWFuIDku
NyAtIExpbnV4IDQuOS4wLTYtYW1kNjQgIzEgU01QIERlYmlhbiA0LjkuODgtMStkZWI5dTEgCj4g
KDIwMTgtMDUtMDcpIHg4Nl82NCBHTlUvTGludXggW2FsbCBwbGF0Zm9ybXMgd29ya2luZyB3ZWxs
IHdpdGggbm8gCj4gcHJvYmxlbXM6IFN1cGVybWljcm8gWDlTQ0wgKEludGVsIEMyMDIgUENIKSwg
U3VwZXJtaWNybyBYMTBTTEwrLUYgCj4gKEludGVsIEMyMjIgRXhwcmVzcyBQQ0gpLCBTdXBlcm1p
Y3JvIFgxMVNTTC1GIChJbnRlbMKuIEMyMzIgY2hpcHNldCldCj4gRGViaWFuIDExLjUgLSBMaW51
eCA1LjEwLjAtMTktYW1kNjQgIzEgU01QIERlYmlhbiA1LjEwLjE0OS0yIAo+ICgyMDIyLTEwLTIx
KSB4ODZfNjQgR05VL0xpbnV4wqAgW29sZGVyIHBsYXRmb3JtczogU3VwZXJtaWNybyBYOVNDTCAK
PiAoSW50ZWwgQzIwMiBQQ0gpLCBTdXBlcm1pY3JvIFgxMFNMTCstRiAoSW50ZWwgQzIyMiBFeHBy
ZXNzIFBDSCkgYmVoYXZlIAo+IHByb2JsZW1hdGljIGFzIGRlc2NyaWJlZCBhYm92ZSB8IG5ld2Vy
IHBsYXRmb3JtOiBTdXBlcm1pY3JvIFgxMVNTTC1GIAo+IChJbnRlbMKuIEMyMzIgY2hpcHNldCkg
d29ya2luZyB3ZWxsIHdpdGggbm8gcHJvYmxlbXNdCj4KPiBTbyBmYXIgdG8gc29sdmUgdGhlIHBy
b2JsZW0gSSB3YXMgdHJ5aW5nIHRvIHVwZ3JhZGUgc3lzdGVtIHRvIHRoZSAKPiBuZXdlc3Qgc3Rh
YmxlIHZlcnNpb24sIHVwZ3JhZGUga2VybmVsIHRvIHZlcnNpb24gNi54LCB1cGdyYWRlIGl4Z2Jl
IAo+IGRyaXZlciB0byB0aGUgbmV3ZXN0IHZlcnNpb24gYnV0IHdpdGggbm8gbHVjay4KPgo+IFN1
cGVybWljcm8gc3VwcG9ydCBzdWdnZXN0ZWQgYXMgZm9sbG93czoKPiBpdCBtaWdodCBiZSBrZXJu
ZWwgcmVsZXRlZCBkZWJpYW4gMTEuNSBoYXMga2VybmVsIDUuMTAgd2hpaGNoIGlzIGEgCj4gcmVj
ZW50IGtlcm5lbCBpdCBtaWdodCBub3QgcHJvcGVybHkgc3VwcG9ydCB0aGUgY2hpcHNldHMgZm9y
IFg5IAo+IHRoZXJlZm9yZSBpIHN1Z2dlc3QgdG8gdXNlIFJIRUwgb3IgQ2VudE9TIGFzIHRoZXkg
dXNlIG11Y2ggb2xkZXIgCj4ga2VybmVsIHZlcnNpb25zLiBJIGV4cGVjdCB0aGF0IHdpdGggdWJ1
bnR1IDIwLjA0IHlvdSBzZWUgdGhlIHNhbWUgCj4gcHJvYmxlbSBpdCB1c2VzIGtlcm5lbCA1LjQK
Pgo+IEJlc3QgcmVnYXJkcwo+IEJhcnRlayBLb2lzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwt
d2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
