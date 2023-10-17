Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C307CBF0F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 17 Oct 2023 11:26:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id F36E940A67;
	Tue, 17 Oct 2023 09:26:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F36E940A67
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697534815;
	bh=8wP+4juB+9YWrwU6uWzUWph5BTn1J1DvkTU+IUBvnBI=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=vVBNBCNmmNvof5slBXbUaZT3iQzD88BEjcHElSLT0xO3/dm2BuwjR2UpPWwXdvgjp
	 pAWYQRqr0DrzRUiFKBqsKwO2K/gQGdF0s8ta6lbk7V+DuO3HKK8J9JPN7NQ33P2cGH
	 hqgYBjXqdcYK7SVp0de6vSiVNN8zMc1PvdIbEM70VOePNn7dcBDbfUAYVnMcFCXWk1
	 U1aPVczaZPVVBBjCcJBN2rr8TT/5dR+iqrBv7BXa4C8XeLJ1JlevuGshKBWD/NcQ0k
	 B/9i3+W0Y4CO6XMyFP/B32pPMQAvN7xv9H/zwCWu2gjSTaUOOoxYqCL1VElz2HPqQr
	 /r3D3HvARMJGw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6AZkow-mczOj; Tue, 17 Oct 2023 09:26:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D5394057B;
	Tue, 17 Oct 2023 09:26:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D5394057B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DC0661BF30C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B404441925
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B404441925
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iRGC48C8p2QC for <intel-wired-lan@lists.osuosl.org>;
 Tue, 17 Oct 2023 09:26:48 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 20A6341922
 for <intel-wired-lan@lists.osuosl.org>; Tue, 17 Oct 2023 09:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 20A6341922
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by ams.source.kernel.org (Postfix) with ESMTP id 09F99B81C34;
 Tue, 17 Oct 2023 09:26:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3BCC433C8;
 Tue, 17 Oct 2023 09:26:42 +0000 (UTC)
Date: Tue, 17 Oct 2023 11:26:40 +0200
From: Simon Horman <horms@kernel.org>
To: Paul Greenwalt <paul.greenwalt@intel.com>
Message-ID: <20231017092640.GU1751252@kernel.org>
References: <20231015234304.2633-1-paul.greenwalt@intel.com>
 <20231015234304.2633-3-paul.greenwalt@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231015234304.2633-3-paul.greenwalt@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1697534805;
 bh=oy4Sf1JoFG4LPg+9MPIgE17JVRLoPiuPyt6+sBDTQxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Mkers0aLVyzt++Uz9ggAKYq1NY/8Kr10Upv/m2KMQTd39CBJ3y6KeaY19Ss2b63so
 qyuTlnGZKU8ZCxG2F/VReYKqWLD3RPVuk+1u0klEZmAVM7Mkf9UEJvEHtiHY0cemki
 lXPBlR/Oy1klCK/4xScL4qz723hqPdHP5mQxH6j+0mteEF4wYihlpXGZf9tMbcXsrI
 KYB2d5Krb1nSUVOxQwewRIWxpZp3NAi6LG6+w7BPFRSTAMB7VF+aZ39YBp8T3TRl+B
 robH6YqZZ0f+jg4M84y1xBJIA92jGUIFB1c0IBN4qbNGxrrS3adGy7ziVEs8FepZu0
 I1eh11hZjtVOA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=Mkers0aL
Subject: Re: [Intel-wired-lan] [PATCH net-next v5 2/3] qede: Refactor
 qede_forced_speed_maps_init()
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
Cc: jiri@resnulli.us, andrew@lunn.ch, aelior@marvell.com, manishc@marvell.com,
 vladimir.oltean@nxp.com, jdamato@fastly.com, pawel.chmielewski@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, edumazet@google.com,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, kuba@kernel.org,
 d-tatianin@yandex-team.ru, pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sun, Oct 15, 2023 at 07:43:03PM -0400, Paul Greenwalt wrote:
> Refactor qede_forced_speed_maps_init() to use commen implementation
> ethtool_forced_speed_maps_init().
> 
> The qede driver was compile tested only.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Pawel Chmielewski <pawel.chmielewski@intel.com>
> Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
