Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF3C85A393
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Feb 2024 13:37:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AABD18207E;
	Mon, 19 Feb 2024 12:37:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kCHA-StsX089; Mon, 19 Feb 2024 12:37:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F230081FF5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708346267;
	bh=JPxHq3D4TTHsU6KrmKx/OnWiAztnrNLyJq4950Jts04=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=dZ/hvHeau+yd5f0vfg/k2zbbVWjxvVlRt80pdgwM3+e1IXqDQB8uiwieYjXC+nj3H
	 d+Yxh6fzqQBJQk45jk6pOGCP+V3dZa0vYPY4BLYyVPdA1NvkLdRRtZMgavdun0YGcr
	 d3svbgUiOJ25Gk6Nv17V70b4roZnzNFI5P537oTe6jfhHE1xrVj7PfjQitURB0oJtQ
	 uItxOF6F9v2DhRlhLaYjp30UFIRLcBtC7XS9dc0MsC2EnIiyQbRwWPuK4gTprj0aoo
	 sCSqYzG5B4s88VGi5nt7pyt9TACH4aYtUEEGnGsaoGTtawKi9+oxmvE5clckrNnKDi
	 1BN/YFhcYfRWg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F230081FF5;
	Mon, 19 Feb 2024 12:37:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B86971BF228
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:37:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A425A407B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:37:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G_tTdScaYW3p for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Feb 2024 12:37:44 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::335; helo=mail-wm1-x335.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 33FDC407B6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 33FDC407B6
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 33FDC407B6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 12:37:41 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-41268a88cdaso3843395e9.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Feb 2024 04:37:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708346260; x=1708951060;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JPxHq3D4TTHsU6KrmKx/OnWiAztnrNLyJq4950Jts04=;
 b=UJJIqs+o8cHeNEY2gkXcwsqhEaoTD4HK+Uj4KDp2zAK3ypOGa2cvtKzoCo2uz/cl0U
 u2DDzbdDTBDHz5o/iCuoOkIBR4bEQ8jtMJew7ZuUqJw9XCFqaYT6kgibpo+5lNXCQq1Y
 /SdAfHfu2y0ZhpZDhGk4Bxy5CXNppSPW6hYeHVHuyQyu4sVwfKe1vIRp5rHQ9nuE5TfL
 UueDB7u01vTGuwjhdHbbIEHQuZrsj4TWuCcnKu1MfDMufzIcxLVY55iYJokAfTZKqxVk
 FUs5Ewu0wVWIJPtsDR41vju/Zicj452EdDt4lQeXLmp678rDxOGGonspapd6oilZ4lHR
 //yQ==
X-Gm-Message-State: AOJu0Yx8FQvbMYOjqoOSuZE5t6uePmGtuXpAHLV+OaeStFk21Fzfggi/
 1Ki+Wxjyy1kDTaxYf4qqGmF11NSuq8Ry7h/N0TguG0CGAaQioc/xlKbPaGaA/+8=
X-Google-Smtp-Source: AGHT+IEkfABZ7VVSTA8/OZaotC9kUyyIJ6Xbm8TXRcDqcL2B+C4FTtx2U8tHvdg6GWBayk3uMUKsDw==
X-Received: by 2002:a05:600c:448a:b0:411:e27d:5250 with SMTP id
 e10-20020a05600c448a00b00411e27d5250mr9757299wmo.37.1708346259739; 
 Mon, 19 Feb 2024 04:37:39 -0800 (PST)
Received: from localhost ([193.47.165.251]) by smtp.gmail.com with ESMTPSA id
 h5-20020a05600c350500b004124219a8c9sm10967222wmq.32.2024.02.19.04.37.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Feb 2024 04:37:39 -0800 (PST)
Date: Mon, 19 Feb 2024 13:37:36 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <ZdNLkJm2qr1kZCis@nanopsycho>
References: <20240219100555.7220-1-mateusz.polchlopek@intel.com>
 <20240219100555.7220-5-mateusz.polchlopek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240219100555.7220-5-mateusz.polchlopek@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1708346260; x=1708951060;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=JPxHq3D4TTHsU6KrmKx/OnWiAztnrNLyJq4950Jts04=;
 b=UKBt+6y30aAgqVVF/PKy2QgPQP7oUoEgls+TJfjMnkyK5Z7kM7RucwwTsIynhtkOoQ
 DhELH62muoyKVBVaoHLs26pfeQK3o3S3bryTN2EPyi2iSZ2j2eXLsZs0VvjBTjKH9w6C
 QBv8Wcvt0CU6GkEwmWKf67muLkajC34Q4sJ40a0XzCNLAErL44uysvipPnanbQxFbWan
 4I3hSRjolxo6P0IS+ynTC2EUGCacP0YYOWMq//3AxNFQQ/WKdlG8EnONNqBcGCJvsrIh
 ecHUigJXV6xNhvNyY5+HLA0XGr/s/nfp96GIT9Z/MPARl9wLL/CTCNVliE+Ls171fc41
 Q89Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=UKBt+6y3
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 4/5] ice: Add
 tx_scheduling_layers devlink param
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
Cc: netdev@vger.kernel.org, Lukasz Czapnik <lukasz.czapnik@intel.com>,
 intel-wired-lan@lists.osuosl.org, horms@kernel.org,
 przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Mon, Feb 19, 2024 at 11:05:57AM CET, mateusz.polchlopek@intel.com wrote:
>From: Lukasz Czapnik <lukasz.czapnik@intel.com>
>
>It was observed that Tx performance was inconsistent across all queues
>and/or VSIs and that it was directly connected to existing 9-layer
>topology of the Tx scheduler.
>
>Introduce new private devlink param - tx_scheduling_layers. This parameter
>gives user flexibility to choose the 5-layer transmit scheduler topology
>which helps to smooth out the transmit performance.
>
>Allowed parameter values are 5 and 9.
>
>Example usage:
>
>Show:
>devlink dev param show pci/0000:4b:00.0 name tx_scheduling_layers
>pci/0000:4b:00.0:
>  name tx_scheduling_layers type driver-specific
>    values:
>      cmode permanent value 9
>
>Set:
>devlink dev param set pci/0000:4b:00.0 name tx_scheduling_layers value 5
>cmode permanent

This is kind of proprietary param similar to number of which were shot
down for mlx5 in past. Jakub?

Also, given this is apparently nvconfig configuration, there could be
probably more suitable to use some provisioning tool. This is related to
the mlx5 misc driver.

Until be figure out the plan, this has my nack:

NAcked-by: Jiri Pirko <jiri@nvidia.com>
