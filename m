Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4120181B393
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Dec 2023 11:31:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEC0E43766;
	Thu, 21 Dec 2023 10:31:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEC0E43766
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1703154716;
	bh=lnBZhpyyTEfdaqmG8/obb62D7dchMUHj5HhH7/+Ao+s=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=55AAbz0vMTn8GNK1SyWrdYYhujGsMihEJrOj1oth9MDjgw/aNcxWipYp8VcECItHC
	 HcvMMrkFVjJuMrLNVMUpIitlrR7TPLsP+rRJtn3a9/JkjpMdZYx8M/w1nhgSgXtmxA
	 8RMv/ZIuxvWiOHJuWN8Tid0sBB+lqPKJkVqaaYpx1o0Zx7V/ETcTAt+6qb7RKKukKm
	 HtffCXmTkW5IvgfhhFlBsVTQiTinkZ6J18jaMcdFwyzRrN3iaDbIW9f09vJnqGXMsw
	 kzKQmJ/HUfcGFLbcUnuEU1jUkmWozGf7+2GO3BgJLk5cipglwF3Wod6Kwf2s1b0Hri
	 cN+3EijMlnh+g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w43yo9_ofISF; Thu, 21 Dec 2023 10:31:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84CBF402E4;
	Thu, 21 Dec 2023 10:31:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84CBF402E4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D5E81BF38B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:31:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4F5A240199
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:31:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4F5A240199
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1ewAS_GVXbYr for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Dec 2023 10:31:47 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 19A774014E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 10:31:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 19A774014E
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-625-Cz_rTxkFPQ20ZqXKJ8jHQw-1; Thu, 21 Dec 2023 05:31:44 -0500
X-MC-Unique: Cz_rTxkFPQ20ZqXKJ8jHQw-1
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-a23575ee664so32028966b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Dec 2023 02:31:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1703154703; x=1703759503;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=dQWbHPSe7IqaHYsS77POPV5Eeahfsq+mb7kZGCuPy4c=;
 b=Qzt4RtkwbsbIRp9ytHpSmtBOwY8RfobXr6OkNGputV1FHO3qQ8u80cVZkHkMbrjXaY
 w4krg7k0YrZfwpePoSnr3Uijq15/mDp9r0OLCmXyvMfIV0i2k6mooOfyAPaeZ7Nxa9Zm
 vMc125oANOu7eBL2suABm83l0yCy1sMHdCStEfyadk1iEGHAZU+8WAlBze6G+TKaDgxD
 TZ1QS2y0kLMeOu0wSxwaIY7XXRX0vn+9vL00BYgAlDzUkTql0EeW6iRox5CSwfq0oaDT
 /KM3JXLH9yaOOiU2Q0JhxqMdcKb57bHAglScgDytVSJeLCVCJui55TfW4KqowNe2e1Jg
 yliw==
X-Gm-Message-State: AOJu0YwzL7v2qGJnh+76xHRetdM/TtTaQsV0GrOwb2H1sNdDUfICyzko
 fJ0/vvu9AUBx7I0mlWb2MLXLMpXlQr1a61iQyxxZS4SJTFB4r5ssd2ODS6wvXL/bY1tQKewNTpM
 etE2s3MLLWFPnOk5EcV2GyEK6fPs5WshhaWt4NrUHLX1HsQ==
X-Received: by 2002:a17:907:944b:b0:a23:52b7:c0c7 with SMTP id
 dl11-20020a170907944b00b00a2352b7c0c7mr4583595ejc.132.1703154703379; 
 Thu, 21 Dec 2023 02:31:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlyX6SfwJ0ZMkfzo8G5jEvjx5SM7sFkrywb0NwFkGisqwDsA/uAEB0NmHs1crEvlNdWQdaj2G5Unx+28P5n2E=
X-Received: by 2002:a17:907:944b:b0:a23:52b7:c0c7 with SMTP id
 dl11-20020a170907944b00b00a2352b7c0c7mr4583584ejc.132.1703154702996; Thu, 21
 Dec 2023 02:31:42 -0800 (PST)
MIME-Version: 1.0
References: <20231218145855.3605898-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231218145855.3605898-1-arkadiusz.kubalewski@intel.com>
From: Michal Schmidt <mschmidt@redhat.com>
Date: Thu, 21 Dec 2023 11:31:31 +0100
Message-ID: <CADEbmW2GpdrMut92v7X9-w8Rchy+=BeX6UAQnybrZSjOgZOXuA@mail.gmail.com>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1703154706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dQWbHPSe7IqaHYsS77POPV5Eeahfsq+mb7kZGCuPy4c=;
 b=fHSjJp79DZmKGbh67AZ6EAQH/5Ubk8meiGoDQxvQo84yT7/W3mPxDJ7CzuSebJv2eW+X5I
 E8wCgR3T++y3Ria4Rrf44r0QUnTbXmv39Z2Q5Wy+Zs0ZbnEVxcqxgi/fzsSNLjjidCqHnp
 wfdkoMTbArIPdx/lRa9wK48/OqmaRKU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=fHSjJp79
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2] ice: dpll: fix phase
 offset value
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
Cc: Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

T24gTW9uLCBEZWMgMTgsIDIwMjMgYXQgNDowMuKAr1BNIEFya2FkaXVzeiBLdWJhbGV3c2tpCjxh
cmthZGl1c3oua3ViYWxld3NraUBpbnRlbC5jb20+IHdyb3RlOgo+Cj4gU3RvcCBkaXZpZGluZyB0
aGUgcGhhc2Vfb2Zmc2V0IHZhbHVlIHJlY2VpdmVkIGZyb20gZmlybXdhcmUuIFRoaXMgZmF1bHQK
PiBpcyBwcmVzZW50IHNpbmNlIHRoZSBpbml0aWFsIGltcGxlbWVudGF0aW9uLgo+IFRoZSBwaGFz
ZV9vZmZzZXQgdmFsdWUgcmVjZWl2ZWQgZnJvbSBmaXJtd2FyZSBpcyBpbiAwLjAxcHMgcmVzb2x1
dGlvbi4KPiBEcGxsIHN1YnN5c3RlbSBpcyB1c2luZyB0aGUgdmFsdWUgaW4gMC4wMDFwcywgcmF3
IHZhbHVlIGlzIGFkanVzdGVkCj4gYmVmb3JlIHByb3ZpZGluZyBpdCB0byB0aGUgdXNlci4KPgo+
IFRoZSB1c2VyIGNhbiBvYnNlcnZlIHRoZSB2YWx1ZSBvZiBwaGFzZSBvZmZzZXQgd2l0aCByZXNw
b25zZSB0bwo+IGBwaW4tZ2V0YCBuZXRsaW5rIG1lc3NhZ2Ugb2YgZHBsbCBzdWJzeXN0ZW0gZm9y
IGFuIGFjdGl2ZSBwaW46Cj4gJCAuL3Rvb2xzL25ldC95bmwvY2xpLnB5IC0tc3BlYyBEb2N1bWVu
dGF0aW9uL25ldGxpbmsvc3BlY3MvZHBsbC55YW1sIFwKPiAgICAgICAgIC0tZG8gcGluLWdldCAt
LWpzb24gJ3siaWQiOjJ9Jwo+Cj4gV2hlcmUgZXhhbXBsZSBvZiBjb3JyZWN0IHJlc3BvbnNlIHdv
dWxkIGJlOgo+IHsnYm9hcmQtbGFiZWwnOiAnQzgyN18wLVJDTEtBJywKPiAgJ2NhcGFiaWxpdGll
cyc6IDYsCj4gICdjbG9jay1pZCc6IDQ2NTg2MTMxNzQ2OTE2MTM4MDAsCj4gICdmcmVxdWVuY3kn
OiAxOTUzMTI1LAo+ICAnaWQnOiAyLAo+ICAnbW9kdWxlLW5hbWUnOiAnaWNlJywKPiAgJ3BhcmVu
dC1kZXZpY2UnOiBbeydkaXJlY3Rpb24nOiAnaW5wdXQnLAo+ICAgICAgICAgICAgICAgICAgICAg
J3BhcmVudC1pZCc6IDYsCj4gICAgICAgICAgICAgICAgICAgICAncGhhc2Utb2Zmc2V0JzogLTIx
NjgzOTU1MCwKPiAgICAgICAgICAgICAgICAgICAgICdwcmlvJzogOSwKPiAgICAgICAgICAgICAg
ICAgICAgICdzdGF0ZSc6ICdjb25uZWN0ZWQnfSwKPiAgICAgICAgICAgICAgICAgICAgeydkaXJl
Y3Rpb24nOiAnaW5wdXQnLAo+ICAgICAgICAgICAgICAgICAgICAgJ3BhcmVudC1pZCc6IDcsCj4g
ICAgICAgICAgICAgICAgICAgICAncGhhc2Utb2Zmc2V0JzogLTQyOTMwLAo+ICAgICAgICAgICAg
ICAgICAgICAgJ3ByaW8nOiA4LAo+ICAgICAgICAgICAgICAgICAgICAgJ3N0YXRlJzogJ2Nvbm5l
Y3RlZCd9XSwKPiAgJ3BoYXNlLWFkanVzdCc6IDAsCj4gICdwaGFzZS1hZGp1c3QtbWF4JzogMTY3
MjMsCj4gICdwaGFzZS1hZGp1c3QtbWluJzogLTE2NzIzLAo+ICAndHlwZSc6ICdtdXgnfQo+Cj4g
UHJvdmlkZWQgcGhhc2Utb2Zmc2V0IHZhbHVlICgtNDI5MzApIHNoYWxsIGJlIGRpdmlkZWQgYnkg
dGhlIHVzZXIgd2l0aAo+IERQTExfUEhBU0VfT0ZGU0VUX0RJVklERVIgdG8gZ2V0IGFjdHVhbCB2
YWx1ZSBvZiAtNDIuOTMwIHBzLgo+Cj4gQmVmb3JlIHRoZSBmaXgsIHRoZSByZXNwb25zZSB3YXMg
bm90IGNvcnJlY3Q6Cj4geydib2FyZC1sYWJlbCc6ICdDODI3XzAtUkNMS0EnLAo+ICAnY2FwYWJp
bGl0aWVzJzogNiwKPiAgJ2Nsb2NrLWlkJzogNDY1ODYxMzE3NDY5MTYxMzgwMCwKPiAgJ2ZyZXF1
ZW5jeSc6IDE5NTMxMjUsCj4gICdpZCc6IDIsCj4gICdtb2R1bGUtbmFtZSc6ICdpY2UnLAo+ICAn
cGFyZW50LWRldmljZSc6IFt7J2RpcmVjdGlvbic6ICdpbnB1dCcsCj4gICAgICAgICAgICAgICAg
ICAgICAncGFyZW50LWlkJzogNiwKPiAgICAgICAgICAgICAgICAgICAgICdwaGFzZS1vZmZzZXQn
OiAtMjE2ODM5LAo+ICAgICAgICAgICAgICAgICAgICAgJ3ByaW8nOiA5LAo+ICAgICAgICAgICAg
ICAgICAgICAgJ3N0YXRlJzogJ2Nvbm5lY3RlZCd9LAo+ICAgICAgICAgICAgICAgICAgICB7J2Rp
cmVjdGlvbic6ICdpbnB1dCcsCj4gICAgICAgICAgICAgICAgICAgICAncGFyZW50LWlkJzogNywK
PiAgICAgICAgICAgICAgICAgICAgICdwaGFzZS1vZmZzZXQnOiAtNDIsCj4gICAgICAgICAgICAg
ICAgICAgICAncHJpbyc6IDgsCj4gICAgICAgICAgICAgICAgICAgICAnc3RhdGUnOiAnY29ubmVj
dGVkJ31dLAo+ICAncGhhc2UtYWRqdXN0JzogMCwKPiAgJ3BoYXNlLWFkanVzdC1tYXgnOiAxNjcy
MywKPiAgJ3BoYXNlLWFkanVzdC1taW4nOiAtMTY3MjMsCj4gICd0eXBlJzogJ211eCd9Cj4KPiBX
aGVyZSBwaGFzZS1vZmZzZXQgdmFsdWUgKC00MiksIGFmdGVyIGRpdmlzaW9uCj4gKERQTExfUEhB
U0VfT0ZGU0VUX0RJVklERVIpIHdvdWxkIGJlOiAtMC4wNDIgcHMuCgpUaGUgZm9sbG93aW5nIGlz
IG5vdCBhbiBvYmplY3Rpb24gdG8gdGhlIHBhdGNoLCBqdXN0IGEgcmVsYXRlZCBwb2ludDoKCldo
eSBkb2VzIHRoZSBkb2N1bWVudGF0aW9uIGZvciAicGhhc2Utb2Zmc2V0LWRpdmlkZXIiIGluCkRv
Y3VtZW50YXRpb24vbmV0bGluay9zcGVjcy9kcGxsLnlhbWwgbm90IG1lbnRpb24gdGhlIHVuaXRz
IGF0IGFsbD8gSXQKdGVsbHMgeW91IG9uZSBoYXMgdG8gZGl2aWRlIHRoZSByYXcgdmFsdWUgYnkg
dGhlIGRpdmlkZXIsIGJ1dCBpdCBkb2VzCm5vdCB0ZWxsIHlvdSB0aGF0IHRoZSByZXN1bHQgaXMg
dGhlbiBpbiBwaWNvc2Vjb25kcy4KQWN0dWFsbHksIHdoeSBpcyB0aGUgZGl2aWRlciBkZWZpbmVk
IGF0IGFsbD8gV291bGRuJ3QgaXQgaGF2ZSBiZWVuCmVub3VnaCB0byBkb2N1bWVudCB0aGF0IHRo
ZSByYXcgdmFsdWUgaXMgaW4gZmVtdG9zZWNvbmRzPwoKTWljaGFsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBs
aXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
