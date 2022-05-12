Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EFA524805
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 May 2022 10:39:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A2C3260B4D;
	Thu, 12 May 2022 08:39:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9CsmhkVaoXP2; Thu, 12 May 2022 08:39:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 958A460A71;
	Thu, 12 May 2022 08:39:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 961151BF84C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 08:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D58E60A71
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 08:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EaxRHJbLtSK1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 May 2022 08:39:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 995B760655
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 08:39:43 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id t6so6219483wra.4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 May 2022 01:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
 b=iH0GrPY8XRZBVfl7obokvqEguSGfgHDNW8WAl7iOB+g/Tlurte7GKIvSy3OEiTVO04
 eeh/9EJnTUt6gzmU0bJjxim8YpzFs4XRKTC8P/aVgEsfaam05KCZbdiKxj29+g1xkBf2
 UswmbtAGRTFvqTtmGRyBTdOYcZ91J6QPLUDDL9SOMpFlBJobtcsSwimEIYKHDMDu7YNx
 1BVEe5l3GsRKpiGKl6dB3pC9DEHDcu+83r0s6ZCjgVOR2/pWwazCqY3XbkZXfdcQz8RU
 dWawCs8ihVRvFOIIN+xL2Nx6s/6O7CHzwkCSwJ30NXqCG6IpajUa2NASiP9w4dKNfVa3
 GKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
 b=T49U3+Tv3Y+0dh3Jz4ak/dlbEu7tskQQ0TR9a/PM0s8Cf8izFRvQf4PUF7+Fu2BEpF
 2kG0G6lt3R0w5zci7zCDF7OdgODYeaaXMp4hnlB8l9cwzJfjvIrP33BZeDr5pyhwUv/9
 15bBs6mlZxASSlz7Jgl++GbAFwv+Y6eCWXFDxMHI257LaUjEjCdqB5S3vz62eAJGjUyS
 NMrsPYaS53n/7gwUOHrMlBPONyFQhMMWMSceCXaT8WHYeD/H6QCq/mgs+JuJ0Im3N4bv
 4BU4ES/VgRGLIqQbbwwIJfTfhNBvoeH2WZVtH/ERMYtsIgVxf3KLeyIFBOkIAxvTVAr4
 0gFg==
X-Gm-Message-State: AOAM532tR8MPFH6MnHNCGogr3aPKpbNG0esVgz2m6DKKPPaygmv/afqW
 bqN7TnnQKV/tcUXHsxcenO4=
X-Google-Smtp-Source: ABdhPJy4QFCs5Y2zJviQsqFOIlBsNYoUoAruuqg+WA6gkEtBygBCD5Bsi3bVQffDIbA1Z2Vm9UAlEw==
X-Received: by 2002:adf:f748:0:b0:20c:86d5:c343 with SMTP id
 z8-20020adff748000000b0020c86d5c343mr26423046wrp.477.1652344781737; 
 Thu, 12 May 2022 01:39:41 -0700 (PDT)
Received: from [192.168.1.8] ([197.57.250.210])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a5d4cc1000000b0020c5253d8ccsm3584868wrt.24.2022.05.12.01.39.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 01:39:41 -0700 (PDT)
Message-ID: <191b395a-996b-597e-4ee9-06722ac3c776@gmail.com>
Date: Thu, 12 May 2022 10:39:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
 <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
 <20220509154603.4a7b4243@kernel.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220509154603.4a7b4243@kernel.org>
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 2/2] net: vxlan: Add
 extack support to vxlan_fdb_delete
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
 claudiu.manoil@nxp.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Ck9uINmh2aDigI8v2aXigI8v2aLZoNmi2aIg2aDZoDrZpNmmLCBKYWt1YiBLaWNpbnNraSB3cm90
ZToKPiBPbiBUaHUsICA1IE1heSAyMDIyIDE3OjA5OjU4ICswMjAwIEFsYWEgTW9oYW1lZCB3cm90
ZToKPj4gKwkJCU5MX1NFVF9FUlJfTVNHKGV4dGFjaywKPj4gKwkJCQkJCSAgIkRTVCwgVk5JLCBp
ZmluZGV4IGFuZCBwb3J0IGFyZSBtdXR1YWxseSBleGNsdXNpdmUgd2l0aCBOSF9JRCIpOwo+IFRo
aXMgY29udGludWF0aW9uIGxpbmUgc3RpbGwgZG9lcyBub3QgYWxpZ24gd2l0aCB0aGUgb3Blbmlu
ZyBicmFja2V0Lgo+IExvb2sgaGVyZSBpZiB5b3VyIGVtYWlsIGNsaWVudCBtYWtlcyBpdCBoYXJk
IHRvIHNlZToKPgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9hYzRiNmM2NTBiNjUxOWNj
NTZiYWEzMmVmMjA0MTU0NjBhNWFhOGVlLjE2NTE3NjI4MzAuZ2l0LmVuZy5hbGFhbW9oYW1lZHNv
bGltYW4uYW1AZ21haWwuY29tLwo+Cj4gU2FtZSBzdG9yeSBpbiBwYXRjaCAxOgo+Cj4+ICAgc3Rh
dGljIGludCBvY2Vsb3RfcG9ydF9mZGJfZGVsKHN0cnVjdCBuZG1zZyAqbmRtLCBzdHJ1Y3Qgbmxh
dHRyICp0YltdLAo+PiAgIAkJCSAgICAgICBzdHJ1Y3QgbmV0X2RldmljZSAqZGV2LAo+PiAtCQkJ
ICAgICAgIGNvbnN0IHVuc2lnbmVkIGNoYXIgKmFkZHIsIHUxNiB2aWQpCj4+ICsJCQkgICAgICAg
Y29uc3QgdW5zaWduZWQgY2hhciAqYWRkciwgdTE2IHZpZCwKPj4gKwkJCQkgICBzdHJ1Y3QgbmV0
bGlua19leHRfYWNrICpleHRhY2spCj4gYW5kIGhlcmU6Cj4KPj4gICBzdGF0aWMgaW50IHZ4bGFu
X2ZkYl9kZWxldGUoc3RydWN0IG5kbXNnICpuZG0sIHN0cnVjdCBubGF0dHIgKnRiW10sCj4+ICAg
CQkJICAgIHN0cnVjdCBuZXRfZGV2aWNlICpkZXYsCj4+IC0JCQkgICAgY29uc3QgdW5zaWduZWQg
Y2hhciAqYWRkciwgdTE2IHZpZCkKPj4gKwkJCSAgICBjb25zdCB1bnNpZ25lZCBjaGFyICphZGRy
LCB1MTYgdmlkLAo+PiArCQkJCXN0cnVjdCBuZXRsaW5rX2V4dF9hY2sgKmV4dGFjaykKCgpJIHdp
bGwgZml4IGl0LCB0aGFua3MuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFpbGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBv
c3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3NsLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LXdpcmVkLWxhbgo=
