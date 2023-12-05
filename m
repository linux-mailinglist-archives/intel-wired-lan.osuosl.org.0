Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D507805FB7
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 21:49:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7666C613E7;
	Tue,  5 Dec 2023 20:49:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7666C613E7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701809353;
	bh=+eryzdLUYfzg+PPh/VQeygQB3wQ7FE6zEAK+Qx5A2u8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Ao5NTAz1QwGXHe8eUROLw2asbibekOQamu01mT9u1VNF+KdfMOPT6I1iRjvNWzM1z
	 lvKp5sz9CWKRpLQMlPfnSS/OfIbCSofaPPYUnd1UC9rGnMCBi0IGtRq+SlI1PvAkLD
	 iLqehYhpl3UkYAFYxAvXrhOJvbBRgR5UCrgVJHV+6zVCwSCsKvw2ocWtNIe7ctUKR8
	 T+xoOXiS7or/FnP9msbFG9x3JJK2tW3ag5do28MsFaUYhwaCfgrnVEGKXm4iMgcNpR
	 U6sJB+70gE8NR0lqx0Btni0eBdgsZtuffGXGevy4EAcsWoc2duhsTavaM8U0ztydhO
	 pWQNeI24MPvPQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gxsx3VYC9S2Q; Tue,  5 Dec 2023 20:49:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6357061067;
	Tue,  5 Dec 2023 20:49:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6357061067
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6B9C91BF593
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 20:49:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3D17282AF5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 20:49:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3D17282AF5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Lu2HpCQ21PU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 20:49:05 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 044448126B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 20:49:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 044448126B
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id BD2F7617AB;
 Tue,  5 Dec 2023 20:49:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83137C433C7;
 Tue,  5 Dec 2023 20:49:00 +0000 (UTC)
Date: Tue, 5 Dec 2023 20:48:58 +0000
From: Simon Horman <horms@kernel.org>
To: Ivan Vecera <ivecera@redhat.com>
Message-ID: <20231205204858.GY50400@kernel.org>
References: <20231130193135.1580284-1-ivecera@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231130193135.1580284-1-ivecera@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1701809342;
 bh=fed1Khe3LcDNw8l1xszLr/0ELbkoHU+0quBAU6lvWFQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U4wAHStvUOAeCeta1YoWNlWxK5F+9eKD9UjWj2vao2iGNiI2rq+ii1dbijNu8FVXD
 /ElX0695XmWiW2gKNDytWMDyF1gcWq1MnwuIiZallMJAbMhAZdcV8BywQshbFveNgg
 OjMWttWxesqigO7tQqKMKI+83MxJKY/VQrROV42lhW0vQ9lkCZVKDyA9Zl5yCibn54
 OGK7qPLs/CSP08WwFLJb2X3QEESeNNoXe8RywB6U3kqjAUhbC3tiWk3syeUlK7lxc0
 HfSRl6YNyBlCRMqgkg383gGVjT/vMpZqNmvS6TUk6oCRBxSSyYRv/EvjheM/HW+Cio
 Wry5devnCRNDw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=U4wAHStv
Subject: Re: [Intel-wired-lan] [PATCH iwl-net] i40e: Fix wrong mask used
 during DCB config
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
 Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>,
 open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Nov 30, 2023 at 08:31:34PM +0100, Ivan Vecera wrote:
> Mask used for clearing PRTDCB_RETSTCC register in function
> i40e_dcb_hw_rx_ets_bw_config() is incorrect as there is used
> define I40E_PRTDCB_RETSTCC_ETSTC_SHIFT instead of define
> I40E_PRTDCB_RETSTCC_ETSTC_MASK.
> 
> The PRTDCB_RETSTCC register is used to configure whether ETS
> or strict priority is used as TSA in Rx for particular TC.
> 
> In practice it means that once the register is set to use ETS
> as TSA then it is not possible to switch back to strict priority
> without CoreR reset.
> 
> Fix the value in the clearing mask.
> 
> Fixes: 90bc8e003be2 ("i40e: Add hardware configuration for software based DCB")
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>

Reviewed-by: Simon Horman <horms@kernel.org>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
