Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A52E0898A00
	for <lists+intel-wired-lan@lfdr.de>; Thu,  4 Apr 2024 16:24:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 552DA8212E;
	Thu,  4 Apr 2024 14:24:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0SWMmpQMqjNO; Thu,  4 Apr 2024 14:24:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AA2528218C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712240673;
	bh=73VFeujZ5zRSnfDeve047kxeX/QzAwRRioVRteiOY0c=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wY7zg+p/d3yM6UPUqnBekrNr1ds86/zKm3V4yfrhhV/jv1tF8FtVTnYB11n4Nr+74
	 tEXHMQ8U9+xhFGHuhnBShehS+BDdVK9vv6eQWPWLEyxvJKsFTyNAXasyG7eEirfpmZ
	 n6lLMmWa8i+sRSFd+JQ4y/QSL3C3bByOR0xfMgZR05Z2UXmwFEMS0/OCH9QPWVhoEd
	 nCzWAPz58gJ6jmYkdDz9dL6RzReYhbyLojZ1N0zhChFbqKjyarUnIJDwrbYe4CbNqX
	 XRLxXZHTU/sUwh16fXhb5Jp1BCUIL++3c9iB5msXX9nez2JONgEKjD8rhmQXTzmUca
	 ftxgMFXZZudfw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AA2528218C;
	Thu,  4 Apr 2024 14:24:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA3A21BF365
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 14:24:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B461E414DE
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 14:24:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id D5QYQaNhKDzg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 Apr 2024 14:24:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::531; helo=mail-ed1-x531.google.com;
 envelope-from=dan.carpenter@linaro.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 93A16410EA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93A16410EA
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93A16410EA
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 Apr 2024 14:24:30 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-56bdf81706aso1446586a12.2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 04 Apr 2024 07:24:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712240668; x=1712845468;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=73VFeujZ5zRSnfDeve047kxeX/QzAwRRioVRteiOY0c=;
 b=L2lmKQMmR9Jah6EGRZxfxBgcSJJb328bxKiCrTXel8/O0TUikCvR4KK2wgz0QcpF1s
 wrpOcRFpj1wU3wfGgt84lF+s6WNGpnNrLXPkTFEIhDsnIQVEQTrgxTmE7rtKA2zZMBXK
 f8XnsdQiOHJC96wVgT0xJeSI36AwODQF1dB/5swXlZonlHy6+DwNAE+BGw5zt9Rcg9IG
 v+ovUqfh+AOc1142Kgwfe5ILqkABwifOW15fB8dLx7xycq29NUL847HL23qivhflNDiD
 V6pFJUuO58XweL75WhaT/hN+YHY8DX/W4/ROUbglnHKW/TRt1+gCBa1TtHtidE/zFaqP
 TrAw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXl8Q1u4XYxnEZjt2DHuGKwQOlB0P1ZVSTWQoMaUMdx5Pgb6vn5R/jFAzR5iUlQaws/beHnZysp3V5ypmfLHi6Py3NXN68Sp5hsdBakZnjmkA==
X-Gm-Message-State: AOJu0YyyU2nkDPxhjbWkv3fvOZEYXqN23GAJzcDpXukebGfJEn2Wc/Ad
 6PmnhTgQN/NnUjAvx4dMWbzdXPW3jrQaRAEi6owhmwXQCXvThqcDR1mBHGsi0fg=
X-Google-Smtp-Source: AGHT+IE95d2GyKE88haqUxd82qWyW9YDQkqTlbBv2liHK6vJPSxaCXRx7+j2iffF7lQ5Hkbtdl0/2Q==
X-Received: by 2002:a17:906:dfe3:b0:a51:982e:b3f7 with SMTP id
 lc3-20020a170906dfe300b00a51982eb3f7mr348369ejc.37.1712240668315; 
 Thu, 04 Apr 2024 07:24:28 -0700 (PDT)
Received: from localhost ([102.222.70.76]) by smtp.gmail.com with ESMTPSA id
 pw14-20020a17090720ae00b00a4e35cc42c7sm7998858ejb.170.2024.04.04.07.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Apr 2024 07:24:27 -0700 (PDT)
Date: Thu, 4 Apr 2024 17:24:23 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Message-ID: <5f63dd25-de94-4ca3-84e6-14095953db13@moroto.mountain>
References: <20240327152358.2368467-1-aleksander.lobakin@intel.com>
 <20240327152358.2368467-16-aleksander.lobakin@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240327152358.2368467-16-aleksander.lobakin@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1712240668; x=1712845468; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=73VFeujZ5zRSnfDeve047kxeX/QzAwRRioVRteiOY0c=;
 b=icX0tCj/1PmPj6pW8p0JNjO6vvWty5pt1s6ukIq3z2gNh8bNxzb4zbviLyZzFJqEjB
 udn0RnOPy9ZAnmIe1a57sWslRUDxnnoJ346dg4CFgBp4hrb3TGnyFFEX3TM/zo2T6LT4
 Shb3nXHEmlW9A5vRESm0zzYhr1ARdx6skgDpGr/XwGTLp4zjIPcuhrL/j5pkVx7tA04J
 GKizNlc2z5uMp20YHJw28kfRV7R2OBXuc4v8T1ex7I0ErpAKMk5JvbgFAbsBF9qtoLjd
 sxqT60su+UB1JNTn8w50VTlBDZqiaPZYgHiqHKzZ14lMHt3Ju7szErPSMTXlvNQExYc1
 7ruw==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=linaro.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=linaro.org header.i=@linaro.org header.a=rsa-sha256
 header.s=google header.b=icX0tCj/
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 15/21] ip_tunnel: use a
 separate struct to store tunnel params in the kernel
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
Cc: Yury Norov <yury.norov@gmail.com>, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 netdev@vger.kernel.org, Alexander Potapenko <glider@google.com>,
 Simon Horman <horms@kernel.org>, nex.sw.ncis.osdt.itp.upstreaming@intel.com,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Mar 27, 2024 at 04:23:52PM +0100, Alexander Lobakin wrote:
> +bool ip_tunnel_parm_to_user(void __user *data, struct ip_tunnel_parm_kern *kp)
> +{
> +	struct ip_tunnel_parm p;
> +
> +	strscpy(p.name, kp->name);

We need to clear out p before copying to user space to avoid an
information leak.  So this strscpy() needs to be strcpy_pad()

> +	p.link = kp->link;
> +	p.i_flags = kp->i_flags;
> +	p.o_flags = kp->o_flags;
> +	p.i_key = kp->i_key;
> +	p.o_key = kp->o_key;
> +	memcpy(&p.iph, &kp->iph, min(sizeof(p.iph), sizeof(kp->iph)));

And this memcpy() doesn't necessarily clear the whole of p.iph.

> +
> +	return !copy_to_user(data, &p, sizeof(p));
> +}

regards,
dan carpenter

