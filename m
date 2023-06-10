Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AD9072AD5C
	for <lists+intel-wired-lan@lfdr.de>; Sat, 10 Jun 2023 18:37:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2DFEC4268F;
	Sat, 10 Jun 2023 16:37:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2DFEC4268F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686415026;
	bh=4HJXVios3ebyJyubyoWsE6FBsmwyzFlnDZIoz8eY+J4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JAa8NapouONt891yoMcs3DbGJWImSAlwHq/OTgY8bxdzYPLW+S9+itbqhWd+z7jFl
	 IcKzUIkw8C5duBV88PO49iVA5Sx6VKg928KT4jieNwv2Xx7XXnxoXCZrPqTTKwoaO1
	 HVvPuJmY9ZcMAOQHMGfmfTATRD6GdtvAsm++J7EKkEzqmqvyND3NQ8X+tpvb0wSDjS
	 +t84cXToX7KZVqq5E9gp9/OdmdHPhhOAzJ+d/Vt+14XJ1ultsVicCSPlW5xuhElo8V
	 h4i1NXor8D34uecqfCtJy+lfP9IcVgSnwa7T6yvJX/yljIJZUmBV8HBSren9fC/nMa
	 k1E2bbScuS1Vg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D-D7nJcvWlbA; Sat, 10 Jun 2023 16:37:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E7CD142667;
	Sat, 10 Jun 2023 16:37:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7CD142667
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 48EA01BF32E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1BA5342667
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1BA5342667
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8yh005PXsa38 for <intel-wired-lan@lists.osuosl.org>;
 Sat, 10 Jun 2023 16:36:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B71204265E
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B71204265E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 16:36:44 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id
 a640c23a62f3a-977d7bdde43so595750566b.0
 for <intel-wired-lan@lists.osuosl.org>; Sat, 10 Jun 2023 09:36:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686415002; x=1689007002;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=X8VbRFbQOuqhFAPglq3rUuEFETDHIQvOfBEZigyYE00=;
 b=AmK14DlLhZXdLNLcVREFSkmFWAj7+K9ccHE8lWs0xGiwsJD1UvsksxPZyLIB1tlzqz
 J/FiCMYBTIpVAEmskb0vSaikrQsTmvcQBszTCwvwgxb9BZoXT/2BHNjYg+T6Y3SmTm+w
 46G0OZLuSCuIx6rTZZbGkPzcNcM3/UVxZ1c58Qaup70bs/yWqYMjjJF505EnfvakCsIV
 uFz6nqq+0E8sydlseOjftXENWjYZSczScWpw6A8I/NGfi0su94T9bNqtph8aID5B/7b2
 +l/4ualcBJ2oMkWjcWDsR8EvO5cSiAf4gfUMrGwzXSVVPUMXavuKUmfNb9hPqe5pWZaY
 t/Fw==
X-Gm-Message-State: AC+VfDxiYgC/iKLOgbL4U3YkJc8JUa9jDGpxyInSL/BNZ110t8tAvrul
 OmDCsOATjeKFyk77phC0LSIuBw==
X-Google-Smtp-Source: ACHHUZ4Vwbn5FWH4cTwcJAta6H8LObUb+MmlwTVJNnxgyTP9w4AqfMkvEAq7AY8i3/cgxY1KiIKmkw==
X-Received: by 2002:a17:906:58c5:b0:974:5e8b:fc28 with SMTP id
 e5-20020a17090658c500b009745e8bfc28mr5052733ejs.9.1686415002366; 
 Sat, 10 Jun 2023 09:36:42 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 t16-20020a1709064f1000b0096f89fd4bf8sm2728669eju.122.2023.06.10.09.36.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jun 2023 09:36:41 -0700 (PDT)
Date: Sat, 10 Jun 2023 18:36:40 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZISmmH0jqxZRB4VX@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-9-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-9-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686415002; x=1689007002; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=X8VbRFbQOuqhFAPglq3rUuEFETDHIQvOfBEZigyYE00=;
 b=fcZwhYQXbZrGUCxD2cxWjeGu7RFEU0ScoH6Fu1j8oZlTPWxdTpxZpMcmjp2EzDf/9d
 FfZHTb9Jegul55u7V0zCjPzL5GRZCoYWPuup8y0FgDEX/VE4abtLSaelCPLmqGhOFvXf
 0hiMFMG0SHOUJHmTFAtrpSUozKDhB5uBNbxOAm1l9CSRT6MqowUWZKvUTc/wZ1A942wY
 p8bL7na2XtF6nwgC4GwchfUxPf/wCWr8c/90iLSEeM82o53tpfNniHl2LweqNqiJTqEo
 8La/4VPf8P1Wsh/9IK2QftfK8rl0/botcKtufVlRAOULG+cZ15IapPXlNaqykMscXVUg
 hfOA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=fcZwhYQX
Subject: Re: [Intel-wired-lan] [RFC PATCH v8 08/10] ice: implement dpll
 interface to control cgu
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

Fri, Jun 09, 2023 at 02:18:51PM CEST, arkadiusz.kubalewski@intel.com wrote:

[...]


>+static int ice_dpll_mode_get(const struct dpll_device *dpll, void *priv,
>+			     enum dpll_mode *mode,
>+			     struct netlink_ext_ack *extack)
>+{
>+	*mode = DPLL_MODE_AUTOMATIC;

I don't understand how the automatic mode could work with SyncE. The
There is one pin exposed for one netdev. The SyncE daemon should select
exacly one pin. How do you achieve that?
Is is by setting DPLL_PIN_STATE_SELECTABLE on the pin-netdev you want to
select and DPLL_PIN_STATE_DISCONNECTED on the rest?


[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
