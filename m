Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EB32D4EDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Dec 2020 00:43:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40F4186C64;
	Wed,  9 Dec 2020 23:43:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WkJwqhHdAOCX; Wed,  9 Dec 2020 23:43:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 16B7486C80;
	Wed,  9 Dec 2020 23:43:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F06B31BF5B5
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 23:43:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8BA887991
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 23:43:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DDB6Z5Fk-0PB for <intel-wired-lan@lists.osuosl.org>;
 Wed,  9 Dec 2020 23:43:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 95F8287990
 for <intel-wired-lan@lists.osuosl.org>; Wed,  9 Dec 2020 23:43:04 +0000 (UTC)
Date: Wed, 9 Dec 2020 15:43:02 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607557384;
 bh=+c0ca5zidLBtV0WQT+M6L2oC7W9CxOG6LU9fUbXq5IY=;
 h=From:To:Cc:Subject:In-Reply-To:References:From;
 b=TuBdDqJnLVHUWgj9KXqB0UfcC/5bP/RHMgJZn8nUuPoL3Hn1TxQO76Mo5WbrVUWQb
 zmljHZpIs3RWMkWHk9x8Yoy/ZBixzGxVBY8lvkBGXEHQNzvXRnFItHUqG1+7UiHDtp
 jckQxb/dXxhIlcM4uPv/x+Vsntt4C/vdT+EyNjjuiTFM0pnFnJEU3gfPOhVtNjLf0J
 r5vghJv43vfE1DCK7sc2XOw8Ou3b4zKBVRn7lHqpYFRzNUZs/1FlYlxN6HJkRNBaxn
 Eb4NI8a/SvkcPpWWJTQn2Ij6yA+S51T+N57jhBbn0lBYuJgApEKTmEQOhYg5kYFjkd
 Uczq3U/xPe+Ug==
From: Jakub Kicinski <kuba@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Message-ID: <20201209154302.266adf70@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
In-Reply-To: <20201208185632.151052-1-mario.limonciello@dell.com>
References: <20201208185632.151052-1-mario.limonciello@dell.com>
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH RESEND] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
Cc: Netdev <netdev@vger.kernel.org>, Perry.Yuan@dell.com, Yijun.Shen@dell.com,
 linux-kernel@vger.kernel.org, anthony.wong@canonical.com,
 intel-wired-lan@lists.osuosl.org, Alexander Duyck <alexanderduyck@fb.com>,
 David Miller <davem@davemloft.net>, Stefan Assmann <sassmann@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue,  8 Dec 2020 12:56:32 -0600 Mario Limonciello wrote:
> From: Vitaly Lifshits <vitaly.lifshits@intel.com>
> 
> Changed a configuration in the flows to align with
> architecture requirements to achieve S0i3.2 substate.
> 
> This helps both i219V and i219LM configurations.
> 
> Also fixed a typo in the previous commit 632fbd5eb5b0
> ("e1000e: fix S0ix flows for cable connected case").
> 
> Fixes: 632fbd5eb5b0 ("e1000e: fix S0ix flows for cable connected case").
> Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
> Tested-by: Aaron Brown <aaron.f.brown@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> Reviewed-by: Alexander Duyck <alexanderduyck@fb.com>
> Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>

Applied, thank you!
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
