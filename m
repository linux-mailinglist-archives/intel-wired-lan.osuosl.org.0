Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 303F0670B85
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Jan 2023 23:16:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F3DC81DE5;
	Tue, 17 Jan 2023 22:15:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8F3DC81DE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673993759;
	bh=rpxVlB6VP95PYrm5iuZ4aCsOTQ4uzV2d9Zc4k3EyLQY=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T3MXZjTTSBLOxk+jeqK1EcB6k7MeBi2/K1DVTGYu2GuOi+xNFyVVo3P7HpkaELzak
	 3dzsKWrEuPebjX2xPbYsaNmrdhs60yvWjh89crlFK0jAlzup6AI/B8tzwOtkaqIAAk
	 2hshZC0ljnkT7yLArG3THIKrV6djIQMwQitG4j9Vy6uAwrHNPEITYqaid73kk4V4z2
	 NtLb+xY2LHKWIgWBIF1O1WeIt7HhFrUgpI0uaHfNE+6j4NS402W3A43NvzmnYm2Rie
	 O0wiAu4B+9y0Fn3i5yC+vsYcx6Vc6/nS0Xm1tZVsmUCf7Mh1I+gl+KpaAKUHV1lJ1L
	 D1cH0Rgt7FmhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id foNeDZdX7PFK; Tue, 17 Jan 2023 22:15:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 64DB681DE3;
	Tue, 17 Jan 2023 22:15:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 64DB681DE3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D71D41BF47D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B187D405E0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:15:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B187D405E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JagQtoums8py for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Jan 2023 22:15:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC8D440117
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AC8D440117
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 22:15:52 +0000 (UTC)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-509-fvk_CfRsNz2fY1rsQjuH1Q-1; Tue, 17 Jan 2023 17:15:50 -0500
X-MC-Unique: fvk_CfRsNz2fY1rsQjuH1Q-1
Received: by mail-ed1-f70.google.com with SMTP id
 g14-20020a056402090e00b0046790cd9082so22522505edz.21
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Jan 2023 14:15:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:references
 :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=nVCdnSPpgSc0Lut4xjL5N2UTJnAW1T5qJ5v9mxraf2M=;
 b=bcsCU67mx0FjJ6EnpPhDBZw2cYXxLVBDXlQiUWGWAnXOBxwkk+DvWVL/G0gGmC5CAV
 LNyDQgn7AKT+1uRZCWPlW1zT1s3hA0PWbUnBhGT6FDPtSv6Bgb29moTtPC8LYU+C0lAH
 dOmWygGX38EuqUMwVkXuY/WnPwVZ9j23oK4INsDgw0h5pQ1f+Mg9Dc77C1M+C+buwInu
 6C5MQ15stD3Sfkl2Uqs1ttUIO1kjI9vHjsTQiXTi2mEsgc9VzlcjsT/7xlYH0Mekk+ih
 PRDFoo5+tFZ466wXOMpZq59SvCyZ+80Pabw0ZbPNK0+G1oY/vCMpYwSJSaSDJ0V9VvZo
 eDJw==
X-Gm-Message-State: AFqh2kqgL8Gf8WNu9ZPNDnzMfk6Jyu22MIHyuk8ecp/vcSre3D1VSJrg
 VnQnh1IeosdKLpEg4xvtG3HRfXXM6IgYurX7YSgRHGNgxe9GNyP3A70qEI0M0vCkrdHt7+X3swb
 VQHaViOAAnHRoB9ZB3YZZd6vW396ipg==
X-Received: by 2002:a17:907:76c6:b0:877:564a:6fd3 with SMTP id
 kf6-20020a17090776c600b00877564a6fd3mr182118ejc.21.1673993749157; 
 Tue, 17 Jan 2023 14:15:49 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtct0L+6H586Hqk7KUwB31Uwdc2ltJ7NpPWPm0QfBMU5pi3ouGi3JVmNp1YtMSvhkEzQ5BRBw==
X-Received: by 2002:a17:907:76c6:b0:877:564a:6fd3 with SMTP id
 kf6-20020a17090776c600b00877564a6fd3mr182089ejc.21.1673993748801; 
 Tue, 17 Jan 2023 14:15:48 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id
 r2-20020a17090609c200b007bd28b50305sm13685716eje.200.2023.01.17.14.15.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Jan 2023 14:15:48 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 819879011A9; Tue, 17 Jan 2023 23:15:47 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@corigine.com>
In-Reply-To: <Y8cboWSmvoOKxav2@oden.dyn.berto.se>
References: <cover.1673710866.git.lorenzo@kernel.org>
 <b606e729c9baf36a28be246bf0bfa4d21cc097fb.1673710867.git.lorenzo@kernel.org>
 <Y8cTKOmCBbMEZK8D@sleipner.dyn.berto.se> <87y1q0bz6m.fsf@toke.dk>
 <Y8cboWSmvoOKxav2@oden.dyn.berto.se>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 17 Jan 2023 23:15:47 +0100
Message-ID: <87sfg8byek.fsf@toke.dk>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1673993751;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=spv+kf/BWt8hDO+dH2Y5LxsJIdapEN39piIOCb8JImY=;
 b=jTu6rO1TyDf1U+8lO52L5MibIqOvbGp9k7KC5LR4J7TzuzbnwqTeMm6tD1R1xxrqdTpw3w
 82IewLy7dWVZFdazTpHXNqXsy5JADD9gUhuyd+by0pEhfoUXbVhWRgiTCAcU4x7OMR/AR/
 RQZxOw2tAs8c9GOzDdfpd1bp4fVr6AY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=jTu6rO1T
Subject: Re: [Intel-wired-lan] [RFC v2 bpf-next 2/7] drivers: net: turn on
 XDP features
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
Cc: mst@redhat.com, vladimir.oltean@nxp.com, ast@kernel.org,
 edumazet@google.com, anthony.l.nguyen@intel.com, daniel@iogearbox.net,
 andrii@kernel.org, intel-wired-lan@lists.osuosl.org, simon.horman@corigine.com,
 kuba@kernel.org, pabeni@redhat.com, Lorenzo Bianconi <lorenzo@kernel.org>,
 aelior@marvell.com, hawk@kernel.org, christophe.jaillet@wanadoo.fr,
 memxor@gmail.com, john@phrozen.org, bjorn@kernel.org, bpf@vger.kernel.org,
 magnus.karlsson@intel.com, leon@kernel.org, netdev@vger.kernel.org,
 ecree.xilinx@gmail.com, alardam@gmail.com, gospo@broadcom.com,
 saeedm@nvidia.com, davem@davemloft.net, nbd@nbd.name
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

TmlrbGFzIFPDtmRlcmx1bmQgPG5pa2xhcy5zb2Rlcmx1bmRAY29yaWdpbmUuY29tPiB3cml0ZXM6
Cgo+IEhpIFRva2UsCj4KPiBPbiAyMDIzLTAxLTE3IDIyOjU4OjU3ICswMTAwLCBUb2tlIEjDuGls
YW5kLUrDuHJnZW5zZW4gd3JvdGU6Cj4+IE5pa2xhcyBTw7ZkZXJsdW5kIDxuaWtsYXMuc29kZXJs
dW5kQGNvcmlnaW5lLmNvbT4gd3JpdGVzOgo+PiAKPj4gPiBIaSBMb3JlbnpvIGFuZCBNYXJlaywK
Pj4gPgo+PiA+IFRoYW5rcyBmb3IgeW91ciB3b3JrLgo+PiA+Cj4+ID4gT24gMjAyMy0wMS0xNCAx
Njo1NDozMiArMDEwMCwgTG9yZW56byBCaWFuY29uaSB3cm90ZToKPj4gPgo+PiA+IFsuLi5dCj4+
ID4KPj4gPj4gCj4+ID4+IFR1cm4gJ2h3LW9mZmxvYWQnIGZlYXR1cmUgZmxhZyBvbiBmb3I6Cj4+
ID4+ICAtIG5ldHJvbm9tZSAobmZwKQo+PiA+PiAgLSBuZXRkZXZzaW0uCj4+ID4KPj4gPiBJcyB0
aGVyZSBhIGRlZmluaXRpb24gb2YgdGhlICdody1vZmZsb2FkJyB3cml0dGVuIGRvd24gc29tZXdo
ZXJlPyBGcm9tIAo+PiA+IHJlYWRpbmcgdGhpcyBzZXJpZXMgSSB0YWtlIGl0IGlzIHRoZSBhYmls
aXR5IHRvIG9mZmxvYWQgYSBCUEYgcHJvZ3JhbT8gIAo+PiAKPj4gWWVhaCwgYmFzaWNhbGx5IHRo
aXMgbWVhbnMgImFsbG93cyBsb2FkaW5nIGFuZCBhdHRhY2hpbmcgcHJvZ3JhbXMgaW4KPj4gWERQ
X01PREVfSFciLCBJIHN1cHBvc2UgOikKPj4gCj4+ID4gSXQgd291bGQgYWxzbyBiZSBpbnRlcmVz
dGluZyB0byByZWFkIGRvY3VtZW50YXRpb24gZm9yIHRoZSBvdGhlciBmbGFncyAKPj4gPiBhZGRl
ZCBpbiB0aGlzIHNlcmllcy4KPj4gCj4+IFl1cCwgd2Ugc2hvdWxkIGRlZmluaXRlbHkgZG9jdW1l
bnQgdGhlbSA6KQo+PiAKPj4gPiBbLi4uXQo+PiA+Cj4+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMgCj4+ID4+IGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbmV0cm9ub21lL25mcC9uZnBfbmV0X2NvbW1vbi5jCj4+ID4+IGlu
ZGV4IDE4ZmM5OTcxZjFjOC4uNWE4ZGRlYWZmNzRkIDEwMDY0NAo+PiA+PiAtLS0gYS9kcml2ZXJz
L25ldC9ldGhlcm5ldC9uZXRyb25vbWUvbmZwL25mcF9uZXRfY29tbW9uLmMKPj4gPj4gKysrIGIv
ZHJpdmVycy9uZXQvZXRoZXJuZXQvbmV0cm9ub21lL25mcC9uZnBfbmV0X2NvbW1vbi5jCj4+ID4+
IEBAIC0yNTI5LDEwICsyNTI5LDE0IEBAIHN0YXRpYyB2b2lkIG5mcF9uZXRfbmV0ZGV2X2luaXQo
c3RydWN0IG5mcF9uZXQgKm5uKQo+PiA+PiAgCW5ldGRldi0+ZmVhdHVyZXMgJj0gfk5FVElGX0Zf
SFdfVkxBTl9TVEFHX1JYOwo+PiA+PiAgCW5uLT5kcC5jdHJsICY9IH5ORlBfTkVUX0NGR19DVFJM
X1JYUUlOUTsKPj4gPj4gIAo+PiA+PiArCW5uLT5kcC5uZXRkZXYtPnhkcF9mZWF0dXJlcyA9IE5F
VERFVl9YRFBfQUNUX0JBU0lDIHwKPj4gPj4gKwkJCQkgICAgICBORVRERVZfWERQX0FDVF9IV19P
RkZMT0FEOwo+PiA+Cj4+ID4gSWYgbXkgYXNzdW1wdGlvbiBhYm91dCB0aGUgJ2h3LW9mZmxvYWQn
IGZsYWcgYWJvdmUgaXMgY29ycmVjdCBJIHRoaW5rIAo+PiA+IE5FVERFVl9YRFBfQUNUX0hXX09G
RkxPQUQgc2hvdWxkIGJlIGNvbmRpdGlvbmVkIG9uIHRoYXQgdGhlIEJQRiBmaXJtd2FyZSAKPj4g
PiBmbGF2b3IgaXMgaW4gdXNlLgo+PiA+Cj4+ID4gICAgIG5uLT5kcC5uZXRkZXYtPnhkcF9mZWF0
dXJlcyA9IE5FVERFVl9YRFBfQUNUX0JBU0lDOwo+PiA+Cj4+ID4gICAgIGlmIChubi0+YXBwLT50
eXBlLT5pZCA9PSBORlBfQVBQX0JQRl9OSUMpCj4+ID4gICAgICAgICBubi0+ZHAubmV0ZGV2LT54
ZHBfZmVhdHVyZXMgfD0gTkVUREVWX1hEUF9BQ1RfSFdfT0ZGTE9BRDsKPj4gPgo+PiA+PiArCj4+
ID4+ICAJLyogRmluYWxpc2UgdGhlIG5ldGRldiBzZXR1cCAqLwo+PiA+PiAgCXN3aXRjaCAobm4t
PmRwLm9wcy0+dmVyc2lvbikgewo+PiA+PiAgCWNhc2UgTkZQX05GRF9WRVJfTkZEMzoKPj4gPj4g
IAkJbmV0ZGV2LT5uZXRkZXZfb3BzID0gJm5mcF9uZmQzX25ldGRldl9vcHM7Cj4+ID4+ICsJCW5u
LT5kcC5uZXRkZXYtPnhkcF9mZWF0dXJlcyB8PSBORVRERVZfWERQX0FDVF9YU0tfWkVST0NPUFk7
Cj4+ID4+ICAJCWJyZWFrOwo+PiA+PiAgCWNhc2UgTkZQX05GRF9WRVJfTkZESzoKPj4gPj4gIAkJ
bmV0ZGV2LT5uZXRkZXZfb3BzID0gJm5mcF9uZmRrX25ldGRldl9vcHM7Cj4+ID4KPj4gPiBUaGlz
IGlzIGFsc28gYSB3cmlua2xlIEkgd291bGQgbGlrZSB0byB1bmRlcnN0YW5kLiBDdXJyZW50bHkg
TkZQIHN1cHBvcnQgCj4+ID4gemVyby1jb3B5IG9uIE5GRDMsIGJ1dCBub3QgZm9yIG9mZmxvYWRl
ZCBCUEYgcHJvZ3JhbXMuIEJ1dCB3aXRoIHRoZSBCUEYgCj4+ID4gZmlybXdhcmUgZmxhdm9yIHJ1
bm5pbmcgdGhlIGRldmljZSBjYW4gc3RpbGwgc3VwcG9ydCB6ZXJvLWNvcHkgZm9yIAo+PiA+IG5v
bi1vZmZsb2FkZWQgcHJvZ3JhbXMuCj4+ID4KPj4gPiBJcyBpdCBhIHByb2JsZW0gdGhhdCB0aGUg
ZHJpdmVyIGFkdmVydGlzZXMgc3VwcG9ydCBmb3IgYm90aCAKPj4gPiBoYXJkd2FyZS1vZmZsb2Fk
IF9hbmRfIHplcm8tY29weSBhdCB0aGUgc2FtZSB0aW1lLCBldmVuIGlmIHRoZXkgY2FuJ3QgYmUg
Cj4+ID4gdXNlZCB0b2dldGhlciBidXQgc2VwYXJhdGVseT8KPj4gCj4+IEhtbSwgc28gdGhlIGlk
ZWEgd2l0aCB0aGlzIGlzIHRvIG9ubHkgZXhwb3NlIGZlYXR1cmUgZmxhZ3MgdGhhdCBhcmUKPj4g
c3VwcG9ydGVkICJyaWdodCBub3ciICh5b3UnbGwgbm90ZSB0aGF0IHNvbWUgb2YgdGhlIGRyaXZl
cnMgdHVybiB0aGUKPj4gUkVESVJFQ1RfVEFSR0VUIGZsYWcgb24gYW5kIG9mZiBhdCBydW50aW1l
KS4gSGF2aW5nIGZlYXR1cmVzIHRoYXQgYXJlCj4+ICJzdXBwb3J0ZWQgYnV0IGluIGEgZGlmZmVy
ZW50IGNvbmZpZ3VyYXRpb24iIGlzIG9uZSBvZiB0aGUgcG9pbnRzIG9mCj4+IHVzZXIgY29uZnVz
aW9uIHdlIHdhbnQgdG8gY2xlYXIgdXAgd2l0aCB0aGUgZXhwbGljaXQgZmxhZ3MuCj4+IAo+PiBT
byBJIGd1ZXNzIGl0IGRlcGVuZHMgYSBsaXR0bGUgYml0IHdoYXQgeW91IG1lYW4gYnkgImNhbid0
IGJlIHVzZWQKPj4gdG9nZXRoZXIiPyBJIGJlbGlldmUgaXQncyBwb3NzaWJsZSB0byBsb2FkIHR3
byBwcm9ncmFtcyBhdCB0aGUgc2FtZQo+PiB0aW1lLCBvbmUgaW4gSFcgbW9kZSBhbmQgb25lIGlu
IG5hdGl2ZSAoZHJpdmVyKSBtb2RlLCByaWdodD8gSW4gdGhpcwo+PiBjYXNlLCBjb3VsZCB0aGUg
ZHJpdmVyIG1vZGUgcHJvZ3JhbSB1c2UgWFNLIHplcm9jb3B5IHdoaWxlIHRoZSBIVyBtb2RlCj4+
IHByb2dyYW0gaXMgYWxzbyBsb2FkZWQ/Cj4KPiBFeGFjdGx5LCB0aGlzIGlzIG15IGNvbmNlcm4u
IFR3byBwcm9ncmFtcyBjYW4gYmUgbG9hZGVkIGF0IHRoZSBzYW1lIAo+IHRpbWUsIG9uZSBpbiBI
VyBtb2RlIGFuZCBvbmUgaW4gbmF0aXZlIG1vZGUuIFRoZSBwcm9ncmFtIGluIG5hdGl2ZSBtb2Rl
IAo+IGNhbiB1c2UgemVyby1jb3B5IGF0IHRoZSBzYW1lIHRpbWUgYXMgYW5vdGhlciBwcm9ncmFt
IHJ1bnMgaW4gSFcgbW9kZS4KPgo+IEJ1dCB0aGUgcHJvZ3JhbSBydW5uaW5nIGluIEhXIG1vZGUg
Y2FuIG5ldmVyIHVzZSB6ZXJvLWNvcHkuCgpIbW0sIGJ1dCB6ZXJvLWNvcHkgaXMgYW4gQUZfWERQ
IGZlYXR1cmUsIGFuZCBBRkFJSyBvZmZsb2FkZWQgcHJvZ3JhbXMKY2FuJ3QgdXNlIEFGX1hEUCBh
dCBhbGw/IFNvIHRoZSB6ZXJvLWNvcHkgImZlYXR1cmUiIGlzIGF2YWlsYWJsZSBvbiB0aGUKaGFy
ZHdhcmUsIGl0J3MganVzdCBpbnRyaW5zaWMgdG8gdGhhdCBmZWF0dXJlIHRoYXQgaXQgZG9lc24n
dCB3b3JrIG9uCm9mZmxvYWRlZCBwcm9ncmFtcz8KCldoaWNoIGdvZXMgYmFjayB0bzogeWVhaCwg
d2Ugc2hvdWxkIGRvY3VtZW50IHdoYXQgdGhlIGZlYXR1cmUgZmxhZ3MgbWVhbiA6KQoKLVRva2UK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdp
cmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9s
aXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
