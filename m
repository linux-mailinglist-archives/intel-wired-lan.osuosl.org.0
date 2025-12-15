Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8FC3CBDF2B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 15 Dec 2025 14:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3BFF4814B7;
	Mon, 15 Dec 2025 13:08:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id p0cmrdN1PJ7f; Mon, 15 Dec 2025 13:08:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9DADE8149A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1765804123;
	bh=cGF6UGlZTvH/e7EAbUoFjWHETVQLZMdqI3gLEZl8+UE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X5ALNruVHKnScVKQZ3GYvfyhyENSFHUJeo5YwlVz/y8SQ3KcPNNWz87VrW8vtPg+k
	 mq3IWhYXBXz8M4k9shNqGihhche7HgBMOsIyhj2ouGvl7g5Eh8/IwIIG3JZYqx38mk
	 YjQdxQCLeRskH3PRYeUtRpyoeB4AfhARRgi5Fd6z4sFAX/dV+iCzLIZMaS80vsN5fG
	 7tgjnrHy9TKKD1SGtqGF/ZCcBw5mMVCuwKgjcN1EHMgXQYLywathCJb25xRINU0IXS
	 ujDinUVa4Gzpej+uJ5WagZaVo356gE3rSQkTkpqwAMtG8snSQbExOVJuPZkArXVdmr
	 te8OVjydT6nAw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9DADE8149A;
	Mon, 15 Dec 2025 13:08:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id D9C71118
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:08:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CB1A3406AB
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:08:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ad8jn9m2V9mW for <intel-wired-lan@lists.osuosl.org>;
 Mon, 15 Dec 2025 13:08:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::330; helo=mail-wm1-x330.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A9C2C406A9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A9C2C406A9
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A9C2C406A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 13:08:37 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 5b1f17b1804b1-477a219dbcaso30076435e9.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 15 Dec 2025 05:08:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1765804116; x=1766408916;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=cGF6UGlZTvH/e7EAbUoFjWHETVQLZMdqI3gLEZl8+UE=;
 b=aobXXxKVQmNLsHcMo9HkQYKHpGl56uDs2G/Ihx+f9eTge8SyJ5cw4NDzcScelSzwTG
 O6cqSTFC1fXyhiK3gG48UAPvGB1PUBdC+CD+/wFAD3FUd7thWiGDRvfY/k6RwxttIJ+G
 QGO06v5ZTgOZwG9sKike+XHI1h0yG0f4Dw5afWhpTAZFmb3sMhYUHbCI8+E8eqTJY1F/
 4BxaMqM7z+vQkPQ+hFqyhCwQ/lLg5llt6LkCstgQXrXMh5N8DpFd0884+SPsu9/diCUG
 mWcvfMGDDVOcSYBf8nQ8kZ10RBajMtp8UUA4SWpjla68JiEOGRsbwbNUnIS/Fk4h8J8P
 aHlA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXsNKnxwb/bVhcl6vWFD+/eqS57ib2et3SHcZfJ+Cy8vpQ98e558pHs61YrUHUemUffKrqh2ijzEHHyQzfMLzA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzN5XLek4yYn14PCvjB7bwm1GU1OLIGJ1YhNzr4ZtahQHD5VcBA
 lwVM69kqMHMtlfis0Mr2E9v03OqgVQuGTYec/VMgjH6GD/HBb0Y+epw3kCwV/l9SwZ4=
X-Gm-Gg: AY/fxX687Bncgc8IhDGDHt5apcKXjh5YxDYAYw+9ewBlPJOxzVsnp5Fcz9MQ4ky/vOR
 RpUurDyHZxrHU3NVFyshFYpG/rjy2j8yIs3dA2HuemsCzZQWosKXxjCEjohoHdpyd/5ZCLXu7En
 8QZEOD2mCM5AZbtsEfwy8iInCg3o6b1zF9VG2LaYc6UfsXZTr2jycQbVUpTJxHZxdwIl+yWyZ1S
 gXAyelv0vV76QWadaWJ78nBe3A/snz5dBtrNq19jGj1lHjzSCHHzTWnWfydyef3DevOIOK0xe5u
 y6NhaBhBG8GO9QiliCEAdHgIpd4NxUhcPM4As76yLc70zq9YhP1FaIJ2F6uze6/sb9FZ7EmpLaE
 roSwRCMtxPWsEb7WoEtnO81P+7vLQAL0NVco8vaM12D68D4kRU2QRfnfrwHjGDgU7vUiDPZLWjk
 21cZGknBQAUTXmWOyAqBNdiTMiu7Jq4BFmBg==
X-Google-Smtp-Source: AGHT+IGDeAHVk3bjmiKEh4J5iHFH7+EdX4092IVfO054I0rigKsg6ZDX9O2Htj98oWT0RTZ7eaXYhQ==
X-Received: by 2002:a05:6000:4285:b0:429:b8e2:1064 with SMTP id
 ffacd0b85a97d-42fb490f769mr11817646f8f.47.1765804115472; 
 Mon, 15 Dec 2025 05:08:35 -0800 (PST)
Received: from FV6GYCPJ69 ([140.209.217.211]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-430f268d459sm13887608f8f.32.2025.12.15.05.08.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Dec 2025 05:08:34 -0800 (PST)
Date: Mon, 15 Dec 2025 14:08:31 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <tawd6udewifjeoymxkfkapxgcgfviixb4zgcjnplycigk5ffws@rdymwt2hknsl>
References: <20251211194756.234043-1-ivecera@redhat.com>
 <20251211194756.234043-3-ivecera@redhat.com>
 <ahyyksqki6bas5rqngd735k4fmoeaj7l2a7lazm43ky3lj6ero@567g2ijcpekp>
 <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3E2869EC-61B3-40DA-98E2-CD9543424468@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1765804116; x=1766408916;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cGF6UGlZTvH/e7EAbUoFjWHETVQLZMdqI3gLEZl8+UE=;
 b=IdOR/iknxxpb8jPrVtjpjPbQBexP97vOt8rpkoe6Xq4DMjeDR+h9fmp4QqMCghgAXO
 f8siyzO+hK6xU/N3caKF8e3uzgKWDV8blMRqug+ZfyCmodszQXoZiqcAx1ZDPtUJi5C8
 uVtP2Ldbu8pvZcB5mOkUtv0a7a0SNO0Vm41zV9Nd6/AKWEUiGh6BNKKJnu90MS91GTqc
 LjN09zHvsuvseenkM0JKrVUURB8pe1/ANiVatQCbkJg0QtbYZ2bicIKNJWUUz6ojBpbZ
 JtV7hTzCgJNnPkbayJXTVzHXGgfTiOoOys5cKryuF61pymkChBcbQ6XwY0UihK4vySQ5
 5zOA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=IdOR/ikn
Subject: Re: [Intel-wired-lan] [PATCH RFC net-next 02/13] dpll: Allow
 registering pin with firmware node
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Cc: Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Rob Herring <robh@kernel.org>,
 Leon Romanovsky <leon@kernel.org>,
 Alexander Lobakin <aleksander.lobakin@intel.com>, linux-rdma@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Richard Cochran <richardcochran@gmail.com>,
 Prathosh Satish <Prathosh.Satish@microchip.com>,
 Willem de Bruijn <willemb@google.com>,
 Vadim Fedorenko <vadim.fedorenko@linux.dev>, netdev@vger.kernel.org,
 Mark Bloch <mbloch@nvidia.com>, linux-kernel@vger.kernel.org,
 Tariq Toukan <tariqt@nvidia.com>, Andrew Lunn <andrew+netdev@lunn.ch>,
 Stefan Wahren <wahrenst@gmx.net>, Simon Horman <horms@kernel.org>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Saeed Mahameed <saeedm@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Sun, Dec 14, 2025 at 08:35:01PM +0100, ivecera@redhat.com wrote:
>
>
>On December 12, 2025 12:25:12 PM GMT+01:00, Jiri Pirko <jiri@resnulli.us> wrote:
>>Thu, Dec 11, 2025 at 08:47:45PM +0100, ivecera@redhat.com wrote:
>>
>>[..]
>>
>>>@@ -559,7 +563,8 @@ EXPORT_SYMBOL(dpll_netdev_pin_clear);
>>>  */
>>> struct dpll_pin *
>>> dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>>>-	     const struct dpll_pin_properties *prop)
>>>+	     const struct dpll_pin_properties *prop,
>>>+	     struct fwnode_handle *fwnode)
>>> {
>>> 	struct dpll_pin *pos, *ret = NULL;
>>> 	unsigned long i;
>>>@@ -568,14 +573,15 @@ dpll_pin_get(u64 clock_id, u32 pin_idx, struct module *module,
>>> 	xa_for_each(&dpll_pin_xa, i, pos) {
>>> 		if (pos->clock_id == clock_id &&
>>> 		    pos->pin_idx == pin_idx &&
>>>-		    pos->module == module) {
>>>+		    pos->module == module &&
>>>+		    pos->fwnode == fwnode) {
>>
>>Is fwnode part of the key? Doesn't look to me like that. Then you can
>>have a simple helper to set fwnode on struct dpll_pin *, and leave
>>dpll_pin_get() out of this, no?
>
>IMHO yes, because particular fwnode identifies exact dpll pin, so
>I think it should be a part of the key.

The key items serve for userspace identification purposes as well. For
that, fwnode is non-sense.
fwnode identifies exact pin, that is nice. But is it the only
differentiator among other key items? I don't expect so.

>
