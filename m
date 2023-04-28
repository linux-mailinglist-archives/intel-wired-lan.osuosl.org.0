Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1480A6F1516
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Apr 2023 12:14:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7AC1C81377;
	Fri, 28 Apr 2023 10:14:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7AC1C81377
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682676842;
	bh=TalVIifAtk9j2APqzrS3pQfDWxkH5lhvrgT25oKyupw=;
	h=From:Date:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=UBDhuBfzRhrYMPEXbxtZxE08eMIDD/yBJnOKmXzS2WL6a1EaBv1Kx5tIvNFS9X1bd
	 BUrfpuTJyQ7r44U01R8BbtyBaya5HEw/moyBgPGCmRBruHw5rR8CQ2tGeubsi4mWjV
	 Zk6eORXphuDwHfoqoVZnfNbrAuoQiKcdlC5RumsI4HlbsIQJBH8ez48X85yNEkVotc
	 e7AQ3RCwNEw12IQK6aoU9Eyf43uz7ulE+rj/16nHFi/9NGoJzAv0Od4b+oClFnhIUY
	 oc1Y7s9odTPkUCsJMfrwfCKOt5YW9ZQlzj3T9q9X28+CfQ7MF2p54Hah7vJ81EIYL1
	 GA2tuqnDubzWw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jBI3RqUmVyMI; Fri, 28 Apr 2023 10:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 33BD88138D;
	Fri, 28 Apr 2023 10:14:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 33BD88138D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 356B21BF28A
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 10:13:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0806041E18
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 10:13:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0806041E18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7jQh8FI_yIer for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Apr 2023 10:13:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 056DF41DBF
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 056DF41DBF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 10:13:54 +0000 (UTC)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-611-h-H_dg6cNtqDF8IKQqIxSw-1; Fri, 28 Apr 2023 06:13:52 -0400
X-MC-Unique: h-H_dg6cNtqDF8IKQqIxSw-1
Received: by mail-ed1-f71.google.com with SMTP id
 4fb4d7f45d1cf-506b0a2d5c4so10945099a12.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Apr 2023 03:13:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682676831; x=1685268831;
 h=content-transfer-encoding:in-reply-to:references:to
 :content-language:subject:cc:user-agent:mime-version:date:message-id
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=o0hfmSjrbmFcUA3spV8vN0sZHy4e8avPyPdESyqTTH0=;
 b=XAy+GCsklTR+3jDEly0y4lC5pI7T1idJwEN6QYS5IBMMUUKb4zcbj9faKzNajauz3p
 RqHdTTiZxSilaK6AGzINY32RQtSRxscL0wxl9tyOKTTH2pS36ihJt4MMvMJfvdtt2wFK
 FWIlo5cQMEJ8Qa88pRbJaTjzGkf71kg9SlLDdjBnP0lumqiTE+k9mrWbxFPQ/KGy/jIo
 JAYDL9bDw9qLRsZZUrp0onMcFvh2u5kDs3P9sOK4WtCFVxLBtt3vTyYRQCohKKrwgTES
 hgzSBi/cH0Um/GALYBLwcgUbOBfPJlc7P8IyP2HisqQ9K8qx2K+N0b1jbcvNOnM2wB8M
 Jpyw==
X-Gm-Message-State: AC+VfDzCtg9dyM71aopZyS3kyOpoCH5Q4IYr5nApP7yIcDXQxwMC4KVa
 18Z8PKwoWb2e0KVjy5Xp3snCMeGRcArGDmCKUMa9/oqT2/bhlEaPP1l3yRe0nS6wrc55NFBIH4i
 NiNQTzG3t9puDdYoJawiQoxE5/7dHfg==
X-Received: by 2002:a05:6402:b22:b0:504:bde3:104 with SMTP id
 bo2-20020a0564020b2200b00504bde30104mr3726745edb.20.1682676831439; 
 Fri, 28 Apr 2023 03:13:51 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7cveE8gzZX1Y02kVoAS/aujVy/7IMD6pXMByAMrrkr3Vm9T2UQrY1YT6T8mVbxkGw1R+cbQg==
X-Received: by 2002:a05:6402:b22:b0:504:bde3:104 with SMTP id
 bo2-20020a0564020b2200b00504bde30104mr3726710edb.20.1682676831096; 
 Fri, 28 Apr 2023 03:13:51 -0700 (PDT)
Received: from [192.168.42.222] (194-45-78-10.static.kviknet.net.
 [194.45.78.10]) by smtp.gmail.com with ESMTPSA id
 a7-20020aa7d907000000b00506a09795e6sm8919954edr.26.2023.04.28.03.13.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 28 Apr 2023 03:13:50 -0700 (PDT)
From: Jesper Dangaard Brouer <jbrouer@redhat.com>
X-Google-Original-From: Jesper Dangaard Brouer <brouer@redhat.com>
Message-ID: <b9084797-ba50-d2c0-2c4f-e0964505126e@redhat.com>
Date: Fri, 28 Apr 2023 12:13:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
To: Daniel Borkmann <daniel@iogearbox.net>,
 Jesper Dangaard Brouer <jbrouer@redhat.com>, davem@davemloft.net,
 bpf@vger.kernel.org
References: <168182460362.616355.14591423386485175723.stgit@firesoul>
 <168182464270.616355.11391652654430626584.stgit@firesoul>
 <644544b3206f0_19af02085e@john.notmuch>
 <622a8fa6-ec07-c150-250b-5467b0cddb0c@redhat.com>
 <6446d5af80e06_338f220820@john.notmuch>
 <e6bc2340-9cb5-def1-b347-af25ce2f8225@redhat.com>
 <86517b44-b998-a4ac-da13-1f30d5f69975@iogearbox.net>
In-Reply-To: <86517b44-b998-a4ac-da13-1f30d5f69975@iogearbox.net>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1682676833;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=o0hfmSjrbmFcUA3spV8vN0sZHy4e8avPyPdESyqTTH0=;
 b=EZFV1rA6pFZ055YiOlQ6HgYvOwUFxmlbofk6hAOYQM1blGNDLqsy2zf35WI2WeFCFTvOyF
 oStJTp0BtuARiLHkO105ardW9QOSEQTW2atNagKcidsKsYYGRwfwBxYi0lQRF/R91JjeRX
 tr9CccxmeX5GpfvbA05PiQJEqgiVdqI=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=EZFV1rA6
Subject: Re: [Intel-wired-lan] [PATCH bpf-next V2 1/5] igc: enable and fix
 RX hash usage by netstack
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
Cc: xdp-hints@xdp-project.net, martin.lau@kernel.org, larysa.zaremba@intel.com,
 netdev@vger.kernel.org,
 =?UTF-8?Q?Toke_H=c3=b8iland-J=c3=b8rgensen?= <toke@redhat.com>,
 John Fastabend <john.fastabend@gmail.com>, ast@kernel.org,
 jesse.brandeburg@intel.com, kuba@kernel.org, edumazet@google.com,
 pabeni@redhat.com, Stanislav Fomichev <sdf@google.com>,
 yoong.siang.song@intel.com, brouer@redhat.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 hawk@kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uIDI3LzA0LzIwMjMgMTkuMDAsIERhbmllbCBCb3JrbWFubiB3cm90ZToKPiBPbiA0LzI1LzIz
IDEwOjQzIEFNLCBKZXNwZXIgRGFuZ2FhcmQgQnJvdWVyIHdyb3RlOgo+PiBPbiAyNC8wNC8yMDIz
IDIxLjE3LCBKb2huIEZhc3RhYmVuZCB3cm90ZToKPj4+Pj4gSnVzdCBjdXJpb3VzIHdoeSBub3Qg
Y29weSB0aGUgbG9naWMgZnJvbSB0aGUgb3RoZXIgZHJpdmVyIGZtczEwaywgCj4+Pj4+IGljZSwg
ZWN0Lgo+Pj4+Pgo+Pj4+PiDCoMKgwqDCoHNrYl9zZXRfaGFzaChza2IsIGxlMzJfdG9fY3B1KHJ4
X2Rlc2MtPndiLmxvd2VyLmhpX2R3b3JkLnJzcyksCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAoSVhHQkVfUlNTX0w0X1RZUEVTX01BU0sgJiAoMXVsIDw8IHJzc190eXBlKSkgPwo+Pj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUEtUX0hBU0hfVFlQRV9MNCA6IFBLVF9IQVNIX1RZ
UEVfTDMpOwo+Pj4+IERldGFpbDogVGhpcyBjb2RlIG1pcy1jYXRlZ29yaXplIChlLmcuIEFSUCkg
UEtUX0hBU0hfVFlQRV9MMiBhcwo+Pj4+IFBLVF9IQVNIX1RZUEVfTDMsIGJ1dCBhcyBjb3JlIHJl
ZHVjZXMgdGhpcyBmdXJ0aGVyIHRvIG9uZSBTS0IgYml0LCBpdAo+Pj4+IGRvZXNuJ3QgcmVhbGx5
IG1hdHRlci4KPj4+Pgo+Pj4+PiBhdm9pZGluZyB0aGUgdGFibGUgbG9naWMuIERvIHRoZSBkcml2
ZXIgZm9sa3MgY2FyZT8KPj4+PiBUaGUgZGVmaW5lIElYR0JFX1JTU19MNF9UWVBFU19NQVNLIGJl
Y29tZXMgdGhlICJ0YWJsZSIgbG9naWMgYXMgYSAxLWJpdAo+Pj4+IHRydWUvZmFsc2UgdGFibGUu
wqAgSXQgaXMgYSBtb3JlIGNvbXBhY3QgdGFibGUsIGxldCBtZSBrbm93IGlmIHRoaXMgaXMKPj4+
PiBwcmVmZXJyZWQuCj4+Pj4KPj4+PiBZZXMsIGl0IGlzIHJlYWxseSB1cHRvIGRyaXZlciBtYWlu
dGFpbmVyIHBlb3BsZSB0byBkZWNpZGUsIHdoYXQgY29kZSBpcwo+Pj4+IHByZWZlcnJlZCA/Cj4+
IMKgPgo+Pj4gWWVhaCBkb2Vzbid0IG1hdHRlciBtdWNoIHRvIG1lIGVpdGhlciB3YXkuIEkgd2Fz
IGp1c3QgbG9va2luZyBhdCBjb2RlCj4+PiBjb21wYXJlZCB0byBpY2UgZHJpdmVyIHdoaWxlIHJl
dmlld2luZy4KPj4KPj4gTXkgcHJlZmVyZW5jZSBpcyB0byBhcHBseSB0aGlzIHBhdGNoc2V0LiBX
ZS9JIGNhbiBlYXNpbHkgZm9sbG93dXAgYW5kCj4+IGNoYW5nZSB0aGlzIHRvIHVzZSB0aGUgbW9y
ZSBjb21wYWN0IGFwcHJvYWNoIGxhdGVyIChpZiBzb21lb25lIHByZWZlcnMpLgo+IAo+IENvbnNp
c3RlbmN5IG1pZ2h0IGhlbHAgaW1vIGFuZCB3b3VsZCBhdm9pZCBxdWVzdGlvbnMvY29uZnVzaW9u
IG9uIC93aHkvCj4gZG9pbmcgaXQgZGlmZmVyZW50bHkgZm9yIGlnYyB2cyBzb21lIG9mIHRoZSBv
dGhlcnMuCj4KCldlbGwsIGRyaXZlcnMgb2Z0ZW4gZG8gdGhpbmdzIGRpZmZlcmVudGx5LCBzbyB0
aGF0IG5vdCBzb21ldGhpbmcgbmV3LiBJCmZvdW5kIHRoZSBvdGhlciBhcHByb2FjaCBsZXNzIHJl
YWRhYmxlIChhbmQgdGhlb3JldGljYWxseSB3cm9uZyBmb3IgdGhlCkwyIGNhc2UpLiAgRm9yIGln
YyB0aGlzIGFwcHJvYWNoIG1ha2VzIGl0IGVhc2llciB0byByZWFkIChJTUhPIEknbQpiaWFzZWQg
b2YgY2F1c2UpIGFuZCBlYXNpZXIgdG8gY29tcGFyZSB3aXRoIGtmdW5jIG1ldGFkYXRhIGhpbnQg
dHlwZQoodGhhdCBkb2Vzbid0IGhhdmUgUlNTIHR5cGUgaW5mb3JtYXRpb24gbG9zcykuCgo+PiBJ
IGtub3cgbmV0LW5leHQgaXMgImNsb3NlZCIsIGJ1dCB0aGlzIHBhdGNoc2V0IHdhcyBwb3N0ZWQg
cHJpb3IgdG8gdGhlCj4+IGNsb3NlLsKgIFBsdXMsIGEgbnVtYmVyIG9mIGNvbXBhbmllcyBhcmUg
d2FpdGluZyBmb3IgdGhlIFhEUC1oaW50IGZvciBIVwo+PiBSWCB0aW1lc3RhbXAuwqAgVGhlIHN1
cHBvcnQgZm9yIGRyaXZlciBzdG1tYWMgaXMgYWxyZWFkeSBpbiBuZXQtbmV4dAo+PiAoY29tbWl0
IGUzZjljM2UzNDg0MCAoIm5ldDogc3RtbWFjOiBhZGQgUnggSFdUUyBtZXRhZGF0YSB0byBYRFAg
cmVjZWl2ZQo+PiBwa3QiKSkuIFRodXMsIGl0IHdvdWxkIGJlIGEgaGVscCBpZiBib3RoIGlnYytz
dG1tYWMgY2hhbmdlcyBsYW5kIGluIHNhbWUKPj4ga2VybmVsIHZlcnNpb24sIGFzIGJvdGggZHJp
dmVycyBhcmUgYmVpbmcgZXZhbHVhdGVkIGJ5IHRoZXNlIGNvbXBhbmllcy4KPiAKPiBHaXZlbiBt
ZXJnZSB3aW5kb3cgaXMgb3BlbiBub3cgYW5kIG5ldC1uZXh0IGNsb3NlZCwgaXQncyB0b28gbGF0
ZSB0byBsYW5kCj4gKHVubGVzcyBEYXZlL0pha3ViIHRoaW5rcyBvdGhlcndpc2UgZ2l2ZW4gaXQg
dG91Y2hlcyBhbHNvIGRyaXZlciBiaXRzKS4KPiBJJ3ZlIGFwcGxpZWQgdGhlIHNlcmllcyB0byBi
cGYtbmV4dCByaWdodCBub3cuCgpJdCdzIG5vdCBhIGJpZyBkZWFsIHRoYXQgaXQgZGlkbid0IHJl
YWNoZWQgbmV0LW5leHQsIGVuZC11c2VycyB3aWxsIGp1c3QKaGF2ZSB0byB3YWl0IGZvciBhbm90
aGVyIGtlcm5lbCByZWxlYXNlIHRvIHNlZSB0aGlzIGZlYXR1cmUsIG9yIGJhY2twb3J0CnRoZSBm
ZWF0dXJlIHRoZW1zZWx2ZXMuCgpUaGFua3MgZm9yIGFwcGx5aW5nIGl0LgoKLS1KZXNwZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVk
LWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0
cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
