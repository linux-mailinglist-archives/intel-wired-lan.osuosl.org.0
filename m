Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 39839524ED4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 15:53:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B6C2841999;
	Thu, 12 May 2022 13:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HO6rgNcbnib3; Thu, 12 May 2022 13:53:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CEDD41997;
	Thu, 12 May 2022 13:53:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E0621BF3C3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 490D260F83
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kJSDXuW_fpy2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 13:32:02 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com
 [IPv6:2607:f8b0:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A29CA60F77
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 13:32:02 +0000 (UTC)
Received: by mail-pf1-x42d.google.com with SMTP id c14so4820966pfn.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 06:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=2Iv6t6eGWK0I3i3gE6KEOxTO6HpUw96vozbifvD4KGc=;
 b=CkwW+sKBSZ2khGjbbtwIQqi+1QtTWOdmCpyoXkeGsroKavS93OrhQDUeZQw+R2BU34
 goXIEJETYA4zqv7nhMXfPj0hlCrJEFtYJj8yoeZTCNuLbhJjX/9iMilNpTCEE3qqtuGG
 C9xwOn77iITRJ2AzGaa/+E2PBwdyXNS+FI4VLphcnzBzUoXBY9PEfkedblC24Q5vv/Mh
 nZMLbtQoLBKsizayZvwh/JAtbxujuWZ7QMmXb9T441BcUXRTWkuxtU0vkBYc1GzkkpCQ
 4TiXlFKtn+TZKjm4lKcu7TQhUsRpq2uvSKzlMwuwCUg10NPRVfQ0Eaa32RvV3+6VECZy
 kn8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=2Iv6t6eGWK0I3i3gE6KEOxTO6HpUw96vozbifvD4KGc=;
 b=cC9zZsBKmotsuCuu/dmR4yNDyIH1hB50Izs0lLhntozUKZpBpVzXveAN/1Zmt8XYmH
 s+R0FyOvu30D5sUmPaO7EgX7P2YmEv0LKUuH3qBPKC8lQ4RsziHg6i0QE4fPwayaqRys
 jiJmACPQQKH7uah2FEaIFIE8rOkE8i2nLmRJHWE03BooqPsmqOp7h11o+UgJmgDuiDch
 Pb75iandpMaG4+aYcVma3eZ4PDkyi6LMcVTDYzT8vd3qP+en8c5McUNAXhwhWwHRDgCF
 jjQ00VnrELNCq1TQKkPKb5oKRE9xHgYmP6XNeNbB8/92dL1MXukuJ548znQRjxMeZlHt
 PTTg==
X-Gm-Message-State: AOAM530cebbzZtGM1u6gC25t/EWIzMC/Vh2SGOXgy2ahXGzjFCNsk0NV
 OUtF198VuNwQHYm3Pc68pxA=
X-Google-Smtp-Source: ABdhPJxzZ5yGbUUjVe3AV+cWG4x62FwrAkV1EuQSuifTYAI9p0Whx3dvRJ5tiYGpdL345XKOkM40eg==
X-Received: by 2002:a05:6a00:174a:b0:50d:44ca:4b with SMTP id
 j10-20020a056a00174a00b0050d44ca004bmr30259685pfc.0.1652362322052; 
 Thu, 12 May 2022 06:32:02 -0700 (PDT)
Received: from [192.168.42.11] ([23.91.97.158])
 by smtp.gmail.com with ESMTPSA id
 u1-20020a626001000000b0050dc76281aesm3731908pfb.136.2022.05.12.06.31.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 06:32:01 -0700 (PDT)
Message-ID: <8e7ccd70-78df-64f8-678f-968ad38eae50@gmail.com>
Date: Thu, 12 May 2022 21:31:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: David Laight <David.Laight@ACULAB.COM>,
 "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "jesse.brandeburg@intel.com" <jesse.brandeburg@intel.com>,
 "anthony.l.nguyen@intel.com" <anthony.l.nguyen@intel.com>
References: <20220511092004.30173-1-xiaolinkui@kylinos.cn>
 <3a5a6467b24a46ce8e05fb8a422baa51@AcuMS.aculab.com>
From: Linkui Xiao <xiaolinkui@gmail.com>
In-Reply-To: <3a5a6467b24a46ce8e05fb8a422baa51@AcuMS.aculab.com>
X-Mailman-Approved-At: Thu, 12 May 2022 13:52:57 +0000
Subject: Re: [Intel-wired-lan] [PATCH] igb: Convert a series of if
 statements to switch case
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Linkui Xiao <xiaolinkui@kylinos.cn>,
 "edumazet@google.com" <edumazet@google.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com" <pabeni@redhat.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RGVhciBEYXZpZCwKClRoYW5rcyBmb3IgeW91ciByZXBseQoKTG9naWNhbGx5IHRoZSB0d28gdmVy
c2lvbnMgYXJlIGVxdWl2YWxlbnQsIGh3LT5tYWMudHlwZSBpcyBkZWZpbmVkIGFzIApmb2xsb3dz
OgoKZW51bSBlMTAwMF9tYWNfdHlwZSB7CiDCoMKgwqDCoMKgwqDCoCBlMTAwMF91bmRlZmluZWQg
PSAwLAogwqDCoMKgwqDCoMKgwqAgZTEwMDBfODI1NzUsCiDCoMKgwqDCoMKgwqDCoCBlMTAwMF84
MjU3NiwKIMKgwqDCoMKgwqDCoMKgIGUxMDAwXzgyNTgwLAogwqDCoMKgwqDCoMKgwqAgZTEwMDBf
aTM1MCwKIMKgwqDCoMKgwqDCoMKgIGUxMDAwX2kzNTQsCiDCoMKgwqDCoMKgwqDCoCBlMTAwMF9p
MjEwLAogwqDCoMKgwqDCoMKgwqAgZTEwMDBfaTIxMSwKIMKgwqDCoMKgwqDCoMKgIGUxMDAwX251
bV9tYWNzwqAgLyogTGlzdCBpcyAxLWJhc2VkLCBzbyBzdWJ0cmFjdCAxIGZvciB0cnVlIApjb3Vu
dC4gKi8KfTsKVGhlcmVmb3JlLCBody0+bWFjLnR5cGUgPCBlMTAwMF84MjU3NiBoYXMgb25seSB0
d28gY2FzZXM6IAplMTAwMF91bmRlZmluZWQgb3IgZTEwMDBfODI1NzUuCgpPbiA1LzEyLzIyIDIx
OjE0LCBEYXZpZCBMYWlnaHQgd3JvdGU6Cj4+IEZyb206IExpbmt1aSBYaWFvIDx4aWFvbGlua3Vp
QGt5bGlub3MuY24+Cj4+Cj4+IENvbnZlcnQgYSBzZXJpZXMgb2YgaWYgc3RhdGVtZW50cyB0aGF0
IGhhbmRsZSBkaWZmZXJlbnQgZXZlbnRzIHRvIGEgc3dpdGNoCj4+IGNhc2Ugc3RhdGVtZW50IHRv
IHNpbXBsaWZ5IHRoZSBjb2RlLgo+Pgo+PiBWMjogZml4IHBhdGNoIGRlc2NyaXB0aW9uIGFuZCBl
bWFpbCBmb3JtYXQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExpbmt1aSBYaWFvIDx4aWFvbGlua3Vp
QGt5bGlub3MuY24+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9p
Z2JfbWFpbi5jIHwgMTIgKysrKysrKystLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0
aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwv
aWdiL2lnYl9tYWluLmMKPj4gaW5kZXggMzRiMzNiMjFlMGRjLi40Y2UwNzE4ZWVmZjYgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4+ICsr
KyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lnYi9pZ2JfbWFpbi5jCj4+IEBAIC00NTg4
LDEzICs0NTg4LDE3IEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBpZ2Jfc2V0X3ZmX3ZsYW5fc3RyaXAo
c3RydWN0IGlnYl9hZGFwdGVyICphZGFwdGVyLAo+PiAgICAgICAgc3RydWN0IGUxMDAwX2h3ICpo
dyA9ICZhZGFwdGVyLT5odzsKPj4gICAgICAgIHUzMiB2YWwsIHJlZzsKPj4KPj4gLSAgICAgaWYg
KGh3LT5tYWMudHlwZSA8IGUxMDAwXzgyNTc2KQo+PiArICAgICBzd2l0Y2ggKGh3LT5tYWMudHlw
ZSkgewo+PiArICAgICBjYXNlIGUxMDAwX3VuZGVmaW5lZDoKPj4gKyAgICAgY2FzZSBlMTAwMF84
MjU3NToKPj4gICAgICAgICAgICAgICAgcmV0dXJuOwo+PiAtCj4+IC0gICAgIGlmIChody0+bWFj
LnR5cGUgPT0gZTEwMDBfaTM1MCkKPj4gKyAgICAgY2FzZSBlMTAwMF9pMzUwOgo+PiAgICAgICAg
ICAgICAgICByZWcgPSBFMTAwMF9EVk1PTFIodmZuKTsKPj4gLSAgICAgZWxzZQo+PiArICAgICAg
ICAgICAgIGJyZWFrOwo+PiArICAgICBkZWZhdWx0Ogo+PiAgICAgICAgICAgICAgICByZWcgPSBF
MTAwMF9WTU9MUih2Zm4pOwo+PiArICAgICAgICAgICAgIGJyZWFrOwo+PiArICAgICB9Cj4+Cj4+
ICAgICAgICB2YWwgPSByZDMyKHJlZyk7Cj4+ICAgICAgICBpZiAoZW5hYmxlKQo+PiAtLQo+PiAy
LjE3LjEKPiBBcmUgeW91IHN1cmUgdGhhdCBnZW5lcmF0ZXMgcmVhc29uYWJsZSBjb2RlPwo+IFRo
ZSBjb21waWxlciBjb3VsZCBnZW5lcmF0ZSBzb21ldGhpbmcgY29tcGxldGVseSBkaWZmZXJlbnQK
PiBmb3IgdGhlIHR3byB2ZXJzaW9ucy4KPgo+IEl0IGlzbid0IGV2ZW4gb2J2aW91cyB0aGV5IGFy
ZSBlcXVpdmFsZW50Lgo+Cj4gCURhdmlkCj4KPiAtCj4gUmVnaXN0ZXJlZCBBZGRyZXNzIExha2Vz
aWRlLCBCcmFtbGV5IFJvYWQsIE1vdW50IEZhcm0sIE1pbHRvbiBLZXluZXMsIE1LMSAxUFQsIFVL
Cj4gUmVnaXN0cmF0aW9uIE5vOiAxMzk3Mzg2IChXYWxlcykKPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0
CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
