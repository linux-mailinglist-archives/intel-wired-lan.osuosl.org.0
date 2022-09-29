Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B155EF119
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Sep 2022 11:01:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4D08883F45;
	Thu, 29 Sep 2022 09:01:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4D08883F45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1664442062;
	bh=GPy8zZpxHBk1qgsu6fMJnnvl9Hk3ujBFaEoA7AJGIpo=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=CE2evWw3fBAJI6RNabHWaV/hB7UGfOqz+uOKfzXF9spcfxdVH0t22lw7OgbqQxP7E
	 qVIb2PgGsHlGbPyrsrMKNVWwMyWkEoo4+laWZISNUh9Yes4tOxWWkXrHDWQzF+6qK/
	 CkAf3LwhpbmoNDxwVzRP0cogKAa4hUxtBH9s1orhJ70jIX652wXi6nuGmU70uuJCr6
	 ZGKBIe33RMEoRBJMmxqsmFReOoZPo1Ts8vxyqO89v4HkY9drhTDRY5/48VVbDSZ2CF
	 /YD+9yljqnxQt9mVmxHj+qTUS5EEIWk+aLxafq0y7Dmu0pORogJsoIGskAst/jIqqm
	 0l8g0evQqrLuQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ygPx0LdcrLhD; Thu, 29 Sep 2022 09:01:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2F0783F3F;
	Thu, 29 Sep 2022 09:01:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2F0783F3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 776AA1BF2FA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 09:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 51DD883F47
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 09:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51DD883F47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0hmpwWHq_KuL for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Sep 2022 09:00:53 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A347883F3F
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
 [209.85.217.46])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A347883F3F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 09:00:53 +0000 (UTC)
Received: by mail-vs1-f46.google.com with SMTP id h1so800730vsr.11
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 02:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=Ir+IzupNAXvXvPBkZ1yh/qacu5xVXDJ2KC3L3ZMV+D4=;
 b=MKWcyu5cAJsvjgsjodXCWPPWuGoNJ+7Hg+f2axUpNK5mVVgk/uHgILt7N/gse3+W/9
 q2asJ/IzGd+znh1gukKl8K3yRi1auAFfOjsnFF5vXB0TZq3XRZm+/3y+kpWcn0AKQEES
 SXrMvnJ+P0D45i3JnFQlaZew6GNO4X+mPnjWFCJzygQz+uCcngLPbjCXlSpAHrrhidgc
 tT4of4nyGy3j4ffsysbFOytYM/qj8jD+7BEoadtNI2TLeyVnABZQBlLToaCe7C8Qi/Fz
 mHZwNaxAhz4jK0Z8pqJgFyKWgASYkAdPmRSQMEoZLVVZnaZ1yxlBpBEUiAnnVeoOc925
 Gksg==
X-Gm-Message-State: ACrzQf0m/3X28ABiCSKZPMQW2JctoNTYuqJ34SgE8w2oZkpbcvZouXWg
 R6107vj3lOloqlQwGFjJYU/oSIGd3C7djg==
X-Google-Smtp-Source: AMsMyM7X0Xkvf074rcVvem9q2HHHIoFaegq9hTxFx8z5L+SN94d+q4nzA1aBOnG9q5nOEOh/kYO9Jw==
X-Received: by 2002:a67:ae01:0:b0:398:7123:cc03 with SMTP id
 x1-20020a67ae01000000b003987123cc03mr680527vse.51.1664442052286; 
 Thu, 29 Sep 2022 02:00:52 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47]) by smtp.gmail.com with ESMTPSA id
 s136-20020a1f2c8e000000b0039459f3a585sm1366955vks.42.2022.09.29.02.00.51
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 29 Sep 2022 02:00:52 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a14so249053uat.13
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Sep 2022 02:00:51 -0700 (PDT)
X-Received: by 2002:a5b:104:0:b0:6b0:429:3fe9 with SMTP id
 4-20020a5b0104000000b006b004293fe9mr2016091ybx.543.1664442041163; 
 Thu, 29 Sep 2022 02:00:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220923202822.2667581-1-keescook@chromium.org>
 <20220923202822.2667581-2-keescook@chromium.org>
 <CAMuHMdXK+UN1YVZm9DenuXAM8hZRUZJwp=SXsueP7sWiVU3a9A@mail.gmail.com>
 <202209281011.66DD717D@keescook> <874jwqfuh6.fsf@mpe.ellerman.id.au>
In-Reply-To: <874jwqfuh6.fsf@mpe.ellerman.id.au>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 29 Sep 2022 11:00:28 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVOvs4adSV7G6ucZ8dcr+RxfZOOK=jXeO2tEAaXkv80Xg@mail.gmail.com>
Message-ID: <CAMuHMdVOvs4adSV7G6ucZ8dcr+RxfZOOK=jXeO2tEAaXkv80Xg@mail.gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [Intel-wired-lan] [PATCH v2 01/16] slab: Remove __malloc
 attribute from realloc functions
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
Cc: Roman Gushchin <roman.gushchin@linux.dev>, dri-devel@lists.freedesktop.org,
 "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 Eric Dumazet <edumazet@google.com>, linux-hardening@vger.kernel.org,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, dev@openvswitch.org, x86@kernel.org,
 intel-wired-lan@lists.osuosl.org, David Rientjes <rientjes@google.com>,
 Miguel Ojeda <ojeda@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-media@vger.kernel.org,
 Marco Elver <elver@google.com>, llvm@lists.linux.dev,
 Kees Cook <keescook@chromium.org>, Josef Bacik <josef@toxicpanda.com>,
 linaro-mm-sig@lists.linaro.org, Yonghong Song <yhs@fb.com>,
 David Sterba <dsterba@suse.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Vlastimil Babka <vbabka@suse.cz>, Alex Elder <elder@kernel.org>,
 linux-mm@kvack.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pekka Enberg <penberg@kernel.org>, Daniel Micay <danielmicay@gmail.com>,
 netdev@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

SGkgTWljaGFlbCwKCk9uIFRodSwgU2VwIDI5LCAyMDIyIGF0IDEwOjM2IEFNIE1pY2hhZWwgRWxs
ZXJtYW4gPG1wZUBlbGxlcm1hbi5pZC5hdT4gd3JvdGU6Cj4gS2VlcyBDb29rIDxrZWVzY29va0Bj
aHJvbWl1bS5vcmc+IHdyaXRlczoKPiA+IE9uIFdlZCwgU2VwIDI4LCAyMDIyIGF0IDA5OjI2OjE1
QU0gKzAyMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+PiBPbiBGcmksIFNlcCAyMywg
MjAyMiBhdCAxMDozNSBQTSBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4gd3JvdGU6
Cj4gPj4gPiBUaGUgX19tYWxsb2MgYXR0cmlidXRlIHNob3VsZCBub3QgYmUgYXBwbGllZCB0byAi
cmVhbGxvYyIgZnVuY3Rpb25zLCBhcwo+ID4+ID4gdGhlIHJldHVybmVkIHBvaW50ZXIgbWF5IGFs
aWFzIHRoZSBzdG9yYWdlIG9mIHRoZSBwcmlvciBwb2ludGVyLiBJbnN0ZWFkCj4gPj4gPiBvZiBz
cGxpdHRpbmcgX19tYWxsb2MgZnJvbSBfX2FsbG9jX3NpemUsIHdoaWNoIHdvdWxkIGJlIGEgaHVn
ZSBhbW91bnQgb2YKPiA+PiA+IGNodXJuLCBqdXN0IGNyZWF0ZSBfX3JlYWxsb2Nfc2l6ZSBmb3Ig
dGhlIGZldyBjYXNlcyB3aGVyZSBpdCBpcyBuZWVkZWQuCj4gPj4gPgo+ID4+ID4gQWRkaXRpb25h
bGx5IHJlbW92ZXMgdGhlIGNvbmRpdGlvbmFsIHRlc3QgZm9yIF9fYWxsb2Nfc2l6ZV9fLCB3aGlj
aCBpcwo+ID4+ID4gYWx3YXlzIGRlZmluZWQgbm93Lgo+ID4+ID4KPiA+PiA+IENjOiBDaHJpc3Rv
cGggTGFtZXRlciA8Y2xAbGludXguY29tPgo+ID4+ID4gQ2M6IFBla2thIEVuYmVyZyA8cGVuYmVy
Z0BrZXJuZWwub3JnPgo+ID4+ID4gQ2M6IERhdmlkIFJpZW50amVzIDxyaWVudGplc0Bnb29nbGUu
Y29tPgo+ID4+ID4gQ2M6IEpvb25zb28gS2ltIDxpYW1qb29uc29vLmtpbUBsZ2UuY29tPgo+ID4+
ID4gQ2M6IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgtZm91bmRhdGlvbi5vcmc+Cj4gPj4gPiBD
YzogVmxhc3RpbWlsIEJhYmthIDx2YmFia2FAc3VzZS5jej4KPiA+PiA+IENjOiBSb21hbiBHdXNo
Y2hpbiA8cm9tYW4uZ3VzaGNoaW5AbGludXguZGV2Pgo+ID4+ID4gQ2M6IEh5ZW9uZ2dvbiBZb28g
PDQyLmh5ZXlvb0BnbWFpbC5jb20+Cj4gPj4gPiBDYzogTWFyY28gRWx2ZXIgPGVsdmVyQGdvb2ds
ZS5jb20+Cj4gPj4gPiBDYzogbGludXgtbW1Aa3ZhY2sub3JnCj4gPj4gPiBTaWduZWQtb2ZmLWJ5
OiBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4KPiA+Pgo+ID4+IFRoYW5rcyBmb3Ig
eW91ciBwYXRjaCwgd2hpY2ggaXMgbm93IGNvbW1pdCA2M2NhYTA0ZWM2MDU4M2IxICgic2xhYjoK
PiA+PiBSZW1vdmUgX19tYWxsb2MgYXR0cmlidXRlIGZyb20gcmVhbGxvYyBmdW5jdGlvbnMiKSBp
biBuZXh0LTIwMjIwOTI3Lgo+ID4+Cj4gPj4gTm9yZXBseUBlbGxlcm1hbi5pZC5hdSByZXBvcnRl
ZCBhbGwgZ2NjOC1iYXNlZCBidWlsZHMgdG8gZmFpbAo+ID4+IChlLmcuIFsxXSwgbW9yZSBhdCBb
Ml0pOgo+ID4+Cj4gPj4gICAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSA8Y29tbWFuZC1saW5lPjoK
PiA+PiAgICAgLi9pbmNsdWRlL2xpbnV4L3BlcmNwdS5oOiBJbiBmdW5jdGlvbiDigJhfX2FsbG9j
X3Jlc2VydmVkX3BlcmNwdeKAmToKPiA+PiAgICAgLi8uL2luY2x1ZGUvbGludXgvY29tcGlsZXJf
dHlwZXMuaDoyNzk6MzA6IGVycm9yOiBleHBlY3RlZAo+ID4+IGRlY2xhcmF0aW9uIHNwZWNpZmll
cnMgYmVmb3JlIOKAmF9fYWxsb2Nfc2l6ZV9f4oCZCj4gPj4gICAgICAjZGVmaW5lIF9fYWxsb2Nf
c2l6ZSh4LCAuLi4pIF9fYWxsb2Nfc2l6ZV9fKHgsICMjIF9fVkFfQVJHU19fKSBfX21hbGxvYwo+
ID4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fgo+ID4+
ICAgICAuL2luY2x1ZGUvbGludXgvcGVyY3B1Lmg6MTIwOjc0OiBub3RlOiBpbiBleHBhbnNpb24g
b2YgbWFjcm8g4oCYX19hbGxvY19zaXpl4oCZCj4gPj4gICAgIFsuLi5dCj4gPj4KPiA+PiBJdCdz
IGJ1aWxkaW5nIGZpbmUgd2l0aCBlLmcuIGdjYy05ICh3aGljaCBpcyBteSB1c3VhbCBtNjhrIGNy
b3NzLWNvbXBpbGVyKS4KPiA+PiBSZXZlcnRpbmcgdGhpcyBjb21taXQgb24gbmV4dC0yMDIyMDky
NyBmaXhlcyB0aGUgaXNzdWUuCj4gPj4KPiA+PiBbMV0gaHR0cDovL2tpc3NrYi5lbGxlcm1hbi5p
ZC5hdS9raXNza2IvYnVpbGRyZXN1bHQvMTQ4MDM5MDgvCj4gPj4gWzJdIGh0dHA6Ly9raXNza2Iu
ZWxsZXJtYW4uaWQuYXUva2lzc2tiL2hlYWQvMWJkOGI3NWZlNmFkZWFhODlkMDI5NjhiZGQ4MTFm
ZmU3MDhjZjgzOS8KPiA+Cj4gPiBFZWshIFRoYW5rcyBmb3IgbGV0dGluZyBtZSBrbm93LiBJJ20g
Y29uZnVzZWQgYWJvdXQgdGhpcyAtLQo+ID4gX19hbGxvY19zaXplX18gd2Fzbid0IG9wdGlvbmFs
IGluIGNvbXBpbGVyX2F0dHJpYnV0ZXMuaCAtLSBidXQgb2J2aW91c2x5Cj4gPiBJIGJyb2tlIHNv
bWV0aGluZyEgSSdsbCBnbyBmaWd1cmUgdGhpcyBvdXQuCj4KPiBUaGlzIGZpeGVzIGl0IGZvciBt
ZS4KCktlZXMgc3VibWl0dGVkIGEgc2ltaWxhciBwYXRjaCAyMCBtaW51dGVzIGJlZm9yZToKaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjIwOTI5MDgxNjQyLjE5MzIyMDAtMS1rZWVzY29v
a0BjaHJvbWl1bS5vcmcKCj4gLS0tIGEvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCj4g
KysrIGIvaW5jbHVkZS9saW51eC9jb21waWxlcl90eXBlcy5oCj4gQEAgLTI3NSw4ICsyNzUsMTMg
QEAgc3RydWN0IGZ0cmFjZV9saWtlbHlfZGF0YSB7Cj4gICAqIGJlIHBlcmZvcm1pbmcgYSBfcmVh
bGxvY2F0aW9uXywgYXMgdGhhdCBtYXkgYWxpYXMgdGhlIGV4aXN0aW5nIHBvaW50ZXIuCj4gICAq
IEZvciB0aGVzZSwgdXNlIF9fcmVhbGxvY19zaXplKCkuCj4gICAqLwo+IC0jZGVmaW5lIF9fYWxs
b2Nfc2l6ZSh4LCAuLi4pICAgX19hbGxvY19zaXplX18oeCwgIyMgX19WQV9BUkdTX18pIF9fbWFs
bG9jCj4gLSNkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSBfX2FsbG9jX3NpemVfXyh4LCAj
IyBfX1ZBX0FSR1NfXykKPiArI2lmZGVmIF9fYWxsb2Nfc2l6ZV9fCj4gKyMgZGVmaW5lIF9fYWxs
b2Nfc2l6ZSh4LCAuLi4pICBfX2FsbG9jX3NpemVfXyh4LCAjIyBfX1ZBX0FSR1NfXykgX19tYWxs
b2MKPiArIyBkZWZpbmUgX19yZWFsbG9jX3NpemUoeCwgLi4uKSAgICAgICAgX19hbGxvY19zaXpl
X18oeCwgIyMgX19WQV9BUkdTX18pCj4gKyNlbHNlCj4gKyMgZGVmaW5lIF9fYWxsb2Nfc2l6ZSh4
LCAuLi4pICBfX21hbGxvYwo+ICsjIGRlZmluZSBfX3JlYWxsb2Nfc2l6ZSh4LCAuLi4pCj4gKyNl
bmRpZgo+Cj4gICNpZm5kZWYgYXNtX3ZvbGF0aWxlX2dvdG8KPiAgI2RlZmluZSBhc21fdm9sYXRp
bGVfZ290byh4Li4uKSBhc20gZ290byh4KQoKCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAg
ICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxv
dHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNv
bmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEg
aGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJw
cm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2ly
ZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtd2lyZWQtbGFuCg==
