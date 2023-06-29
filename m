Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804D974239F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 29 Jun 2023 12:03:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F37D240590;
	Thu, 29 Jun 2023 10:03:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F37D240590
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688033014;
	bh=e7PFSaXV/Q33i3gqyjzfKVLh/9mr4GcSPzPM0JHjOW8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=M8xexxRPaBNOq3praD1fTSicE8Jumm39lB4cr5CE2V6O7cBsyKvgCdB/g/TzmEBfV
	 Iojd2WazahEg3cnd1bJuCvARYgxA1Vr5aTcK+rD5TBeWNms9d2ltoewQUQe7HEYyuD
	 3uHGwhLB51DLDhoJEp3TId4vGaMaWIPGenVJEfZ/H6pmWzHuu6OvDIP74AVf5XD8Fy
	 93cvKM2uPQUYI4cO7tRsRzBM+VnjeICgMyWGQLQnLES6ufS7aINUmaQNdAofmzo9IM
	 /PcwY9G7JUYVG0+BlqVcrJPGhXH4Z0dZ+y4PrkM0xYuf6GRUwwhxTxgzNGv0v+o8ol
	 emq09ZbmztuEA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FCs5SL4uVfhx; Thu, 29 Jun 2023 10:03:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DC5CD405E9;
	Thu, 29 Jun 2023 10:03:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DC5CD405E9
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31F6D1BF30F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:03:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0A89B605B7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A89B605B7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oOd0exIvIJCM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 29 Jun 2023 10:03:26 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 139FD60093
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 139FD60093
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 10:03:25 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id
 ffacd0b85a97d-313e714342cso538307f8f.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 29 Jun 2023 03:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688033003; x=1690625003;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uaMGImYnQKnsq7fsnwOVnpPcILnExtFuFwZ75WjZ+G8=;
 b=VeOzS2oQtsCGgNSj67YHpSy+D9pomXtGfQk0BCgSPY4v5TEuwMS1MQxe4GOJIIAfxd
 k0kE0GcJEQJlTF/S0bUl8CpG28mZVl29346LrfnvOIXFCLpAdlf9QbY8aGFAQCjvH+8o
 FYV8zRWBDX03XNA/tGFABFgW5QLkTyqyJfTjfzah9RAeNldre/RaAGSy04dKdcL6NUUw
 aYz1ho+JfI7Jfx+Ff3g7M+b9CKvqz760YPty/N8G71/mJhX2nIz4j0s1tiOfd/HKaqdI
 IU+lUtQPwRubAsd6Z9VAhD6G2wgkiIqYDqrZjgjB6bdep/y4qFn02jmF+mRg6v0cIQ4a
 ubwg==
X-Gm-Message-State: AC+VfDzYX1wXy2tR/mPk22RtKY09kPCDQ7KKDCrS1PTpofxNJQxiWQ2q
 ohPzk7HNQ3NM6XwDPl3k5XMRFg==
X-Google-Smtp-Source: ACHHUZ4gGOlHZ3B9k0qBbIR5qB2LqkDmU6fIVVUkapqWekDMKRTnDoYalnmqNRmJCQ+KcYBUnFu3kw==
X-Received: by 2002:a05:6000:42:b0:313:e2c4:7bc2 with SMTP id
 k2-20020a056000004200b00313e2c47bc2mr14036940wrx.53.1688033003304; 
 Thu, 29 Jun 2023 03:03:23 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 l6-20020adff486000000b00313fd294d6csm7414075wro.7.2023.06.29.03.03.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Jun 2023 03:03:22 -0700 (PDT)
Date: Thu, 29 Jun 2023 12:03:21 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Vitaly Grinberg <vgrinber@redhat.com>
Message-ID: <ZJ1W6Trfar7xxkJ2@nanopsycho>
References: <CACLnSDhkUA=19905RKk=f1WBkd3jTEDcvytJCgavi90FroXb5w@mail.gmail.com>
 <ZJ0/StDYFANB1COA@nanopsycho>
 <CACLnSDgudK155J8myg99Q+sr18sUy5nJOQsBWtgsFBPGRVhDCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACLnSDgudK155J8myg99Q+sr18sUy5nJOQsBWtgsFBPGRVhDCQ@mail.gmail.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1688033003; x=1690625003; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=uaMGImYnQKnsq7fsnwOVnpPcILnExtFuFwZ75WjZ+G8=;
 b=h+09ytWCV2amGFMopbaZtCXUJjJKz8DhAHtUefOVoKcGXTUaJcbmQzfziST1ySjwBs
 fwMco4LDFc2kq+ha49mXvjonPLONQbpv3VPtykCjLfssrCYQ4DbEi8P9yVzhmqZZxDA2
 qj4cQioeKR7RYGJx9ZwrtCpAPmq53BjVkt2tRarlOIUDH2Y1XbUgv9Mip5o2n88kjgEO
 Yu2e+7sJ/cxB/dBNmExZIehrl8FIx27R5lVO+qDZPbkA110hpbVEiZxm1g5PFoROd4mJ
 ucY4MkjHjiL+Wj2Ebd7rUzW+0Lq+eIYa+3auIEWrvhpKVopwKTYj+znGGMkMIrcfAWpM
 3/Vw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=h+09ytWC
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 David Airlie <airlied@redhat.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

VGh1LCBKdW4gMjksIDIwMjMgYXQgMTA6MjY6MjhBTSBDRVNULCB2Z3JpbmJlckByZWRoYXQuY29t
IHdyb3RlOgo+SGkgSmlyaSwKPldlIGFyZSBwdXNoaW5nIGZvciBpdCB0byBiZSBpbXBsZW1lbnRl
ZCBpbiBJbnRlbCBJY2UgZHJpdmVyLgoKSXQgZG9lcyBub3QgaGF2ZSB0byBiZSBwYXJ0IG9mIHRo
ZSBpbml0aWFsIHN1Ym1pc3Npb24uIEl0IGNhbiBiZQpleHRlbmRlZCBsYXRlciBvbi4gQWxzbywg
bm90IHBvc3NpYmxlIHRvIGRlZmluZSB0aGUgVUFQSSB3aXRob3V0IGFjdHVhbApkcml2ZXIgaW1w
bGVtZW50YXRpb24uCgoKPlRoYW5rcywKPlZpdGFseQo+Cj5PbiBUaHUsIEp1biAyOSwgMjAyMyBh
dCAxMToyMuKAr0FNIEppcmkgUGlya28gPGppcmlAcmVzbnVsbGkudXM+IHdyb3RlOgo+Pgo+PiBU
aHUsIEp1biAyMiwgMjAyMyBhdCAwOTo0NDoxOUFNIENFU1QsIHZncmluYmVyQHJlZGhhdC5jb20g
d3JvdGU6Cj4+ID5IaSwKPj4gPkNvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGFkZCBQUFMgRFBMTCBw
aGFzZSBvZmZzZXQgdG8gdGhlIG5ldGxpbmsgQVBJPyBXZQo+PiA+YXJlIHJlbHlpbmcgb24gaXQg
aW4gdGhlIEU4MTAtYmFzZWQgZ3JhbmRtYXN0ZXIgaW1wbGVtZW50YXRpb24uCj4+Cj4+IEluIHdo
aWNoIGRyaXZlciB5b3UgbmVlZCB0byBpbXBsZW1lbnQgdGhpcz8KPj4KPj4KPj4gPlRoYW5rcywK
Pj4gPlZpdGFseQo+Pgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLXdpcmVkLWxhbiBtYWlsaW5nIGxpc3QKSW50ZWwtd2lyZWQtbGFuQG9zdW9z
bC5vcmcKaHR0cHM6Ly9saXN0cy5vc3Vvc2wub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtd2ly
ZWQtbGFuCg==
