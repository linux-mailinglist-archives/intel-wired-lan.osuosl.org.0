Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCFA7BC64F
	for <lists+intel-wired-lan@lfdr.de>; Sat,  7 Oct 2023 11:02:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9850C83C81;
	Sat,  7 Oct 2023 09:02:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9850C83C81
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696669341;
	bh=wr8xABemsxRaqG6oWN2qh8RhYGSVuRiKicxXrU4xlA4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i9YuMOw+lVE1+5IrrQnbjPm4mKXoPu/4arPxdPQu0ayjy5EKS6mtP7pDj6ajdy5/d
	 UD1J+49K+3/s4MdL/fLj98KT6o2MCXIFhRb19tIMNXl+3zJDdhMpL8WjiBHOgdGbBC
	 dtiVK2+S0DaZlhOuFn4MPYrGi1dBaQjOKlZwBy6C/G2qem7Ybn5trvaglv4GCCOPEL
	 4qUAun3P+O9FJglsL0/7Ds7mzEUxk2dSKZd3KP5P2lRI3GM0YfqGMIMrJYVoP5nJ3J
	 /ENYt/quz8yqUEgF0KAYLns5uE+05loWC+P51yH8HCLZ6KjpDfS+KLrHP6r/M8p2j+
	 0fAVQAmdnVI3A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6wIoDYQqmtuK; Sat,  7 Oct 2023 09:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C72D083C77;
	Sat,  7 Oct 2023 09:02:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C72D083C77
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 74F7C1BF41B
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 09:02:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 593DE40382
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 09:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 593DE40382
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hn7xad135CX0 for <intel-wired-lan@lists.osuosl.org>;
 Sat,  7 Oct 2023 09:02:09 +0000 (UTC)
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com
 [IPv6:2607:f8b0:4864:20::933])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 147054037E
 for <intel-wired-lan@lists.osuosl.org>; Sat,  7 Oct 2023 09:02:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 147054037E
Received: by mail-ua1-x933.google.com with SMTP id
 a1e0cc1a2514c-7ab9488f2f0so1227359241.3
 for <intel-wired-lan@lists.osuosl.org>; Sat, 07 Oct 2023 02:02:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696669327; x=1697274127;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=w9yumCYBwE15BAN27v3FA9ycLvlMlIx617zkJsKB3ec=;
 b=beH/kTdKoL4OL4+dxY4gh3r9gGniTBkHfdUEOGBaaAqtJrfxoyQwRoiMxa4b0VCUc8
 4Q1ifISZ1BRSiHoSMHKd7HNQnelhAf71n1eq2XlnvzWMPlfLBqc0KNna5UzqQ4b2n8iZ
 ey6Rc/7/v/DlqrgLmoSBhDalbi/DSEWWYWhvmNSGdNM/Hod4GMLw+avHTljfSdhdg8Kp
 8cBv5Oa2bWoQ5r39xb9zUgXgTj+varOFsJnXUOzjsO3qJMeOR4KRiLztnhtXNoNpmEjy
 cG/DWGCGKLZEd4kfSeFySDPj9xM02jpvkQKOGSkXJ0bOO8ogAGhP7sl2JADKGcfLQHqL
 pM0w==
X-Gm-Message-State: AOJu0YxteyApI2/4NTiAh4hVxO3K1yxR53MS6a0jyE3B7NEsgSRIMuu0
 RAMMv7mInl38kXrF8pzPWa3DtcAkBtG/I72nhMA=
X-Google-Smtp-Source: AGHT+IEVhPnJJ1aOyZZvjxmaX8mXZyaFoAUnBiOn+DFshMgaCIYrNc5b7ECLC/u+EzTOHDW35nzx2CD/eWWS0QrN45s=
X-Received: by 2002:a1f:4f86:0:b0:49a:9146:ec02 with SMTP id
 d128-20020a1f4f86000000b0049a9146ec02mr9388884vkb.1.1696669327643; Sat, 07
 Oct 2023 02:02:07 -0700 (PDT)
MIME-Version: 1.0
References: <20231006224726.443836-1-ahmed.zaki@intel.com>
 <20231006224726.443836-2-ahmed.zaki@intel.com>
 <20231006172248.15c2e415@kernel.org>
In-Reply-To: <20231006172248.15c2e415@kernel.org>
From: Willem de Bruijn <willemdebruijn.kernel@gmail.com>
Date: Sat, 7 Oct 2023 04:01:30 -0500
Message-ID: <CAF=yD-Kp8-iQtDM3+mgfJ6Ba0vkAeb09VZBa_k6RUequEyjd0w@mail.gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696669327; x=1697274127; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=w9yumCYBwE15BAN27v3FA9ycLvlMlIx617zkJsKB3ec=;
 b=UYp6AKuz3q6ZCGAoyLT3p9bPfznlpCFqxISOz1X7ufoxHb5UF2zNbZTOHI0kwwvTF6
 R988qAu4wl3PsSp1oUkrbhibTXhFJE98guGodmRk/5ju3v5wVkxznkF76AMyyLnQuCsw
 vjy6p2RyPra4bUPiL+lqG+iC3gOqXJ/MosQinUFNN+DMzGCrE7/Agkm/Oq7q/ModFDd+
 SSgtJSAK72QAK4ny/rBqy2fb1kRLnJssltZleGHloDhHiWtBWmlT+Ee4R8y3togBbISm
 DV+KxYFg7JIIAXWOw7XoOm+aDyL4qu3BEs0Wy7h2hVO5XysC2zwowfk2Bd8A+zeDeLH9
 dT6w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=UYp6AKuz
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 1/6] net: ethtool: allow
 symmetric RSS hash for any flow type
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
Cc: mkubecek@suse.cz, andrew@lunn.ch,
 Wojciech Drewek <wojciech.drewek@intel.com>, corbet@lwn.net,
 netdev@vger.kernel.org, linux-doc@vger.kernel.org, jesse.brandeburg@intel.com,
 Ahmed Zaki <ahmed.zaki@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org, vladimir.oltean@nxp.com,
 anthony.l.nguyen@intel.com, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gRnJpLCBPY3QgNiwgMjAyMyBhdCA3OjIy4oCvUE0gSmFrdWIgS2ljaW5za2kgPGt1YmFAa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksICA2IE9jdCAyMDIzIDE2OjQ3OjIxIC0wNjAwIEFo
bWVkIFpha2kgd3JvdGU6Cj4gPiBTeW1tZXRyaWMgUlNTIGhhc2ggZnVuY3Rpb25zIGFyZSBiZW5l
ZmljaWFsIGluIGFwcGxpY2F0aW9ucyB0aGF0IG1vbml0b3IKPiA+IGJvdGggVHggYW5kIFJ4IHBh
Y2tldHMgb2YgdGhlIHNhbWUgZmxvdyAoSURTLCBzb2Z0d2FyZSBmaXJld2FsbHMsIC4uZXRjKS4K
PiA+IEdldHRpbmcgYWxsIHRyYWZmaWMgb2YgdGhlIHNhbWUgZmxvdyBvbiB0aGUgc2FtZSBSWCBx
dWV1ZSByZXN1bHRzIGluCj4gPiBoaWdoZXIgQ1BVIGNhY2hlIGVmZmljaWVuY3kuCj4gPgo+ID4g
T25seSBmaWVsZHMgdGhhdCBoYXMgY291bnRlcnBhcnRzIGluIHRoZSBvdGhlciBkaXJlY3Rpb24g
Y2FuIGJlCj4gPiBhY2NlcHRlZDsgSVAgc3JjL2RzdCBhbmQgTDQgc3JjL2RzdCBwb3J0cy4KPiA+
Cj4gPiBUaGUgdXNlciBtYXkgcmVxdWVzdCBSU1MgaGFzaCBzeW1tZXRyeSBmb3IgYSBzcGVjaWZp
YyBmbG93IHR5cGUsIHZpYToKPiA+Cj4gPiAgICAgIyBldGh0b29sIC1OfC1VIGV0aDAgcngtZmxv
dy1oYXNoIDxmbG93X3R5cGU+IHN8ZHxmfG4gc3ltbWV0cmljCj4gPgo+ID4gb3IgdHVybiBzeW1t
ZXRyeSBvZmYgKGFzeW1tZXRyaWMpIGJ5Ogo+ID4KPiA+ICAgICAjIGV0aHRvb2wgLU58LVUgZXRo
MCByeC1mbG93LWhhc2ggPGZsb3dfdHlwZT4gc3xkfGZ8bgo+Cj4gVGhhbmtzIGZvciB0aGUgY2hh
bmdlcywgY29kZSBsb29rcyBnb29kIQo+Cj4gVGhlIHF1ZXN0aW9uIGxlZnQgdW5hbnN3ZXJlZCBp
cyB3aGV0aGVyIHdlIHNob3VsZCBjYXJlIGFib3V0IHRoZSBleGFjdAo+IGltcGxlbWVudGF0aW9u
IG9mIHRoZSBzeW1tZXRyeSAoeG9yLCB4b3IgZHVwbGljYXRlLCBzb3J0IGZpZWxkcykuCj4gVG9l
cGxpdHotYmFzZWQgUlNTIGlzIHZlcnkgcHJlY2lzZWx5IHNwZWNpZmllZCwgc28gd2UgbWF5IHdh
bnQgdG8gY2FycnkKPiB0aGF0IHByZWNpc2lvbiBpbnRvIHRoZSBzeW1tZXRyaWMgYmVoYXZpb3Iu
IEkgaGF2ZSBhIHdlYWsgcHJlZmVyZW5jZQo+IHRvIGRvIHNvLi4uIGJ1dCBubyB3aWxsaW5nbmVz
cyB0byBhcmd1ZSB3aXRoIHlvdSwgc28gbGV0IG1lIHB1dCBXaWxsZW0KPiBvbiB0aGUgc3BvdCBh
bmQgaGF2ZSBoaW0gbWFrZSBhIGRlY2lzaW9uIDopCgpJIGRvIGhhdmUgYSBzdHJvbmdlciB3aWxs
aW5nbmVzcyB0byBhcmd1ZSwgdGhhbmtzIDstKQoKQ2FuIHdlIGdpdmUgYSBtb3JlIHByZWNpc2Ug
bmFtZSwgc3VjaCBhcyBzeW1tZXRyaWMteG9yPyBJbiBjYXNlCmFub3RoZXIgZGV2aWNlIHdvdWxk
IGltcGxlbWVudCBhbm90aGVyIG1vZGUsIHN1Y2ggYXMgdGhlIHN5bW1ldHJpYwp0b2VwbGl0eiBv
ZiBfX2Zsb3dfaGFzaF9jb25zaXN0ZW50aWZ5LCBpdCB3b3VsZCBiZSBnb29kIHRvIGJlIGFibGUg
dG8KZGlzY2VybiB0aGUgbW9kZXMuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
