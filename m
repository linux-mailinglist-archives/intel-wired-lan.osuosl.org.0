Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B4072B896
	for <lists+intel-wired-lan@lfdr.de>; Mon, 12 Jun 2023 09:25:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E34038212C;
	Mon, 12 Jun 2023 07:25:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E34038212C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686554740;
	bh=qhwqij+0hsLzsawjqwURoF9Q6bSvqJLi9vuaqaDcxqY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1TeAXSBK6QK1H0oH+RDT///ItBxRXLK2HNazI6mVLmotuzxzKzzGEkH5jfIKpWOFu
	 lqtpaD/uV38kIMPpJO4HHZnbnMYy5JoyFtUtY48epWEwRAf+dlK61QZM9mn3SdW7O+
	 WnNY8cKFT79CwUOyqnbu5H18G1QXZEidEiQ0vagmFgt14pUPGdmPefcTBsO+NDhV6y
	 Leydj7BdoDANh2vAA0J8oMkpfVN0r2APVRsgPYjW+tG1Cr+Wo49WfKbdiNE2lIctcq
	 VkDTcYf9urISl90rB9eYjdTncmi4Auv1fPb9jvRVKKtiiKEo/RwQwXbOcKsezUlBUy
	 48ToG71uUKOcg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I_7m6gb-kglp; Mon, 12 Jun 2023 07:25:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0772820B7;
	Mon, 12 Jun 2023 07:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0772820B7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2DB051BF3F3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:25:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 028BB417E6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:25:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 028BB417E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0xRZq9qzq3Sc for <intel-wired-lan@lists.osuosl.org>;
 Mon, 12 Jun 2023 07:25:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA240417E4
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CA240417E4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 07:25:33 +0000 (UTC)
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-350-dleybeoePS2pCjrBj_BK0w-1; Mon, 12 Jun 2023 03:25:16 -0400
X-MC-Unique: dleybeoePS2pCjrBj_BK0w-1
Received: by mail-qk1-f197.google.com with SMTP id
 af79cd13be357-75ec91f26c8so86316885a.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 12 Jun 2023 00:25:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686554716; x=1689146716;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=4o6iBs/cGUwezMGSZngT4KvoAhZmnl7dmMW6aK8mMXs=;
 b=KzThEA/Qw+FdVX8g4yxArcBKCDfoXiBvIiVmemAeTQBocHS0raue2MgogKSbeXVwf6
 YEzFsyGyPl+dgkPmxgiQ4km2byNOjh9IUB1ywb1PTrwi5sF+/VUKKr4F3Jba01anXH1I
 U+eVjJ5GlXlZCnHmKbCxzuy8kQb3CZxg5vZlB4862JEvan7kN92fqk6EL2dx3M1bq1WX
 ajv9U6UPV0PyU9KB1wnk5y1wLzzMZcDhEleGwtckebJLp0yTKT+ZDxBXcM2s9jxexW3w
 vheunS/MN5J5FizBIPKh9/syeGM2d5pCv27WeKqVJOK8v6vQda/zJA2FCOHkeA78eySX
 2B+g==
X-Gm-Message-State: AC+VfDyGT/nNNNQTNnbHu9shxGsi/Y4vP1qlfYuEH/bI8nQZWfXF9W3h
 ioTATgGd/7rbglBbTihAcovVFhB+r5XGN1SZELOQP4nkkeCf4+XGmHcNKHZHDh94qdaVsoW/VGe
 MerhcsmfcmKBQrLsIA6aEG9QD90VNcA==
X-Received: by 2002:a05:620a:261b:b0:75d:53ee:ced2 with SMTP id
 z27-20020a05620a261b00b0075d53eeced2mr9737769qko.3.1686554715890; 
 Mon, 12 Jun 2023 00:25:15 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5VuifOapEch7jQlR/qS70uakqBc0QmL94RvL3OjCGbDQ+rEyQGny14ZUgrn99WU43OqLM/LQ==
X-Received: by 2002:a05:620a:261b:b0:75d:53ee:ced2 with SMTP id
 z27-20020a05620a261b00b0075d53eeced2mr9737716qko.3.1686554715595; 
 Mon, 12 Jun 2023 00:25:15 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-250-244.dyn.eolo.it.
 [146.241.250.244]) by smtp.gmail.com with ESMTPSA id
 v11-20020ae9e30b000000b0074fb15e2319sm2685635qkf.122.2023.06.12.00.25.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jun 2023 00:25:15 -0700 (PDT)
Message-ID: <38dad5cb196741e56d018cea155982928694b2cc.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Jiri Pirko <jiri@resnulli.us>, Arkadiusz Kubalewski
 <arkadiusz.kubalewski@intel.com>
Date: Mon, 12 Jun 2023 09:25:06 +0200
In-Reply-To: <ZIWVuPMyKRPv6oyh@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
 <ZIWVuPMyKRPv6oyh@nanopsycho>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1686554732;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Hbhwi16/sL7QaUu8rt6HmCaatmIMJWVXTMZfRH8X3oU=;
 b=UYUHPxCnrYq72gagNo/p71Aooq55bn2coge7NEypv4RhCEFMeHpWcvYwLf9xwKsuS2PFA3
 fu52CtfvGHa938l/afVoHUDPxCwrsuyM2jBXwLpqv/AAk5K1Wi/N2cUQN63uDtyFqF9zuE
 RJBeg6u+iGJK63Z49BF5oarWDqI5SqY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UYUHPxCn
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 03/10] dpll: core: Add DPLL
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
 airlied@redhat.com, vadfed@fb.com, ricardo.canuelo@collabora.com,
 arnd@arndb.de, idosch@nvidia.com, richardcochran@gmail.com,
 claudiajkang@gmail.com, kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com,
 liuhangbin@gmail.com, kuba@kernel.org, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, 2023-06-11 at 11:36 +0200, Jiri Pirko wrote:
> Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com wrote:
> > From: Vadim Fedorenko <vadim.fedorenko@linux.dev>
> 
> [...]
> 
> > +int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
> > +			 const struct dpll_device_ops *ops, void *priv)
> > +{
> > +	struct dpll_device_registration *reg;
> > +	bool first_registration = false;
> > +
> > +	if (WARN_ON(!ops))
> > +		return -EINVAL;
> > +	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
> > +		return -EINVAL;
> > +
> > +	mutex_lock(&dpll_lock);
> > +	reg = dpll_device_registration_find(dpll, ops, priv);
> > +	if (reg) {
> > +		mutex_unlock(&dpll_lock);
> > +		return -EEXIST;
> > +	}
> > +
> > +	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
> > +	if (!reg) {
> > +		mutex_unlock(&dpll_lock);
> > +		return -EEXIST;
> > +	}
> > +	reg->ops = ops;
> > +	reg->priv = priv;
> > +	dpll->type = type;
> > +	first_registration = list_empty(&dpll->registration_list);
> > +	list_add_tail(&reg->list, &dpll->registration_list);
> > +	if (!first_registration) {
> > +		mutex_unlock(&dpll_lock);
> > +		return 0;
> > +	}
> > +
> > +	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
> > +	mutex_unlock(&dpll_lock);
> > +	dpll_device_create_ntf(dpll);
> 
> This function is introduced in the next patch. Breaks bissection. Make
> sure you can compile the code after every patch applied.

WRT, I think the easiest way to solve the above is adding the function
call in the next patch.

Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
