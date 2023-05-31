Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B15718521
	for <lists+intel-wired-lan@lfdr.de>; Wed, 31 May 2023 16:38:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E6F6C613ED;
	Wed, 31 May 2023 14:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E6F6C613ED
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685543931;
	bh=ZlEO+rWCeOI9103IIsW8yBK5HMOAHDMSIOEOUrqoXmE=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=rXTsAiXS8t95CDIqGYFGfmIkKJm3ZSrZUIu0eQtewRoeDvCxDwM+KEmkVmLgG2i3G
	 woAzfGPpRvGpNd8FHuyNw6C7ywOCdOb5ftv+xsSUKAwdv+aGOgy7AGP0+uKR9KOp+j
	 JxuLmgDE2aHy69ppbOorrQyGJUd3YiPBin0UhRdFKREOQN3kg9JAwFFgUKlSkp/OtF
	 Te/QZWaIimDzMJckDTGvY8s1qzJzU8AT+0ZcsR5hY7ZoI56Y3WNiClGThDUgnIONSJ
	 rn+/imIsTUW65FGrl9EN3DIP3BemC9RJhrqgf1gu0HvEBvnlcLjFDLUCUpOPibNDDC
	 l48b/OADOwy6g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MAjzhiGdUyAF; Wed, 31 May 2023 14:38:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2CE260BAE;
	Wed, 31 May 2023 14:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2CE260BAE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 61B931BF5A6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:38:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 408764095A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:38:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 408764095A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Dn-FUK6KxPcS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 31 May 2023 14:38:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EDFC40953
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1EDFC40953
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 14:38:43 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-258-NyKZ9yHVPBGo-zXzvsygtg-1; Wed, 31 May 2023 10:38:41 -0400
X-MC-Unique: NyKZ9yHVPBGo-zXzvsygtg-1
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-94a355cf318so601050566b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 31 May 2023 07:38:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685543920; x=1688135920;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AYGqdrdkKCtP3ZwuuKaO8oSN0+aZJasd1kSTT8KBNqM=;
 b=Tt0ohJkC8gKAZSZtAWVjbSLKsg9vQQPBidl7+xaN5Wd+8lSrJuXRTXgCriX+r3Ig0Y
 RH1d79wmOvz0dYPs36StAXMGwB9ndXMUbDeFbWLeoCvOQupES9J5ZimyCj1VjlYs7v14
 IZwdKPx2vd+ySlKlTN2/53YuAq0YYos+QC3EztDUNnQWh5mGdm38QvXZhB/3LGHPSUuj
 5bMyNuI7p34HcqrhWMW2gI9erpIcbTn3FimmY3iKf4ZVwt4tpRipAx81Vcxf6jjCEabG
 1XcEjXEwQuXtvriETBKcLkXNfsQEIkI2Vt/3Q8Ry4tIqJaNNoDriZ3h3Qne2jqwHYhKX
 m61g==
X-Gm-Message-State: AC+VfDwvzd7APJIV3yRjMMRG0yvbNKbCH8d5Z0HwruGaAtZgEy6np+g3
 06oY/+5UGlXqnjwJqhE/qfuUpQ3zB8moZw4uQtCzxx6fMx2HaRLXaZOlG3A+x7720sH5Mq+qBJd
 MB2Aojtp7ZJoLGdEHD9a3OdIcOAxVJBye/D/3dyAI5wEc0w==
X-Received: by 2002:a17:907:3e01:b0:970:1a15:62d1 with SMTP id
 hp1-20020a1709073e0100b009701a1562d1mr5723195ejc.34.1685543920672; 
 Wed, 31 May 2023 07:38:40 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5u+EtmiImm57PFA9uKBLOv7Wi6Q6Cxh0JxveQ224o1tMbqnsfgWbTtZX+EoncfP+dVC2EqAhNHKPkCfz4WQ+Q=
X-Received: by 2002:a17:907:3e01:b0:970:1a15:62d1 with SMTP id
 hp1-20020a1709073e0100b009701a1562d1mr5723178ejc.34.1685543920382; Wed, 31
 May 2023 07:38:40 -0700 (PDT)
MIME-Version: 1.0
References: <20230530174605.2772054-1-jacob.e.keller@intel.com>
 <20230530174605.2772054-2-jacob.e.keller@intel.com>
In-Reply-To: <20230530174605.2772054-2-jacob.e.keller@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Wed, 31 May 2023 16:38:29 +0200
Message-ID: <CADEbmW3m52ZcULf09BBLf+VgnKhjhmG2121bEH_+7jihQkdBxA@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1685543923;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AYGqdrdkKCtP3ZwuuKaO8oSN0+aZJasd1kSTT8KBNqM=;
 b=Pm6kNvfPUxAuPmBhySp5V/VsWxIUVJpousWEEmwaMvPffCIryOHJlwKLdKzkQO4EUIq4/z
 LRd05JX1gLgx5exn7NKdxtNo8a9eUyS8BdweOp/VsW/rYRFmPj4z0lV1fOFjxzGdOyf6dc
 OMhdoU84VIcQhzMZErNBPtVtabQryW8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=Pm6kNvfP
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/5] ice: handle extts in
 the miscellaneous interrupt thread
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Intel Wired LAN <intel-wired-lan@lists.osuosl.org>,
 Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgNzo0NuKAr1BNIEphY29iIEtlbGxlciA8amFjb2IuZS5r
ZWxsZXJAaW50ZWwuY29tPiB3cm90ZToKPgo+IEZyb206IEthcm9sIEtvbGFjaW5za2kgPGthcm9s
LmtvbGFjaW5za2lAaW50ZWwuY29tPgo+Cj4gVGhlIGljZV9wdHBfZXh0dHNfd29yaygpIGFuZCBp
Y2VfcHRwX3BlcmlvZGljX3dvcmsoKSBmdW5jdGlvbnMgYXJlIGJvdGgKPiBzY2hlZHVsZWQgb24g
dGhlIHNhbWUga3RocmVhZCB3b3JrZXIsIHBmLnB0cC5rd29ya2VyLiBUaGUKPiBpY2VfcHRwX3Bl
cmlvZGljX3dvcmsoKSBmdW5jdGlvbiBzZW5kcyB0byB0aGUgZmlybXdhcmUgdG8gaW50ZXJhY3Qg
d2l0aCB0aGUKPiBQSFksIGFuZCBtdXN0IGJsb2NrIHRvIHdhaXQgZm9yIHJlc3BvbnNlcy4KPgo+
IFRoaXMgY2FuIGNhdXNlIGRlbGF5IGluIHJlc3BvbmRpbmcgdG8gdGhlIFBGSU5UX09JQ1JfVFNZ
Tl9FVk5UIGludGVycnVwdAo+IGNhdXNlLCB1bHRpbWF0ZWx5IHJlc3VsdGluZyBpbiBkaXNydXB0
aW9uIHRvIHByb2Nlc3NpbmcgYW4gaW5wdXQgc2lnbmFsIG9mCj4gdGhlIGZyZXF1ZW5jeSBpcyBo
aWdoIGVub3VnaC4gSW4gb3VyIHRlc3RpbmcsIGV2ZW4gMTAwIEh6IHNpZ25hbHMgZ2V0Cj4gZGlz
cnVwdGVkLgo+Cj4gRml4IHRoaXMgYnkgaW5zdGVhZCBwcm9jZXNzaW5nIHRoZSBzaWduYWwgaW5z
aWRlIHRoZSBtaXNjZWxsYW5lb3VzCj4gaW50ZXJydXB0IHRocmVhZCBwcmlvciB0byBoYW5kbGlu
ZyBUeCB0aW1lc3RhbXBzLgo+Cj4gRml4ZXM6IDE3MmRiNWY5MWQ1ZiAoImljZTogYWRkIHN1cHBv
cnQgZm9yIGF1eGlsaWFyeSBpbnB1dC9vdXRwdXQgcGlucyIpCj4gUmVwb3J0ZWQtYnk6IEFuYXRv
bGlpIEdlcmFzeW1lbmtvIDxhbmF0b2xpaS5nZXJhc3ltZW5rb0BpbnRlbC5jb20+Cj4gU2lnbmVk
LW9mZi1ieTogS2Fyb2wgS29sYWNpbnNraSA8a2Fyb2wua29sYWNpbnNraUBpbnRlbC5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogSmFjb2IgS2VsbGVyIDxqYWNvYi5lLmtlbGxlckBpbnRlbC5jb20+Cj4g
LS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2UuaCAgICAgIHwgIDEgKwo+
ICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRlbC9pY2UvaWNlX21haW4uYyB8IDMzICsrKysrKysr
KysrKysrKysrLS0tLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2VfcHRw
LmMgIHwgMTIgKysrLS0tLS0tCj4gIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2ljZS9pY2Vf
cHRwLmggIHwgIDQgKy0tCj4gIDQgZmlsZXMgY2hhbmdlZCwgMzEgaW5zZXJ0aW9ucygrKSwgMTkg
ZGVsZXRpb25zKC0pCj4KLi4uCj4gQEAgLTQ5NTgsNiArNDk3NCw3IEBAIGljZV9wcm9iZShzdHJ1
Y3QgcGNpX2RldiAqcGRldiwgY29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgX19hbHdheXNfdW51
c2VkICplbnQpCj4gICAgICAgICBwZiA9IGljZV9hbGxvY2F0ZV9wZihkZXYpOwo+ICAgICAgICAg
aWYgKCFwZikKPiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FTk9NRU07Cj4gKyAgICAgICBwZi0+
b2ljcl9taXNjID0gMDsKClRoZSBpbml0aWFsaXphdGlvbiBpcyByZWR1bmRhbnQuIGljZV9hbGxv
Y2F0ZV9wZiBremFsbG9jJ2VkIHRoZSB3aG9sZSBzdHJ1Y3R1cmUuCgpNaWNoYWwKCj4gICAgICAg
ICAvKiBpbml0aWFsaXplIEF1eGlsaWFyeSBpbmRleCB0byBpbnZhbGlkIHZhbHVlICovCj4gICAg
ICAgICBwZi0+YXV4X2lkeCA9IC0xOwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJbnRlbC13aXJlZC1s
YW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC13aXJlZC1sYW4K
