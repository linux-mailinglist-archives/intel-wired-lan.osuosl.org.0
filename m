Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8CAAC3D13
	for <lists+intel-wired-lan@lfdr.de>; Mon, 26 May 2025 11:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 88B9080C90;
	Mon, 26 May 2025 09:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1gQqiohh3p5S; Mon, 26 May 2025 09:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F336680DFE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1748252516;
	bh=lJmA+auFBQfr1DUILoMWF+XAhP7fsD7jdarK60rySkY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ATU/zr6/7+jkNOi5gLXrQ+9WfcWjsIGxJq7aMtyxUkb3aB0sYWj+GI8kaGBWSAQJ3
	 uFvvp86NyiVq4ZdelD6WNKTkPqev7q9VVSWUKO7oZ//DJwASLla+ZgKehBjd/RJnPF
	 efK4wenL39FvNIwl29xvq13fM7WE/FNyqGuYSa+nbehF7CUFA5VnrP8BRLidKVp+q4
	 yz36vw0N8oJNz+5tbiEeTZuaTwXnUsmfU5rZwxqzWzthnxRBjfkF+XurebiYO3eLok
	 AdDV6VHoaXDeqXpQwD70YwelJ1eYqqIOUchIjd1fU/Gh3Xb/6f5kf4dvLcuDB/30vq
	 tRxPKx82Lhozg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F336680DFE;
	Mon, 26 May 2025 09:41:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EEA168
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:41:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 10601607CF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:41:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FgIMkOzhYc4S for <intel-wired-lan@lists.osuosl.org>;
 Mon, 26 May 2025 09:41:53 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::434; helo=mail-wr1-x434.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2EBC2605BD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2EBC2605BD
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2EBC2605BD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 09:41:53 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id
 ffacd0b85a97d-3a35c894313so2040880f8f.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 26 May 2025 02:41:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748252511; x=1748857311;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=lJmA+auFBQfr1DUILoMWF+XAhP7fsD7jdarK60rySkY=;
 b=xC/mZjcg5whmkaHBB9KoPSReBXESxZCyjGAuM+H4Lunwgg1R0c3Juu1Wj0T7wWUB80
 6Rf/athJ8Ng7Ami6EPEe3VxrVpe+rn12MxSdso2PIBtq2dIwjOFYsl4hz8I52XtYP8tq
 P6P9578RpccQ/ZVV5V9QPq/kMbqpkUf8rqlX32HUI8M6t1i7OSVyUb28LamnM6az7wLu
 U0px6rCDZxCaUBpJyOt4JLY2ui428ii7zShPWRc/48cHwVq/q+LvVxP+5F/C5RsmWJju
 wxcAIptXrp/VZBa+YAXKrR/IB3WXjBbjTfuOmpUyfurlp7o4NRgWI1e1DEB6bXwJhHHD
 pi8g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUbvJXUNXPMK4VkGusQbuodAnl4lUL8IdU8hQYpDyah9MeoAxuYDiGMW8XiKtUuQ0rtXluaev5cidJ0y0qgACY=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyR9fRL3AxNRkhoV0UYoJMDM259B6y3o8CDqN1bjfNHwq/eJxzS
 0yUPLi64qWHsgH88D0HTE+m7IT03GHqACrWlKtdHxj0QUCxg7deINtaOj5+B0tfSgvc=
X-Gm-Gg: ASbGncsCjKWXEG7Cw5VJkuZYlD+Eq4hgNnqVbLP1TyzOfvr476H9mMfz8If1GMNtUKP
 k6lC0LgpuSddMrRr7SuHYEZ3bXQUJeD9hn4/I12uGL4OSzbNpf5UswcgqZdCmCn4Qc+EEnuSf7B
 U52URLcGkEgZEMhmLn/rwb46BNPwoD4UIMBnu1EpXSCr2U72pjrChszsaLyHVcy+lqaOJoehLeg
 FEv5/1gka9CkO37UxZ5x1yp3/WQIouT2ZQgOLiw1xFt5d6fSMTMpIW/DgEHy68KqKvZuzA38Yxt
 lGWWzvHPmdsdLWIE4DEWot4LIs8xAK4u1nn7zghbaFZBn78wfF3n42VnlwBGsVWnYSdxiSC+pOP
 loGA=
X-Google-Smtp-Source: AGHT+IG8qcPgCe6g3rQUfM8YImSTE9FHiPfLbOy9uip4wVp1I8BHWjPMZtQYgrJU5MVy0rx4F64Wvg==
X-Received: by 2002:a05:6000:25c8:b0:3a4:d0fe:42ae with SMTP id
 ffacd0b85a97d-3a4d0fe4e5emr6093907f8f.10.1748252511231; 
 Mon, 26 May 2025 02:41:51 -0700 (PDT)
Received: from jiri-mlt (37-48-1-197.nat.epc.tmcz.cz. [37.48.1.197])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a4d56641absm3767945f8f.4.2025.05.26.02.41.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 May 2025 02:41:50 -0700 (PDT)
Date: Mon, 26 May 2025 11:41:48 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: donald.hunter@gmail.com, kuba@kernel.org, davem@davemloft.net, 
 edumazet@google.com, pabeni@redhat.com, horms@kernel.org,
 vadim.fedorenko@linux.dev, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, andrew+netdev@lunn.ch,
 aleksandr.loktionov@intel.com, corbet@lwn.net, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, 
 linux-doc@vger.kernel.org, Milena Olech <milena.olech@intel.com>
Message-ID: <3csutdtlt43m2jcfs5y6g7ih6hmfb5z63u3m5as2oi33cefkgl@dyk2ayd7anso>
References: <20250523172650.1517164-1-arkadiusz.kubalewski@intel.com>
 <20250523172650.1517164-3-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250523172650.1517164-3-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1748252511; x=1748857311;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=lJmA+auFBQfr1DUILoMWF+XAhP7fsD7jdarK60rySkY=;
 b=mYA6z5+Uz2f7v5vO5nIQoIPkXHPGKj/Xx1ifnYGdd4ziymOfuc1XZ4jNlxO2yegN9g
 gknv0FUZqd5T0SH48c0BShGg/RCDAsqzDLT03rRtLMHIO3K0bteJ1FpFjovSWaj5i10d
 jwVSB1U0nMxsN4IBuk0DXKGhVC7UKpo7mE16IsTQBx3i8WeN5TafvrojgflgfT7Sq2LN
 Rdc/dryiLhmPdtfqjYhG11ZmIty0+mFAWTD7mpG2VhMsb1TNcSJwUZUVdrYq0543GXDx
 mQJaiijng4lYU//UrdNC/nRwSj/VIlYtaNe8HjUzmKq5CKb3siJBob+zrjEnmObhphoi
 /bSA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=mYA6z5+U
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 2/3] dpll: add reference
 sync get/set
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, May 23, 2025 at 07:26:49PM +0200, arkadiusz.kubalewski@intel.com wrote:
>Define function for reference sync pin registration and callback ops to
>set/get current feature state.
>
>Implement netlink handler to fill netlink messages with reference sync
>pin configuration of capable pins (pin-get).
>
>Implement netlink handler to call proper ops and configure reference
>sync pin state (pin-set).
>
>Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
>Reviewed-by: Milena Olech <milena.olech@intel.com>
>Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
