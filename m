Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD447766AE
	for <lists+intel-wired-lan@lfdr.de>; Wed,  9 Aug 2023 19:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 745A2402B7;
	Wed,  9 Aug 2023 17:46:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 745A2402B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691603201;
	bh=0ARATHtXfNuRnCemdFQrbZxL1By+xj/oyK7Y0AMJ7wM=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kLUCRdo93YG/2YX+i+vGKuOiQVyb3Ethf4dnLdGxp+EiI1xzNAH7CCN93g9qLXKAm
	 EE05RfqT4d92Nv1miUca8n02bDw2QyJGWTwF+inXMNi/2MD1plKj/HpNJpnT1yMWqM
	 em1OIyGHcgYRIkg/Bx/5YObDFicJM6+zh7cNwTjs5hw2jGRTkxQ+sfmme1V4bKOx3w
	 bsmd3Jf9/wrtfyC5NltGGQ4PHIAGh1vPLQKobSWTsbNi9EIiOmS1+RE74J9JEu4/jS
	 6fASiEt1BKAglxbL3ddQlRFpM/6NtjhEKTwX1UwFliMMxNv+vy585x/GpK5YFiEaqr
	 +pRC9jXlqZa1g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iRuzf9AZiNdw; Wed,  9 Aug 2023 17:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0020140267;
	Wed,  9 Aug 2023 17:46:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0020140267
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 781A71BF2FD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 17:46:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C861610B4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 17:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C861610B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKI5ThppPUom for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Aug 2023 17:46:33 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BA8AF60F5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Aug 2023 17:46:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA8AF60F5D
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 5E3C0642F7;
 Wed,  9 Aug 2023 17:46:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AAD8C433C8;
 Wed,  9 Aug 2023 17:46:30 +0000 (UTC)
Date: Wed, 9 Aug 2023 19:46:27 +0200
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZNPQ83upTXd+fTg5@vergenet.net>
References: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230808215417.117910-1-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1691603191;
 bh=+h95Egn4FLPJwtzkMsZtjRU5YQ/9jgcffANX0lizmvM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KxDlBdS1kdFQN6wqcING9qSR3RK1O+2BnmK1SdosMJbnEq6R3BA7LWsYCVlscfcZR
 a0OzwKHpDbXVRPmdOExD1ZWL6MCh3WPur3YVhSrTG/o/5qPDU5Hr1Cujxf/p/kg9vi
 cjpCAEsEHF2shDsqWC2ophNEOreL4TFDsesyheivBsTjWaNfK7xChz0ObG0kV6KZyn
 XfUKUhjSNAeZ7DS0YNDHTkFRJalRnL5t3a21DB2FAne7lI9Q0EEIPLfy4wXyfny1PP
 OTIzMffZ0NYyCXtKQHjgLcKnFNPBhbPJdarzF/ONZATpNVyciSvphHmc9Te9uzvcae
 +qtnm3XEMPLaw==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=KxDlBdS1
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 0/3] ice: split
 ice_aq_wait_for_event() func into two
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
Cc: netdev@vger.kernel.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Simon Horman <horms@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Aug 08, 2023 at 05:54:14PM -0400, Przemek Kitszel wrote:
> Mitigate race between registering on wait list and receiving
> AQ Response from FW.
> 
> The first patch fixes bound check to be more inclusive;
> the second one refactors code to make the third one smaller,
> which is an actual fix for the race.
> 
> Thanks Simon Horman for pushing into split, it's easier to follow now.
> 
> v4: remove excessive newlines, thanks Tony for catching this up
> v3: split into 3 commits
> 
> Przemek Kitszel (3):
>   ice: ice_aq_check_events: fix off-by-one check when filling buffer
>   ice: embed &ice_rq_event_info event into struct ice_aq_task
>   ice: split ice_aq_wait_for_event() func into two

Thanks for the split :)

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
