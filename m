Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF1C884E3FE
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 16:23:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 87A1585158;
	Thu,  8 Feb 2024 15:23:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VXM1s3zb1M4G; Thu,  8 Feb 2024 15:23:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E179B85168
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707405837;
	bh=+kce5mcXQl7hMctqyOMZfgjjjiVlSJf9xfNn4LQeJUM=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ihsnw+1XW+QqIOqIwY5H3aAgbps+zACfzx6rIrRoW59hU0A87Zv3weuLLlrOtifz2
	 XCcp0fzJjfGcwp2MtkP0htg7b7okocsPRLyjmf1SW4yrzvij8NYZT9XljSEhjXB7oa
	 WvvIsFmv5rqR4oKiln5NpM9KZuOsTK0UDz8EaVi0mZdj/PnRH3P+P9aOBAmF0Gp91T
	 +wOeAWXNpYHCS2iMKxhU019FkwLd/RgczfldXOFDp0Lm6T6u0X3pQx9AzpqlaFvV39
	 /eLpf0v27Eyf87BBRkfwZrbb9QQFnKHxiyPk8Gr1YObE6WF7aYS3MztsymtV20SlnF
	 LEiB32kGO3iRw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E179B85168;
	Thu,  8 Feb 2024 15:23:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4BE641BF2C8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:23:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42C0745AC6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:23:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zgqhf5Yp6uMg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 15:23:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=kuba@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A104A45969
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A104A45969
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A104A45969
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 15:23:54 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 695C361DC5;
 Thu,  8 Feb 2024 15:23:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76ACCC433C7;
 Thu,  8 Feb 2024 15:23:52 +0000 (UTC)
Date: Thu, 8 Feb 2024 07:23:51 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Takeru Hayasaka <hayatake396@gmail.com>
Message-ID: <20240208072351.3a806dda@kernel.org>
In-Reply-To: <CADFiAcK_XjLNjzZuF+OZDWjZA4tFB8VgeYXVJHR8+N3XryGxwA@mail.gmail.com>
References: <20240131134621.1017530-1-hayatake396@gmail.com>
 <20240131131258.47c05b7e@kernel.org>
 <CADFiAc+y_SXGtVqZkLoiWw-YBArMovMkuWw3X596QDwEtdBJ2g@mail.gmail.com>
 <CADFiAcK_XjLNjzZuF+OZDWjZA4tFB8VgeYXVJHR8+N3XryGxwA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1707405833;
 bh=vUl54UiVAR4pVki952Goznem4donRfaYG3IjD6EekXQ=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LODppW7PtGvkE4PNz81HxVQ1dcOwNal6ChR1BqpOMA9BuRbKEX7HNjyed+nY29NnQ
 n3q1wE/Iy/RIaiVzIWAtsKMxHOncuAmgcl6g2XkgATi32YD34dO0uF6EVMHSNl+3fk
 3XiSZ2kBzQwiQdPgXkQIePu0O+wVm+h0w6x90174waTE0kwX+mG0RU2r0Z8W9Vuxup
 kxJk3ulzlmsOep+relRv9BJbFwvbjQz+WR+GJwYa2rI6Ey9lYeZxI/2EXvL7Ozuijw
 BODRWTXPZrQS0Dd4urDd12MoG9lc5+IUOM4BK75NF1QddfmcU/qJorb2nDqZgrkOep
 AfaM9v9wX6NQg==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=LODppW7P
Subject: Re: [Intel-wired-lan] [PATCH net-next v6] ethtool: ice: Support for
 RSS settings to GTP from ethtool
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
Cc: Jonathan Corbet <corbet@lwn.net>, netdev@vger.kernel.org,
 linux-doc@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 laforge@gnumonks.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 vladimir.oltean@nxp.com, intel-wired-lan@lists.osuosl.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 mailhol.vincent@wanadoo.fr
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 8 Feb 2024 16:34:49 +0900 Takeru Hayasaka wrote:
> Hello Jakub-san, and all reviewers and maintainers,
> 
> It has been a week since I last received any feedback on this patch. I
> apologize for the inconvenience during this busy period, but I would
> greatly appreciate it if you could continue the review.

We're expecting a v7 with the patch split into two.
