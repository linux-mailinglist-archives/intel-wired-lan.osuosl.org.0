Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7991350D44B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 24 Apr 2022 20:52:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 92AA940158;
	Sun, 24 Apr 2022 18:52:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gaW4qO6zreaR; Sun, 24 Apr 2022 18:52:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C42940145;
	Sun, 24 Apr 2022 18:52:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E8571BF316
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 333A240878
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id glxJ7AVtI4xa for <intel-wired-lan@lists.osuosl.org>;
 Sun, 24 Apr 2022 18:52:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 19C7A40299
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 18:52:31 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id j15so4746136wrb.2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 24 Apr 2022 11:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lReuseCvVNEXlTNL6o6EN+A35b6tYTj8OfIs+Kswr2w=;
 b=Q/lDeS27Mli6BRmeY0+ReefxtLnq4WxEwOUeT23rab46xj9eLTLuRI+y6emQa/uvJ3
 yifh02I+4aZKTF/Vy/urexsI9DOfBN6/Kj4U0Gx1K9JVqsaatT8Oi3amtqIn6ixWZiHv
 XF9M01eykb6CK6J27qfas0wtFodk89XkyCgvO1B6dTvnLtP3+SRjiIOyaBU762tRIgc0
 fxOA5ZUa80Z0V2zzMwxGYyG2MhhjWo/D/J4a4Y17sALe1ZZ6E8LBhd3SmPFxchcimHwo
 FaWsMtf8VdXiZuEc1jFR1kSCszoDsbFSMWMp8h0/wGkm9GWRG4HO+kArfHJJJKzcJHkY
 d4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lReuseCvVNEXlTNL6o6EN+A35b6tYTj8OfIs+Kswr2w=;
 b=lJAxeBYcDSVC9K8qo0OuqicXyIT2nA8F2GPuRSCGGLcEoYyT+LgsmU6zJhASxoGFCQ
 7+pRKkvuz0NLi+27lP7fwldMJ0/q9XfCgZWZzvMFi+0SJHXrZjoCo1KUbgN/dbzSpdJN
 6TU4erKN5iu95Dd01wgtyci8X43KZloEkw3IhaMnCHFMP5ZG+WHmHXNj27+EMWBI80GZ
 XTUzRTyktXsicJyR5jgUg/Zlw6aK0Yeid0v536vVrbrtbdIRSe0UbPQLbRIxMpfVLWaN
 KmljR1I5nvv5edwK8U6RMLldBlJrLrSDQF6JH2NUJEIlGdpAmy17HwbpVDISWQx8JK8o
 NxQA==
X-Gm-Message-State: AOAM532Ry+jKMSrBYgTsKMKHA+TLFoo5enLsAKGbmggi32/fun/LPFTc
 KWmw1zPE4S5VIVLk/gXixGc=
X-Google-Smtp-Source: ABdhPJzdSu+tOKnYLk2M4Bt2LpLZBmteIWBUSxTUVFX3oPW3/U02vyy5C9c3xv5wG+t2IljNl73spg==
X-Received: by 2002:a05:6000:381:b0:20a:8690:9ac6 with SMTP id
 u1-20020a056000038100b0020a86909ac6mr11485726wrf.209.1650826350182; 
 Sun, 24 Apr 2022 11:52:30 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 a4-20020a056000188400b0020a9ec6e8e3sm7871526wri.55.2022.04.24.11.52.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 11:52:29 -0700 (PDT)
Message-ID: <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
Date: Sun, 24 Apr 2022 20:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 2/2] net: vxlan:
 vxlan_core.c: Add extack support to vxlan_fdb_delete
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
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, vladimir.oltean@nxp.com, sbrivio@redhat.com,
 claudiu.manoil@nxp.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmi2aTigI8v2aTigI8v2aLZoNmi2aIg2aHZqDrZodmlLCBKdWxpYSBMYXdhbGwgd3JvdGU6
Cj4KPiBPbiBTdW4sIDI0IEFwciAyMDIyLCBBbGFhIE1vaGFtZWQgd3JvdGU6Cj4KPj4gQWRkIGV4
dGFjayB0byB2eGxhbl9mZGJfZGVsZXRlIGFuZCB2eGxhbl9mZGJfcGFyc2UKPiBJdCBjb3VsZCBi
ZSBoZWxwZnVsIHRvIHNheSBtb3JlIGFib3V0IHdoYXQgYWRkaW5nIGV4dGFjayBzdXBwb3J0IGlu
dm9sdmVzLgo+Cj4+IFNpZ25lZC1vZmYtYnk6IEFsYWEgTW9oYW1lZCA8ZW5nLmFsYWFtb2hhbWVk
c29saW1hbi5hbUBnbWFpbC5jb20+Cj4+IC0tLQo+PiBjaGFuZ2VzIGluIFYyOgo+PiAJLSBmaXgg
c3BlbGxpbmcgdnhsYW5fZmRiX2RlbGV0ZQo+PiAJLSBhZGQgbWlzc2luZyBicmFjZXMKPj4gCS0g
ZWRpdCBlcnJvciBtZXNzYWdlCj4+IC0tLQo+PiBjaGFuZ2VzIGluIFYzOgo+PiAJZml4IGVycm9y
cyByZXBvcnRlZCBieSBjaGVja3BhdGNoLnBsCj4gQnV0IHlvdXIgY2hhbmdlcyB3b3VsZCBzZWVt
IHRvIGFsc28gYmUgaW50cm9kdWNpbmcgbW9yZSBjaGVja3BhdGNoIGVycm9ycywKPiBiZWNhdXNl
IHRoZSBMaW51eCBrZXJuZWwgY29kaW5nIHN0eWxlIHB1dHMgYSBzcGFjZSBiZWZvcmUgYW4geyBh
dCB0aGUKPiBzdGFydCBvZiBhbiBpZiBicmFuY2guCkkgcmFuIGNoZWNrcGF0Y2ggc2NyaXB0IGJl
Zm9yZSBzdWJtaXR0aW5nIHRoaXMgcGF0Y2ggYW5kIGdvdCBubyBlcnJvcgo+Cj4ganVsaWEKPgo+
PiAtLS0KPj4gICBkcml2ZXJzL25ldC92eGxhbi92eGxhbl9jb3JlLmMgfCAzNiArKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tCj4+ICAgMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlv
bnMoKyksIDExIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvdnhs
YW4vdnhsYW5fY29yZS5jIGIvZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5jCj4+IGluZGV4
IGNmMmY2MDAzNzM0MC4uNGUxODg2NjU1MTAxIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL25ldC92
eGxhbi92eGxhbl9jb3JlLmMKPj4gKysrIGIvZHJpdmVycy9uZXQvdnhsYW4vdnhsYW5fY29yZS5j
Cj4+IEBAIC0xMTI5LDE5ICsxMTI5LDIzIEBAIHN0YXRpYyB2b2lkIHZ4bGFuX2ZkYl9kc3RfZGVz
dHJveShzdHJ1Y3QgdnhsYW5fZGV2ICp2eGxhbiwgc3RydWN0IHZ4bGFuX2ZkYiAqZiwKPj4KPj4g
ICBzdGF0aWMgaW50IHZ4bGFuX2ZkYl9wYXJzZShzdHJ1Y3QgbmxhdHRyICp0YltdLCBzdHJ1Y3Qg
dnhsYW5fZGV2ICp2eGxhbiwKPj4gICAJCQkgICB1bmlvbiB2eGxhbl9hZGRyICppcCwgX19iZTE2
ICpwb3J0LCBfX2JlMzIgKnNyY192bmksCj4+IC0JCQkgICBfX2JlMzIgKnZuaSwgdTMyICppZmlu
ZGV4LCB1MzIgKm5oaWQpCj4+ICsJCQkgICBfX2JlMzIgKnZuaSwgdTMyICppZmluZGV4LCB1MzIg
Km5oaWQsIHN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykKPj4gICB7Cj4+ICAgCXN0cnVj
dCBuZXQgKm5ldCA9IGRldl9uZXQodnhsYW4tPmRldik7Cj4+ICAgCWludCBlcnI7Cj4+Cj4+ICAg
CWlmICh0YltOREFfTkhfSURdICYmICh0YltOREFfRFNUXSB8fCB0YltOREFfVk5JXSB8fCB0YltO
REFfSUZJTkRFWF0gfHwKPj4gLQkgICAgdGJbTkRBX1BPUlRdKSkKPj4gLQkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsJICAgIHRiW05EQV9QT1JUXSkpewo+PiArCQkJTkxfU0VUX0VSUl9NU0coZXh0YWNr
LCAiRFNULCBWTkksIGlmaW5kZXggYW5kIHBvcnQgYXJlIG11dHVhbGx5IGV4Y2x1c2l2ZSB3aXRo
IE5IX0lEIik7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+Pgo+PiAgIAlpZiAodGJb
TkRBX0RTVF0pIHsKPj4gICAJCWVyciA9IHZ4bGFuX25sYV9nZXRfYWRkcihpcCwgdGJbTkRBX0RT
VF0pOwo+PiAtCQlpZiAoZXJyKQo+PiArCQlpZiAoZXJyKXsKPj4gKwkJCU5MX1NFVF9FUlJfTVNH
KGV4dGFjaywgIlVuc3VwcG9ydGVkIGFkZHJlc3MgZmFtaWx5Iik7Cj4+ICAgCQkJcmV0dXJuIGVy
cjsKPj4gKwkJfQo+PiAgIAl9IGVsc2Ugewo+PiAgIAkJdW5pb24gdnhsYW5fYWRkciAqcmVtb3Rl
ID0gJnZ4bGFuLT5kZWZhdWx0X2RzdC5yZW1vdGVfaXA7Cj4+Cj4+IEBAIC0xMTU3LDI0ICsxMTYx
LDMwIEBAIHN0YXRpYyBpbnQgdnhsYW5fZmRiX3BhcnNlKHN0cnVjdCBubGF0dHIgKnRiW10sIHN0
cnVjdCB2eGxhbl9kZXYgKnZ4bGFuLAo+PiAgIAl9Cj4+Cj4+ICAgCWlmICh0YltOREFfUE9SVF0p
IHsKPj4gLQkJaWYgKG5sYV9sZW4odGJbTkRBX1BPUlRdKSAhPSBzaXplb2YoX19iZTE2KSkKPj4g
KwkJaWYgKG5sYV9sZW4odGJbTkRBX1BPUlRdKSAhPSBzaXplb2YoX19iZTE2KSl7Cj4+ICsJCQlO
TF9TRVRfRVJSX01TRyhleHRhY2ssICJJbnZhbGlkIHZ4bGFuIHBvcnQiKTsKPj4gICAJCQlyZXR1
cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiAgIAkJKnBvcnQgPSBubGFfZ2V0X2JlMTYodGJbTkRBX1BP
UlRdKTsKPj4gICAJfSBlbHNlIHsKPj4gICAJCSpwb3J0ID0gdnhsYW4tPmNmZy5kc3RfcG9ydDsK
Pj4gICAJfQo+Pgo+PiAgIAlpZiAodGJbTkRBX1ZOSV0pIHsKPj4gLQkJaWYgKG5sYV9sZW4odGJb
TkRBX1ZOSV0pICE9IHNpemVvZih1MzIpKQo+PiArCQlpZiAobmxhX2xlbih0YltOREFfVk5JXSkg
IT0gc2l6ZW9mKHUzMikpewo+PiArCQkJTkxfU0VUX0VSUl9NU0coZXh0YWNrLCAiSW52YWxpZCB2
bmkiKTsKPj4gICAJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiAgIAkJKnZuaSA9IGNwdV90
b19iZTMyKG5sYV9nZXRfdTMyKHRiW05EQV9WTkldKSk7Cj4+ICAgCX0gZWxzZSB7Cj4+ICAgCQkq
dm5pID0gdnhsYW4tPmRlZmF1bHRfZHN0LnJlbW90ZV92bmk7Cj4+ICAgCX0KPj4KPj4gICAJaWYg
KHRiW05EQV9TUkNfVk5JXSkgewo+PiAtCQlpZiAobmxhX2xlbih0YltOREFfU1JDX1ZOSV0pICE9
IHNpemVvZih1MzIpKQo+PiArCQlpZiAobmxhX2xlbih0YltOREFfU1JDX1ZOSV0pICE9IHNpemVv
Zih1MzIpKXsKPj4gKwkJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywgIkludmFsaWQgc3JjIHZuaSIp
Owo+PiAgIAkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICAgCQkqc3JjX3ZuaSA9IGNwdV90
b19iZTMyKG5sYV9nZXRfdTMyKHRiW05EQV9TUkNfVk5JXSkpOwo+PiAgIAl9IGVsc2Ugewo+PiAg
IAkJKnNyY192bmkgPSB2eGxhbi0+ZGVmYXVsdF9kc3QucmVtb3RlX3ZuaTsKPj4gQEAgLTExODMs
MTIgKzExOTMsMTYgQEAgc3RhdGljIGludCB2eGxhbl9mZGJfcGFyc2Uoc3RydWN0IG5sYXR0ciAq
dGJbXSwgc3RydWN0IHZ4bGFuX2RldiAqdnhsYW4sCj4+ICAgCWlmICh0YltOREFfSUZJTkRFWF0p
IHsKPj4gICAJCXN0cnVjdCBuZXRfZGV2aWNlICp0ZGV2Owo+Pgo+PiAtCQlpZiAobmxhX2xlbih0
YltOREFfSUZJTkRFWF0pICE9IHNpemVvZih1MzIpKQo+PiArCQlpZiAobmxhX2xlbih0YltOREFf
SUZJTkRFWF0pICE9IHNpemVvZih1MzIpKXsKPj4gKwkJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywg
IkludmFsaWQgaWZpbmRleCIpOwo+PiAgIAkJCXJldHVybiAtRUlOVkFMOwo+PiArCQl9Cj4+ICAg
CQkqaWZpbmRleCA9IG5sYV9nZXRfdTMyKHRiW05EQV9JRklOREVYXSk7Cj4+ICAgCQl0ZGV2ID0g
X19kZXZfZ2V0X2J5X2luZGV4KG5ldCwgKmlmaW5kZXgpOwo+PiAtCQlpZiAoIXRkZXYpCj4+ICsJ
CWlmICghdGRldil7Cj4+ICsJCQlOTF9TRVRfRVJSX01TRyhleHRhY2ssIkRldmljZSBub3QgZm91
bmQiKTsKPj4gICAJCQlyZXR1cm4gLUVBRERSTk9UQVZBSUw7Cj4+ICsJCX0KPj4gICAJfSBlbHNl
IHsKPj4gICAJCSppZmluZGV4ID0gMDsKPj4gICAJfQo+PiBAQCAtMTIyNiw3ICsxMjQwLDcgQEAg
c3RhdGljIGludCB2eGxhbl9mZGJfYWRkKHN0cnVjdCBuZG1zZyAqbmRtLCBzdHJ1Y3QgbmxhdHRy
ICp0YltdLAo+PiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4+Cj4+ICAgCWVyciA9IHZ4bGFuX2ZkYl9w
YXJzZSh0YiwgdnhsYW4sICZpcCwgJnBvcnQsICZzcmNfdm5pLCAmdm5pLCAmaWZpbmRleCwKPj4g
LQkJCSAgICAgICZuaGlkKTsKPj4gKwkJCSAgICAgICZuaGlkLCBleHRhY2spOwo+PiAgIAlpZiAo
ZXJyKQo+PiAgIAkJcmV0dXJuIGVycjsKPj4KPj4gQEAgLTEyOTEsNyArMTMwNSw3IEBAIHN0YXRp
YyBpbnQgdnhsYW5fZmRiX2RlbGV0ZShzdHJ1Y3QgbmRtc2cgKm5kbSwgc3RydWN0IG5sYXR0ciAq
dGJbXSwKPj4gICAJaW50IGVycjsKPj4KPj4gICAJZXJyID0gdnhsYW5fZmRiX3BhcnNlKHRiLCB2
eGxhbiwgJmlwLCAmcG9ydCwgJnNyY192bmksICZ2bmksICZpZmluZGV4LAo+PiAtCQkJICAgICAg
Jm5oaWQpOwo+PiArCQkJICAgICAgJm5oaWQsIGV4dGFjayk7Cj4+ICAgCWlmIChlcnIpCj4+ICAg
CQlyZXR1cm4gZXJyOwo+Pgo+PiAtLQo+PiAyLjM2LjAKPj4KPj4KPj4KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcg
bGlzdApJbnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
