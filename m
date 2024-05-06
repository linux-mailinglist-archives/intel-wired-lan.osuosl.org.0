Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F928BCC83
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 12:59:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3C0B560825;
	Mon,  6 May 2024 10:59:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3ZoHyGX0Rsip; Mon,  6 May 2024 10:59:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9885960819
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714993188;
	bh=P+OglS94Et00cI+S5fDEtR1ur4qsAJtvWDOKz0gQ2yY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=n7O5ZE+GYmgIoouLdgwWR6QH//ZHN1PwLHDARbZaVHhVye6gSPK9eqRVVN6dLzTdD
	 Nk47x2mYvIvBsCOUiKKZdZtpqsdOM1Uvlwt9c2Q4GSF8DeonRvWVLRIwbXTcBgU0hS
	 YU0md6LyOIlpiUNV3puWjTysZugubvbgNeN0dJx2zAYufsWO0JYp9/4JbuzHNrmjBx
	 RRRe/37DVgXGk6q/y1I6jhLzGN9QVBOqpVihod5eqEEPWVv9hZFx6v4iD4wjhtWHu9
	 SxILfl3rzAHAfRE23a3S9LPfSE5yP4Rx/xOkDXN6r/lfxHJdBiYNv7dHrqA4QyYLCr
	 IRZgm4VIBbwdA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9885960819;
	Mon,  6 May 2024 10:59:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C80B31BF276
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 10:59:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C0DCF60819
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 10:59:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Wj9XTbSpYTb3 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 10:59:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::331; helo=mail-wm1-x331.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 503C160818
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 503C160818
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 503C160818
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 10:59:43 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 5b1f17b1804b1-41ba1ba55e8so10660305e9.1
 for <intel-wired-lan@lists.osuosl.org>; Mon, 06 May 2024 03:59:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714993181; x=1715597981;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=P+OglS94Et00cI+S5fDEtR1ur4qsAJtvWDOKz0gQ2yY=;
 b=hjJLKvZ/muGea4EqtL2jwyH30UQl03aE0iPeINNvnicQukWfQ/rayzS+5PlksteZOf
 aYAeylKMjgMvS71TlAFU0pFlqCbbG8lUiCrggVqm5GgOpCkVkQrJnlk3hLC7p17IE8Tt
 9EHbtNjg8lUFVZQzq2reuUzeJkH9JkuTNv/wn9Vm5O86c+DCJoEwQY/2mZlchATXMl5l
 y6B9ZZMAFvAAneDn4AkIqXX8r7CJNAEq3IDgxPJkPvZP7bkSocCf6gahzfAfdVhk+uyC
 17xBmW4/qPR1wTpVtMs7Q4AnCVfB0oAxtQK7o9721597pEbfmnpocaq9q8sPEOfFGVF3
 ja9w==
X-Gm-Message-State: AOJu0YxldZeJfDxGaeyrHU83W1iYb6ng5Sao6JUIjVTpuQ2QOGFM3WG1
 vGk7KRU+nM8Cozaw6Y7Z8dgQ2J5xZqT0FCTlKj+s27o/EB6X8j9bgvGpo1EeR40=
X-Google-Smtp-Source: AGHT+IFpNlHQPtEvHqooZtQ6BAQGe7ztmpjEWgH7FYjZvPLEMUouEn2bE+kgr4uXJ0VYMrYcFt7DzA==
X-Received: by 2002:a05:600c:1991:b0:41b:e4dd:e320 with SMTP id
 t17-20020a05600c199100b0041be4dde320mr6712864wmq.26.1714993181269; 
 Mon, 06 May 2024 03:59:41 -0700 (PDT)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 p8-20020a05600c358800b0041a1fee2854sm19434867wmq.17.2024.05.06.03.59.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 May 2024 03:59:40 -0700 (PDT)
Date: Mon, 6 May 2024 12:59:37 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zji4GfZnj8-Vn2U7@nanopsycho.orion>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1714993181; x=1715597981;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=P+OglS94Et00cI+S5fDEtR1ur4qsAJtvWDOKz0gQ2yY=;
 b=LocNSfXpqZow+h143q2/R3bfM/roy63+KucE3SfsP8FAauOPiQBHy8lnxewG/m3ePN
 9Ha1WZFcqxSrarvvNAw2NyYB4I53ntuwTHyUwIbAZN5XkFXM2UwvXl0LKc3gNhdoy87n
 mX/RYG62PpHKfJOoVsX94YtqCI9oq/3CaWo5W0dz2zmCSBAM5ldoXVblyiGlAQ79DzcE
 Iiw3jhQ3O8g8on+bmQXPPqXf5VRimx0oVNPWLXRMSDhX4ZtaO+PMNo/HkN2koHxyOByE
 j5OjuoJeiPEjVqFSpQAKNjVCNMe8Dd/9kqER6iU2nMO+c7n0Om5tAR3mhAFuv3EXld/V
 xr3A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=LocNSfXp
Subject: Re: [Intel-wired-lan] [iwl-next v2 0/4] ice: prepare representor
 for SF support
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, May 06, 2024 at 10:46:49AM CEST, michal.swiatkowski@linux.intel.com wrote:
>Hi,
>
>This is a series to prepare port representor for supporting also
>subfunctions. We need correct devlink locking and the possibility to
>update parent VSI after port representor is created.
>
>Refactor how devlink lock is taken to suite the subfunction use case.
>
>VSI configuration needs to be done after port representor is created.
>Port representor needs only allocated VSI. It doesn't need to be
>configured before.
>
>VSI needs to be reconfigured when update function is called.
>
>The code for this patchset was split from (too big) patchset [1].
>
>v1 --> v2 [2]:
> * add returns for kdoc in ice_eswitch_cfg_vsi

Looks ok.

set-
Reviewed-by: Jiri Pirko <jiri@nvidia.com>
