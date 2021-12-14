Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1A347434C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Dec 2021 14:19:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B25640373;
	Tue, 14 Dec 2021 13:19:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a5GbK7B0tnak; Tue, 14 Dec 2021 13:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 348B740182;
	Tue, 14 Dec 2021 13:19:46 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EA5F51BF33F
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E509F40182
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xVpHHutBZ1ox for <intel-wired-lan@osuosl.org>;
 Tue, 14 Dec 2021 13:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9CEF440146
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 13:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1639487979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=aTsh0xz1vTGbYdfsTs8Y47NKz3TzVi1CizHkn+EbDvg=;
 b=NQETljaZpqymvp3bm5NbGla0m+Mp0fbnLjOYolLkBakLD+E98VCBnX0b8rJ6AJMvrAazPk
 KIqBpKEJB35zSg0HEwi/GSxamcRyIoePFA/DmPzdgXQxemRTVtEmG5Guj6eARhm/BBLPk2
 HrTNkv+ff5OPbbTQwJV0/83CXzworI4=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-245-7Nx3L_g4OrCgFLeOZ41rYQ-1; Tue, 14 Dec 2021 08:19:37 -0500
X-MC-Unique: 7Nx3L_g4OrCgFLeOZ41rYQ-1
Received: by mail-qv1-f72.google.com with SMTP id
 kl17-20020a056214519100b003ba5b03606fso27294235qvb.0
 for <intel-wired-lan@osuosl.org>; Tue, 14 Dec 2021 05:19:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=aTsh0xz1vTGbYdfsTs8Y47NKz3TzVi1CizHkn+EbDvg=;
 b=G9tOmf+FgGAYX26LkHX0I4EFUP+sOoUtXEiKna7zISqFkVsLZvmNQRhBaEQhJUc2rP
 OTcw/0yKGfvY4Ez9stVMIDZRBfbBljUci3Q2IGAbd4mOFOtajh6PuadKDHClH8hx4/sl
 aMZBBmvkIvMnffY6Kq4xGEdXnVXhlm6k8bKuaJwQA038bF5Wlx2iQPCCf/UZHvSb1yNN
 dPb2QaBnDaYwSGvuu57ECKYMutVWWjWBYaZ8DJG9KeblltpTkTVsB/WA7+sA5d0D8XnC
 kFIaJvjgmEdwQtINtFCiisGEYZZjyAyPjazS+RukTPEC12VBob/RkOgF7XdRd92a+63f
 onRg==
X-Gm-Message-State: AOAM532YigFFZ7rF90YDBeC1F4jIFxAdH4/dLYlX8T1R6mFWdXaKcwdf
 W7thIw4/CdlWHpu0+6CXFF4XmDjXWOoM4zw2/9JsnhKIKyhimFSq6203cuu9qlEfo1BWG8rZgqI
 m2jKyjZr3WPGqdDZ/4NXXMg==
X-Received: by 2002:ad4:5762:: with SMTP id r2mr5275213qvx.31.1639487976230;
 Tue, 14 Dec 2021 05:19:36 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwTx7RmsIr/rDN/m+D9q8Z/M6kKg3weNChWvo249I+TNHMy9sNOTfQVN3AyYNhY5bmnxaqShA==
X-Received: by 2002:ad4:5762:: with SMTP id r2mr5275197qvx.31.1639487976106;
 Tue, 14 Dec 2021 05:19:36 -0800 (PST)
Received: from [192.168.1.121] ([69.73.103.33])
 by smtp.gmail.com with ESMTPSA id bk39sm7508768qkb.35.2021.12.14.05.19.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Dec 2021 05:19:35 -0800 (PST)
Message-ID: <0db0aed4-94bf-4038-0dd7-3960ec1306bb@redhat.com>
Date: Tue, 14 Dec 2021 07:19:35 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
References: <20211208102153.669338-1-jkc@redhat.com>
 <20211208102153.669338-3-jkc@redhat.com>
 <4ebe129aeecda496fcad40377903c14d9d0c2dec.camel@intel.com>
From: Ken Cox <jkc@redhat.com>
In-Reply-To: <4ebe129aeecda496fcad40377903c14d9d0c2dec.camel@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jkc@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [Patch 2/2] iavf: Prevent reset from being
 scheduled while adapter is being removed
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

CgpPbiAxMi8xMy8yMSAxMjoyNywgTmd1eWVuLCBBbnRob255IEwgd3JvdGU6Cj4gT24gV2VkLCAy
MDIxLTEyLTA4IGF0IDA0OjIxIC0wNjAwLCBLZW4gQ294IHdyb3RlOgo+PiBJZiBhIHJlc2V0IGdl
dHMgc2NoZWR1bGVkIHdoaWxlIHRoZSBhZGFwdGVyIGlzIGJlaW5nIHJlbW92ZWQgaXQgY2FuCj4+
IGNhdXNlIGEgcGFuaWMuCj4+Cj4+IFRoZSB3b3JrX3N0cnVjdCBmb3IgdGhlIHJlc2V0X3Rhc2sg
aXMgY29udGFpbmVkIGluIHRoZSBpYXZmX2FkYXB0ZXIKPj4gc3RydWN0dXJlLsKgIGlhdmZfcmVt
b3ZlKCkgZXZlbnR1YWxseSBmcmVlcyB0aGUgaWF2Zl9hZGFwdGVyIHN0cnVjdHVyZQo+PiBzbyBp
ZiB0aGVyZSBpcyBhY3RpdmUgd29yayBzY2hlZHVsZWQgaXQgY2FuIGNhdXNlIGEgcGFuaWMuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IEtlbiBDb3ggPGprY0ByZWRoYXQuY29tPgo+IAo+IExpa2UgdGhl
IG90aGVyIHBhdGNoLCB0aGlzIG9uZSBpc24ndCBhcHBseWluZy4KPiAKPiBUaGFua3MsCj4gVG9u
eQo+IApTb3JyeSwgSSB3YXMgaW4gdGhlIHdyb25nIGJyYW5jaCB3aGVuIEkgZ2VuZXJhdGVkIHRo
ZXNlIHBhdGNoZXMuICBQbGVhc2UgCmRpc3JlZ2FyZC4gIEkgd2lsbCByZS1ldmFsdWF0ZSBhbmQg
cmVzZW5kIGlmIG5lY2Vzc2FyeS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFu
QG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtd2lyZWQtbGFuCg==
