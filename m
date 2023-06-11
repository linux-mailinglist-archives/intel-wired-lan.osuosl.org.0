Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C5672B131
	for <lists+intel-wired-lan@lfdr.de>; Sun, 11 Jun 2023 11:37:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E7DAB6110E;
	Sun, 11 Jun 2023 09:37:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E7DAB6110E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686476230;
	bh=3kC+eF5J2F1aVsycC4ycCg8JUEuw+h9ccG3XeI8fC4I=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Kb+Lc/KG9yCwV67pJd6TsBxTe03asuxWXkFOvUskARLPSm1cjiPk+amQqbMXYfUdA
	 iuLcfGhZNn0Ybz4nbLkfppK+1YdM/B6BynPhTYGysZLsVxmp5RjVSvS2LLcCFELS1O
	 sAF/ALLYLI8S/b9qrn1+nVxMaenD2TtDxZAFlWWjzkVFzpGJeSpoBkF5Yk4VECHPV7
	 hO66+zpUXm5Z4dHqgwfo9ekKRElXAG67kHAi7Z98e3pdmTTrdQvjU3IiNsTUlY2RT6
	 1XrTjplmzq3yZ3tJezfy5SjzTnrEaIYekAF+msn22UvnYUi0s+Ofc8KeERWQV0se1Z
	 LSS9J5f/u1oKg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kiaUSzcoGHbJ; Sun, 11 Jun 2023 09:37:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C906D60B45;
	Sun, 11 Jun 2023 09:37:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C906D60B45
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DD381BF38D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 09:37:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5908860B45
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 09:37:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5908860B45
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z64EiTb5Ctci for <intel-wired-lan@lists.osuosl.org>;
 Sun, 11 Jun 2023 09:37:01 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 64E02607AA
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 64E02607AA
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 09:37:00 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id
 ffacd0b85a97d-30aeee7c8a0so2361769f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Sun, 11 Jun 2023 02:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686476218; x=1689068218;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1RzKoavleYmYbGi4L50Fse1b510eueYfvrCoJAmsbxo=;
 b=LV3xKaBobqizhP/xmAggkST6af0hoZHwQnlOMUd0AQ8sWczs7cQ1fP1M6KaZen66VC
 Laxk9aYFLC1tDk89VIELazDNieLU6cf5rnk+iVXqZLVNley8tHm5ygXJvPKbKYjtyJt8
 ecSKLf3Yw6duv5w/zJLc2mNGbn3z6XBQovAhGdrEcVHLw0e5VLEbDGbGchZk3OlwEeIQ
 0IRO7BA8U+o1ZoTD4bbh7O3SqPBVQ8zm+mH7iRsCvd20dW89dTtk+Ww9jTC5JqV9aHcm
 PVmBNMFzsthXC2Vs1SMNMsUqIKlOhXGtB+TV1mbCu6cwl6a1NBqkqJsolpnCg0jKpKpq
 FlWg==
X-Gm-Message-State: AC+VfDxg00Y1+GPfcOaHKEMwX4WwwNlHvI747jZhgwzoIvhSJ1x+tOll
 qo7OCz71yoA8BEQ3NWee0pmwtw==
X-Google-Smtp-Source: ACHHUZ5+nfn02bkuQTuCe1HVJNha7vkQ+Bf1+3Syh+Cs505sLe6+OvuIFC/T+1SNK4FODSOQZ+G7VQ==
X-Received: by 2002:a5d:6e0c:0:b0:30e:47e2:7eca with SMTP id
 h12-20020a5d6e0c000000b0030e47e27ecamr2880966wrz.3.1686476218225; 
 Sun, 11 Jun 2023 02:36:58 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 k20-20020a05600c0b5400b003f4266965fbsm7983801wmr.5.2023.06.11.02.36.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 11 Jun 2023 02:36:57 -0700 (PDT)
Date: Sun, 11 Jun 2023 11:36:56 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Message-ID: <ZIWVuPMyKRPv6oyh@nanopsycho>
References: <20230609121853.3607724-1-arkadiusz.kubalewski@intel.com>
 <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230609121853.3607724-4-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20221208.gappssmtp.com; s=20221208; t=1686476218; x=1689068218; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=1RzKoavleYmYbGi4L50Fse1b510eueYfvrCoJAmsbxo=;
 b=GQKny/Ocfst/o+Iz0zqLh9RYFAbp7j4h3MNYdU0ew61bb+vEXAkw3uBdHqUYfrK5kJ
 Mmo+9ATeTsy6jpHk4rWHMICl+7C8UibYVaL2giyJyB3zqUMVLC/QsdxrQEEoQoKWfbmg
 +Lo3EuyVmxQvNzDGtYq+41t3CP/zZbUuKl5HuNxk+qfYeEqSt+iG4NNUyH9OrtIhmVzp
 UbDUe/olXXA6Cgx1+RhqGFa/0ms3SJiQnQIUOeMrysO1ozG9Z6Fm3bpD34jdKyrPq57H
 uQUVcz7IhjPT78Bp0Ndtwiugfk5Sh0OhOyGLGcIUpuNxbBD92XvQm04DgjSD2PPpoNed
 i66Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20221208.gappssmtp.com
 header.i=@resnulli-us.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=GQKny/Oc
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

>+int dpll_device_register(struct dpll_device *dpll, enum dpll_type type,
>+			 const struct dpll_device_ops *ops, void *priv)
>+{
>+	struct dpll_device_registration *reg;
>+	bool first_registration = false;
>+
>+	if (WARN_ON(!ops))
>+		return -EINVAL;
>+	if (WARN_ON(type < DPLL_TYPE_PPS || type > DPLL_TYPE_MAX))
>+		return -EINVAL;
>+
>+	mutex_lock(&dpll_lock);
>+	reg = dpll_device_registration_find(dpll, ops, priv);
>+	if (reg) {
>+		mutex_unlock(&dpll_lock);
>+		return -EEXIST;
>+	}
>+
>+	reg = kzalloc(sizeof(*reg), GFP_KERNEL);
>+	if (!reg) {
>+		mutex_unlock(&dpll_lock);
>+		return -EEXIST;
>+	}
>+	reg->ops = ops;
>+	reg->priv = priv;
>+	dpll->type = type;
>+	first_registration = list_empty(&dpll->registration_list);
>+	list_add_tail(&reg->list, &dpll->registration_list);
>+	if (!first_registration) {
>+		mutex_unlock(&dpll_lock);
>+		return 0;
>+	}
>+
>+	xa_set_mark(&dpll_device_xa, dpll->id, DPLL_REGISTERED);
>+	mutex_unlock(&dpll_lock);
>+	dpll_device_create_ntf(dpll);

This function is introduced in the next patch. Breaks bissection. Make
sure you can compile the code after every patch applied.



>+
>+	return 0;
>+}

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
