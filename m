Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29E0B73B20C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 23 Jun 2023 09:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B87A740386;
	Fri, 23 Jun 2023 07:48:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B87A740386
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687506492;
	bh=+bT1+cD5N1yBUvLweFcaJTeEfCzGnfFq25NnX3zgZ6w=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MTbcV+1xl/bQPRmDpluCr2LHEpUbtzjMLqs1qbsPc3YiKbddGyCPb/0j7LMsdJBt5
	 +gLHqZEjUzTn9M8AGA9eNH8IlvwTwZjvVWeVUMHucCU4mm7NkMVQT+KFI5lw6qFKC5
	 QKKTvP3TXhzDlPgtuqv3UH7VMYq4xf+crtayQdwxdd1ZWS4DxTqFfOX52tTdbPVPhJ
	 9wQewjsf0jYl2c0+Wgru7DuTkkmo2YkV19Oda6UVwF2kCbAkhKa5qe02ziVZtOcDRn
	 oZc4r6+tn8ch8hFH90oyb/6A10CW1h8Ku36bh/eUe4X2hURoXD7NmFT6Pwv9VKZlf/
	 NDda7bcpY4CPA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EbPzFxM6dS6Y; Fri, 23 Jun 2023 07:48:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F6674011D;
	Fri, 23 Jun 2023 07:48:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7F6674011D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5B1481BF4DD
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:48:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2AA4F40362
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:48:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AA4F40362
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ERaXCye4tgAv for <intel-wired-lan@lists.osuosl.org>;
 Fri, 23 Jun 2023 07:48:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 67718400AE
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com
 [IPv6:2a00:1450:4864:20::22c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 67718400AE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 07:48:04 +0000 (UTC)
Received: by mail-lj1-x22c.google.com with SMTP id
 38308e7fff4ca-2b477e9d396so5459821fa.3
 for <intel-wired-lan@lists.osuosl.org>; Fri, 23 Jun 2023 00:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687506482; x=1690098482;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=afzpoupdHBz4t80yeY68UW7BcSr6J0mUzcvK1xv8c1M=;
 b=D7pt+I5sr1kim6jdtpgk+FVF21xqU0BWgD1MwGmrhpvY8avzi9VGlACKk/+aJhQgj8
 3kMcRapzRMWsJtzWWSwD3pE8q3BRJ5xGIoaO8r8AihyXk5vq1VELt0ovITpt8BHH8DWk
 b68y/wf5qIjSI21Fbq2lPfC9TYSdCBz+iygnTtOoNSdrRvVL334qLNzF8JgFILgNQLCQ
 RDbr+Oxf8dwN6+uaAEihkzc5uhTs57s3F54pBN6Bc+TN6wa0oio4gZzK7I427RloWNeQ
 TYcS56hWcqs+TKDwfn0XRvio+a2YuMxyqkxiDs1q5cjSyVAoPTdjZ2gUUeqFTxBKKP7K
 8MrA==
X-Gm-Message-State: AC+VfDz0p3CftBhlSx/sYP873caKr7Pc4FfBOnCpk+7czEGqOTjOUxH2
 +ibWD9rBGteF/ViVYnYFVJXw3w==
X-Google-Smtp-Source: ACHHUZ60rNJlS88ekBpJsTiP/YnYc408Z0GlUIj/k7KV/RQOAUp7f7ExOF4ZyFZ2IcPQ5FADHxaxYg==
X-Received: by 2002:a2e:9944:0:b0:2b4:6a20:f12b with SMTP id
 r4-20020a2e9944000000b002b46a20f12bmr13920987ljj.22.1687506482431; 
 Fri, 23 Jun 2023 00:48:02 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 b18-20020aa7cd12000000b0051bf49e258bsm666413edw.22.2023.06.23.00.48.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Jun 2023 00:48:01 -0700 (PDT)
Date: Fri, 23 Jun 2023 09:48:00 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
Message-ID: <ZJVOMPQ1RHx5mapG@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-5-arkadiusz.kubalewski@intel.com>
 <c7480d0a71fb8d62108624878f549c0d91d4c9e6.camel@redhat.com>
 <ZJLktA6RJaVo3BdH@nanopsycho> <ZJL2HUkAtHEw5rq+@nanopsycho>
 <DM6PR11MB46578CD80F96AB11AF2F81F49B23A@DM6PR11MB4657.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM6PR11MB46578CD80F96AB11AF2F81F49B23A@DM6PR11MB4657.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1687506482; x=1690098482; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=afzpoupdHBz4t80yeY68UW7BcSr6J0mUzcvK1xv8c1M=;
 b=y839S9kxd09ThLEfxmxC6oII3nMiQTOEHF9PojI9kiub9AcAU9VwNCWsdUi79zoGrL
 I53edaB4DcMZQQ0qflpJAUkvrrMC34ACSDUt0ujxI5pBdzcViBCk6n9FKsQqZhEr33/O
 VvEBWTcxrI6FtHpJuHeokazRCXKF4vksYk5o+OAae6lurukOLI6tXHVLSfb+Q+V7FEV/
 sf8imt+RlLt6Lat5yCvrtngprbPt26rUBnApAtbvCEbqlIgaWoDJC9mFHQOn0JbF41dG
 AZbWjTZ98aLp9MgUn+gURDvYq4bO/7X5+p/tQDFnf5y1CNMOL2mMEGQ/vOQjVcpXlF7u
 UTbQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=y839S9kx
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
Cc: "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "mst@redhat.com" <mst@redhat.com>, "razor@blackwall.org" <razor@blackwall.org>,
 "phil@nwl.cc" <phil@nwl.cc>, "javierm@redhat.com" <javierm@redhat.com>,
 "edumazet@google.com" <edumazet@google.com>,
 "benjamin.tissoires@redhat.com" <benjamin.tissoires@redhat.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "lucien.xin@gmail.com" <lucien.xin@gmail.com>,
 "leon@kernel.org" <leon@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "masahiroy@kernel.org" <masahiroy@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "vadfed@meta.com" <vadfed@meta.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "kuba@kernel.org" <kuba@kernel.org>, "vadfed@fb.com" <vadfed@fb.com>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "ricardo.canuelo@collabora.com" <ricardo.canuelo@collabora.com>,
 "arnd@arndb.de" <arnd@arndb.de>, "idosch@nvidia.com" <idosch@nvidia.com>,
 "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "claudiajkang@gmail.com" <claudiajkang@gmail.com>,
 "kuniyu@amazon.com" <kuniyu@amazon.com>,
 "jacek.lawrynowicz@linux.intel.com" <jacek.lawrynowicz@linux.intel.com>,
 "liuhangbin@gmail.com" <liuhangbin@gmail.com>,
 "airlied@redhat.com" <airlied@redhat.com>,
 "nicolas.dichtel@6wind.com" <nicolas.dichtel@6wind.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "axboe@kernel.dk" <axboe@kernel.dk>, "sj@kernel.org" <sj@kernel.org>,
 "vadim.fedorenko@linux.dev" <vadim.fedorenko@linux.dev>,
 "linux@zary.sk" <linux@zary.sk>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "ogabbay@kernel.org" <ogabbay@kernel.org>,
 "nipun.gupta@amd.com" <nipun.gupta@amd.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "andy.ren@getcruise.com" <andy.ren@getcruise.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "jonathan.lemon@gmail.com" <jonathan.lemon@gmail.com>, "M,
 Saeed" <saeedm@nvidia.com>, "davem@davemloft.net" <davem@davemloft.net>,
 "Olech, Milena" <milena.olech@intel.com>,
 "hkallweit1@gmail.com" <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

RnJpLCBKdW4gMjMsIDIwMjMgYXQgMDI6NTY6MjRBTSBDRVNULCBhcmthZGl1c3oua3ViYWxld3Nr
aUBpbnRlbC5jb20gd3JvdGU6Cj4+RnJvbTogSmlyaSBQaXJrbyA8amlyaUByZXNudWxsaS51cz4K
Pj5TZW50OiBXZWRuZXNkYXksIEp1bmUgMjEsIDIwMjMgMzowOCBQTQo+Pgo+PldlZCwgSnVuIDIx
LCAyMDIzIGF0IDAxOjUzOjI0UE0gQ0VTVCwgamlyaUByZXNudWxsaS51cyB3cm90ZToKPj4+V2Vk
LCBKdW4gMjEsIDIwMjMgYXQgMDE6MTg6NTlQTSBDRVNULCBwb3Jvc0ByZWRoYXQuY29tIHdyb3Rl
Ogo+Pj4+QXJrYWRpdXN6IEt1YmFsZXdza2kgcMOtxaFlIHYgUMOhIDA5LiAwNi4gMjAyMyB2IDE0
OjE4ICswMjAwOgo+Pj4+PiBGcm9tOiBWYWRpbSBGZWRvcmVua28gPHZhZGltLmZlZG9yZW5rb0Bs
aW51eC5kZXY+Cj4+Pgo+Pj5bLi4uXQo+Pj4KPj4+Q291bGQgeW91IHBlcmhhcHMgY3V0IG91dCB0
aGUgdGV4dCB5b3UgZG9uJ3QgY29tbWVudD8gU2F2ZXMgc29tZSB0aW1lCj4+PmZpbmRpbmcgeW91
ciByZXBseS4KPj4+Cj4+Pgo+Pj4+PiArc3RhdGljIGludAo+Pj4+PiArZHBsbF9zZXRfZnJvbV9u
bGF0dHIoc3RydWN0IGRwbGxfZGV2aWNlICpkcGxsLCBzdHJ1Y3QgZ2VubF9pbmZvCj4+Pj4+ICpp
bmZvKQo+Pj4+PiArewo+Pj4+PiArwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHBsbF9kZXZp
Y2Vfb3BzICpvcHMgPSBkcGxsX2RldmljZV9vcHMoZHBsbCk7Cj4+Pj4+ICvCoMKgwqDCoMKgwqDC
oHN0cnVjdCBubGF0dHIgKnRiW0RQTExfQV9NQVggKyAxXTsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKg
aW50IHJldCA9IDA7Cj4+Pj4+ICsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgbmxhX3BhcnNlKHRiLCBE
UExMX0FfTUFYLCBnZW5sbXNnX2RhdGEoaW5mby0+Z2VubGhkciksCj4+Pj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBnZW5sbXNnX2xlbihpbmZvLT5nZW5saGRyKSwgTlVMTCwg
aW5mby0+ZXh0YWNrKTsKPj4+Pj4gK8KgwqDCoMKgwqDCoMKgaWYgKHRiW0RQTExfQV9NT0RFXSkg
ewo+Pj4+SGksCj4+Pj4KPj4+PkhlcmUgc2hvdWxkIGJlIHNvbWV0aGluZyBsaWtlOgo+Pj4+ICAg
ICAgICAgICAgICAgaWYgKCFvcHMtPm1vZGVfc2V0KQo+Pj4+ICAgICAgICAgICAgICAgICAgICAg
ICByZXR1cm4gLUVPUE5PVFNVUFA7Cj4+Pgo+Pj5XaHk/IEFsbCBkcml2ZXJzIGltcGxlbWVudCB0
aGF0Lgo+Pj5JIGJlbGlldmUgdGhhdCBpdCdzIGFjdHVsbGFseSBiZXR0ZXIgdGhhdCB3YXkuIEZv
ciBhIGNhbGxlZCBzZXR0aW5nIHVwCj4+PnRoZSBzYW1lIG1vZGUgaXQgaXMgdGhlIGRwbGwgaW4s
IHRoZXJlIHNob3VsZCBiZSAwIHJldHVybiBieSB0aGUgZHJpdmVyLgo+Pj5Ob3RlIHRoYXQgZHJp
dmVyIGhvbGRzIHRoaXMgdmFsdWUuIEknZCBsaWtlIHRvIGtlZXAgdGhpcyBjb2RlIGFzIGl0IGlz
Lgo+Pgo+PkFjdHVhbGx5LCB5b3UgYXJlIGNvcnJlY3QgUGV0ciwgbXkgbWlzdGFrZS4gQWN0dWFs
bHksIG5vIGRyaXZlcgo+PmltcGxlbWVudHMgdGhpcy4gQXJrYWRpdXN6LCBjb3VsZCB5b3UgcGxl
YXNlIHJlbW92ZSB0aGlzIG9wIGFuZAo+PnBvc3NpYmx5IGFueSBvdGhlciB1bnVzZWQgIG9wPyBJ
dCB3aWxsIGJlIGFkZGVkIHdoZW4gbmVlZGVkLgo+Pgo+PlRoYW5rcyEKPj4KPgo+U29ycnksIGRp
ZG4ndCBoYXZlIHRpbWUgZm9yIHN1Y2ggY2hhbmdlLCBhZGRlZCBvbmx5IGNoZWNrIGFzIHN1Z2dl
c3RlZCBieQo+UGV0ci4KPklmIHlvdSB0aGluayB0aGlzIGlzIGEgYmlnIGlzc3VlLCB3ZSBjb3Vs
ZCBjaGFuZ2UgaXQgZm9yIG5leHQgdmVyc2lvbi4KCkl0J3Mgb2RkIHRvIGNhcnJ5IG9uIG9wcyB3
aGljaCBhcmUgdW51c2VkLiBJIHdvdWxkIHByZWZlciB0aGF0IHRvIGJlCnJlbW92ZWQgbm93IGFu
ZCBvbmx5IGludHJvZHVjZWQgd2hlbiB0aGV5IGFyZSBhY3R1YWxseSBuZWVkZWQuCgoKPgo+VGhh
bmsgeW91IQo+QXJrYWRpdXN6Cj4KPj4KPj4+Cj4+PlsuLi5dCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QK
SW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
