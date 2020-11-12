Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1C12B09A1
	for <lists+intel-wired-lan@lfdr.de>; Thu, 12 Nov 2020 17:12:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF62D87160;
	Thu, 12 Nov 2020 16:12:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UlpZGjaiwlVh; Thu, 12 Nov 2020 16:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 274E887175;
	Thu, 12 Nov 2020 16:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DF4931BF414
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id DB03387160
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LB-KUb1DMKkS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 12 Nov 2020 16:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 81DA88714D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 12 Nov 2020 16:12:34 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F8952085B;
 Thu, 12 Nov 2020 16:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605197554;
 bh=S3DED15DdhftiCDicms1yyB5w94yipk0Rb9seTjbqPY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=F+RuezPCOuEN4TcLA9/qG9zCvBdO2hPmW+sdhrEmxjIm8mTV0eevqDa1RVmWFPz4o
 UNLfJ6tpvymTPdZpQYaV4dhCXjFWTOVcOfkQSUlXhEEkm66ULUqhOPH4ARFLPOSrNL
 UIthQBNjKjeSJDIdv54PR5zM9UIstsV6TX17MQMk=
Date: Thu, 12 Nov 2020 11:12:32 -0500
From: Sasha Levin <sashal@kernel.org>
To: Ben Hutchings <ben.hutchings@codethink.co.uk>
Message-ID: <20201112161232.GD403069@sasha-vm>
References: <add9899fca821cbe47025c7710ebb63e9c16597c.camel@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <add9899fca821cbe47025c7710ebb63e9c16597c.camel@codethink.co.uk>
Subject: Re: [Intel-wired-lan] [4.9] Security fixes (pinctrl, i40e, geneve)
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 stable <stable@vger.kernel.org>, Sasha Levin <Alexander.Levin@microsoft.com>,
 linux-gpio@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev <netdev@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Nov 11, 2020 at 02:10:27AM +0000, Ben Hutchings wrote:
>Here are backports of some fixes to the 4.9 stable branch.
>
>I wasn't able to test the pinctrl fix (no idea how to reproduce it).
>
>I wasn't able to test the i40e changes (no hardware and no reproducer
>available).
>
>I tested the geneve fix with libreswan as (roughly) described in the
>commit message.

Queued up, thanks Ben!

-- 
Thanks,
Sasha
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
