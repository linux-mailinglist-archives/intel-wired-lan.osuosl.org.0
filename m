Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C6F2B4632
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Nov 2020 15:49:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 76252870B8;
	Mon, 16 Nov 2020 14:49:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wg13Uvkl4n8O; Mon, 16 Nov 2020 14:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A143A870C6;
	Mon, 16 Nov 2020 14:49:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 043831BF42C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:19:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id ED26486820
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:19:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YFcqz+hbc-g3 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Nov 2020 11:19:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id ED83886833
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 11:19:11 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id m16so3430746edr.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Nov 2020 03:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=a6CPIyvD8XjBNQP4xPof1wHbO1v9fKQ05YkxbhaYKQM=;
 b=HG2Xe47Wf2k2l8Y2s2S+VlU1d1DXdhNNUDrhnPRNTfBuQ6AkpKw1F3dsff/B6gdhWi
 6MxYjlTFC1Vqsk35ff40GqJpiEYunxwy2B5v85swi/zNag0kkh1eZZ+tcK9P6uWwAT14
 LsHxCQREPm/t9ShRub/DH25BV0/YlkoaQJ8Pe8VchklX5eN86FlgjTMICHVeWgfLo8/B
 Ym0GCrjXJhvRCqFiJ+NvM+VExx8LqVG20sscfXoLomlE2U2vvjnBXS4PPDCeMYgVMBDa
 UmVxpdwepwnuGTBdjyd/7/69zItZQJ84QVXOg2Uzzke63GX4fUTtAoYm7zSjPSd6i6R9
 q8QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=a6CPIyvD8XjBNQP4xPof1wHbO1v9fKQ05YkxbhaYKQM=;
 b=U6gJnJp3en392o30fKk7HM51lDxqWpgsB8wUntqs5cXWPCNpBO5ZzpoLYjbZgn5fP7
 YVRagxRRpqt0VEgZ8+EuE9QhqIZ6vWTVbA1oeJ9wzytC0zdi1m8NcKIRXHZfzHHz0hVC
 MXgFNVyZr8rKBU2Eyd6iZOHfVLXX7oomN/Tw01PGl17YuCuWLDLar6gCp6bhw2qXrIAq
 +wufU3Zd5dVFs1SLcYvns/6VvawxZsLrRH+/z+wVJ1YmSbnQZQOmkyTI0PXMNxenmeUB
 L7ZiJpESf7s735fo6mYOOBbydKEOO5XWKhMf53ZoafFbSGmvDu21oKM1VqTmktRgBu7V
 Jchw==
X-Gm-Message-State: AOAM530svNkcor66rTouJiGMgaUXee6mFwTayIL5adz7dhWsfNh5SBZ4
 /U/G6DYtJ4h5EuapklDFVXw=
X-Google-Smtp-Source: ABdhPJyq2UQEpY6TJGlJuUZLSFk8enZDbR8NPimsRQcmy2QVwGtO/svDuf9KZEHeN2hYDyMms/WLGg==
X-Received: by 2002:aa7:d14a:: with SMTP id r10mr14869673edo.225.1605525550227; 
 Mon, 16 Nov 2020 03:19:10 -0800 (PST)
Received: from [192.168.1.110] ([77.126.113.122])
 by smtp.gmail.com with ESMTPSA id c4sm10375927ejx.9.2020.11.16.03.19.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Nov 2020 03:19:09 -0800 (PST)
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>,
 netdev@vger.kernel.org, bpf@vger.kernel.org
References: <20201116110416.10719-1-bjorn.topel@gmail.com>
 <20201116110416.10719-7-bjorn.topel@gmail.com>
From: Tariq Toukan <ttoukan.linux@gmail.com>
Message-ID: <b3354ce9-264c-a55b-88c9-95ee93dc959a@gmail.com>
Date: Mon, 16 Nov 2020 13:19:04 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.3
MIME-Version: 1.0
In-Reply-To: <20201116110416.10719-7-bjorn.topel@gmail.com>
Content-Language: en-US
X-Mailman-Approved-At: Mon, 16 Nov 2020 14:49:28 +0000
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v2 06/10] xsk: propagate
 napi_id to XDP socket Rx path
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
Cc: mst@redhat.com, kda@linux-powerpc.org, ast@kernel.org, edumazet@google.com,
 thomas.petazzoni@bootlin.com, ioana.ciornei@nxp.com, ecree@solarflare.com,
 aelior@marvell.com, akiyano@amazon.com, sthemmin@microsoft.com,
 ruxandra.radulescu@nxp.com, maximmi@nvidia.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>, sgoutham@marvell.com,
 grygorii.strashko@ti.com, qi.z.zhang@intel.com, mcroce@microsoft.com,
 michael.chan@broadcom.com, magnus.karlsson@intel.com, daniel@iogearbox.net,
 ilias.apalodimas@linaro.org, tariqt@nvidia.com, netanel@amazon.com,
 jonathan.lemon@gmail.com, saeedm@nvidia.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

CgpPbiAxMS8xNi8yMDIwIDE6MDQgUE0sIEJqw7ZybiBUw7ZwZWwgd3JvdGU6Cj4gRnJvbTogQmrD
tnJuIFTDtnBlbCA8Ympvcm4udG9wZWxAaW50ZWwuY29tPgo+IAo+IEFkZCBuYXBpX2lkIHRvIHRo
ZSB4ZHBfcnhxX2luZm8gc3RydWN0dXJlLCBhbmQgbWFrZSBzdXJlIHRoZSBYRFAKPiBzb2NrZXQg
cGljayB1cCB0aGUgbmFwaV9pZCBpbiB0aGUgUnggcGF0aC4gVGhlIG5hcGlfaWQgaXMgdXNlZCB0
byBmaW5kCj4gdGhlIGNvcnJlc3BvbmRpbmcgTkFQSSBzdHJ1Y3R1cmUgZm9yIHNvY2tldCBidXN5
IHBvbGxpbmcuCj4gCj4gQWNrZWQtYnk6IElsaWFzIEFwYWxvZGltYXMgPGlsaWFzLmFwYWxvZGlt
YXNAbGluYXJvLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBCasO2cm4gVMO2cGVsIDxiam9ybi50b3Bl
bEBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9hbWF6b24vZW5hL2Vu
YV9uZXRkZXYuYyAgfCAgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvYnJvYWRjb20vYm54
dC9ibnh0LmMgICAgIHwgIDIgKy0KPiAgIC4uLi9ldGhlcm5ldC9jYXZpdW0vdGh1bmRlci9uaWN2
Zl9xdWV1ZXMuYyAgICB8ICAyICstCj4gICAuLi4vbmV0L2V0aGVybmV0L2ZyZWVzY2FsZS9kcGFh
Mi9kcGFhMi1ldGguYyAgfCAgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50ZWwvaTQw
ZS9pNDBlX3R4cnguYyAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVsL2lj
ZS9pY2VfYmFzZS5jICAgICB8ICA0ICsrLS0KPiAgIGRyaXZlcnMvbmV0L2V0aGVybmV0L2ludGVs
L2ljZS9pY2VfdHhyeC5jICAgICB8ICAyICstCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9pbnRl
bC9pZ2IvaWdiX21haW4uYyAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJuZXQvaW50
ZWwvaXhnYmUvaXhnYmVfbWFpbi5jIHwgIDIgKy0KPiAgIC4uLi9uZXQvZXRoZXJuZXQvaW50ZWwv
aXhnYmV2Zi9peGdiZXZmX21haW4uYyB8ICAyICstCj4gICBkcml2ZXJzL25ldC9ldGhlcm5ldC9t
YXJ2ZWxsL212bmV0YS5jICAgICAgICAgfCAgMiArLQo+ICAgLi4uL25ldC9ldGhlcm5ldC9tYXJ2
ZWxsL212cHAyL212cHAyX21haW4uYyAgIHwgIDQgKystLQo+ICAgZHJpdmVycy9uZXQvZXRoZXJu
ZXQvbWVsbGFub3gvbWx4NC9lbl9yeC5jICAgIHwgIDIgKy0KPiAgIC4uLi9uZXQvZXRoZXJuZXQv
bWVsbGFub3gvbWx4NS9jb3JlL2VuX21haW4uYyB8ICAyICstCj4gICAuLi4vZXRoZXJuZXQvbmV0
cm9ub21lL25mcC9uZnBfbmV0X2NvbW1vbi5jICAgfCAgMiArLQo+ICAgZHJpdmVycy9uZXQvZXRo
ZXJuZXQvcWxvZ2ljL3FlZGUvcWVkZV9tYWluLmMgIHwgIDIgKy0KPiAgIGRyaXZlcnMvbmV0L2V0
aGVybmV0L3NmYy9yeF9jb21tb24uYyAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL25ldC9l
dGhlcm5ldC9zb2Npb25leHQvbmV0c2VjLmMgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9uZXQv
ZXRoZXJuZXQvdGkvY3Bzd19wcml2LmMgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvbmV0
L2h5cGVydi9uZXR2c2MuYyAgICAgICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJzL25l
dC90dW4uYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9u
ZXQvdmV0aC5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMv
bmV0L3ZpcnRpb19uZXQuYyAgICAgICAgICAgICAgICAgICAgICB8ICAyICstCj4gICBkcml2ZXJz
L25ldC94ZW4tbmV0ZnJvbnQuYyAgICAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgaW5jbHVk
ZS9uZXQvYnVzeV9wb2xsLmggICAgICAgICAgICAgICAgICAgICAgIHwgMTkgKysrKysrKysrKysr
KysrLS0tLQo+ICAgaW5jbHVkZS9uZXQveGRwLmggICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHwgIDMgKystCj4gICBuZXQvY29yZS9kZXYuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgfCAgMiArLQo+ICAgbmV0L2NvcmUveGRwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIHwgIDMgKystCj4gICBuZXQveGRwL3hzay5jICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgMSArCj4gICAyOSBmaWxlcyBjaGFuZ2VkLCA0NyBpbnNlcnRpb25zKCspLCAzMyBk
ZWxldGlvbnMoLSkKPiAKCkFja2VkLWJ5OiBUYXJpcSBUb3VrYW4gPHRhcmlxdEBudmlkaWEuY29t
PgpGb3IgdGhlIG1seDQvNSBwYXJ0cy4KClRoYW5rcywKVGFyaXEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxp
c3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9zbC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtd2lyZWQtbGFuCg==
