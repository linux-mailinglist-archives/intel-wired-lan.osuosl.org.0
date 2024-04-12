Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C398A27D6
	for <lists+intel-wired-lan@lfdr.de>; Fri, 12 Apr 2024 09:21:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22E576136A;
	Fri, 12 Apr 2024 07:21:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ULoK6Du7FReh; Fri, 12 Apr 2024 07:21:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 719506131C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1712906482;
	bh=VPgHEx4yeITWUyWvduIV/zWYcay0QwpkqEsYb+K9LsY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=xwOku1Baa5BbbODRWelm7XPhwzj5MuAz6oNeXWIZFZfku6ONzLVs+kjEZj59L5eS0
	 7d/BCO/Ok81L4bTw+q4aGOshU3DqdTk0gtQi/OqG535fRItaSh5XHEnZp8Q28OZ3tx
	 FvYkq4f+79XYMxqPtSZZK28xyVeIGRRHV0qVLLDhKtEdyb1+i6FikaeTxs9dmJf0A9
	 4dqS0HK4ZZplqtpOCvugaNHOZCdZcj6zPF//SHK+rxQt+5dxZCklrIcbDWhlSQhpdg
	 PImG1v5RCMA2AKTL8gclrW5iJgoWi4jGI6WG00ZGdDh8MeXmPkWi26ZnSDx3yA1ZSz
	 miAhoie6j2N2w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 719506131C;
	Fri, 12 Apr 2024 07:21:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9F7561BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 879AD61360
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8e2oLAdaxEfL for <intel-wired-lan@lists.osuosl.org>;
 Fri, 12 Apr 2024 07:21:20 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::134; helo=mail-lf1-x134.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A70066131C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A70066131C
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com
 [IPv6:2a00:1450:4864:20::134])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A70066131C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 07:21:19 +0000 (UTC)
Received: by mail-lf1-x134.google.com with SMTP id
 2adb3069b0e04-516d0c004b1so858864e87.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 12 Apr 2024 00:21:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1712906477; x=1713511277;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=VPgHEx4yeITWUyWvduIV/zWYcay0QwpkqEsYb+K9LsY=;
 b=X1wfHEOcG42ZlNlQdVqCPXk04wn6n238AGr9gPbb/kvRPijSlHbex7DkEvANpfFaHG
 VYTLuZongHuyT03O6nPBAOq2PPJr/HzdL8dg7pA5r2m/f7zsmxY5czA2LgZ2Gz27YfEZ
 UDWk3qp0KlPPWVCHS8x1PNm8fU5gDleK3DprRy9aVy0pn1eBe9HnzQSCu+4VJ93HJvbC
 cqyVR8Er3sSgXqA37tmVNuawewlPDYEySvHw9R2OD5ogwJVLuIb0XISYpVXmvPjFlvQW
 Y/DN6tqBOiomHulI5RiZpSLVW56UTmdCqsj03NK1QIKznxQ6NvOC1I+9u7LWwGzzMZYK
 9A2w==
X-Gm-Message-State: AOJu0Ywe1NnY8a8zJcJ16TQBEIxcMLyC3a2eF812EDx13/16/PqPDMHX
 D4Jb+rTiTtyt5HMJ3IQcbNdGNhAC1Y4x9CeA+YyuQjeas+8lYrqUB0bdb7mkc3q8blUtgszAOBQ
 V
X-Google-Smtp-Source: AGHT+IHQaoqkaYxyV9GnjMQVUT9kFnPy1FEDhAnqtFFeWHjj/2GfMDxoHJGBJx70B0SdoiFqupHz1g==
X-Received: by 2002:ac2:44a2:0:b0:513:c4d9:a0d9 with SMTP id
 c2-20020ac244a2000000b00513c4d9a0d9mr1293220lfm.22.1712906477431; 
 Fri, 12 Apr 2024 00:21:17 -0700 (PDT)
Received: from localhost (host-213-179-129-39.customer.m-online.net.
 [213.179.129.39]) by smtp.gmail.com with ESMTPSA id
 u26-20020a056512041a00b005175e94dde1sm443478lfk.79.2024.04.12.00.21.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Apr 2024 00:21:16 -0700 (PDT)
Date: Fri, 12 Apr 2024 09:21:14 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <Zhjg6noDXGROVPuu@nanopsycho>
References: <20240412063053.339795-1-michal.swiatkowski@linux.intel.com>
 <20240412063053.339795-7-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240412063053.339795-7-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1712906477; x=1713511277;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=VPgHEx4yeITWUyWvduIV/zWYcay0QwpkqEsYb+K9LsY=;
 b=MFaedStVUzfPV2YPa5rVCfFCMmBdj/KbCQpJIa0bSx7CGGmVuHwVpxbqjvD0sMKk+V
 YczRLMcs6zh1Or/ClKhRluC3NYf22hbZJgEa+CXBEzgYyveJrwSQy3OuwPon5OXoNiC6
 iZ0CMxT6fHGOd155VUVHioV/TwKAOX6hK6t5oOVaDUcFUm3QL+c2W9imRWI62Nnz/wZ2
 XHue0ivj9rGQwPpyf7PutgcPD+0G7IaQpmu9Nzjo2oD3aLlH2AqEDspU+UA+O8vwULS6
 TuJm6aF9Uhqe12VDqvUcSs89O7/t78TQXF8fenmvLJq3a3ytKcR7fu2HtlVmAjekDXg3
 Jl3Q==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=MFaedStV
Subject: Re: [Intel-wired-lan] [iwl-next v3 6/7] ice: implement netdev for
 subfunction
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
Cc: maciej.fijalkowski@intel.com, mateusz.polchlopek@intel.com,
 nex.sw.ncis.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 jiri@nvidia.com, michal.kubiak@intel.com, intel-wired-lan@lists.osuosl.org,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com, Piotr Raczynski <piotr.raczynski@intel.com>,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Fri, Apr 12, 2024 at 08:30:52AM CEST, michal.swiatkowski@linux.intel.com wrote:
>From: Piotr Raczynski <piotr.raczynski@intel.com>
>
>Configure netdevice for subfunction usecase. Mostly it is reusing ops
>from the PF netdevice.
>
>SF netdev is linked to devlink port registered after SF activation.
>
>Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
>Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>

Reviewed-by: Jiri Pirko <jiri@nvidia.com>
