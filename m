Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDA273846F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 15:07:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 62A0283508;
	Wed, 21 Jun 2023 13:07:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 62A0283508
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687352874;
	bh=j9rafdQWrCudLqJVhFfZbUkmt9J/Mqb2j+c9SDF5F1A=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fKzm2zgRNvGHQC+h1oRFETpTn2mgHxNhEAGShjzmQGeI0SMnH5JsboBHLv0tjv3sk
	 YoSgMmigEUK5Ok7THXAqVYmd19bkyCWhTQKABYH3iM1nivKZHAIjnyLhux1+fQU0Le
	 QToFSCsBX/bqPlqkEPoCZlg189TPOFcsTWpAA6Ho9HLPd3Xx690j/+32PNbS0tfuSk
	 tHD82bG7hCtUS3qCCSPmspbczAzWYCsQwYxPgFBCeC/jAxFZPrhrTPH4s444vMrT/v
	 Wy9JDLfCPp+VULMBaA2bzbkbzRJePJaOC+0msRwbzRkyqBa02fGdQVNlAnJPcqiMXe
	 3TKOoslGOrgTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7Qx0SGwhSHJL; Wed, 21 Jun 2023 13:07:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4B86A834F5;
	Wed, 21 Jun 2023 13:07:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B86A834F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 814801BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:07:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 662A5834F5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:07:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 662A5834F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aciPiZsyDZOS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 13:07:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBF0F833A7
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id EBF0F833A7
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 13:07:45 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id
 ffacd0b85a97d-3094910b150so5975552f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 06:07:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687352863; x=1689944863;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TU5pe+asCSSBXdxRD62Pc73zx7uMR0rLSJrHUbp5re0=;
 b=YBkG4SOnLopcCCvzRkqcvfrkzOmlabFj+vs+LrA3sdA8o9ySf/zNLaq4AHF+iPbyUF
 n13fCR3vwWavp/ltz+1hf5LPc+uwXmFGInniAj9cKOEkaLnc2w1nm2k3XFlMAxjAXv/H
 WNoWUlTt7tKmVQubVREk80GluZUlhpywqKxB/ktWxeY42dvUj29j1+rxqLTbORa0TQcy
 cg1BzY5T2MRJOajF5yA6qdn4CksWWPapdkH2AAOxUR03W7Hof1AIGebk6idih5CrLYrA
 Fay+TQ49SJrz8Y0QgfKu5t0EjFAjQd1VxzcQbuGaUlG3x/XyvkoAfS/vo/v076wvPEVV
 Js2g==
X-Gm-Message-State: AC+VfDzhdyUXdkqJtZnHdN2LB/4dEqSTM53tt6z8G8BiZS7wN16c8+qc
 TGV5NtPB6FqnCPDrZPrUiTFbjg==
X-Google-Smtp-Source: ACHHUZ4DJdasIxxt0P5VQ3mJXiKww1/aS5p50nS9gK+lncj65MULR6+GXjSyIdfexJKVJjvw3OKC9Q==
X-Received: by 2002:adf:fe48:0:b0:311:10c0:85f0 with SMTP id
 m8-20020adffe48000000b0031110c085f0mr12540283wrs.14.1687352863404; 
 Wed, 21 Jun 2023 06:07:43 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 f7-20020adff8c7000000b0030e6096afb6sm4453467wrq.12.2023.06.21.06.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 06:07:42 -0700 (PDT)
Date: Wed, 21 Jun 2023 15:07:41 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZJL2HUkAtHEw5rq+@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-5-arkadiusz.kubalewski@intel.com>
 <c7480d0a71fb8d62108624878f549c0d91d4c9e6.camel@redhat.com>
 <ZJLktA6RJaVo3BdH@nanopsycho>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZJLktA6RJaVo3BdH@nanopsycho>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687352863; x=1689944863; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=TU5pe+asCSSBXdxRD62Pc73zx7uMR0rLSJrHUbp5re0=;
 b=CkUcMHVR+Z8yWrVCs3aa+R3jQV4jFsz4M5P2+9ftWZgzt/db2V9KrQOJMxJ11GhMwT
 hAUWMvFrEi/d7CfH6HI+KC5ld9dLAWsTabouLLOzs9dkdlrE7FpQ4f2msqpavhbA422u
 Cuix2KNbn4SkOv7AgpXv5F+qCn68JKCtGu+8+yEDR5xIpJogQEKUIBdi70OV5u40ETay
 PH4+qljOaIEG09l2kO/O5FKZplJPDhwdInH3YBc7tz5gLDA/1FS6JieSn676ZDAHvUVq
 9/0iAliOIzsBAlDf0OM3844UB/cUR0YMJAZTe+YI30MfMoVxhr94NC9haKVShpVdLDCu
 ng4A==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=CkUcMHVR
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 04/10] dpll: netlink: Add DPLL
 framework base functions
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
Cc: geert+renesas@glider.be, mst@redhat.com, razor@blackwall.org, phil@nwl.cc,
 javierm@redhat.com, edumazet@google.com, benjamin.tissoires@redhat.com,
 anthony.l.nguyen@intel.com, netdev@vger.kernel.org, linux-clk@vger.kernel.org,
 lucien.xin@gmail.com, leon@kernel.org, corbet@lwn.net,
 linux-rdma@vger.kernel.org, masahiroy@kernel.org, linux-doc@vger.kernel.org,
 jesse.brandeburg@intel.com, vadfed@meta.com, intel-wired-lan@lists.osuosl.org,
 kuba@kernel.org, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, airlied@redhat.com,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

V2VkLCBKdW4gMjEsIDIwMjMgYXQgMDE6NTM6MjRQTSBDRVNULCBqaXJpQHJlc251bGxpLnVzIHdy
b3RlOgo+V2VkLCBKdW4gMjEsIDIwMjMgYXQgMDE6MTg6NTlQTSBDRVNULCBwb3Jvc0ByZWRoYXQu
Y29tIHdyb3RlOgo+PkFya2FkaXVzeiBLdWJhbGV3c2tpIHDDrcWhZSB2IFDDoSAwOS4gMDYuIDIw
MjMgdiAxNDoxOCArMDIwMDoKPj4+IEZyb206IFZhZGltIEZlZG9yZW5rbyA8dmFkaW0uZmVkb3Jl
bmtvQGxpbnV4LmRldj4KPgo+Wy4uLl0KPgo+Q291bGQgeW91IHBlcmhhcHMgY3V0IG91dCB0aGUg
dGV4dCB5b3UgZG9uJ3QgY29tbWVudD8gU2F2ZXMgc29tZSB0aW1lCj5maW5kaW5nIHlvdXIgcmVw
bHkuCj4KPgo+Pj4gK3N0YXRpYyBpbnQKPj4+ICtkcGxsX3NldF9mcm9tX25sYXR0cihzdHJ1Y3Qg
ZHBsbF9kZXZpY2UgKmRwbGwsIHN0cnVjdCBnZW5sX2luZm8KPj4+ICppbmZvKQo+Pj4gK3sKPj4+
ICvCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdCBkcGxsX2RldmljZV9vcHMgKm9wcyA9IGRwbGxf
ZGV2aWNlX29wcyhkcGxsKTsKPj4+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBubGF0dHIgKnRiW0RQ
TExfQV9NQVggKyAxXTsKPj4+ICvCoMKgwqDCoMKgwqDCoGludCByZXQgPSAwOwo+Pj4gKwo+Pj4g
K8KgwqDCoMKgwqDCoMKgbmxhX3BhcnNlKHRiLCBEUExMX0FfTUFYLCBnZW5sbXNnX2RhdGEoaW5m
by0+Z2VubGhkciksCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ2VubG1z
Z19sZW4oaW5mby0+Z2VubGhkciksIE5VTEwsIGluZm8tPmV4dGFjayk7Cj4+PiArwqDCoMKgwqDC
oMKgwqBpZiAodGJbRFBMTF9BX01PREVdKSB7Cj4+SGksCj4+Cj4+SGVyZSBzaG91bGQgYmUgc29t
ZXRoaW5nIGxpa2U6Cj4+ICAgICAgICAgICAgICAgaWYgKCFvcHMtPm1vZGVfc2V0KQo+PiAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIC1FT1BOT1RTVVBQOwo+Cj5XaHk/IEFsbCBkcml2ZXJz
IGltcGxlbWVudCB0aGF0Lgo+SSBiZWxpZXZlIHRoYXQgaXQncyBhY3R1bGxhbHkgYmV0dGVyIHRo
YXQgd2F5LiBGb3IgYSBjYWxsZWQgc2V0dGluZyB1cAo+dGhlIHNhbWUgbW9kZSBpdCBpcyB0aGUg
ZHBsbCBpbiwgdGhlcmUgc2hvdWxkIGJlIDAgcmV0dXJuIGJ5IHRoZSBkcml2ZXIuCj5Ob3RlIHRo
YXQgZHJpdmVyIGhvbGRzIHRoaXMgdmFsdWUuIEknZCBsaWtlIHRvIGtlZXAgdGhpcyBjb2RlIGFz
IGl0IGlzLgoKQWN0dWFsbHksIHlvdSBhcmUgY29ycmVjdCBQZXRyLCBteSBtaXN0YWtlLiBBY3R1
YWxseSwgbm8gZHJpdmVyCmltcGxlbWVudHMgdGhpcy4gQXJrYWRpdXN6LCBjb3VsZCB5b3UgcGxl
YXNlIHJlbW92ZSB0aGlzIG9wIGFuZApwb3NzaWJseSBhbnkgb3RoZXIgdW51c2VkICBvcD8gSXQg
d2lsbCBiZSBhZGRlZCB3aGVuIG5lZWRlZC4KClRoYW5rcyEKCgo+Cj5bLi4uXQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC13aXJlZC1sYW4gbWFp
bGluZyBsaXN0CkludGVsLXdpcmVkLWxhbkBvc3Vvc2wub3JnCmh0dHBzOi8vbGlzdHMub3N1b3Ns
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLXdpcmVkLWxhbgo=
