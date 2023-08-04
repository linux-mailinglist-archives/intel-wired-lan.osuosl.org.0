Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2451E770BFC
	for <lists+intel-wired-lan@lfdr.de>; Sat,  5 Aug 2023 00:40:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 000A561366;
	Fri,  4 Aug 2023 22:40:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 000A561366
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691188828;
	bh=3HMEZlRY/lZSuIx1requ0COH3aOPXhwhTkLtOI1jUs0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=s3p/h+tuFMepbf/dyzFRNOmp48CBVDQO1jgGtbHVBrGsmqPLT2Wml8V9QRudf60Af
	 +5P1D61iyWHOUTmyFBnDY/JTz9byjEcLJLJt1UyZTqEJJnLuxTwBGW2cjld852RB77
	 4j+ptTO2/hhemHp+SJVQR3MrSroQZrKdTxmYDq872N/ksCqBTw/XhZLD5R0UqeYiKa
	 NwrScR0q9ujBqihkvzdh9vM3fzcVDDtjm9JESzydkperw1u9Wcyd66iLj3GyEgvW+F
	 IOumx+iKhfsgWC8K8JPjltfyX+hD7BD3tY2Uj59XPg7VttUb7ldYy1E1D8jVcg3vPM
	 tcq126AS7Po8A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToRwplDgm9d0; Fri,  4 Aug 2023 22:40:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CA0FA6101E;
	Fri,  4 Aug 2023 22:40:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA0FA6101E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C5BBE1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 22:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5547883B61
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 22:39:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5547883B61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4IVXHFaFkW7H for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Aug 2023 22:39:55 +0000 (UTC)
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 36814820C0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Aug 2023 22:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 36814820C0
Received: by mail-pl1-x62f.google.com with SMTP id
 d9443c01a7336-1bba54f7eefso24846875ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Aug 2023 15:39:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1691188794; x=1691793594;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=wPee1J6TpdjMsw6ipZy9FBWL3pUhaM/U7Pcka80w5kY=;
 b=KsCDoAKbkTkfr/w3xZU7M2g7MdKFfOJO2hfcfri+WB5ozdWRPYy9yg8+UH4oKc+vja
 qfuWaZ3cUA2X0lfKjL2UNws6sqHdoglZXE/e39u3BgjdxlKTkivMVgY27xRK1Mu/gLDi
 nzj1oPZTzEAIzHShYLSJ1bTegA4adhyXjHEMZk5SjrvfqvErZ9rEXJyc9+ZgW0FM7Nze
 +QmD1bayFl5Hh5M7BG52QZ95Jvs1ZTt5kTR6vY/xBDjw5jE6oz8hxdsQVmaLnQKS5nmE
 hLdMfFcw04RvgVFhUV17wJWMfet7kUpLUlTXIv/Kj6AK6TEgQBNRX3PJA/B2AXs6AOdc
 dj/A==
X-Gm-Message-State: AOJu0Yz/6Jco5cFcOs4qi/S7uOAsr0VcPM5XF6DTZOHk73saVuFpvO+w
 EwQ16GUIEvXbJinHlG36d0Gjyg==
X-Google-Smtp-Source: AGHT+IE9GkA47jrZXTpxd4BjO6ZlWM4VsVLbDWn4hEr0gD9DC20BTj1V4ibSytY8ZYpCblhIwgYfrA==
X-Received: by 2002:a17:902:dac1:b0:1ba:fe6a:3845 with SMTP id
 q1-20020a170902dac100b001bafe6a3845mr1311380plx.11.1691188794640; 
 Fri, 04 Aug 2023 15:39:54 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 a13-20020a170902b58d00b001bb04755212sm2218960pls.228.2023.08.04.15.39.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Aug 2023 15:39:54 -0700 (PDT)
Date: Fri, 4 Aug 2023 15:39:53 -0700
From: Kees Cook <keescook@chromium.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <202308041539.888828AC3@keescook>
References: <20230801111923.118268-1-przemyslaw.kitszel@intel.com>
 <20230801111923.118268-2-przemyslaw.kitszel@intel.com>
 <202308011403.E0A8D25CE@keescook>
 <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e0cb5bf2-2278-b83f-c45c-0556927787a6@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1691188794; x=1691793594;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=wPee1J6TpdjMsw6ipZy9FBWL3pUhaM/U7Pcka80w5kY=;
 b=kU1NJ699RieHvnZynhRR1tZDgaq8FOa9KWHMnWwOMc6nsQdpABZmSV8OBW2SdDqaf+
 YtUFXleebjAbPK9esqDMYQxYaFCfRwdRtUfqRTDxT62sI/0MUhOv6P43eURVaAtSBeR5
 Om+xtqnyhNlvLUsSwU3Xj/u9zNP9L00Cur0cE=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org
 header.a=rsa-sha256 header.s=google header.b=kU1NJ699
Subject: Re: [Intel-wired-lan] [RFC net-next 1/2] overflow: add
 DECLARE_FLEX() for on-stack allocs
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Aug 04, 2023 at 03:47:48PM +0200, Przemek Kitszel wrote:
> On 8/2/23 00:31, Kees Cook wrote:
> 
> [...]
> 
> > Initially I was struggling to make __counted_by work, but it seems we can
> > use an initializer for that member, as long as we don't touch the flexible
> > array member in the initializer. So we just need to add the counted-by
> > member to the macro, and use a union to do the initialization. And if
> > we take the address of the union (and not the struct within it), the
> > compiler will see the correct object size with __builtin_object_size:
> > 
> > #define DEFINE_FLEX(type, name, flex, counter, count) \
> >      union { \
> >          u8   bytes[struct_size_t(type, flex, count)]; \
> >          type obj; \
> >      } name##_u __aligned(_Alignof(type)) = { .obj.counter = count }; \
> >      /* take address of whole union to get the correct __builtin_object_size */ \
> >      type *name = (type *)&name##_u
> > 
> > i.e. __builtin_object_size(name, 1) (as used by FORTIFY_SOURCE, etc)
> > works correctly here, but breaks (sees a zero-sized flex array member)
> > if this macro ends with:
> > 
> >      type *name = &name##_u.obj
> 
> __builtin_object_size(name, 0) works fine for both versions (with and
> without .obj at the end)

Mode 0 will be unchanged, but mode 1 is what most of FORTIFY uses for
keep the scope narrow.

> however it does not work for builds without -O2 switch, so struct_size_t()
> is rather a way to go :/

FORTIFY depends on -O2, so no worries. :)

-- 
Kees Cook
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
