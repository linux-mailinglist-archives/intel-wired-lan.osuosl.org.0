Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4A172B145
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Jun 2023 12:01:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F4CC60EE3;
	Sun, 11 Jun 2023 10:01:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F4CC60EE3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686477685;
	bh=H4N/qL50FJbhfYtHZ3ezi7YdckhXvOkKgaspEqrjK8U=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Aiz/WpXVeYcfWOCJMa06DHykDmSQ/oZFwe/AP825aKALN/O3ogFTHj39IGu2RZI58
	 iDCYGDO3bEHMBIrXT0CroS1aoIjArmAMNyG4ORgdP6QIoVR7YwWFpk82AmGdOEbqMt
	 xpYZSQ6+4p8WBWMJyoWbHzZ0HvGQRysmcx7oHLuMjNgoPj5HOilsGZ/hSRRMh6H0oD
	 xofathrLdT2r1f2/COcpt3AYIV0Hheo0Q44e9SonzM3yEqPnzSqiiM+IxyJ4ApDB6o
	 a6M0q3R62k9Xj7Momge3mXU+EH35wvGHOUYl/pimLrO9BzOUmFj4rdopiwahjyuTxK
	 W806wmsy0EaDg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4YmsOCFZNwsN; Sun, 11 Jun 2023 10:01:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DEA8E60BFF;
	Sun, 11 Jun 2023 10:01:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DEA8E60BFF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A51621BF38D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 10:01:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B8A1417C0
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 10:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B8A1417C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WeGMPM0vND3y for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jun 2023 10:01:17 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5234A417B1
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com
 [IPv6:2a00:1450:4864:20::52c])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5234A417B1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 10:01:16 +0000 (UTC)
Received: by mail-ed1-x52c.google.com with SMTP id
 4fb4d7f45d1cf-516a008e495so6890750a12.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 03:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686477675; x=1689069675;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=U7HN0f6TOWWkr11pJT0tfFyGZ1Me6eKxGL1ZqHz5p/E=;
 b=aNeDJS5BLkZtWBb9jFck//pri8FvRE/bAagBBO5Q3ZTUJcvXAKDWUvsosiEt9QOhyh
 y9WFZse2htO96CZP4DMQo+J/xMhrLX9FZjumQqTABAVDrTxrX4m2W/aCiBqG6Orv5p9h
 ljoqCPTHEobV+USH070jk5oVoYzUcpQ/RANkqaNboPbW8tVFbtvrmhi/M5y2yCTFOBkv
 5bNmZ2wIJymoKTU90pGzvlkSe6SJOhz/Asu/arzlIHfAcGfqs+il1f+yZ/9llX8k4ck0
 BsXD3gR6X7XslhqdShUuxfS1uvHjN+Vcum+Excp3RoblPXQnUTEC6FVMbryVcqkG21mX
 ewmA==
X-Gm-Message-State: AC+VfDzJv89qATa9RrjPP1YxBodi0uwjHaoRiXjcCugTdljyxX/FERpy
 uMysC09nX9AAaojp0ySqotXvDg==
X-Google-Smtp-Source: ACHHUZ5gWuO7BIceLcmBKNYkMGao9xFPw4XyyBHtMY8YchWoEkZuudgzgArbFrxLghboz06yhmTvFA==
X-Received: by 2002:a05:6402:520a:b0:516:a1d5:846f with SMTP id
 s10-20020a056402520a00b00516a1d5846fmr3286182edd.1.1686477674815; 
 Sun, 11 Jun 2023 03:01:14 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 c7-20020aa7df07000000b00514b854c399sm3744198edy.84.2023.06.11.03.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Jun 2023 03:01:13 -0700 (PDT)
Date: Sun, 11 Jun 2023 12:01:12 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIWbaLd87EMbkDAY@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686477675; x=1689069675; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=U7HN0f6TOWWkr11pJT0tfFyGZ1Me6eKxGL1ZqHz5p/E=;
 b=CK+40rDIEO4qBWIjslHU71w2FzcpmL66yJ2ffo8QNiGyJVgjt2njdUY13r8vlWLyRh
 bFzF3aspyFifeybgeAm5JsTbvM0Y0U+htlNyMhY4rZdso0DpijNINO8CzRHkG4h6vTm2
 qDNewH1UtM2COGT2JZr0R53kucC4xe+Scno8vkuo9GrhvTpVhzxcRtNBK/Aq+CslaRWL
 6hGnkuO6xqG3ciKigTB9qYkhGVxQ+wJ/f/yVK+VC1tnSVF3wpmP3pZLfGG23kH9vlrXt
 mefPq9PTmMZ08D7NdNkgeJfPZ4BFv+VTpfc09VRr8QF7C3rGqDJ7tFv5INdS55jkARsQ
 vZYQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=CK+40rDI
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
 airlied@redhat.com, vadfed@fb.com, pabeni@redhat.com,
 ricardo.canuelo@collabora.com, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com, kuba@kernel.org,
 nicolas.dichtel@6wind.com, linux-arm-kernel@lists.infradead.org,
 axboe@kernel.dk, sj@kernel.org, vadim.fedorenko@linux.dev, linux@zary.sk,
 gregkh@linuxfoundation.org, ogabbay@kernel.org, nipun.gupta@amd.com,
 linux-kernel@vger.kernel.org, andy.ren@getcruise.com, tzimmermann@suse.de,
 jonathan.lemon@gmail.com, saeedm@nvidia.com, davem@davemloft.net,
 milena.olech@intel.com, hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Jun 09, 2023 at 02:18:46PM CEST, arkadiusz.kubalewski@intel.com wrote:
>From: Vadim Fedorenko <vadim.fedorenko@linux.dev>

[...]


>+ * dpll_xa_ref_dpll_first - find first record of given xarray
>+ * @xa_refs: xarray
>+ *
>+ * Context: shall be called under a lock (dpll_lock)
>+ * Return: first element on given xaaray

typo: xarray


>+ */
>+struct dpll_pin_ref *dpll_xa_ref_dpll_first(struct xarray *xa_refs)

[...]


>+/**
>+ * dpll_device_get - find existing or create new dpll device
>+ * @clock_id: clock_id of creator
>+ * @device_idx: idx given by device driver
>+ * @module: reference to registering module
>+ *
>+ * Get existing object of a dpll device, unique for given arguments.
>+ * Create new if doesn't exist yet.
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * valid dpll_device struct pointer if succeeded
>+ * * ERR_PTR(-ENOMEM) - failed memory allocation

Yeah, that is kind of obvious, isn't? Really, drop this pointless
coments.


>+ * * ERR_PTR(X) - failed allocation on dpll's xa
>+ */
>+struct dpll_device *
>+dpll_device_get(u64 clock_id, u32 device_idx, struct module *module)

[...]


>+/**
>+ * dpll_pin_register - register the dpll pin in the subsystem
>+ * @dpll: pointer to a dpll
>+ * @pin: pointer to a dpll pin
>+ * @ops: ops for a dpll pin ops
>+ * @priv: pointer to private information of owner
>+ *
>+ * Context: Acquires a lock (dpll_lock)
>+ * Return:
>+ * * 0 on success
>+ * * -EINVAL - missing pin ops
>+ * * -ENOMEM - failed to allocate memory

Does not make sense to assign one errno to one specific error.
Avoid tables like this.


>+ */
>+int
>+dpll_pin_register(struct dpll_device *dpll, struct dpll_pin *pin,
>+		  const struct dpll_pin_ops *ops, void *priv)
>+{
>+	int ret;
>+
>+	mutex_lock(&dpll_lock);
>+	if (WARN_ON(!(dpll->module == pin->module &&
>+		      dpll->clock_id == pin->clock_id)))
>+		ret = -EFAULT;

-EINVAL;


>+	else
>+		ret = __dpll_pin_register(dpll, pin, ops, priv);
>+	mutex_unlock(&dpll_lock);
>+
>+	return ret;
>+}

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
