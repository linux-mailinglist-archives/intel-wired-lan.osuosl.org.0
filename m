Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C75B73826F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jun 2023 13:53:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D6E7F61108;
	Wed, 21 Jun 2023 11:53:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D6E7F61108
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687348416;
	bh=yjViXb1BEla/4ZJFf2QWyp7L4Z4/RG4hmiW8slLQR9c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X3G75kpHD98aCworrP/eZQyoO573pRTP6cq7ThCatY/QfNYk2DI1mZWyIV20Zj5A4
	 ADImNZUC1ijBhxFEmcNgva66T+vb5S66DdgW1Bfq5y4VvLsMOzT/OMwizfSKQDA/OM
	 1CvqwXvfUxvPo9/FyRsucBHlSUlS1mFI4qwG2Oe3uOugZtbf9nvyNSU5WIFNnto7WH
	 QTfoEVRUX9I5ZVx3yzyFc1d/Qb0MYBCsLovLu+O0BlcZKv/vShcwEcgE9iTYf4jZbr
	 y2v88+GNIBo6oR5j3Tp9/KL7acQiSA+Jsc85Xi3UCrJXL9D/fp2oupX9gTJ9T8JesJ
	 nnrUarDWOjIKw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lB61Oj7Df6A3; Wed, 21 Jun 2023 11:53:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C099A60E11;
	Wed, 21 Jun 2023 11:53:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C099A60E11
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F1E4E1BF2A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:53:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CA56840BE4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CA56840BE4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zLofnItJhkGh for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jun 2023 11:53:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 075EF40BC1
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 075EF40BC1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 11:53:28 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id
 ffacd0b85a97d-3112f256941so3757078f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jun 2023 04:53:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687348406; x=1689940406;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VWVbrBam1C3VHFxu2Gp+YYi2JGVprd45HzgEWZLjxNI=;
 b=f49QRIrRCrp6VFvIKZzfqzcoC/JhAnDQ2wH3J485mAfkd8bJj54NNfSjgm8A+1RpW7
 96oWdGuDiQM4pa1onBpMaPmTeK8fQcftjOLfwsareMtaJitZT6eQ0worRDHCvAj8JCF0
 zGAsgHAq+0FVnL5dhQPKJw1vsr1exjpGSe144r77YEVv8GutNea71pIZJeWPPvFeGd/9
 GHJNT8o/wb5tPpO025OaYeSrHWAW4auT7Q4MvkkggQUWOcatdT8LNFXXoFCy1bxK9NjV
 GVnCoHt/ioJz/2w0fBv/YK79PMkGyHt9KnFozBhncOaRq4xpGDpv+zX2MDFdsIWSaUcD
 BIMg==
X-Gm-Message-State: AC+VfDzwh3VY8hfiQfvMD/Ff+X0BbOmYC4+Ujf9zvW1yjZzzIajJTCyx
 FuzJywboRRkmmEq+MScdfe6+EA==
X-Google-Smtp-Source: ACHHUZ5c8gzF87ZPOzSygN9j53VtOdiY9gi5DBzBT3zEwY7bTIXpP8dgWGQLA/+KsDQtBIq8+e5vDw==
X-Received: by 2002:a05:6000:1252:b0:311:1712:621 with SMTP id
 j18-20020a056000125200b0031117120621mr10087707wrx.46.1687348406491; 
 Wed, 21 Jun 2023 04:53:26 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b8-20020adff248000000b003063772a55bsm4283305wrp.61.2023.06.21.04.53.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jun 2023 04:53:25 -0700 (PDT)
Date: Wed, 21 Jun 2023 13:53:24 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Petr Oros <poros@redhat.com>
Message-ID: <ZJLktA6RJaVo3BdH@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-5-arkadiusz.kubalewski@intel.com>
 <c7480d0a71fb8d62108624878f549c0d91d4c9e6.camel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c7480d0a71fb8d62108624878f549c0d91d4c9e6.camel@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687348406; x=1689940406; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=VWVbrBam1C3VHFxu2Gp+YYi2JGVprd45HzgEWZLjxNI=;
 b=m4NkOGZMB4TCMVjcELrLjRRubYuX8F1IGWT0PfmzIQSLSjXRajmdfJhKqn4XFjJL+Q
 eRCVpVSB9sTomVtJdbAvTYMqrY35FdnFXS+piL/ZI7D4zTYkVVedZ4O45KfmXLmZUmSo
 dyPWKtwtIy+G5RM0B3ciFRoFRa0lqxrvgkrp2/PjoYCGJsHAq2Wq8zqQYRzOVhtfVYOP
 bEEsyZvxH68MlHiWvEyHpHQNL866S4AvvqoMfRvV3ekbZI6I04U0pddSwK6oWF392SYg
 W5HB6vUWMe46K8v9Oi+tVhbAblBpJPnZ0bxSwYrNwrPDxP9NpOOKqSd0D/S3sPMWblaF
 86gw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=m4NkOGZM
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

V2VkLCBKdW4gMjEsIDIwMjMgYXQgMDE6MTg6NTlQTSBDRVNULCBwb3Jvc0ByZWRoYXQuY29tIHdy
b3RlOgo+QXJrYWRpdXN6IEt1YmFsZXdza2kgcMOtxaFlIHYgUMOhIDA5LiAwNi4gMjAyMyB2IDE0
OjE4ICswMjAwOgo+PiBGcm9tOiBWYWRpbSBGZWRvcmVua28gPHZhZGltLmZlZG9yZW5rb0BsaW51
eC5kZXY+CgpbLi4uXQoKQ291bGQgeW91IHBlcmhhcHMgY3V0IG91dCB0aGUgdGV4dCB5b3UgZG9u
J3QgY29tbWVudD8gU2F2ZXMgc29tZSB0aW1lCmZpbmRpbmcgeW91ciByZXBseS4KCgo+PiArc3Rh
dGljIGludAo+PiArZHBsbF9zZXRfZnJvbV9ubGF0dHIoc3RydWN0IGRwbGxfZGV2aWNlICpkcGxs
LCBzdHJ1Y3QgZ2VubF9pbmZvCj4+ICppbmZvKQo+PiArewo+PiArwqDCoMKgwqDCoMKgwqBjb25z
dCBzdHJ1Y3QgZHBsbF9kZXZpY2Vfb3BzICpvcHMgPSBkcGxsX2RldmljZV9vcHMoZHBsbCk7Cj4+
ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBubGF0dHIgKnRiW0RQTExfQV9NQVggKyAxXTsKPj4gK8Kg
wqDCoMKgwqDCoMKgaW50IHJldCA9IDA7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgbmxhX3BhcnNl
KHRiLCBEUExMX0FfTUFYLCBnZW5sbXNnX2RhdGEoaW5mby0+Z2VubGhkciksCj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZW5sbXNnX2xlbihpbmZvLT5nZW5saGRyKSwgTlVM
TCwgaW5mby0+ZXh0YWNrKTsKPj4gK8KgwqDCoMKgwqDCoMKgaWYgKHRiW0RQTExfQV9NT0RFXSkg
ewo+SGksCj4KPkhlcmUgc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgo+ICAgICAgICAgICAgICAg
aWYgKCFvcHMtPm1vZGVfc2V0KQo+ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVPUE5P
VFNVUFA7CgpXaHk/IEFsbCBkcml2ZXJzIGltcGxlbWVudCB0aGF0LgpJIGJlbGlldmUgdGhhdCBp
dCdzIGFjdHVsbGFseSBiZXR0ZXIgdGhhdCB3YXkuIEZvciBhIGNhbGxlZCBzZXR0aW5nIHVwCnRo
ZSBzYW1lIG1vZGUgaXQgaXMgdGhlIGRwbGwgaW4sIHRoZXJlIHNob3VsZCBiZSAwIHJldHVybiBi
eSB0aGUgZHJpdmVyLgpOb3RlIHRoYXQgZHJpdmVyIGhvbGRzIHRoaXMgdmFsdWUuIEknZCBsaWtl
IHRvIGtlZXAgdGhpcyBjb2RlIGFzIGl0IGlzLgoKWy4uLl0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtd2lyZWQtbGFuIG1haWxpbmcgbGlzdApJ
bnRlbC13aXJlZC1sYW5Ab3N1b3NsLm9yZwpodHRwczovL2xpc3RzLm9zdW9zbC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC13aXJlZC1sYW4K
