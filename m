Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D73814F84
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 Dec 2023 19:14:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1298421D7;
	Fri, 15 Dec 2023 18:14:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1298421D7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1702664057;
	bh=VxHyY/FGHob81ATIJGT/BCFCmmck2Gy0sE5li+LAKB4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=EOOasmexQsHl3ml5NIobknaiXzCNbs4EaUK/pFn+uFn7ppBR2tPVNDIRtKTkmMbR+
	 Ks+VFnAcOhvO1gcr0vCz/KBzfvjdYAMM3qxzYdWWi7QGzau98hK3kQ3BkCI6sk8yqO
	 DlCexcOnG4ICTvrnCi35mlEzfp/52dFBEWT+lZWx9CxAKJf7pWGoUMTdHjEqIY9KoK
	 5htFpua3M/OEJQ/m8hFdNMiyYFfJucmHTFnrmmYnn7o74NFbSTKQ/wMakD78Pw+22H
	 nks5kdkRE8duSQRxaMAHUKjOsuNYtjUCoPOkCF8xOd6C2faObbs3fWDJWyfZMm0Mj6
	 iGtoVlDaBnRgg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9HdzoDSIVQol; Fri, 15 Dec 2023 18:14:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C3C48421A0;
	Fri, 15 Dec 2023 18:14:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3C48421A0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B2D3B1BF281
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:49:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7FC7183211
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:49:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7FC7183211
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 82_GDrbLYK-3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 Dec 2023 17:49:25 +0000 (UTC)
Received: from mail1.merlins.org (magic.merlins.org [209.81.13.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD256831DA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 Dec 2023 17:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD256831DA
Received: from c-76-132-34-178.hsd1.ca.comcast.net ([76.132.34.178]:53094
 helo=sauron.svh.merlins.org) by mail1.merlins.org with esmtpsa 
 (Cipher TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256) (Exim
 4.94.2 #2)
 id 1rECJI-0007yx-G3 by authid <merlins.org> with srv_auth_plain;
 Fri, 15 Dec 2023 09:49:16 -0800
Received: from merlin by sauron.svh.merlins.org with local (Exim 4.92)
 (envelope-from <marc@merlins.org>)
 id 1rECGg-000UUd-Az; Fri, 15 Dec 2023 09:46:34 -0800
Date: Fri, 15 Dec 2023 09:46:34 -0800
From: Marc MERLIN <marc@merlins.org>
To: Heiner Kallweit <hkallweit1@gmail.com>
Message-ID: <20231215174634.GA10053@merlins.org>
References: <20231206113934.8d7819857574.I2deb5804ef1739a2af307283d320ef7d82456494@changeid>
 <20231206084448.53b48c49@kernel.org>
 <e6f227ee701e1ee37e8f568b1310d240a2b8935a.camel@sipsolutions.net>
 <a44865f5-3a07-d60a-c333-59c012bfa2fb@intel.com>
 <20231207094021.1419b5d0@kernel.org>
 <20231211045200.GC24475@merlins.org>
 <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <83dc80d3-1c26-405d-a08d-2db4bc318ac8@gmail.com>
X-Sysadmin: BOFH
X-URL: http://marc.merlins.org/
X-SA-Exim-Connect-IP: 76.132.34.178
X-SA-Exim-Mail-From: marc@merlins.org
X-Mailman-Approved-At: Fri, 15 Dec 2023 18:14:10 +0000
Subject: Re: [Intel-wired-lan] [PATCH net v3] net: ethtool: do runtime PM
 outside RTNL
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
Cc: Jakub Kicinski <kuba@kernel.org>, Johannes Berg <johannes@sipsolutions.net>,
 netdev@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Dec 15, 2023 at 02:42:01PM +0100, Heiner Kallweit wrote:
> Why don't you simply disable runtime pm for the affected device as a
> workaround? This can be done via sysfs.

1) because I didn't know what the exact bug was and how to work around it :)
2) without power management, the battery use is not good, but yes not
good is better than laptop crashing :)

That said, if it's only affecting wired ethernet, I can also unload the
igc module until I actually need wired ethernet, which is sometimes but
not often.

Thanks for your suggestion
Marc
-- 
"A mouse is a device used to point at the xterm you want to type in" - A.S.R.
 
Home page: http://marc.merlins.org/                       | PGP 7F55D5F27AAF9D08
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
