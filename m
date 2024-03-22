Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7D2886C70
	for <lists+intel-wired-lan@lfdr.de>; Fri, 22 Mar 2024 13:57:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A30F417C9;
	Fri, 22 Mar 2024 12:57:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lC10_v5YVKCR; Fri, 22 Mar 2024 12:57:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 686E9417BA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711112256;
	bh=oOU41yqHsc2JOfg06tT7Wiq3jSb7rI6nDRxffU3WGr4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZlnfHyGX3E+s3SdFf3rBTgZzWijeDexyIyorj9Hh2N6i7OyRTlucJk3nA2fMcTOVr
	 FkPnmjlQbU/FYh3wNttAtkMjwpNplZxeztYVY0rcKygyVVIDsVXpCLE93ylxngB3tC
	 JLZeTMW4WprLVxlBDzSJFiK717hkncpdDF1elzcfVFsn5d7bkLUqI8iEUvlaJoOJlk
	 OwWQF0yvZiclWiGDF0irgi2P4JSl0ludF+Aj9pRNhqexpmHlOIdF1zPAR7W5E410CO
	 yTUXnU3OcxpbgFHmxWBeF5GUpncBgWRayvrq9aRtL72W0TXpl12og9fHdySD9aI3dV
	 WtYV3QAV3gy4w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 686E9417BA;
	Fri, 22 Mar 2024 12:57:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42F5E1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 12:57:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C37A4043F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 12:57:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XT4TX36Ts2fa for <intel-wired-lan@lists.osuosl.org>;
 Fri, 22 Mar 2024 12:57:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=139.178.84.217;
 helo=dfw.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7C6AF40439
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C6AF40439
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7C6AF40439
 for <intel-wired-lan@lists.osuosl.org>; Fri, 22 Mar 2024 12:57:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 324116141D;
 Fri, 22 Mar 2024 12:57:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C3C3C433F1;
 Fri, 22 Mar 2024 12:57:29 +0000 (UTC)
Date: Fri, 22 Mar 2024 12:57:27 +0000
From: Simon Horman <horms@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <20240322125727.GE372561@kernel.org>
References: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0efe132b-b343-4438-bb00-5a4b82722ed3@moroto.mountain>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711112251;
 bh=vi6qepP3WZqihtomx/Ad9yWtRNe/QyPnUUouWN8vfoc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mYOnqs3XbPZ567x2XcqYUCB8z7YM6n71i0LA+G1lsomcgE09dZnAsQ5/jnVOTis/+
 RPvyII8VqC0yle9uD7ZI419zJtCNjPgh2PUXSiKJa6Ta6yS7/N3S6qkotXWZpmYiaz
 ppB5rTjd2bgLZ0m95ihhxh1d4FPmSMv95QhZaPRoxFx9kfF/ZQNmP/sejCpxpxZTKH
 Ma1dDeNOZD/KjfsULlkpWSYR7ICpajzsaCRnPE6iAFhSyZzf5lcP9KnPGqq1J9QFaF
 lFRUdJHIeZy5ZsdhHsNZBIgz0JCqnnWZKZ2v1ra6cd3Grj9LXoI4gMoFBUQoNJv0Ak
 YtYq2gOuwo3Qg==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=mYOnqs3X
Subject: Re: [Intel-wired-lan] [PATCH v2 net] ice: Fix freeing uninitialized
 pointers
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 21, 2024 at 05:42:12PM +0300, Dan Carpenter wrote:
> Automatically cleaned up pointers need to be initialized before exiting
> their scope.  In this case, they need to be initialized to NULL before
> any return statement.
> 
> Fixes: 90f821d72e11 ("ice: avoid unnecessary devm_ usage")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
> ---
> v2: I missed a couple pointers in v1.
> 
> The change to ice_update_link_info() isn't required because it's
> assigned on the very next line...  But I did that because it's harmless
> and makes __free() stuff easier to verify.  I felt like moving the
> declarations into the code would be controversial and it also ends up
> making the lines really long.
> 
> 		goto goto err_unroll_sched;
> 
> 	struct ice_aqc_get_phy_caps_data *pcaps __free(kfree) =
> 		kzalloc(sizeof(*pcaps), GFP_KERNEL);

Thanks Dan,

I agree with the approach you have taken here.

And I apologise that it's quite likely that I skipped warnings regarding
these problems when reviewing patches that introduced them - I did not
understand the issue that this patch resolves.

Reviewed-by: Simon Horman <horms@kernel.org>
