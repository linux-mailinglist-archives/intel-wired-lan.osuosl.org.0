Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCD476D1D2
	for <lists+intel-wired-lan@lfdr.de>; Wed,  2 Aug 2023 17:24:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95065414DA;
	Wed,  2 Aug 2023 15:24:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95065414DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690989894;
	bh=GLVHcGPtj9f6ZHjSXyJLaS+aewOK2Dt7rORGkghmDMs=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bpNG725HwFdk4CYkPOLjLn0wWORw3/8op++fS68lbwbiuEVn7WW1g6wfcZlvIREEA
	 BUOPxzl7SpNWzP0GtozmRB8UmS4hga0vh1BtqicW0dQxjfepvzynGCvlRTD+5OaZ1F
	 9p/pl5OR9hJhr8vs8TRaTn965dP2nDrj5NXNt923Ogm09PdrqKJrQImNiBdLaSksaU
	 eTpOGW3lAF5sgw/nyvgrH7gpM4oKawNLg79oeMee2egn7IftW0YbE0Gx9V0eEufV62
	 Gkz6VP4934PCafDARH2JoNrV0M3Q+sXDiGFD3xVI9gspM4lenldpMIk/MfXFGs6R6c
	 ln3j3ycGZmqQQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lGPEtVz9lJQN; Wed,  2 Aug 2023 15:24:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88639414FF;
	Wed,  2 Aug 2023 15:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88639414FF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0A1691BF982
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:24:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9C36180FA4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:24:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9C36180FA4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQf-pn0w4GqD for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 15:24:32 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 02EFE81746
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 15:24:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 02EFE81746
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 02731619EF;
 Wed,  2 Aug 2023 15:24:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CC64C433C7;
 Wed,  2 Aug 2023 15:24:28 +0000 (UTC)
Date: Wed, 2 Aug 2023 17:24:25 +0200
From: Simon Horman <horms@kernel.org>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <ZMp1KUZIEli6WL0H@kernel.org>
References: <cover.1690938732.git.gustavoars@kernel.org>
 <8b945fa3afeb26b954c400c5b880c0ae175091ac.1690938732.git.gustavoars@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8b945fa3afeb26b954c400c5b880c0ae175091ac.1690938732.git.gustavoars@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1690989870;
 bh=AsAwCL7YysIyiApwU0DEZ4rat1nzt2aX13d1nS4nuDM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bjlME2upSvXRAf/m/cuZiwmo5VnVspD8x1KGckoVYQHKmQplffbUWB1H7uK4qoUbt
 PK8ca8wW+aNrIfdVEofOBhya1CiO7YkGKnDgOYBX8Y/96WuTNBDXaCdKIVoneZ4neu
 4ET1Zs5R64PtWXwfAcZNi/3Xcuwrd8WrG6SGevC3Zrz40MzstmH8cJLFfny/MreVL/
 6r2Vn0UxD1V2B89tmD8j7KnRXqaf/u34yVV8tTxPgCTeQKo6xSeB4QngdPUZt8tsxy
 pbStjBW31lQFPs2Pi74aEJTB+8r0w9LYtn80AZx14nr2St7H1sjMHpiIHUBOBMyhZ4
 Aib0mqDq/8UwQ==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=bjlME2up
Subject: Re: [Intel-wired-lan] [PATCH 4/4][next] i40e: Replace one-element
 array with flex-array member in struct i40e_profile_aq_section
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, linux-hardening@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 01, 2023 at 11:07:06PM -0600, Gustavo A. R. Silva wrote:
> One-element and zero-length arrays are deprecated. So, replace
> one-element array in struct i40e_profile_aq_section with
> flexible-array member.
> 
> This results in no differences in binary output.
> 
> Link: https://github.com/KSPP/linux/issues/335
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Simon Horman <horms@kernel.org>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
