Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EF787247F9
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Jun 2023 17:39:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2A0B56126F;
	Tue,  6 Jun 2023 15:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2A0B56126F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686065992;
	bh=uK6SFJMDitpM5XhwB9eo7UeNuthdeXc12SDq2cdRc3g=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=eWwSKzY2gbMx5XyLQuqDnsDg9+vIp3XdJ+Lu/FQsybRAYCa9fKDUp6UqQu+1Sx3Uk
	 7AJhbOxCt/Fy4feWiE8rAi1x4YHcvlI0eqyUKJzK7aPK4sK/1c6+d0cwbZgL4XC7aW
	 rggzO9t4OihzAxKqPnNcnO5qEPZLjMqUbmRT9F2G787yFKoBWUDCa9rQ8RU3JfUT68
	 lNrYe5IqsNFaMmxkVFzvOHI/85G1ren+hITEdTcfIRquxa7s8uAMVarAhpqYcAjl0t
	 4/tMM734RP/LR5OSD/0vlpAOx3yO2GYmplwhcsOrP9l19/yqtwivCCSCTzzw4Jgfdb
	 f1bJ3ot9heGvQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3SPvB_7hcqiZ; Tue,  6 Jun 2023 15:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D849C61241;
	Tue,  6 Jun 2023 15:39:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D849C61241
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3A58D1BF36B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:39:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 120B461241
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:39:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 120B461241
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 08rTcKLFUxpj for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Jun 2023 15:39:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A6FEC60E84
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com
 [IPv6:2607:f8b0:4864:20::112f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A6FEC60E84
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Jun 2023 15:39:44 +0000 (UTC)
Received: by mail-yw1-x112f.google.com with SMTP id
 00721157ae682-5664b14966bso76015657b3.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 06 Jun 2023 08:39:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686065983; x=1688657983;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=elTBqfUhPXSPyDwW3mi+yRAT2Okd4Dn54wk2+xqX2uE=;
 b=I3TQzwF1nLUyDgYV4rOg7UH8yzTnhmcf/OjyCDrH8xamYu0TH1/8Vp0mb2eW3ogFXM
 lnY/VC+//reLfGiQ8Qi0avsdBZZXfbvmDaYSOyquWiie3zYRhNUuuoEqCUQp0tVQorek
 mgW7PwOLqBT5c6CqxHDZRimKwFN1FPQSddEQuQA1uElbMdxlGTOoacLe/B8lsCjerAVR
 ZSdOVUL2BIqnEqZ2i7fPrbzNp8bptqNAmVPTUjnZ7kNPb1lpzcC1BfGqIWWS2GYpz8HI
 08Lyh/CgzBx28+guLQEByHKjsdIjJ7taVpxDjEaYeoPbDgphHksZ4S0AEvqF3AJkx7M8
 DA/g==
X-Gm-Message-State: AC+VfDwDJgDvVbCtBHZbGrkXZ0Hu5k5Qd4DeDhqGoEjjdT7xwWAUcmt/
 sVxvB6zyw2Sf+2U6S8N2FY3Ek0ugSiHHr4kt7VhdfQ==
X-Google-Smtp-Source: ACHHUZ6AbldddbAsOhtAOSD4tHHYX3Z/CCZtQcDWqnC9xbTaFKB8pD7G4yqlPp6lz2sDL0oyfz8R4u+lgk8ScfFX0JE=
X-Received: by 2002:a0d:df93:0:b0:567:2891:a2ec with SMTP id
 i141-20020a0ddf93000000b005672891a2ecmr2323430ywe.22.1686065983484; Tue, 06
 Jun 2023 08:39:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230602103750.2290132-1-vladimir.oltean@nxp.com>
 <CAM0EoMnqscw=OfWzyEKV10qFW5+EFMd5JWZxPSPCod3TvqpnuQ@mail.gmail.com>
 <20230605165353.tnjrwa7gbcp4qhim@skbuf>
In-Reply-To: <20230605165353.tnjrwa7gbcp4qhim@skbuf>
From: Jamal Hadi Salim <jhs@mojatatu.com>
Date: Tue, 6 Jun 2023 11:39:32 -0400
Message-ID: <CAM0EoM=qG9sDjM=F6D=i=h3dKXwQXAt1wui8W_EXDJi2tijRnw@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mojatatu-com.20221208.gappssmtp.com; s=20221208; t=1686065983; x=1688657983; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=elTBqfUhPXSPyDwW3mi+yRAT2Okd4Dn54wk2+xqX2uE=;
 b=rtwZNt1EG2rvaIQ3g0XQOeXafgz9lj2O4EZGXPm8k2SAGvhSVzmpija/Byq7Ikvzyv
 RabBusq0CTYp1R7MXvDA0x0MfddvGSvaHyuBPRomUw4Eg1auAAYHujXW+hJtMPDBwQEg
 +dgYzjo50cwXSBqu+bYfmD1WFBdOY9mouOrrylGfg2z9yWS3AcLG4ed4u5fRB1I//PaY
 AKQTsUu7jCLe/Z5mrAkQO8rrWsh5OmMZHvgUm1BrUPVc/dqp/nWkVaedAHhVhF6BJjeT
 ZfmUk+mWccMp3GQGUHoH+24iU+prN9i/ho5ep5PG5sGrnMwRyk3rH2vpaBdJSpPVNWjS
 QlKA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=mojatatu-com.20221208.gappssmtp.com
 header.i=@mojatatu-com.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=rtwZNt1E
Subject: Re: [Intel-wired-lan] [PATCH RESEND net-next 0/5] Improve the
 taprio qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>, Eric Dumazet <edumazet@google.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgVmxhZGltaXIsCgpPbiBNb24sIEp1biA1LCAyMDIzIGF0IDEyOjUz4oCvUE0gVmxhZGltaXIg
T2x0ZWFuIDx2bGFkaW1pci5vbHRlYW5AbnhwLmNvbT4gd3JvdGU6Cj4KPiBIaSBKYW1hbCwKPgo+
IE9uIE1vbiwgSnVuIDA1LCAyMDIzIGF0IDExOjQ0OjE3QU0gLTA0MDAsIEphbWFsIEhhZGkgU2Fs
aW0gd3JvdGU6Cj4gPiBJIGhhdmVudCBiZWVuIGZvbGxvd2luZyAtIGJ1dCBpZiB5b3Ugc2hvdyBt
ZSBzYW1wbGUgaW50ZW5kZWQgdGMKPiA+IGNvbmZpZ3MgZm9yIGJvdGggcy93IGFuZCBoYXJkd2Fy
ZSBvZmZsb2FkcyBpIGNhbiBjb21tZW50Lgo+Cj4gVGhlcmUgaXMgbm90IG11Y2ggZGlmZmVyZW5j
ZSBpbiB1c2FnZSBiZXR3ZWVuIHRoZSAyIG1vZGVzLiBJTU8gdGhlIHNvZnR3YXJlCj4gZGF0YSBw
YXRoIGxvZ2ljIGlzIG9ubHkgYSBzaW11bGF0aW9uIGZvciBkZW1vbnN0cmF0aXZlIHB1cnBvc2Vz
IG9mIHdoYXQgdGhlCj4gc2hhcGVyIGlzIGludGVuZGVkIHRvIGRvLiBJZiBoYXJkd2FyZSBvZmZs
b2FkIGlzIGF2YWlsYWJsZSwgaXQgaXMgYWx3YXlzCj4gcHJlZmVyYWJsZS4gT3RoZXJ3aXNlLCBJ
J20gbm90IHN1cmUgaWYgYW55b25lIHVzZXMgdGhlIHB1cmUgc29mdHdhcmUKPiBzY2hlZHVsaW5n
IG1vZGUgKGFsc28gd2l0aG91dCB0eHRpbWUgYXNzaXN0KSBmb3IgYSByZWFsIGxpZmUgdXNlIGNh
c2UuCj4KClRoYW5rcyBmb3IgdGhlIHNhbXBsZS4gVW5kZXJzdG9vZCBvbiB0aGUgc29mdHdhcmUg
dHdpbiBiZWluZyB1c2VmdWwKZm9yIHNpbXVsYXRpb24gKG91ciBzdGFuZGFyZCBydWxlIGlzIHlv
dSBuZWVkIHRvIGhhdmUgYSBzb2Z0d2FyZSB0d2luKQotIGl0IGlzIGdyZWF0IHlvdSBjb25mb3Jt
IHRvIHRoYXQuCgpJIHRvb2sgYSBjdXJzb3J5IGdsYW5jZSBhdCB0aGUgZXhpc3Rpbmcga2VybmVs
IGNvZGUgaW4gb3JkZXIgdG8gZ2V0CmJldHRlciBjb250ZXh0IChJIHdpbGwgbWFrZSBtb3JlIHRp
bWUgbGF0ZXIpLiBFc3NlbnRpYWxseSB0aGlzIHFkaXNjCmlzIGNsYXNzZnVsIGFuZCBpcyBjYXBh
YmxlIG9mIGhhcmR3YXJlIG9mZmxvYWQuIEluaXRpYWwgY29tbWVudHMgYXJlCnVucmVsYXRlZCB0
byB0aGUgcGF0Y2hzZXQgKGFsbCB0aGlzIEtsaW5nb24gRENCIHRoaW5neSBjb25maWd1cmF0aW9u
Cmxpa2UgYSBmbGFnIDB4MiBpcyBzdGlsbCBtYWdpYyB0byBtZSkuCgoxKUp1c3Qgc29tZSBkZXRh
aWxzIGJlY29tZSBjb25mdXNpbmcgaW4gcmVnYXJkcyB0byBvZmZsb2FkIHZzIG5vdDsgRi5lCmNs
YXNzIGdyYWZ0aW5nICh0YXByaW9fZ3JhZnQoKSkgaXMgZGUvYWN0aXZhdGluZyB0aGUgZGV2aWNl
IGJ1dCB0aGF0CnNlZW1zIG9ubHkgbmVlZGVkIGZvciBvZmZsb2FkLiBXb3VsZCBpdCBub3QgYmUg
YmV0dGVyIHRvIGhhdmUgdGhvc2UKc2VwYXJhdGUgYW5kIGNhbGwgZ3JhZnRfb2ZmbG9hZCB2cyBn
cmFmdF9zb2Z0d2FyZSwgZXRjPyBXZSByZWFsbHkgbmVlZAp0byBjcmVhdGUgYSBnZW5lcmljIGRv
Y3VtZW50IG9uIGhvdyBzb21lb25lIHdvdWxkIHdyaXRlIGNvZGUgZm9yCnFkaXNjcyBmb3IgY29u
c2lzdGVuY3kgKEkgc3RhcnRlZCB3b3JraW5nIG9uIG9uZSBidXQgbmV2ZXIgY29tcGxldGVkCml0
IC0gaWYgdGhlcmUgaXMgYSB2b2x1bnRlZXIgaSB3b3VsZCBiZSBoYXBweSB0byB3b3JrIHdpdGgg
b25lIHRvCmNvbXBsZXRlIGl0KS4KMikgSXQgc2VlbXMgbGlrZSBpbiBtcXByaW8gdGhpcyBxZGlz
YyBjYW4gb25seSBiZSByb290IHFkaXNjIChsaWtlCm1xcHJpbykgYW5kIHlvdSBkb250IHdhbnQg
dG8gcmVwbGFjZSB0aGUgY2hpbGRyZW4gd2l0aCBvdGhlciB0eXBlcyBvZgpxZGlzY3MgaS5lIHRo
ZSBjaGlsZHJlbiBhcmUgYWx3YXlzIHBmaWZvPyBpLmUgaXMgaXQgcG9zc2libGUgb3IKaW50ZW5k
ZWQgZm9yIGV4YW1wbGUgdG8gcmVwbGFjZSA4MDAxOnggd2l0aCBiZmlmbyBldGM/IG9yIGV2ZW4g
Y2hhbmdlCnRoZSBwZmlmbyBxdWV1ZSBzaXplLCBldGM/CjMpIE9mZmxvYWQgaW50ZW50aW9uIHNl
ZW1zIHJlYWxseSB0byBiZSBieXBhc3NpbmcgZW5xdWV1ZSgpIGFuZCBnb2luZwpzdHJhaWd0aCB0
byB0aGUgZHJpdmVyIHhtaXQoKSBmb3IgYSBzcGVjaWZpYyBETUEgcmluZyB0aGF0IHRoZSBza2Ig
aXMKbWFwcGVkIHRvLiBFeGNlcHQgZm9yIHRoZSBjYXNlIHdoZXJlIHRoZSBkcml2ZXIgc2F5cyBp
dCdzIGJ1c3kgYW5kCnJlZnVzZXMgdG8gc3Rhc2ggdGhlIHNrYiBpbiByaW5nIGluIHdoaWNoIGNh
c2UgeW91IGhhdmUgdG8gcmVxdWV1ZSB0bwp0aGUgYXBwcm9wcmlhdGUgY2hpbGQgcWRpc2MvY2xh
c3MuIEkgYW0gbm90IHN1cmUgaG93IHRoYXQgd291bGQgd29yawpoZXJlIC0gbXFwcmlvIGdldHMg
YXdheSB3aXRoIGl0IGJ5IG5vdCBkZWZpbmluZyBhbnkgb2YgdGhlCmVuL2RlL3JlcXVldWUoKSBj
YWxsYmFja3MgLSBidXQgbGlrZWx5IGl0IHdpbGwgYmUgdGhlIGxhY2sgb2YgcmVxdWV1ZQp0aGF0
IG1ha2VzIGl0IHdvcmsuCgogSSB3aWxsIHJlYWQgdGhlIG90aGVyIHRocmVhZCB5b3UgcG9pbnRl
ZCB0byB3aGVuIGkgZ2V0IGEgbW9tZW50LgoKY2hlZXJzLApqYW1hbAoKPiBJIHdhcyB3b3JraW5n
IHdpdGggc29tZXRoaW5nIGxpa2UgdGhpcyBmb3IgdGVzdGluZyB0aGUgY29kZSBwYXRocyBhZmZl
Y3RlZAo+IGJ5IHRoZXNlIGNoYW5nZXM6Cj4KPiAjIS9iaW4vYmFzaAo+Cj4gYWRkX3RhcHJpbygp
Cj4gewo+ICAgICAgICAgbG9jYWwgb2ZmbG9hZD0kMQo+ICAgICAgICAgbG9jYWwgZXh0cmFfZmxh
Z3MKPgo+ICAgICAgICAgY2FzZSAkb2ZmbG9hZCBpbgo+ICAgICAgICAgdHJ1ZSkKPiAgICAgICAg
ICAgICAgICAgZXh0cmFfZmxhZ3M9ImZsYWdzIDB4MiIKPiAgICAgICAgICAgICAgICAgOzsKPiAg
ICAgICAgIGZhbHNlKQo+ICAgICAgICAgICAgICAgICBleHRyYV9mbGFncz0iY2xvY2tpZCBDTE9D
S19UQUkiCj4gICAgICAgICAgICAgICAgIDs7Cj4gICAgICAgICBlc2FjCj4KPiAgICAgICAgIHRj
IHFkaXNjIHJlcGxhY2UgZGV2IGVubzAgaGFuZGxlIDgwMDE6IHBhcmVudCByb290IHN0YWIgb3Zl
cmhlYWQgMjQgdGFwcmlvIFwKPiAgICAgICAgICAgICAgICAgbnVtX3RjIDggXAo+ICAgICAgICAg
ICAgICAgICBtYXAgMCAxIDIgMyA0IDUgNiA3IFwKPiAgICAgICAgICAgICAgICAgcXVldWVzIDFA
MCAxQDEgMUAyIDFAMyAxQDQgMUA1IDFANiAxQDcgXAo+ICAgICAgICAgICAgICAgICBtYXgtc2R1
IDAgMCAwIDAgMCAyMDAgMCAwIFwKPiAgICAgICAgICAgICAgICAgYmFzZS10aW1lIDIwMCBcCj4g
ICAgICAgICAgICAgICAgIHNjaGVkLWVudHJ5IFMgODAgMjAwMDAgXAo+ICAgICAgICAgICAgICAg
ICBzY2hlZC1lbnRyeSBTIGEwIDIwMDAwIFwKPiAgICAgICAgICAgICAgICAgc2NoZWQtZW50cnkg
UyA1ZiA2MDAwMCBcCj4gICAgICAgICAgICAgICAgICRleHRyYV9mbGFncwo+IH0KPgo+IGFkZF9j
YnMoKQo+IHsKPiAgICAgICAgIGxvY2FsIG9mZmxvYWQ9JDEKPiAgICAgICAgIGxvY2FsIGV4dHJh
X2ZsYWdzCj4KPiAgICAgICAgIGNhc2UgJG9mZmxvYWQgaW4KPiAgICAgICAgIHRydWUpCj4gICAg
ICAgICAgICAgICAgIGV4dHJhX2ZsYWdzPSJvZmZsb2FkIDEiCj4gICAgICAgICAgICAgICAgIDs7
Cj4gICAgICAgICBmYWxzZSkKPiAgICAgICAgICAgICAgICAgZXh0cmFfZmxhZ3M9IiIKPiAgICAg
ICAgICAgICAgICAgOzsKPiAgICAgICAgIGVzYWMKPgo+ICAgICAgICAgbWF4X2ZyYW1lX3NpemU9
MTUwMAo+ICAgICAgICAgZGF0YV9yYXRlX2ticHM9MjAwMDAKPiAgICAgICAgIHBvcnRfdHJhbnNt
aXRfcmF0ZV9rYnBzPTEwMDAwMDAKPiAgICAgICAgIGlkbGVzbG9wZT0kZGF0YV9yYXRlX2ticHMK
PiAgICAgICAgIHNlbmRzbG9wZT0kKCgkaWRsZXNsb3BlIC0gJHBvcnRfdHJhbnNtaXRfcmF0ZV9r
YnBzKSkKPiAgICAgICAgIGxvY3JlZGl0PSQoKCRtYXhfZnJhbWVfc2l6ZSAqICRzZW5kc2xvcGUg
LyAkcG9ydF90cmFuc21pdF9yYXRlX2ticHMpKQo+ICAgICAgICAgaGljcmVkaXQ9JCgoJG1heF9m
cmFtZV9zaXplICogJGlkbGVzbG9wZSAvICRwb3J0X3RyYW5zbWl0X3JhdGVfa2JwcykpCj4gICAg
ICAgICB0YyBxZGlzYyByZXBsYWNlIGRldiBlbm8wIHBhcmVudCA4MDAxOjggY2JzIFwKPiAgICAg
ICAgICAgICAgICAgaWRsZXNsb3BlICRpZGxlc2xvcGUgXAo+ICAgICAgICAgICAgICAgICBzZW5k
c2xvcGUgJHNlbmRzbG9wZSBcCj4gICAgICAgICAgICAgICAgIGhpY3JlZGl0ICRoaWNyZWRpdCBc
Cj4gICAgICAgICAgICAgICAgIGxvY3JlZGl0ICRsb2NyZWRpdCBcCj4gICAgICAgICAgICAgICAg
ICRleHRyYV9mbGFncwo+IH0KPgo+ICMgdGhpcyBzaG91bGQgYWx3YXlzIGZhaWwKPiBhZGRfc2Vj
b25kX3RhcHJpbygpCj4gewo+ICAgICAgICAgdGMgcWRpc2MgcmVwbGFjZSBkZXYgZW5vMCBwYXJl
bnQgODAwMTo3IHRhcHJpbyBcCj4gICAgICAgICAgICAgICAgIG51bV90YyA4IFwKPiAgICAgICAg
ICAgICAgICAgbWFwIDAgMSAyIDMgNCA1IDYgNyBcCj4gICAgICAgICAgICAgICAgIHF1ZXVlcyAx
QDAgMUAxIDFAMiAxQDMgMUA0IDFANSAxQDYgMUA3IFwKPiAgICAgICAgICAgICAgICAgbWF4LXNk
dSAwIDAgMCAwIDAgMjAwIDAgMCBcCj4gICAgICAgICAgICAgICAgIGJhc2UtdGltZSAyMDAgXAo+
ICAgICAgICAgICAgICAgICBzY2hlZC1lbnRyeSBTIDgwIDIwMDAwIFwKPiAgICAgICAgICAgICAg
ICAgc2NoZWQtZW50cnkgUyBhMCAyMDAwMCBcCj4gICAgICAgICAgICAgICAgIHNjaGVkLWVudHJ5
IFMgNWYgNjAwMDAgXAo+ICAgICAgICAgICAgICAgICBjbG9ja2lkIENMT0NLX1RBSQo+IH0KPgo+
IGlwIGxpbmsgc2V0IGVubzAgdXAKPgo+IGVjaG8gIk9mZmxvYWQ6Igo+IGFkZF90YXByaW8gdHJ1
ZQo+IGFkZF9jYnMgdHJ1ZQo+IGFkZF9zZWNvbmRfdGFwcmlvCj4gbWF1c2V6YWhuIGVubzAgLXQg
aXAgLWIgMDA6MDQ6OWY6MDU6ZjY6MjcgLWMgMTAwIC1wIDYwCj4gc2xlZXAgNQo+IHRjIC1zIGNs
YXNzIHNob3cgZGV2IGVubzAKPiB0YyBxZGlzYyBkZWwgZGV2IGVubzAgcm9vdAo+Cj4gZWNobyAi
U29mdHdhcmU6Igo+IGFkZF90YXByaW8gZmFsc2UKPiBhZGRfY2JzIGZhbHNlCj4gYWRkX3NlY29u
ZF90YXByaW8KPiBtYXVzZXphaG4gZW5vMCAtdCBpcCAtYiAwMDowNDo5ZjowNTpmNjoyNyAtYyAx
MDAgLXAgNjAKPiBzbGVlcCA1Cj4gdGMgLXMgY2xhc3Mgc2hvdyBkZXYgZW5vMAo+IHRjIHFkaXNj
IGRlbCBkZXYgZW5vMCByb290Cj4KPiA+IEluIG15IGN1cnNvcnkgbG9vayBpIGFzc3VtZWQgeW91
IHdhbnRlZCB0byBnbyBhbG9uZyB0aGUgcGF0aCBvZiBtcXByaW8KPiA+IHdoZXJlIG5vdGhpbmcg
bXVjaCBoYXBwZW5zIGluIHRoZSBzL3cgZGF0YXBhdGggb3RoZXIgdGhhbiByZXF1ZXVlcwo+ID4g
d2hlbiB0aGUgdHggaGFyZHdhcmUgcGF0aCBpcyBidXN5IChub3RpY2UgaXQgaXMgbWlzc2luZyBh
bgo+ID4gZW5xdWV1ZS9kZXF1ZSBvcHMpLiBJbiB0aGF0IGNhc2UgdGhlIGhhcmR3YXJlIHNlbGVj
dGlvbiBpcyBlc3NlbnRpYWxseQo+ID4gb2YgYSBETUEgcmluZyBiYXNlZCBvbiBza2IgdGFncy4g
SXQgc2VlbXMgeW91IHRvb2sgaXQgdXAgYSBub3RjaCBieQo+ID4gaW5mYWN0IGhhdmluZyBhIGNo
b2ljZSBvZiB3aGV0aGVyIHRvIGhhdmUgcHVyZSBzL3cgb3Igb2ZmbG9hZCBwYXRoLgo+Cj4gWWVz
LiBBY3R1YWxseSB0aGUgb3JpZ2luYWwgdGFwcmlvIGRlc2lnbiBhbHdheXMgaGFkIHRoZSBlbnF1
ZXVlKCkvZGVxdWV1ZSgpCj4gb3BzIGludm9sdmVkIGluIHRoZSBkYXRhIHBhdGgsIHRoZW4gY29t
bWl0IDEzNTExNzA0ZjhkNyAoIm5ldDogdGFwcmlvCj4gb2ZmbG9hZDogZW5mb3JjZSBxZGlzYyB0
byBuZXRkZXYgcXVldWUgbWFwcGluZyIpIHJldHJvZml0dGVkIHRoZSBtcXByaW8KPiBtb2RlbCB3
aGVuIHVzaW5nIHRoZSAiZmxhZ3MgMHgyIiBhcmd1bWVudC4KCgo+IElmIHlvdSBoYXZlIHRpbWUg
dG8gcmVhZCwgdGhlIGRpc2N1c3Npb24gYmVoaW5kIHRoYXQgcmVkZXNpZ24gd2FzIGhlcmU6Cj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbmV0ZGV2LzIwMjEwNTExMTcxODI5LjE3MTgxLTEteWFu
bmljay52aWdub25Ab3NzLm54cC5jb20vCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQt
bGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtd2lyZWQtbGFuCg==
