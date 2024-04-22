Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FA98ACDAE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Apr 2024 15:02:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B801181EA5;
	Mon, 22 Apr 2024 13:02:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2lvDLYXahKCG; Mon, 22 Apr 2024 13:02:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2FBC781EA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713790945;
	bh=qm99+1pJ8lbqw/SE/f1RwUN3qOZS7r1xsqomwM1clCE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wP72/VNd1SIOgTqcavNY0+bot/ijqQ/aAJSNXNIh1VUpIKeHB2x8XuE6Q7FTTGcRw
	 UnLXCTN8UAEutgKck0R8YPmaYmsjLaG1erm3Ba42AXPbYp2nQ81SmQsQZTADGjllKJ
	 XoIdbLKZhsO6IpXSy8vKxGuMQSpX3HXxm57kWNoImWnPYXWbhRSVi1oEJA60P3DvK7
	 v9NU+6UZscxz5T/ht+ctgeTg4UEIm1jsNrhv1I8NUkWOSARlPKdg0SyGLnRCOvC3Gu
	 OliKQ0dM9l2wM8cmONyyQYr6tQE7YBhzSQPj7d127a3YncoqdoNyzZdJBCYaHKyIWv
	 y8UU6ylargORQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2FBC781EA6;
	Mon, 22 Apr 2024 13:02:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 981AD1BF322
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 13:02:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8F24681E84
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 13:02:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eiw5re-9KU9n for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Apr 2024 13:02:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=jiri@resnulli.us; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 95BC081E9B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 95BC081E9B
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 95BC081E9B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 13:02:14 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-41a70466b77so4778745e9.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Apr 2024 06:02:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713790932; x=1714395732;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=qm99+1pJ8lbqw/SE/f1RwUN3qOZS7r1xsqomwM1clCE=;
 b=qh1SoWeCL4wHgUvedVf3/mGS9PrrFQ4fUU2FEehuSebx8bnSji/X1KE1gdyxdHLCoo
 mujz29bV/Sc6xpW6Ei71yR1C6ajknaCJDVgD2BwX2qw4OWoudYVsZrWuLj4V6Gb7Zv4k
 aSgmtY1ZvPaYpLA3Eb5FnfkZ7NYLqBgpMDQ69tEbyzN1E01+CFGPVf06k42DIXSUxBr+
 qn79qQE3JvEAOipXybXqiqNprWJFjs5+IW7LEQAYyClWYvF4CUbkzZYX/2IHuIJyKzfi
 8AxRC4l1kZa+m1lma63D3CThocKZ022hszNgsHbfHJpiEslwTr/FSkeJpgYmYseqmBxU
 IHuA==
X-Gm-Message-State: AOJu0YzxFEVm6Ns+l4N5nUW89JH3EFBwz3lTkpaERE35o4pDL4IAD+pP
 Q37b0A8CHIUw/tNtKrcHzX3LSlN5TDJ8XaG6URX23Hqjt9dpy9jPvzHJTRFyMLw=
X-Google-Smtp-Source: AGHT+IG3NklYHUNy3UDg5EkitlWCH3cW4NlqKxBNkiYa584fYnuPfopZscWVPOTdu1h6QogJnanWFA==
X-Received: by 2002:a05:600c:46c8:b0:414:d95:cc47 with SMTP id
 q8-20020a05600c46c800b004140d95cc47mr9577310wmo.30.1713790932386; 
 Mon, 22 Apr 2024 06:02:12 -0700 (PDT)
Received: from localhost (78-80-105-131.customers.tmcz.cz. [78.80.105.131])
 by smtp.gmail.com with ESMTPSA id
 bg5-20020a05600c3c8500b00419f419236fsm8281965wmb.41.2024.04.22.06.02.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Apr 2024 06:02:11 -0700 (PDT)
Date: Mon, 22 Apr 2024 15:02:10 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZiZf0k-38srn486H@nanopsycho>
References: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240419171336.11617-1-michal.swiatkowski@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1713790932; x=1714395732;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=qm99+1pJ8lbqw/SE/f1RwUN3qOZS7r1xsqomwM1clCE=;
 b=YEJWPk1hzZNfW7kvebnwTJFBH99U5KxxzonrDBjBI5vYoTsDiHebFvCIAkeJxNHp8w
 qJol5DuAcTYTrFktxkiz1Ou4koqeqGLPKAen/iszkCXLZJArqYnRmIxwfXfKk7E5PO+g
 Q+wPKiou2lqLhJPPL9EtbQZJ9AM85UMID/X9K2grHUsTa3gUeE5agzK5pnZ3SoBpEXit
 FMy/CSz3oCIY1sUsNElUnRWx2Lkue50i9cI6USu7ngzJHJfThpUttsqc7F/2mDlCyPIc
 GIWW8L4on1A98uAv+U5PK3cJXkt3+xqK6GlV+J+By/UDFxQyoHhmMpPce+XqQa3nKbCv
 NhIw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=resnulli.us
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=resnulli-us.20230601.gappssmtp.com
 header.i=@resnulli-us.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=YEJWPk1h
Subject: Re: [Intel-wired-lan] [iwl-next v1 0/4] ice: prepare representor
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

Fri, Apr 19, 2024 at 07:13:32PM CEST, michal.swiatkowski@linux.intel.com wrote:
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
>[1] https://lore.kernel.org/netdev/20240213072724.77275-1-michal.swiatkowski@linux.intel.com/
>
>Michal Swiatkowski (4):
>  ice: store representor ID in bridge port
>  ice: move devlink locking outside the port creation
>  ice: move VSI configuration outside repr setup
>  ice: update representor when VSI is ready

FWIW, looks fine to me.


>
> .../net/ethernet/intel/ice/devlink/devlink.c  |  2 -
> .../ethernet/intel/ice/devlink/devlink_port.c |  4 +-
> drivers/net/ethernet/intel/ice/ice_eswitch.c  | 83 +++++++++++++------
> drivers/net/ethernet/intel/ice/ice_eswitch.h  | 14 +++-
> .../net/ethernet/intel/ice/ice_eswitch_br.c   |  4 +-
> .../net/ethernet/intel/ice/ice_eswitch_br.h   |  1 +
> drivers/net/ethernet/intel/ice/ice_repr.c     | 16 ++--
> drivers/net/ethernet/intel/ice/ice_repr.h     |  1 +
> drivers/net/ethernet/intel/ice/ice_vf_lib.c   |  2 +-
> 9 files changed, 88 insertions(+), 39 deletions(-)
>
>-- 
>2.42.0
>
>
