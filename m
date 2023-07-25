Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 558E9761F9F
	for <lists+intel-wired-lan@lfdr.de>; Tue, 25 Jul 2023 18:53:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE5EC610DD;
	Tue, 25 Jul 2023 16:53:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE5EC610DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690304019;
	bh=9Br0RW0A/jBigsaCcJgxcuf7k+Kfcofc8kM82DF9w4E=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=NEcw+t7a9t/ckQ7aqL3r+AVsc5L+X//BxRRQ/ej8hyGtDNqPes/NqFNkGI+B4Vn1O
	 AYYkG9NEy83ek0cur9UyAVB5RFxstXG+Y0GGUL6GqxcdYbWv52S6xi0YI4VBvWrCOD
	 0vF7JYHfA6ac5E7TYYYHmD9PbMbnK2d3oAMZGU3ICzhMNX/7qoT2mtfvge5asKP2Oq
	 CKOCM5jhjbKfD2GJ0WXl1V/8QTex48GZzrRtp1dE4owKr/cn4KshGFCUHJa8JmXFcG
	 85WOLuqHLCnTpkuoGy9d+PCa2I0v/zVXqPFbpG+IoAsSs/Ehtu3cJpd5/hwvw9rvnf
	 wkmXGG/qSxNDw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXnUcHcyEoke; Tue, 25 Jul 2023 16:53:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5F20610C1;
	Tue, 25 Jul 2023 16:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5F20610C1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 17AE01BF83B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 16:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F02D2610A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 16:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F02D2610A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SxrGqsGs_tAN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 25 Jul 2023 16:53:31 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0CE02610C7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 25 Jul 2023 16:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CE02610C7
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BC538617B8;
 Tue, 25 Jul 2023 16:53:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5B8FC433C8;
 Tue, 25 Jul 2023 16:53:28 +0000 (UTC)
Date: Tue, 25 Jul 2023 09:53:27 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20230725095327.385616f1@kernel.org>
In-Reply-To: <20230725054046.GK11388@unreal>
References: <20230723075042.3709043-1-linma@zju.edu.cn>
 <20230724174435.GA11388@unreal>
 <20230724142155.13c83625@kernel.org>
 <20230725054046.GK11388@unreal>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690304009;
 bh=IxAEg/zFNLeaSOZ2+I4D9yyaJpFMEaswtXPaBzxnKgk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SxH+OGq4T9EJ5mb76lXK+oW2BxdhHd7R3WW97C3AISLcrhGM+/cY0HhzoDLq99fnR
 pqWDGfjsnv8PloQmggBJAcbzdordfUmLHnkgmXKBBfRAP/elOmTlMf17KHF5uCZlSk
 YN7ACW+2ggKI5Cvv4kxqEMhIqelM6jJYzC0EaBxvdZly6Xd52r1ZqFeBTiC+l351ao
 9Tbt+epizrET4rBKIrKL29eZed29GvBaq2ZXiJyrxO7RpTDFpkzd+ztPU+zJksn2lE
 baNiQvt2HO1/JIJ9gLCDCMDZarJRm6gFWd0/JCCPwT8oDbt+6LDYn5kY0mLce97t88
 rrm+EMRUjvb1A==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SxH+OGq4
Subject: Re: [Intel-wired-lan] [PATCH v1] i40e: Add length check for
 IFLA_AF_SPEC parsing
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
Cc: ast@kernel.org, hawk@kernel.org, daniel@iogearbox.net,
 netdev@vger.kernel.org, richardcochran@gmail.com, john.fastabend@gmail.com,
 jesse.brandeburg@intel.com, Lin Ma <linma@zju.edu.cn>, edumazet@google.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 25 Jul 2023 08:40:46 +0300 Leon Romanovsky wrote:
> > Empty attributes are valid, we can't do that.  
> 
> Maybe Lin can add special version of nla_for_each_nested() which will
> skip these empty NLAs, for code which don't allow empty attributes.

It's way too arbitrary. Empty attrs are 100% legit, they are called
NLA_FLAG in policy parlance. They are basically a boolean.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
